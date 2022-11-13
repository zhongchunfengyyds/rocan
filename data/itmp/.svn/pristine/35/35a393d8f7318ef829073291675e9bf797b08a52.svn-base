package com.cgn.itmp.weldingmanagement.Processes.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang.StringUtils;

import com.cgn.itmp.basecommon.CommonUtil;
import com.cgn.itmp.weldingmanagement.Processes.IProcessesService;
import com.cgn.itmp.weldingmanagement.Processes.Processes;
import com.cgn.itmp.weldingmanagement.Processes.WeldingProcessSteps;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.data.datacontext.IUserObject;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述
 * </pre>
 * 
 * @author train (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class ProcessesService extends DASDaoSupport implements
		IProcessesService {
	public void addProcesses(Processes processes) {
		getDASTemplate().getPrimaryKey(processes);

		IUserObject cu = CommonUtil.getUserObject();
		String username = cu.getUserRealName();

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String dataTime = df.format(new Date());

		if(!StringUtils.isNotBlank(processes.getFounder())){
			processes.setFounder(username);
		}
		if(!StringUtils.isNotBlank(processes.getCreatetime())){
			processes.setCreatetime(dataTime);
		}
		
		getDASTemplate().insertEntity(processes);

		List<WeldingProcessSteps> list = processes.getWeldingProcessStepss();
		for (WeldingProcessSteps l : list) {
			l.setProcessid(processes.getUuid());
			getDASTemplate().getPrimaryKey(l);
			getDASTemplate().insertEntity(l);

		}

	}

	public void deleteProcessess(Processes[] processess) {
		for (DataObject processes : processess) {
			getDASTemplate().deleteEntityCascade(processes);
		}
	}

	public void getProcesses(Processes processes) {
		getDASTemplate().expandEntity(processes);
		getDASTemplate().expandRelation(processes, "weldingProcessStepss");
	}

	public Processes[] queryProcessess(CriteriaType criteriaType,
			PageCond pageCond) {
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(
				criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(
				Processes.class, dasCriteria, pageCond);
	}

	public void updateProcesses(Processes processes) {
		getDASTemplate().updateEntity(processes);
		String sql="com.cgn.itmp.weldingmanagement.Processes.impl.processes.deleteProcessesStepsByPid";
		getDASTemplate().executeNamedSql(sql, processes.getUuid());
		List<WeldingProcessSteps> list = processes.getWeldingProcessStepss();
		for (WeldingProcessSteps l : list) {
			l.setProcessid(processes.getUuid());
			getDASTemplate().getPrimaryKey(l);
			getDASTemplate().insertEntity(l);
		}
	}

	public DataObject[] getProcessesStepsByPid(String pid) {
		String sql="com.cgn.itmp.weldingmanagement.Processes.impl.processes.getProcessesStepsByPid";
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class,
				sql, pid);
    	return db;
	}

	public DataObject[] getProcessesIds(String jdid) {
		String sql="com.cgn.itmp.weldingmanagement.Processes.impl.processes.getProcessesIds";
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class,
				sql, jdid);
		return db;
	}


	public static String realEntityName = "com.cgn.itmp.weldingmanagement.Processes.Processes";
	public static String realChildEntityName = "com.cgn.itmp.weldingmanagement.Processes.WeldingProcessSteps";
	
	public static String backUpEntityName = "com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessBackup";
	public static String backUpChildEntityName = "com.cgn.itmp.weldingmanagement.ProcessesBackup.WeldingProcessStepsBackup";
	
	/**
	 * 普通用户 - 工作流 - 保存数据
	 * @param data
	 */
	@SuppressWarnings("unchecked")
	public void averageUserSaveData(Processes data){
		//新增
		if (StringUtils.isBlank(data.getString("uuid"))) {
			//新增数据转换为中间表
			DataObject obj = DataObjectUtil.convertDataObject(data, backUpEntityName, false);
			String uuid = (UUID.randomUUID().toString()).replace("-", "");
			obj.set("uuid", uuid);
			DatabaseUtil.insertEntity("default", obj);
			
			List<WeldingProcessSteps> list = (List<WeldingProcessSteps>) data.get("weldingProcessStepss");
			if(list.size() > 0){
				for (WeldingProcessSteps weldingProcessSteps : list) {
					DataObject childObj = DataObjectUtil.convertDataObject(weldingProcessSteps, backUpChildEntityName, false);
					childObj.set("uuid", (UUID.randomUUID().toString()).replace("-", ""));
					childObj.set("processid", uuid);
					DatabaseUtil.insertEntity("default", childObj);
				}
			}
		}else{
			//流程中
			DataObject realObj = DataObjectUtil.createDataObject(realEntityName);
			realObj.set("uuid", data.getString("uuid"));
			realObj.set("processStatus", "0");
			realObj.set("processinstid", data.getString("processinstid"));
			DatabaseUtil.updateEntity("default", realObj);
			DataObject obj = DataObjectUtil.convertDataObject(data, backUpEntityName, false);
			obj.set("relationid", data.getString("uuid"));
			obj.set("uuid", (UUID.randomUUID().toString()).replace("-", ""));
			obj.set("editor", CommonUtil.getUserObject().getUserRealName());
			obj.set("edittime", new Date());
			DatabaseUtil.insertEntity("default", obj);
			List<WeldingProcessSteps> list = (List<WeldingProcessSteps>) data.get("weldingProcessStepss");
			if(list.size() > 0){
				for (WeldingProcessSteps weldingProcessSteps : list) {
					DataObject childObj = DataObjectUtil.convertDataObject(weldingProcessSteps, backUpChildEntityName, false);
					childObj.set("uuid", (UUID.randomUUID().toString()).replace("-", ""));
					childObj.set("processid", obj.getString("uuid"));
					DatabaseUtil.insertEntity("default", childObj);
				}
			}
		}
	}
	
	/**
	 * 保存用户自定义数据
	 * @param data
	 * @return uuid
	 */
	@SuppressWarnings("unchecked")
	public String saveCustomProcess(Processes data){
		DataObject obj = DataObjectUtil.convertDataObject(data, realEntityName, false);
		String uuid = "";
		if(StringUtils.isBlank(obj.getString("uuid"))){
			uuid = (UUID.randomUUID().toString()).replace("-", "");
			obj.set("uuid", uuid);
			DatabaseUtil.insertEntity("default", obj);
			
			List<WeldingProcessSteps> list = (List<WeldingProcessSteps>) data.get("weldingProcessStepss");
			if(list.size() > 0){
				for (WeldingProcessSteps weldingProcessSteps : list) {
					weldingProcessSteps.set("uuid", (UUID.randomUUID().toString()).replace("-", ""));
					weldingProcessSteps.set("processid", uuid);
					DatabaseUtil.insertEntity("default", weldingProcessSteps);
				}
			}
		}else{
			
			//自定义工序数据清理
			DataObject stepObjects = DataObjectUtil.createDataObject(realChildEntityName);
			stepObjects.set("processid", obj.getString("uuid"));
			DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",stepObjects);
			for(int i = 0; i< datas.length;i++){
				DatabaseUtil.deleteByTemplate("default", datas[i]);
			}
			
			List<WeldingProcessSteps> list =  (List<WeldingProcessSteps>) data.get("weldingProcessStepss");
			if(list.size() > 0){
				for (WeldingProcessSteps weldingProcessSteps : list) {
					weldingProcessSteps.set("uuid", (UUID.randomUUID().toString()).replace("-", ""));
					weldingProcessSteps.set("processid", obj.getString("uuid"));
					DatabaseUtil.insertEntity("default", weldingProcessSteps);
				}
			}
		}
		return uuid;
	}
	
	
	/**
	 * 管理员用户保存数据
	 * @param data
	 */
	@SuppressWarnings("unchecked")
	public void administratorSaveData(Processes data){
		DataObject obj = DataObjectUtil.convertDataObject(data, realEntityName, false);
		//新增
		if (StringUtils.isBlank(obj.getString("uuid"))) {
			String uuid = (UUID.randomUUID().toString()).replace("-", "");
			obj.set("uuid", uuid);
			DatabaseUtil.insertEntity("default", obj);
			
			List<WeldingProcessSteps> list = (List<WeldingProcessSteps>) data.get("weldingProcessStepss");
			if(list.size() > 0){
				for (WeldingProcessSteps weldingProcessSteps : list) {
					weldingProcessSteps.set("uuid", (UUID.randomUUID().toString()).replace("-", ""));
					weldingProcessSteps.set("processid", uuid);
					DatabaseUtil.insertEntity("default", weldingProcessSteps);
				}
			}
		}else{
			//更新
			DatabaseUtil.updateEntity("default", obj);
			List<WeldingProcessSteps> list =  (List<WeldingProcessSteps>) data.get("weldingProcessStepss");
			if(list.size() > 0){
				for (WeldingProcessSteps weldingProcessSteps : list) {
					if(StringUtils.isNotBlank(weldingProcessSteps.getUuid())){
						DatabaseUtil.updateEntity("default", weldingProcessSteps);
					}else{
						weldingProcessSteps.set("uuid", (UUID.randomUUID().toString()).replace("-", ""));
						weldingProcessSteps.set("processid", obj.getString("uuid"));
						DatabaseUtil.insertEntity("default", weldingProcessSteps);
					}
					
				}
			}
		}
	}
	
	/**
	 * 更新流程中的审批人员信息
	 * @param data
	 */
	@SuppressWarnings("unchecked")
	public void updateWFInfo(Processes data,String pageType){
		if(pageType.equals("add")){
			DataObject obj = DataObjectUtil.convertDataObject(data, backUpEntityName, false);
			DatabaseUtil.updateEntity("default", obj);
			
			List<WeldingProcessSteps> list =  (List<WeldingProcessSteps>) data.get("weldingProcessStepss");
			if(list.size() > 0){
				for (WeldingProcessSteps weldingProcessSteps : list) {
					if(StringUtils.isNotBlank(weldingProcessSteps.getUuid())){
						DataObject childObj = DataObjectUtil.convertDataObject(weldingProcessSteps, backUpChildEntityName, false);
						DatabaseUtil.updateEntity("default", childObj);
					}else{
						weldingProcessSteps.set("uuid", (UUID.randomUUID().toString()).replace("-", ""));
						weldingProcessSteps.set("processid", obj.getString("uuid"));
						DataObject childObj = DataObjectUtil.convertDataObject(weldingProcessSteps, backUpChildEntityName, false);
						DatabaseUtil.insertEntity("default", childObj);
					}
				}
			}
		}else{
			DataObject obj = DataObjectUtil.convertDataObject(data, backUpEntityName, false);
			getDASTemplate().updateEntity(obj);
			List<WeldingProcessSteps> list =  (List<WeldingProcessSteps>) data.get("weldingProcessStepss");
			if(list.size() > 0){
				for (WeldingProcessSteps weldingProcessSteps : list) {
					if(StringUtils.isNotBlank(weldingProcessSteps.getUuid())){
						DataObject childObj = DataObjectUtil.convertDataObject(weldingProcessSteps, backUpChildEntityName, false);
						DatabaseUtil.updateEntity("default", childObj);
					}else{
						weldingProcessSteps.set("uuid", (UUID.randomUUID().toString()).replace("-", ""));
						weldingProcessSteps.set("processid", obj.getString("uuid"));
						DataObject childObj = DataObjectUtil.convertDataObject(weldingProcessSteps, backUpChildEntityName, false);
						DatabaseUtil.insertEntity("default", childObj);
					}
					
				}
			}
		}
	}
	
	/**
	 * 流程作废
	 * @param processInstId
	 */
	public void invalidWF(String processInstId,String pageType){
		if (pageType.equals("add")) {
			/*DataObject entity = DataObjectUtil.createDataObject(realEntityName);
			entity.setString("processinstid", processInstId);
			DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",entity);
			if(datas.length > 0){
				DatabaseUtil.deleteByTemplate("default", datas[0]);
				DataObject childEntity = DataObjectUtil.createDataObject(realChildEntityName);
				entity.setString("processid", datas[0].getString("uuid"));
				DataObject[] childdatas = DatabaseUtil.queryEntitiesByTemplate("default",childEntity);
				if(childdatas.length > 0){
					for(DataObject o : childdatas){
						DatabaseUtil.deleteByTemplate("default", o);
					}
				}
			}*/
		}else{
			DataObject entity = DataObjectUtil.createDataObject(backUpEntityName);
			entity.setString("processinstid", processInstId);
			DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",entity);
			if(datas.length > 0){
				String relationid = datas[0].getString("relationid");
				DataObject realobj = DataObjectUtil.createDataObject(realEntityName);
				realobj.set("uuid", relationid);
				realobj.set("processStatus", "3");
				DatabaseUtil.updateEntity("default", realobj);
			}
		}
	}
	
	/**
	 * 流程结束，更新真实表数据
	 * 
	 * @param processInstId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public void stopFlowStatus(Processes data,String pageType) {
		if (pageType.equals("add")) {
			
			DataObject obj = DataObjectUtil.createDataObject(backUpEntityName);
			obj.set("uuid", data.getString("uuid"));
			DataObject[] realDatas = DatabaseUtil.queryEntitiesByTemplate("default", obj);
			if(realDatas.length > 0){
				DataObject realObj = DataObjectUtil.convertDataObject(realDatas[0], realEntityName, false);
				realObj.set("isdel", "0");
				realObj.set("state", "审批完成");
				DatabaseUtil.insertEntity("default", realObj);
			}
			List<WeldingProcessSteps> list =  (List<WeldingProcessSteps>) data.get("weldingProcessStepss");
			if(list.size() > 0){
				for(WeldingProcessSteps l:list){
					l.setProcessid(data.getString("uuid"));
					getDASTemplate().insertEntity(l);
				}
			}
		}else{
			DataObject obj = DataObjectUtil.convertDataObject(data, backUpEntityName, false);
			String oldUuid = obj.getString("relationid");
			//清除真实表子表数据
			DataObject childEntity = DataObjectUtil.createDataObject(realChildEntityName);
			childEntity.setString("processid", oldUuid);
			DataObject[] childdatas = DatabaseUtil.queryEntitiesByTemplate("default",childEntity);
			for(DataObject o : childdatas){
				DatabaseUtil.deleteByTemplate("default", o);
			}
			
			DataObject backUpChildEntity = DataObjectUtil.createDataObject(backUpChildEntityName);
			backUpChildEntity.setString("processid", obj.getString("uuid"));
			DataObject[] backUpChildEntitys = DatabaseUtil.queryEntitiesByTemplate("default",backUpChildEntity);
			for(DataObject o : backUpChildEntitys){
				DataObject relObj = DataObjectUtil.convertDataObject(o, realChildEntityName, false);
				relObj.set("processid", oldUuid);
				DatabaseUtil.insertEntity("default", relObj);
			}
			
			obj.set("uuid", oldUuid);
			DataObject objMain = DataObjectUtil.convertDataObject(obj, realEntityName, false);
			objMain.set("processStatus", "3");
			objMain.set("state", "审批完成");
			DatabaseUtil.updateEntity("default",objMain);
		}
	}
	
	/**
	 * 获取审批数据
	 * @param processInstId
	 * @return
	 */
	public Map<String, Object> queryAuditData(String processInstId){
		Map<String, Object> reMap = new HashMap<String, Object>();
		/*DataObject entity = DataObjectUtil.createDataObject(realEntityName);
		entity.setString("processinstid", processInstId);
		DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default",entity);*/
		/*if(datas.length > 0){
			String processid = datas[0].getString("uuid");
			DataObject childEntity = DataObjectUtil.createDataObject(realChildEntityName);
			childEntity.setString("processid", processid);
			DataObject[] childDatas = DatabaseUtil.queryEntitiesByTemplate("default",childEntity);
			datas[0].set("weldingProcessSteps", childDatas);
			
			reMap.put("pageType", "add");
			reMap.put("data", datas[0]);
		}else{*/
			DataObject backUpEntity = DataObjectUtil.createDataObject(backUpEntityName);
			backUpEntity.setString("processinstid", processInstId);
			DataObject[] backUpDatas = DatabaseUtil.queryEntitiesByTemplate("default",backUpEntity);
			if(backUpDatas.length > 0){
				String processid = backUpDatas[0].getString("uuid");
				DataObject backUpChildEntity = DataObjectUtil.createDataObject(backUpChildEntityName);
				backUpChildEntity.setString("processid", processid);
				DataObject[] backUpChildDatas = DatabaseUtil.queryEntitiesByTemplate("default",backUpChildEntity);
				backUpDatas[0].set("weldingProcessSteps", backUpChildDatas);
				if(StringUtils.isNotBlank(backUpDatas[0].getString("relationid"))){
					reMap.put("pageType", "edit");
				}else{
					reMap.put("pageType", "add");
				}
				reMap.put("data", backUpDatas[0]);
			}
		/*}*/
		return reMap;
	}

}
