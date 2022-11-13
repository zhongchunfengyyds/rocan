
package com.cgn.itmp.knowledgebase;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.cgn.itmp.knowledgebase.Regulation.TInInternaldocuments;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
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
 * @author wangyx (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class TInInternaldocumentsService extends DASDaoSupport implements ITInInternaldocumentsService{
	public void addTInInternaldocuments(TInInternaldocuments tInInternaldocuments){
		getDASTemplate().getPrimaryKey(tInInternaldocuments);
		getDASTemplate().insertEntity(tInInternaldocuments);
	}

	public void deleteTInInternaldocumentss(TInInternaldocuments[] tInInternaldocumentss ){
		for(DataObject tInInternaldocuments:tInInternaldocumentss){
			getDASTemplate().deleteEntityCascade(tInInternaldocuments);
		}
	}


	public void getTInInternaldocuments(TInInternaldocuments tInInternaldocuments){
		getDASTemplate().expandEntity(tInInternaldocuments);
	}


	public TInInternaldocuments[] queryTInInternaldocumentss(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(TInInternaldocuments.class, dasCriteria, pageCond);
	}


    public void updateTInInternaldocuments(TInInternaldocuments tInInternaldocuments){
	    getDASTemplate().updateEntity(tInInternaldocuments);
    }
    
    
    /**
	 * 附件上传修改判断
	 * 
	 * @param obj
	 *            实体名字
	 * @throws IOException
	 */
    public void addOrEdit(DataObject data) {
		if(data == null) return;
		String op = data.getString("_state"); 
		//com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.InternalExperienceFeedback         
		DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.knowledgebase.Regulation.TInInternaldocuments", false);																		
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
