package com.cgn.itmp.weldingmanagement.Material.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import com.cgn.itmp.basecommon.StringUtil;
import com.cgn.itmp.weldingmanagement.Material.MaterialServerI;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.system.annotation.Bizlet;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;

import commonj.sdo.DataObject;
/**
 * 焊材管理接口功能实现类
 * @author jirukang
 *
 */
@Bizlet("MaterialServerImpl")
public class MaterialServerImpl implements MaterialServerI{
	/**
	 * 焊材管理更新库存方法
	 */
	@Bizlet
	public void updateMaterialInventory(DataObject[] data, String entity,int inventory,int rksl,int tksl,String bfyy) {
		// TODO 自动生成的方法存根
		for(int i=0;i<data.length;i++){
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			
			temp.setInt("inventory", inventory+rksl);
			DatabaseUtil.updateEntity("default",temp);
		}
	}
	/**
	 * 焊材管理出借
	 * 将对应记录插入record表中
	 * 将出借数据状态isdel改为2 isbf改为YJC 状态
	 * 将原始数据uuid作为关联ID插入
	 */
	@Bizlet
	public void updateMaterialToJC(DataObject[] data, DataObject[] data1,
		 String entity, String entity1,String base) {
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		 
		// TODO 自动生成的方法存根
		String updatezhusql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.updatezhudata";
		String updatesql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.updateghdata";
		String selectsql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getcheck";
		String updateallsql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.updateallinventory";
		String getallrelationid="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getalldata";
		String kucunsql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getlocinventory";
		for(int i=0;i<data.length;i++){
			String time = sdf.format(new Date());
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			
			DataObject temp1  = DataObjectUtil.convertDataObject(data1[0],entity1, false);
			
			Object[] d = DatabaseExt.queryByNamedSql("default", kucunsql, temp.get("uuid"));//查询库存防止批量出错
			int kucun=0;
			int minimum=0;
			int kucunremind=0;
			if(d.length>0){
				if(d[0]!=null){
					kucun=((DataObject)d[0]).getInt("inventory");
					minimum=((DataObject)d[0]).getInt("minimum");
					kucunremind=((DataObject)d[0]).getInt("kucunremind");
				}
			}
			
			temp.setInt("inventory", kucun-temp.getInt("borrownumber"));
			temp.setInt("minimum", minimum);
			
//			int kucun=temp.getInt("inventory");
//			int zuixiao=Integer.parseInt(temp.getString("minimum"));
//			int kucunremind=temp.getInt("kucunremind");//最小库存提醒
			setreminder(temp,kucunremind,base);//设置提醒标识
			if(kucunremind==0){
				temp.set("kucunremind",null);
			}
			Map<String, Object> zhumap =new HashMap<String, Object>();
			zhumap.put("inventory", temp.getInt("inventory"));
			zhumap.put("kucunremind", temp.get("kucunremind"));
			zhumap.put("uuid", temp.get("uuid"));
			//使用记录插入
			temp1.set("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
			temp1.setString("name", temp.getString("name"));
			temp1.setString("standard", temp.getString("standard"));
			temp1.setString("model", temp.getString("model"));
			temp1.setString("brand", temp.getString("brand"));
			temp1.setString("specifications", temp.getString("specifications"));
			temp1.setString("packing", temp.getString("packing"));
			temp1.setInt("inventory", temp.getInt("inventory"));
			temp1.setString("measurement", temp.getString("measurement"));
			temp1.setString("validuntil", temp.getString("validuntil"));
			temp1.setString("isbf", temp.getString("isbf"));
			temp1.setString("remarks", temp.getString("remarks"));
			temp1.setString("operation", "JY");
			temp1.setInt("borandretnumber", temp.getInt("borrownumber"));
			temp1.setString("borandretperson", temp.getString("borrowperson"));
			temp1.setString("borandretunit", temp.getString("borrowunit"));
			temp1.setString("borandrettime", time);
			temp1.setString("jd", base);
			DatabaseUtil.insertEntity("default",temp1);
			
			DatabaseExt.executeNamedSql("default",updatezhusql,zhumap);
//			当借出时候再插入一条借出数据 关联id为原数据uuid
//			isdel改为2 作为归还时列表数据展示标识
			String relationid=(String) temp.get("uuid");
			if(!StringUtil.isEmpty(relationid)){
				
				Map<String, String> map=new HashMap<String, String>();
				map.put("inventory", temp.getString("inventory"));
				map.put("borrowunit", temp.getString("borrowunit"));
				map.put("borrowperson", temp.getString("borrowperson"));
				map.put("relationid", relationid);
				
				Object[] s = DatabaseExt.queryByNamedSql("default", getallrelationid, relationid);//查询是否有借出记录
				if(s.length>0){
					if(s[0]!=null){
						DatabaseExt.executeNamedSql("default", updateallsql, map);
					}
				}
				Object[] a = DatabaseExt.queryByNamedSql("default", selectsql, map);
					if(a.length>0){//如果该条数据之前已借出查询数据直接更新之前借出数据(借用人借用单位相同)
						if(a[0]!=null){
							String uuid=((DataObject)a[0]).getString("uuid");
//							int kc=((DataObject)a[0]).getInt("inventory");//库存不需要此处放暂用
							int jc=((DataObject)a[0]).getInt("borrownumber");
							int zqjc=jc+temp.getInt("borrownumber");
							map.put("uuid", uuid);
							map.put("borrownumber", String.valueOf(zqjc));
							DatabaseExt.executeNamedSql("default", updatesql, map);
						}
					}else{//否则新建一条接出记录
						
						temp.set("relationid",temp.get("uuid"));
						temp.set("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
						temp.set("isdel","2");
						temp.set("isbf","YJC");
						DatabaseUtil.insertEntity("default",temp);
					}
			}
			
			
			
		}
	}
	/**
	 * 焊材管理归还
	 * 将对应记录插入record表中
	 */
	@Bizlet
	public void updateMaterialToGh(DataObject[] data, DataObject[] data1,
			String entity, String entity1,String base) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
			
		// TODO 自动生成的方法存根
			String updatezhusql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.updatezhudata";//更新主数据 库存提醒、库存sql
			String delsql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.delghdata";//删除sql
			String updatesql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.updateghdata";//更新归还记录sql
			String getallrelationid="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getalldata";//查询出借记录条数sql
			String updateallsql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.updateallinventory";//更新所有关联数据库存sql
			String kucunsql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getlocinventory";
			for(int i=0;i<data.length;i++){
			String time = sdf.format(new Date());
			DataObject temp  = DataObjectUtil.convertDataObject(data[i],entity, false);
			
			DataObject temp1  = DataObjectUtil.convertDataObject(data1[0],entity1, false);
			
			String uuid=temp.getString("uuid");//新数据主键
			String olduuid=temp.getString("relationid");//老数据主键--
			//归还时判断该条数据归还的数量
			int returnnumber=temp.getInt("returnnumber");//归还数量
			int borrownumber=temp.getInt("borrownumber");//借出数量
//			int kucunremind=temp.getInt("kucunremind");//最小库存提醒--
			
			Object[] d = DatabaseExt.queryByNamedSql("default", kucunsql, olduuid);//查询库存防止批量出错
			int kucun=0;
			int minimum=0;
			int kucunremind=0;
			if(d.length>0){
				if(d[0]!=null){
					kucun=((DataObject)d[0]).getInt("inventory");
					minimum=((DataObject)d[0]).getInt("minimum");
					kucunremind=((DataObject)d[0]).getInt("kucunremind");
				}
			}
			temp.setInt("minimum", minimum);
			temp.setInt("inventory", kucun+returnnumber);
//			使用记录
			
			
			temp1.set("uuid", UUID.randomUUID().toString().replaceAll("-", ""));
			temp1.setString("name", temp.getString("name"));
			temp1.setString("standard", temp.getString("standard"));
			temp1.setString("model", temp.getString("model"));
			temp1.setString("brand", temp.getString("brand"));
			temp1.setString("specifications", temp.getString("specifications"));
			temp1.setString("packing", temp.getString("packing"));
			temp1.setInt("inventory", temp.getInt("inventory"));
			temp1.setString("measurement", temp.getString("measurement"));
			temp1.setString("validuntil", temp.getString("validuntil"));
			temp1.setString("isbf", "ZC");
			temp1.setString("remarks", temp.getString("remarks"));
			temp1.setString("operation", "GH");
			temp1.setInt("borandretnumber", temp.getInt("returnnumber"));
			temp1.setString("borandretperson", temp.getString("returnperson"));
			temp1.setString("borandretunit", temp.getString("returnunit"));
			temp1.setString("borandrettime", time);
			temp1.setString("jd", base);
			DatabaseUtil.insertEntity("default",temp1);//使用记录表插入
			
	
			Map<String, String> map1=new HashMap<String, String>();
			map1.put("inventory", temp.getString("inventory"));
			map1.put("relationid", olduuid);

			if(returnnumber>=borrownumber){//如果归还数量大于等于出借数量
				setreminder(temp,kucunremind,base);//判断设置提醒标识
				//更新原数据库存提醒、库存 删除借出数据信息 更新所有数据库存信息
				Map<String, Object> zhumap =new HashMap<String, Object>();
				zhumap.put("inventory", temp.get("inventory"));//归还后的库存
				zhumap.put("kucunremind", temp.get("kucunremind"));//归还后的提醒标识
				zhumap.put("uuid", olduuid);//原始数据主键
				DatabaseExt.executeNamedSql("default",updatezhusql,zhumap);//更新原数据库存提醒  库存
				DatabaseExt.executeNamedSql("default", delsql, uuid);//删除借出数据
				Object[] s = DatabaseExt.queryByNamedSql("default", getallrelationid,olduuid);//查询是否还有出借记录
				//有的话更新所有数据库存
				if(s.length>0){
					if(s[0]!=null){
						DatabaseExt.executeNamedSql("default", updateallsql, map1);
					}
				}
				
			}else{
				//如果归还数量小于出借数量(借出数据依然存在) 原数据(olduuid) 修改库存数量、库存提醒标识  
				//								 借出数据修改库存数量、接出数量 (uuid)
				Object[] s = DatabaseExt.queryByNamedSql("default", getallrelationid,olduuid);//查询是否还有出借记录
				//有的话更新所有数据库存
				if(s.length>0){
					if(s[0]!=null){
						DatabaseExt.executeNamedSql("default", updateallsql, map1);
					}
				}
				Map<String, Object> map=new HashMap<String, Object>();
				setreminder(temp,kucunremind,base);//设置提醒标识
				map.put("uuid", olduuid);
				map.put("kucunremind", temp.get("kucunremind"));
				map.put("inventory", temp.get("inventory"));//库存 
				DatabaseExt.executeNamedSql("default",updatezhusql,map);// 原数据(olduuid) 修改库存数量、库存提醒标识 
				int borrownum=borrownumber-returnnumber;//归还后该数据的借出数量
				map.put("borrownumber", borrownum);
				map.put("uuid", temp.get("uuid"));
				DatabaseExt.executeNamedSql("default", updatesql, map);//更新当前借出记录 库存无视 借出数量为 借出减去归还的数量
			}
		}
	}
	
	public void setreminder(DataObject temp,int kucunremind,String base){
		int kucun=temp.getInt("inventory");
		int zuixiao=Integer.parseInt(temp.getString("minimum"));
		if(kucun<zuixiao){
			if(kucunremind<=0){//如果标识是小于等于0证明是新的记录
				String sql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getmaterialreminder";//获取提醒的最大编号
				Object[] queryByNamedSql = DatabaseExt.queryByNamedSql("default", sql, base);
				int a=0;
				if(null!=queryByNamedSql && queryByNamedSql.length>0){//对应基地机组模板下有数据
					a = ((DataObject)queryByNamedSql[0]).getInt("kucunremind");//获取数据数量
					if(a>0){
						temp.set("kucunremind",a+1);
					}else{
						temp.set("kucunremind",1);
					}
				}
			}
		}else{
			temp.set("kucunremind",null);
		}
		
	}

}
