
package com.cgn.itmp.inspectcomponentmanage.insplanmg;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif;

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
public class Insplanmg_modifService extends DASDaoSupport implements IInsplanmg_modifService{
	public void addInsplanmg_modif(Insplanmg_modif insplanmg_modif){
		getDASTemplate().getPrimaryKey(insplanmg_modif);
		getDASTemplate().insertEntity(insplanmg_modif);
	}

	public void deleteInsplanmg_modifs(Insplanmg_modif[] insplanmg_modifs ){
		for(DataObject insplanmg_modif:insplanmg_modifs){
			getDASTemplate().deleteEntityCascade(insplanmg_modif);
		}
	}


	public void getInsplanmg_modif(Insplanmg_modif insplanmg_modif){
		getDASTemplate().expandEntity(insplanmg_modif);
	}


	public Insplanmg_modif[] queryInsplanmg_modifs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Insplanmg_modif.class, dasCriteria, pageCond);
	}


    public void updateInsplanmg_modif(Insplanmg_modif insplanmg_modif){
	    getDASTemplate().updateEntity(insplanmg_modif);
    }
    
}
