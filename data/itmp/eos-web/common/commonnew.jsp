<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@page import="javax.servlet.ServletOutputStream"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="com.eos.web.taglib.util.*"%>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%
	//获取标签中使用的国际化资源信息
	//	Object root = com.eos.web.taglib.util.XpathUtil.getDataContextRoot("request", pageContext);
	//	String jsondata = (String) XpathUtil.getObjectByXpath(root,"jsondata");
	String detailed = request.getParameter("detailed");
	UserObject user = (UserObject) request.getSession().getAttribute(
			"userObject");
	String userName = user.getUserRealName();
	String userRoleCodeList = user.getAttributes().get("roleCodeList")
			.toString();
%>
	<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript">
        </script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/themes/cuc/skin.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/common/common.js?t=<%=new Date().getTime() %>"></script>
	<script src="<%= request.getContextPath() %>/common/common.js"></script>
<script src="<%= request.getContextPath() %>/scripts/cuc.min.js"></script>	
<script type= "text/javascript">

</script>
<style type="text/css">
    .errorText{
        color:red;
        font-weight: bold;
    }
</style>