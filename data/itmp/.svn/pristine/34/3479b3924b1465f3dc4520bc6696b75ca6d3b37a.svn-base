/**
 * 
 */
package com.cgn.itmp.basecommon;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.tools.zip.ZipEntry;
import org.apache.tools.zip.ZipFile;
import org.apache.tools.zip.ZipOutputStream;

import com.cgn.itmp.conventionalislandand.PressurepipingService;
import com.eos.runtime.core.TraceLoggerFactory;
import com.eos.system.logging.Logger;

/**
 * @author CoolBreeze
 * @version 2.0
 * 	本地上传改为ftp上传
 */
public class ZipUtil {
	
	private static Logger logger = TraceLoggerFactory.getLogger(PressurepipingService.class);
	
	public ArrayList<String[]> unZip(String filePath) throws Exception{
		 File srcFile = new File(filePath);
		 FileUtil fileUtil = new FileUtil();
		 ArrayList<String[]> result = new ArrayList<String[]>(); 
		 //Configuration config=ConfigurationFactory.getUserConfiguration();
		 //Group fileGroup=config.getGroup("FILE_UPLOAD", "FILE_INFO");
		// 判断压缩源文件是否存在
		 if (!srcFile.exists()) {
             throw new RuntimeException("压缩文件不存在");
         }
		 
		 //开始解压
		 ZipFile zipFile = null;
		 try{
			 zipFile = new ZipFile(srcFile,"GBK");
			 Enumeration<?> entries = zipFile.getEntries();
			 while (entries.hasMoreElements()) {
				 String str[] = new String[3];
				 ZipEntry entry = (ZipEntry) entries.nextElement();
//				 logger.info(">>>>>>>>>>>解压:" + entry.getName());
				 if (entry.isDirectory()) {
//					 logger.info(">>>>>>>>>>>文件目录名:" + entry.getName());
				 }else{
					 String realName = entry.getName();
					 
					 //本地上传
					 /*String userid=CommonUtil.getUserObject().getUserId();
					 //给文件添加时间戳，防止同名文件上传失败
					 String fileName=System.currentTimeMillis()+"_"+userid+"_" +realName;
				 	 String tempPath=DateUtil.getSysDateString("yyyy")+File.separator +DateUtil.getSysDateString("MM")+File.separator;
				 	 String savePath = fileGroup.getConfigValue("FILE_PATH") + tempPath;
				 	 File destFile = new File(savePath);
					 if (!destFile.exists()) {
						destFile.mkdirs();
					 }
					 
					 File f = new File(savePath + File.separator + fileName);
					 f.createNewFile();
					 InputStream in = zipFile.getInputStream(entry);
				 	 FileOutputStream out = new FileOutputStream(f);
				 	 byte[] buffer = new byte[1024 * 4];
					 int n = 0;
					 while ((n = in.read(buffer)) != -1) {
						 out.write(buffer, 0, n);
				 	 }
					 in.close();
                 	 out.close();
                 	 
                 	Map<String, Object> fileInfo = fileUtil.insertFile(realName, fileName,savePath, f.length(), realName.substring(realName.lastIndexOf(".")+1));
                 	System.out.println("解压 ["+realName+" __"+ fileInfo.get("fileId").toString() +"] 完成！");
					
					str[0] = realName;
					str[1] = realName.substring(0,realName.lastIndexOf("."));
					str[2] = fileInfo.get("fileId").toString();*/
                 	
					//ftp上传
					String fileName = (UUID.randomUUID().toString()).replace("-", "")+realName.substring(realName.lastIndexOf("."),realName.length());
	                FTPUtil.instance.uploadFileToFtpServerForEmailByname(fileName, zipFile.getInputStream(entry));
					 
                 	Map<String, Object> fileInfo = fileUtil.insertFile(realName, fileName,"/ITMP", zipFile.getInputStream(entry).available(), realName.substring(realName.lastIndexOf(".")+1));
                 	logger.info("解压 ["+realName+" __"+ fileInfo.get("fileId").toString() +"] 完成！");
					
					str[0] = realName;
					str[1] = realName.substring(0,realName.lastIndexOf("."));
					str[2] = fileName;
                 	
					result.add(str);
				 }
			 }
			 
		 }catch(Exception e){
			 throw new RuntimeException("unzip error from ZipUtils", e);
			
		 }finally{
			 if(zipFile != null){
	             try {
	                 zipFile.close();
	             } catch (IOException e) {
	                 e.printStackTrace();
	             }
	         }
		 }
		 
		 return result;
	 }


