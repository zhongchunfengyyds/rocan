<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.eos.system.utility.StringUtil"%>
<%@page import="java.net.URLEncoder"%>
<%@page pageEncoding="UTF-8"%>

<%
	session.invalidate();
	session = null;
	session.removeAttribute("userObject");
	String url = request.getContextPath();

    /**
     * modefied by wangjun at 2020.12.30
     * �������¼�޸�Ϊ4A��¼
     */
// 	String url = null;
// 	String referer = request.getHeader("REFERER");
// 	if(referer!=null){
// 		if(referer.indexOf("logout")<0){
// 			if(referer.indexOf("?")>=0)
// 				referer = referer+"&logout=true";
// 			else
// 				referer = referer+"?logout=true";
// 		}else{
// 			referer = referer.substring(0,referer.indexOf("?"));
// 			referer = referer+"?logout=true";
// 		}
// 		url = pageContext.getServletContext().getInitParameter("sso-server.logoutUrl")+"?service="+URLEncoder.encode(referer,"UTF-8");
// 	}else{
// 		url = "http://"+request.getLocalAddr()+":"+request.getLocalPort()+request.getContextPath()+"?logout=true";
// 		url = pageContext.getServletContext().getInitParameter("sso-server.logoutUrl")+"?service="+URLEncoder.encode(url,"UTF-8");
// 	}
	response.sendRedirect(url);
%>








