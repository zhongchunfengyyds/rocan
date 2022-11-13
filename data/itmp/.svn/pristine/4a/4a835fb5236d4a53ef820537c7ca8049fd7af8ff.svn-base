
package com.cgn.itmp.weldingmanagement.Machine.impl;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.eos.common.config.ConfigurationFactory;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.infra.config.Configuration;
import com.eos.infra.config.Configuration.Group;
import com.eos.spring.DASDaoSupport;
import com.eos.system.utility.StringUtil;
import com.google.zxing.WriterException;
import com.cgn.itmp.basecommon.FTPUtil;
import com.cgn.itmp.basecommon.QrCodeUtil;
import com.cgn.itmp.basecommon.WordUtil;
import com.cgn.itmp.weldingmanagement.Machine.IMachineService;
import com.cgn.itmp.weldingmanagement.Machine.Machine;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 焊机管理功能接口实现类
 * Description: 程序功能的描述 
 * </pre>
 * @author LENOVO (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class MachineService extends DASDaoSupport implements IMachineService{
	/**
	 * 焊机管理数据新增
	 */
	public void addMachine(Machine machine){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		machine.set("createtime", dateFormat.format(new Date()));
		String uuid = (UUID.randomUUID().toString()).replace("-","");
		machine.set("uuid", uuid);
		//二维码链接地址
//		String content=QrCodeUtil.path+"MachineQR.jsp?machineid="+uuid;
		//二维码附件名称
//		String fileName = uuid+".png";
//		
//		boolean flag = QrCodeUtil.createFtpQrCode(uuid, content, fileName);
//		if (flag) {
//			machine.set("qrcode", fileName);
//		}
		getDASTemplate().insertEntity(machine);
	}
	/**
	 * 焊机管理数据查询
	 */
	  public String getMateorMachQRword(DataObject[] data,String type){	    	
	    	Configuration config=ConfigurationFactory.getUserConfiguration();
	    	Group fileGroup=config.getGroup("FILE_UPLOAD", "FILE_INFO");
	    	//读取userconfig里面的ip
			String path=fileGroup.getConfigValue("FILE_IP");
//			二维码链接地址
			List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
			List list2 = new ArrayList();
			String name="";
			for(int i=0;i<data.length;i++){
				String qr="";
				try {
					if(type.equals("welder")){
						qr = QrCodeUtil.base64(path+"WelderQR.jsp?welderid="+data[i].getString("uuid"),1500,"PNG","姓名 ："+data[i].getString("name"),"操作证编号："+data[i].getString("operatingnumber"),1000);
						name="焊工二维码记录";
					}else if(type.equals("mater")){
						qr = QrCodeUtil.base64(path+"MaterialQR.jsp?materialid="+data[i].getString("uuid"),1500,"PNG","名称："+data[i].getString("name"),"焊材批号："+data[i].getString("batchnumber"),1000);
						name="焊材二维码记录";
					}else{
						qr = QrCodeUtil.base64(path+"MachineQR.jsp?machineid="+data[i].getString("uuid"),1500,"PNG","名称："+data[i].getString("name"),"焊机编号："+data[i].getString("number"),1000);
						name="焊机二维码记录";
					}
				} catch (Exception e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				} 
				
				
				Map<String,Object> map=new HashMap<String,Object>();
				map.put("imagedata",qr);
				map.put("id",data[i].get("uuid"));				
				list.add(map);
				if(((i+1)%4==0)||i==(data.length-1)){
					list2.add(list);
					list=new ArrayList();
				}
				
			}
			Map param=new HashMap();
			param.put("qrCodes", list2);
			WordUtil wd=new WordUtil();
			return wd.createDocMap("welderQR.ftl",param,name);
	    }
	  
	  /**
		 * 焊机管理数据删除
		 */
	public void deleteMachines(Machine[] machines ){
		for(DataObject machine:machines){
			getDASTemplate().deleteEntityCascade(machine);
		}
	}

	/**
	 * 焊机管理数据查询
	 */
	public void getMachine(Machine machine){
		getDASTemplate().expandEntity(machine);
	}

	/**
	 * 焊机管理通过UUID进行数据查询
	 */
	public DataObject[] showMachine(String uuid){
		DataObject obj = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Machine.Machine");
		obj.set("uuid", uuid);
		return DatabaseUtil.queryEntitiesByTemplate("default", obj);
	}
	
	/**
	 * 焊机管理数据分页查询
	 */
	public Machine[] queryMachines(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Machine.class, dasCriteria, pageCond);
	}

	/**
	 * 焊机管理数据出借在库中查询
	 */
	public Machine[] queryMachinereturn(String name,String number,String state,String ids,String jd){
		String sql="com.cgn.itmp.weldingmanagement.Machine.impl.machine.queryMachine";
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("name",name);
		map.put("number",number);
		map.put("state",state);
		if(!StringUtil.isEmpty(ids)){
			String [] uuid=ids.split(",");
			map.put("uuids",uuid);
		}
		map.put("jd",jd);
		//查询出数据
		Machine[] data=getDASTemplate().queryByNamedSql(Machine.class, sql, map);
		return data;
	}

	/**
	 * 焊机管理数据跟新
	 */
    public void updateMachine(Machine machine){
	    getDASTemplate().updateEntity(machine);
    }
    
}
