/**
 * 
 */
package com.cgn.itmp.dailyandoverhaul.authorization;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.spring.DASDaoSupport;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 焊工资质管理
 * Description: 焊工资质管理
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class WelderQualificationMgtDao extends DASDaoSupport {

	/**
	 * 构造函数
	 */
	public WelderQualificationMgtDao() {
		// TODO 自动生成的构造函数存根
	}
	/**
	 * 新增、修改
	 * @param data
	 */
	public void addOrEdit(DataObject data){
		if(data == null) return;
			String op = data.getString("_state");
			DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.authorization.WelderQualificationMgt.WelderQualificationMgt", false);
			if("added".equals(op)){  //新增
				temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				temp.setString("addtime",sdf.format(new Date()));
				DatabaseExt.insertEntityCascade("default", temp);
			}else if("modified".equals(op)){ //修改
				DatabaseExt.updateEntityCascade("default", temp);
		}
	}
	
	/**
	 * 身份证查询
	 * @return
	 */
	public  DataObject[] getIdnumberInfo() {
		String sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getWelderNumber";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, null);
	}
}
