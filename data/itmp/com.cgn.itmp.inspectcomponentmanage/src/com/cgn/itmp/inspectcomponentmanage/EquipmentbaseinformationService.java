package com.cgn.itmp.inspectcomponentmanage;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.cgn.itmp.basecommon.FileUtil;
import com.cgn.itmp.basecommon.StringUtil;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 设备基础技术信息模块功能实现类
 * Description: 设备基础技术信息模块基础增删改查等功能封装类 
 * </pre>
 * 
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class EquipmentbaseinformationService extends DASDaoSupport implements
		IEquipmentbaseinformationService {
	
	/**
	 * 设备基础技术信息数据增加方法
	 */
	public void addEquipmentbaseinformation(
			Equipmentbaseinformation equipmentbaseinformation) {
		
		
		getDASTemplate().getPrimaryKey(equipmentbaseinformation);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		equipmentbaseinformation.set("createtime", dateFormat.format(new Date()));
		getDASTemplate().insertEntity(equipmentbaseinformation);
	}
	
	/**
	 * 设备基础技术信息数据实体删除方法
	 */
	public void deleteEquipmentbaseinformations(
			Equipmentbaseinformation[] equipmentbaseinformations) {
		for (DataObject equipmentbaseinformation : equipmentbaseinformations) {
			getDASTemplate().deleteEntityCascade(equipmentbaseinformation);
		}
	}

	
	/**
	 * 设备基础技术信息数据实体查询方法
	 */
	public void getEquipmentbaseinformation(
			Equipmentbaseinformation equipmentbaseinformation) {
		getDASTemplate().expandEntity(equipmentbaseinformation);
	}

	/**
	 * 设备基础技术信息数据实体查询（分页）方法
	 */
	public Equipmentbaseinformation[] queryEquipmentbaseinformations(
			CriteriaType criteriaType, PageCond pageCond) {
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(
				criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(
				Equipmentbaseinformation.class, dasCriteria, pageCond);
	}

	/**
	 * 更新设备数据
	 */
	public void updateEquipmentbaseinformation(
			Equipmentbaseinformation equipmentbaseinformation) {
		getDASTemplate().updateEntity(equipmentbaseinformation);
	}

	/**
	 * 附件上传修改判断
	 * 
	 * @param obj
	 *            实体名字
	 * @throws IOException
	 */
	private void SetFile(DataObject obj) throws IOException {
		FileUtil fileUtil = new FileUtil();
		String eommfile = obj.getString("eommfile");
		String sdmfile = obj.getString("sdmfile");
		String euqipmentgraph = obj.getString("euqipmentgraph");
		String equiaxedgraph = obj.getString("equiaxedgraph");
		String eomrfile = obj.getString("eomrfile");
		String filepath1 = obj.getString("filepath1");
		String filename1 = obj.getString("filename1");
		if (!StringUtil.isEmpty(filepath1) && !StringUtil.isEmpty(filename1)) {
			eommfile = fileUtil.uploadFile(filepath1, filename1);
			obj.set("eommfile", eommfile);
		}
		String filepath2 = obj.getString("filepath2");
		String filename2 = obj.getString("filename2");
		if (!StringUtil.isEmpty(filepath2) && !StringUtil.isEmpty(filename2)) {
			sdmfile = fileUtil.uploadFile(filepath2, filename2);
			obj.set("sdmfile", sdmfile);
		}
		String filepath3 = obj.getString("filepath3");
		String filename3 = obj.getString("filename3");
		if (!StringUtil.isEmpty(filepath3) && !StringUtil.isEmpty(filename3)) {
			euqipmentgraph = fileUtil.uploadFile(filepath3, filename3);
			obj.set("euqipmentgraph", euqipmentgraph);
		}
		String filepath4 = obj.getString("filepath4");
		String filename4 = obj.getString("filename4");
		if (!StringUtil.isEmpty(filepath4) && !StringUtil.isEmpty(filename4)) {
			equiaxedgraph = fileUtil.uploadFile(filepath4, filename4);
			obj.set("equiaxedgraph", equiaxedgraph);
		}
		String filepath5 = obj.getString("filepath5");
		String filename5 = obj.getString("filename5");
		if (!StringUtil.isEmpty(filepath5) && !StringUtil.isEmpty(filename5)) {
			eomrfile = fileUtil.uploadFile(filepath5, filename5);
			obj.set("eomrfile", eomrfile);
		}
	}
}
