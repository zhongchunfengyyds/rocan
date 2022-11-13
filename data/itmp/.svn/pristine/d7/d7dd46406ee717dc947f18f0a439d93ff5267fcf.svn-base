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
<title><b:message key="todo-all-list-header"/></title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="media/tasklist.css"/>
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
		/* .mini-grid {
		   height: auto !important;
			}
		.mini-grid-rows {
		 	height: auto !important;
		 }
		.mini-grid-viewport {
			height: auto  !important;
		}  */
		.mini-fit{
			height: auto !important;
		}
	</style>
</head>
<body style="background-color:#f1f1f1;overflow: scroll;">
	<!-- 工具条 -->
<div class="bs-docs-section">
<div class="search-box">
    <div class="navbar navbar-default query-form">
        <div class="container-fluid">
            <div class="collapse navbar-collapse">
                <div class="navbar-header">
                    <div class="navbar-brand" style="padding-top:0;padding-bottom:0;">
                        <div class="navbar-form navbar-left">
                            <div class="input-group">
                              <!-- <input id="cond" class="nui-stextboxlist" tmplId="todolist"/> -->
                              <input type="text" id="cond" name="processInstDesc:%" class="form-control"  placeholder="任务描述" tmplId="todolist" url="com.cgn.components.coframe.taskcenter.Utils.getTaskSearchList.biz.ext?queryTmplId=todolist" >
                              <span class="input-group-btn" style="width:auto;">
                                <button class="btn btn-default" type="button" id="query" onclick="btnQuery();" style="height: 34px;"><span class="fa fa-search"></span></button>
                              </span>
                            </div>
                        </div>
                        <span class="adv-search">高级搜索</span>
                    </div>
                </div>
                <!--<ul class="nav navbar-nav ">
                    <li data-text="高级搜索"><a href="#" class="adv-search">高级搜索</a></li>
                </ul>-->
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#" class="dw-toggle ">
                            <span class="fa fa-angle-up fa-angle-down"></span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="search-container folding-menu" style="overflow: hidden;display:none;" id="queryForm"> 
        <div class="row">
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label><b:message key='hsearch.process-name'/></label>
                    <input class="nui-textbox" name="PROCESSCHNAME:%" labelField="true">
                </div>
            </div>
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label><b:message key='hsearch.task-desc'/></label>
                    <input class="nui-textbox" name="processInstDesc:%" labelField="true" label="">
                </div>
            </div>
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label><b:message key='hsearch.apply-user'/></label>
                    <input class="nui-textbox" name="processCreatorName:%" labelField="true" label="">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label><b:message key='hsearch.start-time-from'/></label>
                    <!--<input type="text" class="nui-datepicker" name="processStartTime:>" showClose="true" oncloseclick="this.setValue(null);" showTime="true" timeFormat="H:mm:ss" format="yyyy-MM-dd HH:mm:ss" labelField="true" label="" allowInput="false">-->
					<input id="startTime" class="nui-datepicker" ondrawdate="ondrawdateStart"  name="processStartTime:>" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" dateFormat="yyyy-MM-dd"/>                             
				</div>
            </div>
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    <label><b:message key='hsearch.start-time-to'/></label>
                    <!--<input class="nui-datepicker" name="processStartTime:<" showClose="true" oncloseclick="this.setValue(null);" showTime="true" timeFormat="H:mm:ss" format="yyyy-MM-dd HH:mm:ss" labelField="true" label="" allowInput="false">-->
					<input id="endTime" class="nui-datepicker" ondrawdate="ondrawdateEnd"  name="processStartTime:<" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" dateFormat="yyyy-MM-dd"/>
                </div>
            </div>
            <div class="col-sm-4 form-inline input-control input-width">
                <div class="form-group">
                    
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-sm-12">
                <div class="form-group text-right">
                    <button class="btn btn-default" type="button" onclick="btnQueryDetail()"><span class="fa fa-search"></span>&nbsp;<b:message key="btn-ok"/></button>
                    <button class="btn btn-second" onclick="(new nui.Form('#queryForm')).reset()" type="button"><b:message key="btn-reset"/></button>
                </div>
            </div>
        </div>
    </div>
</div>
</div>	
	<div class="nui-fit" style="padding: 0px 15px 15px 15px;overflow: hidden;">
		<!-- 待办任务列表 -->
		<div id="taskList"  height="auto" class="nui-datagrid"
			url="com.cgn.components.coframe.taskcenter.TaskManager.getTodoAllList.biz.ext"
			dataField="worklist.workItems.BPSWorkItemExpand" 
			totalField="worklist.pageCond.count"
			pageIndexField="worklist.pageCond.beginIndex" 
			pageSize="20" sizeList="[20,100,1000]">
		    <div property="columns">
		    	<!--<div type="indexcolumn" width="10" allowMove="false" allowResize="false" cellCls="mini-grid-headerCell"></div>
		    	<div field="flowchart" width="15" allowMove="false" allowResize="false" ></div>-->
		        <div field="workItemName" header='<b:message key="task-name"/>' width="50" headerAlign="left" allowSort="true" allowMove="false" ></div>
		        <div field="processInstName" header='<b:message key="task-process-name"/>' width="50" headerAlign="left" allowSort="true" allowMove="false" ></div>
		        <div field="activityInstName" header='<b:message key="task-activity-name"/>' width="50" headerAlign="left" allowSort="true" allowMove="false" ></div>
		    	<div field="processInstID" header='<b:message key="task-code"/>' width="50" headerAlign="left" allowSort="true" allowMove="false" visible="false"></div>
		       	
		       	<div field="currentPerson" header='当前处理人' width="50" headerAlign="left" allowSort="true" allowMove="false" renderer="showUser"></div>
		       	
		        <div field="processInstDesc" header='<b:message key="task-desc"/>' width="" headerAlign="center" allowSort="false"renderer="processdescfun"></div>
		        <div field="processCreatorName" header='<b:message key="task-apply-user"/>'  width="30" headerAlign="left" allowSort="false"  renderer="showUser"></div>
		        <div field="createTime" header='<b:message key="task-apply-time"/>'  width="45" headerAlign="left" allowSort="true" dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
		        <div header='<b:message key="task-last-dealt"/>' headerAlign="center">
		        <!-- 上步处理 -->
		        	<div property="columns">
				        <div field="processLastUpdateUserName" header='<b:message key="task-dealt-user"/>'width="40" headerAlign="center"  allowMove="false" allowResize="false" renderer="showUser"></div>
				        <div field="opinions" header='<b:message key="task-dealt-decision"/>' width="30" headerAlign="center" allowSort="false"></div>
				        <div field="processLastUpdate" header='<b:message key="task-dealt-time"/>' width="50" headerAlign="center" allowSort="true"  dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
			        </div>
		        </div>
		        <!--<div field="flowchart" width="30" header='<b:message key="operate-name"/>' headerAlign="center"  allowMove="false" allowResize="false" ></div>-->
		       <!-- <div field="action" header='操作'  width="30" headerAlign="center" allowMove="false" allowResize="false"></div>-->
		        <div field="flowchart" header='查看流程图'  width="40" headerAlign="center" allowMove="false" allowResize="false" renderer="showFlowchartAction"></div>
		        
		     <%--    <div field="action" header='<b:message key="detail"/>'  width="20" headerAlign="center" allowMove="false" allowResize="false"></div>
		     <div field="reassign" header='<b:message key="reassign"/>'  width="20" headerAlign="center" allowMove="false" allowResize="false"></div> --%>
		
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
</html>