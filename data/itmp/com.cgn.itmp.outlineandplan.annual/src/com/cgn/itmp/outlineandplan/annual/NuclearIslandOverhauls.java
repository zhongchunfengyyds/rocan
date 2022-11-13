/**
 * 
 */
package com.cgn.itmp.outlineandplan.annual;

import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.cgn.components.coframe.tools.FtpUploadUtil;
import com.cgn.itmp.basecommon.StringUtil;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.runtime.core.ApplicationContext;
import com.eos.runtime.core.TraceLoggerFactory;
import com.eos.spring.DASDaoSupport;
import com.eos.system.logging.Logger;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import commonj.sdo.DataObject;
import commonj.sdo.helper.DataFactory;

/**
 * <pre>
 * Title: 年度计划 核岛
 * Description: 换料大修计划
 * </pre>
 * 
 * @author Administrator
 * @version 1.00.00
 * 
 */

public class NuclearIslandOverhauls extends DASDaoSupport {

	private static Logger logger = TraceLoggerFactory
			.getLogger(NuclearIslandOverhauls.class);

	/**
	 * 工作流业务逻辑节点 核岛大修计划
	 * 普通用户处理节点
	 * @param uuid
	 * @param processInstId
	 */
	public void updatePlanEntity(String uuid, String processInstId,
			DataObject personInfo) {
		logger.info("<<<<<<<<<<流程处理节点>>>>>>>>>>");
		logger.info(uuid + "\t" + processInstId);
		if (StringUtils.isNotBlank(uuid)
				&& StringUtils.isNotBlank(processInstId)) {
			DataObject obj = DataObjectUtil
					.createDataObject("com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.PlanEntity");
			obj.set("id", uuid);
			obj.set("processinstid", processInstId);
			obj.set("sqr", personInfo.getString("sqr"));
			obj.set("sqsj", personInfo.getString("sqsj"));
			obj.set("shry", personInfo.getString("shry"));
			obj.set("pzry", personInfo.getString("pzry"));
			obj.set("csry", personInfo.getString("csry"));
			obj.set("isdelete", "3");
			DatabaseUtil.updateEntity("default", obj);
		}
	}

	/**
	 * 工作流业务逻辑节点 核岛大修计划
	 * 管理员处理节点
	 * @param uuid
	 */
	public void adminAuditPlanEntity(String uuid){
		DataObject obj = DataObjectUtil
				.createDataObject("com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.PlanEntity");
		obj.set("id", uuid);
		obj.set("isdelete", "4");
		DatabaseUtil.updateEntity("default", obj);
	}
	
	/**
	 * 工作流业务逻辑节点 核岛日常计划
	 * 普通员工处理节点
	 * @param uuid
	 * @param processInstId
	 */
	public void updateDailyPlanEntity(String uuid, String processInstId,
			DataObject personInfo) {
		logger.info("<<<<<<<<<<流程处理节点>>>>>>>>>>");
		logger.info(uuid + "\t" + processInstId);
		if (StringUtils.isNotBlank(uuid)
				&& StringUtils.isNotBlank(processInstId)) {
			DataObject obj = DataObjectUtil
					.createDataObject("com.cgn.itmp.outlineandplan.annual.NuclearIslandDaily.PlanEntity");
			obj.set("id", uuid);
			obj.set("processinstid", processInstId);
			obj.set("sqr", personInfo.getString("sqr"));
			obj.set("sqsj", personInfo.getString("sqsj"));
			obj.set("jhry", personInfo.getString("jhry"));
			obj.set("pzry", personInfo.getString("pzry"));
			obj.set("csry", personInfo.getString("csry"));
			obj.set("isdelete", "3");
			DatabaseUtil.updateEntity("default", obj);
		}
	}
	
	/**
	 * 工作流业务逻辑节点 核岛日常计划
	 * 管理员处理节点
	 * @param uuid
	 */
	public void adminAuditDailyPlanEntity(String uuid){
		DataObject obj = DataObjectUtil
				.createDataObject("com.cgn.itmp.outlineandplan.annual.NuclearIslandDaily.PlanEntity");
		obj.set("id", uuid);
		obj.set("isdelete", "4");
		DatabaseUtil.updateEntity("default", obj);
	}
	

