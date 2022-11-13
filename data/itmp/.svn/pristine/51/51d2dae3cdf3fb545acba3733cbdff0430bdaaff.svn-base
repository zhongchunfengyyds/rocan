package com.cgn.itmp.weldingmanagement.Weldingapply;
import com.cgn.itmp.weldingmanagement.Quality.Quality;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author LENOVO (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IWeldingapplyService{

	/**
	 *
	 * @param weldingapply Weldingapply
	 */
	public abstract void addWeldingapply(Weldingapply weldingapply);

	/**
	 *
	 * @param weldingapplys Weldingapply[]
	 */
	public abstract void deleteWeldingapplys(Weldingapply[] weldingapplys);

	/**
	 *
	 * @param weldingapply Weldingapply[]
	 */
	public abstract void getWeldingapply(Weldingapply weldingapply);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Weldingapply[]
	 */
	public abstract Weldingapply[] queryWeldingapplys(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param weldingapply Weldingapply[]
	 */
	public abstract void updateWeldingapply(Weldingapply weldingapply);

	
	/**
	 * 保存草稿
	 */
	public abstract void addWeldingapplyToCg(Weldingapply weldingapply);
	
	/**
	 * 添加申请信息 单号生成+附件上传
	 * @param data
	 * @param entity
	 */
	public abstract void addWeldingapplyByObj(DataObject[] data,String type,String user);
	
	/**
	 * 根据WQP编号去查找WQP状态
	 */
	public abstract Quality[] getQualityWqpStatu(String qualitynumber);
	
	/**
	 * 项目取消，更新焊接申请那一条数据状态为已取消，
	 * 更新WQP编号对应数据当前任务状态为WQP已取消
	 * @param weldingapply
	 */
	public abstract void updateWeldingapplyByCancel(Weldingapply weldingapply,String qualitynumber);
}
