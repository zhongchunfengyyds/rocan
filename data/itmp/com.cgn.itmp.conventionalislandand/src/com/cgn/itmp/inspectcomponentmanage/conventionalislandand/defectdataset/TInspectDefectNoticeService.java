
package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 常规岛_缺陷显示跟踪与处理信息功能实现类
 * Description: 基本增删改查实现类
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class TInspectDefectNoticeService extends DASDaoSupport implements ITInspectDefectNoticeService{
	/**
	 * 添加缺陷显示跟踪与处理信息
	 */
	public void addTInspectDefectNotice(TInspectDefectNotice tInspectDefectNotice){
		getDASTemplate().getPrimaryKey(tInspectDefectNotice);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		tInspectDefectNotice.set("createtime",dateFormat.format(new Date()));
		getDASTemplate().insertEntity(tInspectDefectNotice);
	}
	
	/**
	 * 删除缺陷显示跟踪与处理信息
	 */
	public void deleteTInspectDefectNotices(TInspectDefectNotice[] tInspectDefectNotices ){
		for(DataObject tInspectDefectNotice:tInspectDefectNotices){
			getDASTemplate().deleteEntityCascade(tInspectDefectNotice);
		}
	}

	/**
	 * 查询缺陷显示跟踪与处理信息
	 */
	public void getTInspectDefectNotice(TInspectDefectNotice tInspectDefectNotice){
		getDASTemplate().expandEntity(tInspectDefectNotice);
	}

		/**
		 * 分页查询缺陷显示跟踪与处理信息
		 */
	public TInspectDefectNotice[] queryTInspectDefectNotices(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(TInspectDefectNotice.class, dasCriteria, pageCond);
	}

		/**
		 * 更新缺陷显示跟踪与处理信息
		 */
    public void updateTInspectDefectNotice(TInspectDefectNotice tInspectDefectNotice){
	    getDASTemplate().updateEntity(tInspectDefectNotice);
    }
    
}
