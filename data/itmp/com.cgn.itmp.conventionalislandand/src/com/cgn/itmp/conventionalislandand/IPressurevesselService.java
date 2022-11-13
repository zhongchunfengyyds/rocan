package com.cgn.itmp.conventionalislandand;

import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel;

/**
 * <pre>
 * Title: 
 * Description:  
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * 
 */

public interface IPressurevesselService{

	/**
	 *
	 * @param pressurevessel Pressurevessel
	 */
	public abstract void addPressurevessel(Pressurevessel pressurevessel);

	/**
	 *
	 * @param pressurevessels Pressurevessel[]
	 */
	public abstract void deletePressurevessels(Pressurevessel[] pressurevessels);

	/**
	 *
	 * @param pressurevessel Pressurevessel[]
	 */
	public abstract void getPressurevessel(Pressurevessel pressurevessel);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Pressurevessel[]
	 */
	public abstract Pressurevessel[] queryPressurevessels(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param pressurevessel Pressurevessel[]
	 */
	public abstract void updatePressurevessel(Pressurevessel pressurevessel);

	/**
	 * 获取设备编号数量
	 * @param base 基地
	 * @param equipmentnumber
	 * @return
	 */
	public abstract String getEquipmentNumber(String base,String equipmentnumber,String crew);
}
