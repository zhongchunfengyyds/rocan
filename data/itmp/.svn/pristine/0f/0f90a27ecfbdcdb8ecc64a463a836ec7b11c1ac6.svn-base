package com.cgn.itmp.conventionalislandand;

import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.cgn.itmp.basecommon.ExcelTemplate;
import com.cgn.itmp.basecommon.StringUtil;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.runtime.core.TraceLoggerFactory;
import com.eos.spring.DASDaoSupport;
import com.eos.system.exception.EOSRuntimeException;
import com.eos.system.logging.Logger;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述
 * </pre>
 * 
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class PressurepipingService extends DASDaoSupport implements
		IPressurepipingService {
	
	private static Logger logger=TraceLoggerFactory.getLogger(PressurepipingService.class);
	
	public void addPressurepiping(Pressurepiping pressurepiping) {
		getDASTemplate().insertEntityCascade(pressurepiping);
	}

	public void deletePressurepipings(Pressurepiping[] pressurepipings) {
		for (DataObject pressurepiping : pressurepipings) {
			getDASTemplate().deleteEntityCascade(pressurepiping);
		}
	}

	public void getPressurepiping(Pressurepiping pressurepiping) {
		getDASTemplate().expandEntity(pressurepiping);
		getDASTemplate()
				.expandRelation(pressurepiping, "waterpipefittinginfos");
		getDASTemplate().expandRelation(pressurepiping, "pipeweldinformations");
		getDASTemplate()
				.expandRelation(pressurepiping, "pipelinechemicalinfos");
		getDASTemplate()
				.expandRelation(pressurepiping, "equipmenthistoryinfos");
	}
	 /**
		 * 根据流程id获取检查修改后信息
		 * @param processInstId
		 * @param entityType
		 * @return
		 */
		public void getPressurepipingWork(String processInstId,Pressurepiping pressurepiping) {
			//设置默认的流程字段
			if(StringUtil.isEmpty(processInstId)){
				return;
			}
			getDASTemplate().expandEntity(pressurepiping);
			getDASTemplate()
					.expandRelation(pressurepiping, "waterpipefittinginfos");
			getDASTemplate().expandRelation(pressurepiping, "pipeweldinformations");
			getDASTemplate()
					.expandRelation(pressurepiping, "pipelinechemicalinfos");
			getDASTemplate()
					.expandRelation(pressurepiping, "equipmenthistoryinfos");
		}
		
	public Pressurepiping[] queryPressurepipings(CriteriaType criteriaType,
			PageCond pageCond) {
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(
				criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(
				Pressurepiping.class, dasCriteria, pageCond);
	}

	public void updatePressurepiping(Pressurepiping pressurepiping) {
		getDASTemplate().updateEntityCascade(pressurepiping);
	}
	//压力管道草稿箱新增提交
		public void updatePressurepipingByNumber(Pressurepiping_modif pressurepipingmodif,String user) {
//			 Map<String, String> map=new HashMap<String, String>();
//				map.put("base", base);
//				map.put("crew", crew);
//				map.put("uuid", pressurepiping.getString("uuid"));
//			String sql="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.pressurepiping.delpressurepiping";
//			  try {
//				DatabaseExt.executeNamedSql("default",sql, map);
//				} catch (EOSRuntimeException e) {
//					e.printStackTrace();
//				}
			  	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
			  	pressurepipingmodif.set("processStatus","0");
			  	pressurepipingmodif.set("applicant",user);
			  	pressurepipingmodif.set("applicanttime", dateFormat.format(new Date()));
				getDASTemplate().updateEntityCascade(pressurepipingmodif); 
		}


	/**
	 * excel批量导入
	 * 
	 * @param excelFile
	 * @param entityName
	 * @param tempFile
	 * @param jd
	 * @param jz
	 * @param type
	 * @param ifDxmk
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List importMap(String excelFile, String entityName,
			String tempFile, String jd, String jz, String type, String ifDxmk)
			throws Exception {
		
		//文件名中文转码
		excelFile = java.net.URLDecoder.decode(excelFile, "UTF-8");
		// 最后返回的数据
		List result = new ArrayList();//反馈结果
		ExcelTemplate template=new ExcelTemplate();
		 boolean b = template.judgeExcelTemplate(excelFile, tempFile);
		 //导入模板错误
		 if(!b){
			 Map<String, Object> map = new HashMap<String, Object>();
			 map.put("code", "0");
			 map.put("message", "导入数据模板错误，请校验导入模板！");
			 result.add(map);
			 return result;
		 }
		 
		logger.info("<<<<<<< 压力管道数据导入开始 >>>>>>>");
		XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(excelFile));
		Iterator<XSSFSheet> sheets = wb.iterator();
		//总数
		int allCounts = 0;
		
		//所有的数据
		List<Map<String, Object>> dataList = new ArrayList<Map<String,Object>>();
		
		while (sheets.hasNext()) {
			XSSFSheet sheet = sheets.next();
			//第一行 获取实体名
			String sheetEntityName = sheet.getRow(0).getCell(0).getStringCellValue();
			//第二行 获取字段名称 
			XSSFRow rowColumn = sheet.getRow(1);
			//字段名称
			List<String> columnList = new ArrayList<String>();
			for(int j = 0; j < rowColumn.getPhysicalNumberOfCells(); j++){
				String columnStr = rowColumn.getCell(j).getStringCellValue();
				columnList.add(columnStr.substring(1,columnStr.length()));
			}
			
			//获取所有的数据
			DataObject[] data = getSheetValue(sheet,sheetEntityName,rowColumn,jd,jz);
			allCounts += data.length;
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("rowColumn", columnList);
			map.put("data", data);
			dataList.add(map);
		}
		
		//数据存储
		Map<String, Object> resMap = saveDatas(dataList);
		
		logger.info("amount:"+allCounts);
		result.add(0, allCounts+"");
		logger.info("success:"+(allCounts-Integer.parseInt(String.valueOf(resMap.get("failNumber")))));
		result.add(1, (allCounts-Integer.parseInt(String.valueOf(resMap.get("failNumber"))))+"" );
 		result.add(2, Integer.parseInt(String.valueOf(resMap.get("failNumber")))+"");
 		logger.info("fail:"+Integer.parseInt(String.valueOf(resMap.get("failNumber"))));
 		if(Integer.parseInt(String.valueOf(resMap.get("failNumber"))) > 0){
 			result.add(3,new ExcelTemplate().returnErrorResultPipe(tempFile,(List<Map<String,Object>>)resMap.get("failList"),excelFile));
 		}
 		logger.info("<<<<<<< 压力管道数据导入结束 >>>>>>>");
		return result;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Map<String, Object> saveDatas(List<Map<String, Object>> list){
		Map<String, Object> resultMap = new HashMap<String, Object>();
		//导入未成功的记录
		List fail = new ArrayList();
		//失败数
		int f = 0;
		//成功导入的主表主键list 
		List<String> keyList = new ArrayList<String>();
		Map<String,Object> uuid=new HashMap();			
		//循环遍历存储
		for(int i = 0; i < list.size(); i++){
			Map<String, Object> map = (Map<String, Object>) list.get(i);
			DataObject[] data = (DataObject[]) map.get("data");
			Map<String, Object> failMap = new HashMap<String, Object>();
			failMap.put("sheetNumber", i);
			failMap.put("rowColumn", map.get("rowColumn"));
			List<DataObject> failList = new ArrayList<DataObject>();
			for(int j= 0;j< data.length;j++){
				try {
					if (i == 0) {
						int count = DatabaseUtil.expandEntity("default", data[j]);
						if(count > 0){
							failList.add(data[j]);
							f++;
						}else{
							if(StringUtils.isNotBlank(data[j].getString("pipenumber"))){
								keyList.add(data[j].getString("pipenumber"));
								uuid.put(data[j].getString("pipenumber"),data[j].getString("uuid"));
								SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
								data[j].set("createtime",dateFormat.format(new Date()));
								DatabaseUtil.insertEntity("default", data[j]);	
							}else{
								failList.add(data[j]);
								f++;
							}
						}
					}else{
						if(keyList.size() > 0 && keyList.contains(data[j].getString("pipenumber"))){
								data[j].set("realid",uuid.get(data[j].getString("pipenumber")));
								SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
								data[j].set("createtime",dateFormat.format(new Date()));
								DatabaseUtil.insertEntity("default", data[j]);	
						}else{
							failList.add(data[j]);
							f++;
						}
					}
				} catch (Exception e) {
					failList.add(data[j]);
					f++;
				}
			}
			failMap.put("failDataList", failList);
			fail.add(failMap);
		}
		resultMap.put("failNumber", f);
		resultMap.put("failList", fail);
		return resultMap; 
	}
	
	/**
	 * 获取单个sheet页数据
	 * @param sheet
	 * @return
	 */
	public DataObject[] getSheetValue(XSSFSheet sheet,String entityName,XSSFRow rowColumn,String jd, String jz){
		//实体数组
		DataObject[] entityArr = new DataObject[sheet.getPhysicalNumberOfRows()-3];
		//第四行 获取多行数据，循环遍历
		for(int i= 3;i<sheet.getPhysicalNumberOfRows(); i++){
			//定义单个实体对象
			DataObject entity = DataObjectUtil.createDataObject(entityName);
			//获取单行记录
			XSSFRow row = sheet.getRow(i);
			if(isRowEmpty(row)){
				continue;
			}
			//遍历每列数据
			for (int j = 0; j < row.getLastCellNum(); j++) {
				if(row.getCell(j) != null){
					row.getCell(j).setCellType(Cell.CELL_TYPE_STRING);
					if(StringUtils.isNotBlank(row.getCell(j).getStringCellValue())){
						//设置对象 (字段，值)
						String columnStr = rowColumn.getCell(j).getStringCellValue();
						entity.set(columnStr.substring(1,columnStr.length()), row.getCell(j)== null?"":row.getCell(j).getStringCellValue());
					}
				}
			}
			//添加默认字段
			entity.set("uuid", UUID.randomUUID().toString().replaceAll("-",""));
			entity.set("jd", jd);
			entity.set("jz", jz);
			entity.set("isdel", "0");
			if(entityName.equals("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping")){
				entity.set("heatpreservation",ExcelTemplate.returnDicValue("option", entity.getString("heatpreservation"), "DICTNAME", "DICTID"));
			}
			//添加进实体类数组
			entityArr[i-3] = entity;
		}
		
		return reverseArray(entityArr);
	}
	
	/**
	 * 数组反转
	 * @param data
	 * @return
	 */
	public DataObject[] reverseArray(DataObject[] data){
		DataObject[] arrs = new DataObject[data.length];
		for(int i = 0 ;i < data.length ; i++){
			arrs[i] = data[data.length-i-1];
		}
		return arrs;
	}
	
	
	/**
	 * 判断空行
	 * @param row
	 * @return
	 */
	public boolean isRowEmpty(XSSFRow row){
		boolean b = true;
		for (int i = row.getFirstCellNum(); i < row.getLastCellNum(); i++) {
			Cell cell = row.getCell(i);
			if(cell != null && cell.getCellType() != Cell.CELL_TYPE_BLANK){
				b = false;
			}
		}
		return b;
	}
	
	public String getPipeNumber(String base, String pipenumber,String crew) {
		int count=0;
		String flag=null;
		if(StringUtil.isEmpty(base)||StringUtil.isEmpty(pipenumber))return null;
		Map<String, String> map=new HashMap<String, String>();
		map.put("base", base);
		map.put("crew", crew);
		map.put("pipenumber", pipenumber);
		String sql="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.pressurepiping.getpipenumber";
		DataObject[] da = getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		if(da.length>0){
			count=da[0].getInt("count");
		}
		if(count>0){
			flag="success";
		}
		return flag;
	}
	public void adminaddPressurepipingwork(Pressurepiping_modif pressurepiping_modif,Pressurepiping pressurepiping,String user,String type){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		pressurepiping.set("uuid",UUID.randomUUID().toString().replace("-",""));
		pressurepiping.set("createtime", dateFormat.format(new Date()));
		if(type.equals("1")){//不是管理员
			pressurepiping_modif.set("isdel","3");
			pressurepiping_modif.set("processInstId",pressurepiping.get("processInstId"));
			pressurepiping_modif.set("processStatus","0");
			pressurepiping_modif.set("applicant",user);
			pressurepiping_modif.set("applicanttime", dateFormat.format(new Date()));
			pressurepiping_modif.set("uuid",UUID.randomUUID().toString().replace("-",""));
			getDASTemplate().insertEntityCascade(pressurepiping_modif);
		}else{
			getDASTemplate().insertEntityCascade(pressurepiping);
		}
	}
		
//走流程用户修改
public void adminupdatePressurepipingwork(Pressurepiping_modif pressurepiping_modif,Pressurepiping pressurepiping,String user,String type,String pipenumber) {
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
	//修改原数据流程状态	
		DataObject newdata = DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping");
		newdata.set("uuid",pressurepiping.get("uuid"));
		newdata.set("processStatus","0");
		newdata.set("processInstId",pressurepiping.get("processInstId"));
		DatabaseUtil.updateEntity("default", newdata); 
	
		pressurepiping_modif.set("relationid",pressurepiping.get("uuid"));//获取关联id
		pressurepiping_modif.set("uuid",UUID.randomUUID().toString().replace("-", ""));
		pressurepiping_modif.set("processInstId",pressurepiping.get("processInstId"));
		pressurepiping_modif.set("processStatus","0");
		pressurepiping_modif.set("applicant",user);
		pressurepiping_modif.set("applicanttime", dateFormat.format(new Date()));
		getDASTemplate().insertEntityCascade(pressurepiping_modif);
}
//管理员直接修改
public void adminbyupdatePressurepipingwork(Pressurepiping pressurepiping,String user,String pipenumber,String type,String base,String crew) {
		getDASTemplate().updateEntityCascade(pressurepiping); 		
}
 /**
	 * 同意并结束流程方法
	 */
  public void endPressurepipingworkTemple(DataObject data,String user,String entity){
	  data.set("uuid",data.getString("relationid"));
	  DataObject temp=DataObjectUtil.convertDataObject(data, entity, false);
	  temp.set("changeuser",user);//获取用户名
	  temp.set("processStatus","3");
	  DatabaseExt.updateEntityCascade("default", temp); 
  }
  
  /**
   * 同意并结束流程方法---（add）
   */
  public void endaddPressurepipingworkTemple(Pressurepiping pressurepiping,String user){
	  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
	  pressurepiping.set("uuid",UUID.randomUUID().toString().replace("-", ""));//结束流程状态++
	  pressurepiping.set("processStatus","3");//结束流程状态++
	  pressurepiping.set("changer",user);//结束流程状态++
	  pressurepiping.set("createtime",dateFormat.format(new Date()));
	  getDASTemplate().insertEntityCascade(pressurepiping); 
  }
  
  /**
	 * 同意并结束流程(修改),删除原数据
	 */
  public void endupdatePressurepipingwork(Pressurepiping pressurepiping,String user,String relationid,String base,String crew) {
	  Map<String, String> map=new HashMap<String, String>();
		map.put("base", base);
		map.put("crew", crew);
		map.put("uuid", relationid);
	  String sql="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.pressurepiping.delpressurepiping";
	  DataObject obj = DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping");	
	  obj.set("uuid", relationid);
	  DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default", obj);
	  String datatime="";
	  if(datas!=null&&datas.length>0){
		  datatime=datas[0].getString("createtime");
	  }
	  try {
		DatabaseExt.executeNamedSql("default",sql, map);
		} catch (EOSRuntimeException e) {
			e.printStackTrace();
		}
	  if(!StringUtil.isEmpty(datatime)){
		  pressurepiping.set("createtime",datatime);//获取用户名
	  }
	  pressurepiping.set("changeuser",user);//获取用户名
	  pressurepiping.set("processStatus","3");
	  getDASTemplate().insertEntity(pressurepiping);
	  
	}
  /**
	 * 同意并结束流程(修改)
	 */
public void endPressurepipingwork(DataObject data, String user) {
	endPressurepipingworkTemple(data,user,"com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping");
}
/**
 * 草稿修改提交 将未修改的数据的主键 作为关联ID修改modif表
 */
public void updatePressurepipingMof(Pressurepiping_modif pressurepiping_modif,String relationid,String user) {
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		pressurepiping_modif.set("processStatus","0");
		pressurepiping_modif.set("applicant",user);
		pressurepiping_modif.set("applicanttime", dateFormat.format(new Date()));
		getDASTemplate().updateEntityCascade(pressurepiping_modif);
}
/**
 * 同意并结束流程(add)
 */
public void endaddPressurepipingwork(Pressurepiping pressurepiping, String user) {
	endaddPressurepipingworkTemple(pressurepiping,user);
}

/**
 * 获取压力管道所有子表数据
 * @param realidList
 * @return
 */
public List<Map<String, Object>> getAllChildDatas(List<String> realidList){
	
	 List<Map<String, Object>> dataList = new ArrayList<Map<String,Object>>();
	 //汽水管件信息
	 Object[] waterpipefittinginfoEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.pressurepiping.getWaterpipefittinginfo", realidList);
	 Map<String, Object> waterpipefittinginfoMap = new HashMap<String, Object>();
	 waterpipefittinginfoMap.put("sheetName", "汽水管件信息");
	 waterpipefittinginfoMap.put("column", "pipenumber,pipesegmentno,pipefittingpositionno,pipetype,fittingnumber,pipeouterdiameter,pipewallthickness,pipelength,pipematerial,materialstandard,dimensionaltolerance,manufacturingform,elbowradius,elbowangle,branchangle,branchpipenumber,furnacelotnumber,materialcontainscr,remarks");
	 waterpipefittinginfoMap.put("columnName", "管道编号,管段编号,管件位置号,管件类型,管件编号,管件外径mm,管件壁厚mm,管件长度mm,管件材质,材质标准,尺寸公差,制造形式,弯头半径,弯头角度,支管角度,支管管道号,炉批号,材料含Cr%,备注");
	 waterpipefittinginfoMap.put("data", waterpipefittinginfoEntityDatas);
	 dataList.add(waterpipefittinginfoMap);
	 
	//管道焊缝信息
	 Object[] pipeweldinformationEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.pressurepiping.getPipeweldinformation", realidList);
	 Map<String, Object> pipeweldinformationMap = new HashMap<String, Object>();
	 pipeweldinformationMap.put("sheetName", "管道焊缝信息");
	 pipeweldinformationMap.put("column", "pipenumber,weldnumber,characteristicparameter");
	 pipeweldinformationMap.put("columnName", "管道编号,焊缝编号,特性参数");
	 pipeweldinformationMap.put("data", pipeweldinformationEntityDatas);
	 dataList.add(pipeweldinformationMap);
	 
	 //管道化学成分信息
	 Object[] pipelinechemicalinfoEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.pressurepiping.getPipelinechemicalinfo", realidList);
	 Map<String, Object> pipelinechemicalinfoMap = new HashMap<String, Object>();
	 pipelinechemicalinfoMap.put("sheetName", "管道化学成分信息");
	 pipelinechemicalinfoMap.put("column", "pipenumber,element,contents");
	 pipelinechemicalinfoMap.put("columnName", "管道编号,元素,含量");
	 pipelinechemicalinfoMap.put("data", pipelinechemicalinfoEntityDatas);
	 dataList.add(pipelinechemicalinfoMap);
	 
	 //设备历史信息
	 Object[] equipmenthistoryinfoEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.pressurepiping.getEquipmenthistoryinfo", realidList);
	 Map<String, Object> equipmenthistoryinfoMap = new HashMap<String, Object>();
	 equipmenthistoryinfoMap.put("sheetName", "设备历史信息");
	 equipmenthistoryinfoMap.put("column", "pipenumber,deviceversion,commissiontime,freezereplacetime,freezereplacereason,enteringperson,enteringtime,operating");
	 equipmenthistoryinfoMap.put("columnName", "管道编号,设备版本,投运时间,冻结/更换时间,冻结/更换原因,录入人,录入时间,操作");
	 equipmenthistoryinfoMap.put("data", equipmenthistoryinfoEntityDatas);
	 dataList.add(equipmenthistoryinfoMap);
	 
	 return dataList;
}


}
