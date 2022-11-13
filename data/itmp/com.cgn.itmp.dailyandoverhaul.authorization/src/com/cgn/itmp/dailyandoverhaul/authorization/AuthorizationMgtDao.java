/**
 * 
 */
package com.cgn.itmp.dailyandoverhaul.authorization;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;











import net.sf.json.JSONObject;

import org.apache.commons.lang.ObjectUtils;

import cn.com.cgnpc.aep.bizcenter.appcenter.sdk.client.RestClient;
import cn.com.cgnpc.aep.bizcenter.appcenter.sdk.result.ApiResult;

import com.cgn.components.coframe.mail.EmailMessage;
import com.cgn.components.util.ConfigurationUtil;
import com.cgn.components.util.NotificationCenterBean;
import com.cgn.components.util.NotificationCenterBean.SendMailTask;
import com.cgn.itmp.basecommon.StringUtil;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 授权管理
 * Description: 授权管理增删改查
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */

public class AuthorizationMgtDao extends DASDaoSupport {

	/**
	 * 
	 */
	public AuthorizationMgtDao() {
		// TODO 自动生成的构造函数存根
	}
	/**
	 * 新增修改
	 * @param data 数据
	 */
	public void addOrEdit(DataObject data){
		if(data == null) return;
			String op = data.getString("_state");
			DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt", false);
			if("added".equals(op)){  //新增
				temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				temp.setString("addtime",sdf.format(new Date()));
				DatabaseExt.insertEntityCascade("default", temp);
			}else if("modified".equals(op)){ //修改
				DatabaseExt.updateEntityCascade("default", temp);
		}
	}
	/**
	 * 身份证查询
	 * @return
	 */
	
	
	public  DataObject[] getIdnumberInfo(){
		String sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getAuthNumber";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, null);
	}
	
	/**
	 * 关键字查询人员信息及授权信息
	 * @param keyWord
	 * @param JD
	 * @param type
	 * @return
	 */
	public  DataObject[] getInfoByKeyWord(String keyWord,String JD,String type) {
		HashMap<String, String> map =  new HashMap<String, String>();
		if("empN".equals(type)){
			map.put("EMPNUBMER", keyWord);
		}else if("idN".equals(type)){
			map.put("IDNUMBER", keyWord);
		}
		if(!StringUtil.isEmpty(JD)){
			map.put("JD", JD);
		}
		String sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getInfoByKeyWord";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
	}
	
	
	/**
	 * 申请流程第一步，保存数据
	 * @param id
	 * @param pid
	 */
	public void applyProStep1(DataObject data) {
		DataObject sqApply  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt", false);
		sqApply.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
		DatabaseExt.insertEntityCascade("default", sqApply);
	}
	
	/**
	 * 授权撤销暂停恢复流程第一步
	 */
	public void processStartCXTZHF(DataObject data){
		//给源数据绑定ProcessInsId
		String sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.bindProcessInstIdAndData";
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("uuid", data.getString("doUUid"));
		map.put("processInstId", data.getString("processInstId"));
	    getDASTemplate().executeNamedSql(sql, map);
	    
	    DataObject proData =  DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.ZZSQ_Pro", false);
	    DatabaseExt.insertEntityCascade("default", proData); 
	}
	
	
	/**
	 * 授权撤销暂停恢复流程第一步
	 */
	public DataObject[] queryCXTZHF(String processInstId){
		DataObject  data = DataObjectUtil.createDataObject("com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.ZZSQ_Pro");
		data.setLong("processInstId", Long.parseLong(processInstId));
		return DatabaseUtil.queryEntitiesByTemplate("default", data);
	}
	
	
	/**
	 * 授权撤销暂停恢复流程最后一步
	 */
	public void processEndCXTZHF(DataObject data){
		String type = data.getString("type");
		
		String sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.processWriteZT";
		
		if("cx".equals(type)){
			type = "YCX";
		}else if("zt".equals(type)){
			type = "YZT";
		}else if("hf".equals(type)){
			type = "ZC";
		}
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("zt", type);
		map.put("processInstId", data.getString("processInstId"));
	    getDASTemplate().executeNamedSql(sql, map);
	    
		DataObject proData =  DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.ZZSQ_Pro", false);
		proData.setString("finish", "1");
	    DatabaseUtil.updateEntity("default", proData);

	     
	}

