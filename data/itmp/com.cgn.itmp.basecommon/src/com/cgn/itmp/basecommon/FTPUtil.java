package com.cgn.itmp.basecommon;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.TimeZone;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPReply;

import com.cgn.components.util.CGNConfigurationUtil;


public  class FTPUtil {
	public static FTPUtil instance=null;
	
	  private static final String MODULE_NAME = "ftp";
	  private static final String GROUP_NAME = "default";
	  private static String host = null;
	  private static int port = 21;
	  private static String username = null;
	  private static String pwd = null;
	  private static String path = null;
	  private static long maxSize = 104857600L;
	  private static String exclude = "exe,java,jsp,html,htm,class,jar";
	  
	static{
		if(instance==null){
			instance=new FTPUtil();
		}
	}
	
	  private static String loadFtpConfig(String key, boolean required) throws Exception
	  {
	    String val = CGNConfigurationUtil.getUserConfigSingleValue("ftp", "default", key);
	    if ((required) && (val == null)) {
	      throw new Exception();
	    }
	    return val;
	  }
	  
	/**
	 * 获取FTP信息
	 * @throws Exception
	 */
	  private static void loadFtpConfigs()
			    throws Exception
			  {
			    host = loadFtpConfig("host", true);
			    String pStr = loadFtpConfig("port", false);
			    if ((pStr != null) && (!"".equals(pStr.trim()))) {
			      try {
			        port = Integer.parseInt(pStr);
			      } catch (Exception e) {
			        throw new Exception(e);
			      }
			    }
			    username = loadFtpConfig("username", false);
			    pwd = CGNConfigurationUtil.getUserConfigSingleValueBase64("ftp", "default", "password");
			    path = loadFtpConfig("path", false);

			    exclude = CGNConfigurationUtil.getUserConfigSingleValue("Access-Http", "FileUpload", "Exclude");
			    String sMax = CGNConfigurationUtil.getUserConfigSingleValue("Access-Http", "FileUpload", "MaxSize");
			    try {
			      maxSize = Long.parseLong(sMax);
			    }
			    catch (Exception localException1)
			    {
			    }
			  }
	  
	 /**
	 * 上传文件（可供Action/Controller层使用）
	 * @param hostname FTP服务器地址
	 * @param port FTP服务器端口号
	 * @param username FTP登录帐号
	 * @param pwd FTP登录密码
	 * @param pathname FTP服务器保存目录
	 * @param fileName 上传到FTP服务器后的文件名称
	 * @param inputStream 输入文件流
	 * @return
	 */
	  
	  private static FTPClient connectServer() throws Exception {
		    if (host == null) {
		      loadFtpConfigs();
		    }
		    FTPClient ftpClient = new FTPClient();
		    FTPClientConfig ftpClientConfig = new FTPClientConfig();
		    ftpClientConfig.setServerTimeZoneId(TimeZone.getDefault().getID());
		    ftpClient.setControlEncoding("UTF-8");
		    ftpClient.configure(ftpClientConfig);
		    ftpClient.connect(host, port);
		    if (ftpClient.isConnected()) {
		      
		      ftpClient.login(username, pwd);

		      
		      int reply = ftpClient.getReplyCode();
		      if (!FTPReply.isPositiveCompletion(reply)) {
		        
		        ftpClient.disconnect();
		        throw new Exception("FTP no reply.");
		      } 
		      ftpClient.setFileType(2);
		      
		      ftpClient.enterLocalActiveMode();
		      ftpClient.setBufferSize(2048);
		      ftpClient.setDataTimeout(30000);
		      if (path != null && path.length() != 0 && 
		        !ftpClient.changeWorkingDirectory(path) && (
		        !ftpClient.makeDirectory(path) || !ftpClient.changeWorkingDirectory(path))) {
		        throw new Exception("");
		      }
		    } 
		    return ftpClient;
		  }
	  
	  
	private  boolean uploadFile(String hostname, int port, String username,
			String pwd, String pathname, String fileName,
			InputStream inputStream) {
		boolean flag = false;
		FTPClient ftpClient = null;
		try {
			ftpClient = connectServer();
			String[] filePath=pathname.split("/");
			
//			ftpClient.enterLocalPassiveMode();//被动
			ftpClient.setFileType(2);
			flag=ftpClient.storeFile(fileName, inputStream);
			
			inputStream.close();
			ftpClient.logout();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			  doFinally(null, inputStream, ftpClient);
		}
		return flag;
	 }
	
	
	
	

