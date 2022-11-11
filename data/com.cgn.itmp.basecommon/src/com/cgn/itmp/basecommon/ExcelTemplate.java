package com.cgn.itmp.basecommon;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.POIXMLDocument;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.tools.ant.types.CommandlineJava.SysProperties;

import com.cgn.itmp.conventionalislandand.PressurepipingService;
import com.cgn.itmp.conventionalislandand.PressurevesselService;
import com.eos.data.xpath.XPathLocator;
import com.eos.foundation.common.utils.DateUtil;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseExt;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.runtime.core.ApplicationContext;
import com.eos.runtime.core.TraceLoggerFactory;
import com.eos.spring.DASDaoSupport;
import com.eos.system.annotation.Bizlet;
import com.eos.system.annotation.BizletParam;
import com.eos.system.annotation.ParamType;
import com.eos.system.logging.Logger;
import com.primeton.das.entity.impl.hibernate.util.StringHelper;
import com.primeton.data.sdo.impl.PropertyImpl;
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
import edu.emory.mathcs.backport.java.util.Arrays;
/**
 *
 * Excel模板实现类<BR>
 * 实现通过自定义Excel数据模版,将结果集填充到模版相应位置，自动创建输出到指定的文件，允许Excel模版设置公式，调用方法如下：<BR>
 * <pre>
 *     ExcelTemplate template=new ExcelTemplate(templateFilePath,outputFilePath)
 *     //template.setIncludeFormula(true);设置包含公式
 *     template.generate(ResultSet);//resultset为ArrayList对象,数据行以Map封装
 *     //template.generate(titleMap,dataList)//显示主表、明细表信息
 * </pre>
 *
 * @author primeton
 * wengzr (mailto:)
 */
public class ExcelTemplate  extends DASDaoSupport{
	
	 private static Logger logger=TraceLoggerFactory.getLogger(ExcelTemplate.class);
 /**
  * 模板文件名
  */
 private String templateFile;
 /**
  * 输出文件名
  */
 private String outputFile;
 /**
  * Excel模板定义的输出字段名数组
  */
 private String[] fieldNames;
 
 /**
  * Excel模板定义的输出数据字典数组
  */
 private String dicFields;
 /**
  * Excel模板定义的输出基地机组字段
  */
 private String jdFields;
 private String jzFields;
 /**
  * Excel模板定义的输出字段名数组
  */
 private HashMap<String, String> dicFieldInfo;
 /**
  * 输出的起始行,默认为-1,不输出
  */
 private int startRow=-1;
 private int tempStartRowNum=-1;
 /**
  * 默认字体大小
  */
 private int fontSize=10;
 /**
  * 默认字体
  */
 private String fontName="宋体";
 /**
  * 是否设置信息标题栏边框,默认情况不设置边框
  */
 private boolean titleCellBold=false;
 /**
  * 是否设置空白栏边框，默认情况不设置边框
  */
 private boolean blankCellBold=false;
 /**
  * 是否自动分工作薄
  */
 private boolean autoSheet=false;
 /**
  * 是否自动分页
  */
 private boolean autoPagination=false;
 /**
  * 分页行数
  */
 private int maxrow=-1;
 /**
  * 是否有公式
  */
 private boolean hasFormula=false;
 /**
  * 关键字
  * &-表示模版信息内容字段
  * #-表示模版明细内容字段
  * formula-表示模版函数关键字
  * ~-表示Cell当前行，当包含":"时，表示当前行减1
  */
 private final String TITLE_FLAG="&";
 private final String CONTENT_FLAG="#";
 private final String FIELD_TYPE_FLAG="&";
 private final String DIC_TYPE_FLAG="*";
 private final String FORMULA_FLAG="formula";
 private final String UNLIMIT_FLAG="~";
 private final String FIELD_AUTO_ID="_id";
 private final String CONTENT_FLAG1="机构名称：";//机构名称作为数据开始 
 private final String CONTENT_FLAG2="保额期限：";
 private final String CONTENT_FLAG3="盒号：";
 private final String CONTENT_FLAG4="件号";
 private final String CONTENT_FLAG5="责任者";
 private final String CONTENT_FLAG6="文  号";
 private final String CONTENT_FLAG7="题    名";
 private final String CONTENT_FLAG8="日期";
 private final String CONTENT_FLAG9="页数";
 private final String CONTENT_FLAG10="类型";
 private final String  CONTENT_FLAG11="备注";
 BaseJdglUtil baseJdglUtil = new BaseJdglUtil();
 /**
  * 公式计算操作符号
  */
 private final String[] OP_FLAG=new String[]{"+","-","*","/","%",":"};
 /**
  * 默认构造函数
  *
  */
 public ExcelTemplate(){
 }
 /**
  * 构造器
  * @param templateFile 模版文件
  * @param outputFile 输出文件
  */
 public ExcelTemplate(String templateFile,String outputFile){
  this.templateFile=templateFile;
  this.outputFile=outputFile;
 }
 /**
  * 设置模版文件是否包含Excel公式
  * @param hasFormula
  */
 public void setIncludeFormula(boolean hasFormula){
  this.hasFormula=hasFormula;
 }
 /**
  * 设置标题栏是否需要边框
  * @param b
  */
 public void setTitleCellBold(boolean titleCellBold){
  this.titleCellBold=titleCellBold;
 }
 /**
  * 设置空白行是否需要显示边框
  * @param blankCellBold
  */
 public void setBlankCellBold(boolean blankCellBold){
  this.blankCellBold=blankCellBold;
 }
 /**
  * 设置是否分工作薄
  * @param b
  */
 public void setAutoSheet(boolean autoSheet){
  this.autoSheet=autoSheet;
  this.autoPagination=(autoSheet?false:autoPagination);
 }
 /**
  * 是否自动分页
  * @param autoPagination
  */
 public void setAutoPagination(boolean autoPagination){
  this.autoPagination=autoPagination;
  this.autoSheet=(autoPagination?false:autoSheet);
 }
 /**
  * 设置分页最大行
  * @param maxrow
  */
 public void setMaxRow(int maxrow){
  this.maxrow=maxrow;
 }
 /**
  * 设置字体大小，默认10号字体
  * @param size
  */
 public void setFontSize(int size){
  this.fontSize=size;
 }
 public void setFontName(String fontName){
  this.fontName=fontName;
 }
 /**
  * 初始化工作模版，获取模版配置起始行(start)以及对应字段填充位置(fieldNames)
  * @param sheet
  */
 private void initialize(HSSFSheet sheet){
        boolean setStart=false;
        int rows  = sheet.getPhysicalNumberOfRows();
        for (int r = 0; r < rows; r++){
            HSSFRow row   = sheet.getRow(r);//W获得行
            if (row != null) {
                int cells = row.getPhysicalNumberOfCells();//w获得列
                for(short c = 0; c < cells; c++){
                 HSSFCell cell  = row.getCell(c);
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
                      if(value.startsWith(CONTENT_FLAG)){//如果是要解析导入的字段
                          if(!setStart){
                           this.startRow=r;//设置内容填充起始行
                           this.fieldNames=new String[cells];
                           setStart=true;
                          }
                          this.fieldNames[c]=value.substring(1);//初始化内容字段
                      }
                     }
                 }
                }
            }
        }
 }
 
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
                        this.dicFields = ",";
                        this.dicFieldInfo = new HashMap<String, String>();
                        setStart=true;
                       }
                       int fieldNameEnd = value.length();
                       if(value.contains(FIELD_TYPE_FLAG)){ //如果是需要转换的字段
                     	  this.fieldNames[c]=value.substring(1,value.indexOf(FIELD_TYPE_FLAG));//初始化内容字段
                     	  fieldNameEnd = value.indexOf(FIELD_TYPE_FLAG);
                     	  if(value.contains(DIC_TYPE_FLAG)){ //是数据字典字段
                     		  String dicKey = value.substring(1,fieldNameEnd);
                     		  String dicVal = value.substring(value.indexOf(DIC_TYPE_FLAG)+1);
                     		  this.dicFields += dicKey+",";
                     		  this.dicFieldInfo.put(dicKey,dicVal);
                     	  }else{   //基地机组字段
                     		  String type = value.substring(value.indexOf(FIELD_TYPE_FLAG)+1);
                     		  if("JD".equals(type)){
                     			  this.jdFields = value.substring(1,fieldNameEnd);
                     		  }else if("JZ".equals(type)){
                     			  this.jzFields = value.substring(1,fieldNameEnd);
                     		  }
                     	  }
                       }
                       this.fieldNames[c]=value.substring(1,fieldNameEnd);//初始化内容字段
                   }
                  }
              }
             }
         }
     }
}
	
 
 
 
 
 
 /** 20171010ww测试修改
  * 初始化工作模版，获取模版配置起始行(start)以及对应字段填充位置(fieldNames)
  * @param sheet
  */
 @SuppressWarnings("unused")
