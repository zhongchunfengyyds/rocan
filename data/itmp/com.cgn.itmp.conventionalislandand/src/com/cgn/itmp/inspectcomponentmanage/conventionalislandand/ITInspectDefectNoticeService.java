package com.cgn.itmp.inspectcomponentmanage.conventionalislandand;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author Administrator (mailto:service6@primeton.com)
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
	 * @param tInspectDefectNotice TInspectDefectNotice
	 */
	public abstract void addTInspectDefectNotice(TInspectDefectNotice tInspectDefectNotice);

	/**
	 *
	 * @param tInspectDefectNotices TInspectDefectNotice[]
	 */
	public abstract void deleteTInspectDefectNotices(TInspectDefectNotice[] tInspectDefectNotices);

	/**
	 *
	 * @param tInspectDefectNotice TInspectDefectNotice[]
	 */
	public abstract void getTInspectDefectNotice(TInspectDefectNotice tInspectDefectNotice);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return TInspectDefectNotice[]
	 */
	public abstract TInspectDefectNotice[] queryTInspectDefectNotices(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param tInspectDefectNotice TInspectDefectNotice[]
	 */
	public abstract void updateTInspectDefectNotice(TInspectDefectNotice tInspectDefectNotice);

	
	/**
	 *
	 * @param data DataObject[]
	 */
	
	public abstract void addOrEdit(DataObject data);
	
	
	
}
