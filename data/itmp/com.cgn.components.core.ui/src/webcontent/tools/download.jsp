<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.cgn.components.coframe.tools.FtpUploadUtil"%>
<%@page import="java.net.URLEncoder"%>
<%
String remoteFile = request.getParameter("remoteFile");
String name = request.getParameter("name");
String userAgent = request.getHeader("User-Agent").toLowerCase();  
if (userAgent.contains("msie") || userAgent.contains("like gecko") ) {
        // win10 ie edge 浏览器 和其他系统的ie
	name = URLEncoder.encode(name, "UTF-8");
} else {
        // fe
	name = new String(name.getBytes("UTF-8"), "iso-8859-1");
}
response.setCharacterEncoding("UTF-8");
response.setContentType("application/x-msdownload;charset=utf-8");
//response.setContentType("text/html;charset=utf-8");
//response.setHeader("Location", remoteFile);
response.setHeader("Content-Disposition", "attachment;filename="+name+"");
FtpUploadUtil.retrieveFile(response.getOutputStream(), remoteFile);
response.flushBuffer();
out.clear();
out = pageContext.pushBody();
%>