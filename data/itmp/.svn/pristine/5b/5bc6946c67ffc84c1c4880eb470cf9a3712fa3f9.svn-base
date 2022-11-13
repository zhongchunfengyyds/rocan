
package com.cgn.itmp.inspectcomponentmanage;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectdisplaytrackingandprocessing.Defectdisplaytrackingandprocessing;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 缺陷显示管理模块功能实现类
 * Description: 缺陷显示管理模块基础增删改查功能封装类 
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class DefectdisplaytrackingandprocessingService extends DASDaoSupport implements IDefectdisplaytrackingandprocessingService{
	
	/**
	 * 数据增加方法
	 */
	public void addDefectdisplaytrackingandprocessing(Defectdisplaytrackingandprocessing defectdisplaytrackingandprocessing){
		getDASTemplate().getPrimaryKey(defectdisplaytrackingandprocessing);
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		defectdisplaytrackingandprocessing.set("createtime",df.format(new Date()));
		getDASTemplate().insertEntity(defectdisplaytrackingandprocessing);
	}
	
	/**
	 * 数据实体删除方法
	 */
	public void deleteDefectdisplaytrackingandprocessings(Defectdisplaytrackingandprocessing[] defectdisplaytrackingandprocessings ){
		for(DataObject defectdisplaytrackingandprocessing:defectdisplaytrackingandprocessings){
			getDASTemplate().deleteEntityCascade(defectdisplaytrackingandprocessing);
		}
	}

	/**
	 * 数据实体查询方法
	 */
	public void getDefectdisplaytrackingandprocessing(Defectdisplaytrackingandprocessing defectdisplaytrackingandprocessing){
		getDASTemplate().expandEntity(defectdisplaytrackingandprocessing);
	}

	/**
	 * 数据实体查询（分页）方法
	 */
	public Defectdisplaytrackingandprocessing[] queryDefectdisplaytrackingandprocessings(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Defectdisplaytrackingandprocessing.class, dasCriteria, pageCond);
	}

	/**
	 * 数据实体更新方法
	 */
    public void updateDefectdisplaytrackingandprocessing(Defectdisplaytrackingandprocessing defectdisplaytrackingandprocessing){
	    getDASTemplate().updateEntity(defectdisplaytrackingandprocessing);
    }

    /**
	 * 根据清单获取是否有指定实体数据
	 * 
	 * @param fieldName
	 *            字段
	 * @param fieldValue
	 *            字段值
	 * @param entity
	 *            实体
	 * @param base
	 *            基地
	 * @param crew
	 *            机组
	 * @return
	 */
	public Map<String, Object> getDataByPosition(String fieldName,
			String fieldValue, String entity, String jd,
			String jz) {
		if (StringHelper.isEmpty(fieldName) || StringHelper.isEmpty(fieldValue)
				|| StringHelper.isEmpty(entity)
			
				|| StringHelper.isEmpty(jd) || StringHelper.isEmpty(jz))
			return null;
		Map<String, Object> valueMap = new HashMap<String, Object>();
		DataObject dataEntity = DataObjectUtil.createDataObject(entity);
		dataEntity.setString(fieldName, fieldValue);
		dataEntity.setString("jd", jd);
		dataEntity.setString("jz", jz);
		dataEntity.setString("isdel", "0");
		DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate(
				"default", dataEntity);
		if (dataParms != null && dataParms.length > 0) {
			valueMap.put("data1", true);
		} else {
			valueMap.put("data1", false);
		}
		
		return valueMap;
	}
    
}
