package com.cgn.itmp.inspectcomponentmanage;
import com.alibaba.fastjson.JSONArray;
import com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagement.Inspectionresultsmanagement;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 役检结果数据管理接口
 * Description: 役检结果数据管理接口
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IInspectionresultsmanagementService{

	/**
	 * 役检结果数据增加方法
	 * @param inspectionresultsmanagement Inspectionresultsmanagement
	 */
	public abstract void addInspectionresultsmanagement(Inspectionresultsmanagement inspectionresultsmanagement);

	/**
	 *役检结果数据实体删除方法
	 * @param inspectionresultsmanagements Inspectionresultsmanagement[]
	 */
	public abstract void deleteInspectionresultsmanagements(Inspectionresultsmanagement[] inspectionresultsmanagements);

	/**
	 * 役检结果数据实体查询方法
	 * @param inspectionresultsmanagement Inspectionresultsmanagement[]
	 */
	public abstract void getInspectionresultsmanagement(Inspectionresultsmanagement inspectionresultsmanagement);

	/**
	 * 役检结果数据实体查询（分页）方法
	 * @param criteria CriteriaType 查询条件实体
	 * @param page PageCond 分页实体
	 * @return Inspectionresultsmanagement[] 返回值类型
	 */
	public abstract Inspectionresultsmanagement[] queryInspectionresultsmanagements(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 * 役检结果数据实体更新方法
	 * @param inspectionresultsmanagement Inspectionresultsmanagement[]
	 */
	public abstract void updateInspectionresultsmanagement(Inspectionresultsmanagement inspectionresultsmanagement);

	/**
	 * 获取大修选项
	 * @param base
	 * @return
	 */
	public abstract DataObject[] getNumByOverhual(String base,String crew);
	
	/**
	 * 获取设备树
	 * @param str
	 * @return
	 */
	public abstract JSONArray getEquipmentTree(String base,String crew);
	
	/**
	 * 获取检查结果
	 * @param str
	 * @return
	 */
	public abstract DataObject[] getCheckedResults(DataObject obj,String base,String crew);

	/**
	 * 役检结果数据导出
	 * @param str
	 * @return
	 */
	public abstract String exportExcel(String str);
}