private Integer  initialize1(HSSFSheet sheet,Map param){
	 String orgSqlId="com.oa.archives.archive.queryAllOrgs";
	 Integer orgId=-1;
	 boolean setStart=false;
	 int rows  = sheet.getPhysicalNumberOfRows();
	 for (int r = 0; r < rows; r++){
		 HSSFRow row   = sheet.getRow(r);//W获得行
		 if (row != null) {
			 int cells = row.getPhysicalNumberOfCells();//w获得列
			 for(short c = 0; c < cells; c++){
				 HSSFCell cell  = row.getCell(c);
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
						 if(value.startsWith(CONTENT_FLAG1)){//ww: '机构名称：'作为数据开始
							 	String dept_nm=value.substring(value.indexOf("：")+1, value.length());
							 	param.put("DEPT_NM", dept_nm);//取出部门名称
							 	//在数据库中查找部门名称
								HashMap<String,String> orgParam=new HashMap<String,String>();
		    					orgParam.put("orgname", dept_nm);
		    					Object[] orgs = DatabaseExt.queryByNamedSql("default", orgSqlId, orgParam);
		    					if(orgs.length==1){
		    						 orgId = ((DataObject)(orgs[0])).getInt("ORGID");
		    				}
						 }
						 if(value.startsWith(CONTENT_FLAG2)){
							 param.put("SAVE_LIMIT", (value.substring(value.indexOf("：")+1, value.indexOf(CONTENT_FLAG3))).trim());//取出部门名称
							 param.put("BOXNO", (value.substring(value.indexOf(CONTENT_FLAG3)+3, value.length()).trim()));//取出部门名称
						 }
						 if(value.startsWith(CONTENT_FLAG4)){//件号开始
						 	 if(!setStart){
						 		 this.startRow=r;
								 this.fieldNames=new String[cells+3];
								//构造完整字段
								 this.fieldNames[cells]="deptNm";
								 this.fieldNames[cells+1]="saveLimit";
								 this.fieldNames[cells+2]="boxno";
								 setStart=true;
							 }
							 this.fieldNames[c]="cotno";
						 }
						 if(value.startsWith(CONTENT_FLAG5)){//件号开始
							 this.fieldNames[c]="dealer";
						 }
						 if(value.startsWith(CONTENT_FLAG6)){//件号开始
							 this.fieldNames[c]="fileNo";
						 }
						 if(value.startsWith(CONTENT_FLAG7)){//件号开始
							 this.fieldNames[c]="title";
						 }
						 if(value.startsWith(CONTENT_FLAG8)){//件号开始
							 this.fieldNames[c]="createTime";
						 }
						 if(value.startsWith(CONTENT_FLAG9)){//件号开始
							 this.fieldNames[c]="pager";
						 }
						 if(value.startsWith(CONTENT_FLAG10)){//件号开始
							 this.fieldNames[c]="arhType";
						 }
						 if(value.startsWith(CONTENT_FLAG11)){//件号开始
							 this.fieldNames[c]="demo";
						 }
					 }
				 }
			 }
		 }
	 }
	 return orgId;
 }
 /**
  * 计算公式,默认范围从0行到工作薄结尾
  * @param wb
  * @param sheet
  */
 private void calcFormula(HSSFWorkbook wb,HSSFSheet sheet){
  this.calcFormula(wb,sheet,0,sheet.getPhysicalNumberOfRows());
 }
 /**
  * 计算公式函数,范围从开始行(start_row)到结束行(end_row)
  * @param wb HSSFWorkbook
  * @param sheet HSSFSHeet
  * @param start_rang
  * @param end_rang
  */
 private void calcFormula(HSSFWorkbook wb,HSSFSheet sheet,int start_rang,int end_rang){
        //int rows  = sheet.getPhysicalNumberOfRows();
  HSSFCellStyle borderStyle=this.getBorderStyle(wb);
  HSSFCellStyle noneStyle=this.getNoneStyle(wb);  
        for (int r = start_rang; r < end_rang; r++){
            HSSFRow row   = sheet.getRow(r);
            if (row != null) {
                int cells = row.getPhysicalNumberOfCells();
                for(short c = 0; c < cells; c++){
                 HSSFCell cell  = row.getCell(c);
                 if(cell!=null){
                  if(cell.getCellType()==HSSFCell.CELL_TYPE_STRING){
                         String value=cell.getRichStringCellValue().getString();
                         if(value!=null){
                          value=value.trim().toLowerCase();
                          if(value.startsWith(FORMULA_FLAG))
                          {
                           int index=value.indexOf("=");
                           String formula=value.substring(index+1);
                           //判断函数是否包含以#开头,如果是以#开头表示必须显示边框，
                           String flag=formula.substring(0,1);
                           boolean showBold=false;
                           if(flag.equals(CONTENT_FLAG)){
                            formula=formula.substring(1);
                            showBold=true;
                           }
                             //如果包含':'符号则统计公式不包含当前行,否则会引发公式循环引用错误.
                           if(formula.indexOf(":")!=-1){
                            formula=formula.replaceAll(UNLIMIT_FLAG,r+"").toUpperCase();
                           }else{
                            formula=formula.replaceAll(UNLIMIT_FLAG,(r+1)+"").toUpperCase();
                           }
                           //判断公式对应的Cell内容是否为blank,
                           //如果公式对应的CELL内容为空，则设置为""
                           int rightIndex=formula.indexOf(")");
                           int leftIndex=formula.indexOf("(");
                           String content=formula.substring(leftIndex+1,rightIndex);
                           int opIndex=this.getOpIndex(content);
                           String startPos=content.substring(0,opIndex);
                           String endPos=content.substring(opIndex+1);
                           int start_col=this.getColumnIndex(startPos.charAt(0));
                        int start_row=Integer.parseInt(startPos.substring(1));
                        int end_col=this.getColumnIndex(endPos.charAt(0));
                        int end_row=Integer.parseInt(endPos.substring(1));
                        HSSFCell startC=sheet.getRow(start_row-1).getCell((short)start_col);
                        HSSFCell endC=sheet.getRow(end_row-1).getCell((short)end_col);
                        //判断公式开始Cell与结束cell内容是否无效
                        //当为均为无效的cell值，并且当前公式不包含":"，则设置公式框内容为""，
                        //包含":" 则设置为计算公式
                        if(invalidCellValue(startC)&&invalidCellValue(endC)){
                         if(formula.indexOf(":")==-1){
                          cell.setCellValue( new HSSFRichTextString(""));
                         }else{
                                cell=row.createCell((short)c);
                                cell.setCellType(HSSFCell.CELL_TYPE_FORMULA);
                                cell.setCellFormula(formula);
                         }
                        }else{
                            //重建Cell
                            cell=row.createCell((short)c);
                            cell.setCellType(HSSFCell.CELL_TYPE_FORMULA);
                            cell.setCellFormula(formula);
                        }
                           if(showBold){
                            cell.setCellStyle(borderStyle);
                           }else{
                            cell.setCellStyle(noneStyle);
                           }
                          }
                         }
                  }
                 }
                }
            }
        }
 }
 /**
  * 设置公式文本框为空白栏，当统计开始行减1==startRowNum时
  * @param cell
  * @param startRowNum
  */
 private void setFormulaBlankCell(HSSFCell cell,int startRowNum){
     if (cell != null) {
   if (cell.getCellType() == HSSFCell.CELL_TYPE_STRING) {
    String value = cell.getRichStringCellValue().getString();
    if (value != null) {
     value = value.trim().toLowerCase();
     if (value.startsWith(FORMULA_FLAG)) {
      int index = value.indexOf("=");
      String formula = value.substring(index + 1);
      String flag = formula.substring(0, 1);
      if (flag.equals(CONTENT_FLAG))formula = formula.substring(1);
      if (formula.indexOf(":") != -1) {
       int rightIndex = formula.indexOf(")");
       int leftIndex = formula.indexOf("(");
       String content = formula.substring(leftIndex + 1,rightIndex).toUpperCase();
       int opIndex = this.getOpIndex(content);
       String startPos = content.substring(0, opIndex);
       String colValue = startPos.substring(1,opIndex);
       if(Integer.parseInt(colValue)-1==startRowNum)
        cell.setCellType(HSSFCell.CELL_TYPE_BLANK);
      }
     }
    }
   }
  }
 
 }
 /**
  * 生成填充模版标题数据
  *
  * @param titleMap
  * @param wb
  * @param sheet
  * @throws Exception
  */
 private void generateTitleDatas(DataObject exportInfo,HSSFWorkbook wb,HSSFSheet sheet)throws Exception{
        int rows  = sheet.getPhysicalNumberOfRows();
        HSSFCellStyle borderStyle=this.getBorderStyle(wb);
        HSSFCellStyle noneStyle=this.getNoneStyle(wb);       
        for (int r = 0; r < rows; r++){
            HSSFRow row   = sheet.getRow(r);
            if (row != null) {
                int cells =row.getPhysicalNumberOfCells();
                for(short c = 0; c < cells; c++){
                 HSSFCell cell  = row.getCell(c);
                 if(cell!=null){
                  if(cell.getCellType()==HSSFCell.CELL_TYPE_STRING){
                         String value=cell.getRichStringCellValue().getString();
                         if(value!=null){
                          value=value.trim();
                          if(value.startsWith(TITLE_FLAG)){
                           value=value.substring(1);
                           //获取对应的值，支持XPATH取值
                           Object obj=XPathLocator.newInstance().getValue(exportInfo, value);
                           String content=obj+"";
                           //String content=exportInfo.getString(value);
//                           if(content==null)content="";
                           //重建Cell，填充标题值
                           cell=row.createCell((short)c);                           
                           cell.setCellType(HSSFCell.CELL_TYPE_STRING);                           
                           cell.setCellValue( new HSSFRichTextString(content));
                           if(!titleCellBold){
                            cell.setCellStyle(noneStyle);
                           }else{
                            cell.setCellStyle(borderStyle);
                           }
                          }
                         }
                  }
                 }
                }
            }
        }
 }

 /**
  * 将指定的对象数组resulset输出到指定的Excel位置
  * @param resultset List<DataObject>对象数组
  * @param wb HSSFWorkbook
  * @param sheet HSSFSheet
  */
 private void generateContentDatas(List<DataObject> resultset,HSSFWorkbook wb,HSSFSheet sheet){
  HSSFCellStyle borderStyle=this.getBorderStyle(wb);
  HSSFCellStyle noneStyle=this.getNoneStyle(wb);
  //默认行号
  int autoRowId=1;
        for(Iterator it=resultset.iterator();it.hasNext();autoRowId++){
         DataObject content=(DataObject)it.next();
         HSSFRow sourceRow=sheet.getRow(startRow);
         HSSFRow row=sheet.createRow(startRow++);
         for(int i=0;i<sourceRow.getPhysicalNumberOfCells();i++){
          //输出自动生成的行号
          if(fieldNames[i]!=null&&fieldNames[i].equals(FIELD_AUTO_ID)){
             HSSFCell cell=row.createCell((short)i);           
           cell.setCellStyle(borderStyle);
           cell.setCellType(HSSFCell.CELL_TYPE_STRING);
        cell.setCellValue(autoRowId);
        continue;
          }
          if(fieldNames[i]!=null){
           HSSFCell cell=row.createCell((short)i);           
           cell.setCellStyle(borderStyle);
           if(content!=null){
            //字段名支持xpath取值
            Object value=XPathLocator.newInstance().getValue(content, fieldNames[i]);
               //Object value=content.get(fieldNames[i]);
               if(value!=null){
                if(value instanceof Double|| value instanceof BigDecimal){
                 cell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
                 cell.setCellValue(Double.parseDouble(value.toString()));
                }else{
                 cell.setCellType(HSSFCell.CELL_TYPE_STRING);
                 cell.setCellValue(new HSSFRichTextString(value.toString()));
                }
               }else{
                cell.setCellType(HSSFCell.CELL_TYPE_BLANK);
               }
           }else{
            cell.setCellType(HSSFCell.CELL_TYPE_BLANK);
            if(!blankCellBold){
             cell.setCellStyle(noneStyle);
            }else{
             cell.setCellStyle(borderStyle);
            }
           }
          }else{
        HSSFCell sourceCell=sourceRow.getCell((short)i);
        if(sourceCell!=null&&
          sourceCell.getCellType()==HSSFCell.CELL_TYPE_STRING&&
          sourceCell.getRichStringCellValue().getString()!=null&&
          sourceCell.getRichStringCellValue().getString().toLowerCase().startsWith(FORMULA_FLAG)){
         HSSFCell cell=row.createCell((short)i);
         cell.setCellType(HSSFCell.CELL_TYPE_STRING);
         cell.setCellValue(sourceCell.getRichStringCellValue());
        }
       }
         }
         if(it.hasNext()){
          //向下平推一行
          //sheet.shiftRows(startRow-1,sheet.getLastRowNum(),1);
          shiftDown(sheet,startRow-1, sheet.getLastRowNum(), 1);
         }
        }
 }
 /**
  * 将结果集填充到Excel模版,resultset必须是以Map封装行
  * @param
  * @param resultset 数据内容
  * @throws Exception
  */
 public void generate(List<DataObject> resultset)throws Exception{
  this.generate(resultset,null);
 }
 /**
  * 将结果集填充到Excel模版,resultset必须是以Map封装行
  * @param titleMap 标题信息
  * @param resultset 结果集
  * @throws Exception
  */
 public void generate(List<DataObject> resultset,DataObject exportInfo)throws Exception{
        POIFSFileSystem fs =new POIFSFileSystem(new FileInputStream(templateFile));
        HSSFWorkbook wb = new HSSFWorkbook(fs);
        HSSFSheet sheet = wb.getSheetAt(0);
        initialize(sheet);
        if(startRow==-1)
         return ;

        if(this.autoPagination){
         this.generatePagination(wb,sheet,resultset,exportInfo);
        }
        else if(this.autoSheet){
         generatePaginationSheet(wb,sheet,resultset,exportInfo);
        }
        else{
            //先填充标题
            if(exportInfo!=null)
             this.generateTitleDatas(exportInfo,wb,sheet);
            //生成数据内容
            this.generateContentDatas(resultset,wb,sheet);
            if(hasFormula){
             this.calcFormula(wb,sheet);
            }
        }
        FileOutputStream fileOut = new FileOutputStream(outputFile);
        wb.write(fileOut);
        fileOut.close();
 }
 /**
  * EXCEL分页
  * 必须在EXCEL模版的最后一行插入EXCEL分页符!
  * @param wb HSSFWorkbook
  * @param sourceSheet HSSFSheet
  * @param resultset 填充数据集
  * @param titleMap 信息栏内容
  * @throws Exception
  */
 private void generatePagination(HSSFWorkbook wb,HSSFSheet sourceSheet,List<DataObject> resultset,DataObject exportInfo)
