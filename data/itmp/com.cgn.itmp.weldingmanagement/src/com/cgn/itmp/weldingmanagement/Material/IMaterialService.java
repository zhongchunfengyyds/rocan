package com.cgn.itmp.weldingmanagement.Material;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 焊材管理功能实现接口
 * Description: 焊材管理功能实现接口 
 * </pre>
 * @author LENOVO (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IMaterialService{

	/**
	 *	焊材管理数据添加功能
	 * @param material Material
	 */
	public abstract void addMaterial(Material material);

	/**
	 * 焊材管理数据删除功能
	 * @param materials Material[]
	 */
	public abstract void deleteMaterials(Material[] materials);

	/**
	 * 焊材管理数据查询功能
	 * @param material Material[]
	 */
	public abstract void getMaterial(Material material);

	/**
	 * 焊材管理数据分页查询功能
	 * @param criteria CriteriaType 查询附加条件	
	 * @param page PageCond 分页参数存放实体
	 * @return Material[] 查询返回数据
	 */
	public abstract Material[] queryMaterials(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 * 焊材管理数据跟新功能
	 * @param material Material[]
	 */
	public abstract void updateMaterial(Material material);

	/**
	 * 
	 * @param base 基地
	 * @return
	 * (获取焊材--焊接填充材料"【型号+规格】")焊接申请单焊接模块调用
	 */
	public abstract DataObject[] getModelSpecifications(String base);
	
	/**
	 * 
	 * @param base 基地
	 * @return
	 * (获取焊材批号)焊接申请单焊接模块调用
	 */
	public abstract DataObject[] getBatchNumber(String base,String model,String specifications);
	
	/**
	 * 
	 * @param material 实体
	 * @param base 基地
	 */
	public abstract void addMaterial(Material material,String base);
}
