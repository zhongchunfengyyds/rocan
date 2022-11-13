
package com.cgn.itmp.inspectcomponentmanage.foreignmattermg;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.spring.DASDaoSupport;
import com.eos.system.utility.StringUtil;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg;
import com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg;

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
public class ForeignmattermgService extends DASDaoSupport implements IForeignmattermgService{
	
	/**
	 * 新增
	 */
	public void addForeignmattermg(Foreignmattermg foreignmattermg){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		foreignmattermg.set("createtime", dateFormat.format(new Date()));
		DataObject dbDataObject = DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg");
		dbDataObject.set("jd",foreignmattermg.get("jd"));
		dbDataObject.set("jz",foreignmattermg.get("jz"));
		dbDataObject.set("overhaulsq",  foreignmattermg.get("overhaulsq"));
		Object ser = getSerialnum(dbDataObject).get("SERIALNUM");
		foreignmattermg.set("serialnum", ser.toString());//returnData.get("SERIALNUM")
		getDASTemplate().getPrimaryKey(foreignmattermg);
		getDASTemplate().insertEntity(foreignmattermg);
	}
	/**
	 * 删除
	 */
	public void deleteForeignmattermgs(Foreignmattermg[] foreignmattermgs ){
		for(DataObject foreignmattermg:foreignmattermgs){
			getDASTemplate().deleteEntityCascade(foreignmattermg);
		}
	}

	/**
	 * 查询全部
	 */
	public void getForeignmattermg(Foreignmattermg foreignmattermg){
		getDASTemplate().expandEntity(foreignmattermg);
	}

