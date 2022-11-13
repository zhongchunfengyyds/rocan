/**
 * 
 */
package com.cgn.itmp.dailyandoverhaul.overhaul;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.eos.system.utility.StringUtil;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 大修日历管理
 * Description: 大修日历管理
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class OverhaulCalendarDao extends DASDaoSupport {

	/**
	 * 构造函数
	 */
	public OverhaulCalendarDao() {
		// TODO 自动生成的构造函数存根
	}
	/**
	 * 新增数据
	 * @param data
	 */
	 public void addOrEdit(DataObject data){
			if(data == null) return;
				String op = data.getString("_state");                             
				DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.overhaul.OverhaulCalendar.Calendar", false);																					
				if("added".equals(op)){  //新增
					temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					temp.setString("addtime",  sdf.format(new Date()));
					DatabaseUtil.insertEntity("default", temp);				
					}else if("modified".equals(op)){ //修改
					DatabaseExt.updateEntityCascade("default", temp);
				}
			
		}
	 /**
	  * 获取大修日历数据
	  * @return
	  */
	 public DataObject[] getSelectDxrl(String jdArray){
		 if(StringUtil.isEmpty(jdArray)){
			 return null;
		 }
		 String [] jdInfo = jdArray.split(",");
		 List<String> paramList = new ArrayList<String>();
		 for(String jdName : jdInfo){
				paramList.add(jdName);
		 }
		 //根据基地名称获取基地id
		 String jdSql="com.cgn.itmp.dailyandoverhaul.overhaul.Overhaul.getJdInfoByName";
		 DataObject[] jdIds = getDASTemplate().queryByNamedSql(DataObject.class, jdSql, paramList);
		 List<String> jdidList = new ArrayList<String>();
		 for(DataObject obj : jdIds){
			 jdidList.add(obj.getString("ID"));
		 }
		 String sql="com.cgn.itmp.dailyandoverhaul.overhaul.Overhaul.getSelectDxrl";
		 DataObject[] result = getDASTemplate().queryByNamedSql(DataObject.class, sql, jdidList);
		 if(null == result || result.length <= 0 ){
				return null;
			}
		return result;
	 }
}
