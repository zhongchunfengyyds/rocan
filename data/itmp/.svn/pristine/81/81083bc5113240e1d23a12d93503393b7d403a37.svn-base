package com.cgn.itmp.knowledgebase;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.cgn.itmp.basecommon.CommonUtil;
import com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述
 * </pre>
 * 
 * @author Administrator (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class TInEncyclopediaService extends DASDaoSupport implements
		ITInEncyclopediaService {
	public void addTInEncyclopedia(TInEncyclopedia tInEncyclopedia) {
		getDASTemplate().getPrimaryKey(tInEncyclopedia);
		getDASTemplate().insertEntity(tInEncyclopedia);
	}

	public void deleteTInEncyclopedias(TInEncyclopedia[] tInEncyclopedias) {
		for (DataObject tInEncyclopedia : tInEncyclopedias) {
			getDASTemplate().deleteEntityCascade(tInEncyclopedia);
		}
	}

	public void getTInEncyclopedia(TInEncyclopedia tInEncyclopedia) {
		getDASTemplate().expandEntity(tInEncyclopedia);
	}

	public TInEncyclopedia[] queryTInEncyclopedias(CriteriaType criteriaType,
			PageCond pageCond) {
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(
				criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(
				TInEncyclopedia.class, dasCriteria, pageCond);
	}

	public void updateTInEncyclopedia(TInEncyclopedia tInEncyclopedia) {
		getDASTemplate().updateEntity(tInEncyclopedia);
	}

	public void addOrEdit(DataObject data) {
		if (data == null)
			return;
		String op = data.getString("_state"); // com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.InternalExperienceFeedback
		DataObject temp = DataObjectUtil.convertDataObject(data,
				"com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia",
				false);
		if ("added".equals(op)) { // 新增
			temp.setString("uuid",
					UUID.randomUUID().toString().replaceAll("-", ""));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
			temp.setString("addtime", sdf.format(new Date()));
			temp.setString("isdel", "0");
			temp.setString("uploadtime", sdf.format(new Date()));
			temp.setString("uploadperson", CommonUtil.getUserObject().getUserRealName());
			DatabaseUtil.insertEntity("default", temp);
		} else if ("modified".equals(op)) { // 修改
			DatabaseExt.updateEntityCascade("default", temp);
		}

	}
	
	/**
	 * 逻辑删除(附加删除人删除时间)
	 * @param data
	 * @param entity
	 * @param deleteperson
	 */
	public void deleteKnowledge(DataObject[] data,String entity,String deleteperson) {
		for(int i=0;i<data.length;i++){
			DataObject temp  = DataObjectUtil.createDataObject(entity);
			temp.set("uuid", data[i].getString("uuid"));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
			 String time = sdf.format(new Date());
			temp.set("deletetime", time);
			temp.set("deleteperson", deleteperson);
			temp.setInt("isdel",1);
			DatabaseUtil.updateEntity("default", temp);
		}
	}
	
	
	/**
	 * 逻辑删除(附加删除人删除时间)
	 * @param data
	 * @param entity
	 * @param deleteperson
	 */
	public void deleteONE(DataObject[] data,String entity,String deleteperson) {
		for(int i=0;i<data.length;i++){
			DataObject temp  = DataObjectUtil.createDataObject(entity);
			temp.set("uuid", data[i].getString("uuid"));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
			String time = sdf.format(new Date());
//			temp.set("deletetime", time);
//			temp.set("deleteperson", deleteperson);
//			temp.setInt("isdel",1);
			temp.set("isdelete","1");
			temp.set("deluser", deleteperson);
			temp.set("deltime",new Date());
			DatabaseUtil.updateEntity("default", temp);
		}
	}
	
}
