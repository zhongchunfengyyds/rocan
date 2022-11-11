package com.cgn.itmp.basecommon;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import com.eos.foundation.common.io.FileUtil;
import com.eos.runtime.core.ApplicationContext;
import com.eos.system.annotation.Bizlet;
import com.eos.system.annotation.BizletParam;
import com.eos.system.annotation.ParamType;
import commonj.sdo.DataObject;
/**
 *
 * Excel文件操作工具类<BR>
 *
 * @author primeton
 * wengzr (mailto:)
 */
@Bizlet("Excel工具操作类")
public class ExcelUtil {
 private ExcelUtil(){
  //工具类不允许实例化
 }


 /**
  * 将指定的对象数组exportObjects导出到指定模板的Excel文件
  *
  * @param exportObjects 待导出的对象数组
  * @param exportInfo  模板文件的其他附加信息(非结果集内容)
  * @param templateFilename 模板文件名(不带扩展名),对应到在user-config.xml配置路径下的模板文件
  * @return 返回生成的Excel文件下载路径
  * @throws Exception
  */
 @Bizlet(
  value="将指定的对象数组导出到指定模板的Excel文件",
  params = {
   @BizletParam(index = 0, paramAlias = "exportObjects",type=ParamType.VARIABLE),
         @BizletParam(index = 1, paramAlias = "exportInfo",type=ParamType.VARIABLE),
         @BizletParam(index = 2, paramAlias = "templateFilename",type=ParamType.CONSTANT)
     }
 )
 public static String exportExcel(DataObject[] exportObjects,DataObject exportInfo,String templateFilename) throws Exception{
  return exportExcel(exportObjects,exportInfo,templateFilename,false,false);
 }
 /**
  * 分页将对象数组导出到指定的模板Excel文件,注意：此时模板文件必需包含Excel表格的分页符
  * @param exportObjects 待导出的对象数组
  * @param exportInfo  模板文件的其他附加信息(非结果集内容)
  * @param templateFilename 模板文件名(不带扩展名),对应到在user-config.xml配置路径下的模板文件
  * @return 返回生成的Excel文件下载路径
  * @throws Exception
  */
 @Bizlet(
  value="分页将对象数组导出到指定的模板Excel文件",
  params = {
   @BizletParam(index = 0, paramAlias = "exportObjects",type=ParamType.VARIABLE),
         @BizletParam(index = 1, paramAlias = "exportInfo",type=ParamType.VARIABLE),
         @BizletParam(index = 2, paramAlias = "templateFilename",type=ParamType.CONSTANT)
     }
 )
 public static String exportExcelWithPagnation(DataObject[] exportObjects,DataObject exportInfo,String templateFilename)
throws Exception{
  return exportExcel(exportObjects,exportInfo,templateFilename,true,false);
 }
 /**
  * 分工作表将对象数组导出到指定的模板Excel文件，默认情况下输出工作表最大行:20000
  * @param exportObjects 待导出的对象数组
  * @param exportInfo  模板文件的其他附加信息(非结果集内容)
  * @param templateFilename 模板文件名(不带扩展名),对应到在user-config.xml配置路径下的模板文件
  * @return 返回生成的Excel文件下载路径
  * @throws Exception
  */
 @Bizlet(
  value="分工作表将对象数组导出到指定的模板Excel文件",
  params = {
   @BizletParam(index = 0, paramAlias = "exportObjects",type=ParamType.VARIABLE),
         @BizletParam(index = 1, paramAlias = "exportInfo",type=ParamType.VARIABLE),
         @BizletParam(index = 2, paramAlias = "templateFilename",type=ParamType.CONSTANT)
     }
 )
 public static String exportExcelWithSheet(DataObject[] exportObjects,DataObject exportInfo,String templateFilename)
throws Exception{
  return exportExcel(exportObjects,exportInfo,templateFilename,false,true);
 }
 /**
  * 导出Excel文件,根据指定路径下的模板生成输出的Excel文件
  *
  * @param exportObjects 待导出的对象数组
  * @param exportInfo 模板文件的其他附加信息(非结果集内容)
  * @param templateFilename 模板文件名(不带扩展名),对应到在user-config.xml配置路径下的模板文件
  * @param autoPagination 是否分页
  * @param autoSheet 是否分工作表
  * @return 返回生成的Excel文件下载路径
  * @throws Exception
  */
 private static String exportExcel(DataObject[] exportObjects,DataObject exportInfo,String templateFilename,
boolean autoPagination,boolean autoSheet) throws Exception{
  String filename=templateFilename;
  if(filename.indexOf(".xls")==-1){
   filename+=".xls";
  }
  //临时路径是服务器当前war下面的excel-config目录
//  String templateDir=ApplicationContext.getInstance().getWarRealPath()+ConfigurationUtil.getContributionConfig
//(UtilConfiguration.CONTRIBUTION_ABFRAME_UTILS,
//    UtilConfiguration.MODULE_ABFRAME,
//    UtilConfiguration.GROUP_EXCEL,
//    UtilConfiguration.EXCEL_TEMPLATE_PATH);
//  String excelExportMaxnum=ConfigurationUtil.getContributionConfig(UtilConfiguration.CONTRIBUTION_ABFRAME_UTILS,
//    UtilConfiguration.MODULE_ABFRAME,
//    UtilConfiguration.GROUP_EXCEL,
//    UtilConfiguration.EXCEL_EXPORT_MAXNUM);
  
  String templateDir=ApplicationContext.getInstance().getWarRealPath()+ UtilConfiguration.MODULE_ABFRAME;
  String excelExportMaxnum= UtilConfiguration.DEFAULT_EXCEL_EXPORT_MAXNUM;
  
  if(!templateDir.endsWith("/")){
   templateDir+="/";
  }
  String tempDir=templateDir+"temp/";
  File file=new File(tempDir);
  if(!file.exists()){
   //创建临时目录
   FileUtil.mkDir(tempDir);
   //file.createNewFile();
  }
  String templateFile=templateDir+filename;
  String outputFile=tempDir+generateOutputExcelFile(filename);
  ExcelTemplate template=new ExcelTemplate(templateFile,outputFile);
  template.setAutoPagination(autoPagination);
  template.setAutoSheet(autoSheet);
  int excelExportMaxnumInt = 0;
  try{
   excelExportMaxnumInt = Integer.parseInt(excelExportMaxnum);
  }catch (Exception e){
   e.printStackTrace();
  }
  template.setMaxRow(excelExportMaxnumInt);
  template.generate(Arrays.asList(exportObjects),exportInfo);
  return outputFile;
 }
 /**
  * 生成EXCEL输出文件，默认带时间戳
  * @param templateFilename 文件名
  * @return
  */
 private static String generateOutputExcelFile(String templateFilename){
  String filename=templateFilename;
  if(templateFilename.endsWith(".xls")){
   filename=templateFilename.substring(0,templateFilename.length()-4);
  }
  SimpleDateFormat format=new SimpleDateFormat("yyyyMMddHHmmss");
  String datetimeString=format.format(new Date());
  filename=filename+"_"+datetimeString+".xls";
  return filename;
 }
 
