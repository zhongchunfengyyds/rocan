package com.cgn.itmp.weldingmanagement.weldingprocesscard;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 焊接工艺卡功能接口
 * Description: 焊接工艺卡功能接口 
 * </pre>
 * @author littlebear (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IweldingprocesscardService{

	/**
	 * 焊接工艺卡新增功能
	 * @param weldingprocesscard weldingprocesscard
	 */
	public abstract void addweldingprocesscard(weldingprocesscard weldingprocesscard);

	/**
	 * 焊接工艺卡删除功能
	 * @param weldingprocesscards weldingprocesscard[]
	 */
	public abstract void deleteweldingprocesscards(weldingprocesscard[] weldingprocesscards);

	/**
	 * 焊接工艺卡查询功能
	 * @param weldingprocesscard weldingprocesscard[]
	 */
	public abstract void getweldingprocesscard(weldingprocesscard weldingprocesscard);

	/**
	 * 焊接工艺卡分页查询功能
	 * @param criteria CriteriaType 查询附加条件
	 * @param page PageCond 分页参数
	 * @return weldingprocesscard[] 返回查询结果
	 */
	public abstract weldingprocesscard[] queryweldingprocesscards(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 * 焊接工艺卡更新功能
	 * @param weldingprocesscard weldingprocesscard[]
	 */
	public abstract void updateweldingprocesscard(weldingprocesscard weldingprocesscard);
	
	/**
	 * 逻辑删除
	 */
	public abstract void logicweldingprocesscard(DataObject[] data);
	
	/**
	 * 获取工艺报告号
	 * 
	 */
	public abstract DataObject[] getprocessassessreportno(String base,String name);
	
	
	/**
	 * 焊接申请单焊接模块
	 * 下拉框获取焊接工艺卡WPS编号+版本
	 */
	public abstract DataObject[] getWpsandEdition(String base);
	
	/**
	 * 焊接申请单焊接模块
	 * 下拉框获取焊接工艺卡焊接方法
	 */
	public abstract DataObject[] getWeldingMethod(String base,String card_number,String edition);
}