throws Exception{
     int startPosition=startRow;
     tempStartRowNum=startRow;
     int count=resultset.size() / maxrow;
     int num=resultset.size() % maxrow;
     int rows=sourceSheet.getPhysicalNumberOfRows();
     if(num>0){
      count=count+1;
      num=maxrow-num;
      //不足指定的maxrow，添加空行
      for(int i=0;i<num;i++){
       resultset.add(null);
      }
     }
     //删除最后一行的分页符
     try{
      sourceSheet.removeRowBreak(rows-1);
     }catch(NullPointerException npe){
      throw new Exception("指定的EXCEL模版文件["+this.templateFile+"] 未插入分页符");
     }
     //超过1页则插入分页符
     for(int i=1;i<count;i++){
      //设置分页符
      sourceSheet.setRowBreak(i*rows-1);
      this.copyRows(sourceSheet,sourceSheet,0,rows,i*rows+1);
     }
     if(exportInfo!=null)
      this.generateTitleDatas(exportInfo,wb,sourceSheet);
     int current_page=0;
     while(current_page<count){
      List<DataObject> newList=resultset.subList(current_page*maxrow,maxrow*(current_page+1));
      this.generateContentDatas(newList,wb,sourceSheet);
      current_page++;
      //计算下一行的数据填充起始位置
      startRow=current_page*rows+maxrow+startPosition;
     }
        if(hasFormula)
         this.calcFormula(wb,sourceSheet);
 }

 /**
  * 生成分页的工作薄模版
  * @param wb HSSFWorkbook
  * @param sourceSheet HSSFSheet
  * @param resultset 填充数据集
  * @param titleMap 信息(标题)栏内容
  */
 private void generatePaginationSheet(HSSFWorkbook wb,HSSFSheet sourceSheet,List<DataObject> resultset,DataObject exportInfo)
throws Exception{
     int startPosition=startRow;
     int count=resultset.size() / maxrow;
     int num=resultset.size() % maxrow;
     if(num>0){
      count=count+1;
      num=maxrow-num;
      //不足指定的maxrow，添加空行
      for(int i=0;i<num;i++){
       resultset.add(null);
      }
     }
     for(int i=1;i<count;i++){
      HSSFSheet newsheet=wb.createSheet("Page "+i);
      this.copyRows(sourceSheet,newsheet,0,sourceSheet.getLastRowNum(),0);
     }
     if(count>1){
      for(int i=0;i<wb.getNumberOfSheets();i++){
       startRow=startPosition;
       List<DataObject> newList=resultset.subList(i*maxrow,maxrow*(i+1));
       HSSFSheet sheet=wb.getSheetAt(i);
             //先填充标题
             if(exportInfo!=null)
              this.generateTitleDatas(exportInfo,wb,sheet);
                this.generateContentDatas(newList,wb,sheet);
                if(hasFormula)
                 this.calcFormula(wb,sheet);
      }
     }else{
   HSSFSheet sheet=wb.getSheetAt(0);
         if(exportInfo!=null)
          this.generateTitleDatas(exportInfo,wb,sheet);
            this.generateContentDatas(resultset,wb,sheet);
            if(hasFormula)
             this.calcFormula(wb,sheet);
     }
 }
 private HSSFCellStyle getBorderStyle(HSSFWorkbook wb){
        HSSFCellStyle style = wb.createCellStyle();
        HSSFFont font=wb.createFont();
        font.setFontHeightInPoints((short)fontSize);
        font.setFontName(fontName);
        style.setFont(font);
        style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
        style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
        style.setBorderRight(HSSFCellStyle.BORDER_THIN);
        style.setBorderTop(HSSFCellStyle.BORDER_THIN);
        return style;
 }
 private HSSFCellStyle getNoneStyle(HSSFWorkbook wb){
        HSSFCellStyle style = wb.createCellStyle();
        HSSFFont font=wb.createFont();
        font.setFontHeightInPoints((short)fontSize);
        font.setFontName(fontName);
        style.setFont(font);
        style.setBorderBottom(HSSFCellStyle.BORDER_NONE);
        style.setBorderLeft(HSSFCellStyle.BORDER_NONE);
        style.setBorderRight(HSSFCellStyle.BORDER_NONE);
        style.setBorderTop(HSSFCellStyle.BORDER_NONE);
        return style;
 }

 /**
     * 向下平推表格，并复制格式与内容
     * @param thisrow：当前行号
     * @param lastrow：最后行号
     * @param shiftcount：平推量
     */
    private void shiftDown(HSSFSheet sheet,int thisrow, int lastrow, int shiftcount) {
        sheet.shiftRows(thisrow, lastrow, shiftcount);
        for (int z = 0; z < shiftcount; z++) {
            HSSFRow row = sheet.getRow(thisrow);
            HSSFRow oldrow = sheet.getRow(thisrow + shiftcount);
            //将各行的行高复制
            oldrow.setHeight(row.getHeight());
            //将各个单元格的格式复制
            for (short i = 0; i <= oldrow.getPhysicalNumberOfCells(); i++) {
                HSSFCell cell = row.createCell(i);
                HSSFCell oldcell = oldrow.getCell(i);
                if (oldcell != null) {                   
                    switch(oldcell.getCellType()){
                    case HSSFCell.CELL_TYPE_STRING:
                     cell.setCellType(HSSFCell.CELL_TYPE_STRING);
                     cell.setCellValue(oldcell.getRichStringCellValue());
                     break;
                    case HSSFCell.CELL_TYPE_NUMERIC:
                     cell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
                     cell.setCellValue(oldcell.getNumericCellValue());
                     break;
                    default:
                     cell.setCellType(HSSFCell.CELL_TYPE_STRING);
                     cell.setCellValue(oldcell.getRichStringCellValue());
                    }
                    cell.setCellStyle(oldcell.getCellStyle());
                 }
            }
           /* //将有列跨越的复制
            Vector regs = findRegion(sheet,oldrow);
            if (regs.size() != 0) {
                for (int i = 0; i < regs.size(); i++) {
                    Region reg = (Region) regs.get(i);
                    reg.setRowFrom(row.getRowNum());
                    reg.setRowTo(row.getRowNum());
                    sheet.addMergedRegion(reg);
                }
            }*/
            thisrow++;
        }
    }
     /**
     * 查找所有的合并单元格
     * @param oldrow
     * @return
     */
   /* private Vector findRegion(HSSFSheet sheet ,HSSFRow oldrow) {
        Vector<Region> regs = new Vector<Region>();
        int num = sheet.getNumMergedRegions();
        int curRowid = oldrow.getRowNum();
        for (int i = 0; i < num; i++) {
            Region reg = sheet.getMergedRegionAt(i);
            if (reg.getRowFrom() == reg.getRowTo() && reg.getRowFrom() == curRowid) {
                regs.add(reg);
            }
        }
        return regs;
    }*/

    /**
     * 复制EXCEL行到指定的工作薄上
     * ××如果是分页显示，需要增加一个判断：当复制行包含公式forumla=sum(G7:G~)字样时候，必须修改其实行G7为相应的新行。
     * @param sourceSheet  原工作薄
     * @param targetSheet 目标工作薄
     * @param pStartRow 复制起始行
     * @param pEndRow 复制终止行
     * @param pPosition 插入位置
     */
    private void copyRows(HSSFSheet sourceSheet, HSSFSheet targetSheet,int pStartRow, int pEndRow, int pPosition) {
  HSSFRow sourceRow = null;
  HSSFRow targetRow = null;
  HSSFCell sourceCell = null;
  HSSFCell targetCell = null;
  /*Region region = null;*/
  int cType;
  int i;
  short j;
  if ((pStartRow == -1) || (pEndRow == -1)) {
   return;
  }
  // 拷贝合并的单元格
/*  for (i = 0; i < sourceSheet.getNumMergedRegions(); i++) {
   region = sourceSheet.getMergedRegionAt(i);
   if ((region.getRowFrom() >= pStartRow)&& (region.getRowTo() <= pEndRow)) {
    targetRowFrom = region.getRowFrom() - pStartRow + pPosition;
    targetRowTo = region.getRowTo() - pStartRow + pPosition;
    region.setRowFrom(targetRowFrom);
    region.setRowTo(targetRowTo);
    targetSheet.addMergedRegion(region);
   }
  }*/
  // 设置列宽
  for (i = pStartRow; i <= pEndRow; i++) {
   sourceRow = sourceSheet.getRow(i);
   if (sourceRow != null) {
    for (j = sourceRow.getFirstCellNum(); j < sourceRow.getLastCellNum(); j++) {
     targetSheet.setColumnWidth(j, sourceSheet.getColumnWidth(j));
    }
    break;
   }
  }
  // 拷贝行并填充数据
  for (; i <= pEndRow; i++) {
   sourceRow = sourceSheet.getRow(i);
   if (sourceRow == null) {
    continue;
   }
   targetRow = targetSheet.createRow(i - pStartRow + pPosition);
   targetRow.setHeight(sourceRow.getHeight());
   for (j = sourceRow.getFirstCellNum(); j < sourceRow.getLastCellNum(); j++) {
    sourceCell = sourceRow.getCell(j);
    if (sourceCell == null) {
     continue;
    }
    targetCell = targetRow.createCell(j);    
    targetCell.setCellStyle(sourceCell.getCellStyle());
    cType = sourceCell.getCellType();
    targetCell.setCellType(cType);
    switch (cType) {
    case HSSFCell.CELL_TYPE_BOOLEAN:
     targetCell.setCellValue(sourceCell.getBooleanCellValue());
     break;
    case HSSFCell.CELL_TYPE_ERROR:
     targetCell.setCellErrorValue(sourceCell.getErrorCellValue());
     break;
    case HSSFCell.CELL_TYPE_FORMULA:
     targetCell.setCellFormula(parseFormula(sourceCell.getCellFormula()));
     break;
    case HSSFCell.CELL_TYPE_NUMERIC:
     targetCell.setCellValue(sourceCell.getNumericCellValue());
     break;
    case HSSFCell.CELL_TYPE_STRING:
     targetCell.setCellValue(sourceCell.getRichStringCellValue());
     break;
    }
    if(this.autoPagination){
     this.setFormulaBlankCell(sourceCell,tempStartRowNum);
    }
   }
  }
 }
    private String parseFormula(String pPOIFormula) {
  final String cstReplaceString = "ATTR(semiVolatile)"; //$NON-NLS-1$
  StringBuffer result = null;
  int index;
  result = new StringBuffer();
  index = pPOIFormula.indexOf(cstReplaceString);
  if (index >= 0) {
   result.append(pPOIFormula.substring(0, index));
   result.append(pPOIFormula.substring(index+ cstReplaceString.length()));
  } else {
   result.append(pPOIFormula);
  }
  return result.toString();
 }
 
    /**
  * 将列的索引换算成ABCD字母，这个方法要在插入公式时用到
  * @param colIndex 列索引。
  * @return ABCD字母。
  */
    /*
    private String getColLetter(int colIndex){
     String ch = "";
        if (colIndex  < 26)
            ch = "" + (char)((colIndex) + 65);
        else
           ch = "" + (char)((colIndex) / 26 + 65 - 1) + (char)((colIndex) % 26 + 65);
        return ch;
    }
    */
    private int getColumnIndex(char c){
     int i=c;
     return i-65;
    }
    private int getOpIndex(String s){
     for(int i=0;i<OP_FLAG.length;i++){
      int index=s.indexOf(OP_FLAG[i]);
      if(index!=-1){
       return index;
      }
     }
     return -1;
    }
    /**
     * 判断是否无效Cell
     * @param cell
     * @return
     */
    private boolean invalidCellValue(HSSFCell cell){
     if(cell.getCellType()==HSSFCell.CELL_TYPE_BLANK){
      return true;
     }
     else if(cell.getCellType()==HSSFCell.CELL_TYPE_STRING){
      if(cell.getRichStringCellValue().getString()==null||cell.getRichStringCellValue().getString().equals("")){
       return true;
      }
     }
     else if(cell.getCellType()==HSSFCell.CELL_TYPE_ERROR){
      return true;
     }
     return false;
    }
    
    /**
     * 如果模板文件是否存在
     * @param filename 模板文件名
     * @return 文件存在返回true,否则false
     * @throws IOException
     */
    protected boolean isExistTemplate(String templateFile)throws IOException{
     File file=new File(templateFile);
     return file.exists();
    }

    /**
     * 预初始化模板文件<BR>
     * 当用户指定的模板文件不存在时，将自动生成指定的模板文件，并第一行设置为要导出的字段列
     * @param templateFile 模板文件名
     * @param dataObject 数据实体对象
     * @throws Exception
     */
    public void prepareInitializeTemplate(String templateFile,DataObject dataObject) throws Exception{
      HSSFWorkbook wb = new HSSFWorkbook();
      FileOutputStream fileOut = new FileOutputStream(templateFile);
      HSSFSheet sheet = wb.createSheet("new sheet");
      //设置模板的第一行为输出字段定义列
      HSSFRow row = sheet.createRow((short)0);
      Object[] properties=dataObject.getType().getDeclaredProperties().toArray();
      for(int i=0;i<properties.length;i++){
       PropertyImpl property=(PropertyImpl)properties[i];
       HSSFCell cell = row.createCell((short)i);
       HSSFRichTextString text=new HSSFRichTextString("#"+property.getName());
       cell.setCellValue(text);
      }
      wb.write(fileOut);
      fileOut.close();
    }
    
    /**
     * 
     * @param targetFile
     * @param entityName
     * @param type 
     * @param importParam   导入设置的参数
     * @param submitCount   一次最多的提交的数据条数
     * @param ifDxmk 大修模块导入专用字段 ,其他导入无视
     * @return
     * @throws Exception
     */
    @SuppressWarnings({ "unchecked", "rawtypes" })
	public List importDataNew(String targetFile,String entityName,String tempFile,String jd,String jz, String type,String ifDxmk)throws Exception{
    	String myOverhaulsq = "";
    	// 最后返回的数据
		List result = new ArrayList();//反馈结果
		 boolean b = judgeExcelTemplate(targetFile, tempFile);
		 //导入模板错误
		 if(!b){
			 Map<String, Object> map = new HashMap<String, Object>();
			 map.put("code", "0");
			 map.put("message", "导入数据模板错误，请校验导入模板！");
			 result.add(map);
			 return result;
		 }
    	
    	SimpleDateFormat ctime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");	
    	String createtime = ctime.format(new Date());
    	String total,snum,fnum="";
    	int x=0,y=0;
    	
    	List fail = new ArrayList();//导入未成功的记录
    	
//		Map<String, String> rst=new HashMap<String, String>();
		
		XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(targetFile));
		XSSFSheet sheet = wb.getSheetAt(0);
		
		initializeX(sheet);   //获取要导入数据的标题头
		int rows = sheet.getPhysicalNumberOfRows();
		String entityKeys = "#";
        List<HashMap<String, String>> columnList = baseJdglUtil.getPropertyByEntityName(entityName, "");
