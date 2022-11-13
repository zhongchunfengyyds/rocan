
package com.cgn.itmp.weldingmanagement.Material.impl;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import com.cgn.itmp.basecommon.FTPUtil;
import com.cgn.itmp.basecommon.QrCodeUtil;
import com.cgn.itmp.weldingmanagement.Machine.Machine;
import com.cgn.itmp.weldingmanagement.Material.IMaterialService;
import com.cgn.itmp.weldingmanagement.Material.Material;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.spring.DASDaoSupport;
import com.eos.system.annotation.Bizlet;
import com.eos.system.utility.StringUtil;
import com.google.zxing.WriterException;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.sun.jna.platform.unix.X11.XClientMessageEvent.Data;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 焊材管理功能接口实现类
 * Description: 焊材管理功能接口实现类
 * </pre>
 * @author LENOVO (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class MaterialService extends DASDaoSupport implements IMaterialService{
	
	/**
	 * 焊材管理数据新增
	 */
	public void addMaterial(Material material){
		getDASTemplate().insertEntity(material);
	}

	/**
	 * 焊材管理数据删除
	 */
	public void deleteMaterials(Material[] materials ){
		for(DataObject material:materials){
			getDASTemplate().deleteEntityCascade(material);
		}
	}

	
	/**
	 * 焊材管理数据查询
	 */
	public void getMaterial(Material material){
		getDASTemplate().expandEntity(material);
	}

	/**
	 * 查询焊材信息
	 * @param uuid
	 * @return
	 */
	public DataObject[] showMaterial(String uuid){
		DataObject obj = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Material.Material");
		obj.set("uuid", uuid);
		return DatabaseUtil.queryEntitiesByTemplate("default", obj);
	}
	
	/**
	 * 焊材管理数据分页查询
	 */
	public Material[] queryMaterials(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Material.class, dasCriteria, pageCond);
	}

	/**
	 * 焊材管理数据更新
	 */
    public void updateMaterial(Material material,String base){
    	int kucun=material.getInt("inventory");
		int zuixiao=Integer.parseInt(material.getString("minimum"));
		int kucunremind=material.getInt("kucunremind");
		if(kucun<zuixiao){//修改时库存比最小提醒小
			if(kucunremind<=0){//如果标识是小于等于0证明是新的记录
			String sql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getmaterialreminder";//获取提醒的最大编号
			Object[] queryByNamedSql = DatabaseExt.queryByNamedSql("default", sql, base);
			int a=0;
			if(null!=queryByNamedSql && queryByNamedSql.length>0){//对应基地机组模板下有数据
				a = ((DataObject)queryByNamedSql[0]).getInt("kucunremind");//获取数据数量
				if(a>0){
					material.set("kucunremind",a+1);
				}else{
					material.set("kucunremind",1);
				}
			  }
			}
			//旧的记录不改变值直接更新
		}else{
			material.set("kucunremind",null);
		}
	    getDASTemplate().updateEntity(material);
    }
    
    /**
	 * 焊材管理根据模型查询数据
	 * 统计功能
	 */
	public DataObject[] getModelSpecifications(String base) {
		if(StringHelper.isEmpty(base)) return null;
		String sql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getmodelspecifications";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, base);
	}
	
	/**
	 * 焊材管理根据batchnumber查询数据
	 * 
	 */
	public DataObject[] getBatchNumber(String base,String model,String specifications) {
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(model)||StringHelper.isEmpty(specifications)) return null;
		String sql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getbatchnumber";
		Map<String, Object> map =new HashMap<String, Object>();
		map.put("base",base );
		map.put("model",model);
		map.put("specifications",specifications );
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
	}
	
	/**
	 * 获取焊材记录型号
	 * @param base
	 * @param crew
	 * @return
	 */
	public DataObject[] getRecordType(String base) {
		// TODO 自动生成的方法存根
		if (StringHelper.isEmpty(base))
			return null;
		String sql = "com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getrecordtype";
		DataObject[] da = getDASTemplate().queryByNamedSql(DataObject.class,sql,base);
		return da;
	}
	
	/**
	 * 焊材管理更新数据
	 * 
	 */
	public void updateMaterial(Material material) {
		getDASTemplate().updateEntity(material);
	}
	
	/**
	 * 新增加二维码 加上库存变红置顶
	 */
	public void addMaterial(Material material, String base) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		material.set("createtime", dateFormat.format(new Date()));
		String uuid = (UUID.randomUUID().toString()).replace("-","");
		material.set("uuid", uuid);
		//二维码链接地址
		String content=QrCodeUtil.path+"MaterialQR.jsp?materialid="+uuid;
		//二维码附件名称
		String fileName = uuid+".png";
		boolean flag = QrCodeUtil.createFtpQrCode(uuid, content, fileName);
		if (flag) {
			material.set("qrcode", fileName);
		}
		int kucun=material.getInt("inventory");
		int zuixiao=Integer.parseInt(material.getString("minimum"));
		if(kucun<zuixiao){
		String sql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getmaterialreminder";//获取提醒的最大编号
		Object[] queryByNamedSql = DatabaseExt.queryByNamedSql("default", sql, base);
		int a=0;
		if(null!=queryByNamedSql && queryByNamedSql.length>0){//对应基地机组模板下有数据
			a = ((DataObject)queryByNamedSql[0]).getInt("kucunremind");//获取数据数量
			if(a>0){
				material.set("kucunremind",a+1);
			}else{
				material.set("kucunremind",1);
			}
			}
		}
		getDASTemplate().insertEntity(material);
	}
	/**
	 * 焊材管理出借页面数据查询 去重
	 * 
	 */
	public Material[] queryMachinereturn(String name,String batchnumber,String model,String ids,String jd){
		String sql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.queryMaterialreturn";
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("name",name);
		map.put("batchnumber",batchnumber);
		map.put("model",model);
		if(!StringUtil.isEmpty(ids)){
			String [] uuid=ids.split(",");
			map.put("uuids",uuid);
		}
		map.put("jd",jd);
		//查询出数据
		Material[] data=getDASTemplate().queryByNamedSql(Material.class, sql, map);
		return data;
	}
	/**
	 * 焊材管理归还页面数据查询 去重
	 * 
	 */
	public Material[] queryMachinebyreturn(String name,String batchnumber,String model,String ids,String jd){
		String sql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.queryMaterialbyreturn";
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("name",name);
		map.put("batchnumber",batchnumber);
		map.put("model",model);
		if(!StringUtil.isEmpty(ids)){
			String [] uuid=ids.split(",");
			map.put("uuids",uuid);
		}
		map.put("jd",jd);
		//查询出数据
		Material[] data=getDASTemplate().queryByNamedSql(Material.class, sql, map);
		return data;
	}
}
