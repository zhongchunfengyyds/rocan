
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
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel;
import com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif;
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
 * @author jirukang (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class PressurevesselService extends DASDaoSupport implements IPressurevesselService{
	
	private static Logger logger=TraceLoggerFactory.getLogger(PressurevesselService.class);
	
	public void addPressurevessel(Pressurevessel pressurevessel){
		/*getDASTemplate().getPrimaryKey(pressurevessel);*/
		getDASTemplate().insertEntityCascade(pressurevessel);
	}

	public void deletePressurevessels(Pressurevessel[] pressurevessels ){
		for(DataObject pressurevessel:pressurevessels){
			getDASTemplate().deleteEntityCascade(pressurevessel);
		}
	}


	public void getPressurevessel(Pressurevessel pressurevessel){
		getDASTemplate().expandEntity(pressurevessel);
		getDASTemplate().expandRelation(pressurevessel, "longitudinalwelds");
		getDASTemplate().expandRelation(pressurevessel, "shellgirthwelds");
		getDASTemplate().expandRelation(pressurevessel, "connectingpipes");
		getDASTemplate().expandRelation(pressurevessel, "safetyvalves");
		getDASTemplate().expandRelation(pressurevessel, "pressuregauges");
		getDASTemplate().expandRelation(pressurevessel, "levelgauges");
		getDASTemplate().expandRelation(pressurevessel, "temperatureinstruments");
		getDASTemplate().expandRelation(pressurevessel, "rupturediscs");
		getDASTemplate().expandRelation(pressurevessel, "supplementaryinfos");
		getDASTemplate().expandRelation(pressurevessel, "equipmenthistoryinfos");
	}


	public Pressurevessel[] queryPressurevessels(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Pressurevessel.class, dasCriteria, pageCond);
	}


    public void updatePressurevessel(Pressurevessel pressurevessel){
	    getDASTemplate().updateEntityCascade(pressurevessel);
    }
   
  //压力容器草稿箱更改新增提交
  		public void updatePressurevesselByNumber(Pressurevessel_modif pressurevessel_modif,String user) {
//  			String sql="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.delpressurevessel";
//  			  try {
//  				DatabaseExt.executeNamedSql("default",sql, pressurevessel.get("uuid"));
//  				} catch (EOSRuntimeException e) {
//  					e.printStackTrace();
//  				}
  			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
  			pressurevessel_modif.set("processStatus","0");
  			pressurevessel_modif.set("applicant",user);
  			pressurevessel_modif.set("applicanttime", dateFormat.format(new Date()));
  			getDASTemplate().updateEntityCascade(pressurevessel_modif); 
  		}
    
  	//走流程用户修改
  		public void adminupdatePressurevesselwork(Pressurevessel_modif pressurevessel_modif,Pressurevessel pressurevessel,String user,String type) {
  				
	  			DataObject newdata = DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel");
	  			newdata.set("uuid",pressurevessel.get("uuid"));
	  			newdata.set("processStatus","0");
	  			newdata.set("processInstId",pressurevessel.get("processInstId"));
	  			DatabaseUtil.updateEntity("default", newdata); 
  			
	  			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
  				pressurevessel_modif.set("relationid",pressurevessel.get("uuid"));//获取关联id
  				pressurevessel_modif.set("uuid",UUID.randomUUID().toString().replace("-", ""));
  				pressurevessel_modif.set("processStatus","0");
  				pressurevessel_modif.set("applicant",user);
  				pressurevessel_modif.set("applicanttime", dateFormat.format(new Date()));
  				getDASTemplate().insertEntityCascade(pressurevessel_modif);
  		}
  		//管理员直接修改
  		public void adminbyupdatePressurevesselwork(Pressurevessel pressurevessel,String user,String type) {
  			String sql="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.delpressurevessel";
  			DataObject obj = DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel");	
  			obj.set("uuid", pressurevessel.get("uuid"));
  			DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default", obj);
  			String datatime="";
  			if(datas!=null&&datas.length>0){
  				datatime=datas[0].getString("createtime");
  			}
  			  try {
  				DatabaseExt.executeNamedSql("default",sql, pressurevessel.get("uuid"));
  				} catch (EOSRuntimeException e) {
  					e.printStackTrace();
  				}
  			if(!StringUtil.isEmpty(datatime)){
  	  			pressurevessel.set("createtime",datatime);//获取用户名
  	  	  }
  				getDASTemplate().insertEntityCascade(pressurevessel); 		
  		}
  		
  		/**
  		 * 草稿修改提交 将未修改的数据的主键 作为关联ID修改modif表
  		 */
  		public void updatePressurevesselMof(Pressurevessel_modif pressurevessel_modif,String user) {
  			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
  			pressurevessel_modif.set("processStatus","0");
  			pressurevessel_modif.set("applicant",user);
  			pressurevessel_modif.set("applicanttime", dateFormat.format(new Date()));
  			getDASTemplate().updateEntityCascade(pressurevessel_modif);
  		}
  		
  		/**
  		 * 同意并结束流程(修改),删除原数据
  		 */
  	  public void endupdatePressurevesselwork(Pressurevessel pressurevessel,String user,String relationid) {
  		String sql="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.delpressurevessel";
  		  
  		DataObject obj = DataObjectUtil.createDataObject("com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel");	
	  	  obj.set("uuid", relationid);
	  	  DataObject[] datas = DatabaseUtil.queryEntitiesByTemplate("default", obj);
	  	  String datatime="";
	  	  if(datas!=null&&datas.length>0){
	  		  datatime=datas[0].getString("createtime");
	  	  }
  		try {
  			DatabaseExt.executeNamedSql("default",sql, relationid);
  			} catch (EOSRuntimeException e) {
  				e.printStackTrace();
  			}
  		if(!StringUtil.isEmpty(datatime)){
  			pressurevessel.set("createtime",datatime);//获取用户名
  	  }
  		  pressurevessel.set("changeuser",user);//获取用户名
  		  pressurevessel.set("processStatus","3");
  		  getDASTemplate().insertEntity(pressurevessel); 
  		}
  		
   	/**
   	 * 获取设备编号数量
   	 */
	public String getEquipmentNumber(String base, String equipmentnumber,String crew) {
		int count=0;
		String flag=null;
		if(StringUtil.isEmpty(base)||StringUtil.isEmpty(equipmentnumber))return null;
		Map<String, String> map=new HashMap<String, String>();
		map.put("base", base);
		map.put("crew", crew);
		map.put("equipmentnumber", equipmentnumber);
		String sql="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.impl.pressurepiping.getequipmentnumber";
		DataObject[] da = getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		if(da.length>0){
			count=da[0].getInt("count");
		}
		if(count>0){
			flag="success";
		}
		return flag;
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
		 
		logger.info("<<<<<<< 压力容器数据导入开始 >>>>>>>");
		
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
				columnList.add(rowColumn.getCell(j).getStringCellValue());
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
 		logger.info("<<<<<<< 压力容器数据导入结束 >>>>>>>");
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
							if(StringUtils.isNotBlank(data[j].getString("equipmentnumber"))){
								keyList.add(data[j].getString("equipmentnumber"));
								uuid.put(data[j].getString("equipmentnumber"),data[j].getString("uuid"));
								SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
								data[j].set("createtime",dateFormat.format(new Date()));
								DatabaseUtil.insertEntity("default", data[j]);	
							}else{
								failList.add(data[j]);
								f++;
							}
						}
					}else{
						if(keyList.size() > 0 && keyList.contains(data[j].getString("equipmentnumber"))){
							data[j].set("realid",uuid.get(data[j].getString("equipmentnumber")));
							SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
							data[j].set("createtime",dateFormat.format(new Date()));
							DatabaseUtil.insertEntity("default", data[j]);	
						}else{
							failList.add(data[j]);
							f++;
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
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
						entity.set(rowColumn.getCell(j).getStringCellValue(), row.getCell(j).getStringCellValue());	
					}
				}
			}
			
			//添加默认字段
			entity.set("uuid", UUID.randomUUID().toString().replaceAll("-",""));
			entity.set("jd", jd);
			entity.set("jz", jz);
			entity.set("isdel", "0");
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
	
	
	/**
	 * 管理员插入数据
	 * @param pressurevessel
	 */
	public void adminaddPressurevesselwork(Pressurevessel_modif pressurevessel_modif,Pressurevessel pressurevessel,String user,String type){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		pressurevessel.set("uuid",UUID.randomUUID().toString().replace("-",""));
		pressurevessel.set("createtime", dateFormat.format(new Date()));
		if(type.equals("1")){//不是管理员
			pressurevessel_modif.set("isdel","3");
			pressurevessel_modif.set("processInstId",pressurevessel.get("processInstId"));
			pressurevessel_modif.set("processStatus","0");
			pressurevessel_modif.set("applicant",user);
			pressurevessel_modif.set("applicanttime", dateFormat.format(new Date()));
			pressurevessel_modif.set("uuid",UUID.randomUUID().toString().replace("-",""));
			getDASTemplate().insertEntityCascade(pressurevessel_modif);
		}else{
			getDASTemplate().insertEntityCascade(pressurevessel);
		}
	}
	
	/**
	 * 根据流程id获取检查修改后信息
	 * @param processInstId
	 * @param entityType
	 * @return
	 */
	public void getPressurevesselWork(String processInstId,Pressurevessel pressurevessel) {
		//设置默认的流程字段
		if(StringUtil.isEmpty(processInstId)){
			return;
		}
		getDASTemplate().expandEntity(pressurevessel);
		getDASTemplate().expandRelation(pressurevessel, "longitudinalwelds");
		getDASTemplate().expandRelation(pressurevessel, "shellgirthwelds");
		getDASTemplate().expandRelation(pressurevessel, "connectingpipes");
		getDASTemplate().expandRelation(pressurevessel, "safetyvalves");
		getDASTemplate().expandRelation(pressurevessel, "pressuregauges");
		getDASTemplate().expandRelation(pressurevessel, "levelgauges");
		getDASTemplate().expandRelation(pressurevessel, "temperatureinstruments");
		getDASTemplate().expandRelation(pressurevessel, "rupturediscs");
		getDASTemplate().expandRelation(pressurevessel, "supplementaryinfos");
		getDASTemplate().expandRelation(pressurevessel, "equipmenthistoryinfos");
	}
	/**
	 * 同意并结束流程(add)
	 */
	public void endaddPressurevesselwork(Pressurevessel pressurevessel, String user) {
		endaddPressurevesselworkTemple(pressurevessel,user);
	}
	  /**
	   * 同意并结束流程方法---（add）
	   */
	  public void endaddPressurevesselworkTemple(Pressurevessel pressurevessel,String user){
		  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		  pressurevessel.set("uuid",UUID.randomUUID().toString().replace("-", ""));//结束流程状态++
		  pressurevessel.set("processStatus","3");//结束流程状态++
		  pressurevessel.set("changer",user);//结束流程状态++
		  pressurevessel.set("createtime",dateFormat.format(new Date()));
		  getDASTemplate().insertEntityCascade(pressurevessel); 
	  }
	  
	  /**
	   * 获取压力容器子表数据
	   * @param realidList
	   * @param realid
	   * @return
	   */
	  public List<Map<String, Object>> getAllChildDatas(List<String> realidList){
		 List<Map<String, Object>> dataList = new ArrayList<Map<String,Object>>();
		 //壳体纵焊缝
		 Object[] longitudinalweldEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.getLongitudinalweld", realidList);
		 Map<String, Object> longitudinalweldMap = new HashMap<String, Object>();
		 longitudinalweldMap.put("sheetName", "壳体纵焊缝");
		 longitudinalweldMap.put("column", "equipmentnumber,slweldnumber,slweldparameters");
		 longitudinalweldMap.put("columnName", "设备编号,壳体纵焊缝编号,壳体纵焊缝特性参数");
		 longitudinalweldMap.put("data", longitudinalweldEntityDatas);
		 dataList.add(longitudinalweldMap);
		 
		 //壳体环焊缝
		 Object[] shellgirthweldEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.getShellgirthweld", realidList);
		 Map<String, Object> shellgirthweldMap = new HashMap<String, Object>();
		 shellgirthweldMap.put("sheetName", "壳体环焊缝");
		 shellgirthweldMap.put("column", "equipmentnumber,sgweldnumber,srweldparameters");
		 shellgirthweldMap.put("columnName", "设备编号,壳体环焊缝编号,壳体环焊缝特性参数");
		 shellgirthweldMap.put("data", shellgirthweldEntityDatas);
		 dataList.add(shellgirthweldMap);
		 
		 //连接管道
		 Object[] connectingpipeEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.getConnectingpipe", realidList);
		 Map<String, Object> connectingpipeMap = new HashMap<String, Object>();
		 connectingpipeMap.put("sheetName", "连接管道");
		 connectingpipeMap.put("column", "equipmentnumber,connectpipenumber,connectpipeparameter");
		 connectingpipeMap.put("columnName", "设备编号,连接管道编号,连接管道特性参数");
		 connectingpipeMap.put("data", connectingpipeEntityDatas);
		 dataList.add(connectingpipeMap);
		 
		 //安全阀
		 Object[] safetyvalveEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.getSafetyvalve", realidList);
		 Map<String, Object> safetyvalveMap = new HashMap<String, Object>();
		 safetyvalveMap.put("sheetName", "安全阀");
		 safetyvalveMap.put("column", "equipmentnumber,svnumber,svmodel,svinstallationlocation,svsettingpressure,svnominalpressure,svopeningpressure,svsealingpressure,svnominaldiameter,svquantity,svmanufacturer");
		 safetyvalveMap.put("columnName", "设备编号,安全阀编号,安全阀型号,安全阀安装位置,安全阀整定压力,安全阀公称压力,安全阀开启压力,安全阀密封压力,安全阀公称通径,安全阀数量,安全阀制造厂家");
		 safetyvalveMap.put("data", safetyvalveEntityDatas);
		 dataList.add(safetyvalveMap);
		 
		 //压力表
		 Object[] pressuregaugeEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.getPressuregauge", realidList);
		 Map<String, Object> pressuregaugeMap = new HashMap<String, Object>();
		 pressuregaugeMap.put("sheetName", "压力表");
		 pressuregaugeMap.put("column", "equipmentnumber,pgnumber,pgmodel,pggerange,pginstallationlocation,pgaccuracy,pgquantity,pgmanufacturer");
		 pressuregaugeMap.put("columnName", "设备编号,压力表编号,压力表型号,压力表量程,压力表安装位置,压力表精度(误差),压力表数量,压力表制造厂家");
		 pressuregaugeMap.put("data", pressuregaugeEntityDatas);
		 dataList.add(pressuregaugeMap);
		 
		 //液位计
		 Object[] levelgaugeEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.getLevelgauge", realidList);
		 Map<String, Object> levelgaugeMap = new HashMap<String, Object>();
		 levelgaugeMap.put("sheetName", "液位计");
		 levelgaugeMap.put("column", "equipmentnumber,lgnumber,lgmodel,lggerange,lginstallationlocation,lgaccuracy,lgquantity,lgmanufacturer");
		 levelgaugeMap.put("columnName", "设备编号,液位计编号,液位计型号,液位计量程,液位计安装位置,液位计精度(误差),液位计数量,液位计制造厂家");
		 levelgaugeMap.put("data", levelgaugeEntityDatas);
		 dataList.add(levelgaugeMap);
		 
		 //测温仪表
		 Object[] temperatureinstrumentEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.getTemperatureinstrument", realidList);
		 Map<String, Object> temperatureinstrumentMap = new HashMap<String, Object>();
		 temperatureinstrumentMap.put("sheetName", "测温仪表");
		 temperatureinstrumentMap.put("column", "equipmentnumber,tinumber,timodel,tigerange,tiinstallationlocation,tiaccuracy,tiquantity,timanufacturer");
		 temperatureinstrumentMap.put("columnName", "设备编号,测温仪表编号,测温仪表型号,测温仪表量程,测温仪表安装位置,测温仪表精度(误差),测温仪表数量,测温仪表制造厂家");
		 temperatureinstrumentMap.put("data", temperatureinstrumentEntityDatas);
		 dataList.add(temperatureinstrumentMap);
		 
		 //爆破片
		 Object[] rupturediscEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.getRupturedisc", realidList);
		 Map<String, Object> rupturediscMap = new HashMap<String, Object>();
		 rupturediscMap.put("sheetName", "爆破片");
		 rupturediscMap.put("column", "equipmentnumber,rdnumber,rdmodel,rdgerange,rdinstallationlocation,rdaccuracy,rdquantity,rdmanufacturer");
		 rupturediscMap.put("columnName", "设备编号,爆破片编号,爆破片型号,爆破片量程,爆破片安装位置,爆破片精度(误差),爆破片数量,爆破片制造厂家");
		 rupturediscMap.put("data", rupturediscEntityDatas);
		 dataList.add(rupturediscMap);
		 
		 //辅助信息
		 Object[] supplementaryinfoEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.getSupplementaryinfo", realidList);
		 Map<String, Object> supplementaryinfoMap = new HashMap<String, Object>();
		 supplementaryinfoMap.put("sheetName", "辅助信息");
		 supplementaryinfoMap.put("column", "equipmentnumber,registrationauthority,registrationdate,deviceregistrationcode,registrant,useunit,useorganizationcode,useunitaddress,postalcode,safetymanagementdepartment,securitymanager,contactnumber,useregistrationnumber,serialnumber,updatedateday,propertyunitandcode,manufacturecountry,manufacturedate,designunitandcode,designdate,designspecification,manufacturingunitandcode,undertakingorganizationcode,manufacturingspecification,installationunitandcode,installationdate,usedate,supervisoryunitandcode,inspectionentity,inspectionunitcode,inspectiondate,identifycategory,mainproblem,testresults,reportnumber,nextinspectiondate,accidentcategory,accidentdate,accidenthandling,devicechangemethod,equipmentchangeproject,equipmentchangedate,changecommitmentunit");
		 supplementaryinfoMap.put("columnName", "设备编号,注册登记机构,注册登记日期,设备注册代码,注册登记人员,使用单位,使用单位组织机构代码,使用单位地址,邮政编码,安全管理部门,安全管理人员,联系电话,使用登记证编号,出厂编号,更新日期,产权单位及代码,制造国,制造日期,设计单位及代码,设计日期,设计规范,制造单位以及代码,承担单位组织机构代码,制造规范,安装单位及代码,安装日期,投用日期,监督单位及代码,检验单位,检验单位代码,检验日期,检验类别,主要问题,检验结论,报告书编号,下次检验日期,事故类别,事故发生日期,事故处理,设备变更方式,设备变更项目,设备变更日期,变更承担单位");
		 supplementaryinfoMap.put("data", supplementaryinfoEntityDatas);
		 dataList.add(supplementaryinfoMap);
		 
		 //设备历史信息
		 Object[] equipmenthistoryinfoEntityDatas = DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.impl.pressurevessel.getEquipmenthistoryinfo", realidList);
		 Map<String, Object> equipmenthistoryinfoMap = new HashMap<String, Object>();
		 equipmenthistoryinfoMap.put("sheetName", "设备历史信息");
		 equipmenthistoryinfoMap.put("column", "equipmentnumber,deviceversion,commissiontime,freezereplacetime,freezereplacereason,enteringperson,enteringtime,operating");
		 equipmenthistoryinfoMap.put("columnName", "设备编号,设备版本,投运时间,冻结/更换时间,冻结/更换原因,录入人,录入时间,操作");
		 equipmenthistoryinfoMap.put("data", equipmenthistoryinfoEntityDatas);
		 dataList.add(equipmenthistoryinfoMap);
		 
		 return dataList;
	  }
	  
	  
}
