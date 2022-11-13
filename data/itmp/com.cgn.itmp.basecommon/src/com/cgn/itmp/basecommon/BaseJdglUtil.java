/**
 * 
 */
package com.cgn.itmp.basecommon;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.cgn.itmp.outlineandplan.outline.ExecutiveEntriesServiceImpl;
import com.cgn.itmp.outlineandplan.outline.common.CommonServiceImpl;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.eos.system.annotation.Bizlet;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.primeton.data.sdo.impl.PropertyImpl;
import com.primeton.ext.data.vmodel.Field;
import com.primeton.ext.data.vmodel.ViewModelHelper;
import commonj.sdo.DataObject;
import commonj.sdo.helper.DataFactory;

/**
 * <pre>
 * Title:基础工具类
 * Description: 基础工具类
 * </pre>
 * @author diyz
 * @version 1.00.00
 * 
 */
/*
 * 基地机组管理工具类
 * $log$
 */
public class BaseJdglUtil extends DASDaoSupport {

	/**
	 * 
	 */
	public BaseJdglUtil() {
		// TODO 自动生成的构造函数存根
	}
	
	/**
	 * 获取基地信息
	 * @return
	 */
	public  DataObject[] getJdInfo() {
		String sql="com.cgn.itmp.basecommon.jdglSql.getJdInfo";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, null);
	}
	
	/**
	 * 根据人员角色过滤基地信息
	 * @return
	 */
	public  DataObject[] getJdInfoByRoleName(String roleStr) {
		List<String> paramList = new ArrayList<String>();
		if(null == roleStr || "".equals(roleStr)){
			return null;
		}else{
			String [] roleArray = roleStr.split(",");
			for(String roleName : roleArray){
				paramList.add(roleName);
			}
		}
		String sql="com.cgn.itmp.basecommon.jdglSql.getJdInfoByRole";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, paramList);
	}
	
	/**
	 * 根据基地id获取机组信息
	 * @param jdid
	 * @return
	 */
	public DataObject[] getJzInfoByJdid(String jdid){
		if(StringUtil.isEmpty(jdid)){
			return null;
		}
		String sql="com.cgn.itmp.basecommon.jdglSql.getJzInfoByJdid";
		Map<String,String> params = new HashMap<String,String>();
		params.put("jdid", jdid);
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, params);
	}
	
	/**
	 * 根据机组id获取机组名称
	 * @param jzid
	 * @return
	 */
	public String getJznameByid(String jzid){
		if(StringUtil.isEmpty(jzid)){
			return null;
		}
		String sql="com.cgn.itmp.basecommon.jdglSql.getJznameByJzid";
		Map<String,String> params = new HashMap<String,String>();
		params.put("jzid", jzid);
		Object[]  resultObject = (Object[])DatabaseExt.queryByNamedSql("default", sql, params);
		String jzname = "";
		if(resultObject.length > 0){
			jzname = ((DataObject) resultObject[0]).getString("name");
		}
		return jzname;
	}
	
	
	
	/**
	 * 根据基地id获取机组名称
	 * @param jzid
	 * @return
	 */
	public String getJdnameByid(String jdid){
		if(StringUtil.isEmpty(jdid)){
			return null;
		}
		String sql="com.cgn.itmp.basecommon.jdglSql.getJdnameByJdid";
		Map<String,String> params = new HashMap<String,String>();
		params.put("jdid", jdid);
		Object[]  resultObject = (Object[])DatabaseExt.queryByNamedSql("default", sql, params);
		String jdname = "";
		if(resultObject.length > 0){
			jdname = ((DataObject) resultObject[0]).getString("name");
		}
		return jdname;
	}
	/**
	 * 根据实体名称获取实体的属性值
	 * @param entityName
	 * @return
	 */
	public List<HashMap<String, String>> getPropertyByEntityName (String entityName,String filterField) {
			  //DataObject实体类型
			   //String entityName = param.getString("entityName");
				if(StringUtil.isEmpty(entityName)){
					return null;
				}
				if(StringUtil.isEmpty(filterField)){
					filterField="";
				}else{
					filterField = "," + filterField + ",";
				}
			   DataObject data = DataObjectUtil.createDataObject(entityName);
			   List list1 = data.getInstanceProperties(); 
			   List result = new ArrayList<HashMap<String, String>>(); 
			   Iterator it = list1.iterator();
			   
			   while(it.hasNext()){
				   HashMap<String, String> temp = new HashMap<String, String>();
				   PropertyImpl property = (PropertyImpl)it.next();
				   Field modeField=new ViewModelHelper().getField(entityName, property.getName());
				   if(modeField != null && filterField.indexOf(","+modeField.getId()+",") < 0){ //如果获取不到字段信息或者是需要过滤的字段
					   temp.put("FieldName", modeField.getId());
					   temp.put("ShowName", modeField.getLabel());
					   result.add(temp);
				   }
			   }
			   
			  return result;
		
	}
	
//	public List doFormatUser(ArrayOfCapRoleSource object){
//
//		return null;
//	}
	
