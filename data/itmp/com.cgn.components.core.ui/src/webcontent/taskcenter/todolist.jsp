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
            <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
    <script type="text/javascript">
		"use strict";
    	var _CONTEXT_PATH = "<%=request.getContextPath()%>";
    	var editable = true;
    	function processdescfun(e){
    		return "<a style='color:#005894;' href=\"javascript:showTaskDetailed(),void(0)\">"+e.value+"</a>";
		}
		function showFlowchartAction(){
			return '<a href="javascript:showFlowchart(),void(0)"><span title="查看流程图"><img src="media/images/processinstance.gif"/></span></a>';
		}
    	var syncStatisticsNums = true;
	</script>
	<style>
/* 	.btn{padding: 1px 10px;font-size: 12px;line-height: 2;margin-bottom: 5px;} */
	</style>
</head>
<body style="background-color:#f1f1f1;height:100%;">
<div class="bs-docs-section" style="hight:100%">
	<div class="search-box">
		<div class="search-container folding-menu">
			<div style="width: 100%; height: 100%;">
						<table cellpadding="0" cellspacing="0"
						class="table Keywordsearchtable" style="height: 100%;">
						<tr class="">
							<td class="form_label">关键字查询:</td>
							<td class="form_label"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch" style="line-height: 12px;"
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
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.components.coframe.taskcenter.Utils.getTaskSearchList.biz.ext?queryTmplId=todolist">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label"><label><b:message key='hsearch.process-name'/></label></td>
							<td colspan="1"><input class="nui-textbox" name="PROCESSCHNAME:%" labelField="true"></td>
							<td class="form_label"> <label><b:message key='hsearch.task-desc'/></label></td>
							<td colspan="1"><input class="nui-textbox" name="processInstDesc:%" labelField="true" label=""></td>
						</tr>
						<tr>
							<td class="form_label"><label><b:message key='hsearch.start-time-from'/></label></td>
							<td colspan="1"><input id="startTime" class="nui-datepicker" ondrawdate="ondrawdateStart"  name="processStartTime:>" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" format="yyyy-MM-dd" style="width:100%"/></td>
							<td class="form_label"><label><b:message key='hsearch.start-time-to'/></label></td>
							<td colspan="1"><input id="endTime" class="nui-datepicker" ondrawdate="ondrawdateEnd"  name="processStartTime:<" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" format="yyyy-MM-dd"  style="width:100%"/></td>
						</tr>
						<tr>
							<td class="form_label"><label><b:message key='hsearch.apply-user'/></label></td>
							<td colspan="1"><input class="nui-textbox" name="processCreatorName:%" labelField="true" label=""></td>
							<td class="form_label">备注:</td>
							<td colspan="1"><input class="nui-textbox" name="criteria/_expr[8]/remarks" /> <input class="nui-hidden" name="criteria/_expr[8]/_op"
								 value="like"> <input class="nui-hidden" name="criteria/_expr[8]/_likeRule" value="all"></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
	<div class="nui-fit" style="padding: 0px 15px 15px 15px;height:100%;">
		<!-- 待办任务列表 -->
		<div id="taskList"  height="100%" class="nui-datagrid"
			url="com.cgn.components.coframe.taskcenter.TaskManager.getTodoList.biz.ext"
			dataField="worklist.workItems.BPSWorkItemExpand" 
			totalField="worklist.pageCond.count"
			pageIndexField="worklist.pageCond.beginIndex" 
			pageSize="20" sizeList="[20,100,1000]">
		    <div property="columns">
		    	<!-- <div type="indexcolumn" width="10" allowMove="false" allowResize="false" cellCls="mini-grid-headerCell"></div> -->
		    	<!-- <div field="flowchart" width="15" allowMove="false" allowResize="false" ></div> -->
		    	<div field="processInstID" header='<b:message key="task-code"/>' width="50" headerAlign="left" allowSort="true" allowMove="false" visible="false"></div>
		        <div field="processInstDesc" header='<b:message key="task-desc"/>' width="120" headerAlign="left" allowSort="false" renderer="processdescfun"></div>
		        <div field="processCreatorName" header='<b:message key="task-apply-user"/>'  width="30" headerAlign="left" allowSort="true" renderer="showUser"></div>
		        <div field="processStartTime" header='<b:message key="task-apply-time"/>'  width="50" headerAlign="left" allowSort="true" dataType="date" dateFormat="yyyy-MM-dd HH:mm"></div>
		        <div field="processLastUpdateUserName" header='<b:message key="task-dealt-user"/>'width="30" headerAlign="left" allowSort="true" renderer="showUser"></div>
				<div field="processLastUpdate" header='<b:message key="task-dealt-time"/>' width="40" headerAlign="left" allowSort="true"  dataType="date" dateFormat="yyyy-MM-dd HH:mm"></div>
		        <div field="opinions" header='<b:message key="task-dealt-decision"/>' width="40" headerAlign="left" allowSort="false"></div>
		        <div field="flowchart" header='查看流程图' headerAlign="center"  align="center" width="40" allowMove="false" allowResize="false" renderer="showFlowchartAction"></div>
		        <%-- <div header='<b:message key="task-last-dealt"/>' headerAlign="center">
		        <!-- 上步处理 -->
		        	<div property="columns">
				        <div field="processLastUpdateUserName" header='<b:message key="task-dealt-user"/>'width="30" headerAlign="center" allowSort="true" renderer="showUser"></div>
				        <div field="opinions" header='<b:message key="task-dealt-decision"/>' width="" headerAlign="center" allowSort="false"></div>
				        <div field="processLastUpdate" header='<b:message key="task-dealt-time"/>' width="40" headerAlign="center" allowSort="true"  dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
			        </div>
		        </div> --%>
		        
		        <%-- <div field="action" header='<b:message key="detail"/>'  width="20" headerAlign="center" allowMove="false" allowResize="false"></div> --%>
		     <%-- <div field="reassign" header='<b:message key="reassign"/>'  width="20" headerAlign="center" allowMove="false" allowResize="false"></div> --%>
		    </div>
		</div>
	</div>
	
	<jsp:include page="taskListParts.jsp"></jsp:include>
	<div id="info" style="display: none;position:absolute;z-index:10000"></div>
