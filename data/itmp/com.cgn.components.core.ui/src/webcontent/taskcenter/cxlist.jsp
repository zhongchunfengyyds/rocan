<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/common.jsp"%>

<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-08-03 12:26:50
  - Description: 撤销任务列表
-->
<head>
<title><b:message key="cx-list-header"/></title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="media/tasklist.css"/>
    <script type="text/javascript">
		"use strict";
    	var _CONTEXT_PATH = "<%=request.getContextPath()%>";
    	var editable = true;
    	var syncStatisticsNums = true;
	</script>
	
	<style type="text/css" >
    	.bordered {
		    *border-collapse: collapse; 
		    border-spacing: 0px;
		    width: 100%;
		    font-size: 12px;
		    color: #444;
		}
		
		.bordered {
		    border: solid #ccc 1px;
		    border-radius: 6px;
		    box-shadow: 0 1px 1px #ccc;
		}
		.bordered tr{
			background: #fbf8e9;
		}
		
		.bordered tr:hover {
		    background: #fbf8e9;
		    transition: all 0.1s ease-in-out;
		}
		
		.bordered td, .bordered th {
		    border-left: 1px solid #ccc;
		    border-top: 1px solid #ccc;
		    padding: 1px;
		    text-align: left;
		}
		
		.bordered th {
		    background-color: #dce9f9;
		    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
		    border-top: none;
		    text-shadow: 0 1px 0 rgba(255,255,255,.5);
		    text-align:center;
		}
</style>
	
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
					<a class="nui-button" checkOnClick="true" plain="true" id="grouping"><b:message key="btn-grouping"/></a>
				</td>
				<td style="white-space:nowrap; width: 100%">
					<div class="searchbox">
						<div class="inner">
							<input id="cond" class="nui-stextboxlist" style="width: auto" tmplId="todolist"/>
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
		<!-- 待办任务列表 -->
		<div id="taskList"  height="100%" class="nui-datagrid"
			url="com.cgn.components.coframe.taskcenter.TaskManager.getCxList.biz.ext"
			dataField="worklist.workItems.BPSWorkItemExpand" 
			totalField="worklist.pageCond.count"
			pageIndexField="worklist.pageCond.beginIndex" 
			pageSize="20" sizeList="[20,100,1000]">
		    <div property="columns">
		    	<div type="indexcolumn" width="10" allowMove="false" allowResize="false" cellCls="mini-grid-headerCell"></div>
		    	<div field="flowchart" width="15" allowMove="false" allowResize="false" ></div>
		    	<div field="processInstID" header='<b:message key="task-code"/>' width="50" headerAlign="center" allowSort="true" allowMove="false" visible="false"></div>
		        <div field="workItemName" header='<b:message key="task-name"/>' width="50" headerAlign="center" allowSort="true" allowMove="false" ></div>
		        <div field="processInstName" header='<b:message key="task-process-name"/>' width="50" headerAlign="center" allowSort="true" allowMove="false" ></div>
		        <div field="activityInstName" header='<b:message key="task-activity-name"/>' width="50" headerAlign="center" allowSort="true" allowMove="false" ></div>
		        <div field="processInstDesc" header='<b:message key="task-desc"/>' width="" headerAlign="center" allowSort="false"></div>
		        <div field="processCreatorName" header='<b:message key="task-apply-user"/>'  width="30" headerAlign="center" allowSort="true" renderer="showUser"></div>
		        <div field="processStartTime" header='<b:message key="task-apply-time"/>'  width="40" headerAlign="center" allowSort="true" dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
		        <div header='<b:message key="task-last-dealt"/>' headerAlign="center">
		        <!-- 上步处理 -->
		        	<div property="columns">
				        <div field="processLastUpdateUserName" header='<b:message key="task-dealt-user"/>'width="30" headerAlign="center" allowSort="true" renderer="showUser"></div>
				        <div field="opinions" header='<b:message key="task-dealt-decision"/>' width="" headerAlign="center" allowSort="false"></div>
				        <div field="processLastUpdate" header='<b:message key="task-dealt-time"/>' width="40" headerAlign="center" allowSort="true"  dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
			        </div>
		        </div>
		     <div field="Revoke" header='<b:message key="Revoke"/>'  width="20" headerAlign="center" allowMove="false" allowResize="false"></div>
		    </div>
		    
		</div>
	</div>
	
	<jsp:include page="taskListParts.jsp"></jsp:include>
	<div id="info" style="display: none;position:absolute;z-index:10000"></div>
</body>
<script type="text/javascript">
		$(function(){
    		nui.get("#taskList").on("drawcell", function(e) {
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
				
				if(field == "Revoke") {
					e.cellStyle = "text-align:center";
					e.cellHtml = '<a href="javascript:Revoke(),void(0)"><img src="' + (typeof actionIcon == 'string' ? actionIcon : "media/images/ui-icon_edit.gif") + '"/></a>';
					return;
				}
			});
    		
    	});
    	
    	function Revoke(){
    		var selected = nui.get("#taskList").getSelected();
			if(selected) {
				 nui.confirm("确定撤销任务吗？","系统提示",
			        function(action){
			            if(action=="ok"){
							var pii = selected.processInstID;
							var aii = selected.activityInstID;
							var wii = selected.workItemID;
							var participant=selected.participant;
			        		var json = nui.encode({processInstId:pii,workItemId:wii,activityInstID:aii,participant:participant});
			        		nui.get("#taskList").loading("正在撤销中,请稍等...");
			                $.ajax({
			                    url:"com.cgn.components.coframe.taskcenter.TaskManager.cxworkitems.biz.ext",
			                    type:'POST',
			                    data:json,
			                    cache: false,
			                    contentType:'text/json',
			                    success:function(text){
			                        var returnJson = nui.decode(text);
			                        if(returnJson.code==1){
			                        	nui.get("#taskList").reload();
			                        	parent.window.cgnui.syncStatisticsNums();
			                        	parent.window.nui.showMessageBox({
								            showModal: false,
								            width: 250,
								            title: "提示",
								            iconCls: "mini-messagebox-info",
								            message:"撤销成功!",
								            timeout: 3000,
								            x: 'right',
								            y: 'bottom'
								        });
		                            }else{
		                            	 nui.get("#taskList").reload();
		                            	parent.window.nui.showMessageBox({
								            showModal: false,
								            width: 250,
								            title: "提示",
								            iconCls: "mini-messagebox-info",
								            message:"撤销失败!",
								            timeout: 3000,
								            x: 'right',
								            y: 'bottom'
								        });
		                            }
		                           
		                        }
		                    });
		                    nui.get("#taskList").reload();
		                }
		            });
			}
    	}
</script>
</html>