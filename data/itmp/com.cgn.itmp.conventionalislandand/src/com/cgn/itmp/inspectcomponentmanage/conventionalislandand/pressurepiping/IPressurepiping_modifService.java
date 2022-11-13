package com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping;

import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif;

/**
 * <pre>
 * Title: 
 * Description:  
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * 
 */

public interface IPressurepiping_modifService{

	/**
	 *
	 * @param pressurepiping_modif Pressurepiping_modif
	 */
	public abstract void addPressurepiping_modif(Pressurepiping_modif pressurepiping_modif);

	/**
	 *
	 * @param pressurepiping_modifs Pressurepiping_modif[]
	 */
	public abstract void deletePressurepiping_modifs(Pressurepiping_modif[] pressurepiping_modifs);

	/**
	 *
	 * @param pressurepiping_modif Pressurepiping_modif[]
	 */
	public abstract void getPressurepiping_modif(Pressurepiping_modif pressurepiping_modif);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Pressurepiping_modif[]
	 */
	public abstract Pressurepiping_modif[] queryPressurepiping_modifs(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param pressurepiping_modif Pressurepiping_modif[]
	 */
	public abstract void updatePressurepiping_modif(Pressurepiping_modif pressurepiping_modif);

}
