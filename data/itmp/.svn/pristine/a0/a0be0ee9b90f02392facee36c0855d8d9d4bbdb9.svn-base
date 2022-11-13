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

import org.apache.commons.lang.ArrayUtils;

import net.sf.json.JSONObject;

import com.cgn.itmp.basecommon.CommonUtil;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.eos.system.annotation.Bizlet;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.primeton.ext.data.vmodel.ViewModelHelper;
import com.primeton.ext.data.vmodel.Field;

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
public class ExecutiveEntriesFFDRCServiceImpl extends DASDaoSupport implements
		ExecutiveEntriesFFDRCService {

	/**
	 * 
	 */
	public ExecutiveEntriesFFDRCServiceImpl() {
		// TODO 自动生成的构造函数存根
	}

	/* （非 Javadoc）
	 */
	@Bizlet
	public DataObject[] getProtypeAndPartsData(String baseid,String crewid) {
		// TODO 自动生成的方法存根
		String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getProtype4";
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

	/* （非 Javadoc）
	 */
	@Bizlet
	public Map<String, Object> getBaseCircle(String baseid, String crewid) {
		// TODO 自动生成的方法存根
		return null;
	}

	/* （非 Javadoc）
	 */
	@Bizlet
	public void addInfoMation(DataObject[] data) {
		// TODO 自动生成的方法存根
		if(data == null) return;
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		DataObject temp  = DataObjectUtil.convertDataObject(data[0], "com.cgn.itmp.outlineandplan.outline.NonStaturoryDaily.DailyEntity", false);
		temp.setString("id", uuid);
		DatabaseExt.insertEntityCascade("default", temp);
		String protype = temp.getString("protype");
		this.addRecordInfoMation(temp,"新增规范非法定大纲:"+protype+"_日常执行条目1条","新增",uuid);
	}

	/* （非 Javadoc）
	 */
	@Bizlet
	public void deleteRecoversData(DataObject[] data) {
		if(data == null) return;
		String ids = data[0].getString("id");
		if(!StringHelper.isEmpty(ids)){
			String[] idArr = ids.split(",");
			for (int i = 0; i < idArr.length; i++) {
				String id = idArr[i];
				String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.deleteRecoversData4";
				DatabaseExt.queryByNamedSql("default", address, id);
			}
		}
	}

	public void addEditionInfoMation(DataObject[] data){
		if(data == null) return;
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		DataObject temp  = DataObjectUtil.convertDataObject(data[0], "nonstatutorydaily.ascendingedition.Dggldgffdedition2", false);
		temp.setString("id", uuid);
		DatabaseExt.insertEntityCascade("default", temp);
//		String number = this.getCountForEdition();
		this.addRecordInfoMation(temp,"规范法定大纲由A版升为B版","升版",uuid);
	}
	
	public char numToLetter(String input) {
		char letter = 0;
		for (byte b : input.getBytes()) {
			letter = (char) (b + 48);
		}
		return letter;
	}
	
	/* （非 Javadoc）
	 */
	@Bizlet
	public String getCountForEdition() {
		// TODO 自动生成的方法存根
		String address = "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getCountForEdition4";
		Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", address, null);
		String number = "0";
		if(typeDataObject.length>0){
			number = ((DataObject) typeDataObject[0]).getString("CNT");
		}
		return number;
	}
	
	public void addRecordInfoMation(DataObject temp,String content,String type,String uuid){
		DataObject temp1  = DataObjectUtil.convertDataObject(temp, "com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Tdgglvitae", false);
		temp1.setString("type", type);
		temp1.setString("content", content);
		temp1.setString("planid", temp.getString("id"));
		temp1.setString("ident", "非法定日常执行条目");
		temp1.setString("editid", uuid);
		DatabaseExt.insertEntityCascade("default", temp1);
	}
	
	
	public void updateInfoMation(DataObject data) {
		if(data == null) return;
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());
		//data.setString("datetime", dataTime);
		DataObject temp = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.outlineandplan.outline.NonStaturoryDaily.DailyEntity", false);
		DatabaseUtil.updateEntity("default", temp);
		String currentuser = data.getString("currentuser");
		String currentreason = data.getString("currentreason");
		String protype = data.getString("ptype");
		String parms = data.getString("parms");
		temp.setString("creator", currentuser);
		temp.setString("datetime", dataTime);
		temp.setString("reason", currentreason);
		String id = data.getString("id");
		temp.setString("isdelete", "0");
		if(!StringHelper.isEmpty(parms)){
			if("remove".equals(parms)){
				this.addRecordInfoMation(temp,"删除规范非法定大纲:"+protype+"_日常执行条目1条","删除",id);
			}else if("edit".equals(parms)){
				StringBuilder sb = new StringBuilder();
				String columnName = "";
				String updata = data.getString("parmsjson");
				String uuid = UUID.randomUUID().toString().replaceAll("-", "");
				if(!StringHelper.isEmpty(updata)){
					DataObject dataEntity = DataObjectUtil.createDataObject("nonstatutorydaily.ffdrcedit.Tdgglgfffdrctmedit");
					dataEntity.set("id", uuid);
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
						Field modeField = new ViewModelHelper().getField("com.cgn.itmp.outlineandplan.outline.NonStaturoryDaily.DailyEntity", key);
						if(modeField != null){
							columnName = modeField.getLabel();
						}
						if(!StringHelper.isEmpty(sb.toString()))sb.append(",");
						sb.append(columnName).append(value);
					}
					DatabaseExt.insertEntityCascade("default", dataEntity);
				}
				this.addRecordInfoMation(temp,"修改规范非法定大纲:"+protype+"_"+sb.toString()+"","修改",uuid);
			}
		}
		
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
		Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getJCJHRCdata", parmsMap);
		if(typeDataObject != null && typeDataObject.length>0){
			for (int i = 0; i < typeDataObject.length; i++) {
				for (int j = 1991; j <= 2089; j++) {
					String column = "c" + j;
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
			ExecutiveEntriesServiceImpl entriesServiceImpl = new ExecutiveEntriesServiceImpl();
			Map<String, Object> stateMap = entriesServiceImpl.setStateAndUpdateData(valueMap,base);
			if(stateMap != null && stateMap.size()>0){
				DataObject dataEntity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.outline.NonStaturoryDaily.DailyEntity");
				for (int i = 1991; i <= 2089; i++) {
					dataEntity.setString("n"+i, null);
					Iterator<Map.Entry<String, Object>> it = stateMap.entrySet().iterator();
					while (it.hasNext()) {
						Map.Entry<String, Object> entry = it.next();
					    String key = (String) entry.getKey();
					    String value = (String) entry.getValue();
					    if(("c"+i).equals(key)){
					    	dataEntity.setString("n"+i, value);
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
	
	public String[] removal(String[] arr){
        Map<String, Object> map = new HashMap<String, Object>();
        for (String str : arr) {
            map.put(str, str);
        }
        //返回一个包含所有对象的指定类型的数组
        String[] newArrStr =  map.keySet().toArray(new String[1]);
		return newArrStr;
    }

}
