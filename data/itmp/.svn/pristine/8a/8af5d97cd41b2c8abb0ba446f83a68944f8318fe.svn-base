<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/common.jsp"%>
	
<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-08-30 10:41:21
  - Description: 已办任务列表
-->
<head>
<title>Title</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
   <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
    <style type="text/css">
    #table1 {
		    border-top: 1px solid #bbbbbb !important;
		}
    </style>
    <script type="text/javascript">
    	"use strict";
    	
    	var _CONTEXT_PATH = "<%=request.getContextPath()%>";
    	var editable = false;
    	
    	function processdescfun(e){
    		return "<a class='blue-font' href=\"javascript:showTaskDetailed(),void(0)\">"+e.value+"</a>";
		}
		
		function showRemovke(e){
			if(e.value){
				return '<a href="javascript:Revoke(),void(0)" class="fa fa-undo" title="撤销"></a>';
			}
		}
		
		function Revoke(){
		var tasklist1=nui.get("#taskList");
    		var selected = tasklist1.getSelected();
			if(selected) {
				 nui.confirm("确定撤销任务吗？","系统提示",
			        function(action){
			            if(action=="ok"){
							var actInstID = selected.activityInstID;
							//var workActInstId = selected.extend3;
							var workItemID = selected.workItemID;
			        		var json = nui.encode({actInstID:actInstID,workItemID:workItemID});
			        		nui.get("#taskList").loading("正在撤销中,请稍等...");
			                $.ajax({
			                    url:"com.cgn.components.coframe.taskcenter.TaskManager.cxDone.biz.ext",
			                    type:'POST',
			                    data:json,
			                    cache: false,
			                    contentType:'text/json',
			                    success:function(text){
			                        var returnJson = nui.decode(text);
			                        if(returnJson.code==1){
			                        	//焊接申请的修改状态
				                        if(selected.workItemDesc=="com.cgn.itmp.weldingmanagement.Weldingapply.Weldingapply"){
									        	var processInstId=selected.processInstID;
								                var json =nui.encode({processInstId:processInstId});
								                $.ajax({
								        					url : "com.cgn.itmp.weldingmanagement.weldingapplybiz.updatestatus.biz.ext",
								        					type : 'POST',
								        					data : json,
								        					cache : false,
								        					contentType : 'text/json',
								        					success : function(text) {
	        											}
	        			
	        									});
											}
			                        	tasklist1.reload();
			                        	parent.window.cgnui.syncStatisticsNums();
			                        	parent.window.nui.showMessageBox({
								            showModal: false,
								            width: 250,
								            title: "提示",
								            iconCls: "mini-messagebox-info",
								            message:"撤销成功!",
								            timeout: 3000,
								            
								        });
								        
								        
								        
		                            }else{
		                            	 tasklist1.reload();
		                            	parent.window.nui.showMessageBox({
								            showModal: false,
								            width: 250,
								            title: "提示",
								            iconCls: "mini-messagebox-info",
								            message:"撤销失败!",
								            timeout: 3000,
								            
								        });
		                            }
		                           
		                        }
		                    });
		                    tasklist1.reload();
		                }
		            });
			}
    	}
    	
    	/*日期控件按钮响应*/
		function ondrawdateStart(e){
			var date = e.date;
			var d = nui.get("#endTime").getValue();
			if(d){
				var timeStr = d.getFullYear() + "/" + (d.getMonth() + 1) + "/" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
				d = new Date(timeStr);
			}
			if(date && d && date.getTime() > d.getTime()){
				e.allowSelect=false;
			}
		}
		
		function ondrawdateEnd(e){
			var date = e.date;
			var d = nui.get("#startTime").getValue();
			if(d){
				var timeStr = d.getFullYear() + "/" + (d.getMonth() + 1) + "/" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
				d = new Date(timeStr);
			}
			if(date && d && date.getTime() < d.getTime()){
				e.allowSelect=false;
			}
		}
		function showFlowchartAction(){
			return '<a href="javascript:showFlowchart(),void(0)"><span title="查看流程图"><img src="media/images/processinstance.gif"/></span></a>';
		}
/* 			//隐藏显示高级查询
	function showquery() {
			var div = $("#form1");
			div.slideToggle(500);
			$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
		}
		var grid = nui.get("taskList");
		//查询
		function search() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			grid.load(json);//grid查询
		} */
    </script>
    <style>
/* 	.btn{padding: 1px 10px;font-size: 12px;line-height: 2;margin-bottom: 5px;} */
	</style>
</head>
<body style="background-color:#f1f1f1;">
	<!-- 工具条 -->
