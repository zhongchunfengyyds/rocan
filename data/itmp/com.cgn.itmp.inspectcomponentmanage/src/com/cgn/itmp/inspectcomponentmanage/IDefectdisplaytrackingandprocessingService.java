package com.cgn.itmp.inspectcomponentmanage;
import java.util.HashMap;
import java.util.Map;

import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseUtil;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectdisplaytrackingandprocessing.Defectdisplaytrackingandprocessing;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title:  缺陷显示管理模块功能实现接口
 * Description:接口定义方法名
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IDefectdisplaytrackingandprocessingService{

	/**
	 * 数据增加方法
	 * @param defectdisplaytrackingandprocessing Defectdisplaytrackingandprocessing
	 */
	public abstract void addDefectdisplaytrackingandprocessing(Defectdisplaytrackingandprocessing defectdisplaytrackingandprocessing);

	/**
	 *数据实体删除方法
	 * @param defectdisplaytrackingandprocessings Defectdisplaytrackingandprocessing[] 实体参数名称
	 */
	public abstract void deleteDefectdisplaytrackingandprocessings(Defectdisplaytrackingandprocessing[] defectdisplaytrackingandprocessings);

	/**
	 *数据实体查询方法
	 * @param defectdisplaytrackingandprocessing Defectdisplaytrackingandprocessing[] 实体参数名称
	 */
	public abstract void getDefectdisplaytrackingandprocessing(Defectdisplaytrackingandprocessing defectdisplaytrackingandprocessing);

	/**
	 *数据实体查询（分页）方法
	 * @param criteria CriteriaType 查询条件
	 * @param page PageCond 分页条件
	 * @return Defectdisplaytrackingandprocessing[] 返回值类型
	 */
	public abstract Defectdisplaytrackingandprocessing[] queryDefectdisplaytrackingandprocessings(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 * 数据实体更新方法
	 * @param defectdisplaytrackingandprocessing Defectdisplaytrackingandprocessing[] 实体参数名称
	 */
	public abstract void updateDefectdisplaytrackingandprocessing(Defectdisplaytrackingandprocessing defectdisplaytrackingandprocessing);

	
	/**
	 * 根据清单获取是否有指定实体数据
	 * 
	 * @param fieldName
	 *            字段
	 * @param fieldValue
	 *            字段值
	 * @param entity
	 *            实体
	 * @param base
	 *            基地
	 * @param crew
	 *            机组
	 * @return
	 */
	public Map<String, Object> getDataByPosition(String fieldName,
			String fieldValue, String entity, String jd,
			String jz);
}