	  private static void doFinally(OutputStream os, InputStream is, FTPClient ftpClient) {
	    try {
	      if (ftpClient != null && ftpClient.isConnected()) {
	        
	        ftpClient.logout();
	        ftpClient.disconnect();
	      } 
	      if (is != null) {
	        is.close();
	      }
	      if (os != null) {
	        os.close();
	      }
	    }
	    catch (IOException e) {
	      
	      e.printStackTrace();
	      throw new RuntimeException(e);
	    } 
	  }
	 
	 /**
	 * 上传文件（可对文件进行重命名）
	 * @param hostname FTP服务器地址
	 * @param port FTP服务器端口号
	 * @param username FTP登录帐号
	 * @param pwd FTP登录密码
	 * @param pathname FTP服务器保存目录
	 * @param filename 上传到FTP服务器后的文件名称
	 * @param originfilename 待上传文件的名称（绝对地址）
	 * @return
	 */
	public  boolean uploadFileToFtpServer(String hostname, int port,
			String username, String pwd, String pathname, String filename,
			String originfilename) {
		boolean flag = false;
		InputStream inputStream = null;
		try {
			inputStream = new FileInputStream(new File(
					originfilename));
			flag = uploadFile(hostname, port, username, pwd, pathname,
					filename, inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			if(inputStream!=null){
				try {
					inputStream.close();
				} catch (IOException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
			}
		}
		return flag;
	}
	
	
	 /**
	 * 上传文件（可对文件进行重命名）
	 * @param filename 上传到FTP服务器后的文件名称
	 * @param originfilename 待上传文件的名称（绝对地址）
	 * @return
	 * @throws Exception 
	 */
	public  boolean uploadFileToFtpServerByname(String filename,
			String originfilename) throws Exception {
		
		loadFtpConfigs();
		boolean flag = false;
		InputStream inputStream = null;
		try {
			inputStream = new FileInputStream(new File(
					originfilename));
			flag = uploadFile(host, port, username, pwd, path,
					filename, inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			if(inputStream!=null){
				try {
					inputStream.close();
				} catch (IOException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
			}
		}
		return flag;
	}
	
	 /**
	 * 上传文件（可对文件进行重命名） 给邮件使用
	 * @param filename 上传到FTP服务器后的文件名称
	 * 
	 * @return
	 * @throws Exception 
	 */
	public  boolean uploadFileToFtpServerForEmailByname(String filename,
			InputStream inputStream) throws Exception {
		loadFtpConfigs();
		boolean flag = false;
		try {
			flag = uploadFile(host, port, username, pwd, path,
					filename, inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	 /**
	 * 上传文件（可对文件进行重命名） 给邮件使用
	 * @param hostname FTP服务器地址
	 * @param port FTP服务器端口号
	 * @param username FTP登录帐号
	 * @param pwd FTP登录密码
	 * @param pathname FTP服务器保存目录
	 * @param filename 上传到FTP服务器后的文件名称
	 * @param originfilename 待上传文件的名称（绝对地址）
	 * 
	 * @return
	 */
	public  boolean uploadFileToFtpServerForEmail(String hostname, int port,
			String username, String pwd, String pathname, String filename,
			InputStream inputStream) {
		boolean flag = false;
		try {
			flag = uploadFile(hostname, port, username, pwd, pathname,
					filename, inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	  
	 /**
	 * 删除文件
	 * @param hostname FTP服务器地址
	 * @param port FTP服务器端口号
	 * @param username FTP登录帐号
	 * @param pwd FTP登录密码
	 * @param pathname FTP服务器保存目录
	 * @param filename 要删除的文件名称
	 * @return
	 */
	public  boolean deleteFile(String hostname, int port, String username,
			String pwd, String pathname, String filename) {
		 boolean flag = false;
		 FTPClient ftpClient = new FTPClient();
		 try {
			 //连接FTP服务器
			 ftpClient.connect(hostname, port);
			 //登录FTP服务器
			 ftpClient.login(username, pwd);
			 //验证FTP服务器是否登录成功
			 int replyCode = ftpClient.getReplyCode();
			 if(!FTPReply.isPositiveCompletion(replyCode)){
			     return flag;
		     }
			 
			// modefied by wangjun at 2021.01.20 12:30
			ftpClient.enterLocalActiveMode();//主动
			 
			 //切换FTP目录
			 ftpClient.changeWorkingDirectory(pathname);
			 ftpClient.dele(filename);
			 ftpClient.logout();
			 flag = true;
		 } catch (Exception e) {
			 e.printStackTrace();
		 } finally{
			 if(ftpClient.isConnected()){
			     try {
			         ftpClient.logout();
			     } catch (IOException e) {
			  
			     }
			 }
		 }
	     return flag;
	 }
	/**
	 * 
	 * @param filename
	 * @param localpath 下载后的文件路径
	 * @return
	 * @throws Exception
	 */
	public  boolean downloadFileByID(String filename,
			String localpath,String realName) throws Exception {
		
		loadFtpConfigs();
		boolean flag = false;
		try {
			flag = downloadFileRealName(host, port, username, pwd, path, filename, localpath,realName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	/**
	 * 根据附件名字下载Ftp上的附件
	 * @param filename 附件名字
	 * @param localpath 本地路径
	 * @return
	 * @throws Exception
	 */
	public static boolean downloadFileByName(String filename,
			String localpath) throws Exception {		
		loadFtpConfigs();
		boolean flag = false;
		try {
			flag = downloadFileByName(host, port, username, pwd, path, filename, localpath);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	  
	 /**
	 * 下载文件
	 * @param hostname FTP服务器地址
	 * @param port FTP服务器端口号
	 * @param username FTP登录帐号
	 * @param pwd FTP登录密码
	 * @param pathname FTP服务器文件目录
	 * @param filename 文件名称
	 * @param localpath 下载后的文件路径
	 * @return
	 */
	public  boolean downloadFile(String hostname, int port, String username,
			String pwd, String pathname, String filename, String localpath) {
		 boolean flag = false;
	     FTPClient ftpClient = new FTPClient();
		 try {
			 //连接FTP服务器
			 ftpClient.connect(hostname, port);
			 //登录FTP服务器
			 ftpClient.login(username, pwd);
			 //验证FTP服务器是否登录成功
			 int replyCode = ftpClient.getReplyCode();
			 if(!FTPReply.isPositiveCompletion(replyCode)){
				 return flag;
			 }
			 //切换FTP目录
			 ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);
			 
			 // modefied by wangjun at 2021.01.20 12:30
			 ftpClient.enterLocalActiveMode();//主动
			 
			 ftpClient.changeWorkingDirectory(pathname);
//			 ftpClient.enterLocalPassiveMode();//被动
			 FTPFile[] ftpFiles = ftpClient.listFiles();
			 for(FTPFile file : ftpFiles){
				 if(filename.equalsIgnoreCase(file.getName())){
					 File localFile = new File(localpath + "/" + file.getName());
					 OutputStream os = new FileOutputStream(localFile);
					 ftpClient.retrieveFile(file.getName(), os);
					 os.close();
				 }
			 }
			 ftpClient.logout();
			 flag = true;
			 } catch (Exception e) {
			     e.printStackTrace();
			 } finally{
			     if(ftpClient.isConnected()){
				     try {
				         ftpClient.logout();
				     } catch (IOException e) {
				  
				     }
			     }
			 }
	     return flag;
	 }
	
	 /**
	 * 下载文件
	 * @param hostname FTP服务器地址
	 * @param port FTP服务器端口号
	 * @param username FTP登录帐号
	 * @param password FTP登录密码
	 * @param pathname FTP服务器文件目录
	 * @param filename 文件名称
	 * @param localpath 下载后的文件路径
	 * @return
	 */
	public static boolean downloadFileByName(String hostname, int port, String username,
			String password, String pathname, String filename, String localpath) {
		 boolean flag = false;
	     FTPClient ftpClient = new FTPClient();
		 try {
		     FTPClientConfig ftpClientConfig = new FTPClientConfig();
		     ftpClientConfig.setServerTimeZoneId(TimeZone.getDefault().getID());
		     ftpClient.setControlEncoding("UTF-8");
		     ftpClient.configure(ftpClientConfig);			 
			 //连接FTP服务器
			 ftpClient.connect(hostname, port);
			 //登录FTP服务器
			 ftpClient.login(username, password);
			 //验证FTP服务器是否登录成功
			 int replyCode = ftpClient.getReplyCode();
			 if(!FTPReply.isPositiveCompletion(replyCode)){
				 return flag;
			 }
			 //切换FTP目录
			 ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);
			 
			 // modefied by wangjun at 2021.01.20 12:30
			 ftpClient.enterLocalActiveMode();//主动
			 
			 ftpClient.changeWorkingDirectory(pathname);
//		     ftpClient.enterLocalPassiveMode();//被动
		     ftpClient.setBufferSize(2048);
		     ftpClient.setDataTimeout(30000);			 
			 File localFile = new File(localpath + "/" + filename);
			 OutputStream os = new FileOutputStream(localFile);
			 ftpClient.retrieveFile(filename, os);
			 os.close();
			 ftpClient.logout();
			 flag = true;
			 } catch (Exception e) {
			     e.printStackTrace();
			 } finally{
			     if(ftpClient.isConnected()){
				     try {
				         ftpClient.logout();
				     } catch (IOException e) {
				  
				     }
			     }
			 }
	     return flag;
	 }	
	 /**
	 * 下载文件 重命名
	 * @param hostname FTP服务器地址
	 * @param port FTP服务器端口号
	 * @param username FTP登录帐号
	 * @param pwd FTP登录密码
	 * @param pathname FTP服务器文件目录
	 * @param filename 文件名称
	 * @param localpath 下载后的文件路径
	 * @return
	 */
	public  boolean downloadFileRealName(String hostname, int port, String username,
			String pwd, String pathname, String filename, String localpath,String realname) {
		 boolean flag = false;
	     FTPClient ftpClient = new FTPClient();
		 try {
			 //连接FTP服务器
			 ftpClient.connect(hostname, port);
			 //登录FTP服务器
			 ftpClient.login(username, pwd);
			 //验证FTP服务器是否登录成功
			 int replyCode = ftpClient.getReplyCode();
			 if(!FTPReply.isPositiveCompletion(replyCode)){
				 return flag;
			 }
			 //切换FTP目录
			 ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);
			 
			 // modefied by wangjun at 2021.01.20 12:30
			 ftpClient.enterLocalActiveMode();//主动
			 
			 ftpClient.changeWorkingDirectory(pathname);
//			 ftpClient.enterLocalPassiveMode();//被动
			 FTPFile[] ftpFiles = ftpClient.listFiles();
			 for(FTPFile file : ftpFiles){
				 if(filename.equalsIgnoreCase(file.getName())){
					 File localFile = new File(localpath + "/" + realname);
					 OutputStream os = new FileOutputStream(localFile);
					 ftpClient.retrieveFile(file.getName(), os);
					 os.close();
				 }
			 }
			 ftpClient.logout();
			 flag = true;
			 } catch (Exception e) {
			     e.printStackTrace();
			 } finally{
			     if(ftpClient.isConnected()){
				     try {
				         ftpClient.logout();
				     } catch (IOException e) {
				  
				     }
			     }
			 }
	     return flag;
	 }
}
