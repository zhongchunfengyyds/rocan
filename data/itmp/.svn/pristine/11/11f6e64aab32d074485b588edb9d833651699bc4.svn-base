/**
 * 
 */
package com.cgn.itmp.dailyandoverhaul.groupplant;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import com.cgn.itmp.basecommon.StringUtil;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.eos.system.exception.EOSRuntimeException;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 群厂管理
 * Description: 群厂管理
 * </pre>
 * @author rocan
 * @version 1.00.00
 * 
 */
/*
 * 修改历史
 * $log$
 */
public class GroupplantMgtDao extends DASDaoSupport {

	/**
	 * 构造函数
	 */
	public GroupplantMgtDao() {
		// TODO 自动生成的构造函数存根
	}
	
	
	/**
	 * 添加编辑管理制度
	 * @param data
	 */
	public void addManagementSystem(DataObject data){
		if(data == null) return;
		String op = data.getString("_state");
		DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.groupplant.ManagementSystem.ManagementSystem", false);
		if("added".equals(op)){  //新增
			temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			temp.setString("addtime",  sdf.format(new Date()));
			DatabaseExt.insertEntityCascade("default", temp);
			}else if("modified".equals(op)){ //修改
			DatabaseExt.updateEntityCascade("default", temp);
		}
	}
	
	
	/**
	 * 添加编辑会议行动管理
	 * @param data
	 */
	public void addConferenceActionMgt(DataObject data){
		if(data == null) return;
			String op = data.getString("_state");
			DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.groupplant.ConferenceActionMgt.ConferenceActionMgt", false);
			if("added".equals(op)){  //新增
				temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				temp.setString("addtime",  sdf.format(new Date()));
				DatabaseExt.insertEntityCascade("default", temp);
				}else if("modified".equals(op)){ //修改
				DatabaseExt.updateEntityCascade("default", temp);
		}
	}
	
	/**
	 * 添加编辑综合指数管理
	 * @param data
	 */
	public void addComprehensiveIndexMgt(DataObject data){
		if(data == null) return;
			String op = data.getString("_state");
			DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.groupplant.ComprehensiveIndexMgt.ComprehensiveIndexMgtSearch", false);
			if("added".equals(op)){  //新增
				temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				temp.setString("addtime",  sdf.format(new Date()));
				DatabaseExt.insertEntityCascade("default", temp);
				}else if("modified".equals(op)){ //修改
				DatabaseExt.updateEntityCascade("default", temp);
		}
	}
	
	
	/**
	 * 添加编辑组织机构
	 * @param data
	 */
	public void addOrganization(DataObject[] data){
		if(data == null) return;
		for(int i = 0 ; i < data.length ; i++){
			String op = data[i].getString("_state");
			DataObject temp  = DataObjectUtil.convertDataObject(data[i], "com.cgn.itmp.dailyandoverhaul.groupplant.Organization.Organization", false);
			if("added".equals(op)){  //新增
				temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				temp.setString("addtime",  sdf.format(new Date()));
				DatabaseExt.insertEntityCascade("default", temp);
				}else if("modified".equals(op)){ //修改
				DatabaseExt.updateEntityCascade("default", temp);
			}
		}
	}

