
package com.cgn.itmp.inspectcomponentmanage;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.basecommon.StringUtil;
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
public class TrackingtubeinsService extends DASDaoSupport implements ITrackingtubeinsService{
	public void addTrackingtubeins(Trackingtubeins trackingtubeins){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		trackingtubeins.set("createtime", dateFormat.format(new Date()));
		getDASTemplate().getPrimaryKey(trackingtubeins);
		getDASTemplate().insertEntity(trackingtubeins);
	}

	public void deleteTrackingtubeinss(Trackingtubeins[] trackingtubeinss ){
		for(DataObject trackingtubeins:trackingtubeinss){
			getDASTemplate().deleteEntityCascade(trackingtubeins);
		}
	}


	public void getTrackingtubeins(Trackingtubeins trackingtubeins){
		getDASTemplate().expandEntity(trackingtubeins);
	}


	public Trackingtubeins[] queryTrackingtubeinss(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Trackingtubeins.class, dasCriteria, pageCond);
	}


    public void updateTrackingtubeins(DataObject data,String user,String type){
    	if(type.equals("1")){
	    	DataObject temp2=DataObjectUtil.convertDataObject(data,"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins", false);
	    	DatabaseExt.updateEntityCascade("default", temp2);
	    	return;
    	}else{
    		DataObject tack=DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins");
    		tack.set("uuid",data.get("uuid"));
    		tack.set("processInstId",data.get("processInstId"));
    		tack.set("processStatus","0");
       	  	DatabaseExt.updateEntityCascade("default",tack);
    	}
    	
    	String relationid=data.getString("uuid");
    	DataObject temp=DataObjectUtil.convertDataObject(data,"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins_MF", false);
    	temp.set("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
    	temp.set("relationid",relationid);
    	temp.set("changeuser",user);
    	temp.set("changetime",new Date());
    	
    	DatabaseExt.insertEntityCascade("default", temp);
    }
    public boolean isExist(String funposition,String no_r,String no_c,String uuid,String jd,String jz){
    	Map<String, Object> map=new HashMap<String,Object>();
    	map.put("funposition", funposition);
    	map.put("no_r", no_r);
    	map.put("no_c", no_c);
    	map.put("jd", jd);
    	map.put("jz", jz);
    	if(StringUtil.isEmpty(uuid)){
    	}else{
    		map.put("uuid", uuid);
    	}
    	boolean flag = false;
    	String sql = "com.cgn.itmp.inspectcomponentmanage.trainsmg.impl.trainsmgsql.getTrainsmg";
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
    	if(db.length>0){
    		flag = true;
    	}else{
    		flag = false;
    	}
		return flag;
    }
    
}
