package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl;

import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif;

/**
 * <pre>
 * Title: 
 * Description:  
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * 
 */

public interface IPressurevessel_modifService{

	/**
	 *
	 * @param pressurevessel_modif Pressurevessel_modif
	 */
	public abstract void addPressurevessel_modif(Pressurevessel_modif pressurevessel_modif);

	/**
	 *
	 * @param pressurevessel_modifs Pressurevessel_modif[]
	 */
	public abstract void deletePressurevessel_modifs(Pressurevessel_modif[] pressurevessel_modifs);

	/**
	 *
	 * @param pressurevessel_modif Pressurevessel_modif[]
	 */
	public abstract void getPressurevessel_modif(Pressurevessel_modif pressurevessel_modif);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Pressurevessel_modif[]
	 */
	public abstract Pressurevessel_modif[] queryPressurevessel_modifs(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param pressurevessel_modif Pressurevessel_modif[]
	 */
	public abstract void updatePressurevessel_modif(Pressurevessel_modif pressurevessel_modif);

}
