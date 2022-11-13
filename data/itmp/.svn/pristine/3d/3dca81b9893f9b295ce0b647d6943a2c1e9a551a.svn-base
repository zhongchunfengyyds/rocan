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
 * Title: 专用检查计划-核岛大修接口
 * Description: 专用检查计划-核岛大修接口
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
@Bizlet("")
public class NuclearIslandServiceImpl extends DASDaoSupport implements
		NuclearIslandService {

	/**
	 * 
	 */
	public NuclearIslandServiceImpl() {
		// TODO 自动生成的构造函数存根
	}
	@Bizlet("")
	public DataObject[] getProtypeAndPartsData(String baseid, String crewid) {

		// TODO 自动生成的方法存根
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getProtype";

		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		DataObject[] orgs = new DataObject[typeDataObject.length];
		for (int i = 0; i < typeDataObject.length; i++) {
			orgs[i] = (DataObject) typeDataObject[i];
		}
		return orgs;
	}

	@Bizlet
	public void addRecord(DataObject temp, String content, String type,String uuid) {
		DataObject temp1 = DataObjectUtil.convertDataObject(temp,
				"com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Tdgglvitae", false);
		temp1.setString("type", type);
		temp1.setString("content", content);
		temp1.setString("planid", temp.getString("uuid"));
		temp1.setString("ident", "专用计划大修执行条目");
		temp1.setString("editid", uuid);
		DatabaseExt.insertEntityCascade("default", temp1);
	}

	@Bizlet
	public void updateInfoMation(DataObject data) {
		
		if (data == null)return;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());
		 
		DataObject temp = DataObjectUtil.convertDataObject(data,"com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupport", false);
		DatabaseUtil.updateEntity("default", temp);
		String currentuser = data.getString("currentuser");
		String currentreason = data.getString("currentreason");
//		String checkprojectname = data.getString("cname");
		String parms = data.getString("parms");
		temp.setString("creator", currentuser);
		temp.setString("datetime", dataTime);
		temp.setString("reason", currentreason);
		String id = data.getString("uuid");
		temp.setString("isdelete", "0");
		if (!StringHelper.isEmpty(parms)) {
			if ("remove".equals(parms)) {this.addRecord(temp, "删除规范法定大纲:" + "_大修执行条目1条", "删除",id);
			} else if ("edit".equals(parms)) {
				StringBuilder sb = new StringBuilder();
				String columnName = "";
				String updata = data.getString("parmsjson");
				String uuid = UUID.randomUUID().toString().replaceAll("-", "");
				if (!StringHelper.isEmpty(updata)) {
					DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.PipelineSupportEdit");
					dataEntity.set("uuid", uuid);
					dataEntity.setString("datetime", dataTime);
					dataEntity.setString("creator", currentuser);
					dataEntity.setString("reason", currentreason);
					dataEntity.set("editid",id);
					//updata = "{" + updata + "}";
					JSONObject jsonObject = JSONObject.fromObject("{" + updata + "}");
					Iterator<String> keys=jsonObject.keys();  
					while(keys.hasNext()){
						String key=keys.next();
						String value = jsonObject.get(key).toString();
						dataEntity.set(key, value.split("改为")[1]);
						Field modeField = new ViewModelHelper().getField("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupport",key);
							 if(modeField != null){
									columnName = modeField.getLabel();
								}
								if(!StringHelper.isEmpty(sb.toString()))sb.append(",");
								sb.append(columnName).append(value);
							}
					DatabaseExt.insertEntityCascade("default", dataEntity);
						}
				//this.addRecord(temp,"修改规范法定大纲:"+checkprojectname+"_"+sb.toString()+"","修改",uuid);
			}
		}

	}

	@Bizlet
	public void updateInfoMationBOSS(DataObject data) {
		if (data == null)
			return;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());
		DataObject temp = DataObjectUtil.convertDataObject(data,
				"com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.BossHead", false);
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
				this.addRecord(temp, "删除规范法定大纲:" + "_大修执行条目1条", "删除",id);
			} else if ("edit".equals(parms)) {
				StringBuilder sb = new StringBuilder();
				String columnName = "";
				String updata = data.getString("parmsjson");
				String uuid = UUID.randomUUID().toString().replaceAll("-", "");
				if (!StringHelper.isEmpty(updata)) {
					DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.BossHeadEdit");
					dataEntity.set("uuid", uuid);
					dataEntity.setString("datetime", dataTime);
					dataEntity.setString("creator", currentuser);
					dataEntity.setString("reason", currentreason);
					dataEntity.set("editid",id);
					updata = "{" + updata + "}";
					JSONObject jsonObject = JSONObject.fromObject(updata);
					Iterator<String> keys=jsonObject.keys();  
					while(keys.hasNext()){
						String key=keys.next();
						String value = jsonObject.get(key).toString();
						dataEntity.set(key, value.split("改为")[1]);
						Field modeField = new ViewModelHelper().getField("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.BossHead",key);
							 if(modeField != null){
									columnName = modeField.getLabel();
								}
								if(!StringHelper.isEmpty(sb.toString()))sb.append(",");
								sb.append(columnName).append(value);
							}
					DatabaseExt.insertEntityCascade("default", dataEntity);
						}
				//this.addRecord(temp,"修改规范法定大纲:"+checkprojectname+"_"+sb.toString()+"","修改",uuid);
			}
		}

	}

	@Bizlet
	public void updateInfoMationFM(DataObject data) {
		if (data == null)
			return;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());
		DataObject temp = DataObjectUtil.convertDataObject(data,
				"com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Valve", false);
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
				this.addRecord(temp, "删除规范法定大纲:" 
						+ "_大修执行条目1条", "删除",id);
			} else if ("edit".equals(parms)) {
				StringBuilder sb = new StringBuilder();
				String columnName = "";
				String updata = data.getString("parmsjson");
				String uuid = UUID.randomUUID().toString().replaceAll("-", "");
				if (!StringHelper.isEmpty(updata)) {
					DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.ValveEdit");
					dataEntity.set("uuid", uuid);
					dataEntity.setString("datetime", dataTime);
					dataEntity.setString("creator", currentuser);
					dataEntity.setString("reason", currentreason);
					dataEntity.set("editid",id);
					updata = "{" + updata + "}";
					JSONObject jsonObject = JSONObject.fromObject(updata);
					Iterator<String> keys=jsonObject.keys();  
					while(keys.hasNext()){
						String key=keys.next();
						String value = jsonObject.get(key).toString();
						dataEntity.set(key, value.split("改为")[1]);
						Field modeField = new ViewModelHelper().getField("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Valve",key);
							 if(modeField != null){
									columnName = modeField.getLabel();
								}
								if(!StringHelper.isEmpty(sb.toString()))sb.append(",");
								sb.append(columnName).append(value);
							}
					DatabaseExt.insertEntityCascade("default", dataEntity);
						}
				//this.addRecord(temp,"修改规范法定大纲:"+checkprojectname+"_"+sb.toString()+"","修改",uuid);
			}
		}

	}

	@Bizlet
	public void updateInfoMationRQ(DataObject data) {
		if (data == null)
			return;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());
		DataObject temp = DataObjectUtil.convertDataObject(data,
				"com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container", false);
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
				this.addRecord(temp, "删除规范法定大纲:" + "_大修执行条目1条", "删除",id);
			} else if ("edit".equals(parms)) {
				StringBuilder sb = new StringBuilder();
				String columnName = "";
				String updata = data.getString("parmsjson");
				String uuid = UUID.randomUUID().toString().replaceAll("-", "");
				if (!StringHelper.isEmpty(updata)) {
					DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.ContainerEdit");
					dataEntity.set("uuid", uuid);
					dataEntity.setString("datetime", dataTime);
					dataEntity.setString("creator", currentuser);
					dataEntity.setString("reason", currentreason);
					dataEntity.set("editid",id);
					updata = "{" + updata + "}";
					JSONObject jsonObject = JSONObject.fromObject(updata);
					Iterator<String> keys=jsonObject.keys();  
					while(keys.hasNext()){
						String key=keys.next();
						String value = jsonObject.get(key).toString();
						dataEntity.set(key, value.split("改为")[1]);
						Field modeField = new ViewModelHelper().getField("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container",key);
							 if(modeField != null){
									columnName = modeField.getLabel();
								}
								if(!StringHelper.isEmpty(sb.toString()))sb.append(",");
								sb.append(columnName).append(value);
							}
					DatabaseExt.insertEntityCascade("default", dataEntity);
						}
				//this.addRecord(temp,"修改规范法定大纲:"+checkprojectname+"_"+sb.toString()+"","修改",uuid);
			}
		}

	}

	@Bizlet
	public void updateInfoMationCRG(DataObject data) {
		if (data == null)
			return;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());
		DataObject temp = DataObjectUtil.convertDataObject(data,
				"com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube", false);
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
				this.addRecord(temp, "删除规范法定大纲:" 
						+ "_大修执行条目1条", "删除",id);
			} else if ("edit".equals(parms)) {
				StringBuilder sb = new StringBuilder();
				String columnName = "";
				String updata = data.getString("parmsjson");
				String uuid = UUID.randomUUID().toString().replaceAll("-", "");
				if (!StringHelper.isEmpty(updata)) {
					DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.TubeEdit");
					dataEntity.set("uuid", uuid);
					dataEntity.setString("datetime", dataTime);
					dataEntity.setString("creator", currentuser);
					dataEntity.setString("reason", currentreason);
					dataEntity.set("editid",id);
					updata = "{" + updata + "}";
					JSONObject jsonObject = JSONObject.fromObject(updata);
					Iterator<String> keys=jsonObject.keys();  
					while(keys.hasNext()){
						String key=keys.next();
						String value = jsonObject.get(key).toString();
						dataEntity.set(key, value.split("改为")[1]);
						Field modeField = new ViewModelHelper().getField("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube",key);
							 if(modeField != null){
									columnName = modeField.getLabel();
								}
								if(!StringHelper.isEmpty(sb.toString()))sb.append(",");
								sb.append(columnName).append(value);
							}
					DatabaseExt.insertEntityCascade("default", dataEntity);
						}
							 
							 
				//this.addRecord(temp,"修改规范法定大纲:"+checkprojectname+"_"+sb.toString()+"","修改",uuid);
			}
		}

	}

	@Bizlet
	public void updateInfoMationZC(DataObject data) {
		if (data == null)
			return;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());
		DataObject temp = DataObjectUtil.convertDataObject(data,
				"com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Support", false);
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
				this.addRecord(temp, "删除规范法定大纲:" 
						+ "_大修执行条目1条", "删除",id);
			} else if ("edit".equals(parms)) {
				StringBuilder sb = new StringBuilder();
				String columnName = "";
				String updata = data.getString("parmsjson");
				String uuid = UUID.randomUUID().toString().replaceAll("-", "");
				if (!StringHelper.isEmpty(updata)) {
					DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.SupportEdit");
					dataEntity.set("uuid", uuid);
					dataEntity.setString("datetime", dataTime);
					dataEntity.setString("creator", currentuser);
					dataEntity.setString("reason", currentreason);
					dataEntity.set("editid",id);
					updata = "{" + updata + "}";
					JSONObject jsonObject = JSONObject.fromObject(updata);
					Iterator<String> keys=jsonObject.keys();  
					while(keys.hasNext()){
						String key=keys.next();
						String value = jsonObject.get(key).toString();
						dataEntity.set(key, value.split("改为")[1]);
							 Field modeField = new ViewModelHelper().getField("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.SupportEdit",key);
							 if(modeField != null){
									columnName = modeField.getLabel();
								}
								if(!StringHelper.isEmpty(sb.toString()))sb.append(",");
								sb.append(columnName).append(value);
							}
					DatabaseExt.insertEntityCascade("default", dataEntity);
						}
				//this.addRecord(temp,"修改规范法定大纲:"+checkprojectname+"_"+sb.toString()+"","修改",uuid);
			}
		}

	}

	public void deleteRecoversData(DataObject[] data) {
		// TODO 自动生成的方法存根
		if (data == null)
			return;
		String ids = data[0].getString("uuid");
		if (!StringHelper.isEmpty(ids)) {
			String[] idArr = ids.split(",");
			for (int i = 0; i < idArr.length; i++) {
				String id = idArr[i];
				String address = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.deleteRecoversData";
				DatabaseExt.queryByNamedSql("default", address, id);
			}
		}

	}

	public void addzyjcjh(DataObject[] data) {

		if (data == null)return;
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		DataObject temp = DataObjectUtil.convertDataObject(data[0],"com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupport", false);
		temp.setString("uuid", uuid);
		DatabaseExt.insertEntityCascade("default", temp);
//		String checkprojectname = temp.getString("type");
		
		//this.addRecord(temp, "专用检查计划:" + checkprojectname + "_大修执行条目1条", "新增",uuid);

	}

	@Bizlet("")
	public DataObject[] getProtypeAndPartsData1(String baseid, String crewid) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getProtype1";

		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		DataObject[] orgs = new DataObject[typeDataObject.length];
		for (int i = 0; i < typeDataObject.length; i++) {
			orgs[i] = (DataObject) typeDataObject[i];
		}
		return orgs;
	}

	@Bizlet("")
	public DataObject[] getProtypeAndPartsData2(String baseid, String crewid) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getProtype2";

		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		DataObject[] orgs = new DataObject[typeDataObject.length];
		for (int i = 0; i < typeDataObject.length; i++) {
			orgs[i] = (DataObject) typeDataObject[i];
		}
		return orgs;
	}

	@Bizlet("")
	public DataObject[] getProtypeAndPartsData3(String baseid, String crewid) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getProtype3";

		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		DataObject[] orgs = new DataObject[typeDataObject.length];
		for (int i = 0; i < typeDataObject.length; i++) {
			orgs[i] = (DataObject) typeDataObject[i];
		}
		return orgs;
	}

	@Bizlet("")
	public DataObject[] getProtypeAndPartsData4(String baseid, String crewid) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getProtype4";

		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		DataObject[] orgs = new DataObject[typeDataObject.length];
		for (int i = 0; i < typeDataObject.length; i++) {
			orgs[i] = (DataObject) typeDataObject[i];
		}
		return orgs;
	}

	@Bizlet("")
	public DataObject[] getProtypeAndPartsData5(String baseid, String crewid) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getProtype5";

		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		DataObject[] orgs = new DataObject[typeDataObject.length];
		for (int i = 0; i < typeDataObject.length; i++) {
			orgs[i] = (DataObject) typeDataObject[i];
		}
		return orgs;
	}

	@Bizlet("")
	public DataObject[] getProtypeAndPartsData6(String baseid, String crewid) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.query";

		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		DataObject[] orgs = new DataObject[typeDataObject.length];
		for (int i = 0; i < typeDataObject.length; i++) {
			orgs[i] = (DataObject) typeDataObject[i];
		}
		return orgs;
	}

	 
	public void addInfoMationGD(DataObject data, int type) {
		if (data == null)
			return;
		String entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit";
		if (1 == type) { //存中间表
			entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupport";
		}
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		DataObject temp = DataObjectUtil.convertDataObject(data, entityName,false);
		temp.setString("uuid", uuid);
		DatabaseExt.insertEntityCascade("default", temp);
//		String checkprojectname = temp.getString("type");
		if (1 != type) {
	//	this.addRecord(temp, "新增规范法定大纲:" + checkprojectname + "_大修执行条目1条", "新增",uuid);
	}
	}
	@Bizlet("")
	public void addInfoMationFM(DataObject data, int type) {
		if (data == null)return;
		String entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit";
		if (1 == type) { //存中间表
			entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Valve";
		}
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		DataObject temp = DataObjectUtil.convertDataObject(data, entityName,false);
		temp.setString("uuid", uuid);
		DatabaseExt.insertEntityCascade("default", temp);
	 
//	String checkprojectname = temp.getString("type");
	if (1 != type) {
	//	this.addRecord(temp, "新增规范法定大纲:" + checkprojectname + "_大修执行条目1条", "新增",uuid);
	}
	}
	@Bizlet("")
	public void addInfoMationRQ(DataObject data, int type) {
		if (data == null)
			return;
		String entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit";
		if (1 == type) { //存中间表
			entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container";
		}
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		DataObject temp = DataObjectUtil.convertDataObject(data, entityName,false);
		temp.setString("uuid", uuid);
		DatabaseExt.insertEntityCascade("default", temp);
//		String checkprojectname = temp.getString("type");
		if (1 != type) {
		//this.addRecord(temp, "新增规范法定大纲:" + checkprojectname + "_大修执行条目1条", "新增",uuid);
	}
	}
	@Bizlet("")
	public void addInfoMationCRG(DataObject data, int type) {
		if (data == null)
			return;
		String entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit";
		if (1 == type) { //存中间表
			entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube";
		}
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		DataObject temp = DataObjectUtil.convertDataObject(data, entityName,false);
		temp.setString("uuid", uuid);
		DatabaseExt.insertEntityCascade("default", temp);
		String checkprojectname = temp.getString("type");
		if (1 != type) {
		this.addRecord(temp, "新增规范法定大纲:" + checkprojectname + "_大修执行条目1条", "新增",uuid);
	}
	}
	@Bizlet("")
	public void addInfoMationZC(DataObject data, int type) {
		if (data == null)
			return;
		String entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit";
		if (1 == type) { //存中间表
			entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Support";
		}
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		DataObject temp = DataObjectUtil.convertDataObject(data, entityName,false);
		temp.setString("uuid", uuid);
		DatabaseExt.insertEntityCascade("default", temp);
//		String checkprojectname = temp.getString("type");
		if (1 != type) {
	//	this.addRecord(temp, "新增规范法定大纲:" + checkprojectname + "_大修执行条目1条", "新增",uuid);
	}
	}
	@Bizlet("")
	public void addInfoMationBOSS(DataObject data, int type) {
		if (data == null)
			return;
		String entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit";
		if (1 == type) { //存中间表
			entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.BossHead";
		}
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		DataObject temp = DataObjectUtil.convertDataObject(data, entityName,false);
		temp.setString("uuid", uuid);
		DatabaseExt.insertEntityCascade("default", temp);
//		 String checkprojectname = temp.getString("type");
		 if (1 != type) {
		// this.addRecord(temp, "新增规范法定大纲:" + checkprojectname + "_大修执行条目1条", "新增",uuid);
	}
	}
	@Bizlet
	public DataObject[] getStatus(String type) {
		// TODO 自动生成的方法存根
		String sql = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getStatus";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, type);
	}

	@Bizlet
	public Map<String, Object> getBaseCircle(String baseid, String crewid) {
		// TODO 自动生成的方法存根
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getBaseCircle";
		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", address, parmsMap);
		Map<String, Object> valueMap = new HashMap<String, Object>();
		if (typeDataObject != null && typeDataObject.length > 0) {
			String start = ((DataObject) typeDataObject[0]).getString("cstart");
			String end = ((DataObject) typeDataObject[0]).getString("cend");
			valueMap.put("start", start);
			valueMap.put("end", end);
			valueMap.put("sucess", true);
		} else {
			valueMap.put("sucess", false);
		}
		return valueMap;
	}

	@Bizlet
	public Map<String, Object> getrcBaseCircle(String baseid, String crewid) {
		// TODO 自动生成的方法存根
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getrcBaseCircle";
		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql("default", address, parmsMap);
		Map<String, Object> valueMap = new HashMap<String, Object>();
		if (typeDataObject != null && typeDataObject.length > 0) {
			String start = ((DataObject) typeDataObject[0]).getString("rcstart");
			String end = ((DataObject) typeDataObject[0]).getString("rcend");
			valueMap.put("start", start);
			valueMap.put("end", end);
			valueMap.put("sucess", true);
		} else {
			valueMap.put("sucess", false);
		}
		return valueMap;
	}

	 
	@Bizlet
	public Map<String, DataObject> getEditViewInforMation(String fieldName,String fieldValue,String editfieldName,String editfieldValue,String entity,String editentity){
		if(StringHelper.isEmpty(fieldName) || StringHelper.isEmpty(fieldValue) 
				|| StringHelper.isEmpty(editfieldName) || StringHelper.isEmpty(editfieldValue)
				|| StringHelper.isEmpty(entity) || StringHelper.isEmpty(editentity))return null;
		Map<String, DataObject> valueMap = new HashMap<String, DataObject>();
		DataObject dataEntity = DataObjectUtil.createDataObject(entity);
		DataObject editdataEntity = DataObjectUtil.createDataObject(editentity);
		dataEntity.setString(fieldName, fieldValue);
		editdataEntity.setString(editfieldName, editfieldValue);
		DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate("default", dataEntity);
		DataObject[] editdataParms = DatabaseUtil.queryEntitiesByTemplate("default", editdataEntity);
		if(dataParms.length >0)valueMap.put("dataParms", dataParms[0]);
		if(editdataParms.length >0)valueMap.put("editdataParms", editdataParms[0]);
		return valueMap;
	}
	@Bizlet("")
	public void huifu(String entityName,String primeryKeyValue) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("entityName", entityName);
		parmsMap.put("primeryKeyValue", primeryKeyValue);
		// TODO 自动生成的方法存根
		String sql = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.recovery";
		DatabaseExt.executeNamedSql("default", sql, parmsMap);
