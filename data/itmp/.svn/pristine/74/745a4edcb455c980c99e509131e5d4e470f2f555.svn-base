package com.cgn.itmp.weldingmanagement.Processes;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author train (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IProcessesService{

	/**
	 *
	 * @param processes Processes
	 */
	public abstract void addProcesses(Processes processes);

	/**
	 *
	 * @param processess Processes[]
	 */
	public abstract void deleteProcessess(Processes[] processess);

	/**
	 *
	 * @param processes Processes[]
	 */
	public abstract void getProcesses(Processes processes);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Processes[]
	 */
	public abstract Processes[] queryProcessess(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param processes Processes[]
	 */
	public abstract void updateProcesses(Processes processes);

	
	public abstract DataObject[] getProcessesStepsByPid(String pid);
	
	public abstract DataObject[] getProcessesIds(String jdid);
	
}
