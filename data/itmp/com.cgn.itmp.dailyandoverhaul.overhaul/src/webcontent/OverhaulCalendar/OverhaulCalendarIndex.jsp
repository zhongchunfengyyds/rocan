<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<html>
<!-- 
  - Author(s): Administrator
  - Date: 2019-02-25 11:11:06
  - Description:
-->
<style type="text/css">
.mini-tabs-bodys{padding:0px!important;}
</style>
<head>
<title>大修日历</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/js/jquery/jquery-1.8.1.min.js"></script>
</head>
<body style="background-color:#f1f1f1;width:98%;height:100%;margin:0 auto;">
<div  class="nui-tabs" id="tabs1"  activeIndex="0"  plain="false" style="width: 100%; height: 100%;" >
    <div title="日历视图" id="rlst" url='<%= request.getContextPath() %>/overhaul/OverhaulCalendar/CalendarView.jsp' refreshOnClick="true"></div>
    
    <%
        userRoleCodeList = ","+ userRoleCodeList + ",";
        if(userRoleCodeList.indexOf(",ITMP_JDGLY") < 0 ||userRoleCodeList.indexOf(",ITMP_JDGLY") >= 0 || userRoleCodeList.indexOf(",ITMP_CJGLY") >= 0){
    %>
     <div title="列表视图"  id="lbst" url='<%= request.getContextPath() %>/overhaul/OverhaulCalendar/CalendarList.jsp'>
       
    </div>
    <%
        }
    %>
</div>


	<script type="text/javascript">
    	nui.parse();
     
    </script>

    
</body>
</html>