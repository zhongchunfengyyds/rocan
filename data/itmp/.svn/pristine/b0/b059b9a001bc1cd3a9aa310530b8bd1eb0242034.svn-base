
package com.cgn.itmp.weldingmanagement.Welder.impl;

import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.cgn.itmp.basecommon.ChangeUtil;
import com.cgn.itmp.basecommon.ExcelTemplate;
import com.cgn.itmp.basecommon.QrCodeUtil;
import com.cgn.itmp.basecommon.WordUtil;
import com.cgn.itmp.weldingmanagement.WordExportController;
import com.cgn.itmp.weldingmanagement.Welder.IWelderService;
import com.cgn.itmp.weldingmanagement.Welder.Welder;
import com.eos.common.config.ConfigurationFactory;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.infra.config.Configuration;
import com.eos.infra.config.Configuration.Group;
import com.eos.runtime.core.TraceLoggerFactory;
import com.eos.spring.DASDaoSupport;
import com.eos.system.logging.Logger;
import com.eos.system.utility.StringUtil;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.primeton.data.sdo.impl.TypeReference;
import com.primeton.data.sdo.impl.types.BooleanType;
import com.primeton.data.sdo.impl.types.DateTimeType;
import com.primeton.data.sdo.impl.types.DateType;
import com.primeton.data.sdo.impl.types.DecimalType;
import com.primeton.data.sdo.impl.types.FloatType;
import com.primeton.data.sdo.impl.types.IntType;
import com.primeton.data.sdo.impl.types.IntegerType;
import com.primeton.data.sdo.impl.types.LongType;

