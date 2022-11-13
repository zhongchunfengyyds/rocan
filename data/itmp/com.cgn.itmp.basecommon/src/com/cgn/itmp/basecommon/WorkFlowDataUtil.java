
package com.cgn.itmp.basecommon;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import com.cgn.itmp.outlineandplan.outline.common.CommonServiceImpl;
import com.cgn.itmp.outlineandplan.tenyearplan.ExecutiveEntriesSNJHCGDDXServiceImpl;
import com.cgn.itmp.outlineandplan.tenyearplan.ExecutiveEntriesSNJHCGDRCServiceImpl;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;

import commonj.sdo.DataObject;
import commonj.sdo.helper.DataFactory;
/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述
 * </pre>
 * @author xuzhikang
 * @version 1.00.00
 * 
 */
public class WorkFlowDataUtil extends DASDaoSupport  {
	CommonUtil commonUtil = new CommonUtil();
	BaseJdglUtil baseJdglUtil = new BaseJdglUtil();
	/**
	 * 
	 */
	public WorkFlowDataUtil() {
		// TODO 自动生成的构造函数存根
	}
	
	
	
	/**
	 * 根据实体名称去把数据做对应存储
	 * @param entityName 实体名
	 * @param data	要存储的数据
	 */
	public void accordingTOEntityDoStorage(String entity,String entityName,DataObject data){
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
	 * 把数据从中间表回写到真实表数据中去
	 * @param sourceEntity 中间表实体
	 * @param targetEntity 真实表实体
	 * @param processInstId 流程ID
	 */
	public void writeBackRealData(String sourceEntity,String targetEntity,String processInstId){
	
		//建立查询实体
		DataObject criteriaType = DataFactory.INSTANCE.create("com.primeton.das.criteria","criteriaType");
		criteriaType.set("_entity",sourceEntity);
		//加入条件
		criteriaType.set("_expr[1]/processInstId",processInstId);
		criteriaType.set("_expr[1]/_op","=");
		
		//根据流程Id获取对应的中间表中的业务数据
		DataObject[] sourceData = DatabaseUtil.queryEntitiesByCriteriaEntity("default",criteriaType);
		if(sourceData.length > 0 ){
			//把中间表数据转换成对应的真实表视剧实体，并执行插入操作
			DataObject data = DataObjectUtil.convertDataObject(sourceData[0], targetEntity, true);
			DatabaseUtil.insertEntity("default",data);
		}
		
		/*****************************开始插入履历*********************************/
		String ident = getHisModelName(sourceEntity);
		StringBuilder sb = new StringBuilder();
		String base = StringUtil.isEmpty(sourceData[0].getString("base")) ? sourceData[0].getString("jd"): sourceData[0].getString("base");
		String crew = StringUtil.isEmpty(sourceData[0].getString("crew")) ? sourceData[0].getString("jz"): sourceData[0].getString("crew");	
		sb.append("新增").append(ident).append(":").append(this.convertZyjcjhType(sourceData[0].getString("type"))).append("_1条");
		this.addRecordInfoMation(sourceData[0].getString("creator"), "新增", sb.toString(), sourceData[0].getString("uuid"),
				sourceData[0].getString("uuid"), ident, sourceData[0].getString("reason"), base, crew);
		
		/*****************************更改流程状态*********************************/
		this.updateProcessStatus(sourceEntity, processInstId, "2");
		CommonServiceImpl commonServiceImpl = new CommonServiceImpl();
		if ("专用检查计划(常规岛及BOP)_大修".equals(ident)) {
			String detailed = sourceData[0].getString("rwqd");
			DataObject[] dataParms = commonServiceImpl.getInforMationByFieldName(
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
		} else if ("专用检查计划(常规岛及BOP)_日常".equals(ident)) {
			String detailed = sourceData[0].getString("rwqd");
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
	
	
	/**
	 * 转换专用检查计划类型
	 * @param type 
	 * @return
	 */
	public String convertZyjcjhType(String type){
		if("RCGD".equals(type)){
			type = "压力管道";
		}else if("RCTY".equals(type)){
			type = "通用";
		}else if("HFGDZC".equals(type)){
			type = "焊缝（管道/支撑）";
		}else if("HFBOSS".equals(type)){
			type = "焊缝（BOSS头）";
		}else if("ZCZJ".equals(type)){
			type = "支撑/支架";
		}else if("FM".equals(type)){
			type = "阀门";
		}else if("RQRJHQ".equals(type)){
			type = "容器和热交换器";
		}else if("CRG".equals(type)){
			type = "传热管";
		}
		
		return type;
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
	 * 根据中间表实体获取专用检查计划对应的履历模块名称
	 * @param entityName
	 * @return
	 */
	public String getHisModelName(String entityName){
		String modelName = "";
		
		if("com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.OverhaulEdit".equals(entityName)){
			modelName = "专用检查计划(常规岛及BOP)_大修";
		}else if("com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.DailyEdit".equals(entityName)){
			modelName = "专用检查计划(常规岛及BOP)_日常";
		}else if("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit".equals(entityName)){
			modelName = "专用检查计划(核岛)_大修";
		}else if("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit".equals(entityName)){
			modelName = "专用检查计划(核岛)_日常";
		}
		
		return modelName;
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

}
