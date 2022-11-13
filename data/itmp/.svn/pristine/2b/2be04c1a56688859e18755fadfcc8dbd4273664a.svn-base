package com.cgn.itmp.basecommon;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.eos.common.config.ConfigurationFactory;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.data.datacontext.IUserObject;
import com.eos.foundation.common.lang.DateUtil;
import com.eos.foundation.data.DataObjectUtil;
import com.eos.foundation.database.DatabaseUtil;
import com.eos.infra.config.Configuration;
import com.eos.infra.config.Configuration.Group;
import com.eos.runtime.core.ApplicationContext;
import com.eos.runtime.core.TraceLoggerFactory;
import com.eos.system.annotation.Bizlet;
import com.eos.system.exception.EOSRuntimeException;
import com.eos.system.logging.Logger;
import com.primeton.ext.access.http.IUploadFile;
import com.primeton.ext.access.http.processor.MultipartRequest;
import commonj.sdo.DataObject;


/**
 * 文件操作工具类
 * @author chenjie
 *
 */
@Bizlet("")
public class FileUtil {
	private static FileUtil fileUtil=null;
//	public  String FTP_HOST_NAME=null;
//	public  int FTP_HOST_PORT=0;
//	public  String FTP_USERNAME=null;
//	public  String FTP_USERPWD=null;
//	public  String FTP_FILE_PATH=null;
//	public  final String MODULE_NAME="FileManager";
//	public  final String GROUP_NAME="FileUpload";
	public String FILE_UPLOAD_PATH=null;

	/**
	 * 日志操作
	 */
	private static Logger logger=TraceLoggerFactory.getLogger(FileUtil.class);
	/**
	 * 获取实例
	 * @return
	 */
	public static FileUtil newInstance(){
		if(fileUtil==null){
			fileUtil=new FileUtil();
		}
		return fileUtil;
	}
	
	
	public FileUtil(){
		Configuration config=ConfigurationFactory.getUserConfiguration();
//		Group group=config.getGroup(MODULE_NAME, GROUP_NAME);
//		FTP_HOST_NAME=group.getConfigValue("HOST_NAME");
//		FTP_HOST_PORT=Integer.parseInt(group.getConfigValue("HOST_PORT"));
//		FTP_USERNAME=group.getConfigValue("USER_NAME");
//		FTP_USERPWD=group.getConfigValue("USER_PWD");
//		FTP_FILE_PATH=group.getConfigValue("SAVE_PATH");
		
		Group fileGroup=config.getGroup("FILE_UPLOAD", "FILE_INFO");
		FILE_UPLOAD_PATH=fileGroup.getConfigValue("FILE_PATH");
	}
	
	/**
	 * 凭借图片显示url
	 * @return
	 */
	@Bizlet
	public static String getImgUrl(String fileId,String fileName){
		return "org.oa.common.util.fileDownload.flow?fileId="+fileId+"&fileName="+fileName;
	}
	
	@Bizlet("选择附件附件")
	public static Map<String, String> selectFile(IUploadFile appIcon)
			throws EOSRuntimeException {
		Map<String, String> rlist = new HashMap<String, String>();

		rlist.put("filePath", appIcon.getFilePath());
		return rlist;
	}
	
	@Bizlet("选择附件附件")
	public static Map<String, String> selectFile2(MultipartRequest request)
			throws EOSRuntimeException {
		Map<String, String> rlist = new HashMap<String, String>();

		rlist.put("filePath", "");
		return rlist;
	}
	
	
	
