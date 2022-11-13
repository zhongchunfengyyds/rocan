
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author Administrator (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class TInspectDefectNoticeService extends DASDaoSupport implements ITInspectDefectNoticeService{
	public void addTInspectDefectNotice(TInspectDefectNotice tInspectDefectNotice){
		getDASTemplate().getPrimaryKey(tInspectDefectNotice);
		getDASTemplate().insertEntity(tInspectDefectNotice);
	}

	public void deleteTInspectDefectNotices(TInspectDefectNotice[] tInspectDefectNotices ){
		for(DataObject tInspectDefectNotice:tInspectDefectNotices){
			getDASTemplate().deleteEntityCascade(tInspectDefectNotice);
		}
	}


	public void getTInspectDefectNotice(TInspectDefectNotice tInspectDefectNotice){
		getDASTemplate().expandEntity(tInspectDefectNotice);
	}


	public TInspectDefectNotice[] queryTInspectDefectNotices(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(TInspectDefectNotice.class, dasCriteria, pageCond);
	}


    public void updateTInspectDefectNotice(TInspectDefectNotice tInspectDefectNotice){
	    getDASTemplate().updateEntity(tInspectDefectNotice);
    }

	public void addOrEdit(DataObject data) {
		// TODO 自动生成的方法存根
		if(data == null) return;
		String op = data.getString("_state");                    //com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.InternalExperienceFeedback         
		DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice", false);																		
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
