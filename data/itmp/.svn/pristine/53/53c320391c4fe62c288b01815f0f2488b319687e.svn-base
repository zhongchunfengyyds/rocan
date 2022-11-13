
package com.cgn.itmp.weldingmanagement.MaterialRecord.impl;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.weldingmanagement.MaterialRecord.IMaterialRecordService;
import com.cgn.itmp.weldingmanagement.MaterialRecord.MaterialRecord;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 焊材使用记录接口实现类
 * Description: 程序功能的描述 
 * </pre>
 * @author train (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class MaterialRecordService extends DASDaoSupport implements IMaterialRecordService{
	/**
	 * 焊材使用记录添加功能
	 */
	public void addMaterialRecord(MaterialRecord materialRecord){
		getDASTemplate().getPrimaryKey(materialRecord);
		getDASTemplate().insertEntity(materialRecord);
	}

	/**
	 * 焊材使用记录删除功能
	 */
	public void deleteMaterialRecords(MaterialRecord[] materialRecords ){
		for(DataObject materialRecord:materialRecords){
			getDASTemplate().deleteEntityCascade(materialRecord);
		}
	}

	/**
	 * 焊材使用记录查询功能
	 */
	public void getMaterialRecord(MaterialRecord materialRecord){
		getDASTemplate().expandEntity(materialRecord);
	}


	/**
	 * 焊材使用记录分页查询功能
	 */
	public MaterialRecord[] queryMaterialRecords(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(MaterialRecord.class, dasCriteria, pageCond);
	}
	
	/**
	 * 焊材使用记录更新功能
	 */
    public void updateMaterialRecord(MaterialRecord materialRecord){
	    getDASTemplate().updateEntity(materialRecord);
    }
    
}