	/**
	 * 读取文件并转换成byte[]
	 * @param path
	 * @return
	 */
	@Bizlet()
	public byte[] readFile(String path){
		InputStream input=null;
		ByteArrayOutputStream byteOut=null;
		File file=null;
		if(path==null || "".equals(path)){
			return null;
		}
		try {
			file=new File(path);
			input=new FileInputStream(file);
			byteOut = new ByteArrayOutputStream();
			byte[] buffer = new byte[1024 * 4];
		    int n = 0;
		    while ((n = input.read(buffer)) != -1) {
		    	byteOut.write(buffer, 0, n);
		    }
		    
		    byte[] bytes = byteOut.toByteArray();
		    input.close();  
		    byteOut.close();
		    return bytes;  
		} catch (IOException e) {  
		    e.printStackTrace();
//		    System.out.println("false");
		} finally {  
		    try {
		    	if(input!=null){
		    		input.close();  
		    	}
		    	if(byteOut!=null){
		    		byteOut.close();
			    	byteOut.flush();
		    	}
		    } catch (IOException e) {  
		        e.printStackTrace();  
		    }  
		}
		return null;
	}
	/**
	 * 查看文件是否存在
	 * @param path
	 * @return
	 */
	@Bizlet()
	public String  isExists(String path){
		if(path==null || "".equals(path)){
			return "0";
		}
		File file=new File(path);
		if(file.exists()){
			return "1";
		}else{
			return "0";
		}
}
	
	@Bizlet("上传附件")
	public  Map<String, Object> uploadFile(IUploadFile file)
			throws EOSRuntimeException, IOException {
		
		if(file==null){
			return null;
		}
		
		String name=file.getClientFileName();
		String userid=CommonUtil.getUserObject().getUserId();
		//给文件添加时间戳，防止同名文件上传失败
		String fileName=System.currentTimeMillis()+"_"+userid+"_" +name;

	
		String tempPath=DateUtil.getSysDateString("yyyy")+File.separator+DateUtil.getSysDateString("MM")+File.separator;
//		boolean flag=FTPUtil.instance.uploadFileToFtpServer(FTP_HOST_NAME, FTP_HOST_PORT,
//				FTP_USERNAME, FTP_USERPWD,filePath , fileName,
//				file.getFilePath());
		String filePath=FILE_UPLOAD_PATH+tempPath;
		copyFile(file.getFilePath(),filePath,fileName,true);

		return insertFileUpload(file.getClientFileName(), fileName,
				filePath, file.getSize(), file.getContentType());
		
	}
	
//	@Bizlet("")
//	public Map<String, Object> uploadFile(IUploadFile file) throws Exception {
//		if(file==null){
//			return null;
//		}
//		String fileName=null;
//		String name=file.getClientFileName();
//		String TempName=name.substring(0,name.lastIndexOf("."));
//		String userid=CommonUtil.getUserObject().getUserId();
//		if(!isChinese(TempName)){
//			fileName=TempName+"_"+userid+"_"+(int)(Math.random()*1000) +name.substring(name.lastIndexOf("."),name.length());
//		}else{
//			fileName=System.currentTimeMillis()+"_"+userid+"_"+(int)(Math.random()*1000) +name.substring(name.lastIndexOf("."),name.length());
//		}
//		String filePath=FILE_UPLOAD_PATH;
//		String tempPath=DateUtil.getSysDateString("yyyy")+"/"+DateUtil.getSysDateString("MM")+"/"+DateUtil.getSysDateString("dd")+"/";
////		boolean flag=FTPUtil.instance.uploadFileToFtpServer(FTP_HOST_NAME, FTP_HOST_PORT,
////				FTP_USERNAME, FTP_USERPWD,filePath , fileName,
////				file.getFilePath());
//		copyFile(file.getFilePath(),filePath+tempPath,fileName);
//		File convertfile =new File(filePath+tempPath+fileName);
//		if(convertfile.exists()){
//			String filePathTemp="/fileuploadTemp/";
//			mkfileTemp(filePathTemp+tempPath,fileName);
//		}
//		return insertFileUpload(file.getClientFileName(), fileName,
//			tempPath, file.getSize(), file.getContentType(), "",0);
//	}
	
