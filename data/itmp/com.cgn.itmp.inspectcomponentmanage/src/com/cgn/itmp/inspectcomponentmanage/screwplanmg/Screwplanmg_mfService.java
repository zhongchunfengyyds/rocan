
package com.cgn.itmp.inspectcomponentmanage.screwplanmg;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg_mf;

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
public class Screwplanmg_mfService extends DASDaoSupport implements IScrewplanmg_mfService{
	public void addScrewplanmg_mf(Screwplanmg_mf screwplanmg_mf){
		getDASTemplate().getPrimaryKey(screwplanmg_mf);
		getDASTemplate().insertEntity(screwplanmg_mf);
	}

	public void deleteScrewplanmg_mfs(Screwplanmg_mf[] screwplanmg_mfs ){
		for(DataObject screwplanmg_mf:screwplanmg_mfs){
			getDASTemplate().deleteEntityCascade(screwplanmg_mf);
		}
	}


	public void getScrewplanmg_mf(Screwplanmg_mf screwplanmg_mf){
		getDASTemplate().expandEntity(screwplanmg_mf);
	}


	public Screwplanmg_mf[] queryScrewplanmg_mfs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Screwplanmg_mf.class, dasCriteria, pageCond);
	}


    public void updateScrewplanmg_mf(Screwplanmg_mf screwplanmg_mf){
	    getDASTemplate().updateEntity(screwplanmg_mf);
    }
    
}
