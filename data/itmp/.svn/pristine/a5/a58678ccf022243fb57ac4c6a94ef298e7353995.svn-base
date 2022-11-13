
package com.cgn.itmp.dailyandoverhaul.overhaul;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW;

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
public class RegulationRequirementsMgtNEWService extends DASDaoSupport implements IRegulationRequirementsMgtNEWService{
	public void addRegulationRequirementsMgtNEW(RegulationRequirementsMgtNEW regulationRequirementsMgtNEW){
		getDASTemplate().getPrimaryKey(regulationRequirementsMgtNEW);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		regulationRequirementsMgtNEW.set("createtime", dateFormat.format(new Date()));
		getDASTemplate().insertEntity(regulationRequirementsMgtNEW);
	}

	public void deleteRegulationRequirementsMgtNEWs(RegulationRequirementsMgtNEW[] regulationRequirementsMgtNEWs ){
		for(DataObject regulationRequirementsMgtNEW:regulationRequirementsMgtNEWs){
			getDASTemplate().deleteEntityCascade(regulationRequirementsMgtNEW);
		}
	}


	public void getRegulationRequirementsMgtNEW(RegulationRequirementsMgtNEW regulationRequirementsMgtNEW){
		getDASTemplate().expandEntity(regulationRequirementsMgtNEW);
	}


	public RegulationRequirementsMgtNEW[] queryRegulationRequirementsMgtNEWs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(RegulationRequirementsMgtNEW.class, dasCriteria, pageCond);
	}


    public void updateRegulationRequirementsMgtNEW(RegulationRequirementsMgtNEW regulationRequirementsMgtNEW){
	    getDASTemplate().updateEntity(regulationRequirementsMgtNEW);
    }
    
}