	public  void mkfileTemp(String filePathTemp,String fileName) throws IOException{
//		System.out.println("begin__________________________"+filePathTemp+"____"+fileName);
//		if(fileType.equals(".doc")||fileType.equals(".docx")||fileType.equals(".xls")||fileType.equals(".xlsx")||fileType.equals(".csv")){
			File tempFileDir=new File(filePathTemp);
			if(!tempFileDir.exists()){
				tempFileDir.mkdirs();
			}
			File tempFile =new File(tempFileDir,fileName+".flag");
			if(!tempFile.exists()){
				tempFile.createNewFile();
//				System.out.println("sucess");
			}
//		}
	}
	
	@Bizlet("根据文件路径上传文件")
	public String uploadFile(String clientFilePath,String clientFileName) throws IOException {
		if(clientFilePath==null || "".equals(clientFilePath)){
			return null;
		}
		File file=new File(clientFilePath);
		 FileInputStream fis  = null;
		if(!file.exists()){
			return null;
		}else{
			 fis = new FileInputStream(file);
		}
		
	            
		String userid=CommonUtil.getUserObject().getUserId();
		//给文件添加时间戳，防止同名文件上传失败
		String fileName=System.currentTimeMillis()+"_"+userid+"_" +clientFileName;

	
		String tempPath=DateUtil.getSysDateString("yyyy")+File.separator+DateUtil.getSysDateString("MM")+File.separator;
//		boolean flag=FTPUtil.instance.uploadFileToFtpServer(FTP_HOST_NAME, FTP_HOST_PORT,
//				FTP_USERNAME, FTP_USERPWD,filePath , fileName,
//				file.getFilePath());
		String filePath=FILE_UPLOAD_PATH+tempPath;
		
//		String filePath=ApplicationContext.getInstance().getWarRealPath()+FILE_UPLOAD_PATH+tempPath;
		copyFile(clientFilePath,filePath,fileName,true);

		Map<String, Object> fileInfo = insertFileUpload(clientFileName, fileName,
				filePath, fis.available(),clientFileName.split("[.]")[1]);
		return fileInfo.get("fileId").toString();
	}
	
	
	
	@Bizlet("根据文件路径上传文件")
	public String Templatefile(String clientFilePath,String clientFileName) throws IOException {
		if(clientFilePath==null || "".equals(clientFilePath)){
			return null;
		}
		File file=new File(clientFilePath);
//		 FileInputStream fis  = null;
		if(!file.exists()){
			return null;
		}else{
//			 fis = new FileInputStream(file);
		}
		
	            
//		String userid=CommonUtil.getUserObject().getUserId();
		//给文件添加时间戳，防止同名文件上传失败
		
//		
		String filePath=ApplicationContext.getInstance().getWarRealPath()+"example-config/";
		
//		String filePath=ApplicationContext.getInstance().getWarRealPath()+FILE_UPLOAD_PATH+tempPath;
		copyFile(clientFilePath,filePath,clientFileName,true);

//		Map<String, Object> fileInfo = insertFileUpload(clientFileName, clientFilePath,
//				filePath, fis.available(),clientFileName.split("[.]")[1]);
		return clientFileName;
	}
	
	
	//20171213添加  发文往收文表添加专用
	@Bizlet("")
	public Map<String, Object> uploadFileForRecDoc(String clientFilePath,String doc_num) {
		if(clientFilePath==null || "".equals(clientFilePath)){
			return null;
		}
		File tempFile=new File(clientFilePath);
		if(!tempFile.exists()){
			tempFile.mkdirs();
		}
		String fileName=null;
		String fileType=clientFilePath.substring(clientFilePath.lastIndexOf(".")+1,clientFilePath.length());
		String fileRealName = doc_num + "." + fileType;
		String name=clientFilePath.substring(clientFilePath.lastIndexOf("/")+1,clientFilePath.length());
		String TempName=name.substring(0,name.indexOf("."));
		String userid=CommonUtil.getUserObject().getUserId();
		if(!isChinese(TempName)){
			fileName=TempName+"_"+userid+"_"+DateUtil.getSysDateString("HHmmss")+name.substring(name.indexOf("."),name.length());
		}else{
			fileName=System.currentTimeMillis()+"_"+userid+"_"+DateUtil.getSysDateString("HHmmss")+name.substring(name.indexOf("."),name.length());
		}
		String filePath=FILE_UPLOAD_PATH;
		String tempPath=DateUtil.getSysDateString("yyyy")+"/"+DateUtil.getSysDateString("MM")+"/"+DateUtil.getSysDateString("dd")+"/";
		
		copyFile(tempFile.getPath(),filePath+tempPath,fileName,true);
		return insertFileUpload(fileRealName,fileName,
				tempPath, 0, fileType);
	}
	
//	@Bizlet("")
//	public Map<String, Object> uploadFileForEmail(InputStream is,long id,String cilentName,String contentType,long fileSize) {
//		if(is==null){
//			return null;
//		}
//		String fileName=null;
//		String name=cilentName;
//		String TempName=name.substring(0,name.indexOf("."));
//		String userid = null;
//		IUserObject cu = CommonUtil.getUserObject();
//		if(cu!=null) {
//			userid  = cu.getUserId();
//		}
//		if(userid==null) {
//			userid = "guest";
//		}
//		if(!isChinese(TempName)){
//			fileName=TempName+"_"+userid+"_"+DateUtil.getSysDateString("HHmmss")+name.substring(name.indexOf("."),name.length());
//		}else{
//			fileName=System.currentTimeMillis()+"_"+userid+"_"+DateUtil.getSysDateString("HHmmss")+name.substring(name.lastIndexOf("."),name.length());
//		}
////		boolean flag=FTPUtil.instance.uploadFileToFtpServerForEmail(FTP_HOST_NAME, FTP_HOST_PORT,
////				FTP_USERNAME, FTP_USERPWD,filePath , fileName,
////				is);
//		String filePath=FILE_UPLOAD_PATH;
//		String tempPath=DateUtil.getSysDateString("yyyy")+"/"+DateUtil.getSysDateString("MM")+"/"+DateUtil.getSysDateString("dd")+"/";
//
//		copyFileForEmail(is,filePath+tempPath,fileName);
//		return insertFileUpload(cilentName, fileName,
//				tempPath, fileSize, contentType, "",id);
//	}
	
