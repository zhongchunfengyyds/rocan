/**
 * 
 */
package com.cgn.itmp.dailyandoverhaul.overhaul;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.eos.foundation.common.utils.DateUtil;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 组织管理
 * Description: 组织管理
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class OrganizationMgtDao extends DASDaoSupport {

	/**
	 * 
	 */
	public OrganizationMgtDao() {
		// TODO 自动生成的构造函数存根
	}
	/**
	 * 新增数据
	 * @param data
	 */
	 public void addOrEdit(DataObject data){
			if(data == null) return;
				String op = data.getString("_state");                    //com.cgn.itmp.dailyandoverhaul.overhaul.OrganizationMgt.OrganizationMgt
				DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.overhaul.OrganizationMgt.OrganizationMgt", false);																		
				if("added".equals(op)){  //新增
					temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
					temp.setString("isdelete", "0");
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					temp.setString("addtime",  sdf.format(new Date()));
					DatabaseUtil.insertEntity("default", temp);
				
					}else if("modified".equals(op)){ //修改
						temp.setDate("updtime",DateUtil.getJVMDate());
					DatabaseExt.updateEntityCascade("default", temp);
					}
		}
}
