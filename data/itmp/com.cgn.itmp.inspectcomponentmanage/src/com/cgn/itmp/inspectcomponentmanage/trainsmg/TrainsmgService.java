
package com.cgn.itmp.inspectcomponentmanage.trainsmg;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.basecommon.StringUtil;
import com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg;

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
public class TrainsmgService extends DASDaoSupport implements ITrainsmgService{
	/**
	 * 新增
	 */
	public void addTrainsmg(DataObject data,String user,String type){
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		data.set("createtime", dateFormat.format(new Date()));
		if(type.equals("endadd")){
			data.set("processStatus","3");
			DataObject trainsmg=DataObjectUtil.convertDataObject(data,"com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg",false);
			getDASTemplate().getPrimaryKey(trainsmg);
			getDASTemplate().insertEntity(trainsmg);			
		}else{
			data.set("processStatus","3");
			data.set("applicant",user);
			data.set("applicanttime",new Date());
			DataObject trainsmg=DataObjectUtil.convertDataObject(data,"com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf",false);
			getDASTemplate().getPrimaryKey(trainsmg);
			getDASTemplate().insertEntity(trainsmg);
		}
	}
	/**
	 * 删除
	 */
	public void deleteTrainsmgs(Trainsmg[] trainsmgs ){
		for(DataObject trainsmg:trainsmgs){
			getDASTemplate().deleteEntityCascade(trainsmg);
		}
	}

	/**
	 * 查询
	 */
	public void getTrainsmg(Trainsmg trainsmg){
		getDASTemplate().expandEntity(trainsmg);
	}

