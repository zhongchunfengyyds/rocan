
package com.cgn.itmp.inspectcomponentmanage.trainsmg;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf;

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
public class Trainsmg_mfService extends DASDaoSupport implements ITrainsmg_mfService{
	public void addTrainsmg_mf(Trainsmg_mf trainsmg_mf){
		getDASTemplate().getPrimaryKey(trainsmg_mf);
		getDASTemplate().insertEntity(trainsmg_mf);
	}

	public void deleteTrainsmg_mfs(Trainsmg_mf[] trainsmg_mfs ){
		for(DataObject trainsmg_mf:trainsmg_mfs){
			getDASTemplate().deleteEntityCascade(trainsmg_mf);
		}
	}


	public void getTrainsmg_mf(Trainsmg_mf trainsmg_mf){
		getDASTemplate().expandEntity(trainsmg_mf);
	}


	public Trainsmg_mf[] queryTrainsmg_mfs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Trainsmg_mf.class, dasCriteria, pageCond);
	}


    public void updateTrainsmg_mf(Trainsmg_mf trainsmg_mf){
	    getDASTemplate().updateEntity(trainsmg_mf);
    }
    
}
