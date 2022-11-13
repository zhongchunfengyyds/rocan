
package com.cgn.itmp.inspectcomponentmanage.screwplanmg;

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
import com.eos.spring.DASDaoSupport;
import com.eos.system.utility.StringUtil;
import com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg;

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
public class ScrewplanmgService extends DASDaoSupport implements IScrewplanmgService{
	/**
	 * 新增
	 */
	public void addScrewplanmg(Screwplanmg screwplanmg){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		screwplanmg.set("createtime", dateFormat.format(new Date()));
		getDASTemplate().getPrimaryKey(screwplanmg);
		getDASTemplate().insertEntity(screwplanmg);
	}
	/**
	 * 新增
	 */
	public void addliuchengScrewplanmg(DataObject data,String user,String type){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		data.set("createtime", dateFormat.format(new Date()));
		if(type.equals("endadd")){			
			data.set("processStatus","3");
			DataObject screwplanmg=DataObjectUtil.convertDataObject(data,"com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg",false);
			getDASTemplate().getPrimaryKey(screwplanmg);
			getDASTemplate().insertEntity(screwplanmg);
		}else{
			data.set("processStatus","3");
			data.set("applicant",user);
			data.set("applicanttime",new Date());
			DataObject screwplanmg=DataObjectUtil.convertDataObject(data,"com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg_mf",false);
			getDASTemplate().getPrimaryKey(screwplanmg);
			getDASTemplate().insertEntity(screwplanmg);
		}
	}
	/**
	 * 删除
	 */
	public void deleteScrewplanmgs(Screwplanmg[] screwplanmgs ){
		for(DataObject screwplanmg:screwplanmgs){
			getDASTemplate().deleteEntityCascade(screwplanmg);
		}
	}

	/**
	 * 条件查询
	 */
	public void getScrewplanmg(Screwplanmg screwplanmg){
		getDASTemplate().expandEntity(screwplanmg);
	}

