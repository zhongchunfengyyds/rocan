
package com.cgn.itmp.inspectcomponentmanage;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cgn.itmp.basecommon.StringUtil;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;

import commonj.sdo.DataObject;
import commonj.sdo.helper.DataFactory;

/**
 * <pre>
 * Title: 缺陷显示详情功能实现类
 * Description:缺陷显示详情功能实现类
 * </pre>
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class DefectsshowdetailedinformationService extends DASDaoSupport implements IDefectsshowdetailedinformationService{
	
	/**
	 * 缺陷显示详情添加功能
	 */
	public void addDefectsshowdetailedinformation(Defectsshowdetailedinformation defectsshowdetailedinformation){
		getDASTemplate().getPrimaryKey(defectsshowdetailedinformation);
		
		getDASTemplate().insertEntity(defectsshowdetailedinformation);
	}

	/**
	 * 缺陷显示详情删除功能
	 */
	public void deleteDefectsshowdetailedinformations(Defectsshowdetailedinformation[] defectsshowdetailedinformations ){
		for(DataObject defectsshowdetailedinformation:defectsshowdetailedinformations){
			getDASTemplate().deleteEntityCascade(defectsshowdetailedinformation);
		}
	}

	/**
	 * 缺陷显示详情查询功能
	 */
	public void getDefectsshowdetailedinformation(Defectsshowdetailedinformation defectsshowdetailedinformation){
		getDASTemplate().expandEntity(defectsshowdetailedinformation);
	}

	/**
	 * 缺陷显示详情分页查询功能
	 */
	public Defectsshowdetailedinformation[] queryDefectsshowdetailedinformations(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Defectsshowdetailedinformation.class, dasCriteria, pageCond);
	}


	/**
	 * 缺陷显示详情更新功能
	 */
    public void updateDefectsshowdetailedinformation(Defectsshowdetailedinformation defectsshowdetailedinformation){
    	if(null != defectsshowdetailedinformation.get("defectdisplaynumber")&&defectsshowdetailedinformation.get("defectdisplaynumber")!=null){
    		defectsshowdetailedinformation.set("nullorder", null);
    	}
	    getDASTemplate().updateEntity(defectsshowdetailedinformation);
    }
    
    /**
     * 获取被检部位
     */
	public DataObject[] getDetectedSite(String base,String crew) {
		// TODO 自动生成的方法存根
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(crew)) return null;
		Map<String,String> map= new HashMap<String, String>();
		map.put("base", base);
		map.put("crew", crew);
		String sql="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.getdetectedsite";
		DataObject[] da=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		
		return da;
	}
	
	/**
	 * 获取设备名称
	 */
	public DataObject[] getDeviceName(String base, String detectedsite,String crew) {
		// TODO 自动生成的方法存根
		Map<String, String> map=new HashMap<String, String>();
		if(StringHelper.isEmpty(crew)||StringHelper.isEmpty(base)||StringHelper.isEmpty(detectedsite)) return null;
		map.put("base", base);
		map.put("crew", crew);
		map.put("detectedsite", detectedsite);
		String sql="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.getdevicename";
		DataObject[] da=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		return da;
	}
	/**
	 * 获取部件名称
	 */
	public DataObject[] getPartName(String base, String detectedsite,String devicename,String crew) {
		// TODO 自动生成的方法存根
		Map<String, String> map=new HashMap<String, String>();
		if(StringHelper.isEmpty(crew)||StringHelper.isEmpty(base)||StringHelper.isEmpty(detectedsite)) return null;
		map.put("base", base);
		map.put("crew", crew);
		map.put("detectedsite", detectedsite);
		map.put("devicename", devicename);
		String sql="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.getpartname";
		DataObject[] da=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		return da;
	}
	
	/**
	 * 获取树节点数据
	 */
	public JSONArray getTreeList(String base,String crew) {
		Map<String, String> map=new HashMap<String, String>();
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(crew)) return null;
		map.put("base", base);
		map.put("crew", crew);
		String sql = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.gettreelist";
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		JSONArray arr = new JSONArray();
		for (int i = 0; i < db.length; i++) {
			DataObject dataObject = db[i];
			if(hasSameData(arr,dataObject.get("devicename"))){
			}else{
				JSONObject treeObj = new JSONObject();
				treeObj.put("id", dataObject.get("devicename"));
				treeObj.put("text", dataObject.get("devicename"));
				treeObj.put("expanded", false);
				arr.add(treeObj);
			}
			if(hasSameData(arr,dataObject.get("partname"))){
			}else{
				JSONObject treeObj = new JSONObject();
				treeObj.put("id", dataObject.get("partname"));
				treeObj.put("text", dataObject.get("partname"));
				treeObj.put("pid", dataObject.get("devicename"));
				arr.add(treeObj);
			}
			JSONObject treeObj = new JSONObject();
			treeObj.put("id", dataObject.get("detectedsite"));
			treeObj.put("text", dataObject.get("detectedsite"));
			treeObj.put("pid", dataObject.get("partname"));
			arr.add(treeObj);
		}
		return arr;
	}
	/**
	 * 节点数据去重
	 * @param object 
	 * @param arr 
	 */
	public boolean hasSameData(JSONArray arr, Object object){
		boolean flg = false;
		for (int i = 0; i < arr.size(); i++) {
			JSONObject treeObj = (JSONObject) arr.get(i);
			if(treeObj.containsValue(object)){
				flg = true;
				break;
			}else{
				flg = false;
			}
		}
		return flg;
	}
	
	/**
	 * 根据实体名称去把数据做对应存储
	 * @param entityName 实体名
	 * @param data	要存储的数据
	 */
	public void accordingTOEntityByLocation(String entity,String entityName,DataObject data){
		if(StringUtil.isEmpty(entityName)){
			return;
		}
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		data.set("inserttime", dateFormat.format(new Date()));
		data.set("isdel","0");
//		String sortfield = data.getString("sortfield");
		String base = StringUtil.isEmpty(data.getString("base")) ? data.getString("jd"):data.getString("base");
		String crew = StringUtil.isEmpty(data.getString("crew")) ? data.getString("jz"):data.getString("crew");
		String stencilplate = StringUtil.isEmpty(data.getString("stencilplate")) ? data.getString("stencilplate"):data.getString("stencilplate");
//		data.set("sortfield", this.setSortfield(sortfield, entity ,base ,crew));
		Map<String, String> jdjzmap=new HashMap<String, String>();
		jdjzmap.put("base", base);
		jdjzmap.put("crew", crew);
		jdjzmap.put("stencilplate", stencilplate);
		if(null == data.get("defectdisplaynumber")){
			String maxsql="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.getmaxnullorder";
				Object[] maxnullorder = DatabaseExt.queryByNamedSql("default", maxsql, jdjzmap);
				if(null!=maxnullorder && maxnullorder.length>0){//对应基地机组下有数据
					int s = ((DataObject)maxnullorder[0]).getInt("nullorder");//当前基地机组模板下最大值+1
					data.set("nullorder",s+1);
				}else{
					data.set("nullorder",1);
				}
		}
		data.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
		data.setString("flag", "1");
		data = DataObjectUtil.convertDataObject(data, entityName, true);
		DatabaseUtil.insertEntity("default",data);
		
		
	}
	/**
	 * 
	 * @param sortfield 排序号码
	 * @param entity 实体名称
	 * @param base 基地
	 * @param crew 机组
	 * @return
	 */
	public BigDecimal setSortfield(String sortfield,String entity,String base,String crew){
		if(StringHelper.isEmpty(sortfield) || StringHelper.isEmpty(entity))return null;
		BigDecimal no = BigDecimal.valueOf(0.001);
		BigDecimal resortfield = new BigDecimal(sortfield);
		resortfield = resortfield.add(no);
		//String tableName = DatabaseExt.getTableName("default", entity);
 		String[] oederNoStr = sortfield.split("\\.");
		String start = "";
		if(oederNoStr.length > 0)start = oederNoStr[0];else start = sortfield;
		String end = String.valueOf(Integer.parseInt(start) + 1);
		//String address = "com.cgn.itmp.basecommon.jdglSql.getDataBysortfield1";
		//Map<String, Object> parmsMap = new HashMap<String, Object>();
		//parmsMap.put("tablename", tableName);
		//parmsMap.put("start", sortfield);
		//parmsMap.put("end", end);
		DataObject criteriaType = DataFactory.INSTANCE.create("com.primeton.das.criteria","criteriaType");
		criteriaType.set("_entity",entity);
		//加入条件
		criteriaType.set("_expr[1]/sortfield",sortfield);
		criteriaType.set("_expr[1]/_op",">");
		criteriaType.set("_expr[2]/sortfield",end);
		criteriaType.set("_expr[2]/_op","<");
		criteriaType.set("_expr[3]/base",base);
		criteriaType.set("_expr[3]/_op","=");
		criteriaType.set("_expr[4]/crew",crew);
		criteriaType.set("_expr[4]/_op","=");
		criteriaType.set("_expr[5]/jd",base);
		criteriaType.set("_expr[5]/_op","=");
		criteriaType.set("_expr[6]/jz",crew);
		criteriaType.set("_expr[6]/_op","=");
		criteriaType.set("_orderby[1]/_property","sortfield");
		criteriaType.set("_orderby[1]/_sort","asc");
		DataObject[] typeDataObject = DatabaseUtil.queryEntitiesByCriteriaEntity("default",criteriaType);
		//Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", address, parmsMap);
		if(typeDataObject.length > 0){
			DataObject[] dataObject = new DataObject[typeDataObject.length];
			BigDecimal sortfieldL = resortfield;
			for(int i=0; i<typeDataObject.length; i++){
				dataObject[i] = (DataObject)typeDataObject[i];
				no=no.add(BigDecimal.valueOf(0.001));
				sortfieldL=sortfieldL.add(no);
				
				dataObject[i].setBigDecimal("sortfield", sortfieldL);
				DataObject dataTemp = DataObjectUtil.convertDataObject(dataObject[i], entity, false);
				DatabaseUtil.updateEntity("default", dataTemp);
			}
		}
		return resortfield;
	}
	
	/**
	 * 获取被检部位最大的编号
	 */
	public int getMaxDetectedSite(String base,String crew,String stencilplate) {
		// TODO 自动生成的方法存根
		int maxnum=0;
Map<String, String> map=new HashMap<String, String>();
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(crew)) return 0;
		map.put("base", base);
		map.put("crew", crew);
		map.put("stencilplate", stencilplate);
		String sql="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.getmaxdefetenumbymodel";
		DataObject[] da=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		if(null!=da&&da.length>0){
			maxnum= da[0].getInt("defectdisplaynumber")+1;
		}else{
			maxnum=1;
		}
		return maxnum;
	}
	
	/**
	 * 返回所有的缺陷显示编号
	 */
	public DataObject[] getHistoryNum(String base,String crew) {
		// TODO 自动生成的方法存根
		Map<String, String> map=new HashMap<String, String>();
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(crew)) return null;
		map.put("base", base);
		map.put("crew", crew);
		String sql="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.getallnum";
		DataObject[] da=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		return da;
	}
	/**
	 * 返回所有的缺陷历史编号通过大修
	 */
	public DataObject[] getHistoryNumByOverhaul(String base, String overhaulsequence,String crew) {
		// TODO 自动生成的方法存根
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(overhaulsequence)) return null;
		String sql="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.gethistorynumbyoverhaulsequence";
		Map<String, String> map=new HashMap<String, String>();
		map.put("base", base);
		map.put("crew", crew);
		map.put("overhaulsequence", overhaulsequence);
		DataObject[] da=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		return da;
	}
	/**
	 * 获取历史编号
	 * @param base 基地
 	 * @param overhaulsequence 大修轮次
	 * @param crew 机组
	 * @param stencilplate 模板
	 * @return
	 */
	public DataObject[] getHistoryNum(String base, String overhaulsequence,String crew,String stencilplate) {
		// TODO 自动生成的方法存根
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(crew)) return null;
		String sql="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.getHistoryNum";
		Map<String, String> map=new HashMap<String, String>();
		map.put("base", base);
		map.put("crew", crew);
		map.put("stencilplate", stencilplate);
		map.put("overhaulsequence", overhaulsequence);
		DataObject[] da=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		return da;
	}
	
	/**
	 * 返回所有的大修编号
	 */
	public DataObject[] getAllOverhaul(String base,String crew) {
		// TODO 自动生成的方法存根
		Map<String, String> map=new HashMap<String, String>();
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(crew)) return null;
		map.put("base", base);
		map.put("crew", crew);
		String sql="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.getalloverhaulsequence";
		DataObject[] da=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		return da;
	}
	/**
	 * 返回模板下的大修轮次
	 * @param base 基地
	 * @param crew 机组
	 * @param stencilplate 模板
	 * @return
	 */
	public DataObject[] getOverHaulByTemplate(String base,String crew,String stencilplate ) {
		// TODO 自动生成的方法存根
	
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(crew)) return null;
		Map<String, String> map=new HashMap<String, String>();
		map.put("base", base);
		map.put("crew", crew);
		map.put("stencilplate", stencilplate);
		String sql="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.getOverHaulByTemplate";
		DataObject[] da=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		return da;
	}
	
	
	/**
     * 根据检查方法，以及大修来确定缺陷数量
     */
	public List<Integer> getDefectresultsNumbers(String base,String Dx, String method,String crew) {
		if(StringUtil.isEmpty(Dx)||StringUtil.isEmpty(method)){return null;}
		Map<String,String> map=new HashMap<String, String>();
		String[] s = Dx.split(",");
		List<Integer> list=new ArrayList<Integer>();
		String sql ="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.getdefectnumbersum";
		if(null!=s&&s.length>0){
			for (int i = 0; i < s.length; i++) {
				map.put("base",base);
				map.put("crew",crew);
				map.put("overhaulsequence", s[i]);
					map.put("stencilplate", method);
					DataObject[] da=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
				if(da!=null&&da.length>0){
					Integer count=da[0].getInt("count");
					list.add(count);
				}
			}
		}
		return list;
		// TODO 自动生成的方法存根
	}
	
	/**
	 * 根据大修轮次下的某一个方法模板查找对应的缺陷类型
	 */
	public DataObject[] getAllDefectType(String overhaulsequence, String base,
			String stencilplate,String crew) {
		if(StringHelper.isEmpty(crew)
				||StringHelper.isEmpty(base)
				||StringHelper.isEmpty(overhaulsequence)
				||StringHelper.isEmpty(stencilplate)) return null;
		String sql="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.getdefecttype";
		Map<String,String> map=new HashMap<String, String>();
		map.put("base",base);
		map.put("crew",crew);
		map.put("overhaulsequence", overhaulsequence);
		map.put("stencilplate", stencilplate);
		DataObject[] da=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		return da;
	}
	
	/**
     * 根据检查方法，以及大修 和缺陷类型 来确定缺陷数量
	 * @return 
     */
	public List<Integer> getNumsByDefectType(String base, String dx,
			String method, String defecttype,String crew) {
		if(StringUtil.isEmpty(dx)||StringUtil.isEmpty(method)){return null;}
		Map<String,String> map=new HashMap<String, String>();
		String[] s = defecttype.split(",");
		List<Integer> list=new ArrayList<Integer>();
		String sql ="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.defectsshowdetailedinformation.getnumsbydefecttype";
		if(null!=s&&s.length>0){
			for (int i = 0; i < s.length; i++) {
				map.put("base",base);
				map.put("crew",crew);
				map.put("overhaulsequence", dx);
					map.put("stencilplate", method);
					map.put("defecttype", s[i]);
					DataObject[] da=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
				if(da!=null&&da.length>0){
					Integer count=da[0].getInt("count");
					list.add(count);
				}
			}
		}
		return list;
		// TODO 自动生成的方法存根
	}
}
