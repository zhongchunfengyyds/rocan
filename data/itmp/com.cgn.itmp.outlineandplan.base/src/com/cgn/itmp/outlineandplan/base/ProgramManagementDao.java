/**
 * 
 */
package com.cgn.itmp.outlineandplan.base;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class ProgramManagementDao extends DASDaoSupport {

	/**
	 * 
	 */
	public ProgramManagementDao() {
		// TODO 自动生成的构造函数存根
	}

	public String addOrEdit(DataObject data){
		
		if(data == null) return "false";
		String result="true";
		String op = data.getString("_state");
	/*	boolean isExist=getJmCount(data.getString("jzid"),data.getString("jm"));
		if(!isExist){*/
		int count =getJmCount(data.getString("jzid"),data.getString("jm"));
		if("added".equals(op)){  //新增
			if(count > 0){
				result="false";
				return result;
			}else{
				DataObject dataObject  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM", false);
				/*dataObject.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));*/
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				dataObject.setString("addtime",  sdf.format(new Date()));
				DatabaseExt.insertEntityCascade("default", dataObject);
			}
		}else if("modified".equals(op)){ //修改
			DataObject entity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM");
			entity.setString("uuid", data.getString("uuid"));
			DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",entity);
			if(datas != null && datas.length > 0){
				String oldJm = datas[0].getString("jm");
				if(oldJm.equals(data.getString("jm")) && count>1){//简码未改变时
					result="false";
					return result;
				}else if(!oldJm.equals(data.getString("jm")) && count>0){//简码改变时
					result="false";
					return result;
				}else{
					DataObject dataObject  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM", false);
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					dataObject.setString("addtime",  sdf.format(new Date()));
					DatabaseExt.updateEntityCascade("default", dataObject);
				}
			}
		}
		return result;
	}
	/**
	 * 获取机组对应的简码数量
	 * @param jzid
	 * @param jm
	 * @return
	 */
	public int getJmCount(String jzid,String jm){
		int count = 0;
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("JZID", jzid);
		parmsMap.put("JM", jm);
		String sql="com.cgn.itmp.outlineandplan.base.basemanagement.getJmCount";
		Object[] data = (Object[]) DatabaseExt.queryByNamedSql("default", sql, parmsMap);
		if(data!=null){
			count = ((DataObject) data[0]).getInt("count");
		}
		
//		String [] jzArray = jzid.split(",");
//		boolean isExist = false; //默认不存在
//		for(String jz : jzArray){
//			Map<String, Object> parmsMap = new HashMap<String, Object>();
//			parmsMap.put("JZID", jz);
//			parmsMap.put("JM", jm);
//			String sql="com.cgn.itmp.outlineandplan.base.basemanagement.getJmCount";
//			Object[] data = (Object[]) DatabaseExt.queryByNamedSql("default", sql, parmsMap);
//			if(data!=null){
//				int count = ((DataObject) data[0]).getInt("count");
//				if(count > 0){
//					isExist = true;
//					break;
//				}
//			}
//			
//		}

		return count;
	}


}
