package com.cgn.itmp.weldingmanagement.Machine.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.cgn.itmp.weldingmanagement.Machine.Machineserver;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.system.annotation.Bizlet;

import commonj.sdo.DataObject;

/**
 * 焊接管理模块实现类
 * @author Jerk
 *
 */
@Bizlet("MachineserverImpl")
public class MachineserverImpl implements Machineserver{
	
	/**
	 * 焊机管理模块更新状态为使用中
	 * 借出时间默认为系统当前时间
	 */
	@Bizlet
	public void updateHjztTosyt(DataObject[] data,DataObject[] data1, String entity, String entity1,String userRealName) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// TODO 自动生成的方法存根
		for(int i=0;i<data.length;i++){
			String time = sdf.format(new Date());
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			DataObject temp1  = DataObjectUtil.convertDataObject(data1[0],entity1, false);
//			temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
//			此处为出借操作，进行出借时清空其他操作记录
			temp.setString("returnunit", null);//归还单位
			temp.setString("returnperson", null);//归还人
			temp.setString("returntime", null);//归还时间
			temp.setString("inspectiontime", null);//送检时间
			temp.setString("inspectionperson", null);//送检人
			temp.setString("maintenancetime",null);//送修时间
			temp.setString("maintenanceperson",null);//送修人
			temp.setString("operator",null);//报废人
			temp.setString("operatingtime",null);//报废时间
			
			temp.setString("borrowtime", time);
			temp.setString("state", "SYZ");
			temp.setString("locations", temp.getString("location"));
			temp.setString("location", null);
			
			temp1.set("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
			temp1.setString("number", temp.getString("number"));
			temp1.setString("name", temp.getString("name"));
			temp1.setString("equipmenttype", temp.getString("equipmenttype"));
			temp1.setString("input", temp.getString("input"));
			temp1.setString("currentrange", temp.getString("currentrange"));
			temp1.setString("manufacturer", temp.getString("manufacturer"));
			temp1.setString("certificate", temp.getString("certificate"));
			temp1.setString("fileid", temp.getString("fileid"));
			temp1.setString("verification", temp.getString("verification"));
			temp1.setString("jd", temp.getString("jd"));
			temp1.setString("state","JY");
			temp1.setString("unit", temp.getString("borrowunit"));
			temp1.setString("operateperson", userRealName);
			temp1.setString("operatetime", temp.getString("borrowtime"));
			DatabaseUtil.updateEntity("default",temp);
			DatabaseUtil.insertEntity("default",temp1);
		}
	}
	