 @Bizlet(
		  value="下载Excel模板文件",
		  params = {
				  @BizletParam(index = 0, paramAlias = "fileName: 文件名称",type=ParamType.CONSTANT)
		    }
		 )
public static String downloadExcelTemp(String fileName){
	  if(fileName.indexOf(".xls")==-1){
		  fileName+=".xls";
	  }
	  //临时路径是服务器当前war下面的excel-config目录
	  String fileDir=ApplicationContext.getInstance().getWarRealPath()+UtilConfiguration.MODULE_ABFRAME;
//	  System.out.println("=========要下载的文件的路径地址===>>>>="+fileDir);
	  if(!fileDir.endsWith("/")){
		  fileDir+="/";
	 }
	 String file=fileDir+fileName;
	 return file;
}
 
@Bizlet(
		  value="将Excel数据导入到数据库指定的表",
		  params = {
			   @BizletParam(index = 0, paramAlias = "excelFile",type=ParamType.CONSTANT),
			   @BizletParam(index = 1, paramAlias = "entityFullName",type=ParamType.CONSTANT)
		    }
		 )
public static List  importExcelNew(String excelFile,String entityName,String tempFile,String jd,String jz,String type,String ifDxmk)throws Exception{
	 ExcelTemplate template=new ExcelTemplate();
	 excelFile=java.net.URLDecoder.decode(excelFile,"UTF-8");
	 return template.importDataNew(excelFile,entityName,tempFile,jd,jz,type,ifDxmk);
}

@SuppressWarnings("rawtypes")
@Bizlet(
		  value="知识库模块数据导入",
		  params = {
			   @BizletParam(index = 0, paramAlias = "excelFile",type=ParamType.CONSTANT),
			   @BizletParam(index = 1, paramAlias = "entityFullName",type=ParamType.CONSTANT)
		    }
		 )
public static List  importKnowledgeData(String excelFile,String entityName,String tempFile,String jd,String jz,String type,String ifDxmk)throws Exception{
	 ExcelTemplate template=new ExcelTemplate();
	 excelFile=java.net.URLDecoder.decode(excelFile,"UTF-8");
	 return template.importKnowledgeData(excelFile,entityName,tempFile,jd,jz,type,ifDxmk);
}


@Bizlet(
		  value="根据用户自定义导出数据",
		  params = {
			   @BizletParam(index = 0, paramAlias = "explist:要导出的数据集",type=ParamType.CONSTANT),
			   @BizletParam(index = 1, paramAlias = "title:导出数据的标题头",type=ParamType.CONSTANT)
		    }
		 )
public static String exportExcelCustomTitle(DataObject[] explist,String [] title,String titleName,String dicFieds,String jdFied,String jzFied,String filePath)throws Exception{
	 ExcelTemplate template=new ExcelTemplate();
	 return template.exportExcelCustomTitle(explist,title,titleName,dicFieds,jdFied,jzFied,filePath);
	 
}
/**
 * 管版图导入
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
@Bizlet(
		  value="将Excel数据导入到数据库指定的表",
		  params = {
			   @BizletParam(index = 0, paramAlias = "excelFile",type=ParamType.CONSTANT),
			   @BizletParam(index = 1, paramAlias = "entityFullName",type=ParamType.CONSTANT)
		    }
		 )
public static List  importPipeData(String excelFile,String entityName,String tempFile,String jd,String jz,String type,String ifDxmk,String model)throws Exception{
	 ExcelTemplate template=new ExcelTemplate();
	 excelFile=java.net.URLDecoder.decode(excelFile,"UTF-8");
	 return template.importPipeData(excelFile,entityName,tempFile,jd,jz,type,ifDxmk,model);
}

/**
 * 缺陷模板数据导入
 * @param excelFile文件
 * @param entityName实体名
 * @param tempFile
 * @param jd 基地
 * @param jz 机组
 * @param type 类型
 * @param ifDxmk标识
 * @return
 * @throws Exception
 */
@Bizlet(
		  value="将Excel数据导入到数据库指定的表",
		  params = {
			   @BizletParam(index = 0, paramAlias = "excelFile",type=ParamType.CONSTANT),
			   @BizletParam(index = 1, paramAlias = "entityFullName",type=ParamType.CONSTANT)
		    }
		 )
public static List  importDataNewTemple(String excelFile,String entityName,String tempFile,String jd,String jz,String type,String stencilplate)throws Exception{
	 ExcelTemplate template=new ExcelTemplate();
	 excelFile=java.net.URLDecoder.decode(excelFile,"UTF-8");
	 return template.importDataNewTemple(excelFile,entityName,tempFile,jd,jz,type,stencilplate);
}

}
	 
