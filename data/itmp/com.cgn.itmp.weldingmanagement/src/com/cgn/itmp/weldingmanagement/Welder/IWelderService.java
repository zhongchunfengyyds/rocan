package com.cgn.itmp.weldingmanagement.Welder;

import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 
 * Description:  
 * </pre>
 * @author LENOVO (mailto:service6@primeton.com)
 * 
 */

public interface IWelderService{

	/**
	 *
	 * @param welder Welder
	 */
	public abstract void addWelder(Welder welder);

	/**
	 *
	 * @param welders Welder[]
	 */
	public abstract void deleteWelders(Welder[] welders);

	/**
	 *
	 * @param welder Welder[]
	 */
	public abstract void getWelder(Welder welder);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Welder[]
	 */
	public abstract Welder[] queryWelders(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param welder Welder[]
	 */
	public abstract void updateWelder(Welder welder);
	
	
	/**
	 * 
	 * 获取焊工名字
	 */
	public abstract DataObject[] getweldername(String base);
}
