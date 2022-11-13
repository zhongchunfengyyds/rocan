package com.cgn.itmp.weldingmanagement.Machine;

import commonj.sdo.DataObject;
/**
 * 
 * @author jrk
 * 焊机状态变更数据操作类
 *
 */

public interface Machineserver {
	/**
	 * 焊机状态变更 使用中
	 * @param data 第一个数据
	 * @param data1 第二个数据
	 * @param entity 第一个实体
	 * @param entity1 第二个尸体
	 * @param userRealName 当前用户名称
	 */
	public void updateHjztTosyt(DataObject[] data,DataObject[] data1, String entity,String entity1,String userRealName);
	
	/**
	 * 焊机状态变更 送检
	 * @param data 第一个数据
	 * @param data1 第二个数据
	 * @param entity 第一个实体
	 * @param entity1 第二个尸体
	 * @param userRealName 当前用户名称
	 */
	public void updateHjztTosj(DataObject[] data,DataObject[] data1, String entity,String entity1,String userRealName);
	
	/**
	 * 焊机状态变更 在库中
	 * @param data 第一个数据
	 * @param data1 第二个数据
	 * @param entity 第一个实体
	 * @param entity1 第二个尸体
	 * @param userRealName 当前用户名称
	 */
	public void updateHjztTozkz(DataObject[] data,DataObject[] data1, String entity,String entity1,String userRealName);
	
	/**
	 * 焊机状态变更 送修中
	 * @param data 第一个数据
	 * @param data1 第二个数据
	 * @param entity 第一个实体
	 * @param entity1 第二个尸体
	 * @param userRealName 当前用户名称
	 */
	public void updateHjztTosxz(DataObject[] data,DataObject[] data1, String entity,String entity1,String userRealName);
	
	/**
	 * 焊机状态变更 已报废
	 * @param data 第一个数据
	 * @param data1 第二个数据
	 * @param entity 第一个实体
	 * @param entity1 第二个尸体
	 * @param userRealName 当前用户名称
	 */
	public void updateHjztToybf(DataObject[] data,DataObject[] data1, String entity,String entity1,String userRealName);
}
