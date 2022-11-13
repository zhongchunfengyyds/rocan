
package com.cgn.itmp.knowledgebase;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.knowledgebase.Regulation.TInTerm;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author wangyx (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class TInTermService extends DASDaoSupport implements ITInTermService{
	public void addTInTerm(TInTerm tInTerm){
		getDASTemplate().getPrimaryKey(tInTerm);
		getDASTemplate().insertEntity(tInTerm);
	}

	public void deleteTInTerms(TInTerm[] tInTerms ){
		for(DataObject tInTerm:tInTerms){
			getDASTemplate().deleteEntityCascade(tInTerm);
		}
	}


	public void getTInTerm(TInTerm tInTerm){
		getDASTemplate().expandEntity(tInTerm);
	}


	public TInTerm[] queryTInTerms(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(TInTerm.class, dasCriteria, pageCond);
	}


    public void updateTInTerm(TInTerm tInTerm){
	    getDASTemplate().updateEntity(tInTerm);
    }
	
    public void addOrEdit(DataObject data) {
		if(data == null) return;
		String op = data.getString("_state");                    //com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.InternalExperienceFeedback         
		DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.knowledgebase.Regulation.TInTerm", false);																		
		if("added".equals(op)){  //新增
			temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			temp.setString("addtime",  sdf.format(new Date()));
			temp.setString("isdel",  "0");
			//temp.setString("jd",data.getString("jd"));
			
			DatabaseUtil.insertEntity("default", temp);				
			}else if("modified".equals(op)){ //修改
			DatabaseExt.updateEntityCascade("default", temp);
		}
		
	}
    
}
