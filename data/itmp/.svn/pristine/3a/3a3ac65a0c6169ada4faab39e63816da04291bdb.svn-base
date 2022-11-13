/**
 * 
 */
package com.cgn.itmp.outlineandplan.outline.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.*;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.tools.zip.ZipEntry;
import org.apache.tools.zip.ZipOutputStream;

import tebie.applib.api.e;

import com.cgn.itmp.basecommon.BaseJdglUtil;
import com.cgn.itmp.basecommon.CommonUtil;
import com.cgn.itmp.basecommon.StringUtil;
import com.cgn.itmp.outlineandplan.outline.ExecutiveEntriesServiceImpl;
import com.cgn.itmp.outlineandplan.tenyearplan.ExecutiveEntriesSNJHCGDDXServiceImpl;
import com.cgn.itmp.outlineandplan.tenyearplan.ExecutiveEntriesSNJHCGDRCServiceImpl;
import com.cgn.itmp.outlineandplan.tenyearplan.ExecutiveEntriesSNJHDXServiceImpl;
import com.cgn.itmp.outlineandplan.tenyearplan.ExecutiveEntriesSNJHRCServiceImpl;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.primeton.ext.data.vmodel.Field;
import com.primeton.ext.data.vmodel.ViewModelHelper;
import com.eos.runtime.core.ApplicationContext;
import com.eos.spring.DASDaoSupport;
import com.eos.system.annotation.Bizlet;

import commonj.sdo.DataObject;
import commonj.sdo.helper.DataFactory;

/**
 * <pre>
 * Title: 大纲管理通用功能代码管理
 * Description: 通用
 * </pre>
 * 
 * @author lhy
 * @version 1.00.00
 * 
 */
/*
 * 修改历史 $log$
 */
@Bizlet("CommonServiceImpl")
public class CommonServiceImpl extends DASDaoSupport implements CommonService {
	BaseJdglUtil baseJdglUtil = new BaseJdglUtil();
	CommonUtil commonUtil = new CommonUtil();

	/**
	 * 
	 */
	public CommonServiceImpl() {
		// TODO 自动生成的构造函数存根
	}

	/**
	 * 新增数据集
	 * 
	 * @param data
	 *            数据集
	 * @param isadmin
	 *            是否管理员
	 * @param entity
	 *            业务实体
	 * @param middleEntity
	 *            中间实体
	 * @param flag
	 *            操作类型1、新增2、修改3、计划取消4、计划完成
	 */
	@Bizlet
	public void addProjectInfoMation(DataObject data, boolean isadmin,
			String entity, String middleEntity, String flag) {
		if (data == null)
			return;
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		if ("1".equals(flag)) {
			String orderno = data.getString("orderno");
			String base = StringUtil.isEmpty(data.getString("base")) ? data
					.getString("jd") : data.getString("base");
			String crew = StringUtil.isEmpty(data.getString("crew")) ? data
					.getString("jz") : data.getString("crew");
			if (!StringHelper.isEmpty(orderno)) {
				data.set("orderno",
						this.setOrderNo(orderno, entity, base, crew));
			}
		}

		if (isadmin) {
			/******************************* 系统管理员 ***************************************/
			DataObject temp = DataObjectUtil.convertDataObject(data, entity,
					false);
			temp.setString("id", uuid);
			DatabaseExt.insertEntityCascade("default", temp);
		} else {
			/******************************* 非系统管理员 **************************************/
			DataObject temp = DataObjectUtil.convertDataObject(data,
					middleEntity, false);
			temp.setString("flag", flag);
			temp.setString("id", uuid);
			temp.setString("relid",
					UUID.randomUUID().toString().replaceAll("-", ""));
			DatabaseExt.insertEntityCascade("default", temp);
		}
	}

	/**
	 * 新增修改数据时的数据到中间表
	 * 
	 * @param data
	 *            数据集
	 * @param middleEntity
	 *            中间实体
	 */
	@Bizlet
	public void saveEditInfoMation(DataObject data, String middleEntity,
			String realEntity) {
		if (data == null)
			return;
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		CommonUtil commonUtil = new CommonUtil();
		DataObject temp = DataObjectUtil.convertDataObject(data, middleEntity,
				false);
		boolean flag = commonUtil.checkEntityPropertie(middleEntity, "id");
		if (flag) {
			temp.setString("id", uuid);
		} else {
			temp.setString("uuid", uuid);
		}
		DataObject dataEntity = DataObjectUtil.createDataObject(realEntity);
		boolean flag1 = commonUtil.checkEntityPropertie(middleEntity, "id");
		if (flag1) {
			dataEntity.setString("id", temp.getString("relid"));
		} else {
			dataEntity.setString("uuid", temp.getString("relid"));
		}
		dataEntity.setString("processStatus", "1");
		DatabaseUtil.updateEntity("default", dataEntity);
		DatabaseExt.insertEntityCascade("default", temp);
	}

	/**
	 * 超级管理员之直接修改数据
	 * 
	 * @param data
	 *            数据集
	 * @param middleEntity
	 *            真实实体
	 */
	@Bizlet
	public void doEditInfoMation(DataObject preData, DataObject nextData,
			String trueEntity) {
		if (preData == null || nextData == null || trueEntity == null)
			return;
		List<HashMap<String, String>> columnList = baseJdglUtil
				.getPropertyByEntityName(trueEntity, "");
		String fileStr = "id";
		if (commonUtil.checkEntityPropertie(trueEntity, "uuid")) {
			fileStr = "uuid";
		}
		DataObject[] dataParams = this.getInforMationByFieldName(fileStr,
				preData.getString(fileStr), trueEntity);
		String[] strArr = { "id", "uuid", "base", "jd", "jz", "crew", "reason",
				"orderno", "xgry", "flag", "processInstId", "mapnoid",
				"programid", "toolid", "textprogramid", "type" };
		if (columnList != null && columnList.size() > 0 && dataParams != null ) {
			DataObject data = dataParams[0];
			for (int i = 0; i < columnList.size(); i++) {
				Map<String, String> columnMap = columnList.get(i);
				String columnName = columnMap.get("FieldName");
				if (ifcontains(strArr, columnName))
					continue;

				String columnValue = nextData.getString(columnName);
				if (!StringHelper.isEmpty(columnValue)) {
					data.setString(columnName, columnValue);
				}
			}
			DataObject temp = DataObjectUtil.convertDataObject(data,
					trueEntity, false);
			DatabaseExt.updateEntityCascade("default", temp);
		}
	}

	/**
	 * 新增数据集（多条）
	 * 
	 * @param data
	 *            数据集
	 * @param isadmin
	 *            是否管理员
	 * @param entity
	 *            业务实体
	 * @param middleEntity
	 *            中间实体
	 * @param flag
	 *            操作类型
	 */
	@Bizlet
	public void addProjectInfoMation(DataObject[] data, boolean isadmin,
			String entity, String middleEntity, String flag) {
		if (data == null || StringHelper.isEmpty(flag))
			return;
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		if (isadmin) {
			/******************************* 系统管理员 ***************************************/
			for (int i = 0; i < data.length; i++) {
				DataObject dataObject = data[i];
				if ("1".equals(flag)) {
					String orderno = dataObject.getString("orderno");
					if (!StringHelper.isEmpty(orderno)) {
						BigDecimal reorderno = new BigDecimal(orderno);
						dataObject.set("orderno", reorderno);
					}
				}
				DataObject temp = DataObjectUtil.convertDataObject(dataObject,
						entity, false);
				temp.setString("id", uuid);
				DatabaseExt.insertEntityCascade("default", temp);
			}
		} else {
			/******************************* 非系统管理员 **************************************/
			for (int i = 0; i < data.length; i++) {
				DataObject dataObject = data[i];
				if ("1".equals(flag)) {
					String orderno = dataObject.getString("orderno");
					if (!StringHelper.isEmpty(orderno)) {
						Float ordernoL = Float.parseFloat(orderno);
						dataObject.setFloat("orderno", ordernoL);
					}
				}
				DataObject temp = DataObjectUtil.convertDataObject(dataObject,
						middleEntity, false);
				temp.setString("flag", flag);
				temp.setString("id", uuid);
				temp.setString("relid", UUID.randomUUID().toString()
						.replaceAll("-", ""));
				DatabaseExt.insertEntityCascade("default", temp);
			}
		}
	}

	/**
	 * 保存删除的数据到中间表
	 * 
	 * @param data
	 *            被删除的数据
	 * @param entity
	 *            实体类型
	 * @param processInstId
	 *            流程id
	 */
	@Bizlet
	public void addDadaOfDelete(DataObject[] data, String entity,
			String processInstId, String modelFlag) {
		if (data == null)
			return;
		BaseJdglUtil baseJdglUtil = new BaseJdglUtil();
		String busEntity = baseJdglUtil.getReadEntityByFlag(modelFlag);
		DataObject dataEntity = DataObjectUtil.createDataObject(busEntity);
		CommonUtil commonUtil = new CommonUtil();
		String filedStr = "uuid";
		if (commonUtil.checkEntityPropertie(busEntity, "id")) {
			filedStr = "id";
		}

		for (int i = 0; i < data.length; i++) {
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			DataObject dataObject = data[i];
			String orderno = dataObject.getString("orderno");
			if (!StringHelper.isEmpty(orderno)) {
				BigDecimal reorderno = new BigDecimal(orderno);
				dataObject.set("orderno", reorderno);
			}
			DataObject temp = DataObjectUtil.convertDataObject(dataObject,
					entity, false);
			temp.setString("flag", "5");
			temp.setString("id", uuid);
			temp.setString("processInstId", processInstId);
			temp.setString("processStatus", "1");
			temp.setString("relid", dataObject.getString("uuid"));
			DatabaseExt.insertEntityCascade("default", temp);

			dataEntity.setString(filedStr, dataObject.getString("uuid"));

			dataEntity.setString("processStatus", "1");
			DatabaseUtil.updateEntity("default", dataEntity);
		}
	}

	/**
	 * 新增业务数据及履历
	 * 
	 * @param data
	 *            数据集
	 * @param entity
	 *            实体名
	 * @param ident
	 *            模块标识(中文)
	 */
	public void addProjectInfoMationAndRecord(DataObject data, String entity,
			String ident) {
		if (data == null || StringHelper.isEmpty(entity)
				|| StringHelper.isEmpty(ident))
			return;
		/***************************** 开始插入业务表 ********************************/
		String orderno = data.getString("orderno");
		if (!StringHelper.isEmpty(orderno)) {
			BigDecimal reorderno = new BigDecimal(orderno);
			data.set("orderno", reorderno);
		}
		String relid = data.getString("relid");
		String base = data.getString("base");
		String crew = data.getString("crew");
		data.setString("processStatus", "0");
		DataObject datatemp = DataObjectUtil.convertDataObject(data, entity,
				false);
		datatemp.setString("id", relid);
		DatabaseExt.insertEntityCascade("default", datatemp);
		/***************************** 开始插入履历 *********************************/
		StringBuilder sb = new StringBuilder();
		String protype = data.getString("protype");
		if ("GFFD".equals(data.getString("protype"))) {
			protype = "规范法定项目";
		} else if ("GFFFD".equals(data.getString("protype"))) {
			protype = "规范非法定项目";
		}
		sb.append("新增").append(ident).append(":").append(protype).append("_1条");
		this.addRecordInfoMation(data.getString("creator"), "新增",
				sb.toString(), relid, data.getString("id"), ident,
				data.getString("reason"), base, crew);

		/***************************** 同步十年计划 *********************************/
		if ("规范法定大纲_大修".equals(ident)) {
			this.synchronous(
					"1",
					datatemp,
					"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getNDJHDXdata",
					"com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity",
					"T_DGGL_SNJH_HD_DXTM",
					"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity");
		} else if ("规范法定大纲_日常".equals(ident)) {
			this.synchronous(
					"2",
					datatemp,
					"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getNDJHRCdata",
					"com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity",
					"T_DGGL_SNJH_HD_RCTM",
					"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity");
		} else if ("规范非法定总纲_大修".equals(ident)) {
			this.synchronous(
					"3",
					datatemp,
					"com.cgn.itmp.basecommon.jdglSql.getNDJHDXdata",
					"com.cgn.itmp.outlineandplan.outline.NonStaturoryOverhaul.OverhaulEntity",
					"T_DGGL_SNJH_HD_DXTM",
					"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity");
		} else if ("规范非法定总纲_日常".equals(ident)) {
			this.synchronous(
					"4",
					datatemp,
					"com.cgn.itmp.basecommon.jdglSql.getNDJHRCdata",
					"com.cgn.itmp.outlineandplan.outline.NonStaturoryDaily.DailyEntity",
					"T_DGGL_SNJH_HD_RCTM",
					"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity");
		} else if ("十年计划(核岛)_大修".equals(ident)) {
			ExecutiveEntriesSNJHDXServiceImpl entriesSNJHDXServiceImpl = new ExecutiveEntriesSNJHDXServiceImpl();
			entriesSNJHDXServiceImpl.synchronous(datatemp);
		} else if ("十年计划(核岛)_日常".equals(ident)) {
			ExecutiveEntriesSNJHRCServiceImpl entriesSNJHRCServiceImpl = new ExecutiveEntriesSNJHRCServiceImpl();
			entriesSNJHRCServiceImpl.synchronous(datatemp);
		} else if ("十年计划(常规岛及BOP)_大修".equals(ident)) {
			ExecutiveEntriesSNJHCGDDXServiceImpl entriesSNJHCGDDXServiceImpl = new ExecutiveEntriesSNJHCGDDXServiceImpl();
			entriesSNJHCGDDXServiceImpl.synchronous(datatemp);
		} else if ("十年计划(常规岛及BOP)_日常".equals(ident)) {
			ExecutiveEntriesSNJHCGDRCServiceImpl entriesSNJHCGDRCServiceImpl = new ExecutiveEntriesSNJHCGDRCServiceImpl();
			entriesSNJHCGDRCServiceImpl.synchronous(datatemp);
		}
	}