	/**
	 * 工作流业务逻辑节点 常规岛大修 计划
	 * 普通员工处理节点
	 * @param uuid
	 * @param processInstId
	 */
	public void updateConventionOverhaulPlanEntity(String uuid,
			String processInstId, DataObject personInfo) {
		logger.info("<<<<<<<<<<流程处理节点>>>>>>>>>>");
		logger.info(uuid + "\t" + processInstId);
		if (StringUtils.isNotBlank(uuid)
				&& StringUtils.isNotBlank(processInstId)) {
			DataObject obj = DataObjectUtil
					.createDataObject("com.cgn.itmp.outlineandplan.annual.ConventionalIslandOverhaulPlan.PlanEntity");
			obj.set("id", uuid);
			obj.set("processinstid", processInstId);
			obj.set("sqr", personInfo.getString("sqr"));
			obj.set("sqsj", personInfo.getString("sqsj"));
			obj.set("jhry", personInfo.getString("jhry"));
			obj.set("pzry", personInfo.getString("pzry"));
			obj.set("csry", personInfo.getString("csry"));
			obj.set("isdelete", "3");
			DatabaseUtil.updateEntity("default", obj);
		}
	}

	/**
	 * 工作流逻辑节点 常规岛大修 计划
	 * 管理员审核，直接保存
	 * @param uuid
	 */
	public void adminAuditConventionOverhaulPlanEntity(String uuid){
		DataObject obj = DataObjectUtil
				.createDataObject("com.cgn.itmp.outlineandplan.annual.ConventionalIslandOverhaulPlan.PlanEntity");
		obj.set("id", uuid);
		obj.set("isdelete", "4");
		DatabaseUtil.updateEntity("default", obj);
	}
	
	
	/**
	 * 工作流业务逻辑节点 常规岛 日常 计划
	 * 
	 * @param uuid
	 * @param processInstId
	 */
	public void updateConventionDailyPlanEntity(String uuid,
			String processInstId, DataObject personInfo) {
		logger.info("<<<<<<<<<<流程处理节点>>>>>>>>>>");
		logger.info(uuid + "\t" + processInstId);
		if (StringUtils.isNotBlank(uuid)
				&& StringUtils.isNotBlank(processInstId)) {
			DataObject obj = DataObjectUtil
					.createDataObject("com.cgn.itmp.outlineandplan.annual.ConventionalIslandDailyPlan.PlanEntity");
			obj.set("id", uuid);
			obj.set("processinstid", processInstId);
			obj.set("sqr", personInfo.getString("sqr"));
			obj.set("sqsj", personInfo.getString("sqsj"));
			obj.set("jhry", personInfo.getString("jhry"));
			obj.set("pzry", personInfo.getString("pzry"));
			obj.set("csry", personInfo.getString("csry"));
			obj.set("isdelete", "3");
			DatabaseUtil.updateEntity("default", obj);
		}
	}
	