//        System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<< 导入数据 开始                   >>>>>>>>>>>>>>>>>>>>");
       
        if(columnList != null && columnList.size() > 0){
            for (int i = 0; i < columnList.size(); i++) {
                Map<String, String> columnMap = columnList.get(i);
                entityKeys += columnMap.get("FieldName") + "#";
            }
        }
        int t=1;
        
        
        //【群厂技术管理】-【经验反馈和良好实践管理】流水号初始化
        int serialNumber = 0;
        if("com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.EmpiricalFeedback".equals(entityName)){
        	 String bh1= getBhNo();
        	 if(StringUtils.isNotBlank(bh1)){
        		 serialNumber = Integer.parseInt(bh1.substring(bh1.lastIndexOf("-")+9));
        	 }
        }
        
        
     // 第一行为#字段名
     		// 第二行为字段标题，因此内容读取从第3行读取数据
     			for (int rowCount = 2; rowCount < rows; rowCount++) {
     				XSSFRow sourceRow = sheet.getRow(rowCount);
     				DataObject importEntity = DataObjectUtil.createDataObject(entityName);
     				Map<String, Object> params=new HashMap<String, Object>();
     				//正常计入成功日志
     				   //获取主键序列号
     				 
     				/**附加字段**/
     				if(entityKeys.indexOf("#uuid#") >= 0){ importEntity.set("uuid", UUID.randomUUID().toString().replaceAll("-","")); }
     				if(entityKeys.indexOf("#id#") >= 0){ importEntity.set("id", UUID.randomUUID().toString().replaceAll("-","")); }
     				if(entityKeys.indexOf("#adduser#")  >= 0){ importEntity.set("adduser", CommonUtil.getUserObject().getUserRealName()); }
     				if(entityKeys.indexOf("#datetime#") >= 0){ importEntity.set("datetime", DateUtil.getJVMDate()); }
     				if(entityKeys.indexOf("#creator#") >= 0){importEntity.set("creator", CommonUtil.getUserObject().getUserRealName()); }
     				if(entityKeys.indexOf("#base#") >= 0){ importEntity.set("base", jd);}
     				if(entityKeys.indexOf("#jd#")>= 0){ importEntity.set("jd", jd);}
     				if(entityKeys.indexOf("#JD#")>= 0){ importEntity.set("JD", jd);}
     				if(entityKeys.indexOf("#jdid#") >= 0){ importEntity.set("jdid", jd);}
     				if(entityKeys.indexOf("#dzid#") >= 0){ importEntity.set("dzid", jd);}
     				if(entityKeys.indexOf("#crew#") >= 0){importEntity.set("crew", jz);}
     				if(entityKeys.indexOf("#jz#")   >= 0){importEntity.set("jz", jz);}
     				if(entityKeys.indexOf("#jzid#") >= 0){importEntity.set("jzid", jz);}
     				if(entityKeys.indexOf("#jizu#") >= 0){importEntity.set("jizu", jz);}
     				if(entityKeys.indexOf("#type#")>= 0){importEntity.set("type", type);}
     				if(entityKeys.indexOf("#isdel#")>= 0){importEntity.set("isdel","0");}
     				if(entityKeys.indexOf("#isbf#")>= 0){importEntity.set("isbf","ZC");}
     				if(entityKeys.indexOf("#batchindex#")>= 0){importEntity.set("batchindex","1");}
     				if(entityKeys.indexOf("#addtime#")>= 0){
     				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");	
     				importEntity.set("addtime",  sdf.format(new Date()));
     				}
//     				if(entityKeys.indexOf("#createtime#")>= 0){
//         				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");	
//         				importEntity.set("createtime",  sdf.format(new Date()));
//         			}
     				if(entityKeys.indexOf("#isdelete#")>= 0){importEntity.set("isdelete", "0");}
     				if(entityKeys.indexOf("#orderno#") >= 0){
     					BigDecimal be = new BigDecimal(rowCount - 1);
     					importEntity.set("orderno", be);
     				}
//     				if(importEntity.getType().getName().equals("Material")){
     					if(entityKeys.indexOf("#createtime#") >= 0){
     						importEntity.set("createtime", createtime);
     					}	
     					
//     				}
     					
     				
     				
     				// 判断某一行是否允许插入，当该行的所有列cell均为BLANK时不插入数据库
     				try {
     				// 以下构造导入的实体对象，并根据Excel单元格的内容填充实体属性值
     				String overhaulsq="";
     				for (int cellCount = 0; cellCount < fieldNames.length; cellCount++) {
     					String propertyName = fieldNames[cellCount];
     					if(propertyName==null||propertyName.equals("")){
     						continue;
     					}
     					XSSFCell cell = sourceRow.getCell((short) cellCount);
     					String value = null;
     					if(cell != null){
     						value = returnExcelCellValue(cell);
     						value = "/".equals(value) ? "" : value;
     						if(value.indexOf("+") != -1){
     							value = value.replace("+", "＋");
     						}
     					}
     					params.put(propertyName, value);
     					
     					if(dicFields.contains(","+propertyName+",")){ //数据字典字段
     						importEntity.set(fieldNames[cellCount], returnDicValue(dicFieldInfo.get(propertyName),value,"DICTNAME","DICTID"));
     					}else if(jdFields != null && propertyName.equals(jdFields)){ //基地
     						importEntity.set(fieldNames[cellCount], returnJdjzValue(value, 1, "NAME", "ID"));
     					}else if(jzFields != null && propertyName.equals(jzFields)){ //机组
     						importEntity.set(fieldNames[cellCount], returnJdjzValue(value, 2, "NAME", "ID"));
     					}else{
     						//像对应实体放Excel读取到的值
     						TypeReference typeReference = (TypeReference) importEntity.getType().getProperty(propertyName).getType();
     						Type propertyType = typeReference.getActualType();
     						if (propertyType instanceof IntType|| propertyType instanceof IntegerType) {
     							// 防止可能出现的Excel表格读取自动加.号
     							if (value.indexOf(".") != -1)
     								value = value.substring(0, value.indexOf("."));
     							importEntity.set(fieldNames[cellCount],ChangeUtil.toInteger(value));
     						} else if (propertyType instanceof BooleanType) {
     							importEntity.set(fieldNames[cellCount],ChangeUtil.toBoolean(Boolean.valueOf(value)));
     						} else if (propertyType instanceof FloatType) {
     							importEntity.set(fieldNames[cellCount],ChangeUtil.toFloat(value));
     						} else if (propertyType instanceof LongType) {
     							if (value.indexOf(".") != -1)
     								value = value.substring(0, value.indexOf("."));
     							importEntity.set(fieldNames[cellCount],ChangeUtil.toLong(value));
     						} else if (propertyType instanceof DecimalType) {
     							importEntity.set(fieldNames[cellCount],ChangeUtil.toBigDecimal(value));
     						} else if (propertyType instanceof DateType) {
     							importEntity.set(fieldNames[cellCount],ChangeUtil.changeToDBDate(value));
     						} else if (propertyType instanceof DateTimeType) {
     							importEntity.set(fieldNames[cellCount],ChangeUtil.toTimestamp(value));
     						} else {
     							importEntity.set(fieldNames[cellCount], (StringUtil.isEmpty(value) ? null : value ));
     						}
     						
     						//大修模块单独处理机组和轮次，其他导入无视
     						if(!StringUtil.isEmpty(ifDxmk) && ifDxmk.equals("true") && propertyName.equals("xh")){
     							if(value.length() >= 4){
     								importEntity.set("jzid", returnJdjzValue(value.substring(0,2), 2, "NAME", "ID"));
     								importEntity.set("dxlc", value.substring(2,4));
     							}else if(value.length() >= 2){
     								importEntity.set("jzid", returnJdjzValue(value.substring(0,2), 2, "NAME", "ID"));
     							}
     						}
     						//异物fo编号拼接
     						if(importEntity.getType().getName().equals("Foreignmattermg")){
     							if("overhaulsq".equalsIgnoreCase(fieldNames[cellCount])){
     								myOverhaulsq = value;
     								overhaulsq = "FO-"+value+"-";
     							}
     	 						int serialnum = 0;
     	 						if("focde".equalsIgnoreCase(fieldNames[cellCount])){
     	 							if(entityKeys.indexOf("#serialnum#") >= 0){
     	     							Map sqlVal = new HashMap();
     	     							sqlVal.put("jd",jd);
     	     							sqlVal.put("jz", jz);
     	     							sqlVal.put("overhaulsq", myOverhaulsq);
     	     							String sql="com.cgn.itmp.inspectcomponentmanage.foreignmattermg.impl.foreignmattermgsql.getMaxSerialnum";
     	     							Object[] returnData = DatabaseExt.queryByNamedSql("default", sql, sqlVal);
     	     							serialnum = ((DataObject)returnData[0]).getInt("SERIALNUM");//获取数据数量
     	     							importEntity.set(fieldNames[cellCount], overhaulsq+(serialnum+1));
     	     							BigDecimal be = new BigDecimal(serialnum+1);
     	     							importEntity.set("serialnum",be);
     	     						}
     	     					}	
     	     					
     	     				}
     						
     					}
     				}
     				if("com.cgn.itmp.dailyandoverhaul.authorization.NdtQualificationMgt.NdtQualificationMgt".equals(entityName)){
 		 				importEntity.set("zmwjyw", "WU");
     		        }
     				//如果是役检目录树模块
     				boolean yjsFlag = DataObjectUtil.checkEntityName(importEntity, "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree");
     				if(yjsFlag == true){
     					String devicename=importEntity.getString("devicename");
 						String partname=importEntity.getString("partname");
 						String detectedsite=importEntity.getString("detectedsite");
     					if(StringUtil.isEmpty(devicename)||StringUtil.isEmpty(partname)||StringUtil.isEmpty(detectedsite)){
     						 fail.add(params);
	     					   y++;//失败数+1
	     					   continue;
     					}
     				}
     				
     				//如果 是焊接工艺卡管理模块
     				boolean gykFlag = DataObjectUtil.checkEntityName(importEntity, "com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard");
 					if(gykFlag == true){
 						String card_number=importEntity.getString("card_number");
 						String edition=importEntity.getString("edition");
 						String sql="com.cgn.itmp.weldingmanagement.weldingprocesscard.wpcard.getwpseditioncount";
 						Map<String, String> map=new HashMap<String, String>();
 						map.put("jd", jd);
 						map.put("card_number", card_number);
 						map.put("edition", edition);
 						Object[] countStrs = DatabaseExt.queryByNamedSql("default", sql, map);
 						if(countStrs.length>0){
	 							
 							if(((DataObject)countStrs[0]).getInt("count")>0){
		 	     					   fail.add(params);
		 	     					   y++;//失败数+1
		 	     					   continue;
	 							}
 						}
 					}
     				
 						//【群厂技术管理】-【经验反馈和良好实践管理】
     					boolean flag = DataObjectUtil.checkEntityName(importEntity, "com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.EmpiricalFeedback");
     					if(flag == true){
     						String bhN=importEntity.getString("bh");
     						String types=importEntity.getString("type");
     						String ly=importEntity.getString("ly");
     						String quarry=importEntity.getString("quarry");
     						SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");//设置日期格式
     				        String xtsj=df.format(new Date());// new Date()为获取当前系统时间
     				        bhN=types+"-"+ly+"-"+quarry+"-"+xtsj;    						
     				       
     				       /* String bh1= this.getBhNo();
     						if(StringHelper.isEmpty(bh1)){
     							bhN=bhN+"01";
     						}else{
     							int newStr=Integer.parseInt(bh1.substring(bh1.length()-2));
     							if(newStr<10){
     								bhN=bhN+"0"+String.valueOf(newStr+1);
     							}else{
     								bhN=bhN+String.valueOf(newStr+1);
     							}
     						}*/
     				        
     				        if(serialNumber == 0){
     				        	bhN=bhN+"01";
     				        }else{
     				        	if(serialNumber+1<10){
     								bhN=bhN+"0"+String.valueOf(serialNumber+1);
     							}else{
     								bhN=bhN+String.valueOf(serialNumber+1);
     							}
     				        }
     				       serialNumber++;
     						SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
     						importEntity.setString("addtime",  sdf.format(new Date()));
     						importEntity.set("bh", bhN);
     					}
     					
 						//焊材提醒先查询该基地模板下有无提醒数据
     					if(importEntity.getType().getName().equals("Material")){
	     					String inventory=importEntity.getString("inventory");
	     					String minimum=importEntity.getString("minimum");
	     						int kucun=Integer.parseInt(inventory);
	     						int zuixiao=Integer.parseInt(minimum);
	     						if(kucun<zuixiao){
	     						String sql="com.cgn.itmp.weldingmanagement.Material.impl.materialsql.getmaterialreminder";//获取提醒的最大编号
	 							Object[] queryByNamedSql = DatabaseExt.queryByNamedSql("default", sql, jd);
	 							int a=0;
	 							if(null!=queryByNamedSql && queryByNamedSql.length>0){//对应基地机组模板下有数据
	 								a = ((DataObject)queryByNamedSql[0]).getInt("kucunremind");//获取数据数量
	 								if(a>0){
	 									importEntity.set("kucunremind",a+1);
		 							}else{
		 								importEntity.set("kucunremind",t);
		 								t++;
		 							}
	 							}
	 						}
     					}
     					
     					//焊机和焊材和焊工导入时，生成二维码
//     					if(importEntity.getType().getName().equals("Machine") || importEntity.getType().getName().equals("Material")){
//     						String id = importEntity.getString("uuid");
//     						String content = "uuid="+id;
//     						boolean b = QrCodeUtil.createFtpQrCode(id, content, id+".png");
//     						if(b){
//     							importEntity.set("qrcode", id+".png");
//     						}
//     						if(StringUtils.isNotBlank(importEntity.getString("state"))){
//     							importEntity.set("state",returnDicValue("HJGLZT", importEntity.getString("state"), "DICTNAME", "DICTID"));
//     						}
//     					}
     					//百科全书导入
     					if(importEntity.getType().getName().equals("TInEncyclopedia")){
     						SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
     						importEntity.set("uploadtime", sdf.format(new Date()));
     						importEntity.set("uploadperson", CommonUtil.getUserObject().getUserRealName());
     					}
     					
     				    DatabaseUtil.insertEntity("default", importEntity);
     				    x++;//成功数+1
//     				    System.out.println("<<<<<<<<<<<<成功第" + (rowCount - 1) + "条导入数据");
     					   
     			    } catch (Exception e) {//异常为导入失败,计入失败日志
//     			    	 throw e;
     			    	e.printStackTrace();
     					   fail.add(params);
//     					   System.out.println("<<<<<<<<<<<<失败第" + (rowCount - 1) + "条导入数据");
     					   y++;//失败数+1
     			    }  
     			}
     		
     		total=""+(x+y);
     		snum=""+x;fnum=""+y;
     		result.add(0, total);
     		result.add(1, snum);
     		result.add(2, fnum);
     		if(fail.size()>0){
     		  
     			result.add(3,returnErrorResult(tempFile,fail,targetFile));
     		  
     		}
