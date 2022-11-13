package com.cgn.itmp.weldingmanagement.Processes.impl;

import com.cgn.itmp.weldingmanagement.Processes.Processesserver;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.system.annotation.Bizlet;
import commonj.sdo.DataObject;

/**
 * @author LENOVO
 * @date 2019-08-26 09:19:57
 *
 */
@Bizlet("ProcessesserverImpl")
public class ProcessesserverImpl implements Processesserver{
	
	/**
	 * 逻辑删除 isdel状态为1
	 */
	@Bizlet
	public void updatedel(DataObject[] data, String entity) {
		// TODO 自动生成的方法存根
		for(int i=0;i<data.length;i++){
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			temp.setInt("isdel",1);
			DatabaseUtil.updateEntity("default",temp);
		}
	}
	/**
	 * 恢复删除 isdel状态为0
	 */
	@Bizlet
	public void updatedelbyRez(DataObject[] data, String entity) {
		for(int i=0;i<data.length;i++){
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			temp.setInt("isdel",0);
			DatabaseUtil.updateEntity("default",temp);
		}
	}
	
}