	/**
	 * 保存授权信息
	 * @param processInstId 流程id
	 * @param baseInfo 基本信息
	 * @param sqInfo  授权信息
	 * @param workInfo 工作信息
	 * @param personInfo 审核人员相关信息
	 */
	public void saveSqInfo(String processInstId,DataObject baseInfo,DataObject[] sqInfo,DataObject [] workInfo,DataObject personInfo){
		 if(StringUtil.isEmpty(processInstId) || baseInfo == null){
			 return;
		 }
		//拆分授权信息并保存
		if(sqInfo != null && sqInfo.length > 0){
			 for(int i=0;i<sqInfo.length;i++){
				 DataObject sqEntity = sqInfo[i];
				
				 DataObject baseEntity  = DataObjectUtil.convertDataObject(baseInfo, "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt", false);
				 boolean modifyFlag = true;//默认为修改
				 String uuid = sqEntity.getString("uuid");
				 if(StringUtil.isEmpty(uuid)){
					  uuid = UUID.randomUUID().toString().replaceAll("-", "");
					  modifyFlag = false;//新增数据
				 }
				 String date = sqEntity.getString("sqyxq");
				 if(!StringHelper.isEmpty(date)){
					 String sqyxq = date.split("T")[0];
					 baseEntity.setString("sqyxq", sqyxq);
				 }
				 baseEntity.setString("uuid", uuid);
				 baseEntity.setString("sqlx", sqEntity.getString("sqlx"));
				 baseEntity.setString("sqfwhdj", sqEntity.getString("sqfwhdj"));
				 baseEntity.setString("bz", sqEntity.getString("bz"));
				 baseEntity.setString("zmwj", sqEntity.getString("zmwj"));
				 baseEntity.setString("fildid", sqEntity.getString("fildid"));
				 if(modifyFlag){//修改
					 DatabaseExt.updateEntityCascade("default", baseEntity);
				 }else{//新增
					 DatabaseExt.insertEntityCascade("default", baseEntity);
				 }
				
			 }
		}else{
			 DataObject baseEntity  = DataObjectUtil.convertDataObject(baseInfo, "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt", false);
			 boolean modifyFlag = true;//默认为修改
			 String uuid = baseEntity.getString("uuid");
			 if(StringUtil.isEmpty(uuid)){
				  uuid = UUID.randomUUID().toString().replaceAll("-", "");
				  modifyFlag = false;//新增数据
			 }
			 if(modifyFlag){//修改
				 DatabaseExt.updateEntityCascade("default", baseEntity);
			 }else{//新增
				 baseEntity.setString("uuid", uuid);
				 DatabaseExt.insertEntityCascade("default", baseEntity);
			 }
		}
		//保存工作信息
		if(workInfo != null && workInfo.length > 0){
			for(int i=0;i<workInfo.length;i++){
				 DataObject workEntity  = DataObjectUtil.convertDataObject(workInfo[i], "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.SqglWorkInfo", false);
				 boolean modifyFlag = true;//默认为修改
				 String uuid = workEntity.getString("id");
				 if(StringUtil.isEmpty(uuid)){
					  modifyFlag = false;//新增数据
				 }
				
				 workEntity.setString("processInstId", processInstId);
				 workEntity.setString("idnumber", baseInfo.getString("idnumber"));
				 if(modifyFlag){//修改
					 DatabaseExt.updateEntityCascade("default", workEntity);
				 }else{//新增
					 DatabaseExt.insertEntityCascade("default", workEntity);
				 }
			}
		}
		//保存审核人员相关信息
		if(personInfo != null){
			 DataObject personEntity  = DataObjectUtil.convertDataObject(personInfo, "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.PERSON_INFO", false);
			
			 DatabaseExt.insertEntityCascade("default", personEntity);
		}
	}
	
	/**
	 * 授权申请流程结束
	 * @param processInstId
	 * @param entityType
	 * @param isdelete 0 生效 1删除 3流程中 4作废
	 * @return
	 */
	public void sqsqComplate(String processInstId,String entityType,String isdelete){
		//设置默认的流程字段
		if(StringUtil.isEmpty(processInstId) || StringUtil.isEmpty(entityType)){
			return;
		}
		if(StringUtil.isEmpty(isdelete)){
			isdelete = "0";
		}
		//获取授权信息
		DataObject entity = DataObjectUtil.createDataObject(entityType);
		entity.setLong("processInstId", Long.parseLong(processInstId));
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",entity);
		for(DataObject temp : data){
			temp.setString("isdelete", isdelete);
			DatabaseExt.updateEntityCascade("default", temp);
			
		}
	}
	
