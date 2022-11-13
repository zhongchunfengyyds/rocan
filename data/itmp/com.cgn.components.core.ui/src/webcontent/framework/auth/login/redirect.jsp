<%@page import="com.eos.data.datacontext.UserObject"%>
<%@page import="com.eos.system.Constants"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="com.eos.access.http.security.config.HttpSecurityConfig"%>
<%@page import="com.eos.system.utility.StringUtil"%>
<%@ page import="com.cgnpc.sso.DefaultClient.AppClient" %>
<%@page pageEncoding="UTF-8"%>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.eos.data.datacontext.IMUODataContext" %>
<%@ page import="com.eos.data.datacontext.DataContextManager" %>
<%@ page import="com.primeton.ext.common.muo.MUODataContextHelper" %>
<%
	//userObject.setUniqueId(session.getId());
	//userObject.setUserRemoteIP(request.getRemoteAddr());
	
	String original_url=null;
	Object objAttr=request.getParameter("original_url");
	if(objAttr != null){
		original_url=StringUtil.htmlFilter((String)objAttr);
	}

	IUserObject userObject = null;
	String userid = null;
	Object sessionUserObject = session.getAttribute("userObject");
	if(sessionUserObject!=null){
		userObject = (com.eos.data.datacontext.UserObject)sessionUserObject;
		userid = userObject.getUserId();
	}
	boolean usernoexist = false;

    /**
     * modefied by wangjun at 2020.12.30
     * 将单点登录修改为4A登录
     */
	if(null!= userid && userid.length() > 0){
	
	
		DataContextManager.current().setMapContextFactory(new com.primeton.ext.access.http.HttpMapContextFactory(request, response));
		com.eos.access.http.OnlineUserManager.login(userObject);
		session.setAttribute(IUserObject.KEY_IN_CONTEXT, userObject);
		IMUODataContext muo = MUODataContextHelper.create(session);
		DataContextManager.current().setMUODataContext(muo);
	
// 		boolean isopensso = false;
// 		try{
// 			isopensso = Boolean.valueOf(com.cgn.components.util.ConfigurationUtil.getUserConfigSingleValue("cgnsso", "default", "IsOpenSso"));
// 		}catch (Exception e) {
// 			e.printStackTrace();
// 		}
// 		if(isopensso){
// 			AppClient  ac = new AppClient(request,response);
// 			userid = ac.Login();
// 			//userid = "C209256";
// 			if(userid!=null && userid.length()>0){
// 				Object[] result = null;
// 				String componentName = "com.cgn.components.coframe.auth.LoginManager";
// 				String operationName = "ssologin";
// 				com.eos.engine.component.ILogicComponent logicComponent = com.primeton.ext.engine.component.LogicComponentFactory.create(componentName);
// 				Object[] params = new Object[1];
// 				params[0] = userid;
// 				try{
// 					result = logicComponent.invoke(operationName, params);
// 				}catch (Throwable e) {}
// 				userObject = (IUserObject)result[0];
// 				if(userObject.getUserName()==null){
// 					usernoexist = true;
// 				}else{
// 					if("local".equals(userObject.get("authMode"))){
// 						usernoexist = true;
// 					}else{
// 						DataContextManager.current().setMapContextFactory(new com.primeton.ext.access.http.HttpMapContextFactory(request, response));
// 						com.eos.access.http.OnlineUserManager.login(userObject);
// 						session.setAttribute(IUserObject.KEY_IN_CONTEXT, userObject);
// 						IMUODataContext muo = MUODataContextHelper.create(session);
// 						DataContextManager.current().setMUODataContext(muo);
// 					}
// 				}
// 			 }else{
// 				 usernoexist = true;
// 			 }
// 		}
	}
	String contextPath = StringUtil.htmlFilter(request.getContextPath());
	String url = null;
	if(StringUtils.isNotBlank(original_url) && !StringUtils.equals(original_url, "null")){
		//有可能不存在或上来就访问了login.jsp
		if(original_url.indexOf("login.jsp")==-1){
			url=contextPath + original_url;
		}else{
			url=contextPath + "/coframe/auth/index.jsp";
		}
	}else{
		url=contextPath + "/coframe/auth/index.jsp";
	}
	if(usernoexist){
		url=contextPath + "/coframe/auth/index.jsp";
	}
	//协议跳转
	HttpSecurityConfig securityConfig = new HttpSecurityConfig();
   	boolean isOpenSecurity = securityConfig.isOpenSecurity();
   	if(isOpenSecurity){
   		boolean isAllInHttps = securityConfig.isAllInHttps();
   		if(!isAllInHttps){
   			String ip = securityConfig.getHost();
   			String http_port = securityConfig.getHttp_port();
   			url = "http://" + ip + ":" + http_port + url;
			String serverType = HttpSecurityConfig.INSTANCE.getServerType();
			System.out.println(serverType);
			if(!(StringUtils.equals(serverType, Constants.SERVER_TYPE_WEBLOGIC) || StringUtils.equals(serverType, Constants.SERVER_TYPE_WEBSPHERE))){
				String sessionID = session.getId();
				Cookie cookie = new Cookie("JSESSIONID", sessionID);
				cookie.setPath(contextPath);
				cookie.setSecure(true);
				response.addCookie(cookie);
	   		}
		}
   	}
 	response.sendRedirect(url);
%>
