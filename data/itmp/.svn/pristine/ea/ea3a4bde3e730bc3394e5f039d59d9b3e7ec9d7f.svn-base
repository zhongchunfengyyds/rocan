
package com.cgn.itmp.inspectcomponentmanage.pipebaseInfo;

import java.util.HashMap;
import java.util.Map;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cgn.itmp.inspectcomponentmanage.pipelayout.PipeBaseInfo;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
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
@SuppressWarnings("all")
public class PipeBaseInfoService extends DASDaoSupport implements IPipeBaseInfoService{
	public void addPipeBaseInfo(PipeBaseInfo pipeBaseInfo){
		getDASTemplate().getPrimaryKey(pipeBaseInfo);
		getDASTemplate().insertEntity(pipeBaseInfo);
	}

	public void deletePipeBaseInfos(PipeBaseInfo[] pipeBaseInfos ){
		for(DataObject pipeBaseInfo:pipeBaseInfos){
			getDASTemplate().deleteEntityCascade(pipeBaseInfo);
		}
	}


	public void getPipeBaseInfo(PipeBaseInfo pipeBaseInfo){
		getDASTemplate().expandEntity(pipeBaseInfo);
	}


	public PipeBaseInfo[] queryPipeBaseInfos(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(PipeBaseInfo.class, dasCriteria, pageCond);
	}


    public void updatePipeBaseInfo(PipeBaseInfo pipeBaseInfo){
	    getDASTemplate().updateEntity(pipeBaseInfo);
    }
    /**
     * 根据基地获取对应的蒸发器
     * @param myDatas
     * @return
     */
    public JSONObject getPipeModel(DataObject myDatas){
    	JSONArray array = new JSONArray();
    	JSONObject jsonobj = new JSONObject();
    	Map map = new HashMap();
    	if(myDatas.get("jd").equals("86")){
    		map.put("jd", myDatas.get("jd"));
    	}else if(myDatas.get("jd").equals("all")){
    		map.put("jd", "all");
    	}else{
    	}
    	String sql = "com.cgn.itmp.inspectcomponentmanage.pipebaseInfo.pipebaseInfo.getPipeModel";
    	//获取全部管束
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
    	for (int K = 0; K < db.length; K++) {
    		JSONObject obj = new JSONObject();
			DataObject dataObject = db[K];
			obj.put("id", dataObject.getString("MODEL"));
			obj.put("text", dataObject.getString("MODEL"));
			array.add(obj);
		}
    	jsonobj.put("data", array);
		return jsonobj;
    }
    
}
