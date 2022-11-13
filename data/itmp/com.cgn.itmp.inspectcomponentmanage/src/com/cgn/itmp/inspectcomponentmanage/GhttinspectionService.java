
package com.cgn.itmp.inspectcomponentmanage;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Ghttinspection;

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
public class GhttinspectionService extends DASDaoSupport implements IGhttinspectionService{
	public void addGhttinspection(Ghttinspection ghttinspection){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ghttinspection.set("createtime", dateFormat.format(new Date()));
		getDASTemplate().getPrimaryKey(ghttinspection);
		getDASTemplate().insertEntity(ghttinspection);
	}

	public void deleteGhttinspections(Ghttinspection[] ghttinspections ){
		for(DataObject ghttinspection:ghttinspections){
			getDASTemplate().deleteEntityCascade(ghttinspection);
		}
	}


	public void getGhttinspection(Ghttinspection ghttinspection){
		getDASTemplate().expandEntity(ghttinspection);
	}


	public Ghttinspection[] queryGhttinspections(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Ghttinspection.class, dasCriteria, pageCond);
	}


    public void updateGhttinspection(Ghttinspection ghttinspection){
    	if(ghttinspection.get("fj")==null){
    		ghttinspection.set("fj", ghttinspection.get("enclosure"));
    	}else{
    		ghttinspection.set("fj", ghttinspection.get("fj"));
    	}
	    getDASTemplate().updateEntity(ghttinspection);
    }
    
}
