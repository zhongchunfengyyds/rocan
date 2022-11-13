package com.cgn.itmp.weldingmanagement.Machine;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

/**
 * <pre>
 * Title: 焊机管理功能实现接口
 * Description: 焊机管理功能实现接口
 * </pre>
 * @author LENOVO (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IMachineService{

	/**
	 *	焊机管理数据新增
	 * @param machine Machine
	 */
	public abstract void addMachine(Machine machine);

	/**
	 *	焊机管理数据删除
	 * @param machines Machine[]
	 */
	public abstract void deleteMachines(Machine[] machines);

	/**
	 *	焊机管理数据查询
	 * @param machine Machine[]
	 */
	public abstract void getMachine(Machine machine);

	/**
	 *	焊机管理数据分页查询
	 * @param criteria CriteriaType 查询条件
	 * @param page PageCond 分页实体
	 * @return Machine[] 分页查询返回结果
	 */
	public abstract Machine[] queryMachines(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *	焊机管理数据更新
	 * @param machine Machine[]
	 */
	public abstract void updateMachine(Machine machine);

}
