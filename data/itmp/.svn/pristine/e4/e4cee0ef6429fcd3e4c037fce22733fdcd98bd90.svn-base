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
 int processInstId=Integer.parseInt(request.getParameter("processInstId")); //流程ID
 int workItemId=Integer.parseInt(request.getParameter("workItemId")); //工作项ID
 String showPage = request.getParameter("showPage"); //展示页面
 String editable = request.getParameter("editable"); //展示页面
 String transferEntity = request.getParameter("transferEntity"); //中转实体
 String trueEntity = request.getParameter("trueEntity"); //真实表实体
 String processField = request.getParameter("processField"); //流程ID字段
  String modelFlag = request.getParameter("modelFlag"); //流程ID字段
    String planFlag = request.getParameter("planFlag"); //计划更新状态
    String flag = request.getParameter("flag");
 response.sendRedirect(request.getContextPath() + "/com.cgn.itmp.basecommon.planComplateFlow.flow?processInstId="+processInstId
 																						+"&workItemId="+workItemId
 																						+"&showPage="+showPage
 																						+"&editable="+editable
 																						+"&transferEntity="+transferEntity
 																						+"&trueEntity="+trueEntity
 																						+"&processField="+processField
 																						+"&modelFlag="+modelFlag
 																						+"&planFlag="+planFlag
 																						+"&flag="+flag);
 %>
</body>
</html>