//			System.out.println(entityName+":"+primeryKeyValue);
	}
	@Bizlet("")
	public void logic(String entityName,String primeryKeyValue) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("entityName", entityName);
		parmsMap.put("primeryKeyValue", primeryKeyValue);
		// TODO 自动生成的方法存根
		String sql = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.logic";
		DatabaseExt.executeNamedSql("default", sql, parmsMap);
//			System.out.println(entityName+":"+primeryKeyValue);
	}
	@Bizlet("")
	public void shanchu(String entityName,String primeryKeyValue) {
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("entityName", entityName);
		parmsMap.put("primeryKeyValue", primeryKeyValue);
		// TODO 自动生成的方法存根
		String sql = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.deleteall";
		DatabaseExt.queryByNamedSql("default", sql, parmsMap);
//			System.out.println(entityName+":"+primeryKeyValue);
	}
	//计划完成
	@Bizlet
	public void planComplate(DataObject[] parms,String processInstId){
		if(parms == null) return;
		for (int i = 0; i < parms.length; i++) {
			DataObject dataObject = parms[i];
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			dataObject.setString("id", uuid);
			DataObject temp  = DataObjectUtil.convertDataObject(dataObject, "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit", false);
			temp.setString("flag", "4");
			DatabaseExt.insertEntityCascade("default", temp);
		}
	}
	@Bizlet
	public void planCancel(DataObject[] parms,String processInstId){
		if(parms == null) return;
		for (int i = 0; i < parms.length; i++) {
			DataObject dataObject = parms[i];
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			dataObject.setString("id", uuid);
			DataObject temp  = DataObjectUtil.convertDataObject(dataObject, "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit", false);
			temp.setString("processInstId", processInstId);
			temp.setString("flag", "3");
			DatabaseExt.insertEntityCascade("default", temp);
		}
	}
	@Bizlet
	public DataObject[] getInforMation(DataObject[] data){
		if(data == null) return null;
		String fieldName = data[0].getString("fieldName");//数据id
		String fieldValue = data[0].getString("fieldValue");//数据id
		String entity = data[0].getString("entity");//实体地址
		DataObject dataEntity = DataObjectUtil.createDataObject(entity);
		dataEntity.setString(fieldName, fieldValue);
		DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate("default", dataEntity);
		return dataParms;
	}

}
