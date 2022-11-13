package com.cgn.itmp.conventionalislandand;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler;

import commonj.sdo.DataObject;

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
public interface IBoilerService{

	/**
	 *
	 * @param 新增
	 */
	public abstract void addBoiler(Boiler boiler);

	/**
	 *
	 * @param 删除
	 */
	public abstract void deleteBoilers(Boiler[] boilers);

	/**
	 *
	 * @param 查找
	 */
	public abstract void getBoiler(Boiler boiler);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Boiler[] 分页查询
	 */
	public abstract Boiler[] queryBoilers(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param boiler Boiler[] 跟新
	 */
	public abstract void updateBoiler(Boiler boiler);

	/**
	 * 
	 * @param data
	 * @param user 修改流程操作
	 */
	 public void adminupdateBoilerwork(DataObject data,String user,String type);
	 
	 /**
	  * 审批结束修改流程
	  * @param data
	  * @param user
	  */
	 public void endBoilerwork(DataObject data,String user);
	 
	 /**
	  * 新增流程
	  * @param boiler
	  * @param type
	  */
	 public void adminaddBoilerwork(DataObject data,String user,String type);
}
