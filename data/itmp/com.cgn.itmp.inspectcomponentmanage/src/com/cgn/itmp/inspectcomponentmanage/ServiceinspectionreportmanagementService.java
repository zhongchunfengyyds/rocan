
package com.cgn.itmp.inspectcomponentmanage;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.serviceinspectionreportmanagement.Serviceinspectionreportmanagement;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 役检报告管理功能实现类
 * Description: 役检报告管理功能实现类
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class ServiceinspectionreportmanagementService extends DASDaoSupport implements IServiceinspectionreportmanagementService{
	
	/**
	 * 役检报告管理数据添加
	 */
	public void addServiceinspectionreportmanagement(Serviceinspectionreportmanagement serviceinspectionreportmanagement){
		getDASTemplate().getPrimaryKey(serviceinspectionreportmanagement);
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		serviceinspectionreportmanagement.set("createtime",df.format(new Date()) );
		getDASTemplate().insertEntity(serviceinspectionreportmanagement);
	}

	/**
	 * 役检报告管理数据删除
	 */
	public void deleteServiceinspectionreportmanagements(Serviceinspectionreportmanagement[] serviceinspectionreportmanagements ){
		for(DataObject serviceinspectionreportmanagement:serviceinspectionreportmanagements){
			getDASTemplate().deleteEntityCascade(serviceinspectionreportmanagement);
		}
	}

	
	/**
	 * 役检报告管理数据查询
	 */
	public void getServiceinspectionreportmanagement(Serviceinspectionreportmanagement serviceinspectionreportmanagement){
		getDASTemplate().expandEntity(serviceinspectionreportmanagement);
	}


	/**
	 * 役检报告管理数据分页查询
	 */
	public Serviceinspectionreportmanagement[] queryServiceinspectionreportmanagements(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Serviceinspectionreportmanagement.class, dasCriteria, pageCond);
	}

	/**
	 * 役检报告管理数据更新
	 */
    public void updateServiceinspectionreportmanagement(Serviceinspectionreportmanagement serviceinspectionreportmanagement){
	    getDASTemplate().updateEntity(serviceinspectionreportmanagement);
    }
    
}
