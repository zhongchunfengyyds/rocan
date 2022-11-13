<!-- 任务列表窗口 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.cgn.components.coframe.taskcenter.data.WFBasicInfo"%>
<%@ include file="/coframe/tools/lang.jsp"%>
<%@ taglib uri="http://eos.primeton.com/tags/html" prefix="h"%>
<%@ taglib uri="http://eos.primeton.com/tags/logic" prefix="l"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ taglib uri="http://eos.primeton.com/tags/eos" prefix="e"%>
<%
	SimpleDateFormat FORMATER = new SimpleDateFormat(
			"yyyy-MM-dd HH:mm:ss");
	Date bcreate = ((WFBasicInfo) request.getAttribute("basic"))
			.getCreateTime();
	String createTime = bcreate == null ? "" : FORMATER.format(bcreate);
%>
<nav class='navbar navbar-default  patch'>
	<div class='container-fluid'>
		<div class='navbar-header'>
			<button type='button' class='navbar-toggle collapsed'
				data-toggle='collapse' data-target='#bs-example-navbar-collapse-1'
				aria-expanded='false'>
				<span class='sr-only'>Toggle navigation</span> <span
					class='icon-bar'></span> <span class='icon-bar'></span> <span
					class='icon-bar'></span>
			</button>
			<a class='navbar-brand' href='#'><b:message key="basic-info" /></a>
		</div>
		<div class='collapse navbar-collapse'
			id='bs-example-navbar-collapse-1'>
			<ul class='nav navbar-nav navbar-right'>
				<li class='folding-toggle'><a href='#'><span
						class='fa fa-angle-up'></span></a></li>
			</ul>
		</div>
	</div>
</nav>

<div class='accordion-container folding-menu'
	style='overflow: hidden; display: block;'>
	<div class="table-layout" id="basic">
	<div style="overflow:hidden;">
		<div class="lt-input">
			<div class="form-group">
				<label for="processName"><b:message key='process-name' /></label> <input
					class="nui-textbox form-control" name="processName"
					value="${basic.processName}" allowInput="false" labelField="false">
			</div>
			<div class="form-group">
				<label><b:message key='task-apply-user' /></label> <input
					class="nui-textbox  form-control" name="taskapplyuser"
					value="${basic.createUserName}" allowInput="false"
					labelField="false">
			</div>
			<div class="form-group">
				<label><b:message key='task-apply-dept' /></label> <input
					class="nui-textbox  form-control" name="taskapplydept"
					value="${basic.createDepartName}" allowInput="false"
					labelField="false">
			</div>
		</div>
		<div class="rt-input">
			<div class="form-group">
				<label><b:message key='current-activi' /></label> <input
					class="nui-textbox  form-control" name="currentactivi"
					value="${basic.actDefName}" allowInput="false" labelField="false">
			</div>
			<div class="form-group">
				<label><b:message key='task-apply-time' /></label> <input
					class="nui-textbox  form-control" name="taskapplytime"
					value="<%=createTime%>" allowInput="false" labelField="false">
			</div>
			<div class="form-group">
				<l:equal property="status" targetValue="0">
					<label><b:message key='task-apply-wdept' /></label>
					<input class="nui-norgpicker  form-control" id="workDepart" rootUrl="<%=request.getContextPath()%>"
						name="createWorkDepartId" multi="false"
						textName="createWorkDepartName"
						label='<b:message key="task-apply-wdept"/>' labelField="false"
						allowInput="false"
						value='<b:write property="userObject/userOrgId" scope="session"/>'
						text='<b:write property="userObject/userOrgName" scope="session"/>'></input>
				</l:equal>
				<l:notEqual property="status" targetValue="0">
					<label><b:message key='task-apply-wdept' /></label>
					<input class="nui-textbox  form-control"
						label='<b:message key="task-apply-wdept"/>' labelField="false"
						value="${basic.createWorkDepartName}" allowInput="false" />
				</l:notEqual>
			</div>
		</div>
	</div>
<!-- 	<div class="form-group" style=" position: relative;padding-left: 75px;"> -->
<%-- 				<label><b:message key='task-apply-time' /></label> <input --%>
<!-- 					class="nui-textbox  form-control" name="taskapplytime" -->
<%-- 					value="<%=createTime%>" allowInput="false" labelField="false"> --%>
<!-- 			</div> -->
</div>
</div>