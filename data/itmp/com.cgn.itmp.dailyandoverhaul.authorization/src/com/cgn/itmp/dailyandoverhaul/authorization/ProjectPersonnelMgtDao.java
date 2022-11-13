/**
 * 
 */
package com.cgn.itmp.dailyandoverhaul.authorization;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;

import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.spring.DASDaoSupport;
import com.primeton.das.entity.impl.hibernate.mapping.Map;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 特殊验证项目人员管理
 * Description: 特殊验证项目人员管理
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class ProjectPersonnelMgtDao extends DASDaoSupport {

	/**
	 * 构造函数
	 */
	public ProjectPersonnelMgtDao() {
		// TODO 自动生成的构造函数存根
	}
	
	/**
	 * 新增、修改
	 * @param data 数据集
	 */
	public void addOrEdit(DataObject data){
		if(data == null) return;
			String op = data.getString("_state");
			DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.authorization.ProjectPersonnelMgt.ProjectPersonnelMgt", false);
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
	public  DataObject[] getIdnumberInfo(String jd) {
		String sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getPersonNumber";
		java.util.Map map=new HashMap();
		map.put("jd",jd);
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
	}
}
