package com.cgn.itmp.inspectcomponentmanage.screwplanmg;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg;
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
public interface IScrewplanmgService{

	/**
	 *
	 * @param screwplanmg Screwplanmg
	 */
	public abstract void addScrewplanmg(Screwplanmg screwplanmg);

	/**
	 *
	 * @param screwplanmgs Screwplanmg[]
	 */
	public abstract void deleteScrewplanmgs(Screwplanmg[] screwplanmgs);

	/**
	 *
	 * @param screwplanmg Screwplanmg[]
	 */
	public abstract void getScrewplanmg(Screwplanmg screwplanmg);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Screwplanmg[]
	 */
	public abstract Screwplanmg[] queryScrewplanmgs(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param screwplanmg Screwplanmg[]
	 */
	public abstract void updateScrewplanmg(DataObject data,String usr);

}
