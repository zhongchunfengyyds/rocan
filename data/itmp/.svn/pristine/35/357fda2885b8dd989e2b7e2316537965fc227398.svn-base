
package com.cgn.itmp.conventionalislandand;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler;
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
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class BoilerService extends DASDaoSupport implements IBoilerService{
	public void addBoiler(Boiler boiler){
		getDASTemplate().getPrimaryKey(boiler);
		getDASTemplate().insertEntity(boiler);
	}

	public void deleteBoilers(Boiler[] boilers ){
		for(DataObject boiler:boilers){
			getDASTemplate().deleteEntityCascade(boiler);
		}
	}


	public void getBoiler(Boiler boiler){
		getDASTemplate().expandEntity(boiler);
	}


	public Boiler[] queryBoilers(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Boiler.class, dasCriteria, pageCond);
	}


    public void updateBoiler(Boiler boiler){
    	
	    getDASTemplate().updateEntity(boiler);
    }
    //流程新增
	public void adminaddBoilerwork(DataObject data,String user,String type){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		data.set("uuid",UUID.randomUUID().toString().replace("-", ""));//获取关联id
		data.set("createtime",dateFormat.format(new Date()));
		if(type.equals("1")){
			data.set("processStatus","0");
//			data.set("processInstId",data.get("processInstId"));
			data.set("applicant",user);
			data.set("applicanttime", dateFormat.format(new Date()));
		 	DataObject temp=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler_modif", false);
		 	DatabaseExt.insertEntityCascade("default", temp);
		}else{
			DataObject temp=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler", false);
		 	DatabaseExt.insertEntityCascade("default", temp);
		}
	}
			
	
	public void adminupdateBoilerwork(DataObject data, String user,String type) {
		// TODO 自动生成的方法存根
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		if(type.equals("0")){
			DataObject temp=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler", false);
			DatabaseExt.updateEntityCascade("default", temp); 		
    	}else{
    		
    		DataObject newdata = DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler");
    		newdata.set("uuid",data.get("uuid"));
    		newdata.set("processStatus","0");
    		newdata.set("processInstId",data.get("processInstId"));
    		DatabaseUtil.updateEntity("default", newdata); 
    		
    		data.set("relationid",data.get("uuid"));//获取关联id
    		data.set("processStatus","0");
			data.set("applicant",user);
			data.set("applicanttime", dateFormat.format(new Date()));
    		DataObject temp1=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler_modif", false);
    		DatabaseExt.insertEntityCascade("default", temp1); 	
    	}
	}
	 /**
  	 * 同意并结束流程方法
  	 */
      public void endBoilerworkTemple(DataObject data,String user,String entity){
    	  DataObject temp=DataObjectUtil.convertDataObject(data, entity, false);
    	  temp.set("uuid",data.getString("relationid"));
    	  temp.set("changeuser",user);//获取用户名
    	  temp.set("processStatus","3");//流程结束标志
    	  DatabaseExt.updateEntityCascade("default", temp); 
      }
      
      /**
       * 同意并结束流程方法---（add）
       */
      public void endaddBoilerworkTemple(DataObject data,String user,String entity){
    	  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
    	  DataObject temp=DataObjectUtil.convertDataObject(data, entity, false);
    	  temp.set("changeuser",user);//获取用户名
    	  temp.set("processStatus","3");//流程结束标志.
    	  temp.set("isdel","0");
    	  temp.set("createtime",dateFormat.format(new Date()));
    	  DatabaseExt.insertEntityCascade("default", temp); 
      }
      
      /**
    	 * 同意并结束流程(修改)
    	 */
	public void endBoilerwork(DataObject data, String user) {
		endBoilerworkTemple(data,user,"com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler");
	}
	/**
	 * 同意并结束流程(add)
	 */
	public void endaddBoilerwork(DataObject data, String user) {
		endaddBoilerworkTemple(data,user,"com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler");
	}
}
