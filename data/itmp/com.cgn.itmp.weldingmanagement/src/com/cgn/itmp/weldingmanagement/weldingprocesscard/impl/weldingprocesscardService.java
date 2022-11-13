
package com.cgn.itmp.weldingmanagement.weldingprocesscard.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.database.DatabaseExt;
import com.eos.spring.DASDaoSupport;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.cgn.itmp.weldingmanagement.weldingprocesscard.IweldingprocesscardService;
import com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 焊接工艺卡接口功能实现类
 * Description: 焊接工艺卡接口功能实现类
 * </pre>
 * @author littlebear (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class weldingprocesscardService extends DASDaoSupport implements IweldingprocesscardService{
	
	/**
	 * 焊接工艺卡添加功能
	 */
	public void addweldingprocesscard(weldingprocesscard weldingprocesscard){
		String uuid = (UUID.randomUUID().toString()).replace("-","");
		weldingprocesscard.set("uuid", uuid);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		weldingprocesscard.set("createtime", dateFormat.format(new Date()));
		getDASTemplate().insertEntity(weldingprocesscard);
	}
	
	/**
	 * 焊接工艺卡删除功能
	 */
	public void deleteweldingprocesscards(weldingprocesscard[] weldingprocesscards ){
		for(DataObject weldingprocesscard:weldingprocesscards){
			getDASTemplate().deleteEntityCascade(weldingprocesscard);
		}
	}

	/**
	 * 焊接工艺卡查询功能
	 */
	public void getweldingprocesscard(weldingprocesscard weldingprocesscard){
		getDASTemplate().expandEntity(weldingprocesscard);
	}

	/**
	 * 焊接工艺卡分页查询功能
	 */
	public weldingprocesscard[] queryweldingprocesscards(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(weldingprocesscard.class, dasCriteria, pageCond);
	}

	/**
	 * 焊接工艺卡更新功能
	 */
    public void updateweldingprocesscard(weldingprocesscard weldingprocesscard){
	    getDASTemplate().updateEntity(weldingprocesscard);
    }
    
    /**
	 * 焊接工艺卡逻辑删除功能
	 */
	public void logicweldingprocesscard(DataObject[] data) {
		if(data == null) return;
		String ids = data[0].getString("id");
		String flag = data[0].getString("flag");
		Map<String, Object> map=new HashMap<String, Object>();
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		
		if(!StringHelper.isEmpty(ids)){
			String[] idArr = ids.split(",");
			for (int i = 0; i < idArr.length; i++) {
				String time=sf.format(new Date());
				String id = idArr[i];
				String address;
				if(flag.equals("recovery")){
					address = "com.cgn.itmp.weldingmanagement.weldingprocesscard.wpcard.recovery";
				}else{
					address = "com.cgn.itmp.weldingmanagement.weldingprocesscard.wpcard.logicDele";
					map.put("deletetime", time);
				}
				map.put("id", id);
				
				DatabaseExt.queryByNamedSql("default", address, map);
			}
		}
	}
	
	/**
	 * 获取焊接工艺卡报告编号
	 */
	public DataObject[] getprocessassessreportno(String base,String name) {
		if(StringHelper.isEmpty(base)) return null;
		Map<String, Object> map =new HashMap<String, Object>();
		map.put("base", base);
		map.put("assessmentid", name);
		String sql="com.cgn.itmp.weldingmanagement.weldingprocesscard.wpcard.getProcessAssessmentReport";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
	}
	
	/**
	 * 焊接工艺卡 弹出框数据
	 * @param base
	 * @param name
	 * @return
	 */
	public DataObject[] getProcessCard(String base,String name) {
		if(StringHelper.isEmpty(base)) return null;
		Map<String, Object> map =new HashMap<String, Object>();
		map.put("base", base);
		map.put("weldingMethod", name);
		String sql="com.cgn.itmp.weldingmanagement.weldingprocesscard.wpcard.getProcessCard";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
	}
	
	/**
	 * 焊材 弹出框数据
	 * @param base
	 * @param name
	 * @return
	 */
	public DataObject[] getMaterial(String base,String name) {
		if(StringHelper.isEmpty(base)) return null;
		Map<String, Object> map =new HashMap<String, Object>();
		map.put("base", base);
		map.put("name", name);
		String sql="com.cgn.itmp.weldingmanagement.weldingprocesscard.wpcard.getMaterial";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
	}
	
	/**
	 * 获取焊接工艺卡报告编号和版本
	 */
	public DataObject[] getWpsandEdition(String base) {
		// TODO 自动生成的方法存根
		if(StringHelper.isEmpty(base)) return null;
		String sql="com.cgn.itmp.weldingmanagement.weldingprocesscard.wpcard.getWpsandEdition";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, base);
	}
	
	/**
	 * 获取焊接工艺卡焊接方法
	 */
	public DataObject[] getWeldingMethod(String base,String card_number,String edition) {
		// TODO 自动生成的方法存根
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(card_number)||StringHelper.isEmpty(edition)) return null;
		String sql="com.cgn.itmp.weldingmanagement.weldingprocesscard.wpcard.getWelderMethod";
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("base", base);
		map.put("card_number", card_number);
		map.put("edition",edition);
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
	}
	
	public DataObject getprocesss(String jd,String assessmentid) {
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("jd",jd);
		map.put("assessmentid",assessmentid);
		String sql="com.cgn.itmp.weldingmanagement.weldingprocesscard.wpcard.getWelderassessment";
		DataObject [] obj=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		if(obj.length>0){
			return obj[0];
		}else{	
			return null;
		}
	}
    
}
