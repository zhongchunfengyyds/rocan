
package com.cgn.itmp.inspectcomponentmanage.insplanmg;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.cgn.itmp.basecommon.StringUtil;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author littlebear (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
@SuppressWarnings("all")
public class InsplanmgService extends DASDaoSupport implements IInsplanmgService{
	/**
	 * 新增
	 */
	public void addInsplanmg(Insplanmg insplanmg){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		insplanmg.set("createtime", dateFormat.format(new Date()));
		String insphase = insplanmg.getString("insphase").replace(",", "，");
		insplanmg.set("insphase", insphase);	
		getDASTemplate().getPrimaryKey(insplanmg);
		getDASTemplate().insertEntity(insplanmg);
	}
	/**
	 * 删除
	 */
	public void deleteInsplanmgs(Insplanmg[] insplanmgs ){
		for(DataObject insplanmg:insplanmgs){
			getDASTemplate().deleteEntityCascade(insplanmg);
		}
	}

	/**
	 * 条件查找
	 */
	public void getInsplanmg(Insplanmg insplanmg){
		getDASTemplate().expandEntity(insplanmg);
	}

	/**
	 * 查询
	 */
	public Insplanmg[] queryInsplanmgs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		Insplanmg[] ins = getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Insplanmg.class, dasCriteria, pageCond);
		for(DataObject obj : ins){
			obj.set("insphase", obj.getString("insphase").replaceAll("，", ","));
			obj.set("insscope", obj.getString("insscope").replaceAll("，", ","));
		}
		return ins;
	}

	/**
	 * 修改
	 */
    public void updateInsplanmg(Insplanmg insplanmg,String user){
    	Map afterChange = new HashMap();
    	afterChange.put("overhaulsq",insplanmg.getOverhaulsq());//获取更改后的大修轮次
    	afterChange.put("insphase",insplanmg.getInsphase());//获取更改后的检查阶段
    	afterChange.put("insscope",insplanmg.getInsscope());//获取更改后的检查范围
    	afterChange.put("fj",insplanmg.get("fj")==null?"":insplanmg.get("fj"));//获取更改后的冲洗后管间检查计划
    	afterChange.put("remake",insplanmg.getRemake());//获取更改后的备注
    	afterChange.put("changeReasons",insplanmg.get("changeReasons"));//获取更改后的备注
    	afterChange.put("uuid",insplanmg.getUuid());//获取UUID
    	afterChange.put("jd",insplanmg.get("jd"));
    	afterChange.put("jz",insplanmg.get("jz"));
    	afterChange.put("changeuser",user);//获取用户名
    	afterChange.put("processInstId",insplanmg.get("processInstId"));//获取用户名
    	afterChange.put("relationid",insplanmg.get("uuid"));//获取用户名
    	//获取修改后的数据
    	insert(afterChange);
    	DataObject insp=DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg");
    	insp.set("uuid",insplanmg.get("uuid"));
    	insp.set("processInstId",insplanmg.get("processInstId"));
    	insp.set("processStatus","0");
   	  	DatabaseExt.updateEntityCascade("default",insp);
    	
//	    getDASTemplate().updateEntity(insplanmg);
    }
    
    /**
	 * 修改
	 */
    public void adminupdateInsplanmgwork(DataObject data,String user,String type){
    	Map afterChange = new HashMap();
    	afterChange.put("overhaulsq",data.get("overhaulsq"));//获取更改后的大修轮次
    	afterChange.put("insphase",data.get("insphase"));//获取更改后的检查阶段
    	afterChange.put("insscope",data.get("insscope"));//获取更改后的检查范围
    	afterChange.put("fj",data.get("fj")==null?"":data.get("fj"));//获取更改后的冲洗后管间检查计划
    	afterChange.put("remake",data.get("remake")==null?"":data.get("remake"));//获取更改后的备注
    	afterChange.put("changeReason",data.get("changeReason"));//获取更改后的备注
    	afterChange.put("uuid",data.get("uuid"));//获取UUID
    	afterChange.put("fileid",data.get("fileid"));//获取UUID
    	afterChange.put("changeuser",user);//获取用户名
    	
    	afterChange.put("applicant",user);//获取申请人
    	afterChange.put("applicanttime",new Date());//获取申请时间
    	afterChange.put("processInstId",data.get("processInstId"));//获取流程
    	afterChange.put("relationid",data.get("uuid"));//获取关联id
    	afterChange.put("jhry",data.get("jhry"));//获取流程
    	afterChange.put("ccry",data.get("ccry"));//获取关联id
    	afterChange.put("jd",data.get("jd"));
    	afterChange.put("jz",data.get("jz"));
//    	DataObject insplanmg=DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg");
//    	insplanmg.set("processStatus","1");
//    	insplanmg.set("uuid",data.get("uuid"));
//    	DatabaseExt.updateEntityCascade("default", insplanmg);
    	//获取修改后的数据
    	insert(afterChange);
    	if(type.equals("0")){
    		DataObject temp=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg", false);
    		temp.set("changeuser",user);//获取用户名
	      	DatabaseExt.updateEntityCascade("default", temp); 
//    		getDASTemplate().updateEntity(data);    		
    	}
    	
    }
    
    

       
       /**
      	 * 同意并结束流程
      	 */
          public void endInsplanmgwork(DataObject data,String user){
        	  data.set("uuid",data.getString("relationid"));
        	  DataObject temp=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg", false);
        	  temp.set("changeuser",user);//获取用户名
        	  DatabaseExt.updateEntityCascade("default", temp); 
          }
    
    /**
     * 新增修改记录
     */
    public boolean insert(Map afterChange){
    	//获取UUID
    	String uuid = afterChange.get("uuid").toString();
    	//获取修改前的数据
    	Map beforChange = getBeforChange(uuid);
    	StringBuffer changeinfo = new StringBuffer();//修改内容
    	
    	//对比修改前后是否相同
    	if(afterChange.get("overhaulsq").equals(beforChange.get("overhaulsq"))||(StringUtil.isEmpty(afterChange.get("overhaulsq").toString())&&StringUtil.isEmpty(beforChange.get("overhaulsq").toString()))){
    	}else{
    		changeinfo.append("大修轮由：").append(beforChange.get("overhaulsq")).append("，修改为：").append(afterChange.get("overhaulsq")).append("；");
    	}
    	if(afterChange.get("insphase").equals(beforChange.get("insphase"))||(StringUtil.isEmpty(afterChange.get("insphase").toString())&&StringUtil.isEmpty(beforChange.get("insphase").toString()))){
    	}else{
    		changeinfo.append("检查阶段由：").append(beforChange.get("insphase")).append("，修改为：").append(afterChange.get("insphase")).append("；");
    	}
    	if(afterChange.get("insscope").equals(beforChange.get("insscope"))||(StringUtil.isEmpty(afterChange.get("insscope").toString())&&StringUtil.isEmpty(beforChange.get("insscope").toString()))){
    	}else{
    		changeinfo.append("检查范围由：").append(beforChange.get("insscope")).append("，修改为：").append(afterChange.get("insscope")).append("；");
    	}
    	if(afterChange.get("fj").equals(beforChange.get("fj"))||(StringUtil.isEmpty(afterChange.get("fj").toString())&&StringUtil.isEmpty(beforChange.get("fj").toString()))){
    	}else{
    		changeinfo.append("管间检查计划由：").append(beforChange.get("fj")).append("，修改为：").append(afterChange.get("fj")).append("；");
    	}
    	if(afterChange.get("remake").equals(beforChange.get("remake")==null?"":beforChange.get("remake"))||(StringUtil.isEmpty(afterChange.get("remake").toString())&&StringUtil.isEmpty(beforChange.get("remake").toString()))){
    	}else{
    		changeinfo.append("备注由：").append(beforChange.get("remake")).append("，修改为：").append(afterChange.get("remake")).append("；");
    	}
    	Map insplanmg_modif = new HashMap();
    	insplanmg_modif.put("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
    	insplanmg_modif.put("changeinfo", changeinfo.toString());
    	insplanmg_modif.put("changeReason", afterChange.get("changeReason"));
    	insplanmg_modif.put("overhaulsq", afterChange.get("overhaulsq"));
    	insplanmg_modif.put("fj", afterChange.get("fj"));
    	insplanmg_modif.put("fileid", afterChange.get("fileid"));
    	insplanmg_modif.put("insscope", afterChange.get("insscope"));
    	insplanmg_modif.put("remake", afterChange.get("remake"));
    	insplanmg_modif.put("insphase", afterChange.get("insphase"));
    	insplanmg_modif.put("changetime", new Date());
    	insplanmg_modif.put("changeuser", afterChange.get("changeuser"));
    	insplanmg_modif.put("applicant", afterChange.get("applicant"));//获取申请人
    	insplanmg_modif.put("applicanttime",afterChange.get("applicanttime"));//获取申请时间
    	insplanmg_modif.put("isdel", "3");
    	insplanmg_modif.put("jd", afterChange.get("jd"));
    	insplanmg_modif.put("jz", afterChange.get("jz"));
    	insplanmg_modif.put("jhry", afterChange.get("jhry"));
    	insplanmg_modif.put("ccry", afterChange.get("ccry"));
    	//工作流
    	insplanmg_modif.put("relationid", uuid);
    	insplanmg_modif.put("processInstId", afterChange.get("processInstId"));
    	
    	boolean flag = false;
    	String sql = "com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.insplanmgsql.insetChangeInfo";
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, insplanmg_modif);
		return flag;
    }
    
    
    
    
    
    /**
	 * 根据流程id获取检查修改后信息
	 * @param processInstId
	 * @param entityType
	 * @return
	 */
	public DataObject getSqinfoByProcessInstId(String processInstId,String entityType){
		//设置默认的流程字段
		if(StringUtil.isEmpty(processInstId) || StringUtil.isEmpty(entityType)){
			return null;
		}
		//获取授权信息
		DataObject temp = DataObjectUtil.createDataObject(entityType);
		temp.setLong("processInstId", Long.parseLong(processInstId));
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",temp);
		if(data.length==1){
			return data[0];			
		}else{
			return null;
		}
	}
	
    
    /**
     * 获取修改前数据
     * @return
     */
    public Map getBeforChange(String uuid){
//    	Insplanmg insplanmg = null;
    	Map insplanmg = new HashMap();
//    	List list = new ArrayList();
    	String sql = "com.cgn.itmp.inspectcomponentmanage.insplanmg.impl.insplanmgsql.getInsplanmgById";
    	//获取全部管束
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, uuid);
    	for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			insplanmg.put("overhaulsq",dataObject.get("overhaulsq"));//大修轮次
			insplanmg.put("insscope",dataObject.get("insscope"));//检查范围
			insplanmg.put("fj",dataObject.get("fj")==null?"":dataObject.get("fj"));//冲洗后管间检查计划
			insplanmg.put("remake",dataObject.get("remake")==null?"":dataObject.get("remake"));//备注
			insplanmg.put("insphase",dataObject.get("insphase"));
		}
		return insplanmg;
    }
    /**
     * 查找修改记录
     */
    public Insplanmg[] queryChangeInsplanmgs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Insplanmg.class, dasCriteria, pageCond);
	}
    
}
