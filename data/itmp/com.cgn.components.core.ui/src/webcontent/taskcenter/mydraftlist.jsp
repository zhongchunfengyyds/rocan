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
<title><b:message key="my-draft-list"/></title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="media/tasklist.css"/>
    <script type="text/javascript" src="media/tasklist1.js"></script>
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
	<style type="text/css">
		/*高度自适应*/
		/* .mini-grid {
		 	height: auto !important;
		}
		.mini-grid-rows {
		 	height: auto !important;
		 }
		.mini-grid-viewport {
			height: auto  !important;
		}  */
		/*高度自适应*/
		.mini-buttonedit-up, .mini-buttonedit-down {
		    overflow: hidden;
		    height: 50%;
		    display: block;
		    cursor: pointer;
		    z-index: 1;
		}
		.mini-buttonedit-up span {
	    	background: url(media/images/up.gif) no-repeat 50% 2px !important;
	    }
		.mini-buttonedit-down span {
		    background: url(media/images/down.gif) no-repeat 50% 2px !important;
		}
		.form-out {
		    padding: 15px;
		    background-color: #fff;
		}
/* 		.btn{padding: 1px 10px;font-size: 12px;line-height: 2;margin-bottom: 5px;} */
		#table1 {
		    border-top: 1px solid #bbbbbb !important;
		}
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
							<td colspan="1"><input class="form-control nui-textbox" name="PROCESSCHNAME:%" labelField="true"></td>
							<td class="form_label"><label><b:message key='hsearch.task-desc'/></label></td>
							<td colspan="1"><input class="nui-textbox" name="processInstDesc:%" labelField="true" label=""></td>
						</tr>
						<tr>
							<td class="form_label"><label><b:message key='hsearch.start-time-from'/></label></td>
							<td colspan="1"><input id="startTime" class="nui-datepicker" ondrawdate="ondrawdateStart"  name="processStartTime:>" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" dateFormat="yyyy-MM-dd" style="width:100%"/></td>
							<td class="form_label"><label><b:message key='hsearch.start-time-to'/></label></td>
							<td colspan="1"><input id="endTime" class="nui-datepicker" ondrawdate="ondrawdateEnd"  name="processStartTime:<" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" dateFormat="yyyy-MM-dd" style="width:100%" /></td>
						</tr>
						<tr>
							<td class="form_label"><label><b:message key='hsearch.apply-user'/></label></td>
							<td colspan="3"><input class="nui-textbox" name="processCreatorName:%" labelField="true" label=""></td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
</div>

	<div class="nui-fit" style="padding: 15px;padding-top: 2px;height:80%;overflow: visible;">
		<!-- 待办任务列表 -->
		<div id="taskList"  class="nui-datagrid" width="100%" height="100%" 
			url="com.cgn.components.coframe.taskcenter.TaskManager.getDraftList.biz.ext"
			dataField="worklist.workItems.BPSWorkItemExpand"
			totalField="worklist.pageCond.count"
			pageIndexField="worklist.pageCond.beginIndex" 
			pageSize="20" sizeList="[20,100,1000]">
		    <div property="columns">
		    	<!--<div type="indexcolumn" headerAlign="left" header='序号' width="10" allowMove="false" allowResize="false" cellCls="mini-grid-headerCell"></div>-->
		    	<div field="processInstDesc" header='<b:message key="task-desc"/>' width="" headerAlign="left" allowSort="false"></div>
		    	<div field="processInstID" header='<b:message key="task-code"/>' width="50" headerAlign="left" allowSort="true" allowMove="false" visible="false"></div>
		    	<div field="workItemID" defaultValue="0" allowSort="true" allowMove="false" visible="false"></div>
		        <div field="processCreatorName" header='<b:message key="task-apply-user"/>'  width="30" headerAlign="left" allowSort="true" visible="false"></div>
		        <div field="processStartTime" header='<b:message key="task-apply-time"/>'  width="40" headerAlign="left" allowSort="true" dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
		    	<div field="flowchart" headerAlign="left" header='查看流程图' width="15" allowMove="false" allowResize="false" renderer="showFlowchartAction"></div>
		        <div field="action" header='操作'  width="20" headerAlign="center" allowMove="false" allowResize="false"></div>
		        <div field="remove" header='删除'  width="20" headerAlign="center" allowMove="false" allowResize="false"></div>
		    </div>
		</div>
	</div>
	
	<jsp:include page="taskListParts.jsp"></jsp:include>
	<div id="info" style="display: none;position:absolute;z-index:10000"></div>
</body>
<script type="text/javascript">

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

</script>
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
			grid.load(json);//grid查询
		}
		
			function reset() {
			$("#cond").val("");
			var form = new nui.Form("#form1");//将普通form转为nui的form
			form.reset();
		}	
		
    </script>
</html>