	/**
	 * 根据流程id获取授权信息
	 * @param processInstId
	 * @param entityType
	 * @return
	 */
	public DataObject getSqinfoByProcessInstId(String processInstId,String entityType){
		//设置默认的流程字段
		if(StringUtil.isEmpty(processInstId) || StringUtil.isEmpty(entityType)){
			return null;
		}
		//获取授权信息
		DataObject temp = DataObjectUtil.createDataObject(entityType);
		temp.setLong("processInstId", Long.parseLong(processInstId));
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",temp);
	
		return data[0];
	}
	
	/**
	 * 管理员授权撤销暂停恢复流程最后一步
	 */
	public void processAdminEndCXTZHF(DataObject data){
		String type = data.getString("type");
		
		String sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.processAdminWriteZT";
		
		if("cx".equals(type)){
			type = "YCX";
		}else if("zt".equals(type)){
			type = "YZT";
		}else if("hf".equals(type)){
			type = "ZC";
		}
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("zt", type);
		map.put("uuid", data.getString("doUUid"));
	    getDASTemplate().executeNamedSql(sql, map); 
	}
	
	/**
	 * 审查查询的方法
	 */
	public DataObject[] queryTDxglZzsqglSqls(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(DataObject.class, dasCriteria, pageCond);
	}
	/**
	 * 审查查询数据（含分页）
	 * @param criteriaType
	 * @param pageCond
	 * @return
	 */
	public DataObject[] queryPageTDxglZzsqglSqls(DataObject parameter,PageCond pageCond){
		String code=parameter.getString("code");
		//条件
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("name",parameter.get("name"));
		map.put("empnumber",parameter.get("empnumber"));
		map.put("jd",parameter.get("jd"));
		map.put("idnubmer",parameter.get("idnubmer"));
		map.put("already",parameter.get("already"));
		String idnumbers=ObjectUtils.toString(parameter.get("idnumbers"), "");
	if(!idnumbers.equals("")){
			String [] s=parameter.getString("idnumbers").split(",");
			map.put("idnumbers",s);	
		}
	String already=ObjectUtils.toString(parameter.get("already"), "");
	if(!already.equals("")){
		String [] s=parameter.getString("already").split(",");
		map.put("already",s);	
	}
		
		
		//查询方法
		String sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getAutpagedata";
		if(code.equals("Ndt")){
			map.put("gzdw",parameter.get("gzdw"));
			map.put("zzlx",parameter.get("zzlx"));
			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getNdtpagedata";
		}else if(code.equals("Pro")){
			map.put("sydx",parameter.get("sydx"));
			map.put("yzxm",parameter.get("yzxm"));
			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getPropagedata";
		}else if(code.equals("Vis")){
			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getVispagedata";
			
		}else if(code.equals("Welder")){
			sql="com.cgn.itmp.weldingmanagement.Welder.impl.weldersql.getwelderpagedata";
			map.put("company",parameter.get("company"));
		}else if(code.equals("Mac")){
			sql="com.cgn.itmp.weldingmanagement.Machine.impl.machine.getMachinepagedata";
			map.put("state",parameter.get("state"));
			map.put("number",parameter.get("number"));
		}else if(code.equals("program")){
			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getProgramdata";
			map.put("cxbm",parameter.get("cxbm"));
			map.put("status",parameter.get("status"));
			map.put("xcsbsj",parameter.get("xcsbsj"));
			map.put("jz",parameter.get("jz"));
		}else{
			map.put("sqlx",parameter.get("sqlx"));
		}
		
		
		//查询出数据
		DataObject[] data=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
//		//分页总数据sql
//		sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getAutdatacount";
//		if(code.equals("Ndt")){
//			map.put("gzdw",parameter.get("gzdw"));
//			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getNdtdatacount";
//		}else if(code.equals("Pro")){
//			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getProdatacount";
//		}else if(code.equals("Vis")){
//			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getVisdatacount";
//		}else if(code.equals("Welder")){
//			sql="com.cgn.itmp.weldingmanagement.Welder.impl.weldersql.getwelderdatacount";
//			
//		}else{
//			map.put("sqlx",parameter.get("sqlx"));
//		}
//		DataObject[] data2=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
//		//获取总数
//		int i=Integer.parseInt(data2[0].get("count").toString());
//		//添加在分页对象中
//		pageCond.set("count",i);
		return data;
	}
	