	/**
	 * 
	 * @param modelFlag
	 *            类型
	 * @param data
	 *            数据
	 * @param adress
	 *            地址
	 * @param entityName
	 *            业务表名
	 * @param tablename
	 *            表名
	 * @param entity
	 *            实体
	 * @return
	 */
	@Bizlet
	public Map<String, Object> synchronous(String modelFlag, DataObject data,
			String adress, String entityName, String tablename, String entity) {
		ExecutiveEntriesServiceImpl executiveEntriesServiceImpl = new ExecutiveEntriesServiceImpl();
		if (data == null)
			return null;
		List<Map<String, Object>> valueList = new ArrayList<Map<String, Object>>();
		Map<String, Object> recordMap = new HashMap<String, Object>();
		Map<String, Object> valueMap = new HashMap<String, Object>();
		String detailed = data.getString("detailed");
		String crew = data.getString("crew");
		String base = data.getString("base");
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("tablename", tablename);
		parmsMap.put("detailed", detailed);
		parmsMap.put("crew", crew);
		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", adress, parmsMap);
		String uuid = "";
		if ("1".equals(modelFlag) || "3".equals(modelFlag)) {
			if (typeDataObject != null && typeDataObject.length > 0) {
				uuid = ((DataObject) typeDataObject[0]).getString("id");
				// DataObject[] datas =
				// this.getInforMationByFieldName("detailed", detailed, base,
				// crew, entityName);
				Object[] datas = (Object[]) DatabaseExt
						.queryByNamedSql(
								"default",
								"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getDGDXdata",
								parmsMap);
				if (datas != null && datas.length > 0) {
					for (int i = 0; i < datas.length; i++) {
						DataObject dataObject = (DataObject) datas[i];
						for (int j = 1; j <= 60; j++) {
							String column = "C" + j;
							String cdata = ((DataObject) dataObject)
									.getString(column);
							if (!StringHelper.isEmpty(cdata)) {
								if (valueMap != null && valueList.size() > 0) {
									String columndata = StringHelper
											.isEmpty((String) valueMap
													.get(column)) ? cdata
											: (String) valueMap.get(column)
													+ "," + cdata;
									valueMap.put(column, columndata);
								} else {
									valueMap.put(column, cdata);
								}
							}
						}
						valueList.add(valueMap);
					}

				}
				Map<String, Object> stateMap = executiveEntriesServiceImpl
						.setStateAndUpdateData(valueMap, base);
				if (stateMap != null && stateMap.size() > 0) {
					DataObject dataEntity = DataObjectUtil
							.createDataObject(entity);
					for (int i = 1; i <= 60; i++) {
						dataEntity.setString("c" + i, null);
						Iterator<Map.Entry<String, Object>> it = stateMap
								.entrySet().iterator();
						while (it.hasNext()) {
							Map.Entry<String, Object> entry = it.next();
							String key = (String) entry.getKey();
							String value = (String) entry.getValue();
							if (("C" + i).equals(key)) {
								System.err.println("c" + i + ":" + value);
								dataEntity.setString("c" + i, value);
							}
						}
					}
					dataEntity.setString("id", uuid);
					DatabaseUtil.updateEntity("default", dataEntity);
					recordMap.put("success", true);
				}
			} else {
				recordMap.put("success", false);
			}
		} else if ("2".equals(modelFlag) || "4".equals(modelFlag)) {
			if (typeDataObject != null && typeDataObject.length > 0) {
				uuid = ((DataObject) typeDataObject[0]).getString("id");
				// DataObject[] datas =
				// this.getInforMationByFieldName("detailed", detailed, base,
				// crew, entityName);
				Object[] datas = (Object[]) DatabaseExt
						.queryByNamedSql(
								"default",
								"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getDGRCdata",
								parmsMap);
				if (datas != null && datas.length > 0) {
					for (int i = 0; i < datas.length; i++) {
						DataObject dataObject = (DataObject) datas[i];
						for (int j = 1991; j <= 2089; j++) {
							String column = "n" + j;
							String cdata = ((DataObject) dataObject)
									.getString(column);
							if (!StringHelper.isEmpty(cdata)) {
								if (valueMap != null && valueList.size() > 0) {
									String columndata = StringHelper
											.isEmpty((String) valueMap
													.get(column)) ? cdata
											: (String) valueMap.get(column)
													+ "," + cdata;
									valueMap.put(column, columndata);
								} else {
									valueMap.put(column, cdata);
								}
							}
						}
						valueList.add(valueMap);
					}

				}

				Map<String, Object> stateMap = executiveEntriesServiceImpl
						.setStateAndUpdateData(valueMap, base);
				if (stateMap != null && stateMap.size() > 0) {
					DataObject dataEntity = DataObjectUtil
							.createDataObject(entity);
					for (int i = 1991; i <= 2089; i++) {
						dataEntity.setString("n" + i, null);
						Iterator<Map.Entry<String, Object>> it = stateMap
								.entrySet().iterator();
						while (it.hasNext()) {
							Map.Entry<String, Object> entry = it.next();
							String key = (String) entry.getKey();
							String value = (String) entry.getValue();
							if (("n" + i).equals(key)) {
								dataEntity.setString("n" + i, value);
							}
						}
					}
					dataEntity.setString("id", uuid);
					DatabaseUtil.updateEntity("default", dataEntity);
					recordMap.put("success", true);
				}
			} else {
				recordMap.put("success", false);
			}
		}

		return recordMap;
	}

	@Bizlet
	public Map<String, Object> synchronous(DataObject data, String entity,
			String adress) {
		if (data == null)
			return null;
		ExecutiveEntriesServiceImpl executiveEntriesServiceImpl = new ExecutiveEntriesServiceImpl();
		List<Map<String, Object>> valueList = new ArrayList<Map<String, Object>>();
		Map<String, Object> recordMap = new HashMap<String, Object>();
		Map<String, Object> valueMap = new HashMap<String, Object>();
		String detailed = data.getString("detailed");
		if (StringHelper.isEmpty(detailed)) {
			detailed = data.getString("rwqd");
		}
		String crew = data.getString("crew");
		String base = data.getString("base");
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("detailed", detailed);
		parmsMap.put("crew", crew);
		String uuid = data.getString("uuid");
		if (StringHelper.isEmpty(uuid))
			uuid = data.getString("id");
		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", adress, parmsMap);

		if (typeDataObject != null && typeDataObject.length > 0) {
			for (int i = 0; i < typeDataObject.length; i++) {
				for (int j = 1; j <= 60; j++) {
					String column = "C" + j;
					String column1 = "c" + j;
					String cdata = ((DataObject) typeDataObject[i])
							.getString(column);
					if (StringHelper.isEmpty(cdata)) {
						cdata = ((DataObject) typeDataObject[i])
								.getString(column1);
					}
					if (!StringHelper.isEmpty(cdata)) {
						if (valueMap != null && valueList.size() > 0) {
							String columndata = StringHelper
									.isEmpty((String) valueMap.get(column)) ? cdata
									: (String) valueMap.get(column) + ","
											+ cdata;
							valueMap.put(column, columndata);
						} else {
							valueMap.put(column, cdata);
						}
					}
				}
				valueList.add(valueMap);
			}
			Map<String, Object> stateMap = executiveEntriesServiceImpl
					.setStateAndUpdateData(valueMap, base);
			if (stateMap != null && stateMap.size() > 0) {
				DataObject dataEntity = DataObjectUtil.createDataObject(entity);
				for (int i = 1; i <= 60; i++) {
					dataEntity.setString("c" + i, null);
					Iterator<Map.Entry<String, Object>> it = stateMap
							.entrySet().iterator();
					while (it.hasNext()) {
						Map.Entry<String, Object> entry = it.next();
						String key = (String) entry.getKey();
						String value = (String) entry.getValue();
						if (("C" + i).equals(key)) {
							dataEntity.setString("c" + i, value);
						}
					}
				}
				dataEntity.setString("id", uuid);
				DatabaseUtil.updateEntity("default", dataEntity);
				recordMap.put("success", true);
			}
		} else {
			recordMap.put("success", false);
		}
		return recordMap;
	}
	
	
	@Bizlet
	public Map<String, Object> zyrcsynchronous(DataObject data, String entity,
			String adress) {
		if (data == null)
			return null;
		ExecutiveEntriesServiceImpl executiveEntriesServiceImpl = new ExecutiveEntriesServiceImpl();
		List<Map<String, Object>> valueList = new ArrayList<Map<String, Object>>();
		Map<String, Object> recordMap = new HashMap<String, Object>();
		Map<String, Object> valueMap = new HashMap<String, Object>();
		String detailed = data.getString("detailed");
		if (StringHelper.isEmpty(detailed)) {
			detailed = data.getString("rwqd");
		}
		String crew = data.getString("crew");
		String base = data.getString("base");
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("detailed", detailed);
		parmsMap.put("crew", crew);
		String uuid = data.getString("uuid");
		if (StringHelper.isEmpty(uuid))
			uuid = data.getString("id");
		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", adress, parmsMap);

		if (typeDataObject != null && typeDataObject.length > 0) {
			for (int i = 0; i < typeDataObject.length; i++) {
				for (int j = 1991; j <= 2089; j++) {
					String column = "c" + j;
					String column1 = "c" + j;
					String cdata = ((DataObject) typeDataObject[i])
							.getString(column);
					if (StringHelper.isEmpty(cdata)) {
						cdata = ((DataObject) typeDataObject[i])
								.getString(column1);
					}
					if (!StringHelper.isEmpty(cdata)) {
						if (valueMap != null && valueList.size() > 0) {
							String columndata = StringHelper
									.isEmpty((String) valueMap.get(column)) ? cdata
									: (String) valueMap.get(column) + ","
											+ cdata;
							valueMap.put(column, columndata);
						} else {
							valueMap.put(column, cdata);
						}
					}
				}
				valueList.add(valueMap);
			}
			Map<String, Object> stateMap = executiveEntriesServiceImpl
					.setStateAndUpdateData(valueMap, base);
			if (stateMap != null && stateMap.size() > 0) {
				DataObject dataEntity = DataObjectUtil.createDataObject(entity);
				for (int i = 1991; i <= 2089; i++) {
					dataEntity.setString("n" + i, null);
					Iterator<Map.Entry<String, Object>> it = stateMap
							.entrySet().iterator();
					while (it.hasNext()) {
						Map.Entry<String, Object> entry = it.next();
						String key = (String) entry.getKey();
						String value = (String) entry.getValue();
						if (("n" + i).equals(key.replace("c", "n"))) {
							dataEntity.setString("n" + i, value);
						}
					}
				}
				dataEntity.setString("id", uuid);
				DatabaseUtil.updateEntity("default", dataEntity);
				recordMap.put("success", true);
			}
		} else {
			recordMap.put("success", false);
		}
		return recordMap;
	}

	/**
	 * 升版插入履历信息
	 * 
	 * @param data
	 *            升版数据集
	 * @param modelFlag
	 *            所属模块标识
	 */
	public void addEditionRecord(DataObject data, String modelFlag) {
		if (data == null || StringHelper.isEmpty(modelFlag))
			return;
		/***************************** 开始插入履历 *********************************/
		StringBuilder sb = new StringBuilder();
		String ident = this.dealModelFlag(modelFlag);
		String nownumber = data.getString("nownumber");
		String base = data.getString("jdid");
		String crew = data.getString("jzid");
		if (StringHelper.isEmpty(nownumber)){
			sb.append(ident).append("升为").append(nownumber).append("版");
		}else{
			String number = data.getString("number");
			sb.append(ident).append("由").append(nownumber).append("版升为").append(number).append("版");
		}
		this.addRecordInfoMation(data.getString("creator"), "升版",
				sb.toString(), data.getString("id"), data.getString("id"),
				ident, data.getString("reason"), base, crew);
	}

	/**
	 * 跟新升版业务表的数据状态
	 * 
	 * @param data
	 */
	@Bizlet
	public void updateEdition(DataObject data, boolean isadmin) {
		if (data == null) {
			return;
		}
		if (!isadmin) {
			data.setString("processStatus", "2");// 更改升版的流程状态
			DatabaseExt.updateEntityCascade("default", data);
		}
		String modelFlag = data.getString("modelFlag");
		String entity = "";
		if ("1".equals(modelFlag))
			entity = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity";
		if ("2".equals(modelFlag))
			entity = "com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity";
		if ("3".equals(modelFlag))
			entity = "com.cgn.itmp.outlineandplan.outline.NonStaturoryOverhaul.OverhaulEntity";
		if ("4".equals(modelFlag))
			entity = "com.cgn.itmp.outlineandplan.outline.NonStaturoryDaily.DailyEntity";
		if ("5".equals(modelFlag))
			entity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity";
		if ("6".equals(modelFlag))
			entity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity";
		if ("7".equals(modelFlag))
			entity = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity";
		if ("8".equals(modelFlag))
			entity = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity";
		String base = data.getString("jdid");
		String crew = data.getString("jzid");
		String edition = data.getString("number");
		String tablename = DatabaseExt.getTableName("default", entity);
		String adress = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.updateEdition";
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("tablename", tablename);
		parmsMap.put("base", base);
		parmsMap.put("crew", crew);
		parmsMap.put("edition", edition);
		DatabaseExt.queryByNamedSql("default", adress, parmsMap);
		if (!isadmin) {
			addEditionRecord(data, modelFlag);// 插入升版履历
		}
	}

	/**
	 * 数据集更新业务数据及插入履历
	 * 
	 * @param data
	 *            中间表数据集
	 * @param entity
	 *            业务实体
	 * @param middleEntity
	 *            中间表实体
	 * @param ident
	 *            模块类型
	 */
	@Bizlet
	public void updateDataObjectInfoMation(DataObject data, String entity,
			String middleEntity, String ident) {
		if (data == null)
			return;
		BaseJdglUtil baseJdglUtil = new BaseJdglUtil();
		String relid = data.getString("relid");
		String editid = data.getString("id");
		String base = data.getString("base");
		String crew = data.getString("crew");
		DataObject[] dataParams = this.getInforMationByFieldName("id", relid,
				entity);
		/******************************* 获取履历相关字段信息 ********************************/
		StringBuilder sb = new StringBuilder();
		sb.append("修改").append(ident).append(":");
		String creator = "";
		String reason = data.getString("xgyy");
		String[] strArr = { "uuid", "id", "base", "crew", "relid", "reason",
				"orderno", "xgyy", "xgry", "jhry", "csry", "datetime",
				"editid", "flag", "processInstId", "mapnoid", "programid",
				"toolid", "textprogramid" };
		List<HashMap<String, String>> columnList = baseJdglUtil
				.getPropertyByEntityName(middleEntity, "");
		if (columnList != null && columnList.size() > 0 && dataParams != null) {
			for (int i = 0; i < columnList.size(); i++) {
				Map<String, String> columnMap = columnList.get(i);
				String columnName = columnMap.get("FieldName");
				String columnValue = data.getString(columnName);
				if ("creator".equals(columnName)) {
					creator = columnValue;
					data.setString(columnName,
							dataParams[0].getString(columnName));
					continue;
				}
				if (ifcontains(strArr, columnName))
					continue;
				if (!StringHelper.isEmpty(columnValue)) {
					String showName = columnMap.get("ShowName");
					String oldcolumnValue = dataParams[0].getString(columnName);
					if ("inspectplan".equals(columnName)) {
						if ("y".equals(columnValue)) {
							columnValue = "有";
						}
						if ("w".equals(columnValue)) {
							columnValue = "无";
						}
						if ("y".equals(oldcolumnValue)) {
							oldcolumnValue = "有";
						}
						if ("w".equals(oldcolumnValue)) {
							oldcolumnValue = "无";
						}
					}
					sb.append(showName).append(":")
							.append(nullToString(oldcolumnValue)).append("改为")
							.append(columnValue);
					if (i < columnList.size() - 1)
						sb.append(",");
				} else {
					String oldcolumnValue = dataParams[0].getString(columnName) == null ? ""
							: dataParams[0].getString(columnName);
					if (!StringHelper.isEmpty(oldcolumnValue))
						data.setString(columnName, oldcolumnValue);
				}
			}
			/***************************** 开始插入履历 *********************************/
			this.addRecordInfoMation(creator, "修改", sb.toString(), relid,
					editid, ident, reason, base, crew);
		}
		/*********************************** 更新数据 **************************************/
		DataObject dataTemp = DataObjectUtil.convertDataObject(data, entity,
				false);
		dataTemp.setString("id", relid);
		dataTemp.setString("processStatus", "0");
		DatabaseUtil.updateEntity("default", dataTemp);
		/*********************************** 回写状态 **************************************/
		String processInstId = data.getString("processInstId");
		this.updateProcessStatus(middleEntity, processInstId, "2");

		/***************************** 同步十年计划 *********************************/
		String detailed = data.getString("detailed");
		if (!StringHelper.isEmpty(detailed)) {
			if ("规范法定大纲_大修".equals(ident)) {
				this.synchronous(
						"1",
						data,
						"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getNDJHDXdata",
						"com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity",
						"T_DGGL_SNJH_HD_DXTM",
						"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity");
			} else if ("规范法定大纲_日常".equals(ident)) {
				this.synchronous(
						"2",
						data,
						"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getNDJHRCdata",
						"com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity",
						"T_DGGL_SNJH_HD_RCTM",
						"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity");
			} else if ("规范非法定总纲_大修".equals(ident)) {
				this.synchronous(
						"3",
						data,
						"com.cgn.itmp.basecommon.jdglSql.getNDJHDXdata",
						"com.cgn.itmp.outlineandplan.outline.NonStaturoryOverhaul.OverhaulEntity",
						"T_DGGL_SNJH_HD_DXTM",
						"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity");
			} else if ("规范非法定总纲_日常".equals(ident)) {
				this.synchronous(
						"4",
						data,
						"com.cgn.itmp.basecommon.jdglSql.getNDJHRCdata",
						"com.cgn.itmp.outlineandplan.outline.NonStaturoryDaily.DailyEntity",
						"T_DGGL_SNJH_HD_RCTM",
						"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity");
			} else if ("十年计划(核岛)_大修".equals(ident)) {
				ExecutiveEntriesSNJHDXServiceImpl entriesSNJHDXServiceImpl = new ExecutiveEntriesSNJHDXServiceImpl();
				entriesSNJHDXServiceImpl.synchronous(data);
			} else if ("十年计划(核岛)_日常".equals(ident)) {
				ExecutiveEntriesSNJHRCServiceImpl entriesSNJHRCServiceImpl = new ExecutiveEntriesSNJHRCServiceImpl();
				entriesSNJHRCServiceImpl.synchronous(data);
			}
		} else {
			detailed = dataParams[0].getString("detailed");
			if (!StringHelper.isEmpty(detailed)) {
				if ("规范法定大纲_大修".equals(ident)) {
					this.synchronous(
							"1",
							dataParams[0],
							"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getNDJHDXdata",
							"com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity",
							"T_DGGL_SNJH_HD_DXTM",
							"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity");
				} else if ("规范法定大纲_日常".equals(ident)) {
					this.synchronous(
							"2",
							dataParams[0],
							"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getNDJHRCdata",
							"com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity",
							"T_DGGL_SNJH_HD_RCTM",
							"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity");
				} else if ("规范非法定总纲_大修".equals(ident)) {
					this.synchronous(
							"3",
							dataParams[0],
							"com.cgn.itmp.basecommon.jdglSql.getNDJHDXdata",
							"com.cgn.itmp.outlineandplan.outline.NonStaturoryOverhaul.OverhaulEntity",
							"T_DGGL_SNJH_HD_DXTM",
							"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity");
				} else if ("规范非法定总纲_日常".equals(ident)) {
					this.synchronous(
							"4",
							dataParams[0],
							"com.cgn.itmp.basecommon.jdglSql.getNDJHRCdata",
							"com.cgn.itmp.outlineandplan.outline.NonStaturoryDaily.DailyEntity",
							"T_DGGL_SNJH_HD_RCTM",
							"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity");
				} else if ("十年计划(核岛)_大修".equals(ident)) {
					ExecutiveEntriesSNJHDXServiceImpl entriesSNJHDXServiceImpl = new ExecutiveEntriesSNJHDXServiceImpl();
					entriesSNJHDXServiceImpl.synchronous(dataParams[0]);
				} else if ("十年计划(核岛)_日常".equals(ident)) {
					ExecutiveEntriesSNJHRCServiceImpl entriesSNJHRCServiceImpl = new ExecutiveEntriesSNJHRCServiceImpl();
					entriesSNJHRCServiceImpl.synchronous(dataParams[0]);
				}
			}
		}
	}

