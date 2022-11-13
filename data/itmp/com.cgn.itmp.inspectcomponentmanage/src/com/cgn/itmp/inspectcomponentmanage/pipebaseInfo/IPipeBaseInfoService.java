package com.cgn.itmp.inspectcomponentmanage.pipebaseInfo;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import com.cgn.itmp.inspectcomponentmanage.pipelayout.PipeBaseInfo;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author littlebear (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IPipeBaseInfoService{

	/**
	 *
	 * @param pipeBaseInfo PipeBaseInfo
	 */
	public abstract void addPipeBaseInfo(PipeBaseInfo pipeBaseInfo);

	/**
	 *
	 * @param pipeBaseInfos PipeBaseInfo[]
	 */
	public abstract void deletePipeBaseInfos(PipeBaseInfo[] pipeBaseInfos);

	/**
	 *
	 * @param pipeBaseInfo PipeBaseInfo[]
	 */
	public abstract void getPipeBaseInfo(PipeBaseInfo pipeBaseInfo);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return PipeBaseInfo[]
	 */
	public abstract PipeBaseInfo[] queryPipeBaseInfos(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param pipeBaseInfo PipeBaseInfo[]
	 */
	public abstract void updatePipeBaseInfo(PipeBaseInfo pipeBaseInfo);

}
