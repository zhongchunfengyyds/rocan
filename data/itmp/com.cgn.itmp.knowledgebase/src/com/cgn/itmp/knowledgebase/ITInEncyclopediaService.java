package com.cgn.itmp.knowledgebase;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author Administrator (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public interface ITInEncyclopediaService{

	/**
	 *
	 * @param tInEncyclopedia TInEncyclopedia
	 */
	public abstract void addTInEncyclopedia(TInEncyclopedia tInEncyclopedia);

	/**
	 *
	 * @param tInEncyclopedias TInEncyclopedia[]
	 */
	public abstract void deleteTInEncyclopedias(TInEncyclopedia[] tInEncyclopedias);

	/**
	 *
	 * @param tInEncyclopedia TInEncyclopedia[]
	 */
	public abstract void getTInEncyclopedia(TInEncyclopedia tInEncyclopedia);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return TInEncyclopedia[]
	 */
	public abstract TInEncyclopedia[] queryTInEncyclopedias(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param tInEncyclopedia TInEncyclopedia[]
	 */
	public abstract void updateTInEncyclopedia(TInEncyclopedia tInEncyclopedia);
	
	
	public abstract void addOrEdit(DataObject data);

}
