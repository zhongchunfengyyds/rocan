<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@ taglib uri="http://eos.primeton.com/tags/logic" prefix="l"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<head>
<title>view</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    
</head>
<body>

<input class="nui-hidden" name="workItemId" id="workItemId" value="<b:write property='workItemId'/>"/>
<input class="nui-hidden" name="processInstId" id="processInstId" value="<b:write property='processInstId'/>"/>
            
<%
 int processInstId=Integer.parseInt(request.getParameter("processInstId"));
 int workItemId=Integer.parseInt(request.getParameter("workItemId"));
 String flag = request.getParameter("flag"); 
 String editable = request.getParameter("editable");
 
 System.out.println("==========processInstId:"+processInstId+"===workItemId:"+workItemId+processInstId);
response.sendRedirect(request.getContextPath() + "/com.cgn.itmp.outlineandplan.outline.common.editonWorkFlow.flow?processInstId="+processInstId+"&workItemId="+workItemId+"&flag="+flag+"&editable="+editable);
 %>
</body>
</html>