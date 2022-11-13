package com.cgn.itmp.weldingmanagement.Material;

import commonj.sdo.DataObject;

public interface MaterialServerI {

	/**
	 * 
	 * @param data 实体的数据
	 * @param entity 实体名称
	 * @param inventory 库存
	 * @param rksl 入库数量
	 * @param tksl 退库数量
	 * @param bfyy 报给原因
	 * 
	 * 更新商品的库存，根据页面输入的入库数量或者
	 * 退库数量
	 * 或者报废原因
	 */
	public void updateMaterialInventory(DataObject[] data,String entity,int inventory,int rksl,int tksl,String bfyy);
	
	/**
	 * 
	 * @param data 第一个实体数据(焊材的数据)
	 * @param data1 第二个实体数据(焊材使用记录)
	 * @param entity 实体名称
	 * @param entity1 第二个实体名称
	 * 
	 * 更新焊材的状态为出借
	 */
	public void updateMaterialToJC(DataObject[] data,DataObject[] data1, String entity,String entity1,String base);
	
	/**
	 * 
	 * @param data 第一个实体数据
	 * @param data1 第二个实体数据
	 * @param entity 实体名称
	 * @param entity1 第二个实体名称
	 * 
	 *  更新焊材的状态为归还，方便在使用记录中显示
	 */
	public void updateMaterialToGh(DataObject[] data,DataObject[] data1, String entity,String entity1,String base);
}
