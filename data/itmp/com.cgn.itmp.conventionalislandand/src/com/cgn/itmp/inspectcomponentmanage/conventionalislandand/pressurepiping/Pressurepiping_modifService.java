
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.basecommon.StringUtil;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif;

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
public class Pressurepiping_modifService extends DASDaoSupport implements IPressurepiping_modifService{
	public void addPressurepiping_modif(Pressurepiping_modif pressurepiping_modif){
		getDASTemplate().getPrimaryKey(pressurepiping_modif);
		getDASTemplate().insertEntityCascade(pressurepiping_modif);
	}

	public void deletePressurepiping_modifs(Pressurepiping_modif[] pressurepiping_modifs ){
		for(DataObject pressurepiping_modif:pressurepiping_modifs){
			getDASTemplate().deleteEntityCascade(pressurepiping_modif);
		}
	}


	public void getPressurepiping_modif(Pressurepiping_modif pressurepiping_modif){
		getDASTemplate().expandEntity(pressurepiping_modif);
		getDASTemplate().expandRelation(pressurepiping_modif, "waterpipefittinginfos");
		getDASTemplate().expandRelation(pressurepiping_modif, "pipeweldinformations");
		getDASTemplate().expandRelation(pressurepiping_modif, "pipelinechemicalinfos");
		getDASTemplate().expandRelation(pressurepiping_modif, "equipmenthistoryinfos");
	}


	public Pressurepiping_modif[] queryPressurepiping_modifs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Pressurepiping_modif.class, dasCriteria, pageCond);
	}


    public void updatePressurepiping_modif(Pressurepiping_modif pressurepiping_modif){
	    getDASTemplate().updateEntityCascade(pressurepiping_modif);
    }
    
    public void getPressurepipingmodif(String processInstId,Pressurepiping_modif pressurepiping_modif){
    	//设置默认的流程字段
		if(StringUtil.isEmpty(processInstId)){
			return;
		}
	
		getDASTemplate().expandEntity(pressurepiping_modif);
		getDASTemplate().expandRelation(pressurepiping_modif, "waterpipefittinginfos");
		getDASTemplate().expandRelation(pressurepiping_modif, "pipeweldinformations");
		getDASTemplate().expandRelation(pressurepiping_modif, "pipelinechemicalinfos");
		getDASTemplate().expandRelation(pressurepiping_modif, "equipmenthistoryinfos");
	}
}
