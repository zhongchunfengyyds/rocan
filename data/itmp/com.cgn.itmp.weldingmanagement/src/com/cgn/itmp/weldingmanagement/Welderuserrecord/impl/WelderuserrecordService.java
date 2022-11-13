
package com.cgn.itmp.weldingmanagement.Welderuserrecord.impl;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.weldingmanagement.Welderuserrecord.IWelderuserrecordService;
import com.cgn.itmp.weldingmanagement.Welderuserrecord.Welderuserrecord;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 焊机使用记录接口实现类
 * Description: 焊机使用记录接口实现类 
 * </pre>
 * @author train (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class WelderuserrecordService extends DASDaoSupport implements IWelderuserrecordService{
	/**
	 * 焊机使用记录添加
	 */
	public void addWelderuserrecord(Welderuserrecord welderuserrecord){
		getDASTemplate().getPrimaryKey(welderuserrecord);
		getDASTemplate().insertEntity(welderuserrecord);
	}

	/**
	 * 焊机使用记录删除
	 */
	public void deleteWelderuserrecords(Welderuserrecord[] welderuserrecords ){
		for(DataObject welderuserrecord:welderuserrecords){
			getDASTemplate().deleteEntityCascade(welderuserrecord);
		}
	}

	/**
	 * 焊机使用记录查询
	 */
	public void getWelderuserrecord(Welderuserrecord welderuserrecord){
		getDASTemplate().expandEntity(welderuserrecord);
	}


	/**
	 * 焊机使用记录分页查询
	 */
	public Welderuserrecord[] queryWelderuserrecords(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Welderuserrecord.class, dasCriteria, pageCond);
	}


	/**
	 * 焊机使用记录更新
	 */
    public void updateWelderuserrecord(Welderuserrecord welderuserrecord){
	    getDASTemplate().updateEntity(welderuserrecord);
    }
    
}
