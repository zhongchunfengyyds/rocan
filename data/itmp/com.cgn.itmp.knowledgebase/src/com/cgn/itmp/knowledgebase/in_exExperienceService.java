
package com.cgn.itmp.knowledgebase;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.knowledgebase.knowledgebase.in_exExperience;

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
public class in_exExperienceService extends DASDaoSupport implements Iin_exExperienceService{
	public void addin_exExperience(in_exExperience in_exExperience){
		
		in_exExperience.set("uuid", (UUID.randomUUID().toString()).replace("-", ""));
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		in_exExperience.set("createtime", dateFormat.format(new Date()));
		in_exExperience.set("isdel", "0");
		getDASTemplate().insertEntity(in_exExperience);
	}

	public void deletein_exExperiences(in_exExperience[] in_exExperiences ){
		for(DataObject in_exExperience:in_exExperiences){
			getDASTemplate().deleteEntityCascade(in_exExperience);
		}
	}


	public void getin_exExperience(in_exExperience in_exExperience){
		getDASTemplate().expandEntity(in_exExperience);
	}


	public in_exExperience[] queryin_exExperiences(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(in_exExperience.class, dasCriteria, pageCond);
	}


    public void updatein_exExperience(in_exExperience in_exExperience){
	    getDASTemplate().updateEntity(in_exExperience);
    }
    
}