	/**
	 * 查询
	 */
	public Foreignmattermg[] queryForeignmattermgs(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		Foreignmattermg[] fore = getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Foreignmattermg.class, dasCriteria, pageCond);
		for(DataObject obj : fore){
			obj.set("checkstage", obj.getString("checkstage").replaceAll("，", ","));
		}
		return fore;
	}

	/**
	 * 修改
	 */
    public void updateForeignmattermg(DataObject data,String user,String type){
    	
    	Map afterChange = new HashMap();//修改后
    	afterChange.put("overhaulsq",data.get("overhaulsq"));
    	afterChange.put("funposition",data.get("funposition"));
    	afterChange.put("focde",data.get("focde"));
    	afterChange.put("checkstage",data.get("checkstage"));
    	afterChange.put("changeReason",data.get("changeReason"));
    	afterChange.put("istakeout",data.get("istakeout"));
    	afterChange.put("foposition",data.get("foposition")==null?"":data.get("foposition"));
    	afterChange.put("fosize",data.get("fosize")==null?"":data.get("fosize"));
    	afterChange.put("fokg",data.get("fokg")==null?"":data.get("fokg"));
    	afterChange.put("foattribute",data.get("foattribute")==null?"":data.get("foattribute"));
    	afterChange.put("fodisimgfj",data.get("fodisimgfj")==null?"":data.get("fodisimgfj"));
    	afterChange.put("fodisimgfileid",data.get("fodisimgfileid")==null?"":data.get("fodisimgfileid"));
    	afterChange.put("fileid",data.get("fileid")==null?"":data.get("fileid"));
    	afterChange.put("fj",data.get("fj")==null?"":data.get("fj"));
    	afterChange.put("remake",data.get("remake")==null?"":data.get("remake"));
    	afterChange.put("uuid",data.get("uuid"));//获取UUID
    	afterChange.put("jd",data.get("jd"));
    	afterChange.put("jz",data.get("jz"));
    	afterChange.put("jhry",data.get("jhry"));
    	afterChange.put("ccry",data.get("ccry"));
    	afterChange.put("processInstId",data.get("processInstId"));//获取流程
    	afterChange.put("relationid",data.get("uuid"));//获取关联id
    	afterChange.put("applicant",user);
    	afterChange.put("applicanttime",new Date());
//    	DataObject foreign=DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg");
//    	foreign.set("processStatus","1");
//    	foreign.set("uuid",data.get("uuid"));
//    	
//    	DatabaseExt.updateEntityCascade("default", foreign);
    	
    	//获取修改后的数据
    	insert(afterChange);
    	if(type.equals("1")){
        	DataObject temp=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg", false);
       	  	temp.set("changeuser",user);//获取用户名
       	  	DatabaseExt.updateEntityCascade("default", temp);     		
    	}else{
    		DataObject fore=DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg");
        	fore.set("uuid",data.get("uuid"));
        	fore.set("processInstId",data.get("processInstId"));
        	fore.set("processStatus","0");
       	  	DatabaseExt.updateEntityCascade("default",fore);	
    	}
    }
    /**
     * 同意并结束流程
     * @param data
     * @param user
     */
       public void endForeigwork(DataObject data,String user){
     	  data.set("uuid",data.getString("relationid"));
     	  DataObject temp=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg", false);
     	  temp.set("changeuser",user);//获取用户名
     	  DatabaseExt.updateEntityCascade("default", temp); 
       }
   /**
    * 修改记录
    * @param afterChange
    * @return
    */
    public boolean insert(Map afterChange){
    	//获取UUID
    	String uuid = afterChange.get("uuid").toString();
    	//获取修改前的数据
    	Map beforChange = getBeforChange(uuid);
    	StringBuffer changeinfo = new StringBuffer();//修改内容
    	
    	//对比修改前后是否相同
    	if(afterChange.get("overhaulsq").equals(beforChange.get("overhaulsq"))||(StringUtil.isEmpty(afterChange.get("overhaulsq").toString())&&StringUtil.isEmpty(beforChange.get("overhaulsq").toString()))){
    	}else{
    		changeinfo.append("大修轮由：").append(beforChange.get("overhaulsq")).append("，修改为：").append(afterChange.get("overhaulsq")).append("；");
    	}
    	if(afterChange.get("funposition").equals(beforChange.get("funposition"))||(StringUtil.isEmpty(afterChange.get("funposition").toString())&&StringUtil.isEmpty(beforChange.get("funposition").toString()))){
    	}else{
    		changeinfo.append("功能位置由：").append(beforChange.get("funposition")).append("，修改为：").append(afterChange.get("funposition")).append("；");
    	}
    	if(afterChange.get("focde").equals(beforChange.get("focde"))||(StringUtil.isEmpty(afterChange.get("focde").toString())&&StringUtil.isEmpty(beforChange.get("focde").toString()))){
    	}else{
    		changeinfo.append("FO编号由：").append(beforChange.get("focde")).append("，修改为：").append(afterChange.get("focde")).append("；");
    	}
    	if(afterChange.get("checkstage").equals(beforChange.get("checkstage"))||(StringUtil.isEmpty(afterChange.get("checkstage").toString())&&StringUtil.isEmpty(beforChange.get("checkstage").toString()))){
    	}else{
    		changeinfo.append("检查阶段由：").append(beforChange.get("checkstage")).append("，修改为：").append(afterChange.get("checkstage")).append("；");
    	}
    	if(afterChange.get("istakeout").equals(beforChange.get("istakeout"))||(StringUtil.isEmpty(afterChange.get("istakeout").toString())&&StringUtil.isEmpty(beforChange.get("istakeout").toString()))){
    	}else{
    		changeinfo.append("是否取出由：").append(beforChange.get("istakeout")).append("，修改为：").append(afterChange.get("istakeout")).append("；");
    	}
    	if(afterChange.get("foposition").equals(beforChange.get("foposition"))||(StringUtil.isEmpty(afterChange.get("foposition").toString())&&StringUtil.isEmpty(beforChange.get("foposition").toString()))){
    	}else{
    		changeinfo.append("FO位置由：").append(beforChange.get("foposition")).append("，修改为：").append(afterChange.get("foposition")).append("；");
    	}
    	if(afterChange.get("fosize").equals(beforChange.get("fosize"))||(StringUtil.isEmpty(afterChange.get("fosize").toString())&&StringUtil.isEmpty(beforChange.get("fosize").toString()))){
    	}else{
    		changeinfo.append("FO尺寸由：").append(beforChange.get("fosize")).append("，修改为：").append(afterChange.get("fosize")).append("；");
    	}
    	if(afterChange.get("fokg").equals(beforChange.get("fokg"))||(StringUtil.isEmpty(afterChange.get("fokg").toString())&&StringUtil.isEmpty(beforChange.get("fokg").toString()))){
    	}else{
    		changeinfo.append("FO重量由：").append(beforChange.get("fokg")).append("，修改为：").append(afterChange.get("fokg")).append("；");
    	}
    	if(afterChange.get("foattribute").equals(beforChange.get("foattribute"))||(StringUtil.isEmpty(afterChange.get("foattribute").toString())&&StringUtil.isEmpty(beforChange.get("foattribute").toString()))){
    	}else{
    		changeinfo.append("FO属性由：").append(beforChange.get("foattribute")).append("，修改为：").append(afterChange.get("foattribute")).append("；");
    	}
    	if(afterChange.get("fodisimgfj").equals(beforChange.get("fodisimgfj"))||(StringUtil.isEmpty(afterChange.get("fodisimgfj").toString())&&StringUtil.isEmpty(beforChange.get("fodisimgfj").toString()))){
    	}else{
    		changeinfo.append("FO分布图由：").append(beforChange.get("fodisimgfj")).append("，修改为：").append(afterChange.get("fodisimgfj")).append("；");
    	}
    	if(afterChange.get("fj").equals(beforChange.get("fj"))||(StringUtil.isEmpty(afterChange.get("fj").toString())&&StringUtil.isEmpty(beforChange.get("fj").toString()))){
    	}else{
    		changeinfo.append("相关图片由：").append(beforChange.get("fj")).append("，修改为：").append(afterChange.get("fj")).append("；");
    	}
    	if(afterChange.get("remake").equals(beforChange.get("remake")==null?"":beforChange.get("remake"))||(StringUtil.isEmpty(beforChange.get("remake").toString())&&StringUtil.isEmpty(afterChange.get("remake").toString()))){
    	}else{
    		changeinfo.append("备注由：").append(beforChange.get("remake")).append("，修改为：").append(afterChange.get("remake")).append("；");
    	}
    	Map insplanmg_modif = new HashMap();
    	insplanmg_modif.put("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
    	insplanmg_modif.put("changeinfo", changeinfo.toString());
    	insplanmg_modif.put("changeReason", afterChange.get("changeReason"));
    	insplanmg_modif.put("overhaulsq", afterChange.get("overhaulsq"));
    	insplanmg_modif.put("funposition", afterChange.get("funposition"));
    	insplanmg_modif.put("focde", afterChange.get("focde"));
    	insplanmg_modif.put("checkstage", afterChange.get("checkstage"));
    	insplanmg_modif.put("istakeout", afterChange.get("istakeout"));
    	insplanmg_modif.put("foposition", afterChange.get("foposition"));
    	insplanmg_modif.put("fosize", afterChange.get("fosize"));
    	insplanmg_modif.put("fokg", afterChange.get("fokg"));
    	insplanmg_modif.put("foattribute", afterChange.get("foattribute"));
    	insplanmg_modif.put("fodisimgfj", afterChange.get("fodisimgfj"));
    	insplanmg_modif.put("fodisimgfileid",afterChange.get("fodisimgfileid"));
    	insplanmg_modif.put("fileid",afterChange.get("fileid"));
    	insplanmg_modif.put("fj", afterChange.get("fj"));
    	insplanmg_modif.put("remake", afterChange.get("remake"));
    	insplanmg_modif.put("jd", afterChange.get("jd"));
    	insplanmg_modif.put("jz", afterChange.get("jz"));
    	insplanmg_modif.put("jhry", afterChange.get("jhry"));
    	insplanmg_modif.put("ccry", afterChange.get("ccry"));
    	insplanmg_modif.put("processInstId",afterChange.get("processInstId"));//获取流程
    	insplanmg_modif.put("relationid",afterChange.get("relationid"));//获取关联id
    	insplanmg_modif.put("changeDate", new Date());
    	insplanmg_modif.put("changeuser", afterChange.get("changeuser"));
    	insplanmg_modif.put("applicanttime",afterChange.get("applicanttime"));
    	insplanmg_modif.put("applicant", afterChange.get("applicant"));
    	insplanmg_modif.put("isdel", "3");
    	
    	boolean flag = false;
    	String sql = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.foreignmattermgsql.insetChangeInfo";
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, insplanmg_modif);
		return flag;
    }
    /**
     * 获取修改前数据
     * @param uuid
     * @return
     */
    public Map getBeforChange(String uuid){
    	Map beforChange = new HashMap();
    	String sql = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.foreignmattermgsql.getInfoById";
    	//获取全部管束
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, uuid);
    	for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			beforChange.put("overhaulsq",dataObject.get("overhaulsq"));
			beforChange.put("funposition",dataObject.get("funposition"));
			beforChange.put("focde",dataObject.get("focde"));
			beforChange.put("checkstage",dataObject.get("checkstage"));
			beforChange.put("istakeout",dataObject.get("istakeout"));
			beforChange.put("foposition",dataObject.get("foposition")==null?"":dataObject.get("foposition"));
			beforChange.put("fosize",dataObject.get("fosize")==null?"":dataObject.get("fosize"));
			beforChange.put("fokg",dataObject.get("fokg")==null?"":dataObject.get("fokg"));
			beforChange.put("foattribute",dataObject.get("foattribute")==null?"":dataObject.get("foattribute"));
			beforChange.put("fodisimgfj",dataObject.get("fodisimgfj")==null?"":dataObject.get("fodisimgfj"));
			beforChange.put("fj",dataObject.get("fj")==null?"":dataObject.get("fj"));
			beforChange.put("remake",dataObject.get("remake")==null?"":dataObject.get("remake"));
		}
		return beforChange;
    }
    /**
     * 数据统计与分析
     * @param jdjz
     * @return
     */
    public Map getSelectInfo(DataObject jdjz){
    	Map selectinfo = new HashMap();
    	List overhaulsqList = new ArrayList();
    	List funpositionList = new ArrayList();
    	
    	String overhaulsqSql = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.foreignmattermgsql.getOverhaulsq";
    	String funpositionSql = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.foreignmattermgsql.getFunposition";
    	//获取全部管束
    	DataObject[] overhaulsqDb = getDASTemplate().queryByNamedSql(DataObject.class, overhaulsqSql, jdjz);
    	DataObject[] funpositionDb = getDASTemplate().queryByNamedSql(DataObject.class, funpositionSql, jdjz);
    	for (int K = 0; K < overhaulsqDb.length; K++) {
    		Map overhaulsq = new HashMap();
			DataObject dataObject = overhaulsqDb[K];
			overhaulsq.put("id", dataObject.get("OVERHAULSQ"));
			overhaulsq.put("name", dataObject.get("OVERHAULSQ"));
			overhaulsqList.add(overhaulsq);
		}
    	for (int K = 0; K < funpositionDb.length; K++) {
    		Map funposition = new HashMap();
			DataObject dataObject = funpositionDb[K];
			funposition.put("id", dataObject.get("FUNPOSITION"));
			funposition.put("name", dataObject.get("FUNPOSITION"));
			funpositionList.add(funposition);
		}
    	selectinfo.put("overhaulsq", overhaulsqList);
    	selectinfo.put("funposition", funpositionList);
		return selectinfo;
    }
    /**
     *  数据统计与分析
     * @param selectInfo
     * @return
     */
    public Map getStatisticsAnalysis(DataObject selectInfo){
    	Map returnData = new HashMap();
    	if(selectInfo.get("type").equals("overhaulsqOne")){
    		
    		Map sum = getStatisticsAnalysisOnesum(selectInfo);
    		Map count = getStatisticsAnalysisOnecount(selectInfo);
    		returnData.put("sum", sum);
    		returnData.put("count", count);
    	}else{
    		Map sum = getStatisticsAnalysissum(selectInfo);
    		Map count = getStatisticsAnalysiscount(selectInfo);
    		returnData.put("sum", sum);
    		returnData.put("count", count);
    	}
		return returnData;
    }
   
	/**
	 * 数据统计与分析重量
	 * @param selectInfo
	 * @return
	 */
    public Map getStatisticsAnalysissum(DataObject selectInfo){
    	Map returnData = new HashMap();
    	JSONArray arr = new JSONArray();
//    	List list = new ArrayList();
    	String sql = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.foreignmattermgsql.getStatisticsAnalysis";
    	
    	JSONArray os= new JSONArray();
    	if(selectInfo.get("overhaulsq").toString().contains(",")){
    		String [] str = selectInfo.get("overhaulsq").toString().split(",");
    		for (int i = 0; i < str.length; i++) {
				os.add(str[i]);
			}
    	}else{
    		os.add(selectInfo.get("overhaulsq").toString());
    	}
    	JSONArray xAxisData = new JSONArray();
    	JSONArray legendData = new JSONArray();
    	legendData = new JSONArray();
    	String [] ls = ((String) selectInfo.get("funposition")).split(",");
    	for (int i = 0; i < os.size(); i++) {
    		xAxisData.add(os.get(i));
    		Map sqlVal = new HashMap();
    		sqlVal.put("overhaulsq", os.get(i));
    		sqlVal.put("jd", selectInfo.get("jd"));
    		sqlVal.put("jz", selectInfo.get("jz"));
    		sqlVal.put("funposition", ls);
    		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, sqlVal);
    		if(arr.size()>0){
				for (int K = 0; K < db.length; K++) {
					DataObject dataObject = db[K];
					String fun = (String) dataObject.get("FUNPOSITION");
					JSONObject json = (JSONObject) arr.get(K);
					JSONArray arrData = (JSONArray) json.get("data");
					arrData.add(dataObject.get("FOKG"));
				}
    		}else{
				for (int K = 0; K < db.length; K++) {
					DataObject dataObject = db[K];
	    			JSONObject obj = new JSONObject();
	    			JSONArray data = new JSONArray();
	    			data.add(dataObject.get("FOKG"));
	    			obj.put("name", dataObject.get("FUNPOSITION"));
	    			legendData.add(dataObject.get("FUNPOSITION"));
	    			obj.put("type", "bar");
	    			obj.put("barWidth", "20");
	    			obj.put("data", data);
	    			arr.add(obj);
				}
				if(ls.length== arr.size()){
				}else{
					//数据不全补足没有的蒸发器为0
					String[] tep = ((String) selectInfo.get("funposition")).split(",");
					List<String> list1 = Arrays.asList(tep);
					List<String> list2 = new ArrayList<String>();
					for (int j = 0; j < arr.size(); j++) {
						JSONObject json = (JSONObject) arr.get(j);
						list2.add(json.get("name").toString());
					}
					List<String> list3 = getDiffrent(list1,list2);
					for (int j = 0; j < list3.size(); j++) {
						JSONObject obj = new JSONObject();
						JSONArray data = new JSONArray();
						data.add(0);
						obj.put("name", list3.get(j).toString());
						legendData.add(list3.get(j).toString());
						obj.put("type", "bar");
						obj.put("barWidth", "20");
						obj.put("data", data);
						arr.add(obj);
					}
				}
    		}
    	}

