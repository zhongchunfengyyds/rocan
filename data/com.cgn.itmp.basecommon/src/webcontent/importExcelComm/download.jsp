<%@page pageEncoding="UTF-8"%>
<%@page import="javax.servlet.ServletOutputStream"%>
<%@page import="java.io.*"%>
<%@page import="com.eos.web.taglib.util.*" %><%
	  //获取标签中使用的国际化资源信息
	  String fileNotExist=com.eos.foundation.eoscommon.ResourcesMessageUtil.getI18nResourceMessage("l_fileNotExist");
      Object root= com.eos.web.taglib.util.XpathUtil.getDataContextRoot("request", pageContext); 
      String localFile=(String)XpathUtil.getObjectByXpath(root,"downFile");
      String loadFileName=(String)XpathUtil.getObjectByXpath(root,"loadFileName");
      if("".equals(loadFileName) || loadFileName == null){
      			if(localFile.indexOf("导入错误的数据") >= 0){
      				loadFileName = "导入错误的数据";
      			}else{
      				loadFileName = "tempExcel";
      			}
      }
      System.out.println(">>>>download file is "+loadFileName);
	  byte[] buffer = new byte[512]; 
	  int size = 0; 
	  response.reset();
	  response.setContentType("application/octet-stream");

 	  //response.setHeader("Content-disposition", "attachment;filename=\""+ java.net.URLEncoder.encode(localFile,"UTF-8") + "\"");
 	  if(loadFileName.indexOf(".")!=-1){
 		response.setHeader("Content-disposition", "attachment;filename=\""+ java.net.URLEncoder.encode(loadFileName,"UTF-8") + "\"");
 	  }else{
	 	  response.setHeader("Content-disposition", "attachment;filename=\""+ java.net.URLEncoder.encode(loadFileName+".xlsx","UTF-8") + "\"");
 	  }
	  ServletOutputStream os = null;
	  FileInputStream in = null;
	  try {
	     os = response.getOutputStream();
	     File downloadFile=new File(localFile);
	     if(downloadFile!=null&&downloadFile.exists()){
		     in = new FileInputStream(new File(localFile));
		     while ((size = in.read(buffer)) != -1) { 
		       os.write(buffer, 0, size); 
		     }
		    out.clear();
         	out = pageContext.pushBody();
	     }else{
	        out.print(fileNotExist); //"文件不存在！"
	     }
  	   } catch(Exception e) {
          e.printStackTrace();
       } finally {
            try {
             if(in!=null)in.close();
		     if(os!=null)os.close();
		   } catch (IOException e) {
		     e.printStackTrace();
		   }
       }
%>