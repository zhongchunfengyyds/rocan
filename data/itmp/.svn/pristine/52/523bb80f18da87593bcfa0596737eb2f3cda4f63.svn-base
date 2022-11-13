<%@page import="org.codehaus.jettison.json.JSONArray"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>
<%@page import="java.util.Map"%>
<%@page import="com.cgn.components.coframe.tools.FtpUploadUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	//response.setCharacterEncoding("UTF-8");
	//response.setContentType("application/json; charset=utf-8");
	response.setContentType("text/html;charset=utf-8");
	JSONObject json = new JSONObject();
	try {
		//返回JSON字符串参数
		json.put("code", 1);
		JSONArray list = new JSONArray();
		json.put("list", list);
		for(Map<String, Object> m: FtpUploadUtil.upload(request)) {
			JSONObject attch = new JSONObject();
			for(Map.Entry<String, Object> entry: m.entrySet()) {
				attch.put(entry.getKey(), entry.getValue());
			}
			list.put(attch);
		}
	} catch (Exception e) {
		json.put("code", 0);
		json.put("message", e.getMessage());
		e.printStackTrace();
	}
	response.getWriter().write(json.toString());
%>