	/**
	 * 焊机管理模块更新状态为送检中
	 * 送检时间默认为系统当前时间
	 * 送检人为当前登录用户
	 */
	@Bizlet
	public void updateHjztTosj(DataObject[] data,DataObject[] data1, String entity,String entity1,String userRealName) {
		// TODO 自动生成的方法存根
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for(int i=0;i<data.length;i++){
			String time = sdf.format(new Date());
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			DataObject temp1  = DataObjectUtil.convertDataObject(data1[0],entity1, false);
			temp.setString("borrowunit", null);//借用单位
			temp.setString("borrowperson", null);//借用人
			temp.setString("borrowtime", null);//借用时间
			temp.setString("returnunit", null);//归还单位
			temp.setString("returnperson", null);//归还人
			temp.setString("returntime", null);//归还时间
			temp.setString("maintenancetime",null);//送修时间
			temp.setString("maintenanceperson",null);//送修人
			temp.setString("operator",null);//报废人
			temp.setString("operatingtime",null);//报废时间
			
			temp.setString("inspectionperson", userRealName);
			temp.setString("inspectiontime", time);
			temp.setString("state", "SJ");
			temp.setString("location", null);
			
			temp1.set("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
			temp1.setString("number", temp.getString("number"));
			temp1.setString("name", temp.getString("name"));
			temp1.setString("equipmenttype", temp.getString("equipmenttype"));
			temp1.setString("input", temp.getString("input"));
			temp1.setString("currentrange", temp.getString("currentrange"));
			temp1.setString("manufacturer", temp.getString("manufacturer"));
			temp1.setString("certificate", temp.getString("certificate"));
			temp1.setString("fileid", temp.getString("fileid"));
			temp1.setString("verification", temp.getString("verification"));
			temp1.setString("jd", temp.getString("jd"));
			temp1.setString("state","SJ");
			temp1.setString("unit", "");
			temp1.setString("operateperson", userRealName);
			temp1.setString("operatetime", temp.getString("inspectiontime"));
			DatabaseUtil.updateEntity("default",temp);
			DatabaseUtil.insertEntity("default",temp1);
		}
	}
	
	/**
	 * 焊机管理模块更新状态为在库中
	 * 归还时间默认为系统当前时间
	 * 归还人为借用人
	 * 归还单位为借用单位
	 */
	@Bizlet
	public void updateHjztTozkz(DataObject[] data,DataObject[] data1, String entity, String entity1,String userRealName) {
		// TODO 自动生成的方法存根
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for(int i=0;i<data.length;i++){
			String time = sdf.format(new Date());
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			DataObject temp1  = DataObjectUtil.convertDataObject(data1[0],entity1, false);
			temp.setString("returntime", time);
			temp.setString("returnunit", temp.getString("borrowunit"));
			temp.setString("returnperson", temp.getString("borrowperson"));
			temp.setString("borrowunit", null);
			temp.setString("borrowperson", null);
			temp.setString("borrowtime", null);
			temp.setString("inspectiontime", null);//送检时间
			temp.setString("inspectionperson", null);//送检人
			temp.setString("maintenancetime",null);//送修时间
			temp.setString("maintenanceperson",null);//送修人
			temp.setString("operator",null);//报废人
			temp.setString("operatingtime",null);//报废时间
			temp.setString("location", temp.getString("location"));
			temp.setString("locations", null);
			temp.setString("state", "ZKZ");
			
			temp1.set("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
			temp1.setString("number", temp.getString("number"));
			temp1.setString("name", temp.getString("name"));
			temp1.setString("equipmenttype", temp.getString("equipmenttype"));
			temp1.setString("input", temp.getString("input"));
			temp1.setString("currentrange", temp.getString("currentrange"));
			temp1.setString("manufacturer", temp.getString("manufacturer"));
			temp1.setString("certificate", temp.getString("certificate"));
			temp1.setString("fileid", temp.getString("fileid"));
			temp1.setString("verification", temp.getString("verification"));
			temp1.setString("jd", temp.getString("jd"));
			temp1.setString("state","GH");
			temp1.setString("unit", temp.getString("returnunit"));
			temp1.setString("operateperson", userRealName);
			temp1.setString("operatetime", temp.getString("returntime"));
			DatabaseUtil.updateEntity("default",temp);
			DatabaseUtil.insertEntity("default",temp1);
		}
	}
	
	/**
	 * 焊机管理模块更新状态为送修中
	 * 送修时间默认为系统当前时间
	 * 送修人为当前登录用户
	 */
	@Bizlet
	public void updateHjztTosxz(DataObject[] data,DataObject[] data1, String entity,String entity1,String userRealName) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// TODO 自动生成的方法存根
		for(int i=0;i<data.length;i++){
			String time = sdf.format(new Date());
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			DataObject temp1  = DataObjectUtil.convertDataObject(data1[0],entity1, false);
			temp.setString("borrowunit", null);//借用单位
			temp.setString("borrowperson", null);//借用人
			temp.setString("borrowtime", null);//借用时间
			temp.setString("returnunit", null);//归还单位
			temp.setString("returnperson", null);//归还人
			temp.setString("returntime", null);//归还时间
			temp.setString("inspectiontime", null);//送检时间
			temp.setString("inspectionperson", null);//送检人
			temp.setString("operator",null);//报废人
			temp.setString("operatingtime",null);//报废时间
			
			temp.setString("maintenancetime", time);
			temp.setString("maintenanceperson", userRealName);
			temp.setString("state", "SXZ");
			
			temp.setString("location", null);
			
			temp1.set("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
			temp1.setString("number", temp.getString("number"));
			temp1.setString("name", temp.getString("name"));
			temp1.setString("equipmenttype", temp.getString("equipmenttype"));
			temp1.setString("input", temp.getString("input"));
			temp1.setString("currentrange", temp.getString("currentrange"));
			temp1.setString("manufacturer", temp.getString("manufacturer"));
			temp1.setString("certificate", temp.getString("certificate"));
			temp1.setString("fileid", temp.getString("fileid"));
			temp1.setString("verification", temp.getString("verification"));
			temp1.setString("jd", temp.getString("jd"));
			temp1.setString("state","SX");
			temp1.setString("unit", "");
			temp1.setString("operateperson", userRealName);
			temp1.setString("operatetime", temp.getString("maintenancetime"));
			DatabaseUtil.updateEntity("default",temp);
			DatabaseUtil.insertEntity("default",temp1);
		}
	}
	/**
	 * 焊机管理模块更新状态为已报废
	 * 操作时间默认为系统当前时间
	 * 操作人为当前登录用户
	 */
	@Bizlet
	public void updateHjztToybf(DataObject[] data,DataObject[] data1, String entity,String entity1,String userRealName) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// TODO 自动生成的方法存根
		for(int i=0;i<data.length;i++){
			String time = sdf.format(new Date());
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			DataObject temp1  = DataObjectUtil.convertDataObject(data1[0],entity1, false);
			
			temp.setString("borrowunit", null);//借用单位
			temp.setString("borrowperson", null);//借用人
			temp.setString("borrowtime", null);//借用时间
			temp.setString("returnunit", null);//归还单位
			temp.setString("returnperson", null);//归还人
			temp.setString("returntime", null);//归还时间
			temp.setString("inspectiontime", null);//送检时间
			temp.setString("inspectionperson", null);//送检人
			temp.setString("maintenancetime",null);//送修时间
			temp.setString("maintenanceperson",null);//送修人
			
			temp.setString("operatingtime", time);
			temp.setString("operator", userRealName);
			temp.setString("state", "YBF");
			temp.setString("location", "SHK");
			
			
			temp1.set("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
			temp1.setString("number", temp.getString("number"));
			temp1.setString("name", temp.getString("name"));
			temp1.setString("equipmenttype", temp.getString("equipmenttype"));
			temp1.setString("input", temp.getString("input"));
			temp1.setString("currentrange", temp.getString("currentrange"));
			temp1.setString("manufacturer", temp.getString("manufacturer"));
			temp1.setString("certificate", temp.getString("certificate"));
			temp1.setString("verification", temp.getString("verification"));
			temp1.setString("fileid", temp.getString("fileid"));
			temp1.setString("jd", temp.getString("jd"));
			temp1.setString("state","BF");
			temp1.setString("unit", "");
			temp1.setString("operateperson", userRealName);
			temp1.setString("operatetime", temp.getString("operatingtime"));
			DatabaseUtil.updateEntity("default",temp);
			DatabaseUtil.insertEntity("default",temp1);
		}
	}

}