</body>
<script type="text/javascript">
	
	
	window.onload=function(){
		setTimeout(function(){
			var grid = nui.get("taskList"); 
			grid.load();
		},500);
  		
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

	//获取鼠标位置
	var mousePosi = {
			x:null,
			y:null
	}
	document.onmousemove = function (e){
		e = e || window.event;
		mousePosi.x = e.clientX ;
		mousePosi.y = e.clientY;
	}
	
	//申请人和处理人展示
	function showUser(e){
		
		if(e.value==null || e.value==""){
			hideInfo();
			return;
		}
		
		var str = e.value;
		var arr = str.split("]");
		var uname = arr[1];
		var uid = arr[0].replace("[","");		
		
	 	return   '<a href="javascript:void(0);"  class="showtip" data-tipshow=' + str + '>' + uname +'</a>';
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
	
	
	
	//隐藏
	function hideInfo(){
		$("#info").hide();
	}
	
	//显示		
	function showInfo(uname,uid){
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
			success:function(data){
				var tel = data.telNumber==null || data.telNumber=="undefined" ? "":data.telNumber;
				selectHtml += "<td>&nbsp;" + tel + "&nbsp;</td>";
		        selectHtml += "</tr></table>";
		        $("#info").html(selectHtml);
		        $("#info").css({'left':mousePosi.x+5,'top':mousePosi.y+10});
		        $("#info").show();
			 }
		}); 
	}
	//隐藏显示高级查询
/* 	function showquery() {
			var div = $("#form1");
			div.slideToggle(500);
			$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
		} */
		var grid = nui.get("taskList");
		//查询
		function searchs() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			grid.load(json);//grid查询
		}
		
			function reset() {
			$("#cond").val("");
			var form = new nui.Form("#form1");//将普通form转为nui的form
			form.reset();
		}
		
	$("input[readOnly]").keydown(function(e) {
              e.preventDefault();
         });
</script>
</html>