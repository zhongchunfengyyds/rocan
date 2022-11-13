/**
 * 
 */
package com.cgn.itmp.systemset;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cgn.itmp.basecommon.StringUtil;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 基础设置dao
 * Description: 基础设置dao
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class BaseSetDao extends DASDaoSupport {

	/**
	 * 
	 */
	public BaseSetDao() {
		// TODO 自动生成的构造函数存根
	}

	/**
	 * 查询同基地同机组下数据是否存在
	 * @param jdid
	 * @param jzid
	 * @return
	 */
	
	public String getSaveInfo(String jdid,String jzid){
	
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("jdid", jdid);
		parmsMap.put("jzid", jzid);
		String sql="com.cgn.itmp.systemset.systemset.getSaveCount";
		Object[] data = (Object[]) DatabaseExt.queryByNamedSql("default", sql, parmsMap);
		if(data!=null){
			String count = ((DataObject) data[0]).getString("count");
			return count;	
		}
		return null;
	}
	/**
	 * 回收站恢复时判断数据是否存在，存在时不能恢复
	 * @param datas
	 * @return
	 */
	public boolean isExist(DataObject[] datas){
		
		boolean isExist = false;
		for(DataObject data : datas){
			Map<String, Object> parmsMap = new HashMap<String, Object>();
			String jdid = data.getString("jdid");
			String jzid = data.getString("jzid");
			parmsMap.put("jdid", jdid);
			parmsMap.put("jzid", jzid);
			String sql="com.cgn.itmp.systemset.systemset.getSaveCount";
			Object[] o = DatabaseExt.queryByNamedSql("default", sql, parmsMap);
			if( o !=null){
				int count =  ((DataObject) o[0]).getInt("count");
				if(count >= 1){
					isExist = true;
					break;
				}
			}
		}
		return isExist;
	}
	
	/**
	 * 查询基地名称是否存在
	 * @param powerName 基地名称
	 * @param num 允许出现的次数
	 * @return
	 */
	public boolean validPowerNameExist(String powerName,int num){
		boolean isExist = false;
		if(!StringUtil.isEmpty(powerName)){
			List<String> paramList = Arrays.asList(powerName.split(","));
			String sql="com.cgn.itmp.systemset.systemset.validPowerNameExist";
			Object[] o = DatabaseExt.queryByNamedSql("default", sql, paramList);
			if( o !=null){
				int count = ((DataObject)o[0]).getInt("count");
				if(count > num) isExist = true;
			}
		}
		
		return isExist;
	}
	
	/**
	 * 设置基地机组默认周期
	 * @param powerName 基地名称
	 * @param crewName	机组名称
	 */
	public void setDefaultZQ(){
		DataObject[] data = getDASTemplate().queryByNamedSql(DataObject.class, "com.cgn.itmp.systemset.systemset.getNoZQPowerAndCrew", null);
		data = DataObjectUtil.convertDataObjects(data, "com.cgn.itmp.systemset.CycleMgt.CycleMgt", true);
		DatabaseUtil.insertEntityBatch("default", data);
	}
}
