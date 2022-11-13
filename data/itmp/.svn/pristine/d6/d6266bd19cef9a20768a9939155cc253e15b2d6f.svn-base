package com.cgn.itmp.conventionalislandand;

import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping;

/**
 * <pre>
 * Title: 
 * Description:  
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * 
 */

public interface IPressurepipingService{

	/**
	 *
	 * @param pressurepiping Pressurepiping
	 */
	public abstract void addPressurepiping(Pressurepiping pressurepiping);

	/**
	 *
	 * @param pressurepipings Pressurepiping[]
	 */
	public abstract void deletePressurepipings(Pressurepiping[] pressurepipings);

	/**
	 *
	 * @param pressurepiping Pressurepiping[]
	 */
	public abstract void getPressurepiping(Pressurepiping pressurepiping);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Pressurepiping[]
	 */
	public abstract Pressurepiping[] queryPressurepipings(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param pressurepiping Pressurepiping[]
	 */
	public abstract void updatePressurepiping(Pressurepiping pressurepiping);

	
	public abstract String getPipeNumber(String base,String pipenumber,String crew);
	
	public void getPressurepipingWork(String processInstId,Pressurepiping pressurepiping);
}
