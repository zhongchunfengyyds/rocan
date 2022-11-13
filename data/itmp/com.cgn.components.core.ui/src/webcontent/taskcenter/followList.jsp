<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>

<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-12-20 15:25:24
  - Description: 我的关注列表
-->
<head>
<title>Title</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="media/tasklist.css" />
<script type="text/javascript">
	"use strict";
   	var _CONTEXT_PATH = "<%=request.getContextPath()%>";
	var editable = false;
	var actionIcon = "media/images/search.gif";
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
		.mini-tooltip-inner{
			padding: 0;
		}
		.mini-fit{
			height: auto !important;
		}
</style>
</head>
<body style="overflow: scroll;">
	<!-- 工具条 -->
	<div class="nui-toolbar" style="padding:2px;border:none;">
		<table style="width:100%;">
			<tr>
				<td style="white-space:nowrap">
					<a class="nui-button" plain="true" id="detailed"><b:message key="detailed-info"/></a>
					<%-- <a class="nui-button" plain="true" id="transition"><b:message key="flow-transition"/></a> --%>
					<a class="nui-button" plain="true" id="chart"><b:message key="flow-chart"/></a>
					<%-- <a class="nui-button" plain="true" id="attach"><b:message key="attachment"/></a>
					<a class="nui-button" plain="true" id="forward"><b:message key="forwarded"/></a> --%>
					<span class="separator"></span>
					<a class="nui-button" checkOnClick="true" checked="false" plain="true" id="grouping"><b:message key="btn-grouping"/></a>
					<span class="separator"></span>
					<a class="nui-button" checkOnClick="true" checked="true" plain="true" id="running"><b:message key="btn-running"/><span class="statistics">0</span></a>
					<a class="nui-button" checkOnClick="true" plain="true" id="completed"><b:message key="btn-completed"/><span class="statistics">0</span></a>
				</td>
				<td style="white-space:nowrap; width: 100%;height: 24px;">
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
	
	<div class="nui-fit" style="padding: 4px;overflow: hidden;">
		<!-- 关注列表 -->
		<div id="taskList"  height="100%" class="nui-datagrid"
			url="com.cgn.components.coframe.taskcenter.FollowManager.queryFollowList.biz.ext"
			dataField="worklist.workItems.BPSWorkItemExpand" 
			totalField="worklist.pageCond.count"
			pageIndexField="worklist.pageCond.beginIndex" 
			pageSize="20" sizeList="[20,100,1000]">
		    <div property="columns">
		    	<div type="indexcolumn" width="10" allowMove="false" allowResize="false" cellCls="mini-grid-headerCell"></div>
		    	<div field="flowchart" width="15" allowMove="false" allowResize="false" ></div>
		    	<div field="processInstID" header='<b:message key="task-code"/>' width="50" headerAlign="center" allowSort="true" allowMove="false" visible="false"></div>
		        <div field="processInstDesc" header='<b:message key="task-desc"/>' width="" headerAlign="center" allowSort="false"></div>
		        <div field="processCreatorName" header='<b:message key="task-apply-user"/>'  width="30" headerAlign="center" allowSort="true" renderer="showUser"></div>
		        <div field="processStartTime" header='<b:message key="task-apply-time"/>'  width="40" headerAlign="center" allowSort="true" dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
		        <div header='<b:message key="task-current-dealt/user"/>' headerAlign="center">
		        	<div property="columns">
				        <div field="currentPerson" header='<b:message key="task-current-grammar"/>'width="50" headerAlign="center" allowSort="true"></div>
			        </div>
		        </div>
		        <div field="action" header='<b:message key=" operation"/>'  width="20" headerAlign="center" allowMove="false" allowResize="false"></div>
		    </div>
		</div>
	</div>
	
	<jsp:include page="taskListParts.jsp"></jsp:include>
	
	<script type="text/javascript">
		$(function() {
			var running = nui.get("#running");
			var completed = nui.get("#completed");
			var taskList = nui.get("#taskList");
			
			function changeViewStatus() {
				if(!this.checked) {
					var other = null;
					if(this == running) {
						other = completed;
					} else {
						other = running;
					}
					if(!other.checked) {
						other.set({
							checked: true
						});
					}
				}
				
				loadData();
			}
			running.on("checkedchanged", changeViewStatus);
			completed.on("checkedchanged", changeViewStatus);
			taskList.on("beforeload", function(e) {
				var c = 0;
				if(running.checked) {
					c |= 1;
				}
				if(completed.checked) {
					c |= 2;
				}
				$.extend(e.data, {completed: c});
				
				$.ajax({
					url: "com.cgn.components.coframe.taskcenter.TaskListCount.getFollowNum.biz.ext?completed=1",
					success: function(data, statusText) {
						$("#running .statistics").text(data.num);
					}
				});
				$.ajax({
					url: "com.cgn.components.coframe.taskcenter.TaskListCount.getFollowNum.biz.ext?completed=2",
					success: function(data, statusText) {
						$("#completed .statistics").text(data.num);
					}
				});
			});
		});
		
		
		function showUser(e){
		
		
		if(e.value==null || e.value==""){
			hideInfo();
			return;
		}
		
		var str = e.value;
		var arr = str.split("]");
		var uname = arr[1];
		var uid = arr[0].replace("[","");
		
	 	return   '<a href="javascript:void(0));"  class="showtip" data-tipshow=' + str + '>' + uname +'</a>';
		//return   '<a href="javascript:void(0);" onmouseout="javascript:hideInfo();" onmouseover="javascript:showInfo(' + "'" + uname + "','"+ uid + "'" + ');">' + uname +'</a>';
 	}
 	
 	var tip = new nui.ToolTip();
 	tip.set({
        target: document,
        selector: '.showtip',
        onbeforeopen: function (e) {            
            e.cancel = false;
        },
        onopen: function (e) {
        	var str=null;
	        var el=e.element;
	        try{
	        	str=el.dataset.tipshow;
	        }catch(e){
	        	str=$(el.outerHTML).data("tipshow");
	        }
            if(str==null || str==""){
				return;
			}
			var arr = str.split("]");
			var uname = arr[1];
			var uid = arr[0].replace("[","");
            if (uid) {
                this.showLoading();
                
                var selectHtml = "<table class='bordered' ><thead><tr><th>处理人</th><th>工号</th><th>联系电话</th></tr></thead>";
				//var selectHtml = "<table class='bordered' ><thead><tr><th>姓名</th><th>工号</th></tr></thead>";
		        selectHtml += "<tr>";
				selectHtml += "<td>&nbsp;" + uname + "&nbsp;</td>";
				selectHtml += "<td>&nbsp;" + uid + "&nbsp;</td>";
                $.ajax({
                    url:"com.cgn.components.bps.api.webservice.WorklistQueryManagerExpandService.getTelNumberByStaffNo.biz.ext",
		            type:'POST',
					data:{"uid":uid},
					cache:true,
                    success: function (text) {
                        //模拟网络延迟
                        setTimeout(function () {
                            var data = mini.decode(text);
	                    	var tel = data.telNumber==null || data.telNumber=="undefined" ? "":data.telNumber;
							selectHtml += "<td>&nbsp;" + tel + "&nbsp;</td>";
					        selectHtml += "</tr></table>";
                            tip.setContent(selectHtml);
                        });
                    }
                });
            }
        }
    });
	</script>
</body>
</html>