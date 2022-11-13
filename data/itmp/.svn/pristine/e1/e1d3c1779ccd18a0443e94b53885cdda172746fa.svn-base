<%@page import="com.cgn.components.coframe.aep.util.FileUploadUtilZT"%>
<%@page import="com.cgn.components.coframe.aep.util.JsonResult"%>
<%@page import="org.codehaus.jettison.json.JSONArray"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	//response.setCharacterEncoding("UTF-8");
	//response.setContentType("application/json; charset=utf-8");
	response.setContentType("text/html;charset=utf-8");
	JSONObject json = new JSONObject();
	//返回JSON字符串参数
	JsonResult jr = FileUploadUtilZT.send(request);
	json.put("code", jr.getCode());
	json.put("data", jr.getData());
	json.put("errorMsg", jr.getErrorMsg());
	response.getWriter().write(json.toString());
%>