	/**
	 * 查询
	 */
	public Screwplanmg[] queryScrewplanmgs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Screwplanmg.class, dasCriteria, pageCond);
	}

	/**
	 * 修改
	 */
    public void updateScrewplanmg(DataObject data,String user){
    	Map afterChange = new HashMap();//修改后
    	afterChange.put("checkposition",data.get("checkposition"));
    	afterChange.put("changeReason",data.get("changeReason"));
    	afterChange.put("applicant",user);
    	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	afterChange.put("applicanttime",dateFormat.format(new Date()));
    	afterChange.put("checkmethod",data.get("checkmethod"));
    	afterChange.put("fj",data.get("fj")==null?"":data.get("fj"));
    	afterChange.put("fileid",data.get("fileid")==null?"":data.get("fileid"));
    	afterChange.put("checkplan",data.get("checkplan"));
    	afterChange.put("remake",data.get("remake")==null?"":data.get("remake"));
    	afterChange.put("jd",data.get("jd"));
    	afterChange.put("jz",data.get("jz"));
    	afterChange.put("uuid",data.get("uuid"));
    	afterChange.put("changeuser",user);
    	afterChange.put("processInstId",data.get("processInstId"));//获取流程
    	afterChange.put("relationid",data.get("uuid"));//获取关联id
    	insert(afterChange);
    	DataObject scre=DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg");
    	scre.set("uuid",data.get("uuid"));
    	scre.set("processInstId",data.get("processInstId"));
    	scre.set("processStatus","0");
   	  	DatabaseExt.updateEntityCascade("default",scre);
//	    getDASTemplate().updateEntity(screwplanmg);
    }
	/**
	 * 管理员操作修改
	 */
    public void adminScrewplanmg(DataObject data,String user){
    	Map afterChange = new HashMap();//修改后
    	afterChange.put("applicant",user);
    	afterChange.put("applicanttime",new Date());
    	afterChange.put("changeReason",data.get("changeReason"));
    	afterChange.put("checkposition",data.get("checkposition"));
    	afterChange.put("checkmethod",data.get("checkmethod")==null?"":data.get("checkmethod"));
    	afterChange.put("fj",data.get("fj")==null?"":data.get("fj"));
    	afterChange.put("fileid",data.get("fileid")==null?"":data.get("fileid"));
    	afterChange.put("remake",data.get("remake")==null?"":data.get("remake"));
    	afterChange.put("jd",data.get("jd"));
    	afterChange.put("jz",data.get("jz"));
    	afterChange.put("uuid",data.get("uuid"));
    	afterChange.put("changeuser",user);
    	afterChange.put("processInstId",data.get("processInstId"));//获取流程
    	afterChange.put("relationid",data.get("uuid"));//获取关联id
    	insert(afterChange);
    	DataObject temp=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg", false);
   	  	temp.set("changeuser",user);//获取用户名
   	  	DatabaseExt.updateEntityCascade("default", temp); 

    }
    /**
   	 * 同意并结束流程
   	 */
       public void endTrainsmgwork(DataObject data,String user){
     	  data.set("uuid",data.getString("relationid"));
     	  DataObject temp=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg", false);
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
    	if(afterChange.get("checkposition").equals(beforChange.get("checkposition"))||(StringUtil.isEmpty(afterChange.get("checkposition").toString())&&StringUtil.isEmpty(beforChange.get("checkposition").toString()))){
    	}else{
    		changeinfo.append("检查部位由：").append(beforChange.get("checkposition")).append("，修改为：").append(afterChange.get("checkposition")).append("；");
    	}
    	if(afterChange.get("checkmethod").equals(beforChange.get("checkmethod"))||(StringUtil.isEmpty(afterChange.get("checkmethod").toString())&&StringUtil.isEmpty(beforChange.get("checkmethod").toString()))){
    	}else{
    		changeinfo.append("检查方法由：").append(beforChange.get("checkmethod")).append("，修改为：").append(afterChange.get("checkmethod")).append("；");
    	}
    	if(afterChange.get("fj").equals(beforChange.get("fj"))||(StringUtil.isEmpty(afterChange.get("fj").toString())&&StringUtil.isEmpty(beforChange.get("fj").toString()))){
    	}else{
    		changeinfo.append("检查计划由：").append(beforChange.get("fj")).append("，修改为：").append(afterChange.get("fj")).append("；");
    	}
    	if(afterChange.get("remake").equals(beforChange.get("remake")==null?"":beforChange.get("remake"))||(StringUtil.isEmpty(afterChange.get("remake").toString())&&StringUtil.isEmpty(beforChange.get("remake").toString()))){
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
    	insplanmg_modif.put("changeReason", afterChange.get("changeReason"));
    	insplanmg_modif.put("checkposition", afterChange.get("checkposition"));
    	insplanmg_modif.put("checkmethod", afterChange.get("checkmethod"));
    	insplanmg_modif.put("fj", afterChange.get("fj"));
    	insplanmg_modif.put("fileid", afterChange.get("fileid"));
    	insplanmg_modif.put("remake", afterChange.get("remake"));
    	insplanmg_modif.put("applicant", afterChange.get("applicant"));
    	insplanmg_modif.put("applicanttime", afterChange.get("applicanttime"));
    	insplanmg_modif.put("processInstId",afterChange.get("processInstId"));//获取流程
    	insplanmg_modif.put("relationid",uuid);//获取关联id
    	
    	boolean flag = false;
    	String sql = "com.cgn.itmp.inspectcomponentmanage.screwplanmg.impl.screwplanmgsql.insetChangeInfo";
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, insplanmg_modif);
		return flag;
    }
    /**
     * 获取修改前数据
     * @return
     */
    public Map getBeforChange(String uuid){
    	Map beforChange = new HashMap();
    	String sql = "com.cgn.itmp.inspectcomponentmanage.screwplanmg.impl.screwplanmgsql.getInfoById";
    	//获取全部管束
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, uuid);
    	for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			beforChange.put("checkposition",dataObject.get("checkposition"));
			beforChange.put("checkmethod",dataObject.get("checkmethod"));
			beforChange.put("fj",dataObject.get("fj")==null?"":dataObject.get("fj"));
			beforChange.put("remake",dataObject.get("remake")==null?"":dataObject.get("remake"));
		}
		return beforChange;
    }
    
}