import commonj.sdo.DataObject;
import commonj.sdo.Type;
/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author LENOVO (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class WelderService extends DASDaoSupport implements IWelderService{
	 private final String FIELD_TYPE_FLAG="&";
	
	 private static Logger logger=TraceLoggerFactory.getLogger(WelderService.class);
    /**
     * Excel模板定义的输出字段名数组
     */
    private String[] fieldNames;
    private int startRow=-1;
    private final String CONTENT_FLAG="#";
	
	public void addWelder(Welder welder){
		getDASTemplate().getPrimaryKey(welder);
		//二维码链接地址
//		String content=QrCodeUtil.path+"WelderQR.jsp?welderid="+welder.getString("uuid");
		//二维码附件名称
		String fileName =welder.getString("uuid")+".png";
		
//		boolean flag = QrCodeUtil.createFtpQrCode(welder.getString("uuid"), content, fileName);
//		if (flag) {
//			welder.set("qrcode", fileName);
//		}
        String strDateFormat = "yyyy-MM-dd HH:mm:ss.SSS";
        SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
		welder.set("createtime",sdf.format(new Date()));
		getDASTemplate().insertEntityCascade(welder);
	}

	public void deleteWelders(Welder[] welders){
		for(Welder welder:welders){
			this.getWelder(welder);
			getDASTemplate().deleteEntityCascade(welder);
		}
	}


	public void getWelder(Welder welder){
		getDASTemplate().expandEntity(welder);
		getDASTemplate().expandRelation(welder, "certificates");
	}


	public Welder[] queryWelders(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Welder.class, dasCriteria, pageCond);
	}


    public void updateWelder(Welder welder){
//    	welder.setUuid(UUID.randomUUID().toString().replaceAll("-",""));
    	
	    getDASTemplate().updateEntityCascade(welder);
    }
    
    
 

    public DataObject[] getweldername(String base) {
		if(StringHelper.isEmpty(base)) return null;
		String sql="com.cgn.itmp.weldingmanagement.Quality.impl.qualitysql.getweldername";
		return getDASTemplate().queryByNamedSql(DataObject.class, sql, base);
	}
	
    
//二维码跳转
    public DataObject getQRwelder(String id,String type) {
    	String jdsql="com.cgn.itmp.weldingmanagement.Welder.impl.weldersql.QRjd";
    	//焊工二维码页面数据
    	if(type.equals("welder")){
			if(StringHelper.isEmpty(id)) return null;
			String sql="com.cgn.itmp.weldingmanagement.Welder.impl.weldersql.QRwelder";
			DataObject welder=getDASTemplate().queryByNamedSql(DataObject.class, sql, id)[0];
			getDASTemplate().expandRelation(welder, "certificates");
			return welder;
			//焊材二维码页面数据
    	}else if(type.equals("material")){
    		String sql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getmaterialQR";
    		DataObject material=getDASTemplate().queryByNamedSql(DataObject.class, sql, id)[0];
    		
    		return material;
    		//焊机二维码页面数据
    	}else if(type.equals("machine")){
    		String sql="com.cgn.itmp.weldingmanagement.Machine.impl.machine.queryMachineQR";
    		DataObject machine=getDASTemplate().queryByNamedSql(DataObject.class, sql, id)[0];
    		
    		return machine;
    	}else if(type.equals("quality")){
    		//质量计划内容查看
    		DataObject quality = DataObjectUtil.createDataObject("com.cgn.itmp.weldingmanagement.Quality.Quality");
    		quality.set("uuid", id);
    		String sql="com.cgn.itmp.weldingmanagement.Weldingapply.impl.welderapplysql.getWAnumber";
    		String wanumber=getDASTemplate().queryByNamedSql(String.class, sql, id)[0];
    		DataObject obj=DatabaseUtil.queryEntitiesByTemplate("default", quality)[0];
    		obj.set("wanumber",wanumber);
    		
    		return obj;
    	}
    	return null;
	}
	
	/**
	 * 
	 * @param company 所属公司
	 * @param jd  基地
	 * @param name 哈弄个名称
	 * @param employeenumber   员工号
	 * @param job   作业类别
	 * @param operatingnumber 操作证编号
	 * 审查记录新增显示焊工数据
	 * swh
	 * @return
	 */
	 public Welder[] getwelderall(String company,String jd,String name,String employeenumber,String job,String [] operatingnumber){
	    	Map<String,Object> data=new HashMap<String,Object>();
	    	data.put("jd",jd);
    		data.put("name",name);
    		data.put("employeenumber",employeenumber);
    		data.put("job",job);
    		data.put("company",company);
	    	//集合得长度如果为0则赋空值（sql标签条件）
	    	List<String> oper=Arrays.asList(operatingnumber);
	    	if(oper.size()<1){
	    		data.put("operatingnumber",null);	
	    	}else{
	    		data.put("operatingnumber",oper);
	   		}
	    	
	    	String sql="com.cgn.itmp.weldingmanagement.Welder.impl.weldersql.getwelderall";
	    	Welder[] welders=getDASTemplate().queryByNamedSql(Welder.class,sql,data);
	    	return welders;
	    }
	 
	 
	 /**
	  * 
	  * @param operatingnumber  操作证编号
	  * 获取审查记录
	  * swh
	  * @return
	  */
	    public Map getlist(String[] operatingnumber,String jd){
	    	String sql="com.cgn.itmp.weldingmanagement.Welder.impl.weldersql.getwelders";
	    	Map<String,Object> operating=new HashMap<String,Object>();
	    	List<String> operatingnumbers=Arrays.asList(operatingnumber);
	    	operating.put("operatingnumber",operatingnumbers);
	    	operating.put("jd",jd);
	    	Welder[] welders=getDASTemplate().queryByNamedSql(Welder.class, sql,operating);
	    	sql="com.cgn.itmp.weldingmanagement.Welder.impl.weldersql.getcertificates";
	    	Map<String,Object> map=new HashMap<String,Object>();
	    	for(Welder welder:welders){
//	    		getDASTemplate().expandRelation(welder,"certificates");
	    		DataObject[] certificate=getDASTemplate().queryByNamedSql(DataObject.class, sql,welder.getString("uuid"));
	    		List list = Arrays.asList(certificate);
				welder.set("certificates",list);
	    		map.put(welder.getString("uuid"),welder);
	    	}
	    	return map;
	    }
    
	    
	    /**
	     * 获取word路径返回前台
	     * swh
	     * @return
	     */
	    public String fildpath(){
	    	WordExportController dh=new WordExportController();
	    	String file=dh.createDoc();
	    	return file;
	    }

	    /**
	     * 初始化工作模版，获取模版配置起始行(start)以及对应字段填充位置(fieldNames)
	     * @param sheet
	     */
	    private void initializeX(XSSFSheet sheet){
	        boolean setStart=false;
	        int rows  = sheet.getPhysicalNumberOfRows();
	        for (int r = 0; r < rows; r++){
	            XSSFRow row   = sheet.getRow(r);//W获得行
	            if (row != null) {
	                int cells = row.getPhysicalNumberOfCells();//w获得列
	                for(short c = 0; c < cells; c++){
	                 XSSFCell cell  = row.getCell(c);
	                 if(cell!=null)
	                 {
	                  String value=null;
	                  if(cell.getCellType()==HSSFCell.CELL_TYPE_NUMERIC){
	                   value=""+cell.getNumericCellValue();
	                  }else if(cell.getCellType()==HSSFCell.CELL_TYPE_BOOLEAN){
	                   value=""+cell.getBooleanCellValue();
	                  }else{
	                   value=cell.getRichStringCellValue().getString();
	                  }
	                     if(value!=null&&!"".equals(value))
	                     {
	                      value=value.trim();
	                      //内容数据
	                      if(value.startsWith(CONTENT_FLAG)){
	                          if(!setStart){
	                           this.startRow=r;//设置内容填充起始行
	                           this.fieldNames=new String[cells];
	                          
	                           setStart=true;
	                          }
	                          int fieldNameEnd = value.length();
	                          if(value.contains(FIELD_TYPE_FLAG)){ //如果是需要转换的字段
	                        	  this.fieldNames[c]=value.substring(1,value.indexOf(FIELD_TYPE_FLAG));//初始化内容字段
	                        	  fieldNameEnd = value.indexOf(FIELD_TYPE_FLAG);

	                          }
	                          this.fieldNames[c]=value.substring(1,fieldNameEnd);//初始化内容字段
	                      }
	                     }
	                 }
	                }
	            }
	        }
	   }
//	    public String ceshi(){
//	    	QrCodeUtil qrcode=new QrCodeUtil();
//	    	String uuid = (UUID.randomUUID().toString()).replace("-","");
////			二维码链接地址
//			
//			List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
//			List list2 = new ArrayList();
////			ces();
//			for(int i=0;i<10;i++){
//				String qr="";
//				try {
////					qr = qrcode.base64("ceshi"+i,700,"PNG");
//				} catch (Exception e) {
//					// TODO 自动生成的 catch 块
//					e.printStackTrace();
//				} 
//				
//				
//				Map<String,Object> map=new HashMap<String,Object>();
//				map.put("imagedata",qr);
//				map.put("id","测试"+i);				
//				list.add(map);
//				if(((i+1)%4==0)||i==(10-1)){
//					list2.add(list);
//					list=new ArrayList();
//				}
//			}
//			Map param=new HashMap();
//			param.put("qrCodes", list2);
//			WordUtil wd=new WordUtil();
//			
//			return wd.createDocMap("welderQR.ftl",param);
//			
//	    }
	    public String geQRword(String id){
	    	String sql="com.cgn.itmp.weldingmanagement.Review.impl.reviewsql.getQRword";
	    	DataObject[] data=getDASTemplate().queryByNamedSql(DataObject.class,sql,id);
	    	
	    	String uuid = (UUID.randomUUID().toString()).replace("-","");
//			二维码链接地址
	    	Configuration config=ConfigurationFactory.getUserConfiguration();
	    	Group fileGroup=config.getGroup("FILE_UPLOAD", "FILE_INFO");
	    	//读取userconfig里面的ip
			String path=fileGroup.getConfigValue("FILE_IP");

			List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
			List list2 = new ArrayList();
			for(int i=0;i<data.length;i++){
				String qr="";
				try {
					qr = QrCodeUtil.base64(path+"WelderQR.jsp?welderid="+data[i].getString("uuid"),1500,"PNG","姓名 ："+data[i].getString("name"),"操作证编号："+data[i].getString("operatingnumber"),1000);
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
			
			return wd.createDocMap("welderQR.ftl",param,"焊工二维码记录");
	    }
	   
	  
	    /**
	     * 
	     * @param targetFile
	     * @param entityName
	     * @param tempFile
	     * @param jd
	     * @param jz
	     * @param type
	     * @param ifDxmk
	     * @return
	     * @throws Exception
	     * swh
	     */
	    @SuppressWarnings("unchecked")
		public List importMap(String targetFile,String entityName,String tempFile,String jd,String jz, String type,String ifDxmk)throws Exception{
	    	int panduan=0;
	    	List list=new ArrayList();
	    	targetFile = java.net.URLDecoder.decode(targetFile, "UTF-8");
			ExcelTemplate excelTemplate = new ExcelTemplate();
			// 最后返回的数据
			 boolean b = excelTemplate.judgeExcelTemplate(targetFile, tempFile);
			 //导入模板错误
			 if(!b){
				 Map<String, Object> map = new HashMap<String, Object>();
				 map.put("code", "0");
				 map.put("message", "导入数据模板错误，请校验导入模板！");
				 list.add(map);
				 return list;
			 }
			
	    	targetFile=java.net.URLDecoder.decode(targetFile,"UTF-8");
	    	//存储所有得操作证号
	    	List<String> Identification=new ArrayList<String>();
	    	//存储所有得操作证号
	    	List<String> numberandname=new ArrayList<String>();
	    	//储存数据键为操作证号，值为姓名，用来在后台判断数据正确
	    	Map<String,Object> map=new HashMap<String,Object>();
	    	//导入未成功的记录
	    	List<Map<String,Object>> fail = new ArrayList<Map<String,Object>>();
			XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(targetFile));
			XSSFSheet sheet = wb.getSheetAt(0);
			//获取要导入数据的标题头
            initializeX(sheet);   
			int rows = sheet.getPhysicalNumberOfRows();
			String entityKeys = "#";
	     		// 第二行为字段标题，因此内容读取从第3行读取数据
	     			for (int rowCount = 2; rowCount < rows; rowCount++) {
	     				
	     				XSSFRow sourceRow = sheet.getRow(rowCount);
	     				Map<String, Object> params=new HashMap<String, Object>();
	     				// 以下构造导入的实体对象，并根据Excel单元格的内容填充实体属性值
	     				for (int cellCount = 0; cellCount < fieldNames.length; cellCount++) {
	     					String propertyName = fieldNames[cellCount];
	     					//判断是哪个审查模块的导入查询清单
	     					if(propertyName.equals("number")){
	     						panduan=1;
	     					}
	     					XSSFCell cell = sourceRow.getCell((short) cellCount);
	     					String value = null;
	     					if(cell != null){
	     						value = ExcelTemplate.returnExcelCellValue(cell);
	     						value = "/".equals(value) ? "" : value;
	     						if(value.indexOf("+") != -1){
	     							value = value.replace("+", "＋");
	     						}
	     					}
	     					//把身份证号或者操作正好存进集合里
	     					if(propertyName.equals("number")||propertyName.equals("operatingnumber")){
	     						if(!StringUtil.isEmpty(value)){
	     							Identification.add(value);	     							
	     						}
	     					}
	     					//获取字段名
	     					params.put(propertyName, value);
	     				}
	     				//如果是授权的审查
	     				if(panduan==1){
	     					if(params.get("number")!=null){
	     						numberandname.add(params.get("number").toString()+"-"+params.get("name").toString());
	     						map.put(params.get("number").toString()+"-"+params.get("name").toString(),params.get("name"));		     						
	     					}else{
	     						Map<String,Object> m=new HashMap<String,Object>();
	    	     				m.put("name",params.get("name"));
	    	     				m.put("number","空");	
	    	     				fail.add(m);
	     					}
	     				}else{
	     					//焊工的审查
	     					if(params.get("operatingnumber")!=null){
	     						map.put(params.get("operatingnumber").toString(),params.get("name"));
	     					}else{
	     						Map<String,Object> m=new HashMap<String,Object>();
	     						m.put("name",params.get("name"));
	    	     				m.put("number","空");	
	    	     				fail.add(m);
	     					}
	     				}	
	     			}
	     			Map<String,Object> tiaojian=new HashMap();
	     			tiaojian.put("jd",jd);
	     			if(panduan==1){
	     				tiaojian.put("idnumbers",Identification);
	     			}else{
	     				tiaojian.put("Identification",Identification);	     				
	     			}
	     			List<DataObject> success=new ArrayList<DataObject>();
	     			//把list转成set方便遍历和查询出不存在的数据
	     			Set<String> set = new HashSet<String>(Identification);
	     			Set<String> failset = new HashSet<String>(Identification);
	     			Set<String> oper = new HashSet<String>();
	     			
	     			Map[] qualitynumbers=new Map[0];
	     			//焊工审查记录
	     			if(panduan==0){
	     				if(Identification.size()>0){
	     					
	     				qualitynumbers = getDASTemplate().queryByNamedSql(Map.class, "com.cgn.itmp.weldingmanagement.Welder.impl.weldersql.getrealNumber",tiaojian);	
		     			//循环查出来的数据库中存在操作证的数据
		     			for(Map<String,Object> m:qualitynumbers){
		     				//判断是否在集合里有删除过的标识
		     				int pd=0;
		     				String number="";
		     				if(panduan==1){
		     					number=m.get("IDNUMBER").toString();	
		     				}else{            
		     					number=m.get("number").toString();
		     				}
		     				String name=m.get("name").toString();
		     				//如果操作证存在，判断名字是否正确
		     				if(set.contains(number)){
		     					//如果姓名也正确删除集合中的数据
		     					if(map.get(number).equals(name)){
		     						oper.add(m.get("uuid").toString());
		     						if(pd==0){
//		     							map.remove(number);
		     							failset.remove(number);
		     							pd++;
		     						}
		     					}
		     				}
		     			}
	     				}
	     			}else{
	     				//授权的审查
	     				String sql= "com.cgn.itmp.dailyandoverhaul.authorization.authorization.getAutpagedata";
	     				if(type.equals("Ndt")){
	     					sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getNdtpagedata";
	     				}else if(type.equals("Pro")){
	     					sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getPropagedata";
	     				}else if(type.equals("Vis")){
	     					sql="com.cgn.itmp.dailyandoverhaul.authorization.authorization.getVispagedata";
	     				}
	     				//身份证的查询判断
	     				DataObject[] data = getDASTemplate().queryByNamedSql(DataObject.class,sql,tiaojian);	
	     				for(DataObject d:data){
	     					//判断是否删除过的
	     					int pd=0;
	     					DataObject temp  = DataObjectUtil.convertDataObject(d,entityName, false);	
	     					String number="";
		     				number=d.get("idnumber").toString();
		     				String name=d.get("name").toString();
		     				//如果操作证存在，判断名字是否正确
		     				if(set.contains(number)){
		     					//如果姓名也正确删除集合中的数据
		     					if(map.containsKey(number+"-"+name)&&map.get(number+"-"+name).equals(name)){
		     						success.add(d);
		     						oper.add(number);
		     						if(pd==0){
		     							failset.remove(number);
		     							numberandname.remove(number+"-"+name);
		     							pd++;
		     						}
		     					}
		     				}	
	     				}	
	     			}
	     			//日常审查
	     			if(panduan==1){
	     				for(String s:numberandname){
		     				Map<String,Object> m=new HashMap<String,Object>();
		     				m.put("name",map.get(s));
		     				m.put("number",s.split("-")[0]);	
		     				fail.add(m);
		     			}	
	     			}else{
		     			for(String s:failset){
		     				Map<String,Object> m=new HashMap<String,Object>();
		     				m.put("name",map.get(s));
		     				m.put("number",s);	
		     				fail.add(m);
		     			}
	     			}
	     			//最后返回的数据
	     			Map<String,Object> result=new HashMap<String,Object>();
	     			if(panduan==1){
	     				result.put("data",success);	
	     			}
	     			result.put("success",oper);	
	     			result.put("fail", fail);
	     			
	     			list.add(result);
			return list;
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
		public List importWelder(String excelFile, String entityName,
				String tempFile, String jd, String jz, String type, String ifDxmk)
				throws Exception {
			excelFile = java.net.URLDecoder.decode(excelFile, "UTF-8");
			ExcelTemplate excelTemplate = new ExcelTemplate();
			// 最后返回的数据
			List result = new ArrayList();//反馈结果
			 boolean b = excelTemplate.judgeExcelTemplate(excelFile, tempFile);
			 //导入模板错误
			 if(!b){
				 Map<String, Object> map = new HashMap<String, Object>();
				 map.put("code", "0");
				 map.put("message", "导入数据模板错误，请校验导入模板！");
				 result.add(map);
				 return result;
			 }
			
			logger.info("<<<<<<< 焊工数据导入开始 >>>>>>>");
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
			// 最后返回的数据
			logger.info("amount:"+allCounts);
			result.add(0, allCounts+"");
			logger.info("success:"+(allCounts-Integer.parseInt(String.valueOf(resMap.get("failNumber")))));
			result.add(1, (allCounts-Integer.parseInt(String.valueOf(resMap.get("failNumber"))))+"" );
	 		result.add(2, Integer.parseInt(String.valueOf(resMap.get("failNumber")))+"");
	 		logger.info("fail:"+Integer.parseInt(String.valueOf(resMap.get("failNumber"))));
	 		if(Integer.parseInt(String.valueOf(resMap.get("failNumber"))) > 0){
	 			result.add(3,new ExcelTemplate().returnErrorResultPipe(tempFile,(List<Map<String,Object>>)resMap.get("failList"),excelFile));
	 		}
	 		logger.info("<<<<<<< 焊工数据导入结束 >>>>>>>");
			return result;
		}
		
		/**
	   	 * 返回Excel单元格读取到的数据
	   	 * @param cell
	   	 * @return
	   	 */
	   	public static String returnExcelCellValue(XSSFCell cell){
	   		String value = null;
	   	 cell.getCellStyle().getDataFormat();  
			if (cell.getCellType() == XSSFCell.CELL_TYPE_BLANK){
				value = "";
			}else if (cell.getCellType() == XSSFCell.CELL_TYPE_NUMERIC) {
//				if (HSSFDateUtil.isCellDateFormatted(cell)) {
//					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//					value = dateFormat.format((cell.getDateCellValue()));
//				} else {
//					value = String.valueOf((long) cell.getNumericCellValue());
//				}
				if(org.apache.poi.ss.usermodel.DateUtil.isCellDateFormatted(cell)){
					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					value = dateFormat.format((cell.getDateCellValue()));
				}else{
					cell.setCellType(cell.CELL_TYPE_STRING);
					value = cell.getStringCellValue();
					if(value.indexOf(".") > 0){
						value =  String.valueOf(new Double(value)).trim();
					}else{
						value =  value.trim();
					}
					
				}
				
				
			} else if (cell.getCellType() == XSSFCell.CELL_TYPE_BOOLEAN) {
				value = cell.getBooleanCellValue() + "";
			} else {
				value = cell.getRichStringCellValue().getString();
			}
			
			return value;
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
						String propertyName = rowColumn.getCell(j).getStringCellValue().substring(1,rowColumn.getCell(j).getStringCellValue().length());
						String value = returnExcelCellValue(row.getCell(j));
						//像对应实体放Excel读取到的值
 						TypeReference typeReference = (TypeReference) entity.getType().getProperty(propertyName).getType();
 						Type propertyType = typeReference.getActualType();
 						if (propertyType instanceof IntType|| propertyType instanceof IntegerType) {
 							// 防止可能出现的Excel表格读取自动加.号
 							if (value.indexOf(".") != -1)
 								value = value.substring(0, value.indexOf("."));
 							entity.set(propertyName,ChangeUtil.toInteger(value));
 						} else if (propertyType instanceof BooleanType) {
 							entity.set(propertyName,ChangeUtil.toBoolean(Boolean.valueOf(value)));
 						} else if (propertyType instanceof FloatType) {
 							entity.set(propertyName,ChangeUtil.toFloat(value));
 						} else if (propertyType instanceof LongType) {
 							if (value.indexOf(".") != -1)
 								value = value.substring(0, value.indexOf("."));
 							entity.set(propertyName,ChangeUtil.toLong(value));
 						} else if (propertyType instanceof DecimalType) {
 							entity.set(propertyName,ChangeUtil.toBigDecimal(value));
 						} else if (propertyType instanceof DateType) {
 							entity.set(propertyName,ChangeUtil.changeToDBDate(value));
 						} else if (propertyType instanceof DateTimeType) {
 							entity.set(propertyName,ChangeUtil.toTimestamp(value));
 						} else {
 							entity.set(propertyName, (StringUtil.isEmpty(value) ? null : value ));
 						}
 						
//						row.getCell(j).setCellType(Cell.CELL_TYPE_STRING);
//						if(StringUtils.isNotBlank(row.getCell(j).getStringCellValue())){
//							//设置对象 (字段，值)
//							entity.set(propertyName, row.getCell(j).getStringCellValue());	
//						}
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
		 * 多sheet页数据保存
		 * @param list
		 * @return
		 */
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
					if(data[j] == null){
						continue;	
					}
					try {
						if (i == 0) {
							int count = DatabaseUtil.expandEntity("default", data[j]);
							if(count > 0){
								failList.add(data[j]);
								f++;
							}else{
								keyList.add(data[j].getString("operatingnumber"));
								String id = data[j].getString("operatingnumber");
	     						String content = "operatingnumber="+id;
//	     						boolean b = QrCodeUtil.createFtpQrCode(id, content, id+".png");
//	     						if(b){
//	     							data[j].set("qrcode", id+".png");
//	     						}
								uuid.put(data[j].getString("operatingnumber"),data[j].getString("uuid"));
								SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
								data[j].set("createtime",dateFormat.format(new Date()));
								data[j].set("orderno",j);
								//证件有效期
								if(StringUtils.isNotBlank(data[j].getString("validity"))){
									SimpleDateFormat dateFormats = new SimpleDateFormat("yyyy-MM-dd");
									String now = dateFormats.format(new Date());
									if(now.compareTo(data[j].getString("validity")) < 0){
										data[j].set("status", "ZC");
									}else{
										data[j].set("status", "YGQ");
									}
								}
								//操作项目转换
								if(StringUtils.isNotBlank(data[j].getString("items"))){
									if(data[j].getString("items").equals("其他")){
										data[j].set("items", "QT");
									}
									if(data[j].getString("items").equals("电(气)焊工")){
										data[j].set("items", "DQHG");
									}
									if(data[j].getString("items").equals("熔化焊接与切割作业")){
										data[j].set("items", "RHHJ");
									}
								}
								DatabaseUtil.insertEntity("default", data[j]);
							}
						}else{
							if(keyList.size() > 0 && keyList.contains(data[j].getString("operatingnumber"))){
								data[j].set("relationid",uuid.get(data[j].getString("operatingnumber")));
								data[j].set("orderno",data.length-j);
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
}
