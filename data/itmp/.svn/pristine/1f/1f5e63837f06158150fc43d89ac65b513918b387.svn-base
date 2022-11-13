/**
 * 
 */
package com.cgn.itmp.knowledgebase;

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
 * Title: 程序的中文名称
 * Description: 程序功能的描述
 * </pre>
 * @author Administrator
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class TinCriterionService extends DASDaoSupport implements
		ITInCriterionService {

	/**
	 * 
	 */
	public TinCriterionService() {
		// TODO 自动生成的构造函数存根
	}
	public void addOrEdit(DataObject data) {
		if(data == null) return;
		String op = data.getString("_state");                             
		DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.knowledgebase.Regulation.TInCriterion", false);																		
		if("added".equals(op)){  //新增
			temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			temp.setString("addtime",  sdf.format(new Date()));
			temp.setString("isdel",  "0");
			DatabaseUtil.insertEntity("default", temp);					
			}else if("modified".equals(op)){ //修改
			DatabaseExt.updateEntityCascade("default", temp);
		}
		
	}
	
	
	
}
