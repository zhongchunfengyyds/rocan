
package com.cgn.itmp.inspectcomponentmanage;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage;

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
public class PipeblockageService extends DASDaoSupport implements IPipeblockageService{
	public void addPipeblockage(Pipeblockage pipeblockage){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		pipeblockage.set("createtime", dateFormat.format(new Date()));
		getDASTemplate().getPrimaryKey(pipeblockage);
		getDASTemplate().insertEntity(pipeblockage);
	}

	public void deletePipeblockages(Pipeblockage[] pipeblockages ){
		for(DataObject pipeblockage:pipeblockages){
			getDASTemplate().deleteEntityCascade(pipeblockage);
		}
	}


	public void getPipeblockage(Pipeblockage pipeblockage){
		getDASTemplate().expandEntity(pipeblockage);
	}


	public Pipeblockage[] queryPipeblockages(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Pipeblockage.class, dasCriteria, pageCond);
	}



    public void updatePipeblockage(DataObject data,String user,String type){
    	if(type.equals("1")){
	    	DataObject temp2=DataObjectUtil.convertDataObject(data,"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage", false);
	    	DatabaseExt.updateEntityCascade("default", temp2);
	    	return;
    	}else{
    		DataObject pipe=DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage");
    		pipe.set("uuid",data.get("uuid"));
    		pipe.set("processInstId",data.get("processInstId"));
    		pipe.set("processStatus","0");
       	  	DatabaseExt.updateEntityCascade("default",pipe);
    	}
    	String relationid=data.getString("uuid");
    	DataObject temp=DataObjectUtil.convertDataObject(data,"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage_MF", false);
    	temp.set("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
    	temp.set("relationid",relationid);
    	temp.set("changeuser",user);
    	temp.set("changetime",new Date());
//    	temp.set("pluggingTime",data.get("pluggingTime"));
    	DatabaseExt.insertEntityCascade("default", temp);
    }
}
