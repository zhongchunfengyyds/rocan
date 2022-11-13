/**
 * 
 */
package com.cgn.itmp.dailyandoverhaul.overhaul;

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
 * Title: 内部经验反馈
 * Description: 内部经验反馈
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class InternalExperienceFeedbackDao extends DASDaoSupport {

	/**
	 * 
	 */
	public InternalExperienceFeedbackDao() {
		// TODO 自动生成的构造函数存根
	}
	public void addOrEdit(DataObject data){
		if(data == null) return;
			String op = data.getString("_state");                    //com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.InternalExperienceFeedback         
			DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.InternalExperienceFeedback", false);																		
			if("added".equals(op)){  //新增
				temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				temp.setString("addtime",  sdf.format(new Date()));
				DatabaseUtil.insertEntity("default", temp);				
				}else if("modified".equals(op)){ //修改
				DatabaseExt.updateEntityCascade("default", temp);
			}
		
	}
	//人因失效因素分类(大)数据查询
	public  DataObject[] getSelectRysxys() {
		String sql="com.cgn.itmp.dailyandoverhaul.overhaul.Overhaul.getSelectRysxys";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, null);
	}
	/**
	 * 根据人因失效因素大类id查询小类
	 * @param jdid
	 * @return
	 */
	public DataObject[] getSelectRysxysX(String parentid){
		if(StringUtil.isEmpty(parentid)){
			return null;
		}
		String sql="com.cgn.itmp.dailyandoverhaul.overhaul.Overhaul.getSelectRysxysX";
		Map<String,String> params = new HashMap<String,String>();
		params.put("parentid", parentid);
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, params);
	}
}
