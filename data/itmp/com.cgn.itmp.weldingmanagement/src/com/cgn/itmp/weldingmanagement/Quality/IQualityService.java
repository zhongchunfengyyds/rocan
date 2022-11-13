package com.cgn.itmp.weldingmanagement.Quality;

import java.util.Map;

import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author LENOVO (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IQualityService{

	/**
	 *
	 * @param quality Quality
	 */
	public abstract void addQuality(Quality quality);

	/**
	 *
	 * @param qualitys Quality[]
	 */
	public abstract void deleteQualitys(Quality[] qualitys);

	/**
	 *
	 * @param quality Quality[]
	 */
	public abstract void getQuality(Quality quality);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Quality[]
	 */
	public abstract Quality[] queryQualitys(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param quality Quality[]
	 */
	public abstract void updateQuality(Quality quality);

	/**
	 * 根据大修轮次获取WQP编号
	 * @param applyno
	 * @return
	 */
	public abstract String getQualityNumber(String applyno);
	
	/**
	 * 添加多焊接WQP申请
	 * @param data
	 * @param entity
	 * @return 
	 */
	public abstract String addQualityByApply(DataObject[] data,String entity,String uid,String qnum,String fj);
	
	/**
	 * 根据页面点击的数据去查询相关的所有信息
	 */
	public abstract Quality getInfoByQualityNumber(String qualitynumber);
	
	/**
	 * 添加单焊接WQP模板
	 * @return 
	 */
	public abstract String addOneQualityByApply(DataObject[] data,String entity,String uid,String qnum);
	
	/**
	 * 获取焊接质量计划类型，并返回焊接质量计划单焊接或多焊接的数量
	 */
	public abstract Map<String, Integer> getOneQualityByApply(String qnum);
	
	/**
	 * 根据点击的WQP编号查询单焊缝模板数据的信息
	 * @param qualitynumber 页面点击的编号
	 * @return
	 */
	public abstract Quality[] getQualityOneSimple(String qualitynumber);
	
	/**
	 * 根据流程id获取对应实体
	 * @param processInstId
	 * @return
	 */
	public abstract DataObject getQualityByProcessInstId(String processInstId);
}
