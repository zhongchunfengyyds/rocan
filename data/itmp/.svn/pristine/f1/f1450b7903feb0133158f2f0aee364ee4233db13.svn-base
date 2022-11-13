package com.cgn.itmp.inspectcomponentmanage.trainsmg;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg;
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
public interface ITrainsmgService{

	/**
	 *
	 * @param trainsmg Trainsmg
	 */
	public abstract void addTrainsmg(DataObject trainsmg,String user,String type);

	/**
	 *
	 * @param trainsmgs Trainsmg[]
	 */
	public abstract void deleteTrainsmgs(Trainsmg[] trainsmgs);

	/**
	 *
	 * @param trainsmg Trainsmg[]
	 */
	public abstract void getTrainsmg(Trainsmg trainsmg);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Trainsmg[]
	 */
	public abstract Trainsmg[] queryTrainsmgs(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param trainsmg Trainsmg[]
	 */
	public abstract void updateTrainsmg(DataObject trainsmg,String user,String type);

}
