package com.cgn.itmp.inspectcomponentmanage.insplanmg;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif;

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
public interface IInsplanmg_modifService{

	/**
	 *
	 * @param insplanmg_modif Insplanmg_modif
	 */
	public abstract void addInsplanmg_modif(Insplanmg_modif insplanmg_modif);

	/**
	 *
	 * @param insplanmg_modifs Insplanmg_modif[]
	 */
	public abstract void deleteInsplanmg_modifs(Insplanmg_modif[] insplanmg_modifs);

	/**
	 *
	 * @param insplanmg_modif Insplanmg_modif[]
	 */
	public abstract void getInsplanmg_modif(Insplanmg_modif insplanmg_modif);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Insplanmg_modif[]
	 */
	public abstract Insplanmg_modif[] queryInsplanmg_modifs(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param insplanmg_modif Insplanmg_modif[]
	 */
	public abstract void updateInsplanmg_modif(Insplanmg_modif insplanmg_modif);

}