	/**
	 * 工作流业务逻辑节点 常规岛 日常 计划
	 * 管理员审核 ，直接通过
	 * @param uuid
	 */
	public void adminAuditConventionDailyPlanEntity(String uuid){
		DataObject obj = DataObjectUtil
				.createDataObject("com.cgn.itmp.outlineandplan.annual.ConventionalIslandDailyPlan.PlanEntity");
		obj.set("id", uuid);
		obj.set("isdelete", "4");
		DatabaseUtil.updateEntity("default", obj);
	}
	
	
	/**
	 * 根据流程实例id获取业务id
	 * 
	 * @param processInstId
	 * @return
	 */
	public String queryIdByProcessInstId(String processInstId) {
		DataObject entity = DataObjectUtil
				.createDataObject("com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.PlanEntity");
		entity.setString("processinstid", processInstId);
		DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",
				entity);
		if (datas.length > 0) {
//			System.out.println(datas[0].getString("id"));
			return datas[0].getString("id");
		}
		return "";
	}

	/**
	 * 更新业务表审核人员信息
	 * 
	 * @param personInfo
	 * @param entityName
	 */
	public void modifyAuditData(DataObject personInfo, String entityName) {
		DataObject obj = DataObjectUtil.createDataObject(entityName);
		obj.set("id", personInfo.get("uuid"));
		if (StringUtils.isNotBlank(personInfo.getString("sqr"))) {
			obj.set("sqr", personInfo.getString("sqr"));
		}
		if (StringUtils.isNotBlank(personInfo.getString("sqsj"))) {
			obj.set("sqsj", personInfo.getString("sqsj"));
		}
		if (StringUtils.isNotBlank(personInfo.getString("jhry"))) {
			obj.set("jhry", personInfo.getString("jhry"));
		}
		if (StringUtils.isNotBlank(personInfo.getString("shry"))) {
			obj.set("shry", personInfo.getString("shry"));
		}
		if (StringUtils.isNotBlank(personInfo.getString("pzry"))) {
			obj.set("pzry", personInfo.getString("pzry"));
		}
		if (StringUtils.isNotBlank(personInfo.getString("csry"))) {
			obj.set("csry", personInfo.getString("csry"));
		}
		DatabaseUtil.updateEntity("default", obj);
	}

	/**
	 * 根据流程id获取授权信息
	 * 
	 * @param processInstId
	 * @param entityType
	 * @return
	 */
	public DataObject getSqinfoByProcessInstId(String processInstId,
			String entityType) {
		// 设置默认的流程字段
		if (StringUtil.isEmpty(processInstId) || StringUtil.isEmpty(entityType)) {
			return null;
		}
		// 获取授权信息
		DataObject temp = DataObjectUtil.createDataObject(entityType);
		temp.setString("processinstid", processInstId);
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",
				temp);
		if(data.length == 0){
			return null;
		}
		if (StringUtils.isNotBlank(String.valueOf(data[0].get("sqsj")))) {
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateTime = df.format(new Date());
			data[0].set("sqsj", dateTime);
		}
		return data[0];
	}

	/**
	 * 流程中状态变更
	 * 
	 * @param processInstId
	 * @param entityType
	 * @param isdelete
	 *            0 生效 1删除 3流程中 4作废
	 * @return
	 */
	public void sqsqComplate(String processInstId, String entityType,
			String isdelete) {

		// 设置默认的流程字段
		if (StringUtil.isEmpty(processInstId) || StringUtil.isEmpty(entityType)) {
			return;
		}
		if (StringUtil.isEmpty(isdelete)) {
			isdelete = "0";
		}
		// 获取授权信息
		DataObject entity = DataObjectUtil.createDataObject(entityType);
		entity.setLong("processinstid", Long.parseLong(processInstId));
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",
				entity);
		for (DataObject temp : data) {
			temp.setString("isdelete", isdelete);
			DatabaseExt.updateEntityCascade("default", temp);
		}
	}

	/**
	 * 导出pdf,查询数据
	 * 
	 * @param id
	 * @param entityName
	 * @param childEntityName
	 * @return
	 */
	public String exportPDF(String id, String entityName, String childEntityName) {
		//获取主表数据
		DataObject entity = DataObjectUtil.createDataObject(entityName);
		entity.setString("id", id);
		DataObject[] entityDatas = DatabaseUtil.queryEntitiesByTemplate(
				"default", entity);
		//获取基地
		String base = entityDatas[0].getString("base");
		//获取机组
		String crew = entityDatas[0].getString("crew");
		
		DataObject criteriaType = DataFactory.INSTANCE.create(
				"com.primeton.das.criteria", "criteriaType");
		criteriaType.set("_entity", childEntityName);
		criteriaType.set("_orderby[1]/_property","ndorderno");
		criteriaType.set("_orderby[1]/_sort","asc");
		criteriaType.set("_orderby[2]/_property","orderno");
		criteriaType.set("_orderby[2]/_sort","asc");
		criteriaType.set("_expr[1]/processinstid",id);
		criteriaType.set("_expr[1]/_op","=");
		//获取子表数据
		DataObject childEntity = DataObjectUtil.createDataObject(childEntityName);
		
		
		childEntity.setString("processinstid",id);
		
		DataObject[] childEntityDatas = DatabaseUtil.queryEntitiesByCriteriaEntity(
				"default", criteriaType);
		
		//接收数据集,核岛大修计划
		List<Map<String, Object>> resultList = new ArrayList<Map<String,Object>>();
		if (entityName.equals("com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.PlanEntity")) {
			resultList = getNuclearIslandData(childEntityDatas,base);
		}
		//接收数据集,核岛日常计划
		if (entityName.equals("com.cgn.itmp.outlineandplan.annual.NuclearIslandDaily.PlanEntity")) {
			resultList = getNuclearIslandData(childEntityDatas,base);
		}
		//接收数据集,常规岛大修计划
		if (entityName.equals("com.cgn.itmp.outlineandplan.annual.ConventionalIslandOverhaulPlan.PlanEntity")) {
			resultList = getConventionIsland(childEntityDatas,base);
		}
		//接收数据集,常规岛日常计划
		if (entityName.equals("com.cgn.itmp.outlineandplan.annual.ConventionalIslandDailyPlan.PlanEntity")) {
			resultList = getConventionIsland(childEntityDatas,base);
		}
		String fileName = createPDF(entityDatas[0].getString("ndplan"),resultList,base,crew);
		logger.info("<<<<<<<<<< 导出pdf文档：" + fileName);
		return fileName;
	}

	/**
	 * 常规岛 数据整理，返回子表数据
	 * @param childEntityDatas
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Map<String, Object>> getConventionIsland(DataObject[] childEntityDatas,String base){
		List list1 = new ArrayList();
		List list2 = new ArrayList();
		List list3 = new ArrayList();
		Map<String, Object> map1 = new HashMap<String, Object>();
		
		map1.put("title", "检查项目清单");
		map1.put("header", Arrays.asList("序号","大纲工单","维护计划","任务清单","维护项目","工单号","sap功能位置","检查项目描述","功能位置","轮次","轮次值"));
		map1.put("column", Arrays.asList("workorder","mintenanceplan","mintenanceproject","rwqd","gdh","sapgnwz","checkprojectname","gnwz","lc","lcv"));
		
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("title", "通用");
		map2.put("header", Arrays.asList("序号"," 维护项目","工单号","SAP功能位置","管类","管线号","主要设备"," 材质","公称直径(mm)","外径(mm)"," 名义壁厚(mm)","进口","出口","流程图/等轴图号"," 检查部位/检查内容"," 备注","轮次","轮次值"));
		map2.put("column", Arrays.asList("rwqd","gdh","sapgnwz","gl","gxh","zysb","cz","gczj","wj","mybh","jk","ck","lct","jcbw","bz","lc","lcv"));
		
		Map<String, Object> map3 = new HashMap<String, Object>();
		map3.put("title", "压力管道");
		map3.put("header", Arrays.asList("序号"," 维护项目","工单号","SAP功能位置","管类","管线号","材质","等轴图号","FAC","测厚部位","测厚数量","UT部位","UT数量","备注","轮次","轮次值"));
		map3.put("column", Arrays.asList("rwqd","gdh","sapgnwz","gl","gxh","cz","lct","fac","chbw","chsl","utbw","utsl","bz","lc","lcv"));
		
		for (int i = 0; i < childEntityDatas.length; i++) {
			DataObject dataObject = childEntityDatas[i];
			if (dataObject.getString("ident").equals("检查项目清单")) {
				list1.add(dataObject);
			}else if (dataObject.getString("ident").equals("通用")){
				list2.add(dataObject);
			}else if(dataObject.getString("ident").equals("压力管道")){
				list3.add(dataObject);
			}
		}
		map1.put("data", list1);
		map2.put("data", list2);
		map3.put("data", list3);
		
		List<Map<String, Object>> dataList = new ArrayList<Map<String,Object>>();
		dataList.add(map1);
		dataList.add(map2);
		//红沿河专用
		if(base.equals("82")){
			dataList.add(map3);
		}
		
		return dataList;
	}
	
	/**
	 * 核岛 数据整理，返回每个子表的数据
	 * @param childEntityDatas
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<Map<String, Object>> getNuclearIslandData(DataObject[] childEntityDatas,String base){
		
		List list1 = new ArrayList();
		List list2 = new ArrayList();
		List list3 = new ArrayList();
		List list4 = new ArrayList();
		List list5 = new ArrayList();
		List list6 = new ArrayList();
		List list7 = new ArrayList();
		List list8 = new ArrayList();
		List list9 = new ArrayList();
		List list10 = new ArrayList();
		List list11 = new ArrayList();
		List list12 = new ArrayList();
		List list13 = new ArrayList();
		List list14 = new ArrayList();
		List list15 = new ArrayList();
		
		//存储数据
		Map<String, Object> map1 = new HashMap<String, Object>();
		//配置表格标题
		map1.put("title", "规范法定检查项目清单");
		//配置表头
		map1.put("header", Arrays.asList("序号","大纲工单","维护计划","任务清单","维护项目","工单号","sap功能位置","检查项目描述","功能位置"));
		//配置字段
		map1.put("column", Arrays.asList("workorder","mintenanceplan","mintenanceproject","detailed","gdh","sapgnwz","inspectionscope","seat"));
		
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("title", "规范非法定检查项目清单");
		map2.put("header", Arrays.asList("序号","大纲工单","维护计划","任务清单","维护项目","工单号","sap功能位置","检查项目描述","功能位置"));
		map2.put("column", Arrays.asList("workorder","mintenanceplan","mintenanceproject","detailed","gdh","sapgnwz","inspectionscope","seat"));
		
		Map<String, Object> map3 = new HashMap<String, Object>();
		map3.put("title", "在役检查");
		map3.put("header", Arrays.asList("序号","部件","参考图号","项号","功能位置","检查项目描述","检查方法","参考程序","专用工具","维护项目","工单号","sap功能位置","备注"));
		map3.put("column", Arrays.asList("parts","referencefigureno","itemno","seat","inspectionscope","method","program","tool","detailed","gdh","sapgnwz","remark"));
		
		Map<String, Object> map4= new HashMap<String, Object>();
		map4.put("title", "水压试验");
		map4.put("header", Arrays.asList("序号","部件","参考图号","项号","检查内容/检查范围","流程图号/参考设备图/等轴图号","工作介质","运行压力（Bar）","设计压力（Bar）","试验压力（Bar）","试验部位","试验程序","维护项目","工单号","sap功能位置","备注"));
		map4.put("column", Arrays.asList("parts","referencefigureno","itemno","inspectionscope","mapno","medium","operatingpressure","designpressure","testpressure","site","testprocedure","detailed","gdh","sapgnwz","remark"));
		
		Map<String, Object> map5 = new HashMap<String, Object>();
		map5.put("title", "规范非法定在役检查细化表");
		map5.put("header", Arrays.asList("序号","部件","项号","项目来源","设备名称","功能位置","图号","检查内容/检查部件/检查要求","接近方式","检查方法","执行单位","维护项目","工单号","SAP功能位置","备注"));
		map5.put("column", Arrays.asList("parts","itemno","prosource","equipment","seat","mapno","inspectionscope","approachmode","method","executionunit","detailed","gdh","sapgnwz","remark"));
		
		Map<String, Object> map6 = new HashMap<String, Object>();
		map6.put("title", "专用检查计划-焊缝（管道/支撑）");
		map6.put("header", Arrays.asList("序号","维护项目","工单号","SAP功能位置","检查项目名称","项号","设备","焊缝号","数量","管线号","参考图号/等轴图号","房间号","检查方法","检查程序","备注"));
		map6.put("column", Arrays.asList("detailed","gdh","sapgnwz","inspectionscope","itemno","equipment","hfnumber","number","gxnumber","mapno","roomnumber","method","program","remark"));
		
		Map<String, Object> map7 = new HashMap<String, Object>();
		map7.put("title", "专用检查计划 - 焊缝（BOOS头）");
		map7.put("header", Arrays.asList("序号","维护项目","工单号","SAP功能位置","检查项目名称","项号","系统设备","房间号","类别","等轴图号","管线号","管径(mm)","焊缝号"," 保温","材料","检查方法","检查程序","remark"));
		map7.put("column", Arrays.asList("detailed","gdh","sapgnwz","inspectionscope","itemno","systemdevice","roomnumber","category","ckt_dzhnumber","gxnumber","gj","hfnumber","bw","cl","method","program","备注"));
		
		Map<String, Object> map8 = new HashMap<String, Object>();
		map8.put("title", "专用检查计划 - 支撑/支架");
		map8.put("header", Arrays.asList("序号","维护项目","工单号","SAP功能位置","检查项目名称","项号","支撑号","管线号","参考图号","房间号","检查方法","检查程序","PM周期","PM编码","备注"));
		map8.put("column", Arrays.asList("detailed","gdh","sapgnwz","inspectionscope","itemno","bracenumber","gxnumber","referencefigureno","roomnumber","method","program","pmcycle","pmcode","remark"));
		
		Map<String, Object> map9 = new HashMap<String, Object>();
		map9.put("title", "专用检查计划  - 阀门");
		map9.put("header", Arrays.asList("序号","维护项目","工单号","SAP功能位置","检查项目名称","项号","设备/部件","功能位置","检查部位","接近方式","管线号","等轴图号","房间号","检查方法","检查程序","规范周期","PM周期","PM编码","执行单位","备注"));
		map9.put("column", Arrays.asList("detailed","gdh","sapgnwz","inspectionscope","itemno","equipment","seat","site","approachmode","gxnumber","ckt_dzhnumber","roomnumber","method","program","gfcycle","pmcycle","pmcode","executionunit","remark"));
		
		Map<String, Object> map10 = new HashMap<String, Object>();
		map10.put("title", "专用检查计划 - 容器和热交换器");
		map10.put("header", Arrays.asList("序号","维护项目","工单号","SAP功能位置","检查项目名称","项号","功能位置","设备名称","管壳侧","被检部位","设备图号","检查方法","接近方式","检查程序","备注"));
		map10.put("column", Arrays.asList("detailed","gdh","sapgnwz","inspectionscope","itemno","seat","equipmentname","gxnumber","site","referencefigureno","method","approachmode","program","remark"));

		Map<String, Object> map11 = new HashMap<String, Object>();
		map11.put("title", "专用检查计划 - 传热管");
		map11.put("header", Arrays.asList("序号","维护项目","工单号","SAP功能位置","检查项目名称","项号","设备名称","设备编号","列","行","检查类型","检查方法","检查方法","检查程序","检查周期","备注"));
		map11.put("column", Arrays.asList("detailed","gdh","sapgnwz","inspectionscope","itemno","equipmentname","equipment","columnsint","row","checktype","method","program","jccycle","remark"));
		
		Map<String, Object> map12 = new HashMap<String, Object>();
		map12.put("title", "专用工具清单");
		map12.put("header", Arrays.asList("序号","维护项目","检查项目描述","功能位置","部件","参考图号","项号","接近方式","检查方法","参考程序","专用工具"));
		map12.put("column", Arrays.asList("detailed","inspectionscope","seat","parts","referencefigureno","itemno","approachmode","method","program","tool"));
		
		Map<String, Object> map13 = new HashMap<String, Object>();
		map13.put("title", "参考程序清单");
		map13.put("header", Arrays.asList("序号","维护项目","检查项目描述","功能位置","部件","参考图号","项号","接近方式","检查方法","参考程序"));
		map13.put("column", Arrays.asList("detailed","inspectionscope","seat","parts","referencefigureno","itemno","approachmode","method","program"));
		
		Map<String, Object> map14 = new HashMap<String, Object>();
		map14.put("title", "试验程序清单");
		map14.put("header", Arrays.asList("序号","维护项目","检查项目描述","功能位置","部件","参考图号","项号","接近方式","检查方法","参考程序"));
		map14.put("column", Arrays.asList("detailed","inspectionscope","seat","parts","referencefigureno","itemno","approachmode","method","program"));
		
		Map<String, Object> map15 = new HashMap<String, Object>();
		map15.put("title", "图例");
		
		for (int i = 0; i < childEntityDatas.length; i++) {
			DataObject dataObject = childEntityDatas[i];
			if (dataObject.getString("ident").equals("规范法定检查项目清单")) {
				list1.add(dataObject);
			}else if (dataObject.getString("ident").equals("规范非法定检查项目清单")){
				list2.add(dataObject);
			}else if (dataObject.getString("ident").equals("在役检查")){
				list3.add(dataObject);
			}else if (dataObject.getString("ident").equals("水压试验")){
				list4.add(dataObject);
			}else if (dataObject.getString("ident").equals("规范非法定在役检查细化表")){
				list5.add(dataObject);
			}else if (dataObject.getString("ident").equals("焊缝（管道/支撑）")){
				list6.add(dataObject);
			}else if (dataObject.getString("ident").equals("焊缝（BOOS头）")){
				list7.add(dataObject);
			}else if (dataObject.getString("ident").equals("支撑/支架")){
				list8.add(dataObject);
			}else if (dataObject.getString("ident").equals("阀门")){
				list9.add(dataObject);
			}else if (dataObject.getString("ident").equals("容器和热交换器")){
				list10.add(dataObject);
			}else if (dataObject.getString("ident").equals("传热管")){
				list11.add(dataObject);
			}
			//专用工具清单
			if(StringUtils.isNotBlank(dataObject.getString("tool"))){
				list12.add(dataObject);
			}
			//参考程序
			if(StringUtils.isNotBlank(dataObject.getString("program"))){
				list13.add(dataObject);
			}
			 //试验程序
			if(StringUtils.isNotBlank(dataObject.getString("testprocedure"))){
				list14.add(dataObject);
			}
			//图例
			if(StringUtils.isNotBlank(dataObject.getString("referencefigureno"))){
				if(!list15.contains(dataObject.getString("referencefigureno"))){
					list15.add(dataObject.getString("referencefigureno"));
				}
			}
		}
		List<Map<String, Object>> dataList = new ArrayList<Map<String,Object>>();
		map1.put("data", list1);
		map2.put("data", list2);
		map3.put("data", list3);
		map4.put("data", list4);
		map5.put("data", list5);
		map6.put("data", list6);
		map7.put("data", list7);
		map8.put("data", list8);
		map9.put("data", list9);
		map10.put("data", list10);
		map11.put("data", list11);
		map12.put("data", list12);
		map13.put("data", list13);
		map14.put("data", list14);
		map15.put("data", list15);
		dataList.add(map1);
		dataList.add(map2);
		dataList.add(map3);
		dataList.add(map4);
		dataList.add(map5);
		dataList.add(map6);
		dataList.add(map7);
		dataList.add(map8);
		dataList.add(map9);
		//台山专用
		if(base.equals("86")){
			dataList.add(map10);
		}
		dataList.add(map11);
		dataList.add(map12);
		dataList.add(map13);
		dataList.add(map14);
		dataList.add(map15);
		return dataList;
	}
	
	/**
	 * 创建pdf文件
	 * @param planName
	 * @param resultList
	 * @param base
	 * @param crew
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String createPDF(String planName, List<Map<String, Object>> resultList,String base,String crew) {
		String filePath = ApplicationContext.getInstance().getWarRealPath()+ "tempFile";
		// 输出文档路径及名称
		File outFile = new File(filePath);
		if (!outFile.exists()) {
			outFile.mkdirs();
		}
		String fileName = "";
		try {
			fileName = planName + System.currentTimeMillis() + ".pdf";
			String templateDir = filePath + File.separator + fileName;
			// 定义文档对象
			Document document = new Document();
			//文档横向展示
	        Rectangle pageSize = new Rectangle(PageSize.A4.getHeight(), PageSize.A4.getWidth());
	        pageSize.rotate();
	        document.setPageSize(pageSize);
			// 输出文档
			PdfWriter writer = PdfWriter.getInstance(document,
					new FileOutputStream(templateDir));
			// 开启文档
			document.open();
	        //创建字体
	        BaseFont font = BaseFont.createFont(ApplicationContext.getInstance().getWarRealPath()+"/font/simsun.ttf", BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED);
			Font fontChinese = new Font(font,10); 
			Font titleChinese = new Font(font,20,Font.BOLD);
			
			//正文标题
			Paragraph par = new Paragraph(planName, titleChinese);
            par.setAlignment(Element.ALIGN_CENTER);
            document.add(par);
            // 每行加空白
            par = new Paragraph(" ", titleChinese);
            par.setAlignment(Element.ALIGN_LEFT);
            document.add(par);

			//创建表格对象，展示数据
			for (Map<String, Object> map : resultList) {
				String title = String.valueOf(map.get("title"));
				List dataList = (List) map.get("data");
				List headerList = (List) map.get("header");
				List columnList = (List) map.get("column");
				// 创建表格对象
				PdfPTable table = new PdfPTable(headerList == null?1:headerList.size());
				//上边距
				table.setSpacingBefore(10);
				// 设置表格宽度比例为%100
				table.setWidthPercentage(100);
				// 防止单元格内容过长自动换到下一页，避免空白部分
				table.setSplitLate(false);
				//设置表格标题
				PdfPCell titleCell = new PdfPCell(new Paragraph(title,fontChinese));
				titleCell.setColspan(headerList == null?1:headerList.size());
				//垂直居中
				titleCell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				//最小高度
				titleCell.setMinimumHeight(20);
				table.addCell(titleCell);
				
				if (dataList.size() == 0) {
					PdfPCell emptyCell = new PdfPCell(new Paragraph("暂无数据!",fontChinese));
					emptyCell.setColspan(headerList == null?1:headerList.size());
					table.addCell(emptyCell);
				}else{
					if(title.equals("图例")){
						String[] legendName = new String[dataList.size()];
						dataList.toArray(legendName);
						DataObject[] objs = getLegends(legendName, base, crew);
						if(objs.length > 0){
							PdfPTable imgTable = new PdfPTable(4);
							Integer emptyCell = 4 - (objs.length%4==0?4:objs.length%4);
							for (int i = 0; i < objs.length; i++) {
								DataObject dataObject = objs[i];
								
								//插入图例
								String file = dataObject.getString("fildid");
								//从ftp服务器上获取对应文件
						        FtpUploadUtil.retrieveFile(new FileOutputStream(file), file);
								float scalePercentage = (72 / 300f) * 100.0f;
								Image image = Image.getInstance(file);
					            image.scalePercent(scalePercentage, scalePercentage);
					            image.setAlignment(Element.ALIGN_CENTER);
					            // 将图片1添加到pdf文件中
					            imgTable.addCell(image);
							}
							for (int i = 0; i < emptyCell; i++) {
								imgTable.addCell("");
							}
							table.addCell(imgTable);
						}
					}else{
						//设置表头
						for(Object header: headerList){
							PdfPCell c1 = new PdfPCell(new Paragraph(String.valueOf(header),fontChinese));
							//水平居中
							c1.setHorizontalAlignment(Element.ALIGN_CENTER);
							//垂直居中
							c1.setVerticalAlignment(Element.ALIGN_MIDDLE);
							//最小高度
							c1.setMinimumHeight(20);
							table.addCell(c1);
						}
						//数据区
						for (int i = 0; i < dataList.size(); i++) {
							DataObject obj = (DataObject) dataList.get(i);
							PdfPCell indexCell = new PdfPCell(new Paragraph((i+1)+""));
							indexCell.setHorizontalAlignment(Element.ALIGN_CENTER);
							indexCell.setVerticalAlignment(Element.ALIGN_MIDDLE);
							table.addCell(indexCell);
							for(Object column : columnList){
								table.addCell(new PdfPCell(new Paragraph(obj.getString(String.valueOf(column)),fontChinese)));
							}
						}
					}
				}
				document.add(table);
			}

			// 文档关闭
			document.close();
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "tempFile"+File.separator+fileName;
	}

	/**
	 * 获取图例预览id
	 * @param legendName
	 * @param jdid
	 * @param jzid
	 * @return
	 */
	public DataObject[] getLegends(String[] legendName,String jdid,String jzid){
		List<String> legendNameList = Arrays.asList(legendName);
		List<DataObject> resList = new ArrayList<DataObject>();
		DataObject entity = DataObjectUtil.createDataObject("com.cgn.itmp.outlineandplan.base.legendManagement.LEGEND");
		entity.set("jd", jdid);
		entity.set("jzid", jzid);
		DataObject[] objs = DatabaseUtil.queryEntitiesByTemplate("default", entity);
		for (int i = 0; i < objs.length; i++) {
			DataObject dataObject = objs[i];
			if (legendNameList.contains(dataObject.getString("cktlbh")) && StringUtils.isNotBlank(dataObject.getString("fildid")) && checkImg(dataObject.getString("fildid"))) {
				resList.add(dataObject);
			}
		}
		DataObject[] result = new DataObject[resList.size()];
		return resList.toArray(result);
	}
	
	/**
	 * 判断文件格式，返回图片
	 * @param name
	 * @return
	 */
	public boolean checkImg(String name){
		if (name.endsWith(".gif") || name.endsWith(".GIF")
				|| name.endsWith(".jpg") || name.endsWith(".JPG")
				|| name.endsWith(".png") || name.endsWith(".PNG")) {
			return true;
		}
		return false;
	}
	
	
}