	/**
	 * 添加经验反馈
	 * @param data
	 * @throws Exception
	 */
	public void addEmpiricalFeedback(DataObject data) throws Exception{
		if(data == null) return;
			String op = data.getString("_state");
			DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.EmpiricalFeedback", false);
			String bhN=temp.getString("bh");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String types=temp.getString("type");
			String ly=temp.getString("ly");
			String quarry=temp.getString("quarry");
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");//设置日期格式
		    String xtsj=df.format(new Date());// new Date()为获取当前系统时间
		    String pj=types+"-"+ly+"-"+quarry+"-"+xtsj;//拼接字符串
			if("added".equals(op)){  //新增
				temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
				temp.setString("addtime",sdf.format(new Date()));
				bhN=pj;	
				DataObject bhs=getBhInfo();
				String bh1= "";
				if(null != bhs){
					bh1 = bhs.getString("bh");
				}
			
				if(bh1==null || "".equals(bh1)){
					bhN=bhN+"01";
				}else{
					int newStr=Integer.parseInt(bhs.getString("bh").substring(bhs.getString("bh").lastIndexOf("-")+9));
					if(newStr<10){
						bhN=bhN+"0"+String.valueOf(newStr+1);
						
					}else{
						bhN=bhN+String.valueOf(newStr+1);
					}
				}
				temp.set("bh", bhN);
				DatabaseExt.insertEntityCascade("default", temp);
				}else if("modified".equals(op)){ //修改
				String upbh=bhN.substring(bhN.length()-2);
				String up=pj+upbh;
				temp.set("bh", up);
				DatabaseExt.updateEntityCascade("default", temp);
		}
		
	}
	
//	public void addEmpiricalFeedback(DataObject data) throws Exception{
//		if(data == null) return;
//			String op = data.getString("_state");
//			DataObject temp  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.EmpiricalFeedback", false);
//			String bhN=temp.getString("bh");
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//			if("added".equals(op)){  //新增
//				temp.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
//				temp.setString("addtime",sdf.format(new Date()));
//				String types=temp.getString("type");
//				String ly=temp.getString("ly");
//				String quarry=temp.getString("quarry");
//				SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");//设置日期格式
//			    String xtsj=df.format(new Date());// new Date()为获取当前系统时间
//			    bhN=types+"-"+ly+"-"+quarry+"-"+xtsj;    						
//				DataObject bhs=getBhInfo();
//				String bh1= "";
//				if(null != bhs){
//					bh1 = bhs.getString("bh");
//				}
//				
//				if(bh1==null || "".equals(bh1)){
//					bhN=bhN+"01";
//				}else{
//					int newStr=Integer.parseInt(bhs.getString("bh").substring(bhs.getString("bh").length()-2));
//					if(newStr<10){
//						bhN=bhN+"0"+String.valueOf(newStr+1);
//						
//					}else{
//						bhN=bhN+String.valueOf(newStr+1);
//					}
//				}
//				temp.set("bh", bhN);
//				DatabaseExt.insertEntityCascade("default", temp);
//				}else if("modified".equals(op)){ //修改
//				DatabaseExt.updateEntityCascade("default", temp);
//		}
//		
//	}
	/**
	 * 获取当天最近的编号
	 * @return
	 */
	public DataObject getBhInfo() throws Exception{
		String sql="com.cgn.itmp.dailyandoverhaul.groupplant.groupplant.getBhInfo";
		DataObject[] result = getDASTemplate().queryByNamedSql(DataObject.class, sql, null);
		if(null == result || result.length <= 0 ){
			return null;
		}
		return result[0];
	}
	
	

	/**
	 * 申请流程第一步，保存数据
	 * @param id
	 * @param pid
	 */
	public void applyProStep1(DataObject data) throws Exception{
		DataObject sqApply  = DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.EmpiricalFeedback", false);
		sqApply.setString("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
		String bh = getBhInfo() == null ? "" : getBhInfo().getString("bh");
		if(StringUtil.isEmpty(bh)){
			bh = data.getString("bh")+"01";
		}else{
			int newStr=Integer.parseInt(bh.substring(bh.length()-2));
			if(newStr<10){
				bh=bh+"0"+String.valueOf(newStr+1);
			}else{
				bh=bh+String.valueOf(newStr+1);
			}
		}
		sqApply.setString("bh", bh);
		DatabaseExt.insertEntityCascade("default", sqApply);
	}
	
	
	/**
	 * 申请流程结束
	 * @param processInstId
	 * @param entityType
	 * @param isdelete 0 生效 1删除 3流程中 4作废
	 * @return
	 */
	public void processComplate(String processInstId,String entityType,String isdelete){
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
	 * 根据流程id获取数据
	 * @param processInstId
	 * @return
	 */
	public DataObject getInfoByProcessInstId(String processInstId){
		//设置默认的流程字段
		if(StringUtil.isEmpty(processInstId)){
			return null;
		}
		//获取授权信息
		DataObject temp = DataObjectUtil.createDataObject("com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.EmpiricalFeedback");
		temp.setLong("processInstId", Long.parseLong(processInstId));
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",temp);
	
		return data[0];
	}
	
	
	/**
	 * 添加经验反馈公共模板
	 * @param data
	 * @throws Exception
	 */
	public void addTemplate(DataObject data,String user){
		//先删除再插入
		 Map<String, String> map=new HashMap<String, String>();
			map.put("jdid", data.getString("jd"));
		String sql="com.cgn.itmp.dailyandoverhaul.groupplant.groupplant.deleteTemplate";
	   try {
			DatabaseExt.executeNamedSql("default",sql, map);
		} catch (EOSRuntimeException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
		}
		data=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.Template", false);
		data.set("uuid",UUID.randomUUID().toString().replaceAll("-", ""));
		data.set("createperson",user);
		data.set("createtime",new Date());
		DatabaseExt.insertEntityCascade("default",data);
	}
	/**
	 * 查询经验反馈公共模板
	 * @param data
	 * @throws Exception
	 */
	public DataObject getTemplate(String jd){
		//获取授权信息
		DataObject temp = DataObjectUtil.createDataObject("com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.Template");
		temp.set("jd", jd);
		DataObject[] data = DatabaseUtil.queryEntitiesByTemplate("default",temp);	
		if(data.length==0){
			return null;
		}else{
			return data[0];			
		}
	}
}