<div class="bs-docs-section">
	<div class="search-box">
		<div class="search-container folding-menu" id="">
			<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0"
						class="table Keywordsearchtable" style="height: 100%;">
						<tr class="">
							<td class="form_label">关键字查询:</td>
							<td class="form_label"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td colspan="2" style="width:50%;border-right: 1px solid #f7f7f9 !important" class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()"> 模糊查询 </a> 
									<a id="allQuery" style="display: none" class="btn btn-default" onclick="searchs()"> 查询 </a> 
									<a class="btn btn-default" onclick="reset()"> 重置 </a>
									<div onclick="showquery()" id="funquery"
										class="fa fa-chevron-down fa-1x">
										&nbsp;<a id="scbt">高级查询</a>
									</div>
								</div>
							</td>
							<td style="width:0%; background: #f7f7f9;" class="form_label">
							</td>
						</tr>
					</table>
				<div id="form1" class="nui-form displaynone" align="center" style="height: 10%">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label"><label><b:message key='hsearch.process-name'/></label></td>
							<td colspan="1"><input class="nui-textbox" name="PROCESSCHNAME:%" labelField="true"></td>
							<td class="form_label"><label><b:message key='hsearch.task-desc'/></label></td>
							<td colspan="1"><input class="nui-textbox" name="processInstDesc:%" labelField="true" label=""></td>
						</tr>
						<tr>
							<td class="form_label"><label><b:message key='hsearch.start-time-from'/></label></td>
							<td colspan="1"><input id="startTime" class="nui-datepicker" ondrawdate="ondrawdateStart"  name="processStartTime:>" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" dateFormat="yyyy-MM-dd" style = "width :100%"/></td>
							<td class="form_label"><label><b:message key='hsearch.start-time-to'/></label></td>
							<td colspan="1"><input id="endTime" class="nui-datepicker" ondrawdate="ondrawdateEnd"  name="processStartTime:<" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" dateFormat="yyyy-MM-dd" style = "width :100%"/></td>
						</tr>
						<tr>
							<td class="form_label"><label><b:message key='hsearch.apply-user'/></label></td>
							<td colspan="3"> <input class="nui-textbox" name="processCreatorName:%" labelField="true" label=""></td>
						</tr>
					</table>
				</div>
				</div>
			</div>

		</div>
	</div>
</div>

	
	<div class="nui-fit" style="padding: 15px;padding-top: 2px;">
		<!-- 列表 -->
		<div id="taskList"  height="100%" class="nui-datagrid"
			url="com.cgn.components.coframe.taskcenter.TaskManager.getDoneList.biz.ext"
			dataField="worklist.workItems.BPSWorkItemExpand" 
			totalField="worklist.pageCond.count"
			pageIndexField="worklist.pageCond.beginIndex" 
			pageSize="20" sizeList="[20,100,1000]" collapseGroupOnLoad="true">
		    <div property="columns">
		    	<!-- <div type="indexcolumn" width="10" allowMove="false" allowResize="false" cellCls="mini-grid-headerCell"></div>
		    	<div field="flowchart" width="15" allowMove="false" allowResize="false" ></div> -->
		    	<div field="processInstDesc" header='<b:message key="task-desc"/>' width="" headerAlign="left" allowSort="false" renderer="processdescfun"></div>
		    	<div field="processChName" header='<b:message key="task-processChName"/>' width="30" headerAlign="left" allowSort="false"></div>
		    	<div field="processInstID" header='<b:message key="task-code"/>' width="50" headerAlign="left" allowSort="true" allowMove="false" visible="false"></div>
				<%--<div field="processCreatorName" header='<b:message key="task-apply-user"/>'  width="30" headerAlign="center" allowSort="true"></div>--%>		        
				<div field="workItemName" header='<b:message key="task-dolist"/>' width="50" headerAlign="left" allowSort="false"></div>
				<div field="endTime" header='<b:message key="task-apply-time"/>'  width="50" headerAlign="left" allowSort="true" dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
				<div field="processLastUpdate" header='处理时间'  width="50" headerAlign="left" allowSort="true" dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
		        <div field="currentPerson" header='<b:message key="task-current-grammar"/>'width="80" headerAlign="left" allowSort="true"></div>
		        <%-- <div header='<b:message key="task-current-dealt/user"/>' headerAlign="center">
		        	<div property="columns">
				        <div field="currentPerson" header='<b:message key="task-current-grammar"/>'width="50" headerAlign="center" allowSort="true"></div>
			        </div>
		        </div> --%>
		        <%-- <div field="action" header='<b:message key="operation"/>'  width="20" headerAlign="center" allowMove="false" allowResize="false"></div> --%>
		    	<div field="extend2" header='<b:message key="Revoke"/>'  width=""40"" headerAlign="left" allowMove="false" renderer="showRemovke"allowResize="false"></div>
		    	<div field="flowchart" header='查看流程图' width="40" headerAlign="center"  align="center"  allowMove="false" allowResize="false" renderer="showFlowchartAction"></div>
		    </div>
		</div>
	</div>
	
	<jsp:include page="taskListParts.jsp"></jsp:include>
</body>
    <script>
//隐藏显示高级查询
	/* function showquery() {
			var div = $("#form1");
			div.slideToggle(500);
			$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
		} */
		var grid = nui.get("taskList");
		//查询
		function searchs() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			json["criteria/_orderby[1]/_property"] = "processLastUpdate";
			json["criteria/_orderby[1]/_sort"] = "desc";
			grid.load(json);//grid查询
		}
			function reset() {
			$("#cond").val("");
			var form = new nui.Form("#form1");//将普通form转为nui的form
			form.reset();
		}
		
		
    </script>
</html>