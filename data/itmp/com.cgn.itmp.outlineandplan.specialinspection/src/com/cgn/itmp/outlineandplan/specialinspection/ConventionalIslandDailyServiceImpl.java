/**
 * 
 */
package com.cgn.itmp.outlineandplan.specialinspection;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import net.sf.json.JSONObject;

import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.eos.system.annotation.Bizlet;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.primeton.ext.data.vmodel.Field;
import com.primeton.ext.data.vmodel.ViewModelHelper;
import commonj.sdo.DataObject;


/**
 * <pre>
 * Title: 专用检查计划常规岛日常执行条目实现类
 * Description: 专用检查计划常规岛日常执行条目实现类
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class ConventionalIslandDailyServiceImpl extends DASDaoSupport implements
		ConventionalIslandDailyService {

	/**
	 * 
	 */
	public ConventionalIslandDailyServiceImpl() {
		// TODO 自动生成的构造函数存根
	}
	@Bizlet("")
	public DataObject[] getProtypeAndPartsData(String baseid, String crewid) {
		// TODO 自动生成的方法存根
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.getProtype";

		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		DataObject[] orgs = new DataObject[typeDataObject.length];
		
		for (int i = 0; i < typeDataObject.length; i++) {
			orgs[i] = (DataObject) typeDataObject[i];
		}
		return orgs;
	}

	@Bizlet("")
	public DataObject[] getProtypeAndPartsData1(String baseid, String crewid) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.getProtype1";

		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		DataObject[] orgs = new DataObject[typeDataObject.length];
		for (int i = 0; i < typeDataObject.length; i++) {
			orgs[i] = (DataObject) typeDataObject[i];
		}
		return orgs;
	}

	@Bizlet
	public void addRecord(DataObject temp, String content, String type,
			String uuid) {
		DataObject temp1 = DataObjectUtil
				.convertDataObject(
						temp,
						"com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Tdgglvitae",
						false);
		temp1.setString("type", type);
		temp1.setString("content", content);
		temp1.setString("planid", temp.getString("uuid"));
		temp1.setString("ident", "专用计划常规岛日常执行条目");
		temp1.setString("editid", uuid);
		DatabaseExt.insertEntityCascade("default", temp1);
	}

	@Bizlet
	public void updateInfoMation(DataObject data) {
		if (data == null)
			return;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());
		data.setString("datetime", dataTime);
		DataObject temp = DataObjectUtil.convertDataObject(data,
				"com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.Currency", false);
		DatabaseUtil.updateEntity("default", temp);
		String currentuser = data.getString("currentuser");
		String currentreason = data.getString("currentreason");
//		String checkprojectname = data.getString("cname");
		String parms = data.getString("parms");
		String id = data.getString("uuid");
		temp.setString("creator", currentuser);
		temp.setString("datetime", dataTime);
		temp.setString("reason", currentreason);
		temp.setString("isdelete", "0");
		if (!StringHelper.isEmpty(parms)) {
			if ("remove".equals(parms)) {
				this.addRecord(temp, "删除规范法定大纲:" + "_日常执行条目1条", "删除", id);
			} else if ("edit".equals(parms)) {
				StringBuilder sb = new StringBuilder();
				String columnName = "";
				String updata = data.getString("parmsjson");
				String uuid = UUID.randomUUID().toString().replaceAll("-", "");
				if (!StringHelper.isEmpty(updata)) {
					DataObject dataEntity = DataObjectUtil
							.createDataObject("com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.DailyEdit");
					dataEntity.set("uuid", uuid);
					dataEntity.setString("datetime", dataTime);
					dataEntity.setString("creator", currentuser);
					dataEntity.setString("reason", currentreason);
					dataEntity.set("editid", id);
					updata = "{" + updata + "}";
					JSONObject jsonObject = JSONObject.fromObject(updata);
					Iterator<String> keys = jsonObject.keys();
					while (keys.hasNext()) {
						String key = keys.next();
						String value = jsonObject.get(key).toString();
						dataEntity.set(key, value.split("改为")[1]);
						Field modeField = new ViewModelHelper().getField(
								"com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.Currency",
								key);
						if (modeField != null) {
							columnName = modeField.getLabel();
						}
						if (!StringHelper.isEmpty(sb.toString()))
							sb.append(",");
						sb.append(columnName).append(value);
					}
					DatabaseExt.insertEntityCascade("default", dataEntity);
				}
				//this.addRecord(temp,"修改非规范法定大纲:" + checkprojectname + "_" + sb.toString()+ "", "修改", uuid);
			}
		}

	}

	@Bizlet
	public void updateInfoMationYLGD(DataObject data) {
		if (data == null)
			return;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());
		data.setString("datetime", dataTime);
		DataObject temp = DataObjectUtil.convertDataObject(data,
				"com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.PressurePipe", false);
		DatabaseUtil.updateEntity("default", temp);
		String currentuser = data.getString("currentuser");
		String currentreason = data.getString("currentreason");
