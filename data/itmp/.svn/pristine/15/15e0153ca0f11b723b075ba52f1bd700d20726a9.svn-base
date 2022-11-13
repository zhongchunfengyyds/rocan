<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/common.jsp"%>
	
<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-08-30 10:41:21
  - Description: 我的流程
-->
<head>
<title>Title</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="media/tasklist.css"/>
    <script type="text/javascript">
    	"use strict";
    	var _CONTEXT_PATH = "<%=request.getContextPath()%>";
    	var editable = false;
    	
    	function setProcessInstState(e){
    		var text="";
    		if(e.value==1){
    			text="未启动";
    		}else if(e.value==2){
    			text="运行";
    		}else if(e.value==3){
    			text="挂起";
    		}else if(e.value==7){
    			text="完成";
    		}else if(e.value==8){
    			text="终止 ";
    		}else{
    			text="未知";
    		}
    		return text;
    	}
    	
    	function setIsTimeoOut(e){
    		return e.value=="N"?"否":"是";
    	}
    	
    	function onShowRowDetail(e){
    		var grid = e.sender;
			var row = e.record;
			var td = grid.getRowDetailCellEl(row);
			var processInstID=row.processInstID;
			
			var dataForm= document.getElementById("dataForm");
			var nuidata=nui.get("#taskList1");
            nuidata.load({cond:"processInstID:="+processInstID});
			td.appendChild(dataForm);
            dataForm.style.display = "block";

			
    	}
    	
    	$(function(){
    		nui.get("#taskList1").on("drawcell", function(e) {
				var field = e.field, value = e.value, dataType = e.column.dataType;
				//格式化日期
				if (dataType == "date" && value) {
					var dateFormat = e.column.dateFormat ? e.column.dateFormat : "yyyy-MM-dd HH:mm:ss";
					var lens = dateFormat.split(/-| |:/);
					var dirs = dateFormat.replace(/y|M|m|d|H|s/g, "").split("");
					var d = "", index = 0, len = 0;
					for(var i = 0; i < lens.length; i++) {
						len = lens[i].length;
						d += value.substring(index, index + len) + (i < dirs.length ? dirs[i] : "");
						index += len;
					}
					e.cellHtml = d;
					return;
				}
				
				if(field == "action") {
					e.cellStyle = "text-align:center";
					e.cellHtml = '<a href="javascript:showTaskDetailed1(),void(0)"><img src="' + (typeof actionIcon == 'string' ? actionIcon : "media/images/resizeApi7.png") + '"/></a>';
					return;
				}
			});
    		
    	});
		
		function showTaskDetailed1() {
			var selected = getSelectedProcessInst();
			if(selected) {
				var reloadAfterOpenTask = false;
				var pdn = selected.processDefName;
				var pii = selected.processInstID;
				var aii = selected.activityInstID;
				var wii = selected.workItemID;
				var actionURL = selected.actionURL;
				var url = "com.cgn.components.coframe.taskcenter.task.flow?processInstId=" + pii + "&actInstId=" + aii + "&workItemId=" + wii + "&processDefId=" + pdn + "&editable=" + editable + "&actionURL=" + actionURL;
				if("string" == typeof _eosFlowAction) {
					url += ("&_eosFlowAction=" + _eosFlowAction);
					reloadAfterOpenTask = (_eosFlowAction == "read");
				}
				nui.get("#window").load(url, function() {
					if(reloadAfterOpenTask) {
						nui.get("#taskList").reload();
					}
				});
				nui.get("#window").max();//.show();
			}
		}
		
		function getSelectedProcessInst() {
			return nui.get("#taskList1").getSelected();
		}
		
		 function onBeforeWorkItemsLoad(e) {
    		e.url = "com.cgn.components.coframe.taskcenter.TaskManager.getDoneList.biz.ext";
	    }
    </script>
