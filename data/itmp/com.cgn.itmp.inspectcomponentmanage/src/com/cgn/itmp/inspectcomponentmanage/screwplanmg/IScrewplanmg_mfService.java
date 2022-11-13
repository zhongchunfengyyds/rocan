package com.cgn.itmp.inspectcomponentmanage.screwplanmg;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg_mf;

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
public interface IScrewplanmg_mfService{

	/**
	 *
	 * @param screwplanmg_mf Screwplanmg_mf
	 */
	public abstract void addScrewplanmg_mf(Screwplanmg_mf screwplanmg_mf);

	/**
	 *
	 * @param screwplanmg_mfs Screwplanmg_mf[]
	 */
	public abstract void deleteScrewplanmg_mfs(Screwplanmg_mf[] screwplanmg_mfs);

	/**
	 *
	 * @param screwplanmg_mf Screwplanmg_mf[]
	 */
	public abstract void getScrewplanmg_mf(Screwplanmg_mf screwplanmg_mf);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Screwplanmg_mf[]
	 */
	public abstract Screwplanmg_mf[] queryScrewplanmg_mfs(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param screwplanmg_mf Screwplanmg_mf[]
	 */
	public abstract void updateScrewplanmg_mf(Screwplanmg_mf screwplanmg_mf);

}
