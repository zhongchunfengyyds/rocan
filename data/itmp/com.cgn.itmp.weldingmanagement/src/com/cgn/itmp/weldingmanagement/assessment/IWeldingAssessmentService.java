package com.cgn.itmp.weldingmanagement.assessment;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 焊接工艺卡评定报告功能接口
 * Description: 焊接工艺卡评定报告功能接口
 * </pre>
 * @author LENOVO (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IWeldingAssessmentService{

	/**
	 *	焊接工艺卡评定报告数据新增
	 * @param weldingAssessment WeldingAssessment
	 */
	public abstract void addWeldingAssessment(WeldingAssessment weldingAssessment);

	/**
	 * 焊接工艺卡评定报告数据删除
	 * @param weldingAssessments WeldingAssessment[]
	 */
	public abstract void deleteWeldingAssessments(WeldingAssessment[] weldingAssessments);

	/**
	 *	焊接工艺卡评定报告数据查询
	 * @param weldingAssessment WeldingAssessment[]
	 */
	public abstract void getWeldingAssessment(WeldingAssessment weldingAssessment);

	/**
	 * 焊接工艺卡评定报告数据分页查询
	 * @param criteria CriteriaType 查询附加条件
	 * @param page PageCond 分页参数实体
	 * @return WeldingAssessment[] 返回实体数据
	 */
	public abstract DataObject[] queryWeldingAssessments(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 * 焊接工艺卡评定报告数据更新
	 * @param weldingAssessment WeldingAssessment[]
	 */
	public abstract void updateWeldingAssessment(WeldingAssessment weldingAssessment);

}