</head>
<body>
	<!-- 工具条 -->
	<div class="nui-toolbar" style="padding:2px;border:none;display: none;">
		<table style="width:100%;">
			<tr>
				<td style="white-space:nowrap">
					<a class="nui-button" plain="true" id="detailed"><b:message key="detailed-info"/></a>
					<%-- <a class="nui-button" plain="true" id="transition"><b:message key="flow-transition"/></a> --%>
					<a class="nui-button" plain="true" id="chart"><b:message key="flow-chart"/></a>
					<%-- <a class="nui-button" plain="true" id="attach"><b:message key="attachment"/></a>
					<a class="nui-button" plain="true" id="forward"><b:message key="forwarded"/></a> --%>
					<span class="separator"></span>
					<a class="nui-button" checkOnClick="true" plain="true" id="grouping">分组</a>
				</td>
				<td style="white-space:nowrap; width: 100%">
					<div class="searchbox">
						<div class="inner">
							<input id="cond" class="nui-stextboxlist" style="width: auto" tmplId="donelist"/>
						</div>
						<div class="buttons">
							<a class="nui-button" plain="true" iconCls="icon-search" id="query"><b:message key="search"/></a>
							<a class="nui-button" plain="true" iconCls="icon-find" id="expandQueryForm"><b:message key="hsearch.text"/></a>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
	
	<div class="nui-fit" style="padding: 4px">
		<!-- 列表 -->
		<div id="taskList"  height="100%" class="nui-datagrid"
			url="com.cgn.components.coframe.taskcenter.TaskManager.getProcessInstList.biz.ext"
			dataField="prolist.processInstList.BPSProcessInstExpand" 
			totalField="prolist.pageCond.count"
			pageIndexField="prolist.pageCond.beginIndex" 
			pageSize="20" sizeList="[20,100,1000]" collapseGroupOnLoad="true"
			onshowrowdetail="onShowRowDetail" >
		    <div property="columns">
		    	<div type="indexcolumn" width="10" allowMove="false" allowResize="false" cellCls="mini-grid-headerCell"></div>
		    	
		    	<div type="expandcolumn" width="20" allowMove="false" allowResize="false" cellCls="mini-grid-headerCell"></div>
		    	<div field="flowchart" header='' width="50"  headerAlign="center" allowMove="false" allowResize="false"  align="center"></div>
		    	<div field="processInstID" header='' width="50" headerAlign="center" align="center" allowSort="true" allowMove="false" visible="false"></div>
		    	
		    	<div field="processInstName" header='<b:message key="task-processInstName"/>' width="" headerAlign="center" align="center" allowSort="false"></div>
		    	<div field="processInstDesc" header='<b:message key="task-processInstDesc"/>' width="" headerAlign="center"  align="center" allowSort="false"></div>
		    	<div field="processDefName" header='<b:message key="task-processDefName"/>' width="" headerAlign="center" align="center" allowSort="false"></div>
		    	<div field="currentState" header='<b:message key="task-currentState"/>' width="" headerAlign="center" allowSort="false" align="center" renderer="setProcessInstState"></div>
		    	<div field="isTimeOut" header='<b:message key="task-isTimeOut"/>' width="" headerAlign="center" allowSort="false" align="center" renderer="setIsTimeoOut"></div>
		    	<div field="creator" header='<b:message key="task-creator"/>' width="" headerAlign="center" align="center" allowSort="false"></div>
		    	<div field="startTime" header='<b:message key="task-startTime"/>' width="" headerAlign="center" align="center" allowSort="false" dateFormat="yyyy-MM-dd HH:mm:ss" ></div>
		    	<div field="endTime" header='<b:message key="task-endTime"/>' width="" headerAlign="center" align="center" allowSort="false" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
		    	<div field="action" header='<b:message key="operation"/>'  width="20" headerAlign="center" align="center" allowMove="false" allowResize="false"></div>
		    </div>
		</div>
	</div>
	
	
	<!-- 列表 -->
	<div id="dataForm" style="display: none;" >
		<div id="taskList1"  class="nui-datagrid" onbeforeload="onBeforeWorkItemsLoad"  showPager="false"
			dataField="worklist.workItems.BPSWorkItemExpand" collapseGroupOnLoad="true">
		    <div property="columns">
		    	<div field="processChName" header='<b:message key="task-processChName"/>' headerAlign="center" align="center" allowSort="false"></div>
		    	<div field="processInstID" header='<b:message key="task-code"/>'  headerAlign="center" allowSort="true"  align="center" allowMove="false" visible="false"></div>
		        <div field="processInstDesc" header='<b:message key="task-desc"/>'  headerAlign="center"  align="center" allowSort="false"></div>
		        <div field="processCreatorName" header='<b:message key="task-apply-user"/>' headerAlign="center" align="center" allowSort="true"></div>
		        <div field="processStartTime" header='<b:message key="task-apply-time"/>'  headerAlign="center" align="center" allowSort="true" dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
		        <div field="currentPerson" header='<b:message key="task-current-grammar"/>'  headerAlign="center" align="center" allowSort="true"></div>
		        <%-- <div field="action" header='<b:message key="operation"/>'  width="20" headerAlign="center" align="center" allowMove="false" allowResize="false"></div> --%>
		    </div>
		</div>
	</div>
	
	<jsp:include page="taskListParts.jsp"></jsp:include>
</body>
</html>