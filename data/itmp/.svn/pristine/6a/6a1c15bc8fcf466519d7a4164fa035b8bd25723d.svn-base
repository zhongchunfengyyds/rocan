<!DOCTYPE html>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.cgn.components.coframe.taskcenter.data.WFBasicInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>

<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-08-12 13:08:38
  - Description: 任务详情
-->
<head>
<title></title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/task.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/coframe//taskcenter/media/task.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/coframe/tools/widget/personpicker.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.ui.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/coframe/tools/widget/selectPerson/jquery.cgn.ui.selectPerson.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/coframe/tools/widget/selectPerson/NameControl.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/tools/widget/selectPerson/jquery.cgn.ui.selectPerson.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/coframe/tools/widget/selectDept/jquery.cgn.ui.selectDept.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/tools/widget/selectDept/jquery.cgn.ui.selectDept.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<l:notEqual property="status" targetValue="1">
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
</l:notEqual>
<script type="text/javascript">
	"use strict";
	var _CONTEXT_PATH = "<%=request.getContextPath()%>";
	$(function() {
		if($.browser.msie && parseFloat($.browser.version) < 8) {
			$.getScript("<%=request.getContextPath()%>/coframe/tools/widget/jquery.pseudo.js");
		}
		$("#form").task({
			processInstId : "<b:write property='processInstId'/>",
			processDefId : "<b:write property='processDefId'/>",
			workItemId : "<b:write property='workItemId'/>",
			actDefName : "${basic.actDefName}",
			actDefId : "${activiCfg.activityId}",
			canChooseNextActivity : "${activiCfg.canChooseNextActivity}",
			canModifyBizData : ("${activiCfg.canModifyBizData}" === "true"),
			status : parseInt("${status}"),
			applyInfoPageUrl : "${applyInfoPageUrl}",
			operationPageUrl : "${operationPageUrl}",
			postMask : "<b:message key='post-mask'/>",
			actionURL : "<b:write property='actionURL'/>",

			btFollow : "<b:message key='btn-follow'/>",
			btCancelFollow : "<b:message key='btn-cancel-follow'/>",
			fsm : "<b:message key='follow-sucess-message'/>",
			cfsm : "<b:message key='cancel-follow-sucess-message'/>"
		});
	});
</script>
</head>
<body id="form">
	<!-- 请求参数-->
	<div id="bps">
		<input class="nui-hidden" name="processInstId"
			value='<b:write property="processInstId"/>' /> <input
			class="nui-hidden" name="workItemId" id="workItemId"
			value='<b:write property="workItemId"/>' /> <input class="nui-hidden"
			name="processDefId" value='<b:write property="processDefId"/>' /> <input
			class="nui-hidden" name="actDefName" value=' ${basic.actDefName}'/>
	</div>

	<div class="bs-docs-section" width="100%"  style="border:0px solid red">

		<jsp:include page="taskBaseinfoParts.jsp"></jsp:include>
		<jsp:include page="taskApplyinfoParts.jsp"></jsp:include>
		<jsp:include page="../tools/fileupload.jsp"></jsp:include>
		
		<%
			String processInstId = request.getParameter("processInstId");
			if (processInstId != null) {
		%>
		<jsp:include page="taskLogParts.jsp"></jsp:include>
		<%
			}
		%>
		<jsp:include page="taskDealParts.jsp"></jsp:include>
		<div style="height:20px">
		</div>
		<div  class="fixd-btn-group">

						<l:equal property="status" targetValue="0">
							<button id="save" class="iconBtn btn  btn-second">
								<i class="fa fa-floppy-o"></i><span><b:message
										key="btn-save" /></span>
							</button>
						</l:equal> <l:notEqual property="status" targetValue="1">
							<button id="submit" class="iconBtn btn btn-default">
								<i class="fa fa-sign-in"></i><span><b:message
										key="btn-submit" /></span>
							</button>
						</l:notEqual> <l:greaterThan property="status" targetValue="0">
							<l:equal property="followed" scope="flow" targetValue="true">
								<button id="follow" class="iconBtn btn  btn-second">
									<i class="fa fa-times-circle"></i><span><b:message
											key="btn-cancel-follow" /></span>
								</button>
							</l:equal>
							<l:notEqual property="followed" scope="flow" targetValue="true">
								<button id="follow" class="iconBtn btn  btn-second">
									<i class="fa fa-lightbulb-o"></i><span><b:message
											key="btn-follow" /></span>
								</button>
							</l:notEqual>
						</l:greaterThan>
						<button id="show-reassign" class="iconBtn btn  btn-second">
							<i class="fa fa-clone"></i><span><b:message
									key="btn-reassign" /></span>
						</button>
						<button id="show-flow-chart" class="iconBtn btn  btn-second">
							<i class="fa fa-sitemap"></i><span><b:message
									key="btn-flow-chart" /></span>
						</button> 
						<button id="back" class="iconBtn btn  btn-second">
							<i class="fa fa-arrow-left"></i><span><b:message
									key="btn-back" /></span>
						</button> 

		</div>
	

	<div id="chart-dialog" title='<b:message key="flow-chart"/>'
		class="nui-window" showToolbar="false" showFooter="false"
		showModal="true" showShadow="true" showMaxButton="true"
		maskOnLoad="true" allowResize="true"
		style="width: 1000px; height: 458px">
		<iframe id="chart-frame" frameborder="0" width="100%" height="100%"></iframe>
	</div>
</body>
</html>