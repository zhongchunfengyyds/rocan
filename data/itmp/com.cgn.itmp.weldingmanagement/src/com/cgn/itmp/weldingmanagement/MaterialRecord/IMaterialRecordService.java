package com.cgn.itmp.weldingmanagement.MaterialRecord;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

/**
 * <pre>
 * Title:焊材使用记录功能接口
 * Description: 焊材使用记录功能接口
 * </pre>
 * @author train (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IMaterialRecordService{

	/**
	 * 焊材使用记录添加功能
	 * @param materialRecord MaterialRecord
	 */
	public abstract void addMaterialRecord(MaterialRecord materialRecord);

	/**
	 * 焊材使用记录删除功能
	 * @param materialRecords MaterialRecord[]
	 */
	public abstract void deleteMaterialRecords(MaterialRecord[] materialRecords);

	/**
	 * 焊材使用记录查询功能
	 * @param materialRecord MaterialRecord[]
	 */
	public abstract void getMaterialRecord(MaterialRecord materialRecord);

	/**
	 * 焊材使用记录分页查询功能
	 * @param criteria CriteriaType 查询条件
	 * @param page PageCond 分页参数
	 * @return MaterialRecord[] 返回结果数据
	 */
	public abstract MaterialRecord[] queryMaterialRecords(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 * 焊材使用记录更新功能
	 * @param materialRecord MaterialRecord[]
	 */
	public abstract void updateMaterialRecord(MaterialRecord materialRecord);

}
