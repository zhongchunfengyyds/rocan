
package com.cgn.itmp.inspectcomponentmanage;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cgn.itmp.basecommon.StringUtil;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree;
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
 * Title: 役检目录树功能实现类
 * Description: 役检目录树功能实现类
 * </pre>
 * @author littlebear (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class InspecomponentmenutreeService extends DASDaoSupport implements IInspecomponentmenutreeService{
	/**
	 * 添加役检目录树的数据
	 */
	public void addInspecomponentmenutree(Inspecomponentmenutree inspecomponentmenutree){
		getDASTemplate().getPrimaryKey(inspecomponentmenutree);
		getDASTemplate().insertEntity(inspecomponentmenutree);
	}
	
	/**
	 * 删除役检目录树的数据
	 */
	public void deleteInspecomponentmenutrees(Inspecomponentmenutree[] inspecomponentmenutrees ){
		for(DataObject inspecomponentmenutree:inspecomponentmenutrees){
			getDASTemplate().deleteEntityCascade(inspecomponentmenutree);
		}
	}

	/**
	 * 查询役检目录树的数据
	 */
	public void getInspecomponentmenutree(Inspecomponentmenutree inspecomponentmenutree){
		getDASTemplate().expandEntity(inspecomponentmenutree);
	}

	/**
	 * 分页查询役检目录树的数据
	 */
	public Inspecomponentmenutree[] queryInspecomponentmenutrees(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Inspecomponentmenutree.class, dasCriteria, pageCond);
	}

	/**
	 * 更新役检目录树的数据
	 */
    public void updateInspecomponentmenutree(Inspecomponentmenutree inspecomponentmenutree){
	    getDASTemplate().updateEntity(inspecomponentmenutree);
    }
    /**
     * 获取目录树
     * @return 
     */
	public JSONArray getTree(String base,String crew) {
		String sql = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.inspecomponentmenutree.gettree";
		Map<String,String> map=new HashMap<String,String>();
		map.put("base", base);
		map.put("crew", crew);
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		//节点1集合
		Map<Object,Object> nodeone=new HashMap<Object,Object>();
		//节点2集合
		Map<Object,Object> nodetwo=new HashMap<Object,Object>();
		JSONArray arr = new JSONArray();
		Set<Object> setMap=new HashSet<Object>();
		Set<Object> set=new HashSet<Object>();
		for (int i = 0; i < db.length; i++) {
			DataObject dataObject = db[i];
			if(hasSameData(dataObject.get("DEVICENAME"),1,setMap,"1")){//1
				JSONObject treeObj = new JSONObject();
				treeObj.put("id", UUID.randomUUID().toString().replaceAll("-",""));
				treeObj.put("text", dataObject.get("DEVICENAME"));//1
				treeObj.put("expanded", false);
				//将该节点的id和值保存至节点1的集合中
				nodeone.put(dataObject.get("DEVICENAME"),treeObj.get("id"));//1
				arr.add(treeObj);
				//添加进去重的set集合中
				set.add(dataObject.get("DEVICENAME"));//1
			}
			if(hasSameData(dataObject.get("PARTNAME"),2,setMap,dataObject.get("DEVICENAME").toString())){//2 //1
			
				JSONObject treeObj1 = new JSONObject();
				treeObj1.put("id",UUID.randomUUID().toString().replaceAll("-",""));
				treeObj1.put("text", dataObject.get("PARTNAME"));//2
				treeObj1.put("pid",nodeone.get(dataObject.get("DEVICENAME")));//1
				//将该节点的id和值保存至节点2的集合中
				nodetwo.put(dataObject.get("PARTNAME"),treeObj1.get("id"));//2
				arr.add(treeObj1);
				//添加进去重的set集合中
				set.add(dataObject.get("PARTNAME"));//2
			}
			if(hasSameData(dataObject.get("DETECTEDSITE"),3,setMap,(dataObject.get("DEVICENAME").toString()+dataObject.get("PARTNAME").toString()))){//3 //1 //2
			JSONObject treeObj2 = new JSONObject();
			treeObj2.put("id", UUID.randomUUID().toString().replaceAll("-",""));
			treeObj2.put("text", dataObject.get("DETECTEDSITE"));//3
			treeObj2.put("pid",nodetwo.get(dataObject.get("PARTNAME")));//2
			arr.add(treeObj2);
			//添加进去重的set集合中
			set.add(dataObject.get("DETECTEDSITE"));//3
			}
		}
		return arr;
	}
	/**
	 * 节点数据去重
	 * @param object 当前节点值
	 * @param type 节点等级
	 * @param setMap 用来保存所有节点的map集合
	 * @param parentname 父节点的标识
	 */
	public boolean hasSameData(Object object,int type,Set setMap,String parentname){
		//保存当前节点值和节点等级
		Map<Object,Object> map=new HashMap<Object,Object>();
		map.put(object,type);
		//保存父节点标识与节点值和节点等级的集合
		Map<Object,Object> parent=new HashMap<Object,Object>();
		parent.put(parentname,map);
		boolean flg = false;
		//判断是否与该节点位置相同
		if(!setMap.contains(parent)){
			setMap.add(parent);
			flg = true;
		}else{
			flg = false;
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
		String orderno = data.getString("orderno");
		String base = StringUtil.isEmpty(data.getString("base")) ? data.getString("jd"):data.getString("base");
		String crew = StringUtil.isEmpty(data.getString("crew")) ? data.getString("jz"):data.getString("crew");
		data.set("orderno", this.setOrderNo(orderno, entity ,base ,crew));
		data.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
		data.setString("flag", "1");
		data = DataObjectUtil.convertDataObject(data, entityName, true);
		DatabaseUtil.insertEntity("default",data);
		
		
	}
	/**
	 * 
	 * @param orderno 排序号码
	 * @param entity 实体名称
	 * @param base 基地
	 * @param crew 机组
	 * @return
	 */
	public BigDecimal setOrderNo(String orderno,String entity,String base,String crew){
		if(StringHelper.isEmpty(orderno) || StringHelper.isEmpty(entity))return null;
		BigDecimal no = BigDecimal.valueOf(0.001);
		BigDecimal reorderno = new BigDecimal(orderno);
		reorderno = reorderno.add(no);
		//String tableName = DatabaseExt.getTableName("default", entity);
 		String[] oederNoStr = orderno.split("\\.");
		String start = "";
		if(oederNoStr.length > 0)start = oederNoStr[0];else start = orderno;
		String end = String.valueOf(Integer.parseInt(start) + 1);
		//String address = "com.cgn.itmp.basecommon.jdglSql.getDataByOrderno1";
		//Map<String, Object> parmsMap = new HashMap<String, Object>();
		//parmsMap.put("tablename", tableName);
		//parmsMap.put("start", orderno);
		//parmsMap.put("end", end);
		DataObject criteriaType = DataFactory.INSTANCE.create("com.primeton.das.criteria","criteriaType");
		criteriaType.set("_entity",entity);
		//加入条件
		criteriaType.set("_expr[1]/orderno",orderno);
		criteriaType.set("_expr[1]/_op",">");
		criteriaType.set("_expr[2]/orderno",end);
		criteriaType.set("_expr[2]/_op","<");
		criteriaType.set("_expr[3]/base",base);
		criteriaType.set("_expr[3]/_op","=");
		criteriaType.set("_expr[4]/crew",crew);
		criteriaType.set("_expr[4]/_op","=");
		criteriaType.set("_expr[5]/jd",base);
		criteriaType.set("_expr[5]/_op","=");
		criteriaType.set("_expr[6]/jz",crew);
		criteriaType.set("_expr[6]/_op","=");
		criteriaType.set("_orderby[1]/_property","orderno");
		criteriaType.set("_orderby[1]/_sort","asc");
		DataObject[] typeDataObject = DatabaseUtil.queryEntitiesByCriteriaEntity("default",criteriaType);
		//Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", address, parmsMap);
		if(typeDataObject.length > 0){
			DataObject[] dataObject = new DataObject[typeDataObject.length];
			for(int i=0; i<typeDataObject.length; i++){
				dataObject[i] = (DataObject)typeDataObject[i];
				no=no.add(BigDecimal.valueOf(0.001));
				BigDecimal ordernoL = reorderno.add(no);
				dataObject[i].setFloat("orderno", ordernoL.floatValue());
				DataObject dataTemp = DataObjectUtil.convertDataObject(dataObject[i], entity, false);
				DatabaseUtil.updateEntity("default", dataTemp);
			}
		}
		return reorderno;
	}
	
	/**
	 * 逻辑删除(附加删除人删除时间)
	 */
	public void updatedel(DataObject[] data,String entity,String deleteperson) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		 String time = sdf.format(new Date());
		for(int i=0;i<data.length;i++){
			DataObject temp  = DataObjectUtil.createDataObject(entity);
			temp.unset("orderindex");
			temp.setString("deletetime", time);
			temp.setString("deleteperson", deleteperson);
			temp.setInt("isdel",1);
			temp.set("uuid",data[i].get("uuid"));
			data[i]=temp;
		}
		DatabaseUtil.updateEntityBatch("default",data);
	}
	/**恢复删除
	 * 
	 * @param data
	 * @param entity
	 */
	public void recovery(DataObject[] data,String entity) {
		for(int i=0;i<data.length;i++){
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			temp.unset("orderindex");
			temp.setInt("isdel",0);
			temp.setString("deletetime", null);
			temp.setString("deleteperson", null);
			data[i]=temp;
		}
		DatabaseUtil.updateEntityBatch("default",data);
	}
	
	/**
	 * 根据实体类型获取数量
	 * @param entityType 实体类型
	 * @param fields 字段数组
	 * @param values 值数组
	 * @return
	 */
	public int queryCountByEntity(String entityType,String[] fields,String[] values,String base,String crew){
		
		int count = 0;
		if(StringUtil.isEmpty(entityType) || fields == null || values == null || fields.length != values.length){
			return count;
		}
		DataObject entity = DataObjectUtil.createDataObject(entityType);
		entity.setString("jd", base);
		entity.setString("jz", crew);
		for(int i=0;i<fields.length;i++){
			entity.setString(fields[i], values[i]);
		}
		DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",entity);
		count = datas.length;
		return count;
	}
	/**
	 * 导入数据时候做判断方法 ，如果导入过一次
	 * 则清空当前表中数据
	 */
	public String deleteByBatchIndex(String entityType,String[] fields,String[] values,String base,String crew) {
		if(StringUtil.isEmpty(entityType) || fields == null || values == null || fields.length != values.length){
			return null;
		}
		/*DataObject entity = DataObjectUtil.createDataObject(entityType);
		for(int i=0;i<fields.length;i++){
			entity.setString(fields[i], values[i]);
		}
		DatabaseUtil.deleteByTemplate("default",entity);*/
		Map<String, String> map=new HashMap<String, String>();
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(crew)) return null;
		map.put("base", base);
		map.put("crew", crew);
		String address="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.inspecomponentmenutree.deletealldata";
		DatabaseExt.executeNamedSql("default", address, map);
		String status="success";
		return status;
	}
}
