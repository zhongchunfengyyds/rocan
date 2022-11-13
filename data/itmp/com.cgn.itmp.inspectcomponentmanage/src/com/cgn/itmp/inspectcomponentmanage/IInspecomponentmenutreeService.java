package com.cgn.itmp.inspectcomponentmanage;
import com.alibaba.fastjson.JSONArray;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 役检目录树功能接口类
 * Description: 役检目录树功能接口类
 * </pre>
 * @author littlebear (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IInspecomponentmenutreeService{

	/**
	 * 役检目录树数据增加方法
	 * @param inspecomponentmenutree Inspecomponentmenutree
	 */
	public abstract void addInspecomponentmenutree(Inspecomponentmenutree inspecomponentmenutree);

	/**
	 * 役检目录树数据实体删除方法
	 * @param inspecomponentmenutrees Inspecomponentmenutree[]
	 */
	public abstract void deleteInspecomponentmenutrees(Inspecomponentmenutree[] inspecomponentmenutrees);

	/**
	 * 役检目录树数据实体查询方法
	 * @param inspecomponentmenutree Inspecomponentmenutree[]
	 */
	public abstract void getInspecomponentmenutree(Inspecomponentmenutree inspecomponentmenutree);

	/**
	 * 役检目录树数据实体查询（分页）方法
	 * @param criteria CriteriaType 查询条件实体
	 * @param page PageCond 分页实体
	 * @return Inspecomponentmenutree[] 返回值类型
	 */
	public abstract Inspecomponentmenutree[] queryInspecomponentmenutrees(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 * 役检目录树数据实体更新方法
	 * @param inspecomponentmenutree Inspecomponentmenutree[]
	 */
	public abstract void updateInspecomponentmenutree(Inspecomponentmenutree inspecomponentmenutree);
	
	/**
	 *
	 * @获取树
	 * @return 
	 */
	public abstract JSONArray getTree(String base,String crew);

	/**
	 * 插入对应位置数据
	 * @param entity
	 * @param entityName
	 * @param data
	 */
	public abstract void accordingTOEntityByLocation(String entity,String entityName,DataObject data);
	
	/**
	 * 逻辑删除，同时获取当前的操作人以及时间
	 * @param data 数据
	 * @param entity 实体名称
	 */
	public abstract void updatedel(DataObject[] data,String entity,String deleteperson);
	
	/**
	 * 恢复删除，同时清空当前的操作人以及时间
	 * @param data 数据
	 * @param entity 实体名称
	 */
	public abstract void recovery(DataObject[] data,String entity);
	
	
	/**
	 * 根据实体类型获取数量
	 * @param entityType 实体类型
	 * @param fields 字段数组
	 * @param values 值数组
	 * @return
	 */
	public int queryCountByEntity(String entityType,String[] fields,String[] values,String base,String crew);
	
	/**
	 * 清楚之前导入的数据
	 * @param entityType
	 * @param fields
	 * @param values
	 * @return
	 */
	public String deleteByBatchIndex(String entityType,String[] fields,String[] values,String base,String crew);
	
}