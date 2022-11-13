<%@page pageEncoding="UTF-8"%>
<%@page import="com.eos.system.exception.EOSRuntimeException"%>
<%@page import="com.eos.access.http.OnlineUserManager"%>
<%@page import="com.eos.data.datacontext.IUserObject"%>
<%@ page import="com.cgnpc.sso.DefaultClient.AppClient" %>
<%

int isLogin=0;
session = request.getSession(false);
if (session == null){
	isLogin =0;
}
IUserObject userObject = (IUserObject) session.getAttribute(IUserObject.KEY_IN_CONTEXT);
if (userObject != null) {
	if (OnlineUserManager.getUserObjectsByUserId(userObject.getUserId()) != null) {
		isLogin = 1;
	}else{
		isLogin=2;
	}
}
if (isLogin == 1) {
    request.getRequestDispatcher("coframe/framework/index.jsp").forward(request, response);
}
else {
    String url = request.getContextPath();
    response.sendRedirect(url);
}
// if(isLogin == 2){
// 	response.sendRedirect(request.getContextPath()+"/auth/login/login.jsp");
// 	request.getRequestDispatcher("auth/login/login.jsp").forward(request, response);
// }else{
// 	boolean isopensso = false;
// 	try{
// 		isopensso = Boolean.valueOf(com.cgn.components.util.ConfigurationUtil.getUserConfigSingleValue("cgnsso", "default", "IsOpenSso"));
// 	}catch (Exception e) {}
// 	if(isopensso){
// 		AppClient  ac = new AppClient(request,response);
// 		String userId = ac.Login();
// 		if("ssorequestrefused".equals(userId)){
// 			request.getRequestDispatcher("coframe/framework/index.jsp").forward(request, response);
// 		}
// 	}else{
// 		request.getRequestDispatcher("coframe/framework/index.jsp").forward(request, response);
// 	}
// }

%>