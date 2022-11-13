
package com.cgn.itmp.inspectcomponentmanage.foreignmattermg;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf;

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
public class Foreignmattermg_mfService extends DASDaoSupport implements IForeignmattermg_mfService{
	public void addForeignmattermg_mf(Foreignmattermg_mf foreignmattermg_mf){
		getDASTemplate().getPrimaryKey(foreignmattermg_mf);
		getDASTemplate().insertEntity(foreignmattermg_mf);
	}

	public void deleteForeignmattermg_mfs(Foreignmattermg_mf[] foreignmattermg_mfs ){
		for(DataObject foreignmattermg_mf:foreignmattermg_mfs){
			getDASTemplate().deleteEntityCascade(foreignmattermg_mf);
		}
	}


	public void getForeignmattermg_mf(Foreignmattermg_mf foreignmattermg_mf){
		getDASTemplate().expandEntity(foreignmattermg_mf);
	}


	public Foreignmattermg_mf[] queryForeignmattermg_mfs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Foreignmattermg_mf.class, dasCriteria, pageCond);
	}


    public void updateForeignmattermg_mf(Foreignmattermg_mf foreignmattermg_mf){
	    getDASTemplate().updateEntity(foreignmattermg_mf);
    }
    
}