	/**
	 * 管理员保存授权信息
	 * @param baseInfo 基本信息
	 * @param sqInfo  授权信息
	 * @param workInfo 工作信息
	 */
	public void saveAdminSqInfo(DataObject baseInfo,DataObject[] sqInfo,DataObject [] workInfo){
		//拆分授权信息并保存
		if(sqInfo != null && sqInfo.length > 0){
			 for(int i=0;i<sqInfo.length;i++){
				 DataObject sqEntity = sqInfo[i];
				
				 DataObject baseEntity  = DataObjectUtil.convertDataObject(baseInfo, "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt", false);
				 boolean modifyFlag = true;//默认为修改
				 String uuid = sqEntity.getString("uuid");
				 if(StringUtil.isEmpty(uuid)){
					  uuid = UUID.randomUUID().toString().replaceAll("-", "");
					  modifyFlag = false;//新增数据
				 }
				 String date = sqEntity.getString("sqyxq");
				 if(!StringHelper.isEmpty(date)){
					 String sqyxq = date.split("T")[0];
					 baseEntity.setString("sqyxq", sqyxq);
				 }
				 baseEntity.setString("uuid", uuid);
				 baseEntity.setString("sqlx", sqEntity.getString("sqlx"));
				 baseEntity.setString("sqfwhdj", sqEntity.getString("sqfwhdj"));
				 baseEntity.setString("bz", sqEntity.getString("bz"));
				 baseEntity.setString("zmwj", sqEntity.getString("zmwj"));
				 baseEntity.setString("fildid", sqEntity.getString("fildid"));
				 if(modifyFlag){//修改
					 DatabaseExt.updateEntityCascade("default", baseEntity);
				 }else{//新增
					 DatabaseExt.insertEntityCascade("default", baseEntity);
				 }
				
			 }
		}else{
			 DataObject baseEntity  = DataObjectUtil.convertDataObject(baseInfo, "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt", false);
			 boolean modifyFlag = true;//默认为修改
			 String uuid = baseEntity.getString("uuid");
			 if(StringUtil.isEmpty(uuid)){
				  uuid = UUID.randomUUID().toString().replaceAll("-", "");
				  modifyFlag = false;//新增数据
			 }
			 if(modifyFlag){//修改
				 DatabaseExt.updateEntityCascade("default", baseEntity);
			 }else{//新增
				 baseEntity.setString("uuid", uuid);
				 DatabaseExt.insertEntityCascade("default", baseEntity);
			 }
		}
		//保存工作信息
		if(workInfo != null && workInfo.length > 0){
			for(int i=0;i<workInfo.length;i++){
				 DataObject workEntity  = DataObjectUtil.convertDataObject(workInfo[i], "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.SqglWorkInfo", false);
				 boolean modifyFlag = true;//默认为修改
				 String uuid = workEntity.getString("id");
				 if(StringUtil.isEmpty(uuid)){
					  modifyFlag = false;//新增数据
				 }
				 workEntity.setString("idnumber", baseInfo.getString("idnumber"));
				 if(modifyFlag){//修改
					 DatabaseExt.updateEntityCascade("default", workEntity);
				 }else{//新增
					 DatabaseExt.insertEntityCascade("default", workEntity);
				 }
			}
		}
	}
	
	
	
	/**
	 * 添加审查记录方法
	 * @param ids
	 * @param check
	 * @param user
	 * swh
	 */
	public void addexamine(DataObject[] ids,DataObject check,String user,String submittype){
		
		DataObject[] Relations=new DataObject[ids.length];
		String relationType=check.getString("relationType");
		String uuid=UUID.randomUUID().toString().replaceAll("-","");
		if(submittype.equals("add")){
			//审查表里的数据
			DataObject examine=DataObjectUtil.createDataObject("com.cgn.itmp.dailyandoverhaul.authorization.Common.Examine");
			relationType=check.getString("relationType");
			uuid=UUID.randomUUID().toString().replaceAll("-","");
			examine.set("uuid",uuid);
			examine.set("relationType",relationType);
			examine.set("examinetime",new Date());
			examine.set("createtime",new Date());
			examine.set("examiner",user);
			examine.set("jd",check.get("jd"));
			examine.set("title",check.get("title"));
			examine.set("round",check.get("round"));
			DatabaseUtil.insertEntity("default",examine);
		}else{
			uuid=check.get("id").toString();
			Map<String,Object> param=new HashMap<String,Object>();
			String [] checkids=new String[1];
			checkids[0]=uuid;
			param.put("checkids",checkids);
			getDASTemplate().executeNamedSql("com.cgn.itmp.dailyandoverhaul.authorization.authorization.deleterelation", param);
		}
		//循环添加审查表关联数据
		for(int i=0;i<ids.length;i++){
			DataObject relation=DataObjectUtil.createDataObject("com.cgn.itmp.dailyandoverhaul.authorization.Common.Relation");
			relation.set("uuid",UUID.randomUUID().toString().replaceAll("-",""));
			relation.setString("relationType",relationType);
			relation.setString("checkid",uuid);
			relation.setString("number",ids[i].getString("uuid"));
			relation.setString("remark",ids[i].getString("remark"));
			relation.setString("result",ids[i].getString("result"));
			Relations[i]=relation;
		}
		
		DatabaseUtil.insertEntityBatch("default",Relations);
	}
	
