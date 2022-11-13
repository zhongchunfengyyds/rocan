/**
 * 
 */
package com.cgn.itmp.outlineandplan.outline.common;
import java.text.SimpleDateFormat;
import java.util.*;

import com.cgn.itmp.basecommon.BaseJdglUtil;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.eos.system.annotation.Bizlet;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 大纲管理通用功能代码管理bean
 * Description: 通用
 * </pre>
 * @author lhy
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface CommonService {
	public void addProjectInfoMation(DataObject data,boolean isadmin,String entity,String middleEntity,String flag);
	
	/**
	 * 新增数据集（多条）
	 * @param data			数据集
	 * @param isadmin		是否管理员
	 * @param entity		业务实体
	 * @param middleEntity	中间实体
	 * @param flag			操作类型
	 */
	@Bizlet
	public void addProjectInfoMation(DataObject[] data,boolean isadmin,String entity,String middleEntity,String flag);
	
	
	/**
	 * 新增业务数据及履历
	 * @param data
	 * @param entity
	 * @param ident
	 */
	public void addProjectInfoMationAndRecord(DataObject data,String entity,String ident);
	
	/**
	 * 升版插入履历信息
	 * @param data			升版数据集
	 * @param modelFlag		所属模块标识
	 */
	public void addEditionRecord(DataObject data,String modelFlag);
	
	
	/**
	 * 数据集更新业务数据及插入履历
	 * @param data		中间表数据集
	 * @param entity	业务实体
	 * @param ident		模块类型
	 */
	@Bizlet
	public void updateDataObjectInfoMation(DataObject data,String entity,String middleEntity,String ident);
	
	
	/**
	 * 查询数据集
	 * @param fieldName		查询字段
	 * @param fieldValue	查询字段值
	 * @param entity		实体
	 * @return				数据返回集
	 */
	@Bizlet
	public DataObject[] getInforMationByFieldName(String fieldName,String fieldValue,String entity);
	
	/**
	 * 计划更新
	 * @param data			数据集
	 * @param entityName	实体名
	 * @param type			完成取消标识
	 * @param ident			模块标识（例：规范法定大纲管理大修执行条目计划完成）
	 */
	public void addPlanInforMation(DataObject[] data,String entityName,String type,String ident);
	
	
	/**
	 * 获取树状图列表
	 * @param baseid	基地
	 * @param crewid	机组
	 * @param address	查询列表语句地址
	 * @return			列表集
	 */
	@Bizlet
	public DataObject[] getProtypeAndPartsData(String baseid,String crewid,String address);
	
	/**
	 * 获取基地机组对应轮次
	 * @param baseid		基地
	 * @param crewid		机组
	 * @param address		查询基地机组对应轮次语句地址
	 * @return				轮次起始与结束Map
	 */
	@Bizlet
	public Map<String, Object> getBaseCircle(String baseid,String crewid,String address);
	
	
	/**
	 * 修改数据集
	 * @param fieldName		查询字段
	 * @param fieldValue	查询字段值
	 * @param upFieldName	修改字段
	 * @param upFieldValue	修改字段值
	 * @param entity		实体
	 */
	@Bizlet
	public void updataInfoMationByFieldName(String fieldName,String fieldValue,String upFieldName,String upFieldValue,String entity);
	
	/**
	 * 新增履历信息表数据
	 * @param creator	发起人
	 * @param type		操作方式
	 * @param content	操作日志
	 * @param planid	操作所属业务表id
	 * @param editid	操作所属中间表id
	 * @param ident		操作模块类型
	 * @param reason	操作原因
	 */
	public void addRecordInfoMation(String creator,String type,String content,String planid,String editid,String ident,String reason,String base,String crew);
	
	/**
	 * 判断数据是否包含某值
	 * @param arr			数组	
	 * @param targetValue	数值
	 * @return				flag
	 */
	public boolean ifcontains(String[] arr, String targetValue);
	
	/**
	 * 处理模块标识字段
	 * @param modelFlag
	 * @return
	 */
	public String dealModelFlag(String modelFlag);
}
