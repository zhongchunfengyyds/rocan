package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice;

/**
 * <pre>
 * Title: 常规岛_缺陷显示跟踪与处理信息功能接口
 * Description: 常规岛_缺陷显示跟踪与处理信息功能接口
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface ITInspectDefectNoticeService{

	/**
	 *
	 * @param 新增缺陷显示跟踪与处理信息
	 */
	public abstract void addTInspectDefectNotice(TInspectDefectNotice tInspectDefectNotice);

	/**
	 *
	 * @param 删除缺陷显示跟踪与处理信息
	 */
	public abstract void deleteTInspectDefectNotices(TInspectDefectNotice[] tInspectDefectNotices);

	/**
	 *
	 * @param 查询缺陷显示跟踪与处理信息
	 */
	public abstract void getTInspectDefectNotice(TInspectDefectNotice tInspectDefectNotice);

	/**
	 *
	 * @param criteria CriteriaType 查寻条件
	 * @param page PageCond 分页实体
	 * @return TInspectDefectNotice[] 查询实体数组
	 */
	public abstract TInspectDefectNotice[] queryTInspectDefectNotices(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 * 更新缺陷显示跟踪与处理信息
	 * @param tInspectDefectNotice TInspectDefectNotice[]
	 */
	public abstract void updateTInspectDefectNotice(TInspectDefectNotice tInspectDefectNotice);

}
