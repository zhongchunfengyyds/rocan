/**
 * 
 */
package com.cgn.itmp.dailyandoverhaul.overhaul;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 质量管理
 * Description: 质量管理
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class QualityMgtDao extends DASDaoSupport {

	/**
	 * 
	 */
	public QualityMgtDao() {
		// TODO 自动生成的构造函数存根
	}
	public void addOrEdit(DataObject data){
		if(data == null) return;
			String op = data.getString("_state");                    //com.cgn.itmp.dailyandoverhaul.overhaul.QualityMgt.QualityMgt      
			DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.overhaul.QualityMgt.QualityMgt", false);																		
			if("added".equals(op)){  //新增
				temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				temp.setString("addtime",  sdf.format(new Date()));
				DatabaseUtil.insertEntity("default", temp);
			
				}else if("modified".equals(op)){ //修改
				DatabaseExt.updateEntityCascade("default", temp);
			}
		
	}
}
