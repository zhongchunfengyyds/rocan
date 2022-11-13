package com.cgn.itmp.inspectcomponentmanage;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation;

/**
 * <pre>
 * Title: 设备基础技术信息功能实现接口
 * Description: 接口定义方法名 
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IEquipmentbaseinformationService{

	/**
	 * 设备基础技术信息数据增加方法
	 * @param equipmentbaseinformation Equipmentbaseinformation
	 */
	public abstract void addEquipmentbaseinformation(Equipmentbaseinformation equipmentbaseinformation);

	/**
	 * 设备基础技术信息数据实体删除方法
	 * @param equipmentbaseinformations Equipmentbaseinformation[]
	 */
	public abstract void deleteEquipmentbaseinformations(Equipmentbaseinformation[] equipmentbaseinformations);

	/**
	 * 设备基础技术信息数据实体查询方法
	 * @param equipmentbaseinformation Equipmentbaseinformation[]
	 */
	public abstract void getEquipmentbaseinformation(Equipmentbaseinformation equipmentbaseinformation);

	/**
	 * 设备基础技术信息数据实体查询（分页）方法
	 * @param criteria CriteriaType 查询条件实体
	 * @param page PageCond 分页实体
	 * @return Equipmentbaseinformation[] 返回值类型
	 */
	public abstract Equipmentbaseinformation[] queryEquipmentbaseinformations(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 * 数据实体更新方法
	 * @param equipmentbaseinformation Equipmentbaseinformation[] 参数类型
	 */
	public abstract void updateEquipmentbaseinformation(Equipmentbaseinformation equipmentbaseinformation);

}