//     		System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<< 导入数据 结束                   >>>>>>>>>>>>>>>>>>>>");
		return result;
    }
    
    
    
    
  
    
    @Bizlet("检测导入的结果是否需要返回错误导入数据")
    public String returnErrorResult(String tempFile,List<DataObject> failRow,String sourceFile){
    	String tempFileName = "";
    	 try{
    		 
    		 XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(sourceFile));
    		 XSSFSheet sheet = wb.getSheetAt(0);
    		 
    		 initializeX(sheet);   //获取要导入数据的标题头
    		 
    		 for(int delIndex = 2 ; delIndex <= sheet.getLastRowNum() ; delIndex++ ){
    			 sheet.removeRow(sheet.getRow(delIndex));
    		 }
    	
             for(int i = 0 ; i < failRow.size() ; i++ ){
        		 XSSFRow row = sheet.createRow(2+i);
        		 HashMap<String, Object> temp =  (HashMap<String, Object>)failRow.get(i);
             	for(int k = 0 ;k < fieldNames.length ; k++){
             		XSSFCell cell = row.createCell((short)k);
             		cell.setCellValue((String)temp.get(fieldNames[k]));
             	} 
             }

             tempFileName = "导入错误的数据"+System.currentTimeMillis()+".xlsx";
             String tempDir = ApplicationContext.getInstance().getWarRealPath()+ "tempFile";
             
             File file = new File(tempDir);
             if (!file.exists()) {
                 file.mkdirs();
             }
             
             String templateDir=tempDir+File.separator+tempFileName;
            
             new File (templateDir).createNewFile();
             
             FileOutputStream fileOut = new FileOutputStream(templateDir);
             
             wb.write(fileOut);
             fileOut.close();
         	
         	
         } catch(Exception e) { 
        	 tempFileName = "";
             e.printStackTrace();

         }  	 
    	 return "tempFile"+File.separator+tempFileName;
   }

    /**
     * 多sheet页导出 错误数据
     * @param tempFile
     * @param failRow
     * @param sourceFile
     * @return
     */
    @Bizlet("检测导入的结果是否需要返回错误导入数据")
    public String returnErrorResultPipe(String tempFile,List<Map<String, Object>> failRow,String sourceFile){
    	String tempFileName = "";
    	 try{
    		 
    		 XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(sourceFile));
    		 for(int i= 0;i < failRow.size(); i++){
    			 Map<String, Object> map = failRow.get(i);
    			 List<DataObject> dataList = (List<DataObject>) map.get("failDataList");
    			 
    			 List<String> fieldNames = (List<String>) map.get("rowColumn");
				 XSSFSheet sheet = wb.getSheetAt(Integer.parseInt(String.valueOf(map.get("sheetNumber"))));
	    		 
	    		 for(int delIndex = 3 ; delIndex <= sheet.getLastRowNum() ; delIndex++ ){
	    			 sheet.removeRow(sheet.getRow(delIndex));
	    		 }
	    		 if(dataList.size() > 0){
	    			 for(int j = 0 ; j < dataList.size() ; j++ ){
		            	 DataObject obj = dataList.get(j);
		        		 XSSFRow row = sheet.createRow(3+j);
		             	for(int k = 0 ;k < fieldNames.size() ; k++){
		             		XSSFCell cell = row.createCell((short)k);
		             		cell.setCellValue(obj.getString(fieldNames.get(k)));
		             	} 
		             }
    			 }
    		 }

             tempFileName = "导入错误的数据"+System.currentTimeMillis()+".xlsx";
             String tempDir = ApplicationContext.getInstance().getWarRealPath()+ "tempFile";
             
             File file = new File(tempDir);
             if (!file.exists()) {
                 file.mkdirs();
             }
             
             String templateDir=tempDir+File.separator+tempFileName;
            
             new File (templateDir).createNewFile();
             
             FileOutputStream fileOut = new FileOutputStream(templateDir);
             
             wb.write(fileOut);
             fileOut.close();
         	
         	
         } catch(Exception e) { 
        	 tempFileName = "";
             e.printStackTrace();

         }  	 
    	 return "tempFile"+File.separator+tempFileName;
   }
    
    
    /**
     * 多sheet页导出 错误数据
     * @param tempFile
     * @param failRow
     * @param sourceFile
     * @return
     */
    @SuppressWarnings("unchecked")
	@Bizlet("检测导入的结果是否需要返回错误导入数据")
    public String returnErrorResultKnowledge(String tempFile,List<Map<String, Object>> failRow,String sourceFile){
    	String tempFileName = "";
    	 try{
    		 
    		 XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(sourceFile));
    		 for(int i= 0;i < failRow.size(); i++){
    			 Map<String, Object> map = failRow.get(i);
    			 List<DataObject> dataList = (List<DataObject>) map.get("failDataList");
    			 
    			 List<String> fieldNames = (List<String>) map.get("rowColumn");
				 XSSFSheet sheet = wb.getSheetAt(Integer.parseInt(String.valueOf(map.get("sheetNumber"))));
	    		 for(int delIndex = 2 ; delIndex <= sheet.getLastRowNum() ; delIndex++ ){
	    			 if(sheet.getRow(delIndex) != null){
	    				 sheet.removeRow(sheet.getRow(delIndex));
	    			 }
	    		 }
	    		 if(dataList.size() > 0){
	    			 Collections.reverse(dataList);
	    			 for(int j = 0 ; j < dataList.size() ; j++ ){
		            	 DataObject obj = dataList.get(j);
		        		 XSSFRow row = sheet.createRow(2+j);
		             	for(int k = 0 ;k < fieldNames.size() ; k++){
		             		XSSFCell cell = row.createCell((short)k);
		             		cell.setCellValue(obj.getString(fieldNames.get(k).substring(1,fieldNames.get(k).length())));
		             	} 
		             }
    			 }
    		 }

             tempFileName = "导入错误的数据"+System.currentTimeMillis()+".xlsx";
             String tempDir = ApplicationContext.getInstance().getWarRealPath()+ "tempFile";
             
             File file = new File(tempDir);
             if (!file.exists()) {
                 file.mkdirs();
             }
             
             String templateDir=tempDir+File.separator+tempFileName;
            
             new File (templateDir).createNewFile();
             
             FileOutputStream fileOut = new FileOutputStream(templateDir);
             
             wb.write(fileOut);
             fileOut.close();
         	
         	
         } catch(Exception e) { 
        	 tempFileName = "";
             e.printStackTrace();

         }  	 
    	 return "tempFile"+File.separator+tempFileName;
   }
    
    @Bizlet(
    	  value="根据用户自定义导出数据",
  		  params = {
			   @BizletParam(index = 0, paramAlias = "expData:要导出的数据集",type=ParamType.CONSTANT),
			   @BizletParam(index = 1, paramAlias = "title:导出数据的标题头",type=ParamType.CONSTANT)
		    }
		 )
    public String exportExcelCustomTitle(DataObject[] expData,String [] title,String titleName,String dicFieds,String jdFied,String jzFied,String filePath)throws Exception{
    	XSSFWorkbook wb = new XSSFWorkbook();    
    	XSSFSheet sheet = wb.createSheet(titleName);// 创建工作表
        XSSFRow row = sheet.createRow(0); // 产生表格标题行
        List<String> expFiled = new ArrayList<String>();
        for(int i=0;i<title.length;i++){
         String[] oneFiled = title[i].split("@");
         expFiled.add(oneFiled[0]);
         XSSFCell cell = row.createCell((short)i);
         //HSSFRichTextString text = new HSSFRichTextString(oneFiled[1]);
         cell.setCellValue(oneFiled[1]);
        }
        String dicMatchCriteria = ",";
        HashMap<String, String> dicFaInfo = new HashMap<String, String>();
        if(!StringHelper.isEmpty(dicFieds)){
        	String dicFied[] = dicFieds.split(",");
            for(int x = 0 ; x < dicFied.length ; x++){
            	String key  = dicFied[x].split("@")[0].toString().toLowerCase();
            	String val  = dicFied[x].split("@")[1].toString();
            	dicMatchCriteria += key + "," ;
            	dicFaInfo.put(key,val);
            }
        }
        
        List<String> realList = new ArrayList<String>();
        
        int startRow = 1 ;
        //插入数据
        for(int j = 0 ; j < expData.length ; j++ ){
        	realList.add(expData[j].getString("uuid"));
        	XSSFRow nowRow = sheet.createRow(startRow);
        	for(int k = 0 ;k < expFiled.size()  ; k++){
        		XSSFCell nowCell = nowRow.createCell((short)k);
        		String value = "";
        		if(dicMatchCriteria.indexOf(","+expFiled.get(k).toLowerCase()+",") >= 0){ //是数据字典字段
        			value = returnDicValue(dicFaInfo.get(expFiled.get(k).toLowerCase()),expData[j].getString(expFiled.get(k)),"DICTID","DICTNAME");
        			
        		}else if(jdFied != null &&  expFiled.get(k).toLowerCase().equals(jdFied.toLowerCase())){//是基地字段
        			
        			value = returnJdjzValue(expData[j].getString(expFiled.get(k)),1,"ID","NAME");
        			
        		}else if(jzFied != null && expFiled.get(k).toLowerCase().equals(jzFied.toLowerCase())){//是机组字段
        			String jzIds = expData[j].getString(expFiled.get(k));
//        			if(jzIds.contains(",")){
//        				jzIds = jzIds.replaceAll(",", "','");
//        			}
        			value = returnJdjzValue(jzIds,2,"ID","NAME");
        			
        		}else{
        			String TypeS = expData[j].getInstanceProperty(expFiled.get(k)).getType().getName(); //获取数据类型
            		if ("Date".equals(TypeS)) {
            			value  = ChangeUtil.formatDate(expData[j].getDate(expFiled.get(k)),"yyyy-MM-dd");
    				} else{
    					value  = expData[j].getString(expFiled.get(k));
    				}	
        		}
        		
        		nowCell.setCellValue( value  );
        	}
        	startRow++;
        }
    	if(titleName.equals("压力容器") || titleName.equals("压力管道")){
    		List<Map<String, Object>> dataList = new ArrayList<Map<String,Object>>();
    		if(titleName.equals("压力容器")){
    			PressurevesselService pressurevesselService = new PressurevesselService();
        		dataList = pressurevesselService.getAllChildDatas(realList);
    		}else if(titleName.equals("压力管道")){
    			PressurepipingService pressurepipingService = new PressurepipingService();
    			dataList = pressurepipingService.getAllChildDatas(realList);
    		}
	    	
	    	//遍历多格子表数据
	    	for(Map<String, Object> data : dataList){
	    		XSSFSheet childSheet = wb.createSheet(String.valueOf(data.get("sheetName")));// 创建sheet
	    		//字段名称
	    		XSSFRow childRow = childSheet.createRow(0); 
	    		String[] columnNames = (String.valueOf(data.get("columnName"))).split(",");
	    		for(int i = 0 ;i < columnNames.length;i++){
	    			 XSSFCell childCell = childRow.createCell((short)i);
	    			 childCell.setCellValue(columnNames[i]);
	    		}
	    		//数据区
	    		int beginRow = 1;
	    		Object[] childDatas = (Object[]) data.get("data");
	    		for(Object obj:childDatas){
	    			DataObject entity =(DataObject) obj;
	    			String[] columns = (String.valueOf(data.get("column"))).split(",");
	    			XSSFRow currentRow = childSheet.createRow(beginRow);
	    			for(int j = 0; j < columns.length; j++){
	    				XSSFCell currentCell = currentRow.createCell((short)j);
	    				String columnValue = "";
	    				if(StringUtils.isNotBlank(String.valueOf(entity.get(columns[j])))){
	    					String columnType = entity.getInstanceProperty(columns[j]).getType().getName();
	    					if ("Date".equals(columnType)) {
	    						columnValue  = ChangeUtil.formatDate(entity.getDate(columns[j]),ChangeUtil.DATE_FORMAT_YMD_HMS);
	        				} else{
	        					columnValue  = entity.getString(columns[j]);
	        				}	
	    				}
	    				currentCell.setCellValue(columnValue);
	    			}
	    			beginRow++;
	    		}
	    	}
    	}
        File file = new File(filePath);
        if (!file.exists()) {
            file.mkdirs();
        }
        String fileName = titleName+System.currentTimeMillis()+".xlsx";
        String templateDir=filePath+File.separator+fileName;
        new File (templateDir).createNewFile();
        FileOutputStream fileOut = new FileOutputStream(templateDir);
        wb.write(fileOut);
        fileOut.close();
    	return "tempFile"+File.separator+fileName;
    }
    
    
    /**
   	 * 依据内容判断是否为excel2007及以上
   	 */
   	public static boolean isExcel2007(String filePath) {
   		try {
   			BufferedInputStream bis = new BufferedInputStream(new FileInputStream(filePath));
   			if (POIXMLDocument.hasOOXMLHeader(bis)) {
//   				System.out.println("Excel版本为excel2007及以上");
   				return true;
   			}
   		} catch (IOException e) {
   			e.printStackTrace();
   			return false;
   		}
   		return false;
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
//			if (HSSFDateUtil.isCellDateFormatted(cell)) {
//				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//				value = dateFormat.format((cell.getDateCellValue()));
//			} else {
//				value = String.valueOf((long) cell.getNumericCellValue());
//			}
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
   	
   	
   	//根据类型ID与数据字典编码 返回对应的Val
   	public static String returnDicValue(String typeId,String dicVal,String searchKey,String returnKey){
   		if(StringUtil.isEmpty(typeId) || StringUtil.isEmpty(dicVal)){
			return null;
		}
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("DICTTYPEID", typeId);
		map.put(searchKey, dicVal);
		Object[] dicInfo =  DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.basecommon.jdglSql.returnDicValue", map);
		String val = "";
		
		if(dicInfo.length > 0){
			val = ((DataObject)dicInfo[0]).getString(returnKey);	
		}   
		return val;
		
   	}
   
   	//根据类型(1：基地 2：机组) 返回基地机组的中文名称
	public static String returnJdjzValue(String sval,int type,String searchKey,String returnKey){
		if(StringUtil.isEmpty(sval)){
			return null;
		}
		HashMap<String, Object> map = new HashMap<String, Object>();
		if(2 == type ){
			List list = Arrays.asList(sval.split(","));
			map.put(searchKey, list);
		}else if(1 == type ){
			map.put(searchKey, sval);
		}
		
		String val = "";
		String sql = "";
		if(1 == type){
			sql = "com.cgn.itmp.basecommon.jdglSql.returnJdValue";
		}else if(2 == type){
			sql = "com.cgn.itmp.basecommon.jdglSql.returnJzValue";
		}
		if(!"".equals(sql)){
			Object[] jdjzInfo =  DatabaseExt.queryByNamedSql("default", sql, map);
			if(jdjzInfo.length >0){
				for(int r = 0 ; r < jdjzInfo.length ; r++){
					val += ((DataObject)jdjzInfo[r]).getString(returnKey) + (r == jdjzInfo.length-1 ? "":"," );
				}
			}
		}
		
		return val;
	}
	
	/**
	 * 获取当天最近的编号
	 * @return
	 */
	public String getBhNo() throws Exception{
		String sql="com.cgn.itmp.basecommon.jdglSql.getBhNo";
		Object[] result = DatabaseExt.queryByNamedSql("default", sql,null);
		if(result != null && result.length > 0){
			String bh = ((DataObject)(result[0])).getString("bh");
			return bh;
		}
		return "";
	}
	
    
    /**
     * 管版图导入
     * @param targetFile
     * @param entityName
     * @param type 
     * @param importParam   导入设置的参数
     * @param submitCount   一次最多的提交的数据条数
     * @param ifDxmk 大修模块导入专用字段 ,其他导入无视
     * @return
     * @throws IOException 
     * @throws FileNotFoundException 
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
	public List importPipeData(String targetFile,String entityName,String tempFile,String jd,String jz, String type,String ifDxmk,String model) throws FileNotFoundException, IOException{
    	String total,snum,fnum="";
    	int x=0,y=0;
    	List<String> result = new ArrayList<String>();//反馈结果
    	List fail = new ArrayList();//导入未成功的记录
    	
		
		XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(targetFile));
		int allSheet = wb.getNumberOfSheets();
		
		for (int k = 0; k < allSheet; k++) {
			String sheetName = wb.getSheetName(k);
			XSSFSheet sheet = wb.getSheetAt(k);
			
			initializePile(sheet,sheetName);   //获取要导入数据的标题头
			int rows = sheet.getPhysicalNumberOfRows();
			String entityKeys = "#";
	        List<HashMap<String, String>> columnList = baseJdglUtil.getPropertyByEntityName(entityName, "");
//	        System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<< 导入数据 开始  >>>>>>>>>>>>>>>>>>>>");
	        if(columnList != null && columnList.size() > 0){
	            for (int i = 0; i < columnList.size(); i++) {
	                Map<String, String> columnMap = columnList.get(i);
	                entityKeys += columnMap.get("FieldName") + "#";
	            }
	        }
	
		    		// 第一行为#字段名
		     		// 第二行为字段标题，因此内容读取从第3行读取数据
			        int startRow = 0;
			        if(k==0){
			        	startRow=4;
			        }else if (k==2){
			        	startRow=3;
			        }else{
			        	startRow=2;
			        }
	     			for (int rowCount = startRow; rowCount < rows; rowCount++) {
	     				
	     				XSSFRow sourceRow = sheet.getRow(rowCount);
	     				DataObject importEntity = DataObjectUtil.createDataObject(entityName);
	     				Map<String, Object> params=new HashMap<String, Object>();
	     				//正常计入成功日志
	     				   //获取主键序列号
	     				 
	     				/**附加字段**/
	     				importEntity.set("statisticstype", sheetName); 
	     				if(entityKeys.indexOf("#model#") >= 0){ importEntity.set("model", model);}
	     				if(entityKeys.indexOf("#uuid#") >= 0){ importEntity.set("uuid", UUID.randomUUID().toString().replaceAll("-","")); }
	     				if(entityKeys.indexOf("#id#") >= 0){ importEntity.set("id", UUID.randomUUID().toString().replaceAll("-","")); }
	     				if(entityKeys.indexOf("#adduser#")  >= 0){ importEntity.set("adduser", CommonUtil.getUserObject().getUserRealName()); }
	     				if(entityKeys.indexOf("#datetime#") >= 0){ importEntity.set("datetime", DateUtil.getJVMDate()); }
	     				if(entityKeys.indexOf("#creator#") >= 0){importEntity.set("creator", CommonUtil.getUserObject().getUserRealName()); }
	     				if(entityKeys.indexOf("#base#") >= 0){ importEntity.set("base", jd);}
	     				if(entityKeys.indexOf("#jd#")   >= 0){ importEntity.set("jd", jd);}
	     				if(entityKeys.indexOf("#jdid#") >= 0){ importEntity.set("jdid", jd);}
	     				if(entityKeys.indexOf("#dzid#") >= 0){ importEntity.set("dzid", jd);}
	     				if(entityKeys.indexOf("#crew#") >= 0){importEntity.set("crew", jz);}
	     				if(entityKeys.indexOf("#jz#")   >= 0){importEntity.set("jz", jz);}
	     				if(entityKeys.indexOf("#jzid#") >= 0){importEntity.set("jzid", jz);}
	     				if(entityKeys.indexOf("#jizu#") >= 0){importEntity.set("jizu", jz);}
	     				if(entityKeys.indexOf("#type#")>= 0){importEntity.set("type", type);}
	     				if(entityKeys.indexOf("#isdel#")>= 0){importEntity.set("isdel","0");}
	     				if(entityKeys.indexOf("#batchindex#")>= 0){importEntity.set("batchindex","1");}
	     				if(entityKeys.indexOf("#addtime#")>= 0){
	     				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");	
	     				importEntity.set("addtime",  sdf.format(new Date()));
	     				}
	     				if(entityKeys.indexOf("#isdelete#")>= 0){importEntity.set("isdelete", "0");}
	     				if(entityKeys.indexOf("#orderno#") >= 0){
	     					BigDecimal be = new BigDecimal(rowCount - 1);
	     					importEntity.set("orderno", be);
	     				}	
	     				
	     				
	     				// 判断某一行是否允许插入，当该行的所有列cell均为BLANK时不插入数据库
	     				try {
	     				// 以下构造导入的实体对象，并根据Excel单元格的内容填充实体属性值
	     				for (int cellCount = 0; cellCount < fieldNames.length; cellCount++) {
	     					String propertyName = fieldNames[cellCount];
	     					XSSFCell cell = sourceRow.getCell((short) cellCount);
	     					String value = null;
	     					if(cell != null){
	     						value = returnExcelCellValue(cell);
	     						value = "/".equals(value) ? "" : value;
	     						if(value.indexOf("+") != -1){
	     							value = value.replace("+", "＋");
	     						}
	     					}
	     					params.put(propertyName, value);
	     					
	     					if(dicFields.contains(","+propertyName+",")){ //数据字典字段
	     						importEntity.set(fieldNames[cellCount], returnDicValue(dicFieldInfo.get(propertyName),value,"DICTNAME","DICTID"));
	     					}else if(jdFields != null && propertyName.equals(jdFields)){ //基地
	     						importEntity.set(fieldNames[cellCount], returnJdjzValue(value, 1, "NAME", "ID"));
	     					}else if(jzFields != null && propertyName.equals(jzFields)){ //机组
	     						importEntity.set(fieldNames[cellCount], returnJdjzValue(value, 2, "NAME", "ID"));
	     					}else{
	     						//像对应实体放Excel读取到的值
	     						TypeReference typeReference = (TypeReference) importEntity.getType().getProperty(propertyName).getType();
	     						Type propertyType = typeReference.getActualType();
	     						if (propertyType instanceof IntType|| propertyType instanceof IntegerType) {
	     							// 防止可能出现的Excel表格读取自动加.号
	     							if (value.indexOf(".") != -1)
	     								value = value.substring(0, value.indexOf("."));
	     							importEntity.set(fieldNames[cellCount],ChangeUtil.toInteger(value));
	     						} else if (propertyType instanceof BooleanType) {
	     							importEntity.set(fieldNames[cellCount],ChangeUtil.toBoolean(Boolean.valueOf(value)));
	     						} else if (propertyType instanceof FloatType) {
	     							importEntity.set(fieldNames[cellCount],ChangeUtil.toFloat(value));
	     						} else if (propertyType instanceof LongType) {
	     							if (value.indexOf(".") != -1)
	     								value = value.substring(0, value.indexOf("."));
	     							importEntity.set(fieldNames[cellCount],ChangeUtil.toLong(value));
	     						} else if (propertyType instanceof DecimalType) {
	     							importEntity.set(fieldNames[cellCount],ChangeUtil.toBigDecimal(value));
	     						} else if (propertyType instanceof DateType) {
	     							importEntity.set(fieldNames[cellCount],ChangeUtil.changeToDBDate(value));
	     						} else if (propertyType instanceof DateTimeType) {
	     							importEntity.set(fieldNames[cellCount],ChangeUtil.toTimestamp(value));
	     						} else {
	     							if(k==1&&"statisticstype".equalsIgnoreCase(fieldNames[cellCount])){
	     								importEntity.set(fieldNames[cellCount], (StringUtil.isEmpty(value) ? null : value+"_外围抽样" ));
	     							}else{
	     								importEntity.set(fieldNames[cellCount], (StringUtil.isEmpty(value) ? null : value ));
	     							}
	     						}
	     					}
	     				}
	     				    DatabaseUtil.insertEntity("default", importEntity);
	     				    x++;//成功数+1
//	     				    System.out.println("<<<<<<<<<<<<成功第" + (rowCount - 1) + "条导入数据");
	     					   
	     			    } catch (RuntimeException e) {
	      			       throw e;
	      			   }catch (Exception e) {//异常为导入失败,计入失败日志
	     					   fail.add(params);
//	     					   System.out.println("<<<<<<<<<<<<失败第" + (rowCount - 1) + "条导入数据");
	     					   y++;//失败数+1
	     			    }  
	     			
	     				 
	     			}
	     		
	     		total=""+(x+y);
	     		snum=""+x;fnum=""+y;
	     		result.add(0, total);
	     		result.add(1, snum);
	     		result.add(2, fnum);
	     		if(fail.size()>0){
	     		  
	     			result.add(3,returnErrorResult(tempFile,fail,targetFile));
	     		  
	     		}
