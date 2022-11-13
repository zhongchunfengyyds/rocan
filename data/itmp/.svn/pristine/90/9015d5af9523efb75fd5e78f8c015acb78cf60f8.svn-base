/**
 * 
 */
package com.cgn.itmp.basecommon;

import com.cgn.itmp.weldingmanagement.assessment.impl.Assessmentserver;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.eos.system.annotation.Bizlet;
import commonj.sdo.DataObject;

/**
 * @author swh
 * @date 2019-08-06 09:19:57
 *
 */
@Bizlet("Assessmentserverimpl")
public class CommonCurd extends DASDaoSupport implements Assessmentserver{
	
	/**
	 * @author swh
	 * @date 2019-08-06 09:19:57
	 *逻辑删除
	 */
	@Bizlet
	public void updatedel(DataObject[] data,String entity,String deleteperson) {
		for(int i=0;i<data.length;i++){
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			temp.setInt("isdel",1);
			DatabaseUtil.updateEntity("default",temp);
		}
	}
	
	/**
	 * @author swh
	 * @date 2019-08-06 09:19:57
	 *逻辑恢复
	 */
	@Bizlet
	public void recovery(DataObject[] data,String entity) {
		for(int i=0;i<data.length;i++){
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			temp.setInt("isdel",0);
			DatabaseUtil.updateEntity("default",temp);
		}
	}
	
	
	/**
	 * @author swh
	 * @date 2019-08-06 09:19:57
	 *删除数据
	 */
	@Bizlet
	public void delete(DataObject[] data,String entity) {
		for(int i=0;i<data.length;i++){
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			DatabaseUtil.deleteEntity("default",temp);
		}
	}


}
