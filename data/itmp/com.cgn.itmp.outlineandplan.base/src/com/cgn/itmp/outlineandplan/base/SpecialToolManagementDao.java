/**
 * 
 */
package com.cgn.itmp.outlineandplan.base;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.cgn.itmp.basecommon.StringUtil;
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
public class SpecialToolManagementDao extends DASDaoSupport {

	/**
	 * 
	 */
	public SpecialToolManagementDao() {
		// TODO 自动生成的构造函数存根
	}
	
	public String addOrEdit(DataObject data){
		
		if(data == null) return "false";
		String result="true";//默认存在
			int count = getZyqdCount(data.getString("jz"),data.getString("istxh"));
			String op = data.getString("_state");
			if("added".equals(op)){  //新增
				if(count >0){
					result = "false";
					return result;
				}else{
					DataObject dataObject  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.outlineandplan.base.specialToolManagement.SPECIALTOOL", false);
				/*	dataObject.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));*/
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					dataObject.setString("addtime",  sdf.format(new Date()));
					DatabaseExt.insertEntityCascade("default", dataObject);
				}
			
			}else if("modified".equals(op)){ //修改
				DataObject dataObject = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.base.specialToolManagement.SPECIALTOOL");
				dataObject.set("uuid", data.getLong("uuid"));
				DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",dataObject);
				if(datas != null && datas.length > 0){
					String oldIstxh = datas[0].getString("istxh");
					if(oldIstxh.equals(data.getString("istxh")) && count>1){//IST未改变时
						result="false";
						return result;
					}else if(!oldIstxh.equals(data.getString("istxh")) && count>0){//ist改变时
						result="false";
						return result;
					}else{
						//机组id
						if(!StringUtil.isEmpty(data.getString("jz"))){
							dataObject.set("jz", data.getString("jz"));
						}
						//名称
						if(!StringUtil.isEmpty(data.getString("name"))){
							dataObject.set("name", data.getString("name"));
						}
						//IST序号
						if(!StringUtil.isEmpty(data.getString("istxh"))){
							dataObject.set("istxh", data.getString("istxh"));
						}
						SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						dataObject.setString("addtime",  sdf.format(new Date()));
						DatabaseExt.updateEntityCascade("default", dataObject);
					}
				}
			}
			return result;
		}
	
		/**
		 * 获取机组对应的IST数量
		 * @param jz
		 * @param ist
		 * @return
		 */
		public int getZyqdCount(String jz,String istxh){
			int count = 0;
			Map<String, Object> parmsMap = new HashMap<String, Object>();
			parmsMap.put("jz", jz);
			parmsMap.put("istxh", istxh);
			String sql="com.cgn.itmp.outlineandplan.base.basemanagement.getZyqdCount";
			Object[] data = (Object[]) DatabaseExt.queryByNamedSql("default", sql, parmsMap);
			if(data!=null){
				 count = ((DataObject) data[0]).getInt("count");
			}
//			String [] jzArray = jz.split(",");
//			boolean isExist = false; //默认不存在
//			for(String jzs : jzArray){
//				Map<String, Object> parmsMap = new HashMap<String, Object>();
//				parmsMap.put("jz", jzs);
//				parmsMap.put("istxh", istxh);
//				String sql="com.cgn.itmp.outlineandplan.base.basemanagement.getZyqdCount";
//				Object[] data = (Object[]) DatabaseExt.queryByNamedSql("default", sql, parmsMap);
//				if(data!=null){
//					int count = ((DataObject) data[0]).getInt("count");
//					if(count > 0){
//						if(flag.equals("added") && count > 0){
//							isExist = true;
//							break;
//						}else if(flag.equals("modified")){
//							isExist = true;
//							break;
//						}
//						
//					}
//				}
//				
//			}
		
			return count;
		}
		
		/**
		 * 根据多机组id获取机组名称
		 * @param jzid
		 * @return
		 */
		public String getJznamesByid(String jzids){
			if(StringUtil.isEmpty(jzids)){
				return null;
			}
			String jzName = "";
			List<String> paramList = new ArrayList<String>();
			for(String jzid :jzids.split(",")){
				paramList.add(jzid);
			}
			String sql="com.cgn.itmp.outlineandplan.base.basemanagement.getJznamesByJzid";
			
			DataObject[] datas =  getDASTemplate().queryByNamedSql(DataObject.class, sql, paramList);
			for(DataObject data : datas){
				if(StringUtil.isEmpty(jzName)){
					jzName = data.getString("name");
				}else{
					jzName = jzName+","+data.getString("name");
				}
				
			}
			return jzName;
		}
		


}