	/**
	 * 查询
	 */
	public Trainsmg[] queryTrainsmgs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Trainsmg.class, dasCriteria, pageCond);
	}
	

	/**
	 * 修改
	 */
    public void updateTrainsmg(DataObject trainsmg,String user,String type){
    	
    	Map afterChange = new HashMap();//修改后
    	afterChange.put("checkpostion",trainsmg.get("checkpostion"));
    	afterChange.put("checkmethond",trainsmg.get("checkmethond")==null?"":trainsmg.get("checkmethond"));
    	afterChange.put("screwiden",trainsmg.get("screwiden"));
    	afterChange.put("shoupostion",trainsmg.get("shoupostion"));
    	afterChange.put("overhaulsq",trainsmg.get("overhaulsq"));
    	afterChange.put("planone",trainsmg.get("planone"));
    	afterChange.put("plantwo",trainsmg.get("plantwo"));
    	afterChange.put("planthree",trainsmg.get("planthree"));
    	afterChange.put("remake",trainsmg.get("remake")==null?"":trainsmg.get("remake"));
    	afterChange.put("jd",trainsmg.get("jd"));
    	afterChange.put("jz",trainsmg.get("jz"));
    	afterChange.put("jhry",trainsmg.get("jhry"));
    	afterChange.put("ccry",trainsmg.get("ccry"));
    	afterChange.put("changeReason",trainsmg.get("changeReason"));
    	afterChange.put("changeuser",user);
    	afterChange.put("applicant",user);
//    	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	afterChange.put("applicanttime",new Date());
    	afterChange.put("uuid",trainsmg.get("uuid"));//获取关联id
    	afterChange.put("processInstId",trainsmg.get("processInstId"));//获取流程
    	afterChange.put("relationid",trainsmg.get("uuid"));//获取关联id
    	insert(afterChange);
    	
    	if(type.equals("1")){
    		DataObject temp=DataObjectUtil.convertDataObject(trainsmg, "com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg", false);
       	  	temp.set("changeuser",user);//获取用户名
       	  	DatabaseExt.updateEntityCascade("default", temp); 
    		getDASTemplate().updateEntity(temp);
    	}else{
        		DataObject train=DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg");
        		train.set("uuid",trainsmg.get("uuid"));
        		train.set("processInstId",trainsmg.get("processInstId"));
        		train.set("processStatus","0");
           	  	DatabaseExt.updateEntityCascade("default",train);
    	}   
    }
    
    
    

    /**
   	 * 同意并结束流程
   	 */
       public void endupdatework(DataObject data,String user,String entityName){
     	  data.set("uuid",data.getString("relationid"));
     	  data.set("isdel","0");
     	  data.set("processStatus","3");
     	  DataObject temp=DataObjectUtil.convertDataObject(data,entityName, false);
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
    	if(afterChange.get("checkpostion").equals(beforChange.get("checkpostion"))||(StringUtil.isEmpty(afterChange.get("checkpostion").toString())&&StringUtil.isEmpty(beforChange.get("checkpostion").toString()))){
    	}else{
    		changeinfo.append("检查部位由：").append(beforChange.get("checkpostion")).append("，修改为：").append(afterChange.get("checkpostion")).append("；");
    	}
    	if(afterChange.get("checkmethond").equals(beforChange.get("checkmethond"))||(StringUtil.isEmpty(afterChange.get("checkmethond").toString())&&StringUtil.isEmpty(beforChange.get("checkmethond").toString()))){
    	}else{
    		changeinfo.append("检查方法由：").append(beforChange.get("checkmethond")).append("，修改为：").append(afterChange.get("checkmethond")).append("；");
    	}
    	if(afterChange.get("screwiden").equals(beforChange.get("screwiden"))||(StringUtil.isEmpty(afterChange.get("screwiden").toString())&&StringUtil.isEmpty(beforChange.get("screwiden").toString()))){
    	}else{
    		changeinfo.append("螺栓/螺母标识号由：").append(beforChange.get("screwiden")).append("，修改为：").append(afterChange.get("screwiden")).append("；");
    	}
    	if(afterChange.get("shoupostion").equals(beforChange.get("shoupostion"))||(StringUtil.isEmpty(afterChange.get("shoupostion").toString())&&StringUtil.isEmpty(beforChange.get("shoupostion").toString()))){
    	}else{
    		changeinfo.append("显示位置由：").append(beforChange.get("shoupostion")).append("，修改为：").append(afterChange.get("shoupostion")).append("；");
    	}
    	if(afterChange.get("overhaulsq").equals(beforChange.get("overhaulsq"))||(StringUtil.isEmpty(afterChange.get("overhaulsq").toString())&&StringUtil.isEmpty(beforChange.get("overhaulsq").toString()))){
    	}else{
    		changeinfo.append("缺陷显示首次出现的大修轮次由：").append(beforChange.get("overhaulsq")).append("，修改为：").append(afterChange.get("overhaulsq")).append("；");
    	}
    	if(afterChange.get("planone").equals(beforChange.get("planone"))||(StringUtil.isEmpty(afterChange.get("planone").toString())&&StringUtil.isEmpty(beforChange.get("planone").toString()))){
    	}else{
    		changeinfo.append("跟踪检查计划及结果第1次由：").append(beforChange.get("planone")).append("，修改为：").append(afterChange.get("planone")).append("；");
    	}
    	if(afterChange.get("plantwo").equals(beforChange.get("plantwo"))||(StringUtil.isEmpty(afterChange.get("plantwo").toString())&&StringUtil.isEmpty(beforChange.get("plantwo").toString()))){
    	}else{
    		changeinfo.append("跟踪检查计划及结果第2次由：").append(beforChange.get("plantwo")).append("，修改为：").append(afterChange.get("plantwo")).append("；");
    	}
    	if(afterChange.get("planthree").equals(beforChange.get("planthree"))||(StringUtil.isEmpty(afterChange.get("planthree").toString())&&StringUtil.isEmpty(beforChange.get("planthree").toString()))){
    	}else{
    		changeinfo.append("跟踪检查计划及结果第3次由：").append(beforChange.get("planthree")).append("，修改为：").append(afterChange.get("planthree")).append("；");
    	}
    	if(afterChange.get("remake").equals(beforChange.get("remake"))||(StringUtil.isEmpty(afterChange.get("remake").toString())&&StringUtil.isEmpty(beforChange.get("remake").toString()))){
    	}else{
    		changeinfo.append("备注由：").append(beforChange.get("remake")).append("，修改为：").append(afterChange.get("remake")).append("；");
    	}
    	Map insplanmg_modif = new HashMap();
    	insplanmg_modif.put("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
    	insplanmg_modif.put("changeinfo", changeinfo.toString());
    	insplanmg_modif.put("jd", afterChange.get("jd"));
    	insplanmg_modif.put("jz", afterChange.get("jz"));
    	insplanmg_modif.put("isdel", "3");
    	insplanmg_modif.put("changeDate", new Date());
    	insplanmg_modif.put("changeuser", afterChange.get("changeuser"));
    	
    	insplanmg_modif.put("checkpostion", afterChange.get("checkpostion"));
    	insplanmg_modif.put("checkmethond", afterChange.get("checkmethond"));
    	insplanmg_modif.put("screwiden", afterChange.get("screwiden"));
    	insplanmg_modif.put("shoupostion", afterChange.get("shoupostion"));
    	insplanmg_modif.put("overhaulsq", afterChange.get("overhaulsq"));
    	insplanmg_modif.put("planone", afterChange.get("planone"));
    	insplanmg_modif.put("plantwo", afterChange.get("plantwo"));
    	insplanmg_modif.put("planthree", afterChange.get("planthree"));
    	insplanmg_modif.put("remake", afterChange.get("remake"));
    	insplanmg_modif.put("jhry", afterChange.get("jhry"));
    	insplanmg_modif.put("ccry", afterChange.get("ccry"));
    	insplanmg_modif.put("changeReason", afterChange.get("changeReason"));
    	//工作流
    	insplanmg_modif.put("relationid", afterChange.get("relationid"));
    	insplanmg_modif.put("processInstId", afterChange.get("processInstId"));
    	insplanmg_modif.put("applicant",afterChange.get("applicant"));
    	insplanmg_modif.put("applicanttime",afterChange.get("applicanttime"));
    	
    	boolean flag = false;
    	String sql = "com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.trainsmgsql.insetChangeInfo";
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, insplanmg_modif);
		return flag;
    }
    /**
     * 获取修改前数据
     * @return
     */
    public Map getBeforChange(String uuid){
    	Map beforChange = new HashMap();
//    	List list = new ArrayList();
    	String sql = "com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.trainsmgsql.getInfoById";
    	//获取全部管束
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, uuid);
    	for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			beforChange.put("checkpostion",dataObject.get("checkpostion"));
			beforChange.put("checkmethond",dataObject.get("checkmethond"));
			beforChange.put("screwiden",dataObject.get("screwiden"));
			beforChange.put("shoupostion",dataObject.get("shoupostion"));
			beforChange.put("overhaulsq",dataObject.get("overhaulsq"));
			beforChange.put("planone",dataObject.get("planone"));
			beforChange.put("plantwo",dataObject.get("plantwo"));
			beforChange.put("planthree",dataObject.get("planthree"));
			beforChange.put("remake",dataObject.get("remake")==null?"":dataObject.get("remake"));
		}
		return beforChange;
    }
    
    
}