	@Bizlet("文件下载")
	public String[] fileDownload(String fileId){
//		String rootPath=FILE_UPLOAD_PATH;
		DataObject fileInfo = getFileInfo(fileId);
		String recordid = fileInfo.getString("recordid"); 
		String fileFullPath = null;
		String filePath=fileInfo.getString("filePath");
		String fileName=fileInfo.getString("fileNewName");
		if(recordid!=null) {//如果该附件已被在线编辑器维护，需要读取金格控件下的附件全路径
//			fileFullPath = OfficeUrl.newInstance().getOfficeFileFullPath(recordid);
		}else {
			fileFullPath = filePath+fileName;
		}
//		String tempDir = ApplicationContext.getInstance().getWarRealPath()+ "downLoadFile"+File.separator+fileName;
        
        
		return new String[]{fileFullPath,fileInfo.getString("fileType"),fileInfo.getString("fileRealName"),} ;

	}
	
	@Bizlet("")
	public String[] getFilePath(String fileId,String type) throws Exception{
		String rootPath=FILE_UPLOAD_PATH;
		String fileFullPath = null;
		String filePath=null;
		String fileName=null;
		String fileType=null;
		if(type!=null&&type!=""){
			if(type.equals("1")){
//				OfficeUrl OfficeZW = OfficeUrl.newInstance();
//				fileFullPath = OfficeZW.getOfficeFileFullPath(String.valueOf(fileId));
//				fileName = OfficeZW.getWebOfficeFileName(String.valueOf(fileId));
//				filePath=fileFullPath.substring(0, fileFullPath.length()-fileName.length());
			}
			if(type.equals("2")){
				DataObject fileInfo = getFileInfo(fileId);
				if(fileInfo==null){
					return new String[]{fileFullPath,fileType,fileName,filePath,rootPath};
				}else{
					 filePath=rootPath+fileInfo.getString("filePath");
					 String recordid= fileInfo.getString("recordid");
					 fileName=fileInfo.getString("fileNewName");
					 fileType=fileInfo.getString("fileType");
					 if(recordid!=null) {//如果该附件已被在线编辑器维护，需要读取金格控件下的附件全路径
//							fileFullPath = OfficeUrl.newInstance().getOfficeFileFullPath(recordid);
//							fileName=OfficeUrl.newInstance().getWebOfficeFileName(recordid);
//							filePath=fileFullPath.substring(0, fileFullPath.lastIndexOf("/")+1);
						}else {
							fileFullPath = filePath+fileName;
						}
				}
			}
		}
		return new String[]{fileFullPath,fileType,fileName,filePath,rootPath} ;

	}
	
