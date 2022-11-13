
package com.cgn.itmp.weldingmanagement.assessment.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.weldingmanagement.assessment.IWeldingAssessmentService;
import com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 焊接工艺卡评定报告功能接口实现类
 * Description: 程序功能的描述 
 * </pre>
 * @author LENOVO (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class WeldingAssessmentService extends DASDaoSupport implements IWeldingAssessmentService{
	/**
	 * 焊接工艺卡评定报告数据新增
	 */
	public void addWeldingAssessment(WeldingAssessment weldingAssessment){
		getDASTemplate().getPrimaryKey(weldingAssessment);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		weldingAssessment.set("createtime", dateFormat.format(new Date()));
		getDASTemplate().insertEntity(weldingAssessment);
	}

	/**
	 * 焊接工艺卡评定报告数据删除
	 */
	public void deleteWeldingAssessments(WeldingAssessment[] weldingAssessments ){
		for(DataObject weldingAssessment:weldingAssessments){
			getDASTemplate().deleteEntityCascade(weldingAssessment);
		}
	}

	/**
	 * 焊接工艺卡评定报告数据查询
	 */
	public void getWeldingAssessment(WeldingAssessment weldingAssessment){
		getDASTemplate().expandEntity(weldingAssessment);
	}

	/**
	 * 焊接工艺卡评定报告数据分页查询
	 */
	public DataObject[] queryWeldingAssessments(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(DataObject.class, dasCriteria, pageCond);
	}

	/**
	 * 焊接工艺卡评定报告数据更新
	 */
    public void updateWeldingAssessment(WeldingAssessment weldingAssessment){
	    getDASTemplate().updateEntity(weldingAssessment);
    }
    
}
