package com.cgn.itmp.inspectcomponentmanage;

import java.awt.Color;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagement.Inspectionresultsmanagement;
import com.eos.common.config.ConfigurationFactory;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.infra.config.Configuration;
import com.eos.infra.config.Configuration.Group;
import com.eos.runtime.core.ApplicationContext;
import com.eos.spring.DASDaoSupport;
import com.eos.system.utility.StringUtil;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 役检结果数据接口实现类
 * Description: 役检结果数据接口实现类
 * </pre>
 * 
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class InspectionresultsmanagementService extends DASDaoSupport implements
		IInspectionresultsmanagementService {
	/**
	 * 添加役检结果数据
	 */
	public void addInspectionresultsmanagement(
			Inspectionresultsmanagement inspectionresultsmanagement) {
		getDASTemplate().getPrimaryKey(inspectionresultsmanagement);
		inspectionresultsmanagement.set("uuid", UUID.randomUUID().toString()
				.replaceAll("-", ""));
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		if(StringUtil.isEmpty(inspectionresultsmanagement.getString("createtime"))){
			inspectionresultsmanagement.set("createtime",df.format(new Date()));			
		}
		getDASTemplate().insertEntity(inspectionresultsmanagement);
	}

	/**
	 * 删除役检结果数据
	 */
	public void deleteInspectionresultsmanagements(
			Inspectionresultsmanagement[] inspectionresultsmanagements) {
		for (DataObject inspectionresultsmanagement : inspectionresultsmanagements) {
			getDASTemplate().deleteEntityCascade(inspectionresultsmanagement);
		}
	}

	/**
	 * 查询役检结果数据
	 */
	public void getInspectionresultsmanagement(
			Inspectionresultsmanagement inspectionresultsmanagement) {
		getDASTemplate().expandEntity(inspectionresultsmanagement);
	}

	/**
	 * 分页查询役检结果数据
	 */
	public Inspectionresultsmanagement[] queryInspectionresultsmanagements(
			CriteriaType criteriaType, PageCond pageCond) {
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(
				criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(
				Inspectionresultsmanagement.class, dasCriteria, pageCond);
	}
	
	/**
	 * 更新役检结果数据
	 */
	public void updateInspectionresultsmanagement(
			Inspectionresultsmanagement inspectionresultsmanagement) {
		getDASTemplate().updateEntity(inspectionresultsmanagement);
	}

	/**
	 * 通过大修基地机组获取编号
	 */
	public DataObject[] getNumByOverhual(String base,String crew) {
		// TODO 自动生成的方法存根
		if (StringHelper.isEmpty(base)||StringHelper.isEmpty(crew))
			return null;
		Map<String, String> map=new HashMap<String, String>();
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(crew)) return null;
		map.put("base", base);
		map.put("crew", crew);
		String sql = "com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagement.impl.inspectionresultsmanagement.getnumbyoverhaulsequence";
		DataObject[] da = getDASTemplate().queryByNamedSql(DataObject.class,
				sql, map);
		return da;
	}

	/**
	 * 根据基地机组获取设备树信息
	 */
	public JSONArray getEquipmentTree(String base,String crew) {
		
		String sql = "com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagement.impl.inspectionresultsmanagement.getequipmenttree";
		Map<String,String> map=new HashMap<String,String>();
		map.put("base", base);
		map.put("crew", crew);
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		//节点1集合
		Map<Object,Object> nodeone=new HashMap<Object,Object>();
		//节点2集合
		Map<Object,Object> nodetwo=new HashMap<Object,Object>();
		//节点3集合
		Map<Object,Object> nodethree=new HashMap<Object,Object>();
		
		JSONArray arr = new JSONArray();
		Set<Object> setMap=new HashSet<Object>();
		Set<Object> set=new HashSet<Object>();
		for (int i = 0; i < db.length; i++) {
			DataObject dataObject = db[i];
			if(hasSameData(dataObject.get("DEVICENAME"),1,setMap,"1")){//1
				JSONObject treeObj = new JSONObject();
				treeObj.put("id", UUID.randomUUID().toString().replaceAll("-",""));
				treeObj.put("text", dataObject.get("DEVICENAME"));//1
				treeObj.put("expanded", false);
				//将该节点的id和值保存至节点1的集合中
				nodeone.put(dataObject.get("DEVICENAME"),treeObj.get("id"));//1
				arr.add(treeObj);
				//添加进去重的set集合中
				set.add(dataObject.get("DEVICENAME"));//1
			}
			if(hasSameData(dataObject.get("PARTNAME"),2,setMap,dataObject.get("DEVICENAME").toString())){//2 //1
			
				JSONObject treeObj1 = new JSONObject();
				treeObj1.put("id",UUID.randomUUID().toString().replaceAll("-",""));
				treeObj1.put("text", dataObject.get("PARTNAME"));//2
				treeObj1.put("pid",nodeone.get(dataObject.get("DEVICENAME")));//1
				//将该节点的id和值保存至节点2的集合中
				nodetwo.put(dataObject.get("PARTNAME"),treeObj1.get("id"));//2
				arr.add(treeObj1);
				//添加进去重的set集合中
				set.add(dataObject.get("DEVICENAME")+"+"+dataObject.get("PARTNAME"));//2
			}
			if(hasSameData(dataObject.get("DETECTEDSITE"),3,setMap,(dataObject.get("DEVICENAME")+"+"+dataObject.get("PARTNAME")))){//3 //1 //2
				JSONObject treeObj2 = new JSONObject();
				treeObj2.put("id", UUID.randomUUID().toString().replaceAll("-",""));
				treeObj2.put("text", dataObject.get("DETECTEDSITE"));//3
				treeObj2.put("pid",nodetwo.get(dataObject.get("PARTNAME")));//2
				//将该节点的id和值保存至节点3的集合中
				nodethree.put(dataObject.get("DETECTEDSITE"),treeObj2.get("id"));//2
				arr.add(treeObj2);
				//添加进去重的set集合中
				set.add(dataObject.get("DEVICENAME")+"+"+dataObject.get("PARTNAME")+"+"+dataObject.get("DETECTEDSITE"));//3
			}
			if(hasSameData(dataObject.get("INSPECTIONMETHOD"),4,setMap,(dataObject.get("DEVICENAME")+"+"+dataObject.get("PARTNAME")+"+"+dataObject.get("DETECTEDSITE")))){//3 //1 //2
				JSONObject treeObj3 = new JSONObject();
				treeObj3.put("id", UUID.randomUUID().toString().replaceAll("-",""));
				treeObj3.put("text", dataObject.get("INSPECTIONMETHOD"));//4
				treeObj3.put("pid",nodethree.get(dataObject.get("DETECTEDSITE")));//3
				arr.add(treeObj3);
				//添加进去重的set集合中
				set.add(dataObject.get("INSPECTIONMETHOD"));//4
			}
		}
		
		/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		/*Map<String, String> map=new HashMap<String, String>();
		if(StringHelper.isEmpty(base)||StringHelper.isEmpty(crew)) return null;
		map.put("base", base);
		map.put("crew", crew);
		String sql = "com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagement.impl.inspectionresultsmanagement.getequipmenttree";
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class,
				sql, map);
		// 节点1集合
		Map<Object, Object> nodeone = new HashMap<Object, Object>();
		// 节点2集合
		Map<Object, Object> nodetwo = new HashMap<Object, Object>();
		// 节点3集合
		Map<Object, Object> nodethree = new HashMap<Object, Object>();
		JSONArray arr = new JSONArray();
		Set<Object> setMap = new HashSet<Object>();
		Set<Object> set = new HashSet<Object>();
		for (int i = 0; i < db.length; i++) {
			DataObject dataObject = db[i];
			if (hasSameData(dataObject.get("EQUIPMENTNAME"), 1, setMap, "1")) {
				JSONObject treeObj = new JSONObject();
				treeObj.put("id",
						UUID.randomUUID().toString().replaceAll("-", ""));
				treeObj.put("text", dataObject.get("EQUIPMENTNAME"));
				treeObj.put("expanded", false);
				// 将该节点的id和值保存至节点1的集合中
				nodeone.put(dataObject.get("EQUIPMENTNAME"), treeObj.get("id"));
				arr.add(treeObj);
				// 添加进去重的set集合中
				set.add(dataObject.get("EQUIPMENTNAME"));
			}
			if (hasSameData(dataObject.get("COMPONENTNAME"), 2, setMap, dataObject
					.get("EQUIPMENTNAME").toString())) {

				JSONObject treeObj1 = new JSONObject();
				treeObj1.put("id",
						UUID.randomUUID().toString().replaceAll("-", ""));
				treeObj1.put("text", dataObject.get("COMPONENTNAME"));
				treeObj1.put("pid",
						nodeone.get(dataObject.get("EQUIPMENTNAME")));
				// 将该节点的id和值保存至节点2的集合中
				nodetwo.put(dataObject.get("COMPONENTNAME"), treeObj1.get("id"));
				arr.add(treeObj1);
				// 添加进去重的set集合中
				set.add(dataObject.get("COMPONENTNAME"));
			}
			if (hasSameData(dataObject.get("CHECKLOCATION"), 3, setMap,
					dataObject
							.get("COMPONENTNAME").toString())) {
				JSONObject treeObj2 = new JSONObject();
				treeObj2.put("id",
						UUID.randomUUID().toString().replaceAll("-", ""));
				treeObj2.put("text", dataObject.get("CHECKLOCATION"));
				treeObj2.put("pid", nodetwo.get(dataObject.get("COMPONENTNAME")));
				nodethree.put(dataObject.get("CHECKLOCATION"), treeObj2.get("id"));
				arr.add(treeObj2);
				// 添加进去重的set集合中
				set.add(dataObject.get("CHECKLOCATION"));
			}
			if (hasSameData(dataObject.get("INSPECTIONMETHOD"), 4, setMap,
					dataObject
							.get("CHECKLOCATION").toString())) {
				JSONObject treeObj3 = new JSONObject();
				treeObj3.put("id",
						UUID.randomUUID().toString().replaceAll("-", ""));
				treeObj3.put("text", dataObject.get("INSPECTIONMETHOD"));
				treeObj3.put("pid", nodethree.get(dataObject.get("CHECKLOCATION")));
				arr.add(treeObj3);
				// 添加进去重的set集合中
				set.add(dataObject.get("CHECKLOCATION"));
			}
		}*/
		return arr;
	}

	/**
	 * 节点数据去重
	 * 
	 * @param object
	 *            当前节点值
	 * @param type
	 *            节点等级
	 * @param setMap
	 *            用来保存所有节点的map集合
	 * @param parentname
	 *            父节点的标识
	 */
	public boolean hasSameData(Object object, int type, Set setMap,
			String parentname) {
		// 保存当前节点值和节点等级
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put(object, type);
		// 保存父节点标识与节点值和节点等级的集合
		Map<Object, Object> parent = new HashMap<Object, Object>();
		parent.put(parentname, map);
		boolean flg = false;
		// 判断是否与该节点位置相同
		if (!setMap.contains(parent)) {
			setMap.add(parent);
			flg = true;
		} else {
			flg = false;
		}

		return flg;
	}

	
	
	/**
	 * 获取检查结果
	 */
	public DataObject[] getCheckedResults(DataObject obj,String base,String crew) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("equipmentname", String.valueOf(obj.get("equipmentname")));
		
		String comArr[] = String.valueOf(obj.get("componentname")).split(",");
		String param = "";
		for(String s : comArr){
			param += "'"+s+"',";
		}
		map.put("componentList", " and componentname in ("+param.substring(0,param.length()-1)+")");
		
		String locArr[] = String.valueOf(obj.get("checklocation")).split(",");
		param = "";
		for(String s : locArr){
			param += "'"+s+"',";
		}
		map.put("checklocationList", " and checklocation in ("+param.substring(0,param.length()-1)+")");
		
		String methodArr[] = String.valueOf(obj.get("inspectionmethod")).split(",");
		param = "";
		for(String s : methodArr){
			param += "'"+s+"',";
		}
		map.put("methodList", " and inspectionmethod in ("+param.substring(0,param.length()-1)+")");
		
		String dxArr[] = String.valueOf(obj.get("dxlc")).split(",");
		param = "";
		for(String s : dxArr){
			param += "'"+s+"',";
		}
		map.put("overhaulsequenceList", " and overhaulsequence in ("+param.substring(0,param.length()-1)+")");
		
		map.put("base", " and jd = "+base);
		map.put("crew",  " and jz = "+crew);
		
		String sql = "com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagement.impl.inspectionresultsmanagement.getcheckedresult";
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class,
				sql, map);
		return db;
	}

	/**
	 * 役检查结果导出
	 */
	public String exportExcel(String str) {
		String filePath = ApplicationContext.getInstance().getWarRealPath()
				+ "tempFile";
		return exportExcelCustomTitle(str, "役检结果数据统计", filePath);
	}
	
	public String exportExcelCustomTitle(String str,String titleName,String filePath){
		String fileName = "";
		try {
			JSONArray jsonArray = JSONArray.parseArray(str);
    		XSSFWorkbook wb = new XSSFWorkbook();    
    		
    		XSSFCellStyle style_bt = wb.createCellStyle();
			style_bt.setAlignment(HSSFCellStyle.ALIGN_CENTER);
			style_bt.setBorderTop(BorderStyle.THIN);
			style_bt.setBorderBottom(BorderStyle.THIN);
			style_bt.setBorderLeft(BorderStyle.THIN);
			style_bt.setBorderRight(BorderStyle.THIN);
			// 设置边框颜色
			style_bt.setBottomBorderColor(IndexedColors.BLACK.index);
			style_bt.setTopBorderColor(IndexedColors.BLACK.index);
			style_bt.setLeftBorderColor(IndexedColors.BLACK.index);
			style_bt.setRightBorderColor(IndexedColors.BLACK.index);
			style_bt.setFillBackgroundColor(new XSSFColor( new Color(220, 230, 241)));
			
        	XSSFSheet sheet = wb.createSheet(titleName);// 创建工作表
        	
            for(int i = 0 ; i < jsonArray.size(); i++){
            	XSSFRow row = sheet.createRow(i);
                JSONArray arr = (JSONArray)jsonArray.get(i);
                for(int j = 0 ; j < arr.size(); j++){
                	JSONObject obj = arr.getJSONObject(j);
                	XSSFCell cell = row.createCell(j);
                	
                	cell.setCellValue(obj.getString("text"));
                    cell.setCellStyle(style_bt);
                	if(Integer.parseInt(obj.getString("colspan")) > 1){
                    	sheet.addMergedRegion(new CellRangeAddress(i,i,j,(j+Integer.parseInt(obj.getString("colspan")))-1)); 
                    }
                }
                
            }
            for(int j = 0;j < sheet.getLastRowNum(); j++){
            	sheet.autoSizeColumn(j);
            }
            
            File file = new File(filePath);
            if (!file.exists()) {
                file.mkdirs();
            }
            fileName = titleName+System.currentTimeMillis()+".xlsx";
            String templateDir=filePath+File.separator+fileName;
            new File (templateDir).createNewFile();
            FileOutputStream fileOut = new FileOutputStream(templateDir);
            wb.write(fileOut);
            fileOut.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
    	return "tempFile"+File.separator+fileName;
    }
	
	
	
}