	@Bizlet("")
	public String changeFileId (String fileId){
		int length=String.valueOf(fileId).indexOf("?");
		if(length!=-1){
			String fileid = String.valueOf(fileId).substring(0, length);
			//System.out.println("修正之后附件标号："+fileid);
			return fileid;
		}else{
			return fileId;
		}
	}
	
	@Bizlet
	public DataObject[] loadFiels(String fileid) {
		CriteriaType criteria = CriteriaType.FACTORY.create();
		criteria.set_entity("com.cgn.itmp.basecommon.Fileupload.Fileupload");
		criteria.set("_expr[1]/fileId" , fileid);
		criteria.set("_expr[1]/_op" , "in");
		return DatabaseUtil.queryEntitiesByCriteriaEntity("default", criteria);
	}
	
	/**
	 * 插入附件表T_COMMON_FILEUPLOAD
	 * @param realName
	 * @param newName
	 * @param filePath
	 * @param fileSize
	 * @param fileTYpe
	 * @return
	 */
	private Map<String, Object> insertFileUpload(String realName, String newName,
			String filePath, long fileSize, String fileTYpe) {
		Map<String, Object> retMap=new HashMap<String, Object>();
		
		
		try {
			DataObject fileInfo=DataObjectUtil.createDataObject("com.cgn.itmp.basecommon.Fileupload.Fileupload");
			String fileId = UUID.randomUUID().toString().replaceAll("-","");
			fileInfo.setString("fileId",fileId);
			fileInfo.setString("fileRealName", realName);
			fileInfo.setString("fileNewName", newName);
			fileInfo.setString("filePath", filePath);
			fileInfo.setLong("fileSize", fileSize);
			fileInfo.setString("fileType", fileTYpe);
			fileInfo.setString("fileUploadTime", DateUtil.getSysDateString("yyyy-MM-dd HH:mm:ss"));
			IUserObject cu = CommonUtil.getUserObject();
			fileInfo.setString("fileUploadUser", cu.getUserRealName());
//			fileInfo.setString("md5code", md5Code);
			DatabaseUtil.insertEntity("default", fileInfo);

			retMap.put("fileId", fileId);
			retMap.put("fileName", realName);
			return retMap;
		} catch (Exception e) {
			logger.error(e);
		}
		return null;
	}
	
	/**
	 * 根据文件id，获取文件
	 * @param fileId
	 * @return
	 */
	@Bizlet
	public DataObject getFileInfo(String fileId){
		DataObject fileInfo=DataObjectUtil.createDataObject("com.cgn.itmp.basecommon.Fileupload.Fileupload");
		fileInfo.setString("fileId", fileId);
		DatabaseUtil.expandEntity("default",fileInfo);
		return fileInfo;
	}
	
	@Bizlet
	/**
	 * 获取附件打开方式
	 * @param fileInfo
	 * @return
	 */
	public String  getFileOpenType(DataObject fileInfo){
		String fileName = fileInfo.getString("fileNewName");
		String fileType = fileName.substring(fileName.lastIndexOf(".")+1);
		String showType = null;
		// ['gif','rar','jpg','jpeg','png','tif','tiff','bmp','pdf','doc','docx','xls','xlsx','zip','ppt','pptx','txt'];
		if("gif".equals(fileType)||"jpg".equals(fileType)||"jpeg".equals(fileType)||"png".equals(fileType)||"bmp".equals(fileType)){
			showType = "img"; //图片格式打开
		}
		return showType;
	}
	