//		String checkprojectname = data.getString("cname");
		String parms = data.getString("parms");
		String id = data.getString("uuid");
		temp.setString("creator", currentuser);
		temp.setString("datetime", dataTime);
		temp.setString("reason", currentreason);
		temp.setString("isdelete", "0");
		if (!StringHelper.isEmpty(parms)) {
			if ("remove".equals(parms)) {
				this.addRecord(temp, "删除专用检查计划:" + "_日常执行条目1条", "删除", id);
			} else if ("edit".equals(parms)) {
				StringBuilder sb = new StringBuilder();
				String columnName = "";
				String updata = data.getString("parmsjson");
				String uuid = UUID.randomUUID().toString().replaceAll("-", "");
				if (!StringHelper.isEmpty(updata)) {
					DataObject dataEntity = DataObjectUtil
							.createDataObject("com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.DailyEdit");
					dataEntity.set("uuid", uuid);
					dataEntity.setString("datetime", dataTime);
					dataEntity.setString("creator", currentuser);
					dataEntity.setString("reason", currentreason);
					dataEntity.set("editid", id);
					updata = "{" + updata + "}";
					JSONObject jsonObject = JSONObject.fromObject(updata);
					Iterator<String> keys = jsonObject.keys();
					while (keys.hasNext()) {
						String key = keys.next();
						String value = jsonObject.get(key).toString();
						dataEntity.set(key, value.split("改为")[1]);
						Field modeField = new ViewModelHelper()
								.getField(
										"com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.PressurePipe",
										key);
						if (modeField != null) {
							columnName = modeField.getLabel();
						}
						if (!StringHelper.isEmpty(sb.toString()))
							sb.append(",");
						sb.append(columnName).append(value);
					}
					DatabaseExt.insertEntityCascade("default", dataEntity);
				}
				//this.addRecord(temp,"修改非规范法定大纲:" + checkprojectname + "_" + sb.toString()+ "", "修改", uuid);
			}
		}

	}

	@Bizlet("")
	public void addInfoMation(DataObject  data,int type) {
		if (data == null)
			return;
		 
		String entityName = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.Currency";
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		DataObject temp = DataObjectUtil.convertDataObject(data, entityName,
				false);
		temp.setString("uuid", uuid);
		DatabaseExt.insertEntityCascade("default", temp);
//		String checkprojectname = temp.getString("type");
		//this.addRecord(temp, "新增非规范法定大纲:" + checkprojectname + "_日常执行条目1条","新增", uuid);
	}

	@Bizlet("")
	public void addInfoMation1(DataObject  data,int type) {
		if (data == null)
			return;
			String entityName = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.PressurePipe";
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			DataObject temp = DataObjectUtil.convertDataObject(data, entityName,
					false);
			temp.setString("uuid", uuid);
			DatabaseExt.insertEntityCascade("default", temp);
//			String checkprojectname = temp.getString("type");
		//this.addRecord(temp, "新增非规范法定大纲:" + checkprojectname + "_日常执行条目1条","新增", uuid);
	}

	@Bizlet("")
	public DataObject[] getProtypeAndPartsData2(String baseid, String crewid) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.getProtype2";

		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		DataObject[] orgs = new DataObject[typeDataObject.length];
		for (int i = 0; i < typeDataObject.length; i++) {
			orgs[i] = (DataObject) typeDataObject[i];
		}
		return orgs;
	}

	@Bizlet
	public Map<String, DataObject> getEditViewInforMation(String fieldName,
			String fieldValue, String editfieldName, String editfieldValue,
			String entity, String editentity) {
		if (StringHelper.isEmpty(fieldName) || StringHelper.isEmpty(fieldValue)
				|| StringHelper.isEmpty(editfieldName)
				|| StringHelper.isEmpty(editfieldValue)
				|| StringHelper.isEmpty(entity)
				|| StringHelper.isEmpty(editentity))
			return null;
		Map<String, DataObject> valueMap = new HashMap<String, DataObject>();
		DataObject dataEntity = DataObjectUtil.createDataObject(entity);
		DataObject editdataEntity = DataObjectUtil.createDataObject(editentity);
		dataEntity.setString(fieldName, fieldValue);
		editdataEntity.setString(editfieldName, editfieldValue);
		DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate(
				"default", dataEntity);
		DataObject[] editdataParms = DatabaseUtil.queryEntitiesByTemplate(
				"default", editdataEntity);
		if (dataParms.length > 0)
			valueMap.put("dataParms", dataParms[0]);
		if (editdataParms.length > 0)
			valueMap.put("editdataParms", editdataParms[0]);
		return valueMap;
	}

	@Bizlet("")
	public void huifu(String entityName, String primeryKeyValue) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("entityName", entityName);
		parmsMap.put("primeryKeyValue", primeryKeyValue);
		// TODO 自动生成的方法存根
		String sql = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.getProtype3";
		DatabaseExt.executeNamedSql("default", sql, parmsMap);
//		System.out.println(entityName + ":" + primeryKeyValue);
	}

	@Bizlet("")
	public void shanchu(String entityName, String primeryKeyValue) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("entityName", entityName);
		parmsMap.put("primeryKeyValue", primeryKeyValue);
		// TODO 自动生成的方法存根
		String sql = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.getProtype4";
		DatabaseExt.queryByNamedSql("default", sql, parmsMap);
//		System.out.println(entityName + ":" + primeryKeyValue);
	}
	@Bizlet("")
	public void logic(String entityName, String primeryKeyValue) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("entityName", entityName);
		parmsMap.put("primeryKeyValue", primeryKeyValue);
		// TODO 自动生成的方法存根
		String sql = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.logic";
		DatabaseExt.executeNamedSql("default", sql, parmsMap);
//		System.out.println(entityName + ":" + primeryKeyValue);
	}

}
