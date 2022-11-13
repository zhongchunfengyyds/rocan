package com.cgn.itmp.conventionalislandand;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler_modif;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface IBoiler_modifService{

	/**
	 *
	 * @param boiler_modif Boiler_modif
	 */
	public abstract void addBoiler_modif(Boiler_modif boiler_modif);

	/**
	 *
	 * @param boiler_modifs Boiler_modif[]
	 */
	public abstract void deleteBoiler_modifs(Boiler_modif[] boiler_modifs);

	/**
	 *
	 * @param boiler_modif Boiler_modif[]
	 */
	public abstract void getBoiler_modif(Boiler_modif boiler_modif);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Boiler_modif[]
	 */
	public abstract Boiler_modif[] queryBoiler_modifs(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param boiler_modif Boiler_modif[]
	 */
	public abstract void updateBoiler_modif(Boiler_modif boiler_modif);

}
