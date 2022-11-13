<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.cgn.components.coframe.tools.FtpUploadUtil"%>
<%
String remoteFile = request.getParameter("remoteFile");
FtpUploadUtil.retrieveFile(response.getOutputStream(), remoteFile);
response.setContentType("image/jpeg; charset=UTF-8");
response.flushBuffer();
out.clear();
out = pageContext.pushBody();
%>