	public static void zipFiles(List<String> srcFiles, File zipFile) {
		// 判断压缩后的文件存在不，不存在则创建
		if (!zipFile.exists()) {
			try {
				zipFile.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		// 创建 FileOutputStream 对象
		FileOutputStream fileOutputStream = null;
		// 创建 ZipOutputStream
		ZipOutputStream zipOutputStream = null;
		
		// 创建 FileInputStream 对象
		FileInputStream fileInputStream = null;
		try {
			// 实例化 FileOutputStream 对象
			fileOutputStream = new FileOutputStream(zipFile);
			// 实例化 ZipOutputStream 对象
			zipOutputStream = new ZipOutputStream(fileOutputStream);
			zipOutputStream.setEncoding("gbk");
			// 创建 ZipEntry 对象
			ZipEntry zipEntry = null;
			// 遍历源文件数组
			for (int i = 0; i < srcFiles.size(); i++) {
				// 将源文件数组中的当前文件读入 FileInputStream 流中
				File file = new File(srcFiles.get(i));
				if(!file.exists()){
					continue;
				}
				fileInputStream = new FileInputStream(srcFiles.get(i));
				// 实例化 ZipEntry 对象，源文件数组中的当前文件
				zipEntry = new ZipEntry(file.getName());
				zipEntry.setUnixMode(644);//解决linux乱码
				zipOutputStream.putNextEntry(zipEntry);
				// 该变量记录每次真正读的字节个数
				int len;
				// 定义每次读取的字节数组
				byte[] buffer = new byte[1024];
				while ((len = fileInputStream.read(buffer)) > 0) {
					zipOutputStream.write(buffer, 0, len);
				}
			}
			zipOutputStream.closeEntry();
			zipOutputStream.close();
			fileInputStream.close();
			fileOutputStream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
		
	
	public static void createZip(String sourcePath, String zipPath){
		FileOutputStream fos = null;
		ZipOutputStream zos = null;
		try {
			fos = new FileOutputStream(zipPath);
			zos = new ZipOutputStream(fos);
			zos.setEncoding("gbk");
			writeZip(new File(sourcePath), "", zos);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				if (zos != null) {
					zos.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}
	

	private static void writeZip(File file, String parentPath, ZipOutputStream zos) {
		if(file.exists()){
			if(file.isDirectory()){//处理文件夹
				parentPath+=file.getName()+File.separator;
				File [] files=file.listFiles();
				if(files.length != 0){
					for(File f:files){
						writeZip(f, parentPath, zos);
					}
				}else{//空目录则创建当前目录 
					try {
						zos.putNextEntry(new ZipEntry(parentPath));
					}catch(IOException e){
						e.printStackTrace();
					}
				}
			}else{
				FileInputStream fis=null;
				try {
					fis=new FileInputStream(file);
					ZipEntry ze = new ZipEntry(parentPath + file.getName());
					zos.putNextEntry(ze);
					byte [] content=new byte[1024*2];
					int len;
					while((len=fis.read(content))!=-1){
						zos.write(content,0,len);
						zos.flush();
					}
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}finally{
					try {
						if(fis!=null){
							fis.close();
						}
					} catch (Exception e2) {
						// TODO: handle exception
						e2.printStackTrace();
					}
				}
			}
		}
	}
}
