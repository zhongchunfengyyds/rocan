/**
 * 
 */
package com.cgn.itmp.dailyandoverhaul.overhaul;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.spring.DASDaoSupport;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 缺陷通知单管理
 * Description: 缺陷通知单管理
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class DefectNoticeManagementDao extends DASDaoSupport {

	/**
	 * 
	 */
	public DefectNoticeManagementDao() {
		// TODO 自动生成的构造函数存根
	}
	
	/**
	 * 新增数据
	 * @param data
	 */
	public void addOrEdit(DataObject data){
		if(data == null) return;
			String op = data.getString("_state");
			DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.DefectNoticeManagement", false);
			if("added".equals(op)){  //新增
				temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				temp.setString("addtime",  sdf.format(new Date()));
				DatabaseExt.insertEntityCascade("default", temp);
			}else if("modified".equals(op)){ //修改
				DatabaseExt.updateEntityCascade("default", temp);
		}
		
	}

}
