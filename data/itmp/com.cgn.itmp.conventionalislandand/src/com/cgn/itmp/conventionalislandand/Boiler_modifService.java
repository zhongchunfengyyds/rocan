
package com.cgn.itmp.conventionalislandand;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler_modif;

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
public class Boiler_modifService extends DASDaoSupport implements IBoiler_modifService{
	public void addBoiler_modif(Boiler_modif boiler_modif){
		getDASTemplate().getPrimaryKey(boiler_modif);
		getDASTemplate().insertEntity(boiler_modif);
	}

	public void deleteBoiler_modifs(Boiler_modif[] boiler_modifs ){
		for(DataObject boiler_modif:boiler_modifs){
			getDASTemplate().deleteEntityCascade(boiler_modif);
		}
	}


	public void getBoiler_modif(Boiler_modif boiler_modif){
		getDASTemplate().expandEntity(boiler_modif);
	}


	public Boiler_modif[] queryBoiler_modifs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Boiler_modif.class, dasCriteria, pageCond);
	}


    public void updateBoiler_modif(Boiler_modif boiler_modif){
	    getDASTemplate().updateEntity(boiler_modif);
    }
    
}
