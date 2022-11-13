
package com.cgn.itmp.systemset;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.runtime.core.ApplicationContext;
import com.eos.spring.DASDaoSupport;
import com.eos.system.annotation.Bizlet;
import com.cgn.itmp.basecommon.CommonUtil;
import com.cgn.itmp.basecommon.StringUtil;
import com.cgn.itmp.basecommon.ZipUtil;
import com.cgn.itmp.systemset.Importtemplate.TSyMenu;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述 
 * </pre>
 * @author swh (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
public class TSyMenuService extends DASDaoSupport implements ITSyMenuService{
	public void addTSyMenu(TSyMenu tSyMenu){
		tSyMenu.set("uuid",(UUID.randomUUID().toString()).replace("-", ""));
		getDASTemplate().insertEntity(tSyMenu);
	}

	public void deleteTSyMenus(TSyMenu[] tSyMenus ){
		for(DataObject tSyMenu:tSyMenus){
			getDASTemplate().deleteEntityCascade(tSyMenu);
		}
	}


	public void getTSyMenu(TSyMenu tSyMenu){
		getDASTemplate().expandEntity(tSyMenu);
	}


	public TSyMenu[] queryTSyMenus(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(TSyMenu.class, dasCriteria, pageCond);
	}


    public void updateTSyMenu(TSyMenu tSyMenu,String userName){
    	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	tSyMenu.set("updateperson",userName);
    	tSyMenu.set("updatetime",df.format(new Date()));
	    getDASTemplate().updateEntity(tSyMenu);
    }
    
    public String countname(String name){
    	
    	String sql="com.cgn.itmp.systemset.systemset.getcount";
    	String [] data=getDASTemplate().queryByNamedSql(String.class, sql, name);
	    return data[0];
    }
    

	public List<Map<String,Object>> getTree(){
		String sql="com.cgn.itmp.systemset.systemset.getTree";
		DataObject [] data=getDASTemplate().queryByNamedSql(DataObject.class, sql, "");
		Map<String,Object> treeObj=new HashMap<String,Object>();
		List<Map<String,Object>> list=new ArrayList<Map<String,Object>>();
		String first="";
		String pid="";
		Set<String> set=new HashSet<String>();
		int i=0;
		for(DataObject obj:data) {
			treeObj=new HashMap<String,Object>();
			if(first.equals("")){
				pid=UUID.randomUUID().toString().replaceAll("-","");
				first=obj.getString("firstmenu");
				set.add(obj.getString("firstmenu"));
				treeObj.put("pid", i);
				treeObj.put("text",obj.getString("firstmenu"));
				treeObj.put("id",pid);
				list.add(treeObj);
				set.add(obj.getString("firstmenu"));
				i++;
			}
			if(!set.contains(obj.getString("firstmenu"))){
				pid=UUID.randomUUID().toString().replaceAll("-","");
				first=obj.getString("firstmenu");
				set.add(obj.getString("firstmenu"));
				treeObj.put("pid", i);
				treeObj.put("text",obj.getString("firstmenu"));
				treeObj.put("id",pid);
				list.add(treeObj);
				set.add(obj.getString("firstmenu"));
				i++;
			}
			treeObj=new HashMap<String,Object>();
			treeObj.put("pid", pid);
			treeObj.put("text", obj.getString("twolevelmenu"));
			treeObj.put("id", i);
			i++;
			list.add(treeObj);
		}
		return list;
	}
	
	 public String zip(DataObject [] arr){
		 List<String> resFileList = new ArrayList<String>();
    	for(int i=0;i<arr.length;i++){
    		String filePath=ApplicationContext.getInstance().getWarRealPath()+"example-config/"+arr[i].getString("path");
    		String fileName=arr[i].getString("name");
    		if(!StringUtil.isEmpty(filePath) && !StringUtil.isEmpty(fileName)){
				copyFile(filePath,ApplicationContext.getInstance().getWarRealPath()+"example-config/",fileName,false);
				resFileList.add(ApplicationContext.getInstance().getWarRealPath()+"example-config/"+File.separator+fileName);
			}
		}
		File zipFile = new File(ApplicationContext.getInstance().getWarRealPath()+ "tempFile"+File.separator+"模板.zip");
		
		try {
			 if(!zipFile.getParentFile().exists()){
				 zipFile.getParentFile().mkdirs();
	            }
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		ZipUtil.zipFiles(resFileList, zipFile);
    	
    	return zipFile.getAbsolutePath();
    }

	 public String uploadfile(String path,String filename){
		copyFile(ApplicationContext.getInstance().getWarRealPath()+"example-config/"+path,ApplicationContext.getInstance().getWarRealPath()+"example-config/",filename,false);
		return filename;
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
    
    
}
