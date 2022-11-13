package com.cgn.itmp.inspectcomponentmanage;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins;
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
public interface ITrackingtubeinsService{

	/**
	 *
	 * @param trackingtubeins Trackingtubeins
	 */
	public abstract void addTrackingtubeins(Trackingtubeins trackingtubeins);

	/**
	 *
	 * @param trackingtubeinss Trackingtubeins[]
	 */
	public abstract void deleteTrackingtubeinss(Trackingtubeins[] trackingtubeinss);

	/**
	 *
	 * @param trackingtubeins Trackingtubeins[]
	 */
	public abstract void getTrackingtubeins(Trackingtubeins trackingtubeins);

	/**
	 *
	 * @param criteria CriteriaType
	 * @param page PageCond
	 * @return Trackingtubeins[]
	 */
	public abstract Trackingtubeins[] queryTrackingtubeinss(CriteriaType criteriaType,
			PageCond pageCond);

	/**
	 *
	 * @param trackingtubeins Trackingtubeins[]
	 */
	public abstract void updateTrackingtubeins(DataObject data,String user,String type);

}
