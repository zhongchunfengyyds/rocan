<%@page import="org.codehaus.jettison.json.JSONArray"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>
<%@page import="java.util.Map"%>
<%@page import="com.cgn.components.coframe.tools.FtpUploadUtil"%>
<%@page import="com.eos.foundation.eoscommon.BusinessDictUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	//response.setCharacterEncoding("UTF-8");
	//response.setContentType("application/json; charset=utf-8");
	long  fileMaxSize=1024*20;
	String fileTyps="gif,jpeg,jpg,png,bmp";
	
		//读取业务字典SYS_UPLOAD中的SIZE和TYPE 没有就用默认的值
		String uploadsize = null;
		String uploadtype = null;
		try{
			uploadsize =	BusinessDictUtil.getDictName("SYS_UPLOAD", "SIZE") ;
			uploadtype =	BusinessDictUtil.getDictName("SYS_UPLOAD", "TYPE") ;
			if(null!=uploadtype && !"".equals(uploadtype) && uploadtype.length()>0){
				fileTyps=uploadtype;
			}
			if(null!=uploadsize && !"".equals(uploadsize) && uploadsize.length()>0){
				long size=Long.parseLong(uploadsize);
				if(size>0){
					fileMaxSize=size;
				}
			}
		}catch(Exception e){
			
		}
	
	
	response.setContentType("text/html;charset=utf-8");
	JSONObject json = new JSONObject();
	try {
		//返回JSON字符串参数
		json.put("code", 1);
		JSONArray list = new JSONArray();
		json.put("list", list);
		for(Map<String, Object> m: FtpUploadUtil.upload(request,fileMaxSize,fileTyps)) {
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