//	     		System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<< 导入数据 结束  >>>>>>>>>>>>>>>>>>>>");
		}
			return result;
    }
    
    /**
     * 
     * @param targetFile
     * @param entityName
     * @param type 
     * @param importParam   导入设置的参数
     * @param submitCount   一次最多的提交的数据条数
     * @return
     * @throws IOException 
     * @throws FileNotFoundException 
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
	public List importDataNewTemple(String targetFile,String entityName,String tempFile,String jd,String jz, String type,String stencilplate) throws FileNotFoundException, IOException{
    	String total,snum,fnum="";
    	int x=0,y=0;
    	List<String> result = new ArrayList<String>();//反馈结果
    	List fail = new ArrayList();//导入未成功的记录
		
		XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(targetFile));
		XSSFSheet sheet = wb.getSheetAt(0);
		
		initializeX(sheet);   //获取要导入数据的标题头
		int rows = sheet.getPhysicalNumberOfRows();
		String entityKeys = "#";
        List<HashMap<String, String>> columnList = baseJdglUtil.getPropertyByEntityName(entityName, "");
        if(columnList != null && columnList.size() > 0){
            for (int i = 0; i < columnList.size(); i++) {
                Map<String, String> columnMap = columnList.get(i);
                entityKeys += columnMap.get("FieldName") + "#";
            }
        }
        int start=3;//默认开始读取的列为第二行
        
    	HashMap<String, String> map = new HashMap<String, String>();
		map.put("DICTTYPEID", "MODEL_START");
		map.put("DICTID", stencilplate);
		Object[] dicInfo =  DatabaseExt.queryByNamedSql("default", "com.cgn.itmp.basecommon.jdglSql.returnDicValue", map);
		if(dicInfo.length > 0){
			start = ((DataObject)dicInfo[0]).getInt("DICTNAME");//获取初始行号	
		} 
        	//根据机组、模板查询最大的编号，用于编号
        	String bhSql="com.cgn.itmp.basecommon.jdglSql.getQxMaxBhByTemplate";
        	//在数据库中查找模板对应的最大编号
			HashMap<String,String> param=new HashMap<String,String>();
			param.put("jdid", jd);
			param.put("jzid", jz);
			param.put("stencilplate", stencilplate);
			Object[] bhObject  = DatabaseExt.queryByNamedSql("default", bhSql, param);
			String maxbh  = ((DataObject)bhObject[0]).getString("maxbh");	;
			String isExist = "false";//模板下数据是否存在
			if(StringUtil.isEmpty(maxbh)){
				isExist = "true";
				maxbh = "0";
			}else{
				isExist = "true";
				maxbh = ((DataObject)bhObject[0]).getString("maxbh");
			}

     // 第一行为#字段名
     		// 第二行为字段标题，因此内容读取从第3行读取数据(excel下标从0开始读取)
     			for (int rowCount = start-1; rowCount < rows; rowCount++) {
     				XSSFRow sourceRow = sheet.getRow(rowCount);
     				DataObject importEntity = DataObjectUtil.createDataObject(entityName);
     				Map<String, Object> params=new HashMap<String, Object>();
     				//正常计入成功日志
     				   //获取主键序列号
     				 
     				/**附加字段**/
     				if(entityKeys.indexOf("#uuid#") >= 0){ importEntity.set("uuid", UUID.randomUUID().toString().replaceAll("-","")); }
     				if(entityKeys.indexOf("#adduser#")  >= 0){ importEntity.set("adduser", CommonUtil.getUserObject().getUserRealName()); }
     				if(entityKeys.indexOf("#datetime#") >= 0){ importEntity.set("datetime", DateUtil.getJVMDate()); }
     				if(entityKeys.indexOf("#creator#") >= 0){importEntity.set("creator", CommonUtil.getUserObject().getUserRealName()); }
     				if(entityKeys.indexOf("#jd#")   >= 0){ importEntity.set("jd", jd);}
     				if(entityKeys.indexOf("#jz#")   >= 0){importEntity.set("jz", jz);}
     				if(entityKeys.indexOf("#type#")>= 0){importEntity.set("type", type);}
     				if(entityKeys.indexOf("#isdel#")>= 0){importEntity.set("isdel","0");}
     				if(entityKeys.indexOf("#batchindex#")>= 0){importEntity.set("batchindex","1");}
     				if(entityKeys.indexOf("#stencilplate#")>= 0){importEntity.set("stencilplate",stencilplate);}
     				if(entityKeys.indexOf("#handle#")>= 0){importEntity.set("handle","查看");}
     				if(entityKeys.indexOf("#addtime#")>= 0){
     				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");	
     				importEntity.set("addtime",  sdf.format(new Date()));
     				}
     				if(entityKeys.indexOf("#isdelete#")>= 0){importEntity.set("isdelete", "0");}
     				if(entityKeys.indexOf("#createtime#")>= 0){
     					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
         				importEntity.set("createtime",  sdf.format(new Date()));
         				}	
     				// 判断某一行是否允许插入，当该行的所有列cell均为BLANK时不插入数据库
     				try {
     				// 以下构造导入的实体对象，并根据Excel单元格的内容填充实体属性值
     				for (int cellCount = 0; cellCount < fieldNames.length; cellCount++) {
     					String propertyName = fieldNames[cellCount];
     					if(propertyName==null||propertyName.equals("")){
     						continue;
     					}
     					XSSFCell cell = sourceRow.getCell((short) cellCount);
     					String value = null;
     					if(cell != null){
     						value = returnExcelCellValue(cell);
     						value = "/".equals(value) ? "" : value;
     						if(value.indexOf("+") != -1){
     							value = value.replace("+", "＋");
     						}
     					}
     					
     					params.put(propertyName, value);
     					
     					
     					if(dicFields.contains(","+propertyName+",")){ //数据字典字段
     						importEntity.set(fieldNames[cellCount], returnDicValue(dicFieldInfo.get(propertyName),value,"DICTNAME","DICTID"));
     					}else if(jdFields != null && propertyName.equals(jdFields)){ //基地
     						importEntity.set(fieldNames[cellCount], returnJdjzValue(value, 1, "NAME", "ID"));
     					}else if(jzFields != null && propertyName.equals(jzFields)){ //机组
     						importEntity.set(fieldNames[cellCount], returnJdjzValue(value, 2, "NAME", "ID"));
     					}else{
     						//像对应实体放Excel读取到的值
     						TypeReference typeReference = (TypeReference) importEntity.getType().getProperty(propertyName).getType();
     						Type propertyType = typeReference.getActualType();
     						if (propertyType instanceof IntType|| propertyType instanceof IntegerType) {
     							// 防止可能出现的Excel表格读取自动加.号
     							if (value.indexOf(".") != -1)
     								value = value.substring(0, value.indexOf("."));
     							importEntity.set(fieldNames[cellCount],ChangeUtil.toInteger(value));
     						} else if (propertyType instanceof BooleanType) {
     							importEntity.set(fieldNames[cellCount],ChangeUtil.toBoolean(Boolean.valueOf(value)));
     						} else if (propertyType instanceof FloatType) {
     							importEntity.set(fieldNames[cellCount],ChangeUtil.toFloat(value));
     						} else if (propertyType instanceof LongType) {
     							if (value.indexOf(".") != -1)
     								value = value.substring(0, value.indexOf("."));
     							importEntity.set(fieldNames[cellCount],ChangeUtil.toLong(value));
     						} else if (propertyType instanceof DecimalType) {
     							importEntity.set(fieldNames[cellCount],ChangeUtil.toBigDecimal(value));
     						} else if (propertyType instanceof DateType) {
     							importEntity.set(fieldNames[cellCount],ChangeUtil.changeToDBDate(value));
     						} else if (propertyType instanceof DateTimeType) {
     							importEntity.set(fieldNames[cellCount],ChangeUtil.toTimestamp(value));
     						} else {
     							importEntity.set(fieldNames[cellCount], (StringUtil.isEmpty(value) ? null : value ));
     						}
     					}
     				}
     				//设置编号
     				if(isExist.equals("true")){//数据存在时，判断数据编号（该基地该机组该模板下已有数据：1、批量新增--若导入缺陷编号为NI,则系统自动编号，取该基地机组该模板中的最大编号+1；若导入缺陷编号为R，则系统默认缺陷编号为空，导入系统后缺陷编号为空的红色显示在最前，关联历史编号；2、新增-选择历史编号或自动编号即取该基地机组该模板中的最大编号+1）
     					String qxbh = importEntity.getString("defectdisplaynumber");
     					if(!StringUtil.isEmpty(qxbh) && qxbh.equals("NI")){
     						maxbh = String.valueOf(Long.valueOf(maxbh)+1);
     						importEntity.set("defectdisplaynumber",maxbh);
     					}else{
     						importEntity.set("defectdisplaynumber",null);

     					}
     				}else{//数据不存在时，从1开始编号（该基地机组该模板无数据：1、批量新增--从1开始自动编号1（编号要严格按照excle整理的数据顺序从上到下1-1000往下排）；2、新增--系统自动编号为1；）
     					importEntity.set("defectdisplaynumber",maxbh);
         				maxbh = String.valueOf(Long.valueOf(maxbh)+1);
     				}
     				
     				    DatabaseUtil.insertEntity("default", importEntity);
     				    x++;//成功数+1
     			    }catch (RuntimeException e) {
     			       throw e;
     			   }catch (Exception e) {//异常为导入失败,计入失败日志
     					   fail.add(params);
     					   y++;//失败数+1
     			    }  
     			}
     		
     		total=""+(x+y);
     		snum=""+x;fnum=""+y;
     		result.add(0, total);
     		result.add(1, snum);
     		result.add(2, fnum);
     		if(fail.size()>0){
     		  
     			result.add(3,returnErrorResult(tempFile,fail,targetFile));
     		  
     		}