	/**
	 * 数据集更新业务数据及插入履历
	 * 
	 * @param data
	 *            中间表数据集
	 * @param entity
	 *            业务实体
	 * @param middleEntity
	 *            中间表实体
	 * @param ident
	 *            模块类型
	 */
	@Bizlet
	public void updateDataObjectInfoMation2(DataObject data,
			String processInstId, String entity, String middleEntity,
			String ident) {
		if (data == null)
			return;
		String relid = data.getString("relid");
		String editid = data.getString("uuid");
		String base = data.getString("base") == null ? data.getString("jd")
				: data.getString("base");
		String crew = data.getString("crew") == null ? data.getString("jz")
				: data.getString("crew");
		String type = this.convertZyjcjhType(data.getString("type"));
		DataObject[] dataParams = this.getInforMationByFieldName("uuid", relid,
				entity);
		/******************************* 获取履历相关字段信息 ********************************/
		StringBuilder sb = new StringBuilder();
		sb.append("修改").append(ident).append("_" + type).append(":");
		String creator = "";
		String reason = data.getString("xgyy");
		String[] strArr = { "uuid", "id", "base", "crew", "relid", "reason",
				"orderno", "xgyy", "xgry", "jhry", "csry", "datetime",
				"editid", "flag", "processInstId", "mapnoid", "programid",
				"toolid", "textprogramid", "type" };
		List<HashMap<String, String>> columnList = baseJdglUtil
				.getPropertyByEntityName(middleEntity, "");
		if (columnList != null && columnList.size() > 0 && dataParams != null) {
			for (int i = 0; i < columnList.size(); i++) {
				Map<String, String> columnMap = columnList.get(i);
				String columnName = columnMap.get("FieldName");
				String columnValue = data.getString(columnName);
				if ("creator".equals(columnName)) {
					creator = columnValue;
					data.setString(columnName,
							dataParams[0].getString(columnName));
					continue;
				}
				if (ifcontains(strArr, columnName))
					continue;
				if (!StringHelper.isEmpty(columnValue)) {
					String showName = columnMap.get("ShowName");
					String oldcolumnValue = dataParams[0].getString(columnName);
					sb.append(showName).append(":")
							.append(nullToString(oldcolumnValue)).append("改为")
							.append(columnValue);
					if (i < columnList.size() - 1)
						sb.append(",");
				} else {
					String oldcolumnValue = dataParams[0].getString(columnName) == null ? ""
							: dataParams[0].getString(columnName);
					if (!StringHelper.isEmpty(oldcolumnValue))
						data.setString(columnName, oldcolumnValue);
				}
			}
			/***************************** 开始插入履历 *********************************/
			this.addRecordInfoMation(creator, "修改", sb.toString(), relid,
					editid, ident, reason, base, crew);
		}
		/*********************************** 更新数据 **************************************/
		DataObject dataTemp = DataObjectUtil.convertDataObject(data, entity,
				false);
		dataTemp.setString("uuid", relid);
		DatabaseUtil.updateEntity("default", dataTemp);
		/************************************ 更新流程状态 **************************************/
		this.updateProcessStatus(middleEntity, processInstId, "2");

		String detailed = data.getString("rwqd");
		if (StringHelper.isEmpty(detailed)) {
			detailed = dataParams[0].getString("rwqd");
		}
		if (!StringHelper.isEmpty(detailed)) {
			if ("专用检查计划(常规岛及BOP)_大修".equals(ident)) {
				DataObject[] dataParms = this
						.getInforMationByFieldName(
								"detailed",
								detailed,
								base,
								crew,
								"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity");
				if (dataParms != null && dataParms.length > 0) {
					this.synchronous(
							dataParms[0],
							"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity",
							"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getJCJHCGDdata");
				}
			} else if ("专用检查计划(常规岛及BOP)_日常".equals(ident)) {
				DataObject[] dataParms = this
						.getInforMationByFieldName("detailed", detailed, base,
								crew,
								"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity");
				if (dataParms != null && dataParms.length > 0) {
					this.zyrcsynchronous(
							dataParms[0],
							"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity",
							"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getJCJHRCCGDdata");
				}
			}
		}
	}

	/**
	 * 更改流程状态
	 * 
	 * @param middleEntity
	 * @param processInstId
	 * @param status
	 */
	public void updateProcessStatus(String middleEntity, String processInstId,
			String status) {
		String tableName = DatabaseExt.getTableName("default", middleEntity);
		if (!StringUtil.isEmpty(tableName)) {
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("TABLENAME", tableName);
			map.put("processInstId", processInstId);
			map.put("ProcessStatus", status);
			DatabaseExt.executeNamedSql("default",
					"com.cgn.itmp.basecommon.jdglSql.updateProcessStatus", map);
		}
	}

	/**
	 * 查询数据集
	 * 
	 * @param fieldName
	 *            查询字段
	 * @param fieldValue
	 *            查询字段值
	 * @param entity
	 *            实体
	 * @return 数据返回集
	 */
	@Bizlet
	public DataObject[] getInforMationByFieldName(String fieldName,
			String fieldValue, String entity) {
		if (StringHelper.isEmpty(fieldName) || StringHelper.isEmpty(fieldValue)
				|| StringHelper.isEmpty(entity))
			return null;
		DataObject dataEntity = DataObjectUtil.createDataObject(entity);
		dataEntity.setString(fieldName, fieldValue);
		dataEntity.setString("isdelete", "0");
		DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate(
				"default", dataEntity);
		return dataParms;
	}

	/**
	 * 查询数据集
	 * 
	 * @param fieldName
	 *            查询字段
	 * @param fieldValue
	 *            查询字段值
	 * @param entity
	 *            实体
	 * @param order
	 *            排序字段
	 * @return 数据返回集
	 */
	@Bizlet
	public DataObject[] getInforMationByFieldName(String fieldName,
			String fieldValue, String entity, String[] order) {
		if (StringHelper.isEmpty(fieldName) || StringHelper.isEmpty(fieldValue)
				|| StringHelper.isEmpty(entity))
			return null;
		DataObject dataEntity = DataObjectUtil.createDataObject(entity);
		dataEntity.setString(fieldName, fieldValue);
		dataEntity.setString("isdelete", "0");
		DataObject criteriaType = DataFactory.INSTANCE.create(
				"com.primeton.das.criteria", "criteriaType");
		criteriaType.set("_entity", entity);
		// 加入条件
		criteriaType.set("_expr[1]/" + fieldName, fieldValue);
		criteriaType.set("_expr[1]/_op", "=");
		if (order != null && order.length > 0) {
			for (int i = 0; i < order.length; i++) {
				String string = order[i];
				criteriaType.set("_orderby[" + (i + 1) + "]/_property", string);
				criteriaType.set("_orderby[" + (i + 1) + "]/_sort", "asc");
			}
		}
		DataObject[] dataParms = DatabaseUtil.queryEntitiesByCriteriaEntity(
				"default", criteriaType);
		return dataParms;
	}

	/**
	 * 查询数据集
	 * 
	 * @param fieldName
	 *            查询字段
	 * @param fieldValue
	 *            查询字段值
	 * @param entity
	 *            实体
	 * @param base
	 *            基地
	 * @param crew
	 *            机组
	 * @return 数据返回集
	 */
	@Bizlet
	public DataObject[] getInforMationByFieldName(String fieldName,
			String fieldValue, String base, String crew, String entity) {
		if (StringHelper.isEmpty(fieldName) || StringHelper.isEmpty(fieldValue)
				|| StringHelper.isEmpty(entity) || StringHelper.isEmpty(base)
				|| StringHelper.isEmpty(crew))
			return null;
		String entityKeys = "#";
		List<HashMap<String, String>> columnList = baseJdglUtil
				.getPropertyByEntityName(entity, "");
		if (columnList != null && columnList.size() > 0) {
			for (int i = 0; i < columnList.size(); i++) {
				Map<String, String> columnMap = columnList.get(i);
				entityKeys += columnMap.get("FieldName") + "#";
			}
		}
		DataObject dataEntity = DataObjectUtil.createDataObject(entity);
		dataEntity.setString(fieldName, fieldValue);
		dataEntity.setString("isdelete", "0");

		if (entityKeys.indexOf("#base#") >= 0) {
			dataEntity.setString("base", base);
		}
		if (entityKeys.indexOf("#jd#") >= 0) {
			dataEntity.setString("jd", base);
		}
		if (entityKeys.indexOf("#dzid#") >= 0) {
			dataEntity.setString("dzid", base);
		}

		if (entityKeys.indexOf("#crew#") >= 0) {
			dataEntity.setString("crew", crew);
		}
		if (entityKeys.indexOf("#jz#") >= 0) {
			dataEntity.setString("jz", crew);
		}
		if (entityKeys.indexOf("#jzid#") >= 0) {
			dataEntity.setString("jzid", crew);
		}
		DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate(
				"default", dataEntity);
		return dataParms;
	}

	/**
	 * 计划更新
	 * 
	 * @param data
	 *            数据集
	 * @param entityName
	 *            实体名
	 * @param type
	 *            完成取消标识
	 * @param ident
	 *            模块标识（例：规范法定大纲管理大修执行条目计划完成）
	 */
	public void addPlanInforMation(DataObject[] data, String entityName,
			String type, String ident) {
		if (data == null)
			return;
		BaseJdglUtil baseJdglUtil = new BaseJdglUtil();
		int length = data.length;
		String jdname = "", jzname = "", lc = "", style = "", msg = "", reason = "", creator = "", base = "", crew = "";
		long processInstId = 0;
		if (length > 0) {
			base = data[0].getString("base");
			crew = data[0].getString("crew");
			for (int i = 0; i < length; i++) {
				/************************ 更新轮次 *********************************/
				DataObject dataObject = data[i];
				String id = dataObject.getString("editid");
				String key = dataObject.getString("lc");
				String value = dataObject.getString(key);
				DataObject entity = DataObjectUtil.createDataObject(entityName);
				entity.set("id", id);
				DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate(
						"default", entity);
				if (dataParms.length == 1) {
					dataParms[0].setString(key, value);
					DatabaseUtil.updateEntity("default", dataParms[0]);
				}
				if (i == 0) {
					/************************ 履历字段赋值 *********************************/
					creator = dataObject.getString("creator");
					reason = dataObject.getString("xgyy");
					String baseid = dataObject.getString("base");
					String crewid = dataObject.getString("crew");
					jdname = baseJdglUtil.getJdnameByid(baseid);
					jzname = baseJdglUtil.getJznameByid(crewid);
					processInstId = dataObject.getLong("processInstId");
					lc = key;
				}
			}
			/************************ 履历字段赋值 *********************************/
			if ("".equals(type)) {// 计划完成
				msg = "计划完成-" + jdname + jzname + lc + "计划完成" + length + "条";
				style = "计划完成";
			} else if ("".equals(type)) {// 计划取消
				msg = "计划取消-" + jdname + jzname + lc + "计划取消" + length + "条";
				style = "计划取消";
			}
			/************************ 开始插入履历 *********************************/
			this.addRecordInfoMation(creator, style, msg,
					String.valueOf(processInstId), "", ident, reason, base,
					crew);
		}
	}

	/**
	 * 获取树状图列表
	 * 
	 * @param baseid
	 *            基地
	 * @param crewid
	 *            机组
	 * @param address
	 *            查询列表语句地址
	 * @return 列表集
	 */
	@Bizlet
	public DataObject[] getProtypeAndPartsData(String baseid, String crewid,
			String address) {
		// TODO 自动生成的方法存根
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		if (typeDataObject.length > 1) {
			DataObject[] dataparms = new DataObject[typeDataObject.length];
			for (int i = 0; i < typeDataObject.length; i++) {
				dataparms[i] = (DataObject) typeDataObject[i];
			}
			return dataparms;
		}
		return null;
	}

	/**
	 * 获取基地机组对应轮次
	 * 
	 * @param baseid
	 *            基地
	 * @param crewid
	 *            机组
	 * @param address
	 *            查询基地机组对应轮次语句地址
	 * @return 轮次起始与结束Map
	 */
	@Bizlet
	public Map<String, Object> getBaseCircle(String baseid, String crewid,
			String address) {
		Map<String, Object> valueMap = new HashMap<String, Object>();
		DataObject[] DataObject = this.getProtypeAndPartsData(baseid, crewid,
				address);
		if (DataObject != null && DataObject.length > 0) {
			String start = ((DataObject) DataObject[0]).getString("cstart");
			String end = ((DataObject) DataObject[0]).getString("cend");
			valueMap.put("start", start);
			valueMap.put("end", end);
			valueMap.put("sucess", true);
		} else {
			valueMap.put("sucess", false);
		}
		return valueMap;
	}

	/**
	 * 修改数据集
	 * 
	 * @param fieldName
	 *            查询字段
	 * @param fieldValue
	 *            查询字段值
	 * @param upFieldName
	 *            修改字段
	 * @param upFieldValue
	 *            修改字段值
	 * @param entity
	 *            实体
	 */
	@Bizlet
	public void updataInfoMationByFieldName(String fieldName,
			String fieldValue, String upFieldName, String upFieldValue,
			String entity) {
		if (StringHelper.isEmpty(fieldName) || StringHelper.isEmpty(fieldValue)
				|| StringHelper.isEmpty(upFieldName)
				|| StringHelper.isEmpty(upFieldValue)
				|| StringHelper.isEmpty(entity))
			return;
		DataObject dataEntity = DataObjectUtil.createDataObject(entity);
		String[] fieldValueArr = fieldValue.split(",");
		for (int i = 0; i < fieldValueArr.length; i++) {
			dataEntity.setString(fieldName, fieldValueArr[i]);
			DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate(
					"default", dataEntity);
			if (dataParms.length == 1) {
//				DataObject dataParm = dataParms[0];
				DataObject dataParm = DataObjectUtil.createDataObject(entity);
				dataParm.setString(upFieldName, upFieldValue);
				dataParm.setString("id", dataParms[0].getString("id"));
				DatabaseUtil.updateEntity("default", dataParm);
			}
		}
	}

