package com.cgn.itmp.inspectcomponentmanage;
import java.text.ParseException;

import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Ghttinspection;

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
public interface IGhttinspectionService{

	/**
	 *
	 * @param ghttinspection Ghttinspection
	 * @throws ParseException 
	 */
	public abstract void addGhttinspection(Ghttinspection ghttinspection) throws ParseException;

	/**
	 *
	 * @param ghttinspections Ghttinspection[]
	 */
	public abstract void deleteGhttinspections(Ghttinspection[] ghttinspections);

	/**
	 *
	 * @param ghttinspection Ghttinspection[]
	 */
	public abstract void getGhttinspection(Ghttinspection ghttinspection);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Ghttinspection[]
	 */
	public abstract Ghttinspection[] queryGhttinspections(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param ghttinspection Ghttinspection[]
	 */
	public abstract void updateGhttinspection(Ghttinspection ghttinspection);

}