//	@Bizlet("批量下载文件")
	public String bathDownFile(String[] fileId) {
		if(fileId == null || fileId.length  == 0){
			return "";
		}
		HashMap<String, String[]> map = new HashMap<String, String[]>();
		map.put("file_id", fileId);
//		String sql="com.cgn.itmp.basecommon.jdglSql.getJzInfoByJdid";
		
	   return "";
	}
	
	//模糊匹配字典
	public String fuzzyMatchingDictionary (String typeId,String keyWordVal) {
		 
		if(StringUtil.isEmpty(typeId) && StringUtil.isEmpty(keyWordVal)){
			return null;
		}
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("DICTTYPEID", typeId);
		map.put("DICTNAME", keyWordVal);
		DataObject[] dicInfo =  getDASTemplate().queryByNamedSql(DataObject.class, "com.cgn.itmp.basecommon.jdglSql.fuzzyMatchingDictionary", map);
		String dicId = "";
		if(dicInfo.length > 0){
			for(int i = 0 ; i < dicInfo.length ; i++){
				dicId += dicInfo[i].getString("DICTID")+ (i == dicInfo.length - 1 ? "": ",");
			}
		}
		  
		   
		return dicId;
	
	}
	
	
	/**
	 * 解压上传的压缩包，并与数据绑定
	 * @param filePath
	 * @param pageSource
	 * @return
	 */
	public HashMap<String,Object> bathAddAttach(String filePath,String pageSource,String power,String crew) {
		HashMap<String, Object> res = new HashMap<String, Object>();
		res.put("mess","文件解析错误");
		if(StringUtil.isEmpty(filePath) || StringUtil.isEmpty(pageSource)){
			res.put("mess","上传压缩文件错误");
		}else{
			try {
				filePath=java.net.URLDecoder.decode(filePath,"UTF-8");
				ZipUtil zipU = new ZipUtil();
				ArrayList<String[]> result = zipU.unZip(filePath);
				if(result.size() > 0 ){
					int bindNum = 0;
					String mess = "压缩包解析成功";
					int noBindFileNum = 0;
					String noBindFileName = "";
					for(int i= 0 ; i < result.size() ; i++){
						int updNum =  batchUpdAttachInfo(pageSource,result.get(i),power,crew);
						if(updNum == 0 ){
							noBindFileNum += 1;
							noBindFileName += (noBindFileNum == 1 ? "未绑定到数据的附件有:" : " ") +"<br />"+noBindFileNum+"、"+result.get(i)[0] ;
						}
						bindNum += updNum;
					}
					mess = mess + ","+"共成功绑定数据"+bindNum+"条"+(noBindFileNum == 0 ? "" : (","+noBindFileName));
					res.put("mess",mess);
				}else{
					res.put("mess","压缩包内容为空");
				}
			} catch (Exception e) {
				return res;
			}
		}	
		

	   return res;
	}
	
	/**
	 * 根据dictTypeid获取数据字典
	 * @param dictTypeId
	 * @return
	 */
	public DataObject[] getDictInfoByType(String dictTypeId){
		String sql = "com.cgn.itmp.basecommon.jdglSql.getDictInfoByType";
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("DICTTYPEID", dictTypeId);
		return  getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
	}
	
	/**
	 * 附件id与数据绑定
	 * @param type
	 * @param key
	 * @param value
	 */
	public int batchUpdAttachInfo(String type,String[] context,String power,String crew){
		String sql = "";
		if("CKT".equals(type)){ //参考图例
			sql = "com.cgn.itmp.basecommon.jdglSql.attachBindCKT";
		}else if("CXGL".equals(type)){ //程序管理
			sql = "com.cgn.itmp.basecommon.jdglSql.attachBindCXGL";
		}else if("JDS".equals(type)){
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindSBYB";
		}else if("WSSQ".equals(type)){
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindWSSQ";
		}else if("HG".equals(type)){
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindHG";
		}else if("HDWX".equals(type)){
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindHDWX";
		}else if("GYPD".equals(type)){
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindGYPD";
		}else if("HJGL".equals(type)){
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindHJGL";
		}else if("HCGL".equals(type)){
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindHCGL";
		}else if("HGGL".equals(type)){
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindHGGL";
		}else if("GYKBH".equals(type)){
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindGYKBH";
		}else if("GYPDBG".equals(type)){
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindGYPD";
		}else if("BGBM".equals(type)){
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindBGBM";
		}else if("SJNAME".equals(type)){//书籍名称
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindSJNAME";
		}else if(type.indexOf("FILENAME_")!=-1){//文件名称
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindFILENAME";
		}else if("CHAPTERNUMANDNAME".equals(type)){//章节编号和名称CHAPTERNUMANDNAME
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindCHAPTERNUMANDNAME";
		}else if("STATUTENAME".equals(type)){//法规名称
			sql="com.cgn.itmp.basecommon.jdglSql.attachBindSTATUTENAME";
		}else if("CRITERIONNAME".equals(type)){//标准名称
			sql ="com.cgn.itmp.basecommon.jdglSql.attachBindCRITERIONNAME";
		}else if("CHINESSTERMNAME".equals(type)){//术语名称
			sql ="com.cgn.itmp.basecommon.jdglSql.attachBindCHINESSTERMNAME";
		}else if("PAPERSNAME".equals(type)){//专家解读文件名称
			sql ="com.cgn.itmp.basecommon.jdglSql.attachBindPAPERSNAME";
		}else if("WJNAME".equals(type)){//内部文件文件名称
			sql ="com.cgn.itmp.basecommon.jdglSql.attachBindWJNAME";
		}
		if(StringUtil.isEmpty(sql)){
			return 0;
		}
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("FILENAME", context[0]);
		map.put("KEY", context[1]);
		map.put("FILEID", context[2]);
		map.put("POWER", power);
		map.put("CREW", crew);
		if(type.indexOf("FILENAME_")!=-1){//文件名称
			String name=type.substring(9,type.length());
			map.put("name",name);
			
		}
		
		return DatabaseExt.executeNamedSqlWithResult("default",sql, map);
	}
	
	
	/**
	 * 把数据从中间表回写到真实表数据中去
	 * @param sourceEntity 中间表实体
	 * @param targetEntity 真实表实体
	 * @param processInstId 流程ID
	 * @param processField 流程字段名
	 */
	public void writeBackRealData(String sourceEntity,String targetEntity,String processInstId,String processField){
	
		//建立查询实体
		DataObject criteriaType = DataFactory.INSTANCE.create("com.primeton.das.criteria","criteriaType");
		criteriaType.set("_entity",sourceEntity);
		//加入条件
		criteriaType.set("_expr[1]/"+processField,processInstId);
		criteriaType.set("_expr[1]/_op","=");
		
		//根据流程Id获取对应的中间表中的业务数据
		DataObject[] sourceData = DatabaseUtil.queryEntitiesByCriteriaEntity("default",criteriaType);
		if(sourceData.length > 0 ){
			//把中间表数据转换成对应的真实表视剧实体，并执行插入操作
			DataObject data = DataObjectUtil.convertDataObject(sourceData[0], targetEntity, true);
			DatabaseUtil.insertEntity("default",data);
		}
	}
	
	/**
	 * 根据中间表实体获取对应数据
	 * @param entity 中间表实体
	 * @param processInstId 流程ID
	 * @param processField 流程字段名
	 * @return
	 */
	public DataObject getDataByEntityAndprocessInstId(String entity,String processInstId,String processField){
		if(StringUtil.isEmpty(entity) || StringUtil.isEmpty(processInstId))return null;

		//设置默认的流程字段
		//if(null == processField || "".equals(processField) || "null".equals(processField)){
			processField = "processInstId";
		//}
		DataObject temp = DataObjectUtil.createDataObject(entity);
		temp.setLong(processField,  Long.parseLong(processInstId));
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",temp);
		if(data.length > 0 ){
			temp = data[0];
		}
		
		return temp;
	}
	/**
	 * 根据实体和uuid获取对应数据
	 * @param modelFlag 页面标识
	 * @param processInstId 流程ID
	 * @param processField 流程字段名
	 * @return
	 */
	public DataObject getDataByEntityAndId(String modelFlag,String uuid,String idField){
		
		if(StringUtil.isEmpty(modelFlag) || StringUtil.isEmpty(uuid)){return null;}
		
		String busEntity = getReadEntityByFlag(modelFlag);
		
		//设置默认的id字段
		if(null == idField || "".equals(idField)){
			idField = "id";
		}
		try {
			//如果是专用检查计划部分的数据主键为uuid
			if(Integer.parseInt(modelFlag) >= 13 && Integer.parseInt(modelFlag) <= 28){ 
				idField = "uuid";
			}
		} catch (Exception e) {
			
		}
		
		
		DataObject temp = DataObjectUtil.createDataObject(busEntity);
		temp.setString(idField,  uuid);
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",temp);
		if(data.length > 0 ){
			temp = data[0];
		}
		
		return temp;
	}
	/**
	 * 获取中间表列表数据
	 * @param entity
	 * @param processInstId
	 * @param processField
	 * @return
	 */
	public DataObject[] getDatasByEntityAndprocessInstId(String entity,String processInstId,String processField){
		//设置默认的流程字段
		if(null == processField || "".equals(processField)){
			processField = "processInstId";
		}
		DataObject temp = DataObjectUtil.createDataObject(entity);
		temp.setLong(processField, Long.parseLong(processInstId));
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",temp);
		return data;
	}
	
	/**
	 * 根据实体类型更新实体
	 * @param data
	 */
	public void updateEntity(DataObject data,String entityType){
		if(data == null) return;
		DataObject temp  = DataObjectUtil.convertDataObject(data, entityType, false);

//		DatabaseUtil.updateEntityBatch("default", temp);
		DatabaseExt.updateEntityCascade("default", temp);
		
	}
	
	/**
	 * 根据实体类型更新实体数组
	 * @param data
	 */
	public void updateEntitys(DataObject[] data,String entityType){
		if(data == null) return;
		for(int i=0;i<data.length;i++){
			data[i]= DataObjectUtil.convertDataObject(data[i], entityType, false);
		}
		DatabaseUtil.updateEntityBatch("default", data);
	}
	
	
	/**
	 * 根据基地、机组查询数据量
	 * @param modelFlag
	 * @param jdid
	 * @param jzid
	 * @return
	 */
	public int queryCountByModelFlag(String modelFlag,String jdid,String jzid){
		
		int count = 0;
		String entityType = getReadEntityByFlag(modelFlag);
		if(StringUtil.isEmpty(entityType)){
			return count;
		}
		DataObject entity = DataObjectUtil.createDataObject(entityType);
		entity.setString("base", jdid);
		entity.setString("crew", jzid);
		entity.setString("isdelete", "0");
		DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",entity);
		count = datas.length;
		return count;
	}
	/**
	 * 根据实体类型获取数量
	 * @param entityType 实体类型
	 * @param fields 字段数组
	 * @param values 值数组
	 * @return
	 */
	public int queryCountByEntity(String entityType,String[] fields,String[] values){
		
		int count = 0;
		if(StringUtil.isEmpty(entityType) || fields == null || values == null || fields.length != values.length){
			return count;
		}
		DataObject entity = DataObjectUtil.createDataObject(entityType);
		for(int i=0;i<fields.length;i++){
			entity.setString(fields[i], values[i]);
		}
		DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",entity);
		count = datas.length;
		return count;
	}
	
	/**
	 * 根据flag获取实体名称
	 	 * @param modelFlag 业务表类型(1、规范法定_大修 2、规范法定_日常 3、规范非法定_大修4、规范非法定_日常
	 * 5、十年计划_核岛_大修 6、十年计划_核岛_日常 7、十年计划_常规岛_大修 8、十年计划_常规岛_日常
	 *	9-14、专用检查计划_核岛_大修 15-20、专用检查计划_核岛_日常 21-22、专用检查计划_常规岛_大修  23-24、专用检查计划_常规岛_日常)
	 * @return
	 */
	public String getReadEntityByFlag(String modelFlag){
		
		String busEntity = "";
		if(modelFlag.equals("1")){
			busEntity = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity";
		}else if (modelFlag.equals("2")){
			busEntity = "com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity";
			
		}else if (modelFlag.equals("3")){
			busEntity = "com.cgn.itmp.outlineandplan.outline.NonStaturoryOverhaul.OverhaulEntity";
		}else if (modelFlag.equals("4")){
			busEntity = "com.cgn.itmp.outlineandplan.outline.NonStaturoryDaily.DailyEntity";
		}else if (modelFlag.equals("5")){
			busEntity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity";
			
		}else if (modelFlag.equals("6")){
			busEntity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity";
			
		}else if (modelFlag.equals("7")){
			busEntity = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity";
		}else if (modelFlag.equals("8")){
			busEntity = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity";
			
			
		}else if (modelFlag.equals("13")){ //专用检查计划(核岛部件)-大修-焊缝 管道/支撑
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupport";
		}else if (modelFlag.equals("14")){ //专用检查计划(核岛部件)-大修-焊缝 Boss
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.BossHead";
		}else if (modelFlag.equals("15")){ //专用检查计划(核岛部件)-大修-容器和热交换器
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container";
		}else if (modelFlag.equals("16")){ //专用检查计划(核岛部件)-大修-热传管
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube";
		}else if (modelFlag.equals("17")){ //专用检查计划(核岛部件)-大修-阀门
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Valve";
		}else if (modelFlag.equals("18")){ //专用检查计划(核岛部件)-大修-支撑/支架
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Support";
		
		}else if (modelFlag.equals("19")){ //专用检查计划(核岛部件)-日常-焊缝 管道/支撑
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.PipelineSupport";
		}else if (modelFlag.equals("20")){ //专用检查计划(核岛部件)-日常-焊缝 Boss
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.BossHead";
		}else if (modelFlag.equals("21")){ //专用检查计划(核岛部件)-日常-容器和热交换器
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container";
		}else if (modelFlag.equals("22")){ //专用检查计划(核岛部件)-日常-热传管
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Tube";
		}else if (modelFlag.equals("23")){ //专用检查计划(核岛部件)-日常-阀门
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Valve";
		}else if (modelFlag.equals("24")){ //专用检查计划(核岛部件)-日常-支撑/支架
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Support";
			
		}else if (modelFlag.equals("27")){ //专用检查计划(常规岛及BOP)-大修-通用
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.Currency";	
		}else if (modelFlag.equals("28")){ //专用检查计划(常规岛及BOP)-大修-压力管道
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.PressurePipe";
				
		}else if (modelFlag.equals("25")){ //专用检查计划(常规岛及BOP)-日常-通用
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.Currency";	
		}else if (modelFlag.equals("26")){ //专用检查计划(常规岛及BOP)-日常-压力管道
			busEntity = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.PressurePipe";
				
		}
		
		
		return busEntity;
	}
	/**
	 * 根据中间表删除业务表数据
	 * @param entityType 中间表类型
	 * @param modelFlag 业务表类型(1、规范法定_大修 2、规范法定_日常 3、规范非法定_大修4、规范非法定_日常
	 * 5、十年计划_核岛_大修 6、十年计划_核岛_日常 7、十年计划_常规岛_大修 8、十年计划_常规岛_日常
	 *	9、专用检查计划_核岛_大修 10、专用检查计划_核岛_日常 11、专用检查计划_常规岛_大修 12、专用检查计划_常规岛_日常)
	 * @param processInstId 流程id
	 */
	public void deleteRealDataByMiddleTable(String entityType,String modelFlag,String processInstId){
		if(StringUtil.isEmpty(entityType) || StringUtil.isEmpty(entityType) || StringUtil.isEmpty(processInstId)) return;
		DataObject temp = DataObjectUtil.createDataObject(entityType);
		temp.setLong("processInstId", Long.parseLong(processInstId));
		DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",temp);
		String base = "",crew = "";
		String busEntity = getReadEntityByFlag(modelFlag);
		StringBuffer sb = new StringBuffer();
		
		CommonUtil commonUtil = new CommonUtil();
		String filedStr = "uuid";
		if(commonUtil.checkEntityPropertie(busEntity, "id")){
			filedStr = "id";
		}
		for(DataObject data : datas){
			DataObject delete = DataObjectUtil.createDataObject(busEntity);
			base = StringUtil.isEmpty(data.getString("base")) ? data.getString("jd"):data.getString("base");
			crew = StringUtil.isEmpty(data.getString("crew")) ? data.getString("jz"):data.getString("crew");
			delete.setString(filedStr, data.getString("relid"));
			DataObject[] deleteDatas = DatabaseUtil.queryEntitiesByTemplate("default",delete);
			for(DataObject o : deleteDatas){
				DatabaseExt.deleteEntityCascade("default",o);

			}
		}
		DataObject deltemp = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.outline.common.delete_entity.DeleteEntity");
		deltemp.setLong("processInstId", Long.parseLong(processInstId));
		DataObject[] deldatas = DatabaseUtil.queryEntitiesByTemplate("default",deltemp);
		if(deldatas != null && deldatas.length > 0){
			String deleteuser = deldatas[0].getString("deleteuser");
			String deletereason = deldatas[0].getString("deletereason");
			String ident = dealModelFlag(modelFlag);
			sb.append("删除").append(ident).append("执行条目").append(datas.length).append("条");
			addRecordInfoMation(deleteuser, "删除",sb.toString(), String.valueOf(processInstId), "", ident, deletereason,base,crew);
		}
	}
	
	/**
	 * 计划更新【取消或完成】
	 * @param dataList 需要更新的数据列表
	 * @param entityType 中间表
	 * @param modelFlag 模块标识
	 * @param planFlag 计划标识 1、完成2、取消
	 * @param lc 需要更新的轮次
	 */
	public void planUpdate(DataObject[] dataList,String entityType,String modelFlag,String planFlag,String lc){
		if(dataList == null || StringUtil.isEmpty(modelFlag) ||  StringUtil.isEmpty(entityType)) return;
		String base = "",crew = "";
		String realEntityType = getReadEntityByFlag(modelFlag);
		CommonUtil commonUtil = new CommonUtil();
		String baseid = "";
		String crewid = "";
		CommonServiceImpl commonServiceImpl = new CommonServiceImpl();
		for(DataObject data : dataList){
			if(!StringHelper.isEmpty(data.getString("orderno"))){
				BigDecimal reorderno = new BigDecimal(data.getString("orderno"));
				data.setFloat("orderno", reorderno.floatValue());
			}
			//基地机组
			if(!StringHelper.isEmpty(data.getString("base")))base = data.getString("base");
			if(!StringHelper.isEmpty(data.getString("crew")))crew = data.getString("crew");
			if(StringHelper.isEmpty(base))base = data.getString("jd");
			if(StringHelper.isEmpty(crew))crew = data.getString("jz");
			
			DataObject middle  = DataObjectUtil.convertDataObject(data, entityType, false);
			DataObject real = DataObjectUtil.convertDataObject(data, realEntityType, false);
			middle.setString("processStatus", "2");
			boolean flag = commonUtil.checkEntityPropertie(realEntityType, "id");
			if(flag){
				real.setString("id", data.getString("editid"));
			}else{
				real.setString("uuid", data.getString("editid"));
			}
			real.setString("processStatus", "0");
			DatabaseExt.updateEntityCascade("default", middle);
			DatabaseExt.updateEntityCascade("default", real);
			baseid = StringUtil.isEmpty(dataList[0].getString("base")) ? dataList[0].getString("jd"): dataList[0].getString("base");
			crewid = StringUtil.isEmpty(dataList[0].getString("crew")) ? dataList[0].getString("jz"): dataList[0].getString("crew");
			
			if ("1".equals(modelFlag)) {
				this.synchronous(modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getNDJHDXdata","com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity","T_DGGL_SNJH_HD_DXTM","com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity");
			} else if ("2".equals(modelFlag)) {
				this.synchronous(modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getNDJHRCdata","com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity","T_DGGL_SNJH_HD_RCTM","com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity");
			}else if("3".equals(modelFlag)){
				this.synchronous(modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getNDJHDXdata","com.cgn.itmp.outlineandplan.outline.NonStaturoryOverhaul.OverhaulEntity","T_DGGL_SNJH_HD_DXTM","com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity");
			}else if("4".equals(modelFlag)){
				this.synchronous(modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getNDJHRCdata","com.cgn.itmp.outlineandplan.outline.NonStaturoryDaily.DailyEntity","T_DGGL_SNJH_HD_RCTM","com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity");
			}else if("13".equals(modelFlag)){
				this.zysynchronous(planFlag,lc,modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getFDDGDXdata","com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupport","com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity");
			}else if("14".equals(modelFlag)){
				this.zysynchronous(planFlag,lc,modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getFDDGDXdata","com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.BossHead","com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity");
			}else if("15".equals(modelFlag)){
				this.zysynchronous(planFlag,lc,modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getFDDGDXdata","com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container","com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity");
			}else if("16".equals(modelFlag)){
				this.zysynchronous(planFlag,lc,modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getFDDGDXdata","com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube","com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity");
			}else if("17".equals(modelFlag)){
				this.zysynchronous(planFlag,lc,modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getFDDGDXdata","com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Valve","com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity");
			}else if("18".equals(modelFlag)){
				this.zysynchronous(planFlag,lc,modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getFDDGDXdata","com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Support","com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity");
				
			}else if("19".equals(modelFlag)){
				this.zysynchronous(planFlag,lc,modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getFDDGRCdata","com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.PipelineSupport","com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity");
			}else if("20".equals(modelFlag)){
				this.zysynchronous(planFlag,lc,modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getFDDGRCdata","com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.BossHead","com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity");
			}else if("21".equals(modelFlag)){
				this.zysynchronous(planFlag,lc,modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getFDDGRCdata","com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container","com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity");
			}else if("22".equals(modelFlag)){
				this.zysynchronous(planFlag,lc,modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getFDDGRCdata","com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Tube","com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity");
			}else if("23".equals(modelFlag)){
				this.zysynchronous(planFlag,lc,modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getFDDGRCdata","com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Valve","com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity");
			}else if("24".equals(modelFlag)){
				this.zysynchronous(planFlag,lc,modelFlag,data,"com.cgn.itmp.basecommon.jdglSql.getFDDGRCdata","com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Support","com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity");
			}else if("27".equals(modelFlag) || "28".equals(modelFlag)){
				String detailed = data.getString("rwqd");
				DataObject[] dataParms = commonServiceImpl
						.getInforMationByFieldName(
								"detailed",
								detailed,
								base,
								crew,
								"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity");
				if (dataParms != null && dataParms.length > 0) {
					commonServiceImpl.synchronous(
							dataParms[0],
							"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity",
							"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getJCJHCGDdata");
				}
			}else if("25".equals(modelFlag) || "26".equals(modelFlag)){
				String detailed = data.getString("rwqd");
				DataObject[] dataParms = commonServiceImpl
						.getInforMationByFieldName("detailed", detailed, base,
								crew,
								"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity");
				if (dataParms != null && dataParms.length > 0) {
					commonServiceImpl.zyrcsynchronous(
							dataParms[0],
							"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity",
							"com.cgn.itmp.outlineandplan.outline.common.dxzxtm.getJCJHRCCGDdata");
				}
			}
			
		}
		String processInstId = dataList[0].getString("processInstId");
		String creator = dataList[0].getString("creator");
		String reason = dataList[0].getString("xgyy");
		String jdname = getJdnameByid(baseid);
		String jzname = getJznameByid(crewid);
		String ident = dealModelFlag(modelFlag);
		
		/************************履历字段赋值*********************************/
		String msg = "";
		String style = "";
		String typeName = "";
		if("13".equals(modelFlag) || "19".equals(modelFlag)){typeName="焊缝管道/支撑";}
		if("14".equals(modelFlag) || "20".equals(modelFlag)){typeName="焊缝BOSS";}
		if("15".equals(modelFlag) || "21".equals(modelFlag)){typeName="容器和热交换器";}
		if("16".equals(modelFlag) || "22".equals(modelFlag)){typeName="传热管";}
		if("17".equals(modelFlag) || "23".equals(modelFlag)){typeName="阀门";}
		if("18".equals(modelFlag) || "24".equals(modelFlag)){typeName="支撑/支架";}
		if("25".equals(modelFlag) || "27".equals(modelFlag)){typeName="通用";}
		if("26".equals(modelFlag) || "28".equals(modelFlag)){typeName="压力管道";}
		if("1".equals(planFlag)){//计划完成
			msg = "计划完成-" + typeName + jdname + jzname + lc +"计划完成" + dataList.length + "条";
			style = "计划完成";
		}else if("2".equals(planFlag)){//计划取消
			msg = "计划取消-" + typeName + jdname + jzname + lc +"计划取消" + dataList.length + "条";
			style = "计划取消";
		}
		
		
//		ident+=style;
		/************************开始插入履历*********************************/
		addRecordInfoMation(creator, style, msg, String.valueOf(processInstId), "", ident, reason,base,crew);
		
		/************************更新十年计划*********************************/
		
		
	}
	
	/**
	 * 数据同步
	 * @param modelFlag
	 * @param data
	 * @param adress
	 * @param entityName
	 * @param tablename
	 * @param entity
	 * @return
	 */
	@Bizlet
	public Map<String, Object> synchronous(String modelFlag,DataObject data, String adress,
			String entityName,String tablename, String entity) {
		ExecutiveEntriesServiceImpl executiveEntriesServiceImpl = new ExecutiveEntriesServiceImpl();
		CommonServiceImpl commonServiceImpl = new CommonServiceImpl();
		if (data == null)
			return null;
		List<Map<String, Object>> valueList = new ArrayList<Map<String, Object>>();
		Map<String, Object> recordMap = new HashMap<String, Object>();
		Map<String, Object> valueMap = new HashMap<String, Object>();
		String detailed = data.getString("detailed");
		String crew = data.getString("crew");
		String base = data.getString("base");
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("tablename", tablename);
		parmsMap.put("detailed", detailed);
		parmsMap.put("crew", crew);
		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", adress, parmsMap);
		String uuid = "";
		if("1".equals(modelFlag) || "3".equals(modelFlag)){
			if (typeDataObject != null && typeDataObject.length > 0) {
				uuid = ((DataObject) typeDataObject[0]).getString("id");
				DataObject[] datas = commonServiceImpl.getInforMationByFieldName("detailed", detailed, base, crew, entityName);
				if(datas != null && datas.length > 0){
					for (int i = 0; i < datas.length; i++) {
						DataObject dataObject = datas[i];
						for (int j = 1; j <= 60; j++) {
							String column = "c" + j;
							String cdata = ((DataObject) dataObject).getString(column);
							if (!StringHelper.isEmpty(cdata)) {
								if (valueMap != null && valueList.size() > 0) {
									String columndata = StringHelper
											.isEmpty((String) valueMap.get(column)) ? cdata
											: (String) valueMap.get(column) + ","
													+ cdata;
									valueMap.put(column, columndata);
								} else {
									valueMap.put(column, cdata);
								}
							}
						}
						valueList.add(valueMap);
					}
					
				}
				Map<String, Object> stateMap = executiveEntriesServiceImpl
						.setStateAndUpdateData(valueMap, base);
				if (stateMap != null && stateMap.size() > 0) {
					DataObject dataEntity = DataObjectUtil.createDataObject(entity);
					for (int i = 1; i <= 60; i++) {
						dataEntity.setString("c" + i, null);
						Iterator<Map.Entry<String, Object>> it = stateMap
								.entrySet().iterator();
						while (it.hasNext()) {
							Map.Entry<String, Object> entry = it.next();
							String key = (String) entry.getKey();
							String value = (String) entry.getValue();
							if (("c" + i).equals(key)) {
								System.err.println("c" + i + ":" + value);
								dataEntity.setString("c" + i, value);
							}
						}
					}
					dataEntity.setString("id", uuid);
					DatabaseUtil.updateEntity("default", dataEntity);
					recordMap.put("success", true);
				}
			} else {
				recordMap.put("success", false);
			}
		}else if ("2".equals(modelFlag) || "4".equals(modelFlag)) {
			if(typeDataObject != null && typeDataObject.length>0){
				uuid = ((DataObject) typeDataObject[0]).getString("id");
				DataObject[] datas = commonServiceImpl.getInforMationByFieldName("detailed", detailed, base, crew, entityName);
				if(datas != null && datas.length > 0){
					for (int i = 0; i < datas.length; i++) {
						DataObject dataObject = datas[i];
						for (int j = 1991; j <= 2089; j++) {
							String column = "n" + j;
							String cdata = ((DataObject) dataObject).getString(column);
							if(!StringHelper.isEmpty(cdata)){
								if(valueMap != null && valueList.size() > 0){
									String columndata = StringHelper.isEmpty((String)valueMap.get(column)) ?cdata:(String) valueMap.get(column)+ "," + cdata;
									valueMap.put(column, columndata);
								}else{
									valueMap.put(column, cdata);
								}
							}
						}
						valueList.add(valueMap);
					}
					
				}
				
				Map<String, Object> stateMap = executiveEntriesServiceImpl.setStateAndUpdateData(valueMap,base);
				if(stateMap != null && stateMap.size()>0){
					DataObject dataEntity = DataObjectUtil.createDataObject(entity);
					for (int i = 1991; i <= 2089; i++) {
						dataEntity.setString("n"+i, null);
						Iterator<Map.Entry<String, Object>> it = stateMap.entrySet().iterator();
						while (it.hasNext()) {
							Map.Entry<String, Object> entry = it.next();
						    String key = (String) entry.getKey();
						    String value = (String) entry.getValue();
						    if(("n"+i).equals(key)){
						    	dataEntity.setString("n"+i, value);
						    }
						}
					}
					dataEntity.setString("id", uuid);
					DatabaseUtil.updateEntity("default", dataEntity);
					recordMap.put("success", true);
				}
			}else{
				recordMap.put("success", false);
			}
		}
		
		return recordMap;
	}
	
	
	
	
	@Bizlet
	public Map<String, Object> zysynchronous(String planFlag,String lc,String modelFlag,DataObject data, String adress,
			String entityName, String entity) {
		ExecutiveEntriesServiceImpl executiveEntriesServiceImpl = new ExecutiveEntriesServiceImpl();
		CommonServiceImpl commonServiceImpl = new CommonServiceImpl();
		if (data == null)return null;
		List<Map<String, Object>> valueList = new ArrayList<Map<String, Object>>();
		Map<String, Object> recordMap = new HashMap<String, Object>();
		Map<String, Object> valueMap = new HashMap<String, Object>();
		String detailed = "";
		detailed  = data.getString("tasklist");
		String crew = data.getString("crew");
		String base = data.getString("base");
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("detailed", detailed);
		parmsMap.put("crew", crew);
		Object[] typeDataObject = (Object[]) DatabaseExt.queryByNamedSql(
				"default", adress, parmsMap);
		String uuid = "";
		int start = 0;
		int end = 0;
		if(!StringHelper.isEmpty(lc) && "2".equals(planFlag)){
			start = Integer.parseInt(lc.substring(1, lc.length()));
			end = start + 9;
		}
		if("13".equals(modelFlag) || "14".equals(modelFlag) || "15".equals(modelFlag)
				|| "16".equals(modelFlag) || "17".equals(modelFlag) || "18".equals(modelFlag)){//大修
			if (typeDataObject != null && typeDataObject.length > 0) {
				if(end > 60) end = 60;
				DataObject[] datas = commonServiceImpl.getInforMationByFieldName("detailed", detailed, base, crew, entityName);
				for (int z = 0; z < typeDataObject.length; z++) {
					Object object = typeDataObject[z];
					uuid = ((DataObject) object).getString("id");
					String inspectplan = ((DataObject) object).getString("inspectplan");
					if("y".equals(inspectplan)){
						if(datas != null && datas.length > 0){
							for (int i = 0; i < datas.length; i++) {
								DataObject dataObject = datas[i];
								if("1".equals(planFlag)){
									String cdata = ((DataObject) dataObject).getString(lc);
									if (!StringHelper.isEmpty(cdata)) {
										if (valueMap != null && valueList.size() > 0) {
											String columndata = StringHelper
													.isEmpty((String) valueMap.get(lc)) ? cdata
													: (String) valueMap.get(lc) + ","
															+ cdata;
											valueMap.put(lc, columndata);
										} else {
											valueMap.put(lc, cdata);
										}
									}
								}else if("2".equals(planFlag)){
									for (int j = start; j < end; j++) {
										String column = "c" + j;
										String cdata = ((DataObject) dataObject).getString(column);
										if (!StringHelper.isEmpty(cdata)) {
											if (valueMap != null && valueList.size() > 0) {
												String columndata = StringHelper
														.isEmpty((String) valueMap.get(column)) ? cdata
														: (String) valueMap.get(column) + ","
																+ cdata;
												valueMap.put(column, columndata);
											} else {
												valueMap.put(column, cdata);
											}
										}
									}
									valueList.add(valueMap);
								}
							}
						}
						Map<String, Object> stateMap = executiveEntriesServiceImpl
								.setStateAndUpdateData(valueMap, base);
						if (stateMap != null && stateMap.size() > 0) {
							DataObject dataEntity = DataObjectUtil.createDataObject(entity);
							Iterator<Map.Entry<String, Object>> it = stateMap.entrySet().iterator();
							if("1".equals(planFlag)){
								while (it.hasNext()) {
									Map.Entry<String, Object> entry = it.next();
									String key = (String) entry.getKey();
									String value = (String) entry.getValue();
									if (lc.equals(key)) {
										dataEntity.setString(lc, value);
									}
								}
							}else if("2".equals(planFlag)){
								for (int i = start; i <= end; i++) {
									while (it.hasNext()) {
										Map.Entry<String, Object> entry = it.next();
									    String key = (String) entry.getKey();
									    String value = (String) entry.getValue();
									    if(("c"+i).equals(key)){
									    	dataEntity.setString("c"+i, value);
									    }
									}
								}
							}
							dataEntity.setString("id", uuid);
							DatabaseUtil.updateEntity("default", dataEntity);
							recordMap.put("success", true);
						}
					}
				}
			}
		}else if ("19".equals(modelFlag) || "20".equals(modelFlag) || "21".equals(modelFlag)
				|| "22".equals(modelFlag) || "23".equals(modelFlag) || "24".equals(modelFlag)) {//日常
			if(typeDataObject != null && typeDataObject.length>0){
				if(end > 2089) end = 2089;
				DataObject[] datas = commonServiceImpl.getInforMationByFieldName("detailed", detailed, base, crew, entityName);
				for (int z = 0; z < typeDataObject.length; z++) {
					Object object = typeDataObject[z];
					uuid = ((DataObject) object).getString("id");
					String inspectplan = ((DataObject) object).getString("inspectplan");
					if("y".equals(inspectplan)){
						lc = "c" + lc;
						if(datas != null && datas.length > 0){
							for (int i = 0; i < datas.length; i++) {
								DataObject dataObject = datas[i];
								if("1".equals(planFlag)){
									String cdata = ((DataObject) dataObject).getString("c" + lc);
									if (!StringHelper.isEmpty(cdata)) {
										if (valueMap != null && valueList.size() > 0) {
											String columndata = StringHelper
													.isEmpty((String) valueMap.get("c" + lc)) ? cdata
													: (String) valueMap.get("c" + lc) + ","
															+ cdata;
											valueMap.put("c" + lc, columndata);
										} else {
											valueMap.put("c" + lc, cdata);
										}
									}
								}else if("2".equals(planFlag)){
									for (int j = start; j <= end; j++) {
										String column = "c" + j;
										String cdata = ((DataObject) dataObject).getString(column);
										if(!StringHelper.isEmpty(cdata)){
											if(valueMap != null && valueList.size() > 0){
												String columndata = StringHelper.isEmpty((String)valueMap.get(column)) ?cdata:(String) valueMap.get(column)+ "," + cdata;
												valueMap.put(column, columndata);
											}else{
												valueMap.put(column, cdata);
											}
										}
									}
									valueList.add(valueMap);
								}
							}
						}
					}
					
					Map<String, Object> stateMap = executiveEntriesServiceImpl.setStateAndUpdateData(valueMap,base);
					if(stateMap != null && stateMap.size()>0){
						DataObject dataEntity = DataObjectUtil.createDataObject(entity);
						Iterator<Map.Entry<String, Object>> it = stateMap.entrySet().iterator();
						if("1".equals(planFlag)){
							while (it.hasNext()) {
								Map.Entry<String, Object> entry = it.next();
								String key = (String) entry.getKey();
								String value = (String) entry.getValue();
								if (("n"+lc).equals(key)) {
									dataEntity.setString("n"+lc, value);
								}
							}
						}else if("2".equals(planFlag)){
							for (int i = start; i <= end; i++) {
								while (it.hasNext()) {
									Map.Entry<String, Object> entry = it.next();
								    String key = (String) entry.getKey();
								    String value = (String) entry.getValue();
								    if(("n"+i).equals(key)){
								    	dataEntity.setString("n"+i, value);
								    }
								}
							}
						}
						dataEntity.setString("id", uuid);
						DatabaseUtil.updateEntity("default", dataEntity);
						recordMap.put("success", true);
					}
				}
			}else{
				recordMap.put("success", false);
			}
		}
		return recordMap;
	}
	
	
	/**
	 * 新增履历信息表数据
	 * @param creator	发起人
	 * @param type		操作方式
	 * @param content	操作日志
	 * @param planid	操作所属业务表id
	 * @param editid	操作所属中间表id
	 * @param ident		操作模块类型
	 * @param reason	操作原因
	 */
	public void addRecordInfoMation(String creator,String type,String content,String planid,String editid,String ident,String reason,String base,String crew){
		if(StringHelper.isEmpty(creator) || StringHelper.isEmpty(type) || StringHelper.isEmpty(content) 
				|| StringHelper.isEmpty(planid) || StringHelper.isEmpty(ident) || StringHelper.isEmpty(base) || StringHelper.isEmpty(crew))return;
		DataObject temp  = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Tdgglvitae");
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dataTime = df.format(new Date());
		temp.setString("creator", creator);
		temp.setString("type", type);
		temp.setString("content", content);
		temp.setString("datetime", dataTime);
		temp.setString("planid", planid);
		if(!StringHelper.isEmpty(editid))temp.setString("editid", editid);
		temp.setString("ident", ident);
		temp.setString("reason", reason);
		temp.setString("base", base);
		temp.setString("crew", crew);
		DatabaseExt.insertEntityCascade("default", temp);
	}
	
	/**
	 * 处理模块标识字段
	 * @param modelFlag
	 * @return
	 */
	public String dealModelFlag(String modelFlag){
		if(StringHelper.isEmpty(modelFlag))return "";
		String ident = "";
		if("1".equals(modelFlag))ident = "规范法定大纲_大修";
		if("2".equals(modelFlag))ident = "规范法定大纲_日常";
		if("3".equals(modelFlag))ident = "规范非法定总纲_大修";
		if("4".equals(modelFlag))ident = "规范非法定总纲_日常";
		if("5".equals(modelFlag))ident = "十年计划(核岛)_大修";
		if("6".equals(modelFlag))ident = "十年计划(核岛)_日常";
		if("7".equals(modelFlag))ident = "十年计划(常规岛及BOP)_大修";
		if("8".equals(modelFlag))ident = "十年计划(常规岛及BOP)_日常";
		
		int flag = Integer.valueOf(modelFlag);
		if(flag >= 13 && flag <= 18 ){
			ident = "专用检查计划(核岛)_大修";
		}else if(flag >= 19 && flag <= 24 ){
			ident = "专用检查计划(核岛)_日常";
		}else if(flag >= 27 && flag <= 28 ){
			ident = "专用检查计划(常规岛及BOP)_大修";
		}else if(flag >= 25 && flag <= 26 ){
			ident = "专用检查计划(常规岛及BOP)_日常";
		}
		
		return ident;
	}
	
	
	/**
	 * 计划更新（计划更新和计划取消发起）
	 * @param datas  计划更新的数据
	 * @param processInstId 流程id
	 * @param entityType 中间表实体名称
	 */
	
	@Bizlet
	public void planComplate(DataObject[] datas,String processInstId,String entityType,String planFlag,String modelFlag){
		if(datas == null || StringUtil.isEmpty(entityType)) return;
		String flag = "";
		String xgyy = "";
		if(planFlag.equals("1")){//计划完成时，合并修改原因的值
			flag = "4";
			for (int i=0;i<datas.length;i++){
				if(!StringUtil.isEmpty(datas[i].getString("xgyy").trim())){
					xgyy = datas[i].getString("xgyy");
					break;
				}
			}
		}else{//计划取消
			flag ="3";
		}
		

		CommonUtil commonUtil = new CommonUtil();
		

		String busEntity = getReadEntityByFlag(modelFlag);
		DataObject dataEntity = DataObjectUtil.createDataObject(busEntity);
		String filedStr = "uuid";
		if(commonUtil.checkEntityPropertie(busEntity, "id")){
			filedStr = "id";
		}
		for (int i = 0; i < datas.length; i++) {
			DataObject dataObject = datas[i];
			if(!StringHelper.isEmpty(dataObject.getString("orderno"))){
				BigDecimal reorderno = new BigDecimal(dataObject.getString("orderno"));
				dataObject.set("orderno", reorderno);
			}
			String id = dataObject.getString(filedStr);
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			
			dataObject.setString("id", uuid);
			dataObject.setString("uuid", uuid);
			DataObject temp  = DataObjectUtil.convertDataObject(dataObject, entityType, false);
			temp.setString("processStatus", "1");
			temp.setString("processstatus", "1");
			temp.setString("processInstId", processInstId);
			temp.setString("flag", flag);
			temp.setString("editid", id);
			temp.setString("relid", id);
			if(planFlag.equals("1")){
				temp.setString("xgyy", xgyy);
			}
				
			DatabaseExt.insertEntityCascade("default", temp);
			dataEntity.setString(filedStr, id);
			dataEntity.setString("processStatus", "1");
			DatabaseUtil.updateEntity("default", dataEntity);
		}
	}
	
	/**
	 * 设置排序号
	 * @param orderno
	 * @param entity
	 * @return
	 */
	public BigDecimal setOrderNo(String orderno, String entity, String base,
			String crew) {
		if (StringHelper.isEmpty(orderno) || StringHelper.isEmpty(entity))
			return null;
		BigDecimal no = BigDecimal.valueOf(0.001);
		BigDecimal reorderno = new BigDecimal(orderno);
		reorderno = reorderno.add(no);
		// String tableName = DatabaseExt.getTableName("default", entity);
		String[] oederNoStr = orderno.split("\\.");
		String start = "";
		if (oederNoStr.length > 0)
			start = oederNoStr[0];
		else
			start = orderno;
		String end = String.valueOf(Integer.parseInt(start) + 1);
		// String address = "com.cgn.itmp.basecommon.jdglSql.getDataByOrderno1";
		// Map<String, Object> parmsMap = new HashMap<String, Object>();
		// parmsMap.put("tablename", tableName);
		// parmsMap.put("start", orderno);
		// parmsMap.put("end", end);
		DataObject criteriaType = DataFactory.INSTANCE.create(
				"com.primeton.das.criteria", "criteriaType");
		criteriaType.set("_entity", entity);
		// 加入条件
		criteriaType.set("_expr[1]/orderno", orderno);
		criteriaType.set("_expr[1]/_op", ">");
		criteriaType.set("_expr[2]/orderno", end);
		criteriaType.set("_expr[2]/_op", "<");
		criteriaType.set("_expr[3]/base", base);
		criteriaType.set("_expr[3]/_op", "=");
		criteriaType.set("_expr[4]/crew", crew);
		criteriaType.set("_expr[4]/_op", "=");
		criteriaType.set("_expr[5]/jd", base);
		criteriaType.set("_expr[5]/_op", "=");
		criteriaType.set("_expr[6]/jz", crew);
		criteriaType.set("_expr[6]/_op", "=");
		criteriaType.set("_orderby[1]/_property", "orderno");
		criteriaType.set("_orderby[1]/_sort", "asc");
		DataObject[] typeDataObject = DatabaseUtil
				.queryEntitiesByCriteriaEntity("default", criteriaType);
		// Object[] typeDataObject =
		// (Object[])DatabaseExt.queryByNamedSql("default", address, parmsMap);
		if (typeDataObject.length > 0) {
			DataObject[] dataObject = new DataObject[typeDataObject.length];
			for (int i = 0; i < typeDataObject.length; i++) {
				dataObject[i] = (DataObject) typeDataObject[i];
				no=no.add(BigDecimal.valueOf(0.001));
				BigDecimal ordernoL = reorderno.add(no);
				dataObject[i].setFloat("orderno", ordernoL.floatValue());
				DataObject dataTemp = DataObjectUtil.convertDataObject(
						dataObject[i], entity, false);
				DatabaseUtil.updateEntity("default", dataTemp);
			}
		}
		return reorderno;
	}
	
	/**
	 * 删除实体对应的流程数据，删除流程时调用（暂时将流程状态修改为3：废弃）
	 * @param entityType
	 * @param processInstId
	 */
	public void deleteDataByEntity(String entityType,String processInstId){
		if(StringUtil.isEmpty(entityType) || StringUtil.isEmpty(entityType) || StringUtil.isEmpty(processInstId)) return;
		DataObject entity = DataObjectUtil.createDataObject(entityType);
		entity.setLong("processInstId", Long.parseLong(processInstId));
//		entity.setString("processStatus", "3");
//		DatabaseExt.updateEntityCascade("default", entity);
		
		DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",entity);
		for(DataObject data : datas){
			entity.setString("processStatus", "3");
			DatabaseExt.updateEntityCascade("default",data);
		}
	}
	
	
	/**
	 * 更改流程状态
	 * @param middleEntity
	 * @param processInstId
	 * @param status
	 */
	public void updateProcessStatus(String middleEntity,String processInstId,String status){
		String tableName = DatabaseExt.getTableName("default", middleEntity);
		if(!StringUtil.isEmpty(tableName)){
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("TABLENAME", tableName);
			map.put("processInstId", processInstId);
			map.put("ProcessStatus", status);
			DatabaseExt.executeNamedSql("default", "com.cgn.itmp.basecommon.jdglSql.updateProcessStatus", map);
		}
	} 
	
	
	
	/**
	 * 更新流程状态为已完成，1、进行中 2、已完成3、废弃
	 * @param entityType
	 * @param processInstId
	 */
	public void updateProcessStatusByEntity(String entityType,String processInstId){
		if(StringUtil.isEmpty(entityType) || StringUtil.isEmpty(entityType) || StringUtil.isEmpty(processInstId)) return;
		DataObject entity = DataObjectUtil.createDataObject(entityType);
		entity.setLong("processInstId", Long.parseLong(processInstId));
		entity.setString("processStatus", "2");
		DatabaseExt.updateEntityCascade("default", entity);
		
	}
	
	
	
	
	
	
	/**
	 * 获取处于流程审批中状态信息
	 * @param datas			数据集
	 * @param entityName	中间表实体
	 * @param fieldName		关联字段
	 * @param relFieldName	中间表关联字段
	 * @param reason		提示字段名
	 * @param tsName		提示字段值
	 * @return
	 */
	@Bizlet
	public String getProcessStatus(DataObject[] datas,String entityName, String fieldName,String relFieldName,String reason,String tsName){
		if(datas == null || datas.length <=0 || StringHelper.isEmpty(entityName) || StringHelper.isEmpty(reason)
				|| StringHelper.isEmpty(fieldName) || StringHelper.isEmpty(relFieldName) || StringHelper.isEmpty(tsName))return "";
		StringBuffer sb = new StringBuffer();
		DataObject dataEntity = DataObjectUtil.createDataObject(entityName);
		for (int i = 0; i < datas.length; i++) {
			String type = "";
			DataObject dataObject = datas[i];
			String fieldValue = dataObject.getString(fieldName);
			if(!StringHelper.isEmpty(fieldValue)){
				String tsValue = dataObject.getString(tsName);
				dataEntity.set(relFieldName, fieldValue);
				dataEntity.set("processStatus", "1");
				DataObject[] dataParms = DatabaseUtil.queryEntitiesByTemplate("default", dataEntity);
				if(dataParms != null && dataParms.length > 0){
					DataObject dataParm = dataParms[0];
					String modelFlag = dataParm.getString("flag");
					if("2".equals(modelFlag))type = "[修改]";
					if("3".equals(modelFlag))type = "[计划取消]";
					if("4".equals(modelFlag))type = "[计划完成]";
					if("5".equals(modelFlag))type = "[删除]";
					if(!StringHelper.isEmpty(type)){
						sb.append(reason).append("[").append(tsValue).append("]正在").append(type).append("流程中");
						if(i < datas.length - 1)sb.append("<br>");
					}
				}
			}
		}
		if(!StringHelper.isEmpty(sb.toString()))sb.append("<br>请待审批结束后再进行操作");
		return sb.toString();
	}
	
	/**
	 * 获取基地机组的周期
	 * @param baseid
	 * @param crewid
	 * @return
	 */
	@Bizlet
	public Map<String, Object> getBaseCircle(String baseid,String crewid,String type) {
		// TODO 自动生成的方法存根
		Map<String, Object> parmsMap = new HashMap<String, Object>();
		parmsMap.put("baseid", baseid);
		parmsMap.put("crewid", crewid);
		String address = "com.cgn.itmp.basecommon.jdglSql.getBaseCircleForC";
		if("n".equals(type)){
			address = "com.cgn.itmp.basecommon.jdglSql.getBaseCircleForN";
		}
		
		Object[] typeDataObject = (Object[])DatabaseExt.queryByNamedSql("default", address, parmsMap);
		Map<String, Object> valueMap = new HashMap<String, Object>();
		if(typeDataObject != null && typeDataObject.length>0){
			String start = ((DataObject) typeDataObject[0]).getString("cstart");
			String end = ((DataObject) typeDataObject[0]).getString("cend");
			valueMap.put("start", start);
			valueMap.put("end", end);
			valueMap.put("sucess", true);
		}else{
			valueMap.put("sucess", false);
		}
		return valueMap;
	}
	
	/**
	 * 获取基地状态
	 * @param type 基地类型 台山或其他
	 * @return
	 */
	@Bizlet
	public DataObject[] getStatus(String type) {
		// TODO 自动生成的方法存根
		String sql="com.cgn.itmp.basecommon.jdglSql.getStatus";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, type);
	}
	/**
	 * 计划更新管理员操作
	 * @param dataObjects
	 * @param entity
	 */
	@Bizlet
	public void planUpdate(DataObject[] dataObjects,String modelFlag){
		if(dataObjects == null || dataObjects.length ==0 || StringHelper.isEmpty(modelFlag)) return;
		String busEntity = getReadEntityByFlag(modelFlag);
		for (int i = 0; i < dataObjects.length; i++) {
			DataObject dataObject = dataObjects[i];
			DataObject temp  = DataObjectUtil.convertDataObject(dataObject, busEntity, false);
			DatabaseUtil.updateEntity("default", temp);
		}
	}
	
	
}




