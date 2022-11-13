package com.cgn.itmp.inspectcomponentmanage.trainsmg;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;

import com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf;

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
public interface ITrainsmg_mfService{

	/**
	 *
	 * @param trainsmg_mf Trainsmg_mf
	 */
	public abstract void addTrainsmg_mf(Trainsmg_mf trainsmg_mf);

	/**
	 *
	 * @param trainsmg_mfs Trainsmg_mf[]
	 */
	public abstract void deleteTrainsmg_mfs(Trainsmg_mf[] trainsmg_mfs);

	/**
	 *
	 * @param trainsmg_mf Trainsmg_mf[]
	 */
	public abstract void getTrainsmg_mf(Trainsmg_mf trainsmg_mf);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Trainsmg_mf[]
	 */
	public abstract Trainsmg_mf[] queryTrainsmg_mfs(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param trainsmg_mf Trainsmg_mf[]
	 */
	public abstract void updateTrainsmg_mf(Trainsmg_mf trainsmg_mf);

}
