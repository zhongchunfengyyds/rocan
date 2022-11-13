
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.basecommon.StringUtil;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif;

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
public class Pressurevessel_modifService extends DASDaoSupport implements IPressurevessel_modifService{
	public void addPressurevessel_modif(Pressurevessel_modif pressurevessel_modif){
		getDASTemplate().getPrimaryKey(pressurevessel_modif);
		getDASTemplate().insertEntityCascade(pressurevessel_modif);
	}

	public void deletePressurevessel_modifs(Pressurevessel_modif[] pressurevessel_modifs ){
		for(DataObject pressurevessel_modif:pressurevessel_modifs){
			getDASTemplate().deleteEntityCascade(pressurevessel_modif);
		}
	}


	public void getPressurevessel_modif(Pressurevessel_modif pressurevessel_modif){
		getDASTemplate().expandEntity(pressurevessel_modif);
		getDASTemplate().expandRelation(pressurevessel_modif, "longitudinalwelds");
		getDASTemplate().expandRelation(pressurevessel_modif, "connectingpipes");
		getDASTemplate().expandRelation(pressurevessel_modif, "safetyvalves");
		getDASTemplate().expandRelation(pressurevessel_modif, "pressuregauges");
		getDASTemplate().expandRelation(pressurevessel_modif, "levelgauges");
		getDASTemplate().expandRelation(pressurevessel_modif, "temperatureinstruments");
		getDASTemplate().expandRelation(pressurevessel_modif, "supplementaryinfos");
		getDASTemplate().expandRelation(pressurevessel_modif, "equipmenthistoryinfos");
		getDASTemplate().expandRelation(pressurevessel_modif, "rupturediscs");
		getDASTemplate().expandRelation(pressurevessel_modif, "shellgirthwelds");
	}
	
	public void getPressurevessel_modifWork(String processInstId,Pressurevessel_modif pressurevessel_modif){
		//设置默认的流程字段
		if(StringUtil.isEmpty(processInstId)){
			return;
		}
		getDASTemplate().expandEntity(pressurevessel_modif);
		getDASTemplate().expandRelation(pressurevessel_modif, "longitudinalwelds");
		getDASTemplate().expandRelation(pressurevessel_modif, "connectingpipes");
		getDASTemplate().expandRelation(pressurevessel_modif, "safetyvalves");
		getDASTemplate().expandRelation(pressurevessel_modif, "pressuregauges");
		getDASTemplate().expandRelation(pressurevessel_modif, "levelgauges");
		getDASTemplate().expandRelation(pressurevessel_modif, "temperatureinstruments");
		getDASTemplate().expandRelation(pressurevessel_modif, "supplementaryinfos");
		getDASTemplate().expandRelation(pressurevessel_modif, "equipmenthistoryinfos");
		getDASTemplate().expandRelation(pressurevessel_modif, "rupturediscs");
		getDASTemplate().expandRelation(pressurevessel_modif, "shellgirthwelds");
	}


	public Pressurevessel_modif[] queryPressurevessel_modifs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Pressurevessel_modif.class, dasCriteria, pageCond);
	}


    public void updatePressurevessel_modif(Pressurevessel_modif pressurevessel_modif){
	    getDASTemplate().updateEntityCascade(pressurevessel_modif);
    }
    
}