	/**
	 *	审查详情
	 * @param id 审查id
	 * @param relationType 审查记录类型
	 * @param jd 基地
	 * swh
	 */
	public DataObject[] queryList(String id,String relationType,String jd,String result){
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("checkid",id);
		if(!id.equals("")){
			String [] s=id.split(",");
			map.put("checkid",s);	
		}
		map.put("relationType",relationType);
		map.put("jd",jd);
		map.put("result",result);
		String sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.queryautList";
		if(relationType.equals("Ndt")){
			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.queryNdtList";
		}else if(relationType.equals("Pro")){
			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.queryProList";
		}else if(relationType.equals("Welder")){
			sql="com.cgn.itmp.weldingmanagement.Welder.impl.weldersql.getwelderdata";
		}
		//查询出数据
		DataObject[] data=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		return data;
	}
	
	
	/**
	 * 修改
	 * @param ids
	 * @param check
	 * @param user
	 * swh
	 */
	public void updateexmine(String entityname,DataObject[] data,String type,String deleteperson){
		DataObject[] real=new DataObject[data.length];
		Map<String,Object> param=new HashMap<String,Object>();
		String[] checkids=new String[data.length];
		
		
		for(int i=0;i<data.length;i++){
			DataObject obj  = DataObjectUtil.convertDataObject(data[i],entityname, false);
//			DataObject obj=DataObjectUtil.createDataObject(entityname);
			if(type.equals("updatedel")){
				obj.set("uuid",data[i].get("uuid").toString());
				obj.set("isdelete","1");
				SimpleDateFormat date=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
				obj.set("deletetime",date.format(new Date()));
				obj.set("deleteperson",deleteperson);
				data[i]=obj;
			}else if(type.equals("recovery")){
				obj.set("isdelete","0");
				obj.set("uuid",data[i].get("uuid").toString());
				obj.set("deletetime",null);
				obj.set("deleteperson",null);
				data[i]=obj;
			}
			checkids[i]=data[i].get("uuid").toString();
			real[i]=obj;
			
		}
		if(type.equals("delete")){
			param.put("checkids",checkids);
			DatabaseUtil.deleteEntityBatch("default",real);	
			getDASTemplate().executeNamedSql("com.cgn.itmp.dailyandoverhaul.authorization.authorization.deleterelation", param);
		}else{
			DatabaseUtil.updateEntityBatch("default",real);	
		}
		
	}
	
	
	/**
	 * 添加到期提醒
	 * @param ids
	 * @param check
	 * @param user
	 * swh
	 */
	public void addreminder(DataObject[] ids,DataObject check,String user,String submittype){
		DataObject[] Relations=new DataObject[ids.length];
		String relationType=check.getString("relationType");
		String uuid=UUID.randomUUID().toString().replaceAll("-","");
		if(submittype.equals("add")){
			//审查表里的数据
			DataObject examine=DataObjectUtil.createDataObject("com.cgn.itmp.dailyandoverhaul.authorization.Common.Reminder");
			relationType=check.getString("relationType");
			uuid=UUID.randomUUID().toString().replaceAll("-","");
			examine.set("uuid",uuid);
			examine.set("title",check.getString("title"));
			examine.set("originator",user);
			examine.set("initiationtime",new Date());
			examine.set("state","1");
			examine.set("advanceday",check.getString("advanceday"));
			examine.set("remindertime",check.getString("remindertime"));
			examine.set("duration",check.getString("duration"));
			examine.set("isdelete",0);
			examine.set("reminder",check.getString("reminder"));
			examine.set("remindertext",check.getString("remindertext"));
			examine.set("relationtype",relationType);
			examine.set("jd",check.get("jd"));
			DatabaseUtil.insertEntity("default",examine);
		}else{
			uuid=check.get("id").toString();
			DataObject examine=DataObjectUtil.createDataObject("com.cgn.itmp.dailyandoverhaul.authorization.Common.Reminder");
			examine.set("uuid",uuid);
			examine.set("title",check.getString("title"));
			examine.set("reminder",check.getString("reminder"));
			examine.set("remindertime",check.getString("remindertime"));
			examine.set("remindertext",check.getString("remindertext"));
			examine.set("advanceday",check.getString("advanceday"));
			examine.set("duration",check.getString("duration"));
			DatabaseUtil.updateEntity("default",examine);
			Map<String,Object> param=new HashMap<String,Object>();
			String [] checkids=new String[1];
			checkids[0]=uuid;
			param.put("checkids",checkids);
			getDASTemplate().executeNamedSql("com.cgn.itmp.dailyandoverhaul.authorization.authorization.deleterelation", param);
		}
		//循环添加审查表关联数据
		for(int i=0;i<ids.length;i++){
			DataObject relation=DataObjectUtil.createDataObject("com.cgn.itmp.dailyandoverhaul.authorization.Common.Relation");
			relation.set("uuid",UUID.randomUUID().toString().replaceAll("-",""));
			relation.setString("relationType",relationType);
			relation.setString("checkid",uuid);
			if(relationType.equals("Welder")){
				relation.setString("number",ids[i].getString("uuid"));	
			}else if(relationType.equals("program")){
				relation.setString("number",ids[i].getString("UUID"));	
			}else{
				relation.setString("number",ids[i].getString("uuid"));
			}
			
			relation.setString("remark","");
			relation.setString("result","");
			Relations[i]=relation;
		}
		DatabaseUtil.insertEntityBatch("default",Relations);
	}
	/**
	 *	到期提醒详情
	 * @param id 到期提醒id
	 * @param relationType 到期提醒类型
	 * @param jd 基地
	 * swh
	 */
	public DataObject[] queryRemList(String id,String relationType,String jd,String jz){
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("checkid",id);
		map.put("jz",jz);
		map.put("relationType",relationType);
		map.put("jd",jd);
		String sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.queryRemautList";
		if(relationType.equals("Ndt")){
			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.queryRemNdtList";
		}else if(relationType.equals("Pro")){
			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.queryRemProList";
		}else if(relationType.equals("Welder")){
			sql="com.cgn.itmp.weldingmanagement.Welder.impl.weldersql.getwelderdata";
		}else if(relationType.equals("Mac")){
			sql="com.cgn.itmp.weldingmanagement.Machine.impl.machine.queryMachineList";
			
		}else if(relationType.equals("program")){
			
			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.queryprogramList";
			
		}
		//查询出数据
		DataObject[] data=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		return data;
	}
	