	/**
	 * 新增履历信息表数据
	 * 
	 * @param creator
	 *            发起人
	 * @param type
	 *            操作方式
	 * @param content
	 *            操作日志
	 * @param planid
	 *            操作所属业务表id
	 * @param editid
	 *            操作所属中间表id
	 * @param ident
	 *            操作模块类型
	 * @param reason
	 *            操作原因
	 */
	public void addRecordInfoMation(String creator, String type,
			String content, String planid, String editid, String ident,
			String reason, String base, String crew) {
		if (StringHelper.isEmpty(creator) || StringHelper.isEmpty(type)
				|| StringHelper.isEmpty(content)
				|| StringHelper.isEmpty(planid) || StringHelper.isEmpty(ident)
				|| StringHelper.isEmpty(base) || StringHelper.isEmpty(crew))
			return;
		DataObject temp = DataObjectUtil
				.createDataObject("com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Tdgglvitae");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());
		temp.setString("creator", creator);
		temp.setString("type", type);
		temp.setString("content", content);
		temp.setString("datetime", dataTime);
		temp.setString("planid", planid);
		if (!StringHelper.isEmpty(editid))
			temp.setString("editid", editid);
		temp.setString("ident", ident);
		temp.setString("reason", reason);
		temp.setString("base", base);
		temp.setString("crew", crew);
		DatabaseExt.insertEntityCascade("default", temp);
	}

	/**
	 * 判断数据是否包含某值
	 * 
	 * @param arr
	 *            数组
	 * @param targetValue
	 *            数值
	 * @return flag
	 */
	public boolean ifcontains(String[] arr, String targetValue) {
		return Arrays.asList(arr).contains(targetValue);
	}

	/**
	 * 处理模块标识字段
	 * 
	 * @param modelFlag
	 * @return
	 */
	public String dealModelFlag(String modelFlag) {
		if (StringHelper.isEmpty(modelFlag))
			return "";
		String ident = "";
		if ("1".equals(modelFlag))
			ident = "规范法定大纲_大修";
		if ("2".equals(modelFlag))
			ident = "规范法定大纲_日常";
		if ("3".equals(modelFlag))
			ident = "规范非法定总纲_大修";
		if ("4".equals(modelFlag))
			ident = "规范非法定总纲_日常";
		if ("5".equals(modelFlag))
			ident = "十年计划(核岛)_大修";
		if ("6".equals(modelFlag))
			ident = "十年计划(核岛)_日常";
		if ("7".equals(modelFlag))
			ident = "十年计划(常规岛及BOP)_大修";
		if ("8".equals(modelFlag))
			ident = "十年计划(常规岛及BOP)_日常";
		return ident;
	}

	/**
	 * 根据实体类型获取数据
	 * 
	 * @param entityType
	 *            实体类型
	 * @param fields
	 *            字段数组
	 * @param values
	 *            值数组
	 * @return
	 */
	public DataObject[] queryDataByEntity(String entityType, String[] fields,
			String[] values) {

		if (StringUtil.isEmpty(entityType) || fields == null || values == null
				|| fields.length != values.length) {
			return null;
		}
		DataObject entity = DataObjectUtil.createDataObject(entityType);
		for (int i = 0; i < fields.length; i++) {
			entity.setString(fields[i], values[i]);
		}
		DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",
				entity);
		return datas;
	}

	/**
	 * 年度计划导入
	 * 
	 * @param excelFile
	 *            文件
	 * @param jd
	 *            基地
	 * @param jz
	 *            机组
	 * @param lc
	 *            轮次
	 * @return
	 * @throws Exception
	 */
	public List<String> importNDDataInforMation(String excelFile,
			String processinstid, String entityName)  {
		if (StringHelper.isEmpty(excelFile)
				|| StringHelper.isEmpty(processinstid))
			return null;
		List<String> result = new ArrayList<String>();// 反馈结果
		int x = 0, y = 0;
		DataObject[] datas = this.getInforMationByFieldName("processinstid",
				processinstid, entityName);
		if (datas != null && datas.length > 0) {
			try {
				excelFile = java.net.URLDecoder.decode(excelFile, "UTF-8");
				XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(
						excelFile));
				XSSFSheet sheet = wb.getSheetAt(0);
				int totalRowNum = sheet.getLastRowNum();
				for (int i = 1; i <= totalRowNum; i++) {
					// 获得第i行对象
					Row row = sheet.getRow(i);
					// 清单
					Cell qdcell = row.getCell((short) 0);
					qdcell.setCellType(Cell.CELL_TYPE_STRING);
					String qdvalue = qdcell.getStringCellValue().toString();
					for (int j = 0; j < datas.length; j++) {
						DataObject dataObject = datas[j];
						if (!StringHelper.isEmpty(dataObject
								.getString("detailed"))) {
							if (dataObject.getString("detailed")
									.equals(qdvalue)) {
								// 工单号
								Cell gdcell = row.getCell((short) 1);
								gdcell.setCellType(Cell.CELL_TYPE_STRING);
								String gdvalue = gdcell.getStringCellValue()
										.toString();

								// SAP功能位置
								Cell sapcell = row.getCell((short) 2);
								sapcell.setCellType(Cell.CELL_TYPE_STRING);
								String sapvalue = sapcell.getStringCellValue()
										.toString();

								dataObject.setString("gdh", gdvalue);
								dataObject.setString("sapgnwz", sapvalue);

								DatabaseUtil
										.updateEntity("default", dataObject);
//								System.out.println("<<<<<<<<<<<<成功导入第" + (++x)
//										+ "条数据");
							}
						} else if (!StringHelper.isEmpty(dataObject
								.getString("rwqd"))) {
							if (dataObject.getString("rwqd").equals(qdvalue)) {
								// 工单号
								Cell gdcell = row.getCell((short) 1);
								gdcell.setCellType(Cell.CELL_TYPE_STRING);
								String gdvalue = gdcell.getStringCellValue()
										.toString();

								// SAP功能位置
								Cell sapcell = row.getCell((short) 2);
								sapcell.setCellType(Cell.CELL_TYPE_STRING);
								String sapvalue = sapcell.getStringCellValue()
										.toString();

								dataObject.setString("gdh", gdvalue);
								dataObject.setString("sapgnwz", sapvalue);

								DatabaseUtil
										.updateEntity("default", dataObject);
//								System.out.println("<<<<<<<<<<<<成功导入第" + (++x)
//										+ "条数据");
							}
						}
					}
				}
			} catch (RuntimeException e) {
			       throw e;
			   }catch (Exception e) {
			}
		}
		if(null != datas){
			result.add(0, String.valueOf(datas.length));
			result.add(1, String.valueOf(x));
			result.add(2, String.valueOf(datas.length - x));
		}
		
		return result;
	}

	/**
	 * 递归删除目录下的所有文件及子目录下所有文件
	 * 
	 * @param dir
	 *            将要删除的文件目录
	 * @return boolean Returns "true" if all deletions were successful. If a
	 *         deletion fails, the method stops attempting to delete and returns
	 *         "false".
	 */
	private static boolean deleteDir(File dir) {
		if (dir.isDirectory()) {
			String[] children = dir.list();
			// 递归删除目录中的子目录下
			for (int i = 0; i < children.length; i++) {
				boolean success = deleteDir(new File(dir, children[i]));
				if (!success) {
					return false;
				}
			}
		}
		// 目录此时为空，可以删除
		return dir.delete();
	}

	@SuppressWarnings("unused")
	public String outNDDataInforMation(String dirpath, String outName,
			String entityName, String processinstid, String ishyh, String base,
			String crew) throws Exception {
		if (StringHelper.isEmpty(outName) || StringHelper.isEmpty(entityName)
				|| StringHelper.isEmpty(processinstid))
			return null;
		String[] name = outName.split("#");
		List<String> fileList = new ArrayList<String>();
		List<HashMap<String, String>> columnList = baseJdglUtil
				.getPropertyByEntityName(entityName, "");
		// 创建文件夹
		String rootDirectory = ApplicationContext.getInstance()
				.getWarRealPath() + "tempFile" + File.separator + dirpath;
		File file1 = new File(rootDirectory);
		if (deleteDir(file1)) {
			file1.mkdir();

		} else {
			file1.mkdir();
		}
		String[] orderHd = new String[] { "ndorderno", "orderno" };
		String[] orderCgd = new String[] { "ndorderno", "orderno" };
		for (int i = 0; i < name.length; i++) {
			String outname = name[i];
			String outname1 = "", outname2 = "";
			String[] strArr = { "workorder","mintenanceplan","mintenanceproject","detailed", "gdh", "sapgnwz",
					"inspectionscope", "seat" };
			String[] strArr1 = { "parts", "referencefigureno", "itemno",
					"inspectionscope", "mapno", "medium", "operatingpressure",
					"designpressure", "testpressure", "site", "testprocedure",
					"detailed", "gdh", "sapgnwz", "remark" };
			String[] strArr2 = { "parts", "referencefigureno", "itemno",
					"seat", "inspectionscope", "approachmode", "method",
					"program", "tool", "detailed", "gdh", "sapgnwz", "remark" };
			String[] strArr3 = { "parts", "itemno", "prosource", "equipment",
					"seat", "mapno", "inspectionscope", "approachmode",
					"method", "executionunit", "detailed", "gdh", "sapgnwz",
					"remark" };
			// String[] strArr4 =
			// {"rwqd","gdh","sapgnwz","checkprojectname","gnwz","xt","gxh","zysb","cz","gczj","wj","mybh","jk","ck","lct","jcbw","fac","chbw","chsl","utbw","utsl","bz"};
//			String[] strArr5 = { "rwqd", "gnwz", "gdh", "checkprojectname",
//					"sapgnwz" };
			String[] dirpaths = { "年度计划常规岛及BOP大修导出清单", "年度计划常规岛及BOP日常导出清单" };
			DataObject[] datas1 = null, datas2 = null, datas3 = null;
			// 创建子文件夹
			String saveRootDirectory = ApplicationContext.getInstance()
					.getWarRealPath()
					+ "tempFile"
					+ File.separator
					+ dirpath
					+ File.separator + outname;
			File file2 = new File(saveRootDirectory);
			if (!file2.exists() && !file2.isDirectory()) {
				file2.mkdir();
			}
			DataObject criteriaTypeone = DataFactory.INSTANCE.create(
					"com.primeton.das.criteria", "criteriaType");
			criteriaTypeone.set("_entity", entityName);
			// 加入条件
			criteriaTypeone.set("_expr[1]/processinstid", processinstid);
			criteriaTypeone.set("_expr[1]/_op", "=");
			criteriaTypeone.set("_expr[2]/lcv", "");
			criteriaTypeone.set("_expr[2]/_op", "notnull");
			criteriaTypeone.set("_expr[3]/lcv", "");
			criteriaTypeone.set("_expr[3]/_op", "<>");
			criteriaTypeone.set("_expr[4]/lcv", "PP,SP,EP,DP,PF,SF,EF,DF,P,S");
			criteriaTypeone.set("_expr[4]/_op", "in");
			criteriaTypeone.set("_orderby[1]/_property", "ndorderno");
			criteriaTypeone.set("_orderby[1]/_sort", "asc");
			criteriaTypeone.set("_orderby[2]/_property", "orderno");
			criteriaTypeone.set("_orderby[2]/_sort", "asc");
			if ("检查项目清单".equals(outname) && dirpath.indexOf("常规岛及BOP") == -1) {
				outname1 = "规范法定检查项目清单";
				outname2 = "规范非法定检查项目清单";
				// datas1 = this.getInforMationByFieldName("ident", outname1,
				// entityName,orderHd);
				// datas2 = this.getInforMationByFieldName("ident", outname2,
				// entityName,orderHd);
				// datas3 = this.getInforMationByFieldName("ident", outname,
				// entityName);
			} else if ("法定在役检查细化表".equals(outname)) {
				outname1 = "在役检查";
				outname2 = "水压试验";
				// datas1 = this.getInforMationByFieldName("ident", outname1,
				// entityName,orderHd);
				// datas2 = this.getInforMationByFieldName("ident", outname2,
				// entityName,orderHd);
			} else if ("非法定在役检查细化表".equals(outname)) {
				outname1 = "规范非法定在役检查细化表";
				// datas1 = this.getInforMationByFieldName("ident", outname1,
				// entityName,orderHd);
			}
			if (!StringHelper.isEmpty(outname1)) {
				criteriaTypeone.set("_expr[2]/ident", outname1);
				criteriaTypeone.set("_expr[2]/_op", "=");
				datas1 = DatabaseUtil.queryEntitiesByCriteriaEntity("default",
						criteriaTypeone);
			}
			if (!StringHelper.isEmpty(outname2)) {
				criteriaTypeone.set("_expr[2]/ident", outname2);
				criteriaTypeone.set("_expr[2]/_op", "=");
				datas2 = DatabaseUtil.queryEntitiesByCriteriaEntity("default",
						criteriaTypeone);
			}
			if ("图例".equals(outname)) {
				String tableName = DatabaseExt.getTableName("default",
						entityName);
				String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getNDJHMapNo";
				Map<String, Object> parmsMap = new HashMap<String, Object>();
				parmsMap.put("tablename", tableName);
				parmsMap.put("processinstid", processinstid);
				parmsMap.put("base", base);
				parmsMap.put("crew", crew);
				Object[] typeDataObject = (Object[]) DatabaseExt
						.queryByNamedSql("default", address, parmsMap);
				if (typeDataObject != null && typeDataObject.length > 0) {
					DataObject[] dataObject = new DataObject[typeDataObject.length];
					for (int j = 0; j < typeDataObject.length; j++) {
						dataObject[j] = (DataObject) typeDataObject[j];
						String filedid = dataObject[j].getString("fildid");
						DataObject dataEntity = DataObjectUtil
								.createDataObject("com.cgn.itmp.basecommon.Fileupload.Fileupload");
						dataEntity.setString("fileId", filedid);
						DataObject[] dataParms = DatabaseUtil
								.queryEntitiesByTemplate("default", dataEntity);
						if (dataParms != null && dataParms.length > 0) {
							for (int k = 0; k < dataParms.length; k++) {
								DataObject dataObject2 = dataParms[k];
								String filedpath = dataObject2
										.getString("filePath");
								String filedname = dataObject2
										.getString("fileNewName");
								FileOutputStream outputStream = new FileOutputStream(
										saveRootDirectory + File.separator
												+ filedname);
								FileInputStream inputStream = null;
								inputStream = new FileInputStream(filedpath
										+ File.separator + filedname);
								int len = 0;
								byte[] bytes = new byte[1024];
								while ((len = inputStream.read(bytes)) != -1) {
									outputStream.write(bytes, 0, len);
								}
								inputStream.close();
								outputStream.close();
							}
						}
					}
				}
				if (i < name.length)
					continue;
			} else if ("检查项目清单".equals(outname) || "法定在役检查细化表".equals(outname)
					|| "非法定在役检查细化表".equals(outname)) {
				// 第一步，创建一个HSSFWorkbook，对应一个Excel文件
				XSSFWorkbook wb = new XSSFWorkbook();
				if (datas1 != null && datas1.length > 0) {
					// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
					XSSFSheet sheet = wb.createSheet(outname1);
					if ("检查项目清单".equals(outname)) {
						for (int j = 0; j < strArr.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
					} else if ("法定在役检查细化表".equals(outname)) {
						for (int j = 0; j < strArr2.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
					} else if ("非法定在役检查细化表".equals(outname)) {
						for (int j = 0; j < strArr3.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
					}
					XSSFRow row = sheet.createRow(0);
					XSSFCell oneCell = row.createCell((short) 0);
					oneCell.setCellValue("序号");
					int firstrownum = 1, onerownum = 1, oneindex = 0;
					for (int j = 0; j < columnList.size(); j++) {
						Map<String, String> columnMap = columnList.get(j);
						String ShowName = columnMap.get("ShowName");
						String columnName = columnMap.get("FieldName");
						if ("检查项目清单".equals(outname)) {
							if (!ifcontains(strArr, columnName))
								continue;
							firstrownum = this.printArray(strArr, columnName);
						} else if ("法定在役检查细化表".equals(outname)) {
							if (!ifcontains(strArr2, columnName))
								continue;
							firstrownum = this.printArray(strArr2, columnName);
						} else if ("非法定在役检查细化表".equals(outname)) {
							if (!ifcontains(strArr3, columnName))
								continue;
							firstrownum = this.printArray(strArr3, columnName);
						}
						firstrownum = firstrownum + 1;
						XSSFCell nowCell = row.createCell((short) firstrownum);
						new ViewModelHelper();
						Field modeField = ViewModelHelper.getField(entityName,
								columnName);
						if (modeField != null) {
							columnName = modeField.getLabel();
						}
						if ("法定在役检查细化表".equals(outname)) {
							if ("检查项目描述".equals(ShowName)) {
								columnName = "检查内容/检查范围";
							}
							if ("功能位置".equals(ShowName)) {
								columnName = "被检部位";
							}
						} else if ("非法定在役检查细化表".equals(outname)) {
							if ("检查项目描述".equals(ShowName)) {
								columnName = "检查内容/检查部件/检查要求";
							}
							if ("设备".equals(ShowName)) {
								columnName = "设备名称";
							}
						}
						nowCell.setCellValue(columnName);
						firstrownum++;
						oneindex++;
					}
					XSSFCell nowCells = row.createCell((short) (oneindex + 1));
					DataObject dataObjects = datas1[0];
					String lc = dataObjects.getString("lc");
					if ((lc.toLowerCase().startsWith("n") || lc.toLowerCase()
							.startsWith("c")) && lc.length() > 2) {
						lc = lc.substring(1, lc.length());
					}
					nowCells.setCellValue(lc);
					// 第四步，创建单元格，并设置值表头 设置表头居中
					XSSFCellStyle style = wb.createCellStyle();
					style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
					// 声明列对象
					HSSFCell cell = null;
					int index = 1;
					for (int j = 0; j < datas1.length; j++) {
						DataObject dataObject = datas1[j];
						if (dataObject.getString("processinstid").equals(
								processinstid)) {
							XSSFRow rows = sheet.createRow(onerownum);
							XSSFCell noecells = rows.createCell((short) 0);
							noecells.setCellValue(index);
							index++;
							// 创建内容
							int count = 1, oneindexs = 0;
							for (int k = 0; k < columnList.size(); k++) {
								Map<String, String> columnMap = columnList
										.get(k);
								String columnName = columnMap.get("FieldName");
								if ("检查项目清单".equals(outname)) {
									if (!ifcontains(strArr, columnName))
										continue;
									count = this.printArray(strArr, columnName);
								} else if ("法定在役检查细化表".equals(outname)) {
									if (!ifcontains(strArr2, columnName))
										continue;
									count = this
											.printArray(strArr2, columnName);
								} else if ("非法定在役检查细化表".equals(outname)) {
									if (!ifcontains(strArr3, columnName))
										continue;
									count = this
											.printArray(strArr3, columnName);
								}
								count = count + 1;
								XSSFCell nowCell = rows
										.createCell((short) count);
								String columnValue = dataObject
										.getString(columnName);
								nowCell.setCellValue(columnValue);
								count++;
								oneindexs++;
							}
							XSSFCell cells = rows
									.createCell((short) (oneindexs + 1));
							String lcv = dataObject.getString("lcv");
							cells.setCellValue(lcv);
							onerownum++;
						}
					}
				}
				if (datas2 != null && datas2.length > 0) {
					// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
					XSSFSheet sheet = wb.createSheet(outname2);
					XSSFRow row = sheet.createRow(0);

					if ("检查项目清单".equals(outname)) {
						for (int j = 0; j < strArr.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
					} else if ("法定在役检查细化表".equals(outname)) {
						for (int j = 0; j < strArr1.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
					} else if ("非法定在役检查细化表".equals(outname)) {
						for (int j = 0; j < strArr3.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
					}
					int firstrownum = 1, onerownum = 1, oneindex = 0;
					XSSFCell oneCell = row.createCell((short) 0);
					oneCell.setCellValue("序号");
					for (int j = 0; j < columnList.size(); j++) {
						Map<String, String> columnMap = columnList.get(j);
						String ShowName = columnMap.get("ShowName");
						String columnName = columnMap.get("FieldName");
						if ("检查项目清单".equals(outname)) {
							if (!ifcontains(strArr, columnName))
								continue;
							firstrownum = this.printArray(strArr, columnName);
						} else if ("法定在役检查细化表".equals(outname)) {
							if (!ifcontains(strArr1, columnName))
								continue;
							firstrownum = this.printArray(strArr1, columnName);
						} else if ("非法定在役检查细化表".equals(outname)) {
							if (!ifcontains(strArr3, columnName))
								continue;
							firstrownum = this.printArray(strArr3, columnName);
						}
						firstrownum = firstrownum + 1;
						XSSFCell nowCell = row.createCell((short) firstrownum);
						new ViewModelHelper();
						Field modeField = ViewModelHelper.getField(entityName,
								columnName);
						if (modeField != null) {
							columnName = modeField.getLabel();
						}
						if ("法定在役检查细化表".equals(outname)) {
							if ("检查项目描述".equals(ShowName)) {
								columnName = "检查内容/检查范围";
							}
							if ("功能位置".equals(ShowName)) {
								columnName = "被检部位";
							}
						} else if ("非法定在役检查细化表".equals(outname)) {
							if ("检查项目描述".equals(ShowName)) {
								columnName = "检查内容/检查部件/检查要求";
							}
						}
						nowCell.setCellValue(columnName);
						firstrownum++;
						oneindex++;
					}
					XSSFCell nowCells = row.createCell((short) (oneindex + 1));
					DataObject dataObjects = datas2[0];
					String lc = dataObjects.getString("lc");
					if ((lc.toLowerCase().startsWith("n") || lc.toLowerCase()
							.startsWith("c")) && lc.length() > 2) {
						lc = lc.substring(1, lc.length());
					}
					nowCells.setCellValue(lc);

					// 第四步，创建单元格，并设置值表头 设置表头居中
					XSSFCellStyle style = wb.createCellStyle();
					style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
					// 声明列对象
					HSSFCell cell = null;
					int index = 1;
					for (int j = 0; j < datas2.length; j++) {
						DataObject dataObject = datas2[j];
						if (dataObject.getString("processinstid").equals(
								processinstid)) {
							XSSFRow rows = sheet.createRow(onerownum);
							XSSFCell noecells = rows.createCell((short) 0);
							noecells.setCellValue(index);
							index++;
							// 创建内容
							int count = 0, oneindexs = 0;
							for (int k = 0; k < columnList.size(); k++) {
								Map<String, String> columnMap = columnList
										.get(k);
								String columnName = columnMap.get("FieldName");
								if ("检查项目清单".equals(outname)) {
									if (!ifcontains(strArr, columnName))
										continue;
									count = this.printArray(strArr, columnName);
								} else if ("法定在役检查细化表".equals(outname)) {
									if (!ifcontains(strArr1, columnName))
										continue;
									count = this
											.printArray(strArr1, columnName);
								} else if ("非法定在役检查细化表".equals(outname)) {
									if (!ifcontains(strArr3, columnName))
										continue;
									count = this
											.printArray(strArr3, columnName);
								}
								count = count + 1;
								XSSFCell nowCell = rows
										.createCell((short) count);
								String columnValue = dataObject
										.getString(columnName);
								if ("site".equals(columnName)) {
									if (!StringHelper.isEmpty(columnValue)) {
										HashMap<String, String> map = new HashMap<String, String>();
										map.put("DICTID", columnValue);
										Object[] dicInfo = (Object[]) DatabaseExt
												.queryByNamedSql(
														"default",
														"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.fuzzyMatchingDictionary",
														map);
										if (dicInfo.length > 0) {
											columnValue = ((DataObject) dicInfo[0])
													.getString("DICTNAME");
										}
									}
								}
								nowCell.setCellValue(columnValue);
								count++;
								oneindexs++;
							}
							XSSFCell cells = rows
									.createCell((short) (oneindexs + 1));
							String lcv = dataObject.getString("lcv");
							cells.setCellValue(lcv);
							onerownum++;
						}
					}

				}
				if ((datas1 != null && datas1.length > 0)
						|| (datas2 != null && datas2.length > 0)) {
					String templateDir = saveRootDirectory + File.separator
							+ outname + System.currentTimeMillis() + ".xlsx";
					new File(templateDir).createNewFile();
					FileOutputStream fileOut = new FileOutputStream(templateDir);
					wb.write(fileOut);
					fileOut.close();
				}
				if (dirpath.indexOf("常规岛及BOP") != -1) {
					// 常规岛
					// DataObject[] qddata =
					// this.getInforMationByFieldName("ident", "检查项目清单",
					// entityName,orderCgd);//检查项目清单
					criteriaTypeone.set("_expr[2]/ident", "检查项目清单");
					criteriaTypeone.set("_expr[2]/_op", "=");
					criteriaTypeone.set("_expr[3]/lcv", "");
					criteriaTypeone.set("_expr[3]/_op", "notnull");
					criteriaTypeone.set("_expr[4]/lcv", "");
					criteriaTypeone.set("_expr[4]/_op", "<>");
					criteriaTypeone.set("_expr[5]/lcv", "PP,SP,EP,DP,PF,SF,EF,DF,P,S");
					criteriaTypeone.set("_expr[5]/_op", "in");
					DataObject[] qddata = DatabaseUtil
							.queryEntitiesByCriteriaEntity("default",
									criteriaTypeone);
					if (qddata != null && qddata.length > 0) {
						String[] fieldArr = { "workorder","mintenanceplan","mintenanceproject","rwqd", "gdh", "sapgnwz",
								"checkprojectname", "gnwz" };
						// 第一步，创建一个HSSFWorkbook，对应一个Excel文件
						XSSFWorkbook wb1 = new XSSFWorkbook();
						// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
						XSSFSheet sheet = wb1.createSheet(outname);
						for (int j = 0; j < fieldArr.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
						XSSFRow row = sheet.createRow(0);
						XSSFCell oneCell = row.createCell((short) 0);
						oneCell.setCellValue("序号");
						int firstrownum = 1, onerownum = 1, oneindex = 0;
						for (int j = 0; j < columnList.size(); j++) {
							Map<String, String> columnMap = columnList.get(j);
							String columnName = columnMap.get("FieldName");
							if (!ifcontains(fieldArr, columnName))
								continue;
							firstrownum = this.printArray(fieldArr, columnName);
							firstrownum = firstrownum + 1;
							XSSFCell nowCell = row
									.createCell((short) firstrownum);
							new ViewModelHelper();
							Field modeField = ViewModelHelper.getField(
									entityName, columnName);
							if (modeField != null) {
								columnName = modeField.getLabel();
							}
							nowCell.setCellValue(columnName);
							oneindex++;
						}
						XSSFCell nowCells = row
								.createCell((short) (oneindex + 1));
						DataObject dataObjects = qddata[0];
						String lc = dataObjects.getString("lc");
						if ((lc.toLowerCase().startsWith("n") || lc
								.toLowerCase().startsWith("c"))
								&& lc.length() > 2) {
							lc = lc.substring(1, lc.length());
						}
						nowCells.setCellValue(lc);
						// 第四步，创建单元格，并设置值表头 设置表头居中
						XSSFCellStyle style = wb1.createCellStyle();
						style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
						// 声明列对象
						HSSFCell cell = null;
						int index = 1;
						for (int j = 0; j < qddata.length; j++) {
							DataObject dataObject = qddata[j];
							if (dataObject.getString("processinstid").equals(
									processinstid)) {
								XSSFRow rows = sheet.createRow(onerownum);
								XSSFCell noecells = rows.createCell((short) 0);
								noecells.setCellValue(index);
								index++;
								// 创建内容
								int count = 1, oneindexs = 0;
								for (int k = 0; k < columnList.size(); k++) {
									Map<String, String> columnMap = columnList
											.get(k);
									String columnName = columnMap
											.get("FieldName");
									if (!ifcontains(fieldArr, columnName))
										continue;
									count = this.printArray(fieldArr,
											columnName);
									count = count + 1;
									XSSFCell nowCell = rows
											.createCell((short) count);
									String columnValue = dataObject
											.getString(columnName);
									nowCell.setCellValue(columnValue);
									count++;
									oneindexs++;
								}
								XSSFCell cells = rows
										.createCell((short) (oneindexs + 1));
								String lcv = dataObject.getString("lcv");
								cells.setCellValue(lcv);
								onerownum++;
							}
						}
						String templateDir = saveRootDirectory + File.separator
								+ outname + System.currentTimeMillis()
								+ ".xlsx";
						new File(templateDir).createNewFile();
						FileOutputStream fileOut = new FileOutputStream(
								templateDir);
						wb1.write(fileOut);
						fileOut.close();
					}
				}

			} else if ("专用检查计划".equals(outname)) {
				// 第一步，创建一个HSSFWorkbook，对应一个Excel文件
				XSSFWorkbook wb = new XSSFWorkbook();
				DataObject criteriaType = DataFactory.INSTANCE.create(
						"com.primeton.das.criteria", "criteriaType");
				criteriaType.set("_entity", entityName);
				// 加入条件
				criteriaType.set("_expr[1]/processinstid", processinstid);
				criteriaType.set("_expr[1]/_op", "=");
				criteriaType.set("_orderby[1]/_property", "ndorderno");
				criteriaType.set("_orderby[1]/_sort", "asc");
				criteriaType.set("_orderby[2]/_property", "orderno");
				criteriaType.set("_orderby[2]/_sort", "asc");

				if (dirpath.indexOf("常规岛及BOP") != -1) {
					// DataObject[] tydata =
					// this.getInforMationByFieldName("ident", "通用",
					// entityName,orderCgd);
					criteriaType.set("_expr[2]/ident", "通用");
					criteriaType.set("_expr[2]/_op", "=");
					criteriaType.set("_expr[3]/lcv", "");
					criteriaType.set("_expr[3]/_op", "notnull");
					criteriaType.set("_expr[4]/lcv", "");
					criteriaType.set("_expr[4]/_op", "<>");
					criteriaType.set("_expr[5]/lcv", "PP,SP,EP,DP,PF,SF,EF,DF,P,S");
					criteriaType.set("_expr[5]/_op", "in");
					
					DataObject[] tydata = DatabaseUtil
							.queryEntitiesByCriteriaEntity("default",
									criteriaType);
					if (tydata != null && tydata.length > 0) {
						String[] field = { "rwqd", "gdh", "sapgnwz", "gl",
								"gxh", "zysb", "cz", "gczj", "wj", "mybh",
								"jk", "ck", "lct", "jcbw", "bz" };
						// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
						XSSFSheet sheet = wb.createSheet("通用");
						for (int j = 0; j < field.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
						XSSFRow row = sheet.createRow(0);
						int firstrownum = 0, onerownum = 1, oneindex = 0;
						for (int j = 0; j < columnList.size(); j++) {
							Map<String, String> columnMap = columnList.get(j);
							String columnName = columnMap.get("FieldName");
							if (!ifcontains(field, columnName))
								continue;
							firstrownum = this.printArray(field, columnName);
							XSSFCell nowCell = row
									.createCell((short) firstrownum);
							new ViewModelHelper();
							Field modeField = ViewModelHelper.getField(
									entityName, columnName);
							if (modeField != null) {
								columnName = modeField.getLabel();
							}
							nowCell.setCellValue(columnName);
							firstrownum++;
							oneindex++;
						}
						XSSFCell nowCells = row.createCell((short) (oneindex));
						DataObject dataObjects = tydata[0];
						String lc = dataObjects.getString("lc");
						if ((lc.toLowerCase().startsWith("n") || lc
								.toLowerCase().startsWith("c"))
								&& lc.length() > 2) {
							lc = lc.substring(1, lc.length());
						}
						nowCells.setCellValue(lc);
						// 第四步，创建单元格，并设置值表头 设置表头居中
						XSSFCellStyle style = wb.createCellStyle();
						style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
						// 声明列对象
						HSSFCell cell = null;
						for (int j = 0; j < tydata.length; j++) {
							DataObject dataObject = tydata[j];
							if (dataObject.getString("processinstid").equals(
									processinstid)) {
								XSSFRow rows = sheet.createRow(onerownum);
								// 创建内容
								int count = 0, oneindexs = 0;
								for (int k = 0; k < columnList.size(); k++) {
									Map<String, String> columnMap = columnList
											.get(k);
									String columnName = columnMap
											.get("FieldName");
									if (!ifcontains(field, columnName))
										continue;
									count = this.printArray(field, columnName);
									XSSFCell nowCell = rows
											.createCell((short) count);
									String columnValue = dataObject
											.getString(columnName);
									nowCell.setCellValue(columnValue);
									count++;
									oneindexs++;
								}
								XSSFCell cells = rows
										.createCell((short) (oneindexs));
								String lcv = dataObject.getString("lcv");
								cells.setCellValue(lcv);
								onerownum++;
							}
						}
					}

					if ("y".equals(ishyh)) {
						// DataObject[] hyhdata =
						// this.getInforMationByFieldName("ident", "压力管道",
						// entityName,orderCgd);
						criteriaType.set("_expr[2]/ident", "压力管道");
						criteriaType.set("_expr[2]/_op", "=");
						criteriaType.set("_expr[3]/lcv", "");
						criteriaType.set("_expr[3]/_op", "notnull");
						criteriaType.set("_expr[4]/lcv", "");
						criteriaType.set("_expr[4]/_op", "<>");
						criteriaType.set("_expr[5]/lcv", "PP,SP,EP,DP,PF,SF,EF,DF,P,S");
						criteriaType.set("_expr[5]/_op", "in");
						DataObject[] hyhdata = DatabaseUtil
								.queryEntitiesByCriteriaEntity("default",
										criteriaType);
						if (hyhdata != null && hyhdata.length > 0) {
							String[] field = { "rwqd", "gdh", "sapgnwz", "gl",
									"gxh", "cz", "lct", "fac", "chbw", "chsl",
									"utbw", "utsl", "bz" };
							// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
							XSSFSheet sheet = wb.createSheet("压力管道");
							for (int j = 0; j < field.length; j++) {
								sheet.setColumnWidth(j, 100 * 50);
							}
							XSSFRow row = sheet.createRow(0);
							int firstrownum = 0, onerownum = 1, oneindex = 0;
							for (int j = 0; j < columnList.size(); j++) {
								Map<String, String> columnMap = columnList
										.get(j);
								String ShowName = columnMap.get("ShowName");
								String columnName = columnMap.get("FieldName");
								if (!ifcontains(field, columnName))
									continue;
								firstrownum = this
										.printArray(field, columnName);
								XSSFCell nowCell = row
										.createCell((short) firstrownum);
								new ViewModelHelper();
								Field modeField = ViewModelHelper.getField(
										entityName, columnName);
								if (modeField != null) {
									columnName = modeField.getLabel();
								}
								if ("流程图/等轴图号".equals(ShowName)) {
									columnName = "等轴图号";
								}
								nowCell.setCellValue(columnName);
								firstrownum++;
								oneindex++;
							}
							XSSFCell nowCells = row
									.createCell((short) (oneindex));
							DataObject dataObjects = hyhdata[0];
							String lc = dataObjects.getString("lc");
							if ((lc.toLowerCase().startsWith("n") || lc
									.toLowerCase().startsWith("c"))
									&& lc.length() > 2) {
								lc = lc.substring(1, lc.length());
							}
							nowCells.setCellValue(lc);
							// 第四步，创建单元格，并设置值表头 设置表头居中
							XSSFCellStyle style = wb.createCellStyle();
							style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
							// 声明列对象
							HSSFCell cell = null;
							for (int j = 0; j < hyhdata.length; j++) {
								DataObject dataObject = hyhdata[j];
								if (dataObject.getString("processinstid")
										.equals(processinstid)) {
									XSSFRow rows = sheet.createRow(onerownum);
									// 创建内容
									int count = 0, oneindexs = 0;
									for (int k = 0; k < columnList.size(); k++) {
										Map<String, String> columnMap = columnList
												.get(k);
										String columnName = columnMap
												.get("FieldName");
										if (!ifcontains(field, columnName))
											continue;
										count = this.printArray(field,
												columnName);
										XSSFCell nowCell = rows
												.createCell((short) count);
										String columnValue = dataObject
												.getString(columnName);
										nowCell.setCellValue(columnValue);
										count++;
										oneindexs++;
									}
									XSSFCell cells = rows
											.createCell((short) (oneindexs));
									String lcv = dataObject.getString("lcv");
									cells.setCellValue(lcv);
									onerownum++;
								}
							}
						}
					}
				} else {
					// DataObject[] gddata =
					// this.getInforMationByFieldName("ident", "焊缝（管道/支撑）",
					// entityName,orderHd);
					// DataObject[] bossdata =
					// this.getInforMationByFieldName("ident", "焊缝（BOOS头）",
					// entityName,orderHd);
					// DataObject[] zcdata =
					// this.getInforMationByFieldName("ident", "支撑/支架",
					// entityName,orderHd);
					// DataObject[] fmdata =
					// this.getInforMationByFieldName("ident", "阀门",
					// entityName,orderHd);
					// DataObject[] crgdata =
					// this.getInforMationByFieldName("ident", "传热管",
					// entityName,orderHd);
					criteriaType.set("_expr[2]/ident", "焊缝（管道/支撑）");
					criteriaType.set("_expr[2]/_op", "=");
					criteriaType.set("_expr[3]/lcv", "");
					criteriaType.set("_expr[3]/_op", "notnull");
					criteriaType.set("_expr[4]/lcv", "");
					criteriaType.set("_expr[4]/_op", "<>");
					criteriaType.set("_expr[5]/lcv", "PP,SP,EP,DP,PF,SF,EF,DF,P,S");
					criteriaType.set("_expr[5]/_op", "in");
					DataObject[] gddata = DatabaseUtil
							.queryEntitiesByCriteriaEntity("default",
									criteriaType);
					criteriaType.set("_expr[2]/ident", "焊缝（BOOS头）");
					criteriaType.set("_expr[2]/_op", "=");
					criteriaType.set("_expr[3]/lcv", "");
					criteriaType.set("_expr[3]/_op", "notnull");
					criteriaType.set("_expr[4]/lcv", "");
					criteriaType.set("_expr[4]/_op", "<>");
					criteriaType.set("_expr[5]/lcv", "PP,SP,EP,DP,PF,SF,EF,DF,P,S");
					criteriaType.set("_expr[5]/_op", "in");
					DataObject[] bossdata = DatabaseUtil
							.queryEntitiesByCriteriaEntity("default",
									criteriaType);
					criteriaType.set("_expr[2]/ident", "支撑/支架");
					criteriaType.set("_expr[2]/_op", "=");
					criteriaType.set("_expr[3]/lcv", "");
					criteriaType.set("_expr[3]/_op", "notnull");
					criteriaType.set("_expr[4]/lcv", "");
					criteriaType.set("_expr[4]/_op", "<>");
					criteriaType.set("_expr[5]/lcv", "PP,SP,EP,DP,PF,SF,EF,DF,P,S");
					criteriaType.set("_expr[5]/_op", "in");
					DataObject[] zcdata = DatabaseUtil
							.queryEntitiesByCriteriaEntity("default",
									criteriaType);
					criteriaType.set("_expr[2]/ident", "阀门");
					criteriaType.set("_expr[2]/_op", "=");
					criteriaType.set("_expr[3]/lcv", "");
					criteriaType.set("_expr[3]/_op", "notnull");
					criteriaType.set("_expr[4]/lcv", "");
					criteriaType.set("_expr[4]/_op", "<>");
					criteriaType.set("_expr[5]/lcv", "PP,SP,EP,DP,PF,SF,EF,DF,P,S");
					criteriaType.set("_expr[5]/_op", "in");
					DataObject[] fmdata = DatabaseUtil
							.queryEntitiesByCriteriaEntity("default",
									criteriaType);
					criteriaType.set("_expr[2]/ident", "传热管");
					criteriaType.set("_expr[2]/_op", "=");
					criteriaType.set("_expr[3]/lcv", "");
					criteriaType.set("_expr[3]/_op", "notnull");
					criteriaType.set("_expr[4]/lcv", "");
					criteriaType.set("_expr[4]/_op", "<>");
					criteriaType.set("_expr[5]/lcv", "PP,SP,EP,DP,PF,SF,EF,DF,P,S");
					criteriaType.set("_expr[5]/_op", "in");
					DataObject[] crgdata = DatabaseUtil
							.queryEntitiesByCriteriaEntity("default",
									criteriaType);
					if (gddata != null && gddata.length > 0) {
						String[] field = { "detailed", "gdh", "sapgnwz",
								"inspectionscope", "itemno", "equipment",
								"hfnumber", "number", "gxnumber", "mapno",
								"roomnumber", "method", "program", "remark" };
						// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
						XSSFSheet sheet = wb.createSheet("焊缝管道支撑");
						for (int j = 0; j < field.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
						XSSFRow row = sheet.createRow(0);
						int firstrownum = 0, onerownum = 1, oneindex = 0;
						for (int j = 0; j < columnList.size(); j++) {
							Map<String, String> columnMap = columnList.get(j);
							String ShowName = columnMap.get("ShowName");
							String columnName = columnMap.get("FieldName");
							if (!ifcontains(field, columnName))
								continue;
							firstrownum = this.printArray(field, columnName);
							XSSFCell nowCell = row
									.createCell((short) firstrownum);
							new ViewModelHelper();
							Field modeField = ViewModelHelper.getField(
									entityName, columnName);
							if (modeField != null) {
								columnName = modeField.getLabel();
							}
							if ("参考程序".equals(ShowName)) {
								columnName = "检查程序";
							}
							if ("检查项目描述".equals(ShowName)) {
								columnName = "检查项目名称";
							}
							nowCell.setCellValue(columnName);
							firstrownum++;
							oneindex++;
						}
						XSSFCell nowCells = row.createCell((short) (oneindex));
						DataObject dataObjects = gddata[0];
						String lc = dataObjects.getString("lc");
						if ((lc.toLowerCase().startsWith("n") || lc
								.toLowerCase().startsWith("c"))
								&& lc.length() > 2) {
							lc = lc.substring(1, lc.length());
						}
						nowCells.setCellValue(lc);
						// 第四步，创建单元格，并设置值表头 设置表头居中
						XSSFCellStyle style = wb.createCellStyle();
						style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
						// 声明列对象
						HSSFCell cell = null;
						for (int j = 0; j < gddata.length; j++) {
							DataObject dataObject = gddata[j];
							if (dataObject.getString("processinstid").equals(
									processinstid)) {
								XSSFRow rows = sheet.createRow(onerownum);
								// 创建内容
								int count = 0, oneindexs = 0;
								for (int k = 0; k < columnList.size(); k++) {
									Map<String, String> columnMap = columnList
											.get(k);
									String columnName = columnMap
											.get("FieldName");
									if (!ifcontains(field, columnName))
										continue;
									count = this.printArray(field, columnName);
									XSSFCell nowCell = rows
											.createCell((short) count);
									String columnValue = dataObject
											.getString(columnName);
									nowCell.setCellValue(columnValue);
									count++;
									oneindexs++;
								}
								XSSFCell cells = rows
										.createCell((short) (oneindexs));
								String lcv = dataObject.getString("lcv");
								cells.setCellValue(lcv);
								onerownum++;
							}
						}
					}
					if (bossdata != null && bossdata.length > 0) {
						String[] field = { "detailed", "gdh", "sapgnwz",
								"inspectionscope", "itemno", "systemdevice",
								"roomnumber", "category", "ckt_dzhnumber",
								"gxnumber", "gj", "hfnumber", "bw", "cl",
								"method", "program", "remark" };
						// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
						XSSFSheet sheet = wb.createSheet("焊缝BOOS头");
						for (int j = 0; j < field.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
						XSSFRow row = sheet.createRow(0);
						int firstrownum = 0, onerownum = 1, oneindex = 0;
						for (int j = 0; j < columnList.size(); j++) {
							Map<String, String> columnMap = columnList.get(j);
							String ShowName = columnMap.get("ShowName");
							String columnName = columnMap.get("FieldName");
							if (!ifcontains(field, columnName))
								continue;
							firstrownum = this.printArray(field, columnName);
							XSSFCell nowCell = row
									.createCell((short) firstrownum);
							new ViewModelHelper();
							Field modeField = ViewModelHelper.getField(
									entityName, columnName);
							if (modeField != null) {
								columnName = modeField.getLabel();
							}
							if ("参考程序".equals(ShowName)) {
								columnName = "检查程序";
							}
							if ("检查项目描述".equals(ShowName)) {
								columnName = "检查项目名称";
							}
							nowCell.setCellValue(columnName);
							firstrownum++;
							oneindex++;
						}
						XSSFCell nowCells = row.createCell((short) (oneindex));
						DataObject dataObjects = bossdata[0];
						String lc = dataObjects.getString("lc");
						if ((lc.toLowerCase().startsWith("n") || lc
								.toLowerCase().startsWith("c"))
								&& lc.length() > 2) {
							lc = lc.substring(1, lc.length());
						}
						nowCells.setCellValue(lc);
						// 第四步，创建单元格，并设置值表头 设置表头居中
						XSSFCellStyle style = wb.createCellStyle();
						style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
						// 声明列对象
						HSSFCell cell = null;
						for (int j = 0; j < bossdata.length; j++) {
							DataObject dataObject = bossdata[j];
							if (dataObject.getString("processinstid").equals(
									processinstid)) {
								XSSFRow rows = sheet.createRow(onerownum);
								// 创建内容
								int count = 0, oneindexs = 0;
								for (int k = 0; k < columnList.size(); k++) {
									Map<String, String> columnMap = columnList
											.get(k);
									String columnName = columnMap
											.get("FieldName");
									if (!ifcontains(field, columnName))
										continue;
									count = this.printArray(field, columnName);
									XSSFCell nowCell = rows
											.createCell((short) count);
									String columnValue = dataObject
											.getString(columnName);
									nowCell.setCellValue(columnValue);
									count++;
									oneindexs++;
								}
								XSSFCell cells = rows
										.createCell((short) (oneindexs));
								String lcv = dataObject.getString("lcv");
								cells.setCellValue(lcv);
								onerownum++;
							}
						}
					}
					if (zcdata != null && zcdata.length > 0) {
						String[] field = { "detailed", "gdh", "sapgnwz",
								"inspectionscope", "itemno", "bracenumber",
								"gxnumber", "referencefigureno", "roomnumber",
								"approachmode", "method", "program", "pmcycle",
								"pmcode", "remark" };
						// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
						XSSFSheet sheet = wb.createSheet("支撑支架");
						for (int j = 0; j < field.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
						XSSFRow row = sheet.createRow(0);
						int firstrownum = 0, onerownum = 1, oneindex = 0;
						for (int j = 0; j < columnList.size(); j++) {
							Map<String, String> columnMap = columnList.get(j);
							String ShowName = columnMap.get("ShowName");
							String columnName = columnMap.get("FieldName");
							if (!ifcontains(field, columnName))
								continue;
							firstrownum = this.printArray(field, columnName);
							XSSFCell nowCell = row
									.createCell((short) firstrownum);
							new ViewModelHelper();
							Field modeField = ViewModelHelper.getField(
									entityName, columnName);
							if (modeField != null) {
								columnName = modeField.getLabel();
							}
							if ("参考程序".equals(ShowName)) {
								columnName = "检查程序";
							}
							if ("检查项目描述".equals(ShowName)) {
								columnName = "检查项目名称";
							}
							nowCell.setCellValue(columnName);
							firstrownum++;
							oneindex++;
						}
						XSSFCell nowCells = row.createCell((short) (oneindex));
						DataObject dataObjects = zcdata[0];
						String lc = dataObjects.getString("lc");
						if ((lc.toLowerCase().startsWith("n") || lc
								.toLowerCase().startsWith("c"))
								&& lc.length() > 2) {
							lc = lc.substring(1, lc.length());
						}
						nowCells.setCellValue(lc);
						// 第四步，创建单元格，并设置值表头 设置表头居中
						XSSFCellStyle style = wb.createCellStyle();
						style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
						// 声明列对象
						HSSFCell cell = null;
						for (int j = 0; j < zcdata.length; j++) {
							DataObject dataObject = zcdata[j];
							if (dataObject.getString("processinstid").equals(
									processinstid)) {
								XSSFRow rows = sheet.createRow(onerownum);
								// 创建内容
								int count = 0, oneindexs = 0;
								for (int k = 0; k < columnList.size(); k++) {
									Map<String, String> columnMap = columnList
											.get(k);
									String columnName = columnMap
											.get("FieldName");
									if (!ifcontains(field, columnName))
										continue;
									count = this.printArray(field, columnName);
									XSSFCell nowCell = rows
											.createCell((short) count);
									String columnValue = dataObject
											.getString(columnName);
									nowCell.setCellValue(columnValue);
									count++;
									oneindexs++;
								}
								XSSFCell cells = rows
										.createCell((short) (oneindexs));
								String lcv = dataObject.getString("lcv");
								cells.setCellValue(lcv);
								onerownum++;
							}
						}
					}
					if (fmdata != null && fmdata.length > 0) {
						String[] field = { "detailed", "gdh", "sapgnwz",
								"inspectionscope", "itemno", "equipment",
								"seat", "site", "approachmode", "gxnumber",
								"ckt_dzhnumber", "roomnumber", "method",
								"program", "gfcycle", "pmcycle", "pmcode",
								"executionunit", "remark" };
						// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
						XSSFSheet sheet = wb.createSheet("阀门");
						for (int j = 0; j < field.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
						XSSFRow row = sheet.createRow(0);
						int firstrownum = 0, onerownum = 1, oneindex = 0;
						for (int j = 0; j < columnList.size(); j++) {
							Map<String, String> columnMap = columnList.get(j);
							String ShowName = columnMap.get("ShowName");
							String columnName = columnMap.get("FieldName");
							if (!ifcontains(field, columnName))
								continue;
							firstrownum = this.printArray(field, columnName);
							XSSFCell nowCell = row
									.createCell((short) firstrownum);
							new ViewModelHelper();
							Field modeField = ViewModelHelper.getField(
									entityName, columnName);
							if (modeField != null) {
								columnName = modeField.getLabel();
							}
							if ("设备".equals(ShowName)) {
								columnName = "设备/部件";
							}
							if ("试验部位".equals(ShowName)) {
								columnName = "检查部位";
							}
							if ("参考程序".equals(ShowName)) {
								columnName = "检查程序";
							}
							if ("检查项目描述".equals(ShowName)) {
								columnName = "检查项目名称";
							}
							nowCell.setCellValue(columnName);
							firstrownum++;
							oneindex++;
						}
						XSSFCell nowCells = row.createCell((short) (oneindex));
						DataObject dataObjects = fmdata[0];
						String lc = dataObjects.getString("lc");
						if ((lc.toLowerCase().startsWith("n") || lc
								.toLowerCase().startsWith("c"))
								&& lc.length() > 2) {
							lc = lc.substring(1, lc.length());
						}
						nowCells.setCellValue(lc);
						// 第四步，创建单元格，并设置值表头 设置表头居中
						XSSFCellStyle style = wb.createCellStyle();
						style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
						// 声明列对象
						HSSFCell cell = null;
						for (int j = 0; j < fmdata.length; j++) {
							DataObject dataObject = fmdata[j];
							if (dataObject.getString("processinstid").equals(
									processinstid)) {
								XSSFRow rows = sheet.createRow(onerownum);
								// 创建内容
								int count = 0, oneindexs = 0;
								for (int k = 0; k < columnList.size(); k++) {
									Map<String, String> columnMap = columnList
											.get(k);
									String columnName = columnMap
											.get("FieldName");
									if (!ifcontains(field, columnName))
										continue;
									count = this.printArray(field, columnName);
									XSSFCell nowCell = rows
											.createCell((short) count);
									String columnValue = dataObject
											.getString(columnName);
									nowCell.setCellValue(columnValue);
									count++;
									oneindexs++;
								}
								XSSFCell cells = rows
										.createCell((short) (oneindexs));
								String lcv = dataObject.getString("lcv");
								cells.setCellValue(lcv);
								onerownum++;
							}
						}
					}
					if(fmdata.length == 0&& zcdata.length == 0&& bossdata.length == 0&& gddata.length == 0){
						 wb.createSheet("焊缝管道支撑");
						 wb.createSheet("焊缝BOOS头");
						 wb.createSheet("支撑支架");
						 wb.createSheet("阀门");
					}

					if ("86".equals(base)) {
						criteriaType.set("_expr[2]/ident", "容器和热交换器");
						criteriaType.set("_expr[2]/_op", "=");
						criteriaType.set("_expr[3]/lcv", "");
						criteriaType.set("_expr[3]/_op", "notnull");
						criteriaType.set("_expr[4]/lcv", "");
						criteriaType.set("_expr[4]/_op", "<>");
						criteriaType.set("_expr[5]/lcv", "PP,SP,EP,DP,PF,SF,EF,DF,P,S");
						criteriaType.set("_expr[5]/_op", "in");
						DataObject[] rqdata = DatabaseUtil
								.queryEntitiesByCriteriaEntity("default",
										criteriaType);
						// DataObject[] rqdata =
						// this.getInforMationByFieldName("ident", "容器和热交换器",
						// entityName,orderHd);
						// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet

						if (rqdata != null && rqdata.length > 0) {
							String[] field = { "detailed", "gdh", "sapgnwz",
									"inspectionscope", "itemno", "seat",
									"equipmentname", "gxnumber", "site",
									"referencefigureno", "method",
									"approachmode", "program", "remark" };
							XSSFSheet sheet = wb.createSheet("容器和热交换器");
							for (int j = 0; j < field.length; j++) {
								sheet.setColumnWidth(j, 100 * 50);
							}
							XSSFRow row = sheet.createRow(0);
							int firstrownum = 0, onerownum = 1, oneindex = 0;
							for (int j = 0; j < columnList.size(); j++) {
								Map<String, String> columnMap = columnList
										.get(j);
								String ShowName = columnMap.get("ShowName");
								String columnName = columnMap.get("FieldName");
								if (!ifcontains(field, columnName))
									continue;
								firstrownum = this
										.printArray(field, columnName);
								XSSFCell nowCell = row
										.createCell((short) firstrownum);
								new ViewModelHelper();
								Field modeField = ViewModelHelper.getField(
										entityName, columnName);
								if (modeField != null) {
									columnName = modeField.getLabel();
								}
								if ("管线号".equals(ShowName)) {
									columnName = "管壳侧";
								}
								if ("参考程序".equals(ShowName)) {
									columnName = "检查程序";
								}
								if ("参考图号".equals(ShowName)) {
									columnName = "设备图号";
								}
								if ("试验部位".equals(ShowName)) {
									columnName = "被检部位";
								}
								if ("检查项目描述".equals(ShowName)) {
									columnName = "检查项目名称";
								}
								nowCell.setCellValue(columnName);
								firstrownum++;
								oneindex++;
							}
							XSSFCell nowCells = row
									.createCell((short) (oneindex));
							DataObject dataObjects = rqdata[0];
							String lc = dataObjects.getString("lc");
							if ((lc.toLowerCase().startsWith("n") || lc
									.toLowerCase().startsWith("c"))
									&& lc.length() > 2) {
								lc = lc.substring(1, lc.length());
							}
							nowCells.setCellValue(lc);
							// 第四步，创建单元格，并设置值表头 设置表头居中
							XSSFCellStyle style = wb.createCellStyle();
							style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
							// 声明列对象
							HSSFCell cell = null;
							for (int j = 0; j < rqdata.length; j++) {
								DataObject dataObject = rqdata[j];
								if (dataObject.getString("processinstid")
										.equals(processinstid)) {
									XSSFRow rows = sheet.createRow(onerownum);
									// 创建内容
									int count = 0, oneindexs = 0;
									for (int k = 0; k < columnList.size(); k++) {
										Map<String, String> columnMap = columnList
												.get(k);
										String columnName = columnMap
												.get("FieldName");
										if (!ifcontains(field, columnName))
											continue;
										count = this.printArray(field,
												columnName);
										XSSFCell nowCell = rows
												.createCell((short) count);
										String columnValue = dataObject
												.getString(columnName);
										nowCell.setCellValue(columnValue);
										count++;
										oneindexs++;
									}
									XSSFCell cells = rows
											.createCell((short) (oneindexs));
									String lcv = dataObject.getString("lcv");
									cells.setCellValue(lcv);
									onerownum++;
								}
							}
						}
					}

					if (crgdata != null && crgdata.length > 0) {
						String[] field = { "detailed", "gdh", "sapgnwz",
								"inspectionscope", "itemno", "equipmentname",
								"equipment", "columnsint", "row", "checktype",
								"method", "program", "jccycle", "remark" };
						// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
						XSSFSheet sheet = wb.createSheet("传热管");
						for (int j = 0; j < field.length; j++) {
							sheet.setColumnWidth(j, 100 * 50);
						}
						XSSFRow row = sheet.createRow(0);
						int firstrownum = 0, onerownum = 1, oneindex = 0;
						for (int j = 0; j < columnList.size(); j++) {
							Map<String, String> columnMap = columnList.get(j);
							String ShowName = columnMap.get("ShowName");
							String columnName = columnMap.get("FieldName");
							if (!ifcontains(field, columnName))
								continue;
							firstrownum = this.printArray(field, columnName);
							XSSFCell nowCell = row
									.createCell((short) firstrownum);
							new ViewModelHelper();
							Field modeField = ViewModelHelper.getField(
									entityName, columnName);
							if (modeField != null) {
								columnName = modeField.getLabel();
							}
							if ("设备".equals(ShowName)) {
								columnName = "设备编号";
							}
							if ("参考程序".equals(ShowName)) {
								columnName = "检查程序";
							}
							if ("检查项目描述".equals(ShowName)) {
								columnName = "检查项目名称";
							}
							nowCell.setCellValue(columnName);
							firstrownum++;
							oneindex++;
						}
						XSSFCell nowCells = row.createCell((short) (oneindex));
						DataObject dataObjects = crgdata[0];
						String lc = dataObjects.getString("lc");

						if ((lc.toLowerCase().startsWith("n") || lc
								.toLowerCase().startsWith("c"))
								&& lc.length() > 2) {
							lc = lc.substring(1, lc.length());
						}
						nowCells.setCellValue(lc);
						// 第四步，创建单元格，并设置值表头 设置表头居中
						XSSFCellStyle style = wb.createCellStyle();
						style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
						// 声明列对象
						HSSFCell cell = null;
						for (int j = 0; j < crgdata.length; j++) {
							DataObject dataObject = crgdata[j];
							if (dataObject.getString("processinstid").equals(
									processinstid)) {
								XSSFRow rows = sheet.createRow(onerownum);
								// 创建内容
								int count = 0, oneindexs = 0;
								for (int k = 0; k < columnList.size(); k++) {
									Map<String, String> columnMap = columnList
											.get(k);
									String columnName = columnMap
											.get("FieldName");
									if (!ifcontains(field, columnName))
										continue;
									count = this.printArray(field, columnName);
									XSSFCell nowCell = rows
											.createCell((short) count);
									String columnValue = dataObject
											.getString(columnName);
									nowCell.setCellValue(columnValue);
									count++;
									oneindexs++;
								}
								XSSFCell cells = rows
										.createCell((short) (oneindexs));
								String lcv = dataObject.getString("lcv");
								cells.setCellValue(lcv);
								onerownum++;
							}
						}
					}
				}

				String templateDir = saveRootDirectory + File.separator
						+ outname + System.currentTimeMillis() + ".xlsx";
				new File(templateDir).createNewFile();
				FileOutputStream fileOut = new FileOutputStream(templateDir);
				wb.write(fileOut);
				fileOut.close();
			} else if ("专用检查工具清单".equals(outname)) {
				boolean flag = false;
				String tablename = DatabaseExt.getTableName("default",
						entityName);
				String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getZYGJMap";
				Map<String, Object> parmsMap = new HashMap<String, Object>();
				parmsMap.put("tablename", tablename);
				parmsMap.put("processinstid", processinstid);
				Object[] typeDataObject = (Object[]) DatabaseExt
						.queryByNamedSql("default", address, parmsMap);
				if (typeDataObject.length > 0) {
					// 第一步，创建一个HSSFWorkbook，对应一个Excel文件
					XSSFWorkbook wb = new XSSFWorkbook();
					String[] field = { "name", "istxh" };
					// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
					XSSFSheet sheet = wb.createSheet(outname);
					for (int j = 0; j < field.length; j++) {
						sheet.setColumnWidth(j, 100 * 50);
					}
					XSSFRow row = sheet.createRow(0);
					int firstrownum = 0, onerownum = 1;
					List<HashMap<String, String>> columnLists = baseJdglUtil
							.getPropertyByEntityName(
									"com.cgn.itmp.outlineandplan.base.specialToolManagement.SPECIALTOOL",
									"");
					for (int j = 0; j < columnLists.size(); j++) {
						Map<String, String> columnMap = columnLists.get(j);
						String columnName = columnMap.get("FieldName");
						if (!ifcontains(field, columnName))
							continue;
						firstrownum = this.printArray(field, columnName);
						XSSFCell nowCell = row.createCell((short) firstrownum);
						new ViewModelHelper();
						Field modeField = ViewModelHelper
								.getField(
										"com.cgn.itmp.outlineandplan.base.specialToolManagement.SPECIALTOOL",
										columnName);
						if (modeField != null) {
							columnName = modeField.getLabel();
						}
						nowCell.setCellValue(columnName);
						firstrownum++;
					}
					// 第四步，创建单元格，并设置值表头 设置表头居中
					XSSFCellStyle style = wb.createCellStyle();
					style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
					// 声明列对象
					HSSFCell cell = null;
					DataObject[] dataparms = new DataObject[typeDataObject.length];
					List<String> toolList = new ArrayList<String>();
					for (int z = 0; z < typeDataObject.length; z++) {
						dataparms[z] = (DataObject) typeDataObject[z];
						String[] toolstr = dataparms[z].getString("tool")
								.split(",");
						for (int j = 0; j < toolstr.length; j++) {
							String tool = toolstr[j];
							toolList.add(tool);
						}
					}
					if (toolList != null && toolList.size() > 0) {
						List<String> toolNewList = new ArrayList<String>();
						for (String tool : toolList) {
							if (!toolNewList.contains(tool)) {
								toolNewList.add(tool);
							}
						}
						for (int j = 0; j < toolNewList.size(); j++) {
							DataObject[] dataobjects = this
									.getInforMationByFieldName("istxh",
											toolNewList.get(j), base, crew,
											"com.cgn.itmp.outlineandplan.base.specialToolManagement.SPECIALTOOL");
							if (dataobjects != null && dataobjects.length > 0) {
								flag = true;
								// 创建内容
								XSSFRow rows = sheet.createRow(onerownum);
								int count = 0;
								for (int k = 0; k < columnLists.size(); k++) {
									Map<String, String> columnMap = columnLists
											.get(k);
									String columnName = columnMap
											.get("FieldName");
									if (!ifcontains(field, columnName))
										continue;
									count = this.printArray(field, columnName);
									XSSFCell nowCell = rows
											.createCell((short) count);
									String columnValue = dataobjects[0]
											.getString(columnName);
									nowCell.setCellValue(columnValue);
									count++;
								}
								onerownum++;
							}
						}
					}

					if (flag) {
						String templateDir = saveRootDirectory + File.separator
								+ outname + System.currentTimeMillis()
								+ ".xlsx";
						new File(templateDir).createNewFile();
						FileOutputStream fileOut = new FileOutputStream(
								templateDir);
						wb.write(fileOut);
						fileOut.close();
					}
				}
			} else if ("检查程序清单".equals(outname)) {
				boolean flag = false;
				String tablename = DatabaseExt.getTableName("default",
						entityName);
				String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getJCCXMap";
				Map<String, Object> parmsMap = new HashMap<String, Object>();
				parmsMap.put("tablename", tablename);
				parmsMap.put("processinstid", processinstid);
				Object[] typeDataObject = (Object[]) DatabaseExt
						.queryByNamedSql("default", address, parmsMap);
				if (typeDataObject.length > 0) {
					// 第一步，创建一个HSSFWorkbook，对应一个Excel文件
					XSSFWorkbook wb = new XSSFWorkbook();
					String[] field = { "cxbm", "name", "lx", "jm", "bbh",
							"status", "sxrq", "zrr", "bxdw" };
					// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
					XSSFSheet sheet = wb.createSheet(outname);
					for (int j = 0; j < field.length; j++) {
						sheet.setColumnWidth(j, 100 * 50);
					}
					XSSFRow row = sheet.createRow(0);
					int firstrownum = 0, onerownum = 1;
					List<HashMap<String, String>> columnLists = baseJdglUtil
							.getPropertyByEntityName(
									"com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM",
									"");
					for (int j = 0; j < columnLists.size(); j++) {
						Map<String, String> columnMap = columnLists.get(j);
						String columnName = columnMap.get("FieldName");
						if (!ifcontains(field, columnName))
							continue;
						firstrownum = this.printArray(field, columnName);
						XSSFCell nowCell = row.createCell((short) firstrownum);
						new ViewModelHelper();
						Field modeField = ViewModelHelper
								.getField(
										"com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM",
										columnName);
						if (modeField != null) {
							columnName = modeField.getLabel();
						}
						nowCell.setCellValue(columnName);
						firstrownum++;
					}
					// 第四步，创建单元格，并设置值表头 设置表头居中
					XSSFCellStyle style = wb.createCellStyle();
					style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
					// 声明列对象
					HSSFCell cell = null;
					DataObject[] dataparms = new DataObject[typeDataObject.length];
					List<String> programList = new ArrayList<String>();
					for (int z = 0; z < typeDataObject.length; z++) {
						dataparms[z] = (DataObject) typeDataObject[z];
						String[] programstr = dataparms[z].getString("program")
								.split(",");
						for (int j = 0; j < programstr.length; j++) {
							String program = programstr[j];
							programList.add(program);
						}
					}
					if (programList != null && programList.size() > 0) {
						List<String> programNewList = new ArrayList<String>();
						for (String program : programList) {
							if (!programNewList.contains(program)) {
								programNewList.add(program);
							}
						}
						for (int j = 0; j < programNewList.size(); j++) {
							DataObject[] dataobjects = this
									.getInforMationByFieldName("jm",
											programNewList.get(j), base, crew,
											"com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM");
							if (dataobjects != null && dataobjects.length > 0) {
								flag = true;
								// 创建内容
								XSSFRow rows = sheet.createRow(onerownum);
								int count = 0;
								for (int k = 0; k < columnLists.size(); k++) {
									Map<String, String> columnMap = columnLists
											.get(k);
									String columnName = columnMap
											.get("FieldName");
									if (!ifcontains(field, columnName))
										continue;
									count = this.printArray(field, columnName);
									XSSFCell nowCell = rows
											.createCell((short) count);
									String columnValue = dataobjects[0]
											.getString(columnName);
									if ("lx".equals(columnName)) {
										if (!StringHelper.isEmpty(columnValue)) {
											HashMap<String, String> map = new HashMap<String, String>();
											map.put("DICTID", columnValue);
											Object[] dicInfo = (Object[]) DatabaseExt
													.queryByNamedSql(
															"default",
															"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.fuzzyMatchingDictionary",
															map);
											if (dicInfo.length > 0) {
												columnValue = ((DataObject) dicInfo[0])
														.getString("DICTNAME");
											}
										}
									}
									if ("status".equals(columnName)) {
										if (!StringHelper.isEmpty(columnValue)) {
											HashMap<String, String> map = new HashMap<String, String>();
											map.put("DICTID", columnValue);
											Object[] dicInfo = (Object[]) DatabaseExt
													.queryByNamedSql(
															"default",
															"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.fuzzyMatchingDictionary",
															map);
											if (dicInfo.length > 0) {
												columnValue = ((DataObject) dicInfo[0])
														.getString("DICTNAME");
											}
										}
									}

									nowCell.setCellValue(columnValue);
									count++;
								}
								onerownum++;
							}
						}
					}

					if (flag) {
						String templateDir = saveRootDirectory + File.separator
								+ outname + System.currentTimeMillis()
								+ ".xlsx";
						new File(templateDir).createNewFile();
						FileOutputStream fileOut = new FileOutputStream(
								templateDir);
						wb.write(fileOut);
						fileOut.close();
					}
				}
			}
		}
		String zipFilePath = rootDirectory + ".zip";
		createZip(rootDirectory, zipFilePath);
		return "tempFile" + File.separator + dirpath + ".zip";
	}

	public static void createZip(String sourcePath, String zipPath) {
		FileOutputStream fos = null;
		ZipOutputStream zos = null;
		try {
			fos = new FileOutputStream(zipPath);
			zos = new ZipOutputStream(fos);
			zos.setEncoding("gbk");
			writeZip(new File(sourcePath), "", zos);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if (zos != null) {
					zos.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	private static void writeZip(File file, String parentPath,
			ZipOutputStream zos) {
		if (file.exists()) {
			if (file.isDirectory()) {// 处理文件夹
				parentPath += file.getName() + File.separator;
				File[] files = file.listFiles();
				if (files.length != 0) {
					for (File f : files) {
						writeZip(f, parentPath, zos);
					}
				} else {// 空目录则创建当前目录
					try {
						zos.putNextEntry(new ZipEntry(parentPath));
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			} else {
				FileInputStream fis = null;
				try {
					fis = new FileInputStream(file);
					ZipEntry ze = new ZipEntry(parentPath + file.getName());
					zos.putNextEntry(ze);
					byte[] content = new byte[1024 * 2];
					int len;
					while ((len = fis.read(content)) != -1) {
						zos.write(content, 0, len);
						zos.flush();
					}
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				} finally {
					try {
						if (fis != null) {
							fis.close();
						}
					} catch (Exception e2) {
						// TODO: handle exception
						e2.printStackTrace();
					}
				}
			}
		}
	}

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
	public Map<String, Object> getDataByDetailed(String fieldName,
			String fieldValue, String entityOne, String entityTwo, String base,
			String crew) {
		if (StringHelper.isEmpty(fieldName) || StringHelper.isEmpty(fieldValue)
				|| StringHelper.isEmpty(entityOne)
				|| StringHelper.isEmpty(entityTwo)
				|| StringHelper.isEmpty(base) || StringHelper.isEmpty(crew))
			return null;
		Map<String, Object> valueMap = new HashMap<String, Object>();
		DataObject dataEntity = DataObjectUtil.createDataObject(entityOne);
		dataEntity.setString(fieldName, fieldValue);
		dataEntity.setString("base", base);
		dataEntity.setString("crew", crew);
		dataEntity.setString("isdelete", "0");
		DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate(
				"default", dataEntity);
		if (dataParms != null && dataParms.length > 0) {
			valueMap.put("data1", true);
		} else {
			valueMap.put("data1", false);
		}
		DataObject dataEntity2 = DataObjectUtil.createDataObject(entityTwo);
		dataEntity2.setString(fieldName, fieldValue);
		dataEntity2.setString("base", base);
		dataEntity2.setString("crew", crew);
		dataEntity2.setString("isdelete", "0");
		DataObject[] dataParms2 = DatabaseUtil.queryEntitiesByTemplate(
				"default", dataEntity2);
		if (dataParms2 != null && dataParms2.length > 0) {
			valueMap.put("data2", true);
		} else {
			valueMap.put("data2", false);
		}
		return valueMap;
	}

	/**
	 * 根据清单查询专用检查计划是否有相关数据
	 * 
	 * @param fieldValue
	 *            清单值
	 * @param base
	 *            基地
	 * @param crew
	 *            机组
	 * @param type
	 *            模块（1大修2日常）
	 * @return
	 */
	public Map<String, Object> getJCJHDataByDetailed(String fieldValue,
			String base, String crew, String type) {
		if (StringHelper.isEmpty(fieldValue) || StringHelper.isEmpty(base)
				|| StringHelper.isEmpty(crew))
			return null;
		Map<String, Object> valueMap = new HashMap<String, Object>();
		String address = "";
		if ("1".equals(type))
			address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getZYJCJHDXMap";
		if ("2".equals(type))
			address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getZYJCJHRCMap";
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("tasklist", fieldValue);
		parmsMap.put("base", base);
		parmsMap.put("crew", crew);
		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		if (typeDataObject.length > 0) {
			valueMap.put("flag", true);
		} else {
			valueMap.put("flag", false);
		}
		return valueMap;
	}

	/**
	 * 设置排序号
	 * 
	 * @param orderno
	 * @param entity
	 * @return
	 */
	public BigDecimal setOrderNo(String orderno, String entity, String base,
			String crew) {
		if (StringHelper.isEmpty(orderno) || StringHelper.isEmpty(entity))
			return null;
		BigDecimal no = BigDecimal.valueOf(0.001);
		BigDecimal reorderno = new BigDecimal(orderno);
		reorderno = reorderno.add(no);
		// String tableName = DatabaseExt.getTableName("default", entity);
		String[] oederNoStr = orderno.split("\\.");
		String start = "";
		if (oederNoStr.length > 0)
			start = oederNoStr[0];
		else
			start = orderno;
		String end = String.valueOf(Integer.parseInt(start) + 1);
		// String address = "com.cgn.itmp.basecommon.jdglSql.getDataByOrderno1";
		// Map<String, Object> parmsMap = new HashMap<String, Object>();
		// parmsMap.put("tablename", tableName);
		// parmsMap.put("start", orderno);
		// parmsMap.put("end", end);
		DataObject criteriaType = DataFactory.INSTANCE.create(
				"com.primeton.das.criteria", "criteriaType");
		criteriaType.set("_entity", entity);
		// 加入条件
		criteriaType.set("_expr[1]/orderno", orderno);
		criteriaType.set("_expr[1]/_op", ">");
		criteriaType.set("_expr[2]/orderno", end);
		criteriaType.set("_expr[2]/_op", "<");
		criteriaType.set("_expr[3]/base", base);
		criteriaType.set("_expr[3]/_op", "=");
		criteriaType.set("_expr[4]/crew", crew);
		criteriaType.set("_expr[4]/_op", "=");
		criteriaType.set("_expr[5]/jd", base);
		criteriaType.set("_expr[5]/_op", "=");
		criteriaType.set("_expr[6]/jz", crew);
		criteriaType.set("_expr[6]/_op", "=");
		criteriaType.set("_orderby[1]/_property", "orderno");
		criteriaType.set("_orderby[1]/_sort", "asc");
		DataObject[] typeDataObject = DatabaseUtil
				.queryEntitiesByCriteriaEntity("default", criteriaType);
		// Object[] typeDataObject =
		// (Object[])DatabaseExt.queryByNamedSql("default", address, parmsMap);
		if (typeDataObject.length > 0) {
			DataObject[] dataObject = new DataObject[typeDataObject.length];
			for (int i = 0; i < typeDataObject.length; i++) {
				dataObject[i] = (DataObject) typeDataObject[i];
				no=no.add(BigDecimal.valueOf(0.001));
				BigDecimal ordernoL = reorderno.add(no);
				dataObject[i].setFloat("orderno", ordernoL.floatValue());
				DataObject dataTemp = DataObjectUtil.convertDataObject(
						dataObject[i], entity, false);
				DatabaseUtil.updateEntity("default", dataTemp);
			}
		}
		return reorderno;
	}

	/**
	 * 获取指定基地机组的版次
	 * 
	 * @param basename
	 *            基地字段名
	 * @param base
	 *            基地字段值
	 * @param crewname
	 *            机组字段名
	 * @param crew
	 *            机组字段值
	 * @param entity
	 *            实体
	 * @param editionname
	 *            版次字段名
	 * @return
	 */
	@Bizlet
	public String getEdition(String basename, String base, String crewname,
			String crew, String entity, String editionname) {
		if (StringHelper.isEmpty(basename) || StringHelper.isEmpty(crewname)
				|| StringHelper.isEmpty(base) || StringHelper.isEmpty(crew)
				|| StringHelper.isEmpty(entity)
				|| StringHelper.isEmpty(editionname))
			return "";
		String edition = "";
		DataObject dataEntity = DataObjectUtil.createDataObject(entity);
		dataEntity.setString(basename, base);
		dataEntity.setString(crewname, crew);
		DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate(
				"default", dataEntity);
		if (dataParms != null && dataParms.length > 0) {
			edition = dataParms[0].getString(editionname);
		}
		return edition;
	}

	@Bizlet
	public boolean getNDJHisAdd(String base, String crew, String lc,
			String ident, String entity) {
		if (StringHelper.isEmpty(base) || StringHelper.isEmpty(crew)
				|| StringHelper.isEmpty(lc))
			return false;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String endtime = df.format(new Date());
		String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getNDJHtime";
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("base", base);
		parmsMap.put("crew", crew);
		parmsMap.put("lc", lc);
		parmsMap.put("ident", ident);
		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		if (typeDataObject.length > 0) {
			DataObject dataObject = (DataObject) typeDataObject[0];
			String starttime = dataObject.getString("createtime");
			DataObject criteriaType = DataFactory.INSTANCE.create(
					"com.primeton.das.criteria", "criteriaType");
			criteriaType.set("_entity", entity);
			// 加入条件
			criteriaType.set("_expr[1]/datetime", starttime);
			criteriaType.set("_expr[1]/_op", ">");
			criteriaType.set("_expr[2]/datetime", endtime);
			criteriaType.set("_expr[2]/_op", "<");
			criteriaType.set("_expr[3]/base", base);
			criteriaType.set("_expr[3]/_op", "=");
			criteriaType.set("_expr[4]/crew", crew);
			criteriaType.set("_expr[4]/_op", "=");
			DataObject[] sourceData = DatabaseUtil
					.queryEntitiesByCriteriaEntity("default", criteriaType);
			if (sourceData != null && sourceData.length > 0)
				return true;
		} else {
			return true;
		}
		return false;
	}

	public int printArray(String[] array, String value) {
		for (int i = 0; i < array.length; i++) {
			if (array[i].equals(value)) {
				return i;
			}
		}
		return -1;// 当if条件不成立时，默认返回一个负数值-1
	}

	/**
	 * 转换专用检查计划类型
	 * 
	 * @param type
	 * @return
	 */
	public String convertZyjcjhType(String type) {
		if ("RCGD".equals(type)) {
			type = "压力管道";
		} else if ("RCTY".equals(type)) {
			type = "通用";
		} else if ("HFGDZC".equals(type)) {
			type = "焊缝（管道/支撑）";
		} else if ("HFBOSS".equals(type)) {
			type = "焊缝（BOSS头）";
		} else if ("ZCZJ".equals(type)) {
			type = "支撑/支架";
		} else if ("FM".equals(type)) {
			type = "阀门";
		} else if ("RQRJHQ".equals(type)) {
			type = "容器和热交换器";
		} else if ("CRG".equals(type)) {
			type = "传热管";
		}

		return type;
	}

	public String nullToString(String str) {
		if (str == null)
			return "";
		return str;
	}

	/**
	 * 
	 * @param fieldValue
	 *            id
	 * @param entity
	 *            实体
	 * @param mxEntity
	 *            明细实体
	 * @param jlEntity
	 *            记录实体
	 */
	public boolean setDelNdjhInforMation(String fieldValue, String entity,
			String mxEntity, String jlEntity) {
		if (StringHelper.isEmpty(fieldValue) || StringHelper.isEmpty(entity)
				|| StringHelper.isEmpty(mxEntity)
				|| StringHelper.isEmpty(jlEntity))
			return false;
		String[] fieldValueArr = fieldValue.split(",");
		for (int i = 0; i < fieldValueArr.length; i++) {
			String id = fieldValueArr[i];
			DataObject dataEntity = DataObjectUtil.createDataObject(entity);
			dataEntity.setString("id", id);
			DataObject mxdataEntity = DataObjectUtil.createDataObject(mxEntity);
			mxdataEntity.setString("processinstid", id);
			DataObject jldataEntity = DataObjectUtil.createDataObject(jlEntity);
			jldataEntity.setString("uuid", id);
			DatabaseUtil.deleteByTemplate("default", dataEntity);
			DatabaseUtil.deleteByTemplate("default", mxdataEntity);
			DatabaseUtil.deleteByTemplate("default", jldataEntity);
		}
		return true;
	}

	/**
	 * 
	 * @param base		基地
	 * @return
	 */
	@Bizlet
	public DataObject[] getOverhaulSequence (String base) {
		if(StringHelper.isEmpty(base)) return null;
		String sql="com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getOverhaulSequence";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, base);
	}
	
}
