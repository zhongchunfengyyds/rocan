package com.cgn.itmp.dailyandoverhaul.overhaul;

import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import com.cgn.itmp.basecommon.StringUtil;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.spring.DASDaoSupport;
import com.eos.foundation.database.DatabaseUtil;



import commonj.sdo.DataObject;
import flex.messaging.io.ArrayList;

public class ItemManageDao extends DASDaoSupport {

	/**
	 * 
	 */
	public ItemManageDao() {
		// TODO 自动生成的构造函数存根
	}
	
	
	/**
	 * 新增数据
	 * @param data
	 */
	public void addOrEdit(DataObject data,DataObject[] tree,String type,String user){
		if(StringUtil.isEmpty(data.getString("orderindex"))){
			String sql="com.cgn.itmp.dailyandoverhaul.overhaul.Overhaul.count";
			DataObject[] result=getDASTemplate().queryByNamedSql(DataObject.class, sql, data.getString("jd"));
			if(result[0].getString("count").equals("0")){
				data.set("orderindex","1");
			}else{
				sql="com.cgn.itmp.dailyandoverhaul.overhaul.Overhaul.itmpcount";
				result=getDASTemplate().queryByNamedSql(DataObject.class, sql, data.getString("jd"));	
				float index=Float.parseFloat(result[0].getString("orderindex"));
				data.set("orderindex",Float.toString(index+1));
			}
			
		}else{
			float index=Float.parseFloat(data.getString("orderindex"));
			float index1=Float.parseFloat("0.001");
			data.set("orderindex",Float.toString(index+index1));
		}
		String uuid="";
		data.set("applicant",user);
		//排序字段
		data.set("applicanttime",new Date());
		DataObject temp=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage", false);
		//新增修改数据
		if(type.equals("add")){
			uuid=UUID.randomUUID().toString().replaceAll("-", "");
			temp.set("uuid",uuid);	
			DatabaseExt.insertEntityCascade("default", temp);
		}else 
			//修改数据
			if(type.equals("update")||type.equals("update_mf")){ 
				//默认uuid是关联id
				uuid=temp.getString("uuid");
				Map param=new HashMap();
				//修改流程附表的数据
				if(type.equals("update_mf")){
					temp=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage_mf", false);
					temp.set("processStatus","1");
					uuid=temp.getString("processInstId");
				}
				param.put("relationid",uuid);	
					
				DatabaseExt.updateEntityCascade("default", temp);
				getDASTemplate().executeNamedSql("com.cgn.itmp.dailyandoverhaul.overhaul.Overhaul.deleterelation", param);
			
		}else 
			//流程-新增
			if(type.equals("liuchengadd")){ 
				
				uuid=UUID.randomUUID().toString().replaceAll("-", "");
				temp.set("uuid",uuid);	
				temp.set("isdelete","3");
				DatabaseExt.insertEntityCascade("default", temp);
		}else
			//流程-修改数据
			if(type.equals("liuchengupdate")){ 
				uuid=temp.getString("processInstId");
				temp=DataObjectUtil.convertDataObject(data, "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage_mf", false);
				temp.set("relationid",data.getString("uuid"));
				temp.set("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
				DatabaseExt.insertEntityCascade("default", temp);
//				getDASTemplate().executeNamedSql("com.cgn.itmp.dailyandoverhaul.overhaul.Overhaul.deleterelation", param);
		}else
			//添加流程结束操作
			if(type.equals("endadd")){
				temp.set("isdelete","0");
				DatabaseExt.updateEntityCascade("default", temp);
				return;
		}else
			//修改流程结束操作
			if(type.equals("endupdate")){
				uuid=data.getString("relationid");
				temp.set("uuid",uuid);
				temp.set("processStatus","1");
				DatabaseExt.updateEntityCascade("default", temp);
				Map param=new HashMap();
				param.put("relationid",uuid);
				getDASTemplate().executeNamedSql("com.cgn.itmp.dailyandoverhaul.overhaul.Overhaul.deleterelation", param);
		}
		
		List<DataObject> trees=new ArrayList();
		//树节点数据进行规整存入数据库
		for(DataObject node:tree){
			String parentid=new String(UUID.randomUUID().toString().replaceAll("-", ""));
//			System.out.println("parent="+parentid);
			node.set("relationid",uuid);
			node.set("uuid",parentid);
			node.set("parentid","1");
			node.set("fileid","");
			node.set("fj","");
			DataObject parent=DataObjectUtil.convertDataObject(node, "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanagetree", false);
			
			trees.add(parent);
			if(node.get("children")!=null){
				Object[] children=(Object[])node.get("children");
				
				for(Object obj:children){
					Map map=(Map) obj;
					DataObject child=DataObjectUtil.createDataObject("com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanagetree");
					if(type.equals("liuchengadd")||type.equals("liuchengupdate")){
						child=DataObjectUtil.convertDataObject(node, "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanagetree_mf", false);
					}
					String childuuid=new String(UUID.randomUUID().toString().replaceAll("-", ""));
					child.set("uuid",childuuid);
//					System.out.println("child="+child.get("uuid"));
					child.set("number",map.get("number"));
					child.set("elements",map.get("elements"));
					child.set("explain",map.get("explain"));
					child.set("relationid",uuid);
					child.set("parentid",parentid);
					child.set("fileid",map.get("fileid"));
					child.set("fj",map.get("fj"));
					trees.add(child);
				}
			}
			
		}
		DataObject[] array = new DataObject[trees.size()];
		trees.toArray(array);
		DatabaseUtil.insertEntityBatch("default",array);
	}
	
	/**
	 * 数据回填
	 * @param data
	 */
	public List<DataObject> editOrEdit(String id){
		//查询sql
		String sql="com.cgn.itmp.dailyandoverhaul.overhaul.Overhaul.edititemmanage";
		DataObject[] result=getDASTemplate().queryByNamedSql(DataObject.class, sql, id);
		//父节点集合
		List<DataObject> parent=new ArrayList();
		//子节点集合
		List<DataObject> children=new ArrayList();	
		Map<String,Object> total=new HashMap<String,Object>();
		//保存子节点数据（处理数据）
		Map<String,Object> childmap=new HashMap<String,Object>();
		//保存父节点数据（处理数据）
		Map<String,Object> parentmap=new HashMap<String,Object>();
		String parentid="";
		//判断
		int panduan=0;
		int cd=0;
		//遍历所有树节点数据
		for(DataObject obj:result){
			//如果parentid字段为1为父节点
			if(obj.getString("parentid").equals("1")){
				if(panduan>0){
					total.put(parentid,children);
				}
				parent.add(obj);
				//给子节点创建一个集合
				children=new ArrayList();
				//父节点的id
				parentid=obj.get("number").toString();
				//将父节点数据处理然
				parentmap.put(obj.get("number").toString(),obj);
				panduan++;
			}else{
				//子节点存进集合
				children.add(obj);
				//将子节点数据进行处理存进map
				childmap.put(obj.get("number").toString(),obj);
			}
			cd++;
			if(cd==result.length){
				total.put(parentid,children);
			}
			
		}
		List<DataObject> newparent=new ArrayList();
		for(int i=1;i<=parent.size();i++){
			List<DataObject> child=new ArrayList();
			List newchild=new ArrayList();
			if(total.get(i+"")!=null){
				child=(List<DataObject>)total.get(i+"");
			}
			if(child.size()>0){
				for(int j=1;j<=child.size();j++){
					newchild.add(childmap.get(i+"."+j));
				}
			}
			DataObject data=(DataObject)parentmap.get(i+"");
			data.set("children",newchild);
			data.set("expanded",true);
			newparent.add(data);
		}
		return newparent;
	}
	/**
	 * 导出数据
	 * @param data
	 */
	public Map Printing(DataObject[] params){
		for(DataObject object:params){
			String id=object.get("uuid").toString();
			object.set("parents",this.editOrEdit(id));
		}
		Map map=new HashMap();
		map.put("datas",params);
		return map;
	}
	/**
	 * 添加删除数据
	 * @param data
	 */
	public void delete(DataObject[] datas,DataObject delete_entity){
		DataObject [] temp=new DataObject[datas.length];
		for(int i=0;i<datas.length;i++){
			DataObject delete=DataObjectUtil.convertDataObject(datas[i], "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage_mf", false);
			String uuid=new String(delete.getString("uuid"));
			delete.set("relationid",uuid);
			delete.set("uuid",UUID.randomUUID().toString().replaceAll("-", ""));
			delete.set("processInstId",delete_entity.get("processInstId"));
			temp[i]=delete;
		}
		DatabaseUtil.insertEntityBatch("default",temp);
		DataObject obj=DataObjectUtil.convertDataObject(delete_entity, "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanagedelete", false);
		obj.set("uuid",UUID.randomUUID().toString().replaceAll("-", ""));
		obj.set("processInstId",delete_entity.get("processInstId"));
		DatabaseUtil.insertEntity("default",obj);
	}
	/**
	 * 工作流完成删除数据
	 * @param data
	 */
	public void enddelete(DataObject[] datas){
		DataObject [] temp=new DataObject[datas.length];
		for(int i=0;i<datas.length;i++){
			String uuid=new String(datas[i].getString("relationid"));
			datas[i].set("uuid",uuid);
			DataObject delete=DataObjectUtil.convertDataObject(datas[i], "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage", false);
			temp[i]=delete;
		}
		DatabaseUtil.deleteEntityBatch("default",temp);
		
	}

}