//		}
    	returnData.put("legendData", legendData);
    	returnData.put("xAxisData", xAxisData);
    	returnData.put("series", arr);
		return returnData;
    }
    /**
     * 数据统计与分析数量
     * @param selectInfo
     * @return
     */
    public Map getStatisticsAnalysiscount(DataObject selectInfo){
    	Map returnData = new HashMap();
    	JSONArray arr = new JSONArray();
//    	List list = new ArrayList();
    	String sql = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.foreignmattermgsql.getStatisticsAnalysis";
    	
    	JSONArray os= new JSONArray();
    	if(selectInfo.get("overhaulsq").toString().contains(",")){
    		String [] str = selectInfo.get("overhaulsq").toString().split(",");
    		for (int i = 0; i < str.length; i++) {
				os.add(str[i]);
			}
    	}else{
    		os.add(selectInfo.get("overhaulsq").toString());
    	}
    	JSONArray xAxisData = new JSONArray();
    	JSONArray legendData = new JSONArray();
    	legendData = new JSONArray();
    	String [] ls = ((String) selectInfo.get("funposition")).split(",");
    	for (int i = 0; i < os.size(); i++) {
    		xAxisData.add(os.get(i));
    		Map sqlVal = new HashMap();
    		sqlVal.put("overhaulsq", os.get(i));
    		sqlVal.put("jd", selectInfo.get("jd"));
    		sqlVal.put("jz", selectInfo.get("jz"));
    		sqlVal.put("funposition", ls);
    		
    		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, sqlVal);
    		if(arr.size()>0){
    			for (int K = 0; K < db.length; K++) {
    				DataObject dataObject = db[K];
//    				for (int j = 0; j < arr.size(); j++) {
    					dataObject.get("FUNPOSITION");
    					JSONObject json = (JSONObject) arr.get(K);
    					if(arr.toString().contains((CharSequence) dataObject.get("FUNPOSITION"))){
    						JSONArray arrData = (JSONArray) json.get("data");
    						arrData.add(dataObject.get("FOCOUNT"));
    					}else{
    					}
//					}
    			}
    		}else{
				for (int K = 0; K < db.length; K++) {
					JSONObject obj = new JSONObject();
					JSONArray data = new JSONArray();
					DataObject dataObject = db[K];
					data.add(dataObject.get("FOCOUNT"));
					obj.put("name", dataObject.get("FUNPOSITION"));
					legendData.add(dataObject.get("FUNPOSITION"));
					obj.put("type", "bar");
					obj.put("barWidth", "20");
					obj.put("data", data);
					arr.add(obj);
				}
				if(ls.length== arr.size()){
				}else{
					//数据不全补足没有的蒸发器为0
					String[] tep = ((String) selectInfo.get("funposition")).split(",");
					List<String> list1 = Arrays.asList(tep);
					List<String> list2 = new ArrayList<String>();
					for (int j = 0; j < arr.size(); j++) {
						JSONObject json = (JSONObject) arr.get(j);
						list2.add(json.get("name").toString());
					}
					List<String> list3 = getDiffrent(list1,list2);
					for (int j = 0; j < list3.size(); j++) {
						JSONObject obj = new JSONObject();
						JSONArray data = new JSONArray();
						data.add(0);
						obj.put("name", list3.get(j).toString());
						legendData.add(list3.get(j).toString());
						obj.put("type", "bar");
						obj.put("barWidth", "20");
						obj.put("data", data);
						arr.add(obj);
					}
				}
    		}
		}
    	returnData.put("legendData", legendData);
    	returnData.put("xAxisData", xAxisData);
    	returnData.put("series", arr);
		return returnData;
    }
    /**
     * 
     * @param selectInfo
     * @return
     */
    private Map getStatisticsAnalysisOnesum(DataObject selectInfo) {
    	Map returnData = new HashMap();
    	JSONArray arr = new JSONArray();
    	Map sqlVal = new HashMap();
    	JSONArray xAxisData = new JSONArray();
    	JSONArray legendData = new JSONArray();
    	sqlVal.put("jd", selectInfo.get("jd"));
		sqlVal.put("jz", selectInfo.get("jz"));
		sqlVal.put("overhaulsq", selectInfo.get("overhaulsq"));
    	String sql = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.foreignmattermgsql.getStatisticsAnalysisone";
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, sqlVal);
    	JSONObject obj = new JSONObject();
    	JSONArray data = new JSONArray();
    	for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			data.add(dataObject.get("FOKG"));
			xAxisData.add(dataObject.get("FUNPOSITION"));
		}
    	legendData.add("异物重量");
    	obj.put("name","异物重量");
    	obj.put("type", "bar");
    	obj.put("barWidth", "20");
    	obj.put("data", data);
    	arr.add(obj);
    	returnData.put("legendData", legendData);
    	returnData.put("xAxisData", xAxisData);
    	returnData.put("series", arr);
    	return returnData;
	}
    /**
     * 
     * @param selectInfo
     * @return
     */
	private Map getStatisticsAnalysisOnecount(DataObject selectInfo) {
    	Map returnData = new HashMap();
    	JSONArray arr = new JSONArray();
    	Map sqlVal = new HashMap();
    	JSONArray xAxisData = new JSONArray();
    	JSONArray legendData = new JSONArray();
    	sqlVal.put("jd", selectInfo.get("jd"));
		sqlVal.put("jz", selectInfo.get("jz"));
		sqlVal.put("overhaulsq", selectInfo.get("overhaulsq"));
    	String sql = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.foreignmattermgsql.getStatisticsAnalysisone";
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, sqlVal);
    	JSONObject obj = new JSONObject();
    	JSONArray data = new JSONArray();
    	for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			data.add(dataObject.get("FOCOUNT"));
			xAxisData.add(dataObject.get("FUNPOSITION"));
		}
    	legendData.add("异物数量");
    	obj.put("name","异物数量");
    	obj.put("type", "bar");
    	obj.put("barWidth", "20");
    	obj.put("data", data);
    	arr.add(obj);
    	returnData.put("legendData", legendData);
    	returnData.put("xAxisData", xAxisData);
    	returnData.put("series", arr);
    	return returnData;
	}
    
    /**
     * 获取连个List的不同元素
     * @param list1
     * @param list2
     * @return
     */
    private static List<String> getDiffrent(List<String> list1, List<String> list2) {
        List<String> diff = new ArrayList();
        for(String str:list1)
        {
            if(!list2.contains(str))
            {
                diff.add(str);
            }
        }
        return diff;
    }
    /**
     * 获取当前基地机组单个大修最大流水号
     * @param selectInfo
     * @return
     */
    public Map getSerialnum(DataObject selectInfo) {
    	Map returnData = new HashMap();
    	Map sqlVal = new HashMap();
//    	JSONArray legendData = new JSONArray();
    	sqlVal.put("jd", selectInfo.get("jd"));
		sqlVal.put("jz", selectInfo.get("jz"));
		sqlVal.put("overhaulsq", selectInfo.get("overhaulsq"));
    	String sql = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.foreignmattermgsql.getSerialnum";
    	DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, sqlVal);
    	for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			returnData.put("SERIALNUM",  Integer.parseInt(dataObject.get("SERIALNUM").toString())+1);
		}
    	return returnData;
	}
    
}