	/**
	 *	到期提醒详情
	 * @param id 到期提醒id
	 * @param relationType 到期提醒类型
	 * @param jd 基地
	 * swh
	 */
	public DataObject[] queryeverdayEmaildata(Map<String,Object> map){
		String relationType=map.get("relationtype").toString();
		String sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.queryRemautListdic";
		if(relationType.equals("Ndt")){
			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.queryRemNdtListdic";
		}else if(relationType.equals("Pro")){
			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.queryRemProListdic";
		}else if(relationType.equals("Welder")){
			sql="com.cgn.itmp.weldingmanagement.Welder.impl.weldersql.getwelderdatadic";
		}else if(relationType.equals("Mac")){
			sql="com.cgn.itmp.weldingmanagement.Machine.impl.machine.queryMachineListdic";
			
		}else if(relationType.equals("program")){
			sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.queryprogramList";
			
		}
		//查询出数据
		DataObject[] data=getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		return data;
	}
	//每日发送邮件代码
	public void everdayEmail(){
		System.out.println("发送邮件。。。。");
		String sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.everdayEamil";
		DataObject[] result=getDASTemplate().queryByNamedSql(DataObject.class, sql, "");
		String relationType="";
		//创建邮件
//		List<EmailMessage> emails=new ArrayList<EmailMessage>();
		RestClient re = new RestClient();
		Email mail = new Email();

//		mail.setBody("Test Email!");
//		mail.setCc("");
//		mail.setTo("P164275");
//		mail.setSubject("test");
		
		
		for(DataObject obj:result){
			//邮件对象
			//对于表数据进行编辑
			Map<String,Object> map=new HashMap();
			String datasql="";
			map.put("checkid",obj.getString("uuid"));
			map.put("jd",obj.getString("jd"));
			map.put("relationtype",obj.getString("relationtype"));
			map.put("advanceday", obj.getInt("advanceday"));
			map.put("duration", obj.getInt("duration"));
			relationType=obj.getString("relationtype");
			DataObject[] data=queryeverdayEmaildata(map);
//			DataObject[] data=getDASTemplate().queryByNamedSql(DataObject.class, datasql,map);
			String table="";
			if(data.length>0){
				table="<DIV style='BORDER: 1px solid black ;MARGIN:10px;PADDING:20px 15px 40px 15px'><p  style='FONT-FAMILY: Microsoft YaHei;'>尊敬的   "+obj.getString("remindertext")+"，"+
						"您好：<br /><SPAN style='FONT-WEIGHT: bold'>（在役检查技术管理平台）</span>提醒您，";
				if(relationType.equals("aut")){
					table+="有以下人员授权有效日期即将到期，请及时督促更新处理。"+
							"<a  style='FONT-FAMILY: Microsoft YaHei;' href='http://itmp.cgnpc.com.cn/itmp'>请点击这里处理。</a></p>"	;
					table+="<table style='FONT-SIZE: 10px;WIDTH: 80%; border:1px solid black;FONT-FAMILY: Microsoft YaHei;BORDER-COLLAPSE: collapse;'cellSpacing=0 cellPadding=0 width=600 align=center border=1><tr style='BACKGROUND-COLOR: skyblue' border='1'><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>姓名</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>性别</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>员工号</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>身份证号</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>学历</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>职称</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>专业领域</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>授权类型</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>授权范围和等级</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>有效期</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>状态</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>备注</th></tr>";		
				}else if(relationType.equals("Ndt")){
					table+="有以下人员无损检测资质有效日期即将到期，请及时督促更新。"+
							"<a  style='FONT-FAMILY: Microsoft YaHei;' href='http://itmp.cgnpc.com.cn/itmp'>请点击这里处理。</a></p>"	;
					table+="<table style='FONT-SIZE: 10px;WIDTH: 80%; border:1px solid black;FONT-FAMILY: Microsoft YaHei;BORDER-COLLAPSE: collapse;'cellSpacing=0 cellPadding=0 width=600 align=center border=1><tr style='BACKGROUND-COLOR: skyblue' border='1'><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>姓名</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>性别</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>员工号</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>身份证号</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>资质类型</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>等级</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>证书编号</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>工作单位</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>有效期至</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>状态</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>备注</th></tr>";		
				}else if(relationType.equals("Pro")){
					table+="有以下人员特殊验证项目有效日期即将到期，请及时督促更新处理。"+
							"<a  style='FONT-FAMILY: Microsoft YaHei;' href='http://itmp.cgnpc.com.cn/itmp'>请点击这里处理。</a></p>"	;
					table+="<table style='FONT-SIZE: 10px;WIDTH: 80%; border:1px solid black;FONT-FAMILY: Microsoft YaHei;BORDER-COLLAPSE: collapse;'cellSpacing=0 cellPadding=0 width=600 align=center border=1><tr style='BACKGROUND-COLOR: skyblue' border='1'><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>姓名</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>性别</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>员工号</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>身份证号</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>适用堆型</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>验证项目</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>工作单位</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>批准日期</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>有效期至</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>状态</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>备注</th></tr>";
				}else if(relationType.equals("Welder")){
					table+="有以下焊工操作证有效日期即将到期，请及时督促更新处理。"+
							"<a  style='FONT-FAMILY: Microsoft YaHei;' href='http://itmp.cgnpc.com.cn/itmp'>请点击这里处理。</a></p>"	;
					table+="<table style='FONT-SIZE: 10px;WIDTH: 80%; border:1px solid black;FONT-FAMILY: Microsoft YaHei;BORDER-COLLAPSE: collapse;'cellSpacing=0 cellPadding=0 width=600 align=center border=1><tr style='BACKGROUND-COLOR: skyblue' border='1'><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>姓名</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>所属公司</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>特种作业名称</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>作业类别</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>发证机关</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>操作项目</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>操作证编号</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>证件有效期</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>复审日期</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>初领日期</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>状态</th></tr>";
				}else if(relationType.equals("Mac")){
					table+="有以下焊机的有效日期即将到期，请及时督促更新处理。"+
							"<a  style='FONT-FAMILY: Microsoft YaHei;' href='http://itmp.cgnpc.com.cn/itmp'>请点击这里处理。</a></p>"	;;
					table+="<table style='FONT-SIZE: 10px;WIDTH: 80%; border:1px solid black;FONT-FAMILY: Microsoft YaHei;BORDER-COLLAPSE: collapse;'cellSpacing=0 cellPadding=0 width=600 align=center border=1><tr style='BACKGROUND-COLOR: skyblue' border='1'><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>设备编号</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>设备名称</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>设备型号</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>输入电压</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>电流范围</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>生产厂家</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>检定有效期</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>状态</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>所在位置</th></tr>";
				}else if(relationType.equals("program")){
					table+="有以下程序需要进行升版，请及时督促更新处理。"+
							"<a  style='FONT-FAMILY: Microsoft YaHei;' href='http://itmp.cgnpc.com.cn/itmp'>请点击这里处理。</a></p>"	;;
					table+="<table style='FONT-SIZE: 10px;WIDTH: 80%; border:1px solid black;FONT-FAMILY: Microsoft YaHei;BORDER-COLLAPSE: collapse;'cellSpacing=0 cellPadding=0 width=600 align=center border=1><tr style='BACKGROUND-COLOR: skyblue' border='1'><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>程序编码</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>名称</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>类型</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>简码</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>版本号</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>状态</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>生效日期</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>下次升版日期</th><th style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>编写单位</th></tr>";
				}
			}
			for(DataObject d:data){
				if(relationType.equals("aut")){
					table+="<tr><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("name"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("sex"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("empnubmer"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("idnumber"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("xl"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("zc"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("zyly"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("sqlx"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("sqfwhdj"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("sqyxq"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("zt"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("bz"))+"</td></tr>";
				}else if(relationType.equals("Ndt")){
					table+="<tr><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("name"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("sex"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("empnubmer"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("idnumber"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("zzlx"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("zzdj"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("zzdj"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("gzdw"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("yxq"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("yxq"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("bz"))+"</td></tr>";
				}else if(relationType.equals("Pro")){
					table+="<tr><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("name"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("sex"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("empnubmer"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("idnumber"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("sydx"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("yzxm"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("gzdw"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("pzrq"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("yxrq"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("zt"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("bz"))+"</td></tr>";
				}else if(relationType.equals("Welder")){
					table+="<tr><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("name"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("company"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("special"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("job"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("authority"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("items"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("operatingnumber"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("validity"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("review"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("initial"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("status"))+"</td></tr>";
				}else if(relationType.equals("Mac")){
					table+="<tr><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("number"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("name"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("equipmenttype"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("input"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("currentrange"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("manufacturer"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("verification"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("state"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("location"))+"</td></tr>";
				}else if(relationType.equals("program")){
					table+="<tr><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("CXBM"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("NAME"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("LX"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("JM"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("BBH"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("status"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("SXRQ"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("XCSBSJ"))+"</td><td style='BORDER:black 1px solid;padding:5px 0px;text-align:center;'>"+empty(d.getString("BXDW"))+"</td></tr>";
				}
			}
			if(data.length>0){
				table+="</table></div>";
				if(relationType.equals("aut")){
					mail.setSubject("授权管理到期提醒");
				}else if(relationType.equals("Ndt")){
					mail.setSubject("无损检测资质到期提醒");
				}else if(relationType.equals("Pro")){
					mail.setSubject("特殊验证项目人员到期提醒");
				}else if(relationType.equals("Welder")){
					mail.setSubject("焊工管理到期提醒");
				}else if(relationType.equals("Mac")){
					mail.setSubject("焊机管理到期提醒");
				}else if(relationType.equals("program")){
					mail.setSubject("程序管理升版提醒");
				}
				mail.setBody(table);
				mail.setTo(obj.getString("reminder"));
				mail.setAlowUser(obj.getString("reminder"));
				ApiResult cgnMapForRest = re.postCgnVoForRest("/email/processEmail", mail);
			}
			
			
		}
	
	}
	
	
	public void everdayEmail2() {
		RestClient re = new RestClient();
		
		
		Email mail = new Email();
		
		mail.setAlowUser("P154371");
		mail.setBody("Test Email!");
		mail.setCc("");
		mail.setTo("P154371");
		mail.setSubject("test");

		ApiResult cgnMapForRest = re.postCgnVoForRest("/email/processEmail", mail);
		System.out.println(cgnMapForRest.toString());
		System.out.println("================="+ConfigurationUtil.getUserConfigSingleValue("aep", "aepAuth", "active"));
		
		
	}
	
	public void updatestats(DataObject obj){
		DataObject examine=DataObjectUtil.convertDataObject(obj,"com.cgn.itmp.dailyandoverhaul.authorization.Common.Reminder",false);
		DatabaseUtil.updateEntity("default",examine);
	}
	public String empty(String text){
		if(StringUtil.isEmpty(text)){
				return "";
		}
		return text;
	}
	

}
