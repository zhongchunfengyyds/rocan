package com.cgn.itmp.inspectcomponentmanage;
import java.util.List;

import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.alibaba.fastjson.JSONArray;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 缺陷显示详情模块功能实现接口
 * Description: 功能实现接口 
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IDefectsshowdetailedinformationService{

	/**
	 *	数据增加方法
	 * @param defectsshowdetailedinformation Defectsshowdetailedinformation
	 */
	public abstract void addDefectsshowdetailedinformation(Defectsshowdetailedinformation defectsshowdetailedinformation);

	/**
	 * 数据实体删除方法
	 * @param defectsshowdetailedinformations Defectsshowdetailedinformation[]
	 */
	public abstract void deleteDefectsshowdetailedinformations(Defectsshowdetailedinformation[] defectsshowdetailedinformations);

	/**
	 * 数据实体查询方法
	 * @param defectsshowdetailedinformation Defectsshowdetailedinformation[]
	 */
	public abstract void getDefectsshowdetailedinformation(Defectsshowdetailedinformation defectsshowdetailedinformation);

	/**
	 * 数据实体查询（分页）方法
	 * @param criteria CriteriaType 查询条件
	 * @param page PageCond 分页条件
	 * @return Defectsshowdetailedinformation[] 返回值类型
	 */
	public abstract Defectsshowdetailedinformation[] queryDefectsshowdetailedinformations(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 * 数据实体更新方法
	 * @param defectsshowdetailedinformation Defectsshowdetailedinformation[]
	 */
	public abstract void updateDefectsshowdetailedinformation(Defectsshowdetailedinformation defectsshowdetailedinformation);

	/**
	 * 获取役检目录树被检部位
	 */
	public DataObject[] getDetectedSite (String base,String crew);
	
	/**
	 * 根据被检部位 以及基地获取设备名称
	 * @param base
	 * @param detectedsite
	 * @return
	 */
	public DataObject[] getDeviceName (String base,String detectedsite,String crew);
	
	/**
	 * 根据选择的被检部位、设备名称以及基地获取部件名称
	 * @param base 基地
	 * @param detectedsite 被检部位
	 * @param devicename 设备名称
	 * @return
	 */
	public DataObject[] getPartName(String crew,String base, String detectedsite,String devicename);
	
	

	/**
	 *
	 * @获取树（被检部位）
	 * @return 
	 */
	public abstract JSONArray getTreeList(String base,String crew);
	
	/**
	 * 插入选中数据之后
	 * @param entity 实体
	 * @param entityName 实体名字
	 * @param data 实体数据
	 */
	public void accordingTOEntityByLocation(String entity,String entityName,DataObject data);
	
	/**
	 * 返回最大的值+1变成新的缺陷显示编号
	 * @param base
	 * @return
	 */
	public int getMaxDetectedSite(String base,String crew,String stencilplate);
	
	/**
	 * 获取当前基地下所有的缺陷编号
	 * @param base基地
	 * @return
	 */
	public DataObject[] getHistoryNum(String base,String crew);
	
	/**
	 * 根据大修伦次获取当前基地下和大修下所有的缺陷编号
	 * @param base基地
	 * @return
	 */
	public DataObject[] getHistoryNumByOverhaul(String base,String overhaulsequence,String crew);
	
	/**
	 * 获取所有的缺陷大修伦次编号
	 * @param base基地
	 * @return
	 */
	public DataObject[] getAllOverhaul(String base,String crew);
	
	 /**
     * 根据检查方法，以及大修来确定缺陷数量
	 * @return 
     */
	public abstract List<Integer> getDefectresultsNumbers(String base,String Dx,String method,String crew);
	
	/**
     * 根据检查方法，以及大修 和缺陷类型 来确定缺陷数量
	 * @return 
     */
	public abstract List<Integer> getNumsByDefectType(String base,String dx,String method,String defecttype,String crew);
	/**
	 * 返回所有的缺陷显示编号
	 */
	public DataObject[] getAllDefectType(String overhaulsequence,String base,String stencilplate,String crew);
}
