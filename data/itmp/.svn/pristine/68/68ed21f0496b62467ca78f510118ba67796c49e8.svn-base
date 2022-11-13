<%@page import="java.net.URLEncoder"%>
<%@page import="org.apache.axis2.transport.http.util.URIEncoderDecoder"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page pageEncoding="UTF-8"%>
<%-- <h:outputFile outputFileName="<%=request.getParameter("fileName") %>" property="data"/><%out.clear();out = pageContext.pushBody();%> --%>
<%
	    response.reset();
		String fileName=(String)request.getAttribute("fileName");
		String fileType =(String)request.getAttribute("fileType");
		if(fileType==null || "".equals(fileType)){
			String endWithStr=fileName.substring(fileName.lastIndexOf(".")+1,fileName.length());
			if(endWithStr.equals("doc")){
				fileType="application/msword";
			}
			if(endWithStr.equals("docx")){
				fileType="application/octet-stream";
			}
		}
	  	response.setContentType(fileType);
	  	response.setHeader("Content-Disposition", "attachment;filename="+URLEncoder.encode(fileName,"utf-8").replaceAll("\\+",  "%20"));
		byte[] b = (byte[])request.getAttribute("data");
		byte[] resourceField=null;
		try {
		      response.setContentType(fileType);
		      OutputStream toClient = response.getOutputStream();
		      InputStream in = new ByteArrayInputStream(b);
		      int len;
		      byte[] buf = new byte[1024];
		      while ((len = in.read(buf, 0, 1024)) != -1) {
		          toClient.write(buf, 0, len);
	      	  }
		      toClient.flush();
		      pageContext.getOut().clear();
		      toClient.close();
		 /*  out.clear();  
	      out = pageContext.pushBody();  */
		} catch (Exception e) {
			e.printStackTrace();
		}
 %>