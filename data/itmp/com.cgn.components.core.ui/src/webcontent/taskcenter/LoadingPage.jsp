<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/common.jsp"%>

<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-08-03 12:26:50
  - Description: 待办任务列表
-->
<head>
<title><b:message key="todo-list-header"/></title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="media/tasklist.css"/>
    <script type="text/javascript">
		"use strict";
    	var _CONTEXT_PATH = "<%=request.getContextPath()%>";
    	var editable = true;
    	function processdescfun(e){
    		return "<a style='color:blue;' href=\"javascript:showTaskDetailed(),void(0)\">"+e.value+"</a>";
		}
    	var syncStatisticsNums = true;
	</script>
	<style type="text/css">
		.mini-mask-loading {
			height:110px !important;
			width:130px !important;
		    background: #fff url(media/images/loading-1.png) no-repeat scroll ;
		    display: block !important; 
		    margin-left: 0px !important; 
		    margin-top:  0px !important;
		}
		.mini-mask-msg {
		    position: absolute;
		    cursor: wait;
		    left: 45%;
		    top: 30%;
		    width: auto;
		    color: #222;
		    font-family: tahoma,arial,verdana,sans-serif;
		    font-size: 14px;
		    font-weight:500;
		    padding-top: 80px;
		    padding-right: 45px;		    
		}
	</style>
</head>
<body>
	<!-- 工具条 -->
	<div class="nui-toolbar" style="padding:2px;border:none;">
		<table style="width:100%;">
			<tr>
				<td style="white-space:nowrap">
					<a class="nui-button" plain="true" id="detailed" style="display:none"><b:message key="detailed-info"/></a>
					<a class="nui-button" plain="true" id="chart" style="display:none"><b:message key="flow-chart"/></a>
					<span class="separator"></span>
					<a class="nui-button" checkOnClick="true" plain="true" id="grouping" style="display:none"><b:message key="btn-grouping"/></a>
				</td>
				<td style="white-space:nowrap; width: 100%;height: 24px;">
					<div class="searchbox">
						<div class="inner">
							<input id="cond" class="nui-stextboxlist" style="width: auto" tmplId="todolist"/>
						</div>
						<div class="buttons">
							<a class="nui-button" plain="true" iconCls="icon-search" id="query"><b:message key="search"/></a>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
	
	<div class="nui-fit" style="padding: 4px">
		<!-- 待办任务列表 -->
		<div id="taskList"  height="100%" class="nui-datagrid"
			url="com.cgn.components.coframe.taskcenter.TaskManager.getTodoList.biz.ext"
			dataField="worklist.workItems.BPSWorkItemExpand" 
			totalField="worklist.pageCond.count"
			pageIndexField="worklist.pageCond.beginIndex" 
			pageSize="20" sizeList="[20,100,1000]">
		    <div property="columns">
		    </div>
		</div>
	</div>
	
	<jsp:include page="taskLiTest.jsp"></jsp:include>
</body>

</html>