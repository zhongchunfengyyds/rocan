package com.cgn.itmp.inspectcomponentmanage;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author littlebear (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IPipeblockageService{

	/**
	 *
	 * @param pipeblockage Pipeblockage
	 */
	public abstract void addPipeblockage(Pipeblockage pipeblockage);

	/**
	 *
	 * @param pipeblockages Pipeblockage[]
	 */
	public abstract void deletePipeblockages(Pipeblockage[] pipeblockages);

	/**
	 *
	 * @param pipeblockage Pipeblockage[]
	 */
	public abstract void getPipeblockage(Pipeblockage pipeblockage);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Pipeblockage[]
	 */
	public abstract Pipeblockage[] queryPipeblockages(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param pipeblockage Pipeblockage[]
	 */
	public abstract void updatePipeblockage(DataObject data,String user,String type);

}
