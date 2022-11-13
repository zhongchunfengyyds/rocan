package com.cgn.itmp.inspectcomponentmanage.insplanmg;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg;

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
public interface IInsplanmgService{

	/**
	 *
	 * @param insplanmg Insplanmg
	 */
	public abstract void addInsplanmg(Insplanmg insplanmg);

	/**
	 *
	 * @param insplanmgs Insplanmg[]
	 */
	public abstract void deleteInsplanmgs(Insplanmg[] insplanmgs);

	/**
	 *
	 * @param insplanmg Insplanmg[]
	 */
	public abstract void getInsplanmg(Insplanmg insplanmg);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Insplanmg[]
	 */
	public abstract Insplanmg[] queryInsplanmgs(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param insplanmg Insplanmg[]
	 */
	public abstract void updateInsplanmg(Insplanmg insplanmg,String user);

}