	@Bizlet("根据文件id删除文件")
	public boolean deleteFileUpload(String fileId) {
		DataObject fileInfo = getFileInfo(fileId);
//		FTPUtil.instance.deleteFile(FTP_HOST_NAME, FTP_HOST_PORT, FTP_USERNAME,
//				FTP_USERPWD, fileInfo.getString("filePath"),
//				fileInfo.getString("fileNewName"));
		DatabaseUtil.deleteEntity("default", fileInfo);
		return true;
	}
	
	private boolean isChinese(char c) {
		Character.UnicodeBlock ub = Character.UnicodeBlock.of(c);
		if (ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS
				|| ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS
				|| ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A
				|| ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B
				|| ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION
				|| ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS
				|| ub == Character.UnicodeBlock.GENERAL_PUNCTUATION) {
			return true;
		}
		return false;
	}

	// 完整的判断中文汉字和符号
	private boolean isChinese(String strName) {
		char[] ch = strName.toCharArray();
		for (int i = 0; i<ch.length; i++) {
			char c = ch[i];
			if (isChinese(c)) {
				return true;
			}
		}
		return false;
	}
	/**
	 * 
	 * @param srcFilename 
	 * @param destFilePath 
	 * @param fileName 
	 * @param doDel 
	 */
	public void copyFile(String srcFilename, String destFilePath,String fileName,boolean doDel) {
		InputStream is=null;
		OutputStream os=null;
        try {
			File srcFile = new File(srcFilename);
			if (!srcFile.exists()) {
			    throw new FileNotFoundException("Cannot find the source file: " + srcFile.getAbsolutePath());
			}
			if (!srcFile.canRead()) {
			    throw new IOException("Cannot read the source file: " + srcFile.getAbsolutePath());
			}

			File destFile = new File(destFilePath);
			if (!destFile.exists()) {
				destFile.mkdirs();
			}
			is=new FileInputStream(srcFile);
			os=new FileOutputStream(new File(destFilePath+fileName));
			byte[] buffer = new byte[1024 * 4];
			int n = 0;
			while ((n = is.read(buffer)) != -1) {
				os.write(buffer, 0, n);
			}
			if(doDel){
				//保存过之后删除原文件
				srcFile.deleteOnExit();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if (is!=null) {
				try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if(os!=null){
				try {
					os.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
    }
	

	public void copyFileForEmail(InputStream is, String destFilePath,String fileName) {
		OutputStream os=null;
		try {
			if(is==null){
				return;
			}
			
			File destFile = new File(destFilePath);
			if (!destFile.exists()) {
				destFile.mkdirs();
			}
			os=new FileOutputStream(new File(destFilePath+fileName));
			byte[] buffer = new byte[1024 * 4];
			int n = 0;
			while ((n = is.read(buffer)) != -1) {
				os.write(buffer, 0, n);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if (is!=null) {
				try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if(os!=null){
				try {
					os.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	
	@Bizlet("获取要下载文件的路径")
	public String getFilePathByProjectPathAndFileName(String fileName,String projectPath) {
		if(StringUtil.isEmpty(fileName) || StringUtil.isEmpty(projectPath)){
			return "";
		}
		if("example".equals(projectPath)){
			projectPath = UtilConfiguration.MODULE_ABFRAME;
		}else if("temp".equals(projectPath)){
			projectPath = "tempFile";
		}else if("temp1".equals(projectPath)){
			projectPath="temp";
		}
		fileName = RequestUtils.getFilename(fileName);
		if(fileName.equals("false")){
			return "false";
		}
		String fileDir=ApplicationContext.getInstance().getWarRealPath()+projectPath;
//		  System.out.println("=========要下载的文件的路径地址===>>>>="+fileDir);
		  if(!fileDir.endsWith("/")){
			  fileDir+="/";
		 }
		 String file=fileDir+fileName;
		 return file;
	}
	@Bizlet("压缩下载文件")
	public String downLoadAsZip(String modelNames,String projectPath) {
		if(StringUtil.isEmpty(modelNames) || StringUtil.isEmpty(projectPath)){
			return "";
		}
		if("example".equals(projectPath)){
			projectPath = UtilConfiguration.MODULE_ABFRAME;
		}else if("temp".equals(projectPath)){
			projectPath = "tempFile";
		}
		
		String  [] modelArray = modelNames.split(",");
		List<String> resFileList = new ArrayList<String>();
		String fileDir=ApplicationContext.getInstance().getWarRealPath()+projectPath;
		  if(!fileDir.endsWith("/")){
			  fileDir+="/";
		 }
		for(int i=0;i<modelArray.length;i++){
			String filePath = "";
			String fileName = "";
			if(modelArray[i].equals("vt")){
				filePath = fileDir+"ptmtvt.xlsx";
				fileName = "VT导入模板.xlsx";
			}else if(modelArray[i].equals("mt")){
				filePath = fileDir+"ptmtvt.xlsx";
				fileName = "MT导入模板.xlsx";
			}else if(modelArray[i].equals("pf")){
				filePath = fileDir+"ptmtvt.xlsx";
				fileName = "PF导入模板.xlsx";
			}else if (modelArray[i].equals("mt")){
				filePath = fileDir+"ptmtvt.xlsx";
				fileName = "MT导入模板.xlsx";
			}else if (modelArray[i].equals("pt")){
				filePath = fileDir+"ptmtvt.xlsx";
				fileName = "PT导入模板.xlsx";
			}else if (modelArray[i].equals("crgbobbin")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "传热管BOBBIN导入模板.xlsx";
			}else if (modelArray[i].equals("crgmrpc")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "传热管MRPC导入模板.xlsx";
			}else if (modelArray[i].equals("crglkqx")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "传热管轮廓曲线导入模板.xlsx";
			}else if (modelArray[i].equals("ztgwl")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "指套管涡流导入模板.xlsx";
			}else if (modelArray[i].equals("lslm")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "螺栓_螺母导入模板.xlsx";
			}else if (modelArray[i].equals("hfsdcs")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "焊缝手动超声导入模板.xlsx";
			}else if (modelArray[i].equals("rplsdcs")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "热疲劳手动超声导入模板.xlsx";
			}else if (modelArray[i].equals("lssdcs")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "螺栓手动超声导入模板.xlsx";
			}else if (modelArray[i].equals("zbflsdcs")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "主泵飞轮手动超声导入模板.xlsx";
			}else if (modelArray[i].equals("zlscs")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "主螺栓自动超声导入模板.xlsx";
			}else if (modelArray[i].equals("rpvzdcs")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "RPV自动超声导入模板.xlsx";
			}else if (modelArray[i].equals("paut")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "PA-UT导入模板.xlsx";
			}else if (modelArray[i].equals("rt")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "RT导入模板.xlsx";
			}else if (modelArray[i].equals("cctv")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "CCTV导入模板.xlsx";
			}else if (modelArray[i].equals("rccazdcs")){
				filePath = fileDir + modelArray[i] + ".xlsx";
				fileName = "RCCA自动超声导入模板.xlsx";
			}
				
			if(!StringUtil.isEmpty(filePath) && !StringUtil.isEmpty(fileName)){
				copyFile(filePath,FILE_UPLOAD_PATH,fileName,false);
				resFileList.add(FILE_UPLOAD_PATH+File.separator+fileName);
			}
		}
		File zipFile = new File(ApplicationContext.getInstance().getWarRealPath()+ "tempFile"+File.separator+"缺陷显示详情信息导入模板.zip");
		ZipUtil.zipFiles(resFileList, zipFile);
		
	
		 return zipFile.getAbsolutePath();
	}
	public Map<String, Object> insertFile(String realName, String newName,
			String filePath, long fileSize, String fileTYpe) {
		return insertFileUpload(realName, newName, filePath, fileSize, fileTYpe);
	}

}
