/**
 * 
 */
package com.cgn.itmp.outlineandplan.base;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 图例管理
 * Description: 图例的增删改查操作
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
public class LegendManagementDao extends DASDaoSupport {

	/**
	 * 图例构造函数
	 */
	public LegendManagementDao() {
		// TODO 自动生成的构造函数存根
	}

	/**
	 * 新增或修改
	 * @param data
	 * @return
	 */
	public String addOrEdit(DataObject data){
		
		if(data == null) return "false";
		String result="true";
			String op = data.getString("_state");
			
			int count=getCxbmCount(data.getString("jzid"),data.getString("cktlbh"));
			if("added".equals(op)){  //新增
				if(count >0){
					result = "false";
					return result;
				}else{
					DataObject dataObject  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.outlineandplan.base.legendManagement.LEGEND", false);
					/*dataObject.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));*/
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					dataObject.setString("addtime",  sdf.format(new Date()));
					DatabaseExt.insertEntityCascade("default", dataObject);
				}
			}else if("modified".equals(op)){ //修改
				DataObject entity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.base.legendManagement.LEGEND");
				entity.setString("uuid", data.getString("uuid"));
				DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",entity);
				if(datas != null && datas.length > 0){
					String oldCktlbh = datas[0].getString("cktlbh");
					if(oldCktlbh.equals(data.getString("cktlbh")) && count>1){//编号未改变时
						result="false";
						return result;
					}else if(!oldCktlbh.equals(data.getString("cktlbh")) && count>0){//编号改变时
						result="false";
						return result;
					}else{
						DataObject dataObject  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.outlineandplan.base.legendManagement.LEGEND", false);
						dataObject.setString("addtime", entity.getString("addtime"));
						DatabaseExt.updateEntityCascade("default", dataObject);
					}
				}
			}
			return result;
	}
	
	/**
	 * 获取基地下程序数量
	 * @param jzid
	 * @param cktlbh
	 * @return
	 */
	public int getCxbmCount(String jzid,String cktlbh){
			int count = 0;
			Map<String, Object> parmsMap = new HashMap<String, Object>();
			parmsMap.put("JZID", jzid);
			parmsMap.put("cktlbh", cktlbh);
			String sql="com.cgn.itmp.outlineandplan.base.basemanagement.getCxbmCount";
			Object[] data = (Object[]) DatabaseExt.queryByNamedSql("default", sql, parmsMap);
			if(data!=null){
				 count = ((DataObject) data[0]).getInt("count");
			}

		return count;
	}

	
}
