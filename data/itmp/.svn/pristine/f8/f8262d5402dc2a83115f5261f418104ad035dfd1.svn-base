<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="org.apache.oltu.oauth2.client.URLConnectionClient"%>
<%@page import="org.apache.oltu.oauth2.client.OAuthClient"%>
<%@page import="java.util.Map"%>
<%@page import="org.apache.oltu.oauth2.client.request.OAuthBearerClientRequest"%>
<%@page import="org.apache.oltu.oauth2.client.response.OAuthResourceResponse"%>
<%@page import="java.util.UUID"%>
<%@page import="com.cgn.itmp.basecommon.Md5Util"%>
<%@page import="com.itextpdf.text.log.SysoCounter"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="org.apache.oltu.oauth2.common.exception.OAuthSystemException"%>
<%@page import="org.apache.oltu.oauth2.common.message.types.ResponseType"%>
<%@page import="org.apache.oltu.oauth2.client.request.OAuthClientRequest"%>
<%@page import="java.io.IOException"%>
<%@page import="org.apache.http.client.ClientProtocolException"%>
<%@page import="org.apache.http.util.EntityUtils"%>
<%@page import="org.apache.http.HttpEntity"%>
<%@page import="org.apache.http.client.config.RequestConfig"%>
<%@page import="org.apache.http.impl.client.HttpClientBuilder"%>
<%@page import="org.apache.http.client.methods.CloseableHttpResponse"%>
<%@page import="org.apache.http.client.methods.HttpGet"%>
<%@page import="org.apache.http.impl.client.CloseableHttpClient"%>
<%@page import="com.cgn.itmp.basecommon.OAuthUtil"%>
<%@page import="com.eos.system.utility.StringUtil"%>
<%@page import="java.net.URLEncoder"%>
<%@page pageEncoding="UTF-8"%>

<%
	
	OAuthClientRequest req;
// 	String url = "https://uap.cgnpc.com.cn/authcenter/userLogout?access_token=" + session.getAttribute("sesssionToken").toString()
// 				+ "&client_id=" + OAuthUtil.client_id;
		OAuthClientRequest userInfoRequest = null;
		OAuthResourceResponse resourceResponse = null;
		OAuthClient oAuthClient = new OAuthClient(new URLConnectionClient());
		// 获取资源GET方式
		userInfoRequest = new OAuthBearerClientRequest(
				"https://aepgw.gnpjvc.cgnpc.com.cn/authcenter/userLogout").setAccessToken(session.getAttribute("sesssionToken").toString())
				.buildQueryMessage();
		userInfoRequest.setLocationUri(userInfoRequest.getLocationUri()
				+ "&client_id=" + URLEncoder.encode(OAuthUtil.client_id,"utf-8"));
		
		session.invalidate();
		String url1 = request.getContextPath();
		if(userInfoRequest != null){
				OAuthUtil.setHeader(userInfoRequest,OAuthUtil.oauthResource);
				Map<String, String> headerMap = userInfoRequest.getHeaders();
				for(Map.Entry<String, String> entry : headerMap.entrySet()){
				    String mapKey = entry.getKey();
				    String mapValue = entry.getValue();
				    System.out.println("header:" + mapKey +":"+mapValue);
				}
			}
			
			resourceResponse = oAuthClient.resource(userInfoRequest,
					"GET", OAuthResourceResponse.class);

			response.setContentType("text/xml;charset=utf-8");
			String message = resourceResponse.getBody();
			System.out.println("返回资源：" + message);
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
	response.sendRedirect(url1);
%>








