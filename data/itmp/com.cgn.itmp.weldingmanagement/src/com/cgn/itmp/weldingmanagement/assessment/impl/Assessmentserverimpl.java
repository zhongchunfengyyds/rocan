/**
 * 
 */
package com.cgn.itmp.weldingmanagement.assessment.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.eos.system.annotation.Bizlet;
import com.eos.system.utility.StringUtil;

import commonj.sdo.DataObject;

/**
 * @author swh
 * @date 2019-08-06 09:19:57
 *
 */
@Bizlet("Assessmentserverimpl")
public class Assessmentserverimpl extends DASDaoSupport implements Assessmentserver{
	
	/**
	 * @author swh
	 * @date 2019-08-06 09:19:57
	 *逻辑删除
	 */
	@Bizlet
	public void updatedel(DataObject[] data,String entity,String deleteperson) {
		
		for(int i=0;i<data.length;i++){
			DataObject obj=DataObjectUtil.createDataObject(entity);
			obj.set("uuid",data[i].get("uuid"));
			obj.setInt("isdel",1);
			SimpleDateFormat date=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
			obj.setString("deletetime",date.format(new Date()));
			obj.setString("deleteperson",deleteperson);
			data[i]=obj;
		}
		DatabaseUtil.updateEntityBatch("default",data);
	}
	
	/**
	 * @author swh
	 * @date 2019-08-06 09:19:57
	 *逻辑恢复
	 */
	@Bizlet
	public void recovery(DataObject[] data,String entity) {
		for(int i=0;i<data.length;i++){
			data[i]  = DataObjectUtil.convertDataObject(data[i],entity, false);
			data[i].setInt("isdel",0);
			data[i].setString("deletetime",null);
			data[i].setString("deleteperson",null);
		}
		DatabaseUtil.updateEntityBatch("default",data);
	}
	
	
	/**
	 * @author swh
	 * @date 2019-08-06 09:19:57
	 *删除数据
	 */
	@Bizlet
	public void delete(DataObject[] data,String entity) {
		for(int i=0;i<data.length;i++){
			data[i]  = DataObjectUtil.convertDataObject(data[i],entity, false);
		}
		DatabaseUtil.deleteEntityBatch("default",data);
	}


}
