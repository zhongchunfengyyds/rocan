/**
 * 
 */
package com.cgn.itmp.outlineandplan.outline;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import net.sf.json.JSONObject;

import org.apache.commons.lang.ArrayUtils;

import com.cgn.itmp.basecommon.BaseJdglUtil;
import com.cgn.itmp.basecommon.CommonUtil;
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
 * Title: 程序的中文名称
 * Description: 程序功能的描述
 * </pre>
 * @author Sun
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
@Bizlet("ExecutiveEntriesServiceImpl")
public class ExecutiveEntriesServiceImpl extends DASDaoSupport implements
		ExecutiveEntriesService {

	/**
	 * 
	 */
	public ExecutiveEntriesServiceImpl() {
		// TODO 自动生成的构造函数存根
	}
	
	/* （非 Javadoc）
	 */
	@Bizlet
	public DataObject[] getProtypeAndPartsData(String baseid,String crewid) {
		// TODO 自动生成的方法存根
		String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getProtype";
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", address, parmsMap);
		if(typeDataObject.length > 1){
			DataObject[] orgs = new DataObject[typeDataObject.length];
			for(int i=0; i<typeDataObject.length; i++){
				orgs[i] = (DataObject)typeDataObject[i];
			}
			return orgs;
		}
		return null;
	}

	@Bizlet
	public Map<String, Object> getBaseCircle(String baseid,String crewid) {
		// TODO 自动生成的方法存根
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getBaseCircle";
		Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", address, parmsMap);
		Map<String, Object> valueMap = new HashMap<String, Object>();
		if(typeDataObject != null && typeDataObject.length>0){
			String start = ((DataObject) typeDataObject[0]).getString("cstart");
			String end = ((DataObject) typeDataObject[0]).getString("cend");
			valueMap.put("start", start);
			valueMap.put("end", end);
			valueMap.put("sucess", true);
		}else{
			valueMap.put("sucess", false);
		}
		return valueMap;
	}

	public void addInfoMation(DataObject data) {
		if(data == null) return;
		String id = UUID.randomUUID().toString().replaceAll("-", "");
		DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit", false);
		temp.setString("flag", "1");
		temp.setString("id", id);
		DatabaseExt.insertEntityCascade("default", temp);
//		if(1==2){
//			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
//			DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity", false);
//			temp.setString("id", uuid);
//			DatabaseExt.insertEntityCascade("default", temp);
//		}else{
//			String id = UUID.randomUUID().toString().replaceAll("-", "");
//			DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit", false);
//			String protype = data.getString("protype");
//			temp.setString("flag", "1");
//			temp.setString("id", id);
//			DatabaseExt.insertEntityCascade("default", temp);
//			//this.addRecordInfoMation(temp,"新增规范法定大纲:"+protype+"_大修执行条目1条","新增",id);
//		}
	}

	
	public void addRecordInfoMation(DataObject temp,String content,String type,String uuid){
		DataObject temp1  = DataObjectUtil.convertDataObject(temp, "com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Tdgglvitae", false);
		temp1.setString("type", type);
		temp1.setString("content", content);
		temp1.setString("planid", temp.getString("id"));
		temp1.setString("ident", "大修执行条目");
		temp1.setString("editid", uuid);
		DatabaseExt.insertEntityCascade("default", temp1);
	}

	public void deleteRecoversData(DataObject[] data) {
		if(data == null) return;
		String ids = data[0].getString("id");
		if(!StringHelper.isEmpty(ids)){
			String[] idArr = ids.split(",");
			for (int i = 0; i < idArr.length; i++) {
				String id = idArr[i];
				String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.deleteRecoversData";
				DatabaseExt.queryByNamedSql("default", address, id);
			}
		}
	}
	/**
	 * 编辑保存
	 * @param data
	 */
	public void updateInfoMation(DataObject data) {
		if(data == null) return;
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());
		DataObject temp = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity", false);
//		if(1==2){
//			DatabaseUtil.updateEntity("default", temp);
//		}
		
		String currentuser = data.getString("currentuser");
		String currentreason = data.getString("currentreason");
		String protype = data.getString("ptype");
		String parms = data.getString("parms");
		String id = data.getString("id");
		temp.setString("creator", currentuser);
		temp.setString("datetime", dataTime);
		temp.setString("reason", currentreason);
		temp.setString("isdelete", "0");
		if(!StringHelper.isEmpty(parms)){
			if("remove".equals(parms)){
				this.addRecordInfoMation(temp,"删除规范法定大纲:"+protype+"_大修执行条目1条","删除",id);
			}else if("edit".equals(parms)){
				StringBuilder sb = new StringBuilder();
				String columnName = "";
				String updata = data.getString("parmsjson");
				String uuid = UUID.randomUUID().toString().replaceAll("-", "");
				if(!StringHelper.isEmpty(updata)){
					DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit");
					dataEntity.set("id", uuid);
					dataEntity.setString("datetime", dataTime);
					dataEntity.setString("creator", currentuser);
					dataEntity.setString("reason", currentreason);
					dataEntity.set("editid",id);
					dataEntity.set("flag","2");
					updata = "{" + updata + "}";
					JSONObject jsonObject = JSONObject.fromObject(updata);
					Iterator<String> keys=jsonObject.keys();  
					while(keys.hasNext()){
						String key=keys.next();
						String value = jsonObject.get(key).toString();
						dataEntity.set(key, value.split("改为")[1]);
						Field modeField = new ViewModelHelper().getField("com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity", key);
						if(modeField != null){
							columnName = modeField.getLabel();
						}
						if(!StringHelper.isEmpty(sb.toString()))sb.append(",");
						sb.append(columnName).append(value);
					}
					DatabaseExt.insertEntityCascade("default", dataEntity);
				}
				//this.addRecordInfoMation(temp,"修改规范法定大纲:"+protype+"_"+sb.toString()+"","修改",uuid);
			}
		}
		
	}
	
	/**
	 * 大修执行条目升版
	 * @param data
	 */
	public void addEditionInfoMation(DataObject data){
		if(data == null) return;
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity", false);
		temp.setString("id", uuid);
		DatabaseExt.insertEntityCascade("default", temp);
		String number = this.getCountForEdition();
		char merber = charToUpperCase(this.numToLetter(number));
		char merber1 = charToUpperCase(this.numToLetter(String.valueOf(Integer.parseInt(number)+1)));
		String msg = "规范法定大纲由"+merber+"版升为"+merber1+"版";
		this.addRecordInfoMation(temp,msg,"升版",uuid);
	}
	
	private char charToUpperCase(char ch){  
        if(ch <= 122 && ch >= 97){  
            ch -= 32;  
        }  
        return ch;  
    }  

	@Bizlet
	public String getCountForEdition() {
		// TODO 自动生成的方法存根
		String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getCountForEdition";
		Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", address, null);
		String number = "0";
		if(typeDataObject.length>0){
			number = ((DataObject) typeDataObject[0]).getString("CNT");
		}
		return number;
	}
	
	public char numToLetter(String input) {
		char letter = 0;
		for (byte b : input.getBytes()) {
			letter = (char) (b + 48);
		}
		return letter;
	}
	
	@Bizlet
	public Map<String,Object> synchronous(DataObject data){
		if(data == null) return null;
		List<Map<String,Object>> valueList = new ArrayList<Map<String,Object>>();
		Map<String,Object> recordMap = new HashMap<String, Object>();
		Map<String,Object> valueMap = new HashMap<String, Object>();
		String detailed = data.getString("detailed");
		String crew = data.getString("crew");
		String base = data.getString("base");
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("detailed", detailed);
		parmsMap.put("crew", crew);
		String uuid = data.getString("uuid");
		if(StringHelper.isEmpty(uuid)) uuid = data.getString("id");
		Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getJCJHdata", parmsMap);
		
		if(typeDataObject != null && typeDataObject.length>0){
			for (int i = 0; i < typeDataObject.length; i++) {
				for (int j = 1; j <= 60; j++) {
					String column = "C" + j;
					String cdata = ((DataObject) typeDataObject[i]).getString(column);
					if(!StringHelper.isEmpty(cdata)){
						if(valueMap != null && valueList.size() > 0){
							String columndata = StringHelper.isEmpty((String)valueMap.get(column)) ?cdata:(String) valueMap.get(column)+ "," + cdata;
							valueMap.put(column, columndata);
						}else{
							valueMap.put(column, cdata);
						}
					}
				}
				valueList.add(valueMap);
			}
			Map<String, Object> stateMap = this.setStateAndUpdateData(valueMap,base);
			if(stateMap != null && stateMap.size()>0){
				DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity");
				for (int i = 1; i <= 60; i++) {
					dataEntity.setString("c"+i, null);
					Iterator<Map.Entry<String, Object>> it = stateMap.entrySet().iterator();
					while (it.hasNext()) {
						Map.Entry<String, Object> entry = it.next();
					    String key = (String) entry.getKey();
					    String value = (String) entry.getValue();
					    if(("C"+i).equals(key)){
					    	dataEntity.setString("c"+i, value);
					    }
					}
				}
				dataEntity.setString("id", uuid);
				DatabaseUtil.updateEntity("default", dataEntity);
				recordMap.put("success", true);
			}
		}else{
			recordMap.put("success", false);
		}
		return recordMap;
	}
	
	/**
	 * 匹配同步状态
	 * @param valueMap
	 * @param baseid
	 * @return
	 */
	public Map<String, Object> setStateAndUpdateData(Map<String,Object> valueMap,String baseid){
		Map<String, Object> stateMap = new HashMap<String, Object>();
		CommonUtil commonUtil = new CommonUtil();
		if(valueMap != null && valueMap.size() > 0){
			Iterator<Map.Entry<String, Object>> it = valueMap.entrySet().iterator();
			if("86".equals(baseid)){//台山基地
				while (it.hasNext()) {
				    Map.Entry<String, Object> entry = it.next();
				    String key = (String) entry.getKey();
				    String value = (String) entry.getValue();
				    String[] valueArr = value.split(",");
				    valueArr = this.removal(valueArr);
				    if(valueArr.length >= 3){
				    	stateMap.put(key, ArrayUtils.toString(valueArr, ",").substring(1, ArrayUtils.toString(valueArr, ",").length()-1));
				    }else if(valueArr.length == 1){
				    	stateMap.put(key, valueArr[0]);
				    }else if(valueArr.length == 2){
				    	if(valueArr[0].startsWith("C")){//C
				    		if(!valueArr[1].startsWith("C")){
				    			stateMap.put(key, ArrayUtils.toString(valueArr, ",").substring(1, ArrayUtils.toString(valueArr, ",").length()-1));
				    		}else{
				    			Map<String, Object> map = commonUtil.getStatus(valueArr, key, "C");
						    	stateMap.putAll(map);
				    		}
				    	}else if(valueArr[0].startsWith("P")){//P
				    		if(!valueArr[1].startsWith("P")){
				    			stateMap.put(key, ArrayUtils.toString(valueArr, ",").substring(1, ArrayUtils.toString(valueArr, ",").length()-1));
				    		}else{
				    			Map<String, Object> map = commonUtil.getStatus(valueArr, key, "P");
					    		stateMap.putAll(map);
				    		}
				    	}else if(valueArr[0].startsWith("S")){//S
				    		if(!valueArr[1].startsWith("S")){
				    			stateMap.put(key, ArrayUtils.toString(valueArr, ",").substring(1, ArrayUtils.toString(valueArr, ",").length()-1));
				    		}else{
				    			Map<String, Object> map = commonUtil.getStatus(valueArr, key, "S");
					    		stateMap.putAll(map);
				    		}
				    	}else if(valueArr[0].startsWith("E")){//E
				    		if(!valueArr[1].startsWith("E")){
				    			stateMap.put(key, ArrayUtils.toString(valueArr, ",").substring(1, ArrayUtils.toString(valueArr, ",").length()-1));
				    		}else{
				    			Map<String, Object> map = commonUtil.getStatus(valueArr, key, "E");
					    		stateMap.putAll(map);
				    		}
				    	}else if(valueArr[0].startsWith("D")){//D
				    		if(!valueArr[1].startsWith("D")){
				    			stateMap.put(key, ArrayUtils.toString(valueArr, ",").substring(1, ArrayUtils.toString(valueArr, ",").length()-1));
				    		}else{
				    			Map<String, Object> map = commonUtil.getStatus(valueArr, key, "D");
					    		stateMap.putAll(map);
				    		}
				    	}
			    	}
			    }
			}else{//其他基地
				while (it.hasNext()) {
				    Map.Entry<String, Object> entry = it.next();
				    String key = (String) entry.getKey();
				    String value = (String) entry.getValue();
				    String[] valueArr = value.split(",");
				    valueArr = this.removal(valueArr);
				    if(valueArr.length >= 3){
				    	stateMap.put(key, ArrayUtils.toString(valueArr, ",").substring(1, ArrayUtils.toString(valueArr, ",").length()-1));
				    }else if(valueArr.length == 1){
				    	stateMap.put(key, valueArr[0]);
				    }else if(valueArr.length == 2){
				    	if(valueArr[0].startsWith("P")){
				    		if(!valueArr[1].startsWith("P")){
				    			stateMap.put(key, ArrayUtils.toString(valueArr, ",").substring(1, ArrayUtils.toString(valueArr, ",").length()-1));
				    		}else if("P".equals(valueArr[0])){
				    			if("PF".equals(valueArr[1])){
			    					stateMap.put(key, "P,PF");
			    				}else{
			    					stateMap.put(key, "P");
			    				}
				    		}else if("PF".equals(valueArr[0])){
			    				if("P".equals(valueArr[1])){
			    					stateMap.put(key, "P,PF");
			    				}else{
			    					stateMap.put(key, "PF");
			    				}
			    			}else if("PC".equals(valueArr[0])){
			    				if("PF".equals(valueArr[1])){
			    					stateMap.put(key, "PF");
			    				}else{
			    					stateMap.put(key, "P");
			    				}
			    			}
				    	}else if(valueArr[0].startsWith("S")){//S
				    		if(!valueArr[1].startsWith("S")){
				    			stateMap.put(key, ArrayUtils.toString(valueArr, ",").substring(1, ArrayUtils.toString(valueArr, ",").length()-1));
				    		}else if("S".equals(valueArr[0])){
			    				if("SF".equals(valueArr[1])){
			    					stateMap.put(key, "S,SF");
			    				}else{
			    					stateMap.put(key, "S");
			    				}
			    			}else if("SF".equals(valueArr[0])){
			    				if("S".equals(valueArr[1])){
			    					stateMap.put(key, "S,SF");
			    				}else{
			    					stateMap.put(key, "SF");
			    				}
			    			}else if("SC".equals(valueArr[0])){
			    				if("SF".equals(valueArr[1])){
			    					stateMap.put(key, "SF");
			    				}else{
			    					stateMap.put(key, "S");
			    				}
			    			}
				    	}
				    }
			    }
			}
		}
		return stateMap;
	}
	
	
	public String getState(String one , String two){
		if(one.equals(two))return one;
		if("P".equals(one) || "S".equals(one) || "P".equals(two) || "S".equals(two)){
			return one;
		}
		
		return "";
	}
	
	public String[] removal(String[] arr){
        Map<String, Object> map = new HashMap<String, Object>();
        for (String str : arr) {
            map.put(str, str);
        }
        //返回一个包含所有对象的指定类型的数组
        String[] newArrStr =  map.keySet().toArray(new String[1]);
		return newArrStr;
    }
	
	/**
	 * 获取基地状态
	 * @param type 基地类型 台山或其他
	 * @return
	 */
	@Bizlet
	public DataObject[] getStatus(String type) {
		// TODO 自动生成的方法存根
		String sql="com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getStatus";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, type);
	}
	
	@Bizlet
	public DataObject[] pitchonInforMation(String ids){
		String sql="com.cgn.itmp.outlineandplan.outline.common.dxzxtm.pitchonInforMation";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, null);
	}
	
	@Bizlet
	public void createNDJH(DataObject[] data){
		if(data == null)return;
		String baseid = data[0].getString("baseid");//基地
		String crewid = data[0].getString("crewid");//机组
		String lc = data[0].getString("lc");//轮次
		String ident = data[0].getString("ident");//标识
		String username = data[0].getString("username");//生成人
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());//生成时间
		if(StringHelper.isEmpty(baseid) || StringHelper.isEmpty(crewid)) return;
		BaseJdglUtil baseJdglUtil = new BaseJdglUtil();
		String jdname = baseJdglUtil.getJdnameByid(baseid);
		String jzname = baseJdglUtil.getJznameByid(crewid);
		String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getNDJHTZ";
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		parmsMap.put("lc", lc);
		String uuid = "";
		Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", address, parmsMap);
		if(typeDataObject != null && typeDataObject.length > 0){
			DataObject jhdata = (DataObject) typeDataObject[0];
			String id = jhdata.getString("id");
			address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.delNDJHTZ";
			DatabaseExt.queryByNamedSql("default", address, id);
			uuid = id;
		}else{
			String ndplanname = jdname + "核电站"+jzname.substring(1,jzname.length())+"号机组核岛部件"+lc+"轮次大修计划";
			uuid = UUID.randomUUID().toString().replaceAll("-","");
			DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.PlanEntity");
			dataEntity.setString("id", uuid);
			dataEntity.setString("ndplan", ndplanname);
			dataEntity.setString("record", "详细");
			dataEntity.setString("creater", username);
			dataEntity.setString("creatdate", dataTime);
			dataEntity.setString("base", baseid);
			dataEntity.setString("crew", crewid);
			dataEntity.setString("lc", lc);
			DatabaseExt.insertEntityCascade("default", dataEntity);
		}
		//生成记录
		String jlid = UUID.randomUUID().toString().replaceAll("-","");
		DataObject jldataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaulDetail.PlanRecord");
		jldataEntity.setString("id", jlid);
		jldataEntity.setString("uuid", uuid);
		jldataEntity.setString("creater", username);
		jldataEntity.setString("creatdate", dataTime);
		jldataEntity.setString("jd", baseid);
		jldataEntity.setString("jz", crewid);
		jldataEntity.setString("lc", lc);
		jldataEntity.setString("ident", ident);
		if(typeDataObject != null && typeDataObject.length > 0)jldataEntity.setString("record", "查看");
		DatabaseExt.insertEntityCascade("default", jldataEntity);
		
		Map<String, Object> parmsMap2 = new HashMap<String, Object>();
		parmsMap2.put("lc", lc);
		parmsMap2.put("uuid", uuid);
		parmsMap2.put("baseid", baseid);
		parmsMap2.put("crewid", crewid);
		//生成十年计划
		DatabaseExt.executeNamedSql("default", "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.createNDJHDXSNJH", parmsMap2);
		//生成大纲数据
		DatabaseExt.executeNamedSql("default", "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.createNDJHDXDG", parmsMap2);
		//生成专用数据
		DatabaseExt.executeNamedSql("default", "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.createNDJHDXZY", parmsMap2);
	}
	
	
	
	@Bizlet
	public void createNDJHRC(DataObject[] data){
		if(data == null)return;
		String baseid = data[0].getString("baseid");//基地
		String crewid = data[0].getString("crewid");//机组
		String lc = data[0].getString("lc");//轮次
		String ident = data[0].getString("ident");//标识
		String username = data[0].getString("username");//生成人
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());//生成时间
		if(StringHelper.isEmpty(baseid) || StringHelper.isEmpty(crewid)) return;
		BaseJdglUtil baseJdglUtil = new BaseJdglUtil();
		String jdname = baseJdglUtil.getJdnameByid(baseid);
		String jzname = baseJdglUtil.getJznameByid(crewid);
		String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getNDJHRCTZ";
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		parmsMap.put("lc", lc);
		String uuid = "";
		Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", address, parmsMap);
		if(typeDataObject != null && typeDataObject.length > 0){
			DataObject jhdata = (DataObject) typeDataObject[0];
			String id = jhdata.getString("id");
			address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.delNDJHRCTZ";
			DatabaseExt.queryByNamedSql("default", address, id);
			uuid = id;
		}else{
			String ndplanname = jdname + "核电站"+jzname.substring(1,jzname.length())+"号机组核岛部件"+lc+"年度日常计划";
			uuid = UUID.randomUUID().toString().replaceAll("-","");
			DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.annual.NuclearIslandDaily.PlanEntity");
			dataEntity.setString("id", uuid);
			dataEntity.setString("ndplan", ndplanname);
			dataEntity.setString("record", "详细");
			dataEntity.setString("creater", username);
			dataEntity.setString("creatdate", dataTime);
			dataEntity.setString("base", baseid);
			dataEntity.setString("crew", crewid);
			dataEntity.setString("lc", lc);
			DatabaseExt.insertEntityCascade("default", dataEntity);
		}
		//生成记录
		String jlid = UUID.randomUUID().toString().replaceAll("-","");
		DataObject jldataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaulDetail.PlanRecord");
		jldataEntity.setString("id", jlid);
		jldataEntity.setString("uuid", uuid);
		jldataEntity.setString("creater", username);
		jldataEntity.setString("creatdate", dataTime);
		jldataEntity.setString("jd", baseid);
		jldataEntity.setString("jz", crewid);
		jldataEntity.setString("lc", lc);
		jldataEntity.setString("ident", ident);
		if(typeDataObject != null && typeDataObject.length > 0)jldataEntity.setString("record", "查看");
		DatabaseExt.insertEntityCascade("default", jldataEntity);
		
		
		Map<String, Object> parmsMap2 = new HashMap<String, Object>();
		parmsMap2.put("lc", 'n'+lc);
		parmsMap2.put("clc", 'C'+lc);
		parmsMap2.put("uuid", uuid);
		parmsMap2.put("baseid", baseid);
		parmsMap2.put("crewid", crewid);
		//生成十年计划
		DatabaseExt.executeNamedSql("default", "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.createNDJHRCSNJH", parmsMap2);
		//生成大纲数据
		DatabaseExt.executeNamedSql("default", "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.createNDJHRCDG", parmsMap2);
		//生成专用数据
		DatabaseExt.executeNamedSql("default", "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.createNDJHRCZY", parmsMap2);
	}
	
	
	
	
	@Bizlet
	public void createNDJHCGDDX(DataObject[] data){
		if(data == null)return;
		String baseid = data[0].getString("baseid");//基地
		String crewid = data[0].getString("crewid");//机组
		String lc = data[0].getString("lc");//轮次
		String ident = data[0].getString("ident");//标识
		String username = data[0].getString("username");//生成人
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());//生成时间
		if(StringHelper.isEmpty(baseid) || StringHelper.isEmpty(crewid)) return;
		BaseJdglUtil baseJdglUtil = new BaseJdglUtil();
		String jdname = baseJdglUtil.getJdnameByid(baseid);
		String jzname = baseJdglUtil.getJznameByid(crewid);
		String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getNDJHCGDDXTZ";
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		parmsMap.put("lc", lc);
		String uuid = "";
		Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", address, parmsMap);
		if(typeDataObject != null && typeDataObject.length > 0){
			DataObject jhdata = (DataObject) typeDataObject[0];
			String id = jhdata.getString("id");
			address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.delNDJHCGDDXTZ";
			DatabaseExt.queryByNamedSql("default", address, id);
			uuid = id;
		}else{
			String ndplanname = jdname + "核电站"+jzname.substring(1,jzname.length())+"号机组常规岛及BOP系统"+lc+"轮次大修计划";
			uuid = UUID.randomUUID().toString().replaceAll("-","");
			DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.annual.ConventionalIslandOverhaulPlan.PlanEntity");
			dataEntity.setString("id", uuid);
			dataEntity.setString("ndplan", ndplanname);
			dataEntity.setString("record", "详细");
			dataEntity.setString("creater", username);
			dataEntity.setString("creatdate", dataTime);
			dataEntity.setString("base", baseid);
			dataEntity.setString("crew", crewid);
			dataEntity.setString("lc", lc);
			DatabaseExt.insertEntityCascade("default", dataEntity);
		}
		
		//生成记录
			String jlid = UUID.randomUUID().toString().replaceAll("-","");
			DataObject jldataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaulDetail.PlanRecord");
			jldataEntity.setString("id", jlid);
			jldataEntity.setString("uuid", uuid);
			jldataEntity.setString("creater", username);
			jldataEntity.setString("creatdate", dataTime);
			jldataEntity.setString("jd", baseid);
			jldataEntity.setString("jz", crewid);
			jldataEntity.setString("lc", lc);
			jldataEntity.setString("ident", ident);
			if(typeDataObject != null && typeDataObject.length > 0)jldataEntity.setString("record", "查看");
			DatabaseExt.insertEntityCascade("default", jldataEntity);
		
		Map<String, Object> parmsMap2 = new HashMap<String, Object>();
		parmsMap2.put("lc", lc);
		parmsMap2.put("uuid", uuid);
		parmsMap2.put("baseid", baseid);
		parmsMap2.put("crewid", crewid);
		//生成十年计划
		DatabaseExt.executeNamedSql("default", "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.createNDJHCGDDXSNJH", parmsMap2);
		//生成专用数据
		DatabaseExt.executeNamedSql("default", "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.createNDJHCGDDXZY", parmsMap2);
	}
	
	@Bizlet
	public void createNDJHCGDRC(DataObject[] data){
		if(data == null)return;
		String baseid = data[0].getString("baseid");//基地
		String crewid = data[0].getString("crewid");//机组
		String lc = data[0].getString("lc");//轮次
		String ident = data[0].getString("ident");//标识
		String username = data[0].getString("username");//生成人
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());//生成时间
		if(StringHelper.isEmpty(baseid) || StringHelper.isEmpty(crewid)) return;
		BaseJdglUtil baseJdglUtil = new BaseJdglUtil();
		String jdname = baseJdglUtil.getJdnameByid(baseid);
		String jzname = baseJdglUtil.getJznameByid(crewid);
		String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getNDJHCGDRCTZ";
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		parmsMap.put("lc", lc);
		String uuid = "";
		Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", address, parmsMap);
		if(typeDataObject != null && typeDataObject.length > 0){
			DataObject jhdata = (DataObject) typeDataObject[0];
			String id = jhdata.getString("id");
			address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.delNDJHCGDRCTZ";
			DatabaseExt.queryByNamedSql("default", address, id);
			uuid = id;
		}else{
			String ndplanname = jdname + "核电站"+jzname.substring(1,jzname.length())+"号机组常规岛及BOP系统"+lc+"年度日常计划";
			uuid = UUID.randomUUID().toString().replaceAll("-","");
			DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.annual.ConventionalIslandDailyPlan.PlanEntity");
			dataEntity.setString("id", uuid);
			dataEntity.setString("ndplan", ndplanname);
			dataEntity.setString("record", "详细");
			dataEntity.setString("creater", username);
			dataEntity.setString("creatdate", dataTime);
			dataEntity.setString("base", baseid);
			dataEntity.setString("crew", crewid);
			dataEntity.setString("lc", lc);
			DatabaseExt.insertEntityCascade("default", dataEntity);
		}
		//生成记录
		String jlid = UUID.randomUUID().toString().replaceAll("-","");
		DataObject jldataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaulDetail.PlanRecord");
		jldataEntity.setString("id", jlid);
		jldataEntity.setString("uuid", uuid);
		jldataEntity.setString("creater", username);
		jldataEntity.setString("creatdate", dataTime);
		jldataEntity.setString("jd", baseid);
		jldataEntity.setString("jz", crewid);
		jldataEntity.setString("lc", lc);
		jldataEntity.setString("ident", ident);
		if(typeDataObject != null && typeDataObject.length > 0)jldataEntity.setString("record", "查看");
		DatabaseExt.insertEntityCascade("default", jldataEntity);
		
		
		Map<String, Object> parmsMap2 = new HashMap<String, Object>();
		parmsMap2.put("lc", "n"+lc);
		parmsMap2.put("clc", 'C'+lc);
		parmsMap2.put("uuid", uuid);
		parmsMap2.put("baseid", baseid);
		parmsMap2.put("crewid", crewid);
		//生成十年计划
				DatabaseExt.executeNamedSql("default", "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.createNDJHCGDRCSNJH", parmsMap2);
				//生成专用数据
				DatabaseExt.executeNamedSql("default", "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.createNDJHCGDRCZY", parmsMap2);
	}
	
	
	@Bizlet
	public DataObject[] getViewInforMation(DataObject[] data){
		if(data == null) return null;
		String uuid = data[0].getString("uuid");//数据id
		String id = data[0].getString("id");//数据id
		String name = data[0].getString("name");//名称
		String entity = data[0].getString("entity");//实体地址
		String base = data[0].getString("base");
		String crew = data[0].getString("crew");
		DataObject dataEntity = DataObjectUtil.createDataObject(entity);
		dataEntity.setString("isdelete", "0");
		if(!StringHelper.isEmpty(uuid) && uuid != null && !"null".equals(uuid) ){
			dataEntity.setString("uuid", uuid);
		}else if(!StringHelper.isEmpty(id)){
			dataEntity.setString("id", id);
		}else{
			if("com.cgn.itmp.outlineandplan.base.legendManagement.LEGEND".equals(entity)){
				dataEntity.setString("cktlbh", name);
				dataEntity.setString("jd", base);
				dataEntity.setString("jzid", crew);
			}else if("com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM".equals(entity)){
				dataEntity.setString("jm", name);
				dataEntity.setString("dzid", base);
				dataEntity.setString("jzid", crew);
			}else{
				dataEntity.setString("istxh", name);
				dataEntity.setString("jd", base);
				dataEntity.setString("jz", crew);
			}
		}
		dataEntity.setString("isdelete", "0");
		DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate("default", dataEntity);
		return dataParms;
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
	
	@Bizlet
	public Map<String, DataObject> getEditViewInforMation(long processInstId){
		
		return null;
	}

	@Bizlet
	public Map<String, Object> getInforMationByFieldName(DataObject[] data){
		if(data == null) return null;
		String fieldName = data[0].getString("fieldName");//查询数据字段
		String fieldValue = data[0].getString("fieldValue");//查询数据值
		String outFieldName = data[0].getString("outFieldName");//返回字段
		String entity = data[0].getString("entity");//实体地址
		Map<String, Object> valueMap = new HashMap<String, Object>();
		DataObject dataEntity = DataObjectUtil.createDataObject(entity);
		dataEntity.setString(fieldName, fieldValue);
		DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate("default", dataEntity);
		if(dataParms.length == 1){
			String outFieldValue = dataParms[0].getString(outFieldName);
			valueMap.put(outFieldName, outFieldValue);
		}
		return valueMap;
	}
	
	
	
	
	/**
	 * 计划更新完成
	 * @param datas  计划更新的数据
	 * @param processInstId 流程id
	 * @param entityType 中间表实体名称
	 */
	
//	@Bizlet
//	public void planComplate(DataObject[] datas,String processInstId,String entityType,String planFlag){
//		if(datas == null || StringUtil.isEmpty(entityType)) return;
//		String flag = "";
//		if(planFlag.equals("1")){
//			flag = "4";
//		}else{
//			flag ="5";
//		}
//		for (int i = 0; i < datas.length; i++) {
//			DataObject dataObject = datas[i];
//			String id = dataObject.getString("uuid");
//			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
//			dataObject.setString("id", uuid);
//			DataObject temp  = DataObjectUtil.convertDataObject(dataObject, entityType, false);
//			temp.setString("processInstId", processInstId);
//			temp.setString("flag", flag);
//			temp.setString("editid", id);
//			DatabaseExt.insertEntityCascade("default", temp);
//		}
//	}
	
	
	
	/**
	 * 计划更新取消
	 */
	@Bizlet
	public void planCancel(DataObject[] parms,String processInstId){
		if(parms == null) return;
		for (int i = 0; i < parms.length; i++) {
			DataObject dataObject = parms[i];
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			dataObject.setString("id", uuid);
			DataObject temp  = DataObjectUtil.convertDataObject(dataObject, "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit", false);
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
	
	
	
	/**
	 * 
	 * @param data	数据集
	 * @param entityName	实体名
	 * @param type	完成取消标识
	 * @param ident	模块标识（例：规范法定大纲管理大修执行条目计划完成）
	 */
	public void addPlanInforMation(DataObject[] data,String entityName,String type,String ident){
		if(data == null) return;
		BaseJdglUtil baseJdglUtil = new BaseJdglUtil();
		int length =  data.length;
		String jdname = "";
		String jzname = "";
		String lc = "";
		String style = "";
		String msg = "";
		String reason = "";
		long processInstId = 0;
		if(length > 0){
			for (int i = 0; i < length; i++) {
				DataObject dataObject = data[i];
				String id = dataObject.getString("editid");
				String key = dataObject.getString("lc");
				String value = dataObject.getString(key);
				DataObject entity = DataObjectUtil.createDataObject(entityName);
				entity.set("id", id);
				DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate("default", entity);
				if(dataParms.length == 1){
					dataParms[0].setString(key,value);
					DatabaseUtil.updateEntity("default", dataParms[0]);
				}
				if(i==0){
					reason = dataObject.getString("xgyy");
					String baseid = dataObject.getString("base");
					String crewid = dataObject.getString("crew");
					jdname = baseJdglUtil.getJdnameByid(baseid);
					jzname = baseJdglUtil.getJznameByid(crewid);
					processInstId = dataObject.getLong("processInstId");
					lc = key;
				}
			}
			DataObject temp  = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Tdgglvitae");
			if("".equals(type)){//计划完成
				msg = "计划完成-" + jdname + jzname + lc +"计划完成" + length + "条";
				style = "计划完成";
			}else if("".equals(type)){//计划取消
				msg = "计划取消-" + jdname + jzname + lc +"计划取消" + length + "条";
				style = "计划取消";
			}
			SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dataTime = df.format(new Date());
			temp.setString("type", style);
			temp.setString("content", msg);
			temp.setString("datetime", dataTime);
			temp.setString("planid", String.valueOf(processInstId));
			temp.setString("ident", ident);
			temp.setString("reason", reason);
//			temp.setString("editid", String.valueOf(processInstId));
			DatabaseExt.insertEntityCascade("default", temp);
		}
	}
}