//     		System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<< 导入数据 结束                   >>>>>>>>>>>>>>>>>>>>");
		return result;
    }
    
    
    private void initializePile(XSSFSheet sheet,String sheetName){
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
                           this.dicFields = ",";
                           this.dicFieldInfo = new HashMap<String, String>();
                           setStart=true;
                          }
                          int fieldNameEnd = value.length();
                          if(value.contains(FIELD_TYPE_FLAG)){ //如果是需要转换的字段
                        	  this.fieldNames[c]=value.substring(1,value.indexOf(FIELD_TYPE_FLAG));//初始化内容字段
                        	  fieldNameEnd = value.indexOf(FIELD_TYPE_FLAG);
                        	  if(value.contains(DIC_TYPE_FLAG)){ //是数据字典字段
                        		  String dicKey = value.substring(1,fieldNameEnd);
                        		  String dicVal = value.substring(value.indexOf(DIC_TYPE_FLAG)+1);
                        		  this.dicFields += dicKey+",";
                        		  this.dicFieldInfo.put(dicKey,dicVal);
                        	  }else{   //基地机组字段
                        		  String type = value.substring(value.indexOf(FIELD_TYPE_FLAG)+1);
                        		  if("JD".equals(type)){
                        			  this.jdFields = value.substring(1,fieldNameEnd);
                        		  }else if("JZ".equals(type)){
                        			  this.jzFields = value.substring(1,fieldNameEnd);
                        		  }
                        	  }
                          }
                          this.fieldNames[c]=value.substring(1,fieldNameEnd);//初始化内容字段
                      }
                     }
                 }
                }
            }
        }
   }

    
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    /**
	 * excel批量导入
	 * 知识库模块通用
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
	public List importKnowledgeData(String excelFile, String entityName,
			String tempFile, String jd, String jz, String type, String ifDxmk)
			throws Exception {
		// 最后返回的数据
		List result = new ArrayList();//反馈结果
		 boolean b = judgeExcelTemplate(excelFile, tempFile);
		 //导入模板错误
		 if(!b){
			 Map<String, Object> map = new HashMap<String, Object>();
			 map.put("code", "0");
			 map.put("message", "导入数据模板错误，请校验导入模板！");
			 result.add(map);
			 return result;
		 }
		
		logger.info("<<<<<<<  数据导入开始 >>>>>>>");
		XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(excelFile));
		Iterator<XSSFSheet> sheets = wb.iterator();
		//总数
		int allCounts = 0;
		
		//所有的数据
		List<Map<String, Object>> dataList = new ArrayList<Map<String,Object>>();
		while (sheets.hasNext()) {
			XSSFSheet sheet = sheets.next();
			//第一行 获取字段名称 
			XSSFRow rowColumn = sheet.getRow(0);
			//字段名称
			List<String> columnList = new ArrayList<String>();
			for(int j = 0; j < rowColumn.getPhysicalNumberOfCells(); j++){
				if(rowColumn.getCell(j)!= null){
					columnList.add(rowColumn.getCell(j).getStringCellValue());
				}
			}
			//获取所有的数据
			DataObject[] data = getSheetValue(sheet,entityName,rowColumn,jd,jz);
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
 			result.add(3,new ExcelTemplate().returnErrorResultKnowledge(tempFile,(List<Map<String,Object>>)resMap.get("failList"),excelFile));
 		}
 		logger.info("<<<<<<< 数据导入结束 >>>>>>>");
		return result;
	}
	/**
	 * 获取单个sheet页数据
	 * @param sheet
	 * @return
	 */
	public DataObject[] getSheetValue(XSSFSheet sheet,String entityName,XSSFRow rowColumn,String jd, String jz){
		//实体数组
		DataObject[] entityArr = new DataObject[sheet.getPhysicalNumberOfRows()-2];
		//第四行 获取多行数据，循环遍历
		for(int i= 2;i<sheet.getPhysicalNumberOfRows(); i++){
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
					if (StringUtils.isNotBlank(row.getCell(j).getStringCellValue())){
						String columnName = rowColumn.getCell(j).getStringCellValue();
						if(columnName.contains("*")){
							String dict = columnName.substring(columnName.indexOf("*")+1,columnName.length());
							entity.set(columnName.substring(1, columnName.indexOf("*")), returnDicValue(dict, row.getCell(j).getStringCellValue(), "DICTNAME", "DICTID"));	
						}else{
							entity.set(columnName.substring(1,columnName.length()), row.getCell(j).getStringCellValue());	
						}
					}
				}
			}
			//添加默认字段
			entity.set("uuid", UUID.randomUUID().toString().replaceAll("-",""));
			entity.set("jd", jd);
			entity.set("jz", jz);
			entity.set("isdel", "0");
			
			//内外部经验导入
			if(entityName.equals("com.cgn.itmp.knowledgebase.knowledgebase.in_exExperience")){
				entity.set("funname", entity.getString("filesource"));
			}
			
			//百科全书导入
			if(entityName.equals("com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia")){
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
				entity.set("uploadtime", sdf.format(new Date()));
				entity.set("uploadperson", CommonUtil.getUserObject().getUserRealName());
			}
			
			//添加进实体类数组
			entityArr[i-2] = entity;
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
		if(row == null){
			return b;
		}
		for (int i = row.getFirstCellNum(); i < row.getLastCellNum(); i++) {
			Cell cell = row.getCell(i);
			if(cell != null && cell.getCellType() != Cell.CELL_TYPE_BLANK){
				b = false;
			}
		}
		return b;
	}
	
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Map<String, Object> saveDatas(List<Map<String, Object>> list){
		Map<String, Object> resultMap = new HashMap<String, Object>();
		//导入未成功的记录
		List fail = new ArrayList();
		//失败数
		int f = 0;
				
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
					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
					data[j].set("createtime",dateFormat.format(new Date()));
					data[j].set("addtime",dateFormat.format(new Date()));
					DatabaseUtil.insertEntity("default", data[j]);
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
     * 判断导入模板是否准确
     * @param excelFile
     * @param tempFile
     * @return
     */
	public boolean judgeExcelTemplate(String excelFile,String tempFile){
		
		List<String> excelList = getFirstRowColumn(excelFile, false);
		List<String> tempList = getFirstRowColumn(tempFile, true);
		//排序
		Collections.sort(excelList);
		Collections.sort(tempList);
		if (excelList.size() == 0 || tempList.size() == 0) {
			return false;
		}
		return excelList.toString().equals(tempList.toString());
	}
	
	/**
	 * 获取文档首行字段
	 * @param fileName
	 * @param isTemplate
	 * @return
	 */
	public List<String> getFirstRowColumn(String fileName,boolean isTemplate){
		List<String> columnList = new ArrayList<String>();
		if (isTemplate) {
			fileName = ApplicationContext.getInstance().getWarRealPath()+"example-config"+File.separator+fileName;
		}
		try {
			XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(fileName));
			XSSFSheet sheet = wb.getSheetAt(0);
			XSSFRow row = sheet.getRow(0);
			if(row == null){
				return columnList;
			}
			for (int i = 0; i < row.getLastCellNum(); i++) {
				if(row.getCell(i) != null && StringUtils.isNotBlank(row.getCell(i).getStringCellValue())){
					row.getCell(i).setCellType(Cell.CELL_TYPE_STRING);
					columnList.add(row.getCell(i).getStringCellValue());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return columnList;
	}	
	
}
