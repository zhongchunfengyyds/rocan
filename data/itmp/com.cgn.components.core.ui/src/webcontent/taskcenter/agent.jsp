<!DOCTYPE html>
<%@page import="com.eos.data.datacontext.IUserObject"%>
<%@page import="com.eos.data.datacontext.DataContextManager"%>
<%@page import="com.eos.data.datacontext.IMUODataContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
 
<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-11-23 17:32:28
  - Description: 我的代理
-->
<head>
<title><b:message key="agent.manager"></b:message></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome">
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<%-- <script src="<%= request.getContextPath() %>/common/apply.js"></script> --%>
<%-- <script src="<%= request.getContextPath() %>/common/clip.js"></script> --%>
<%-- <script src="<%= request.getContextPath() %>/common/cuc.min.js"></script> --%>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery.min.js"></script> --%>
<%-- <link href="<%= request.getContextPath() %>/common/layout/css/docs.min.css" rel="stylesheet"> --%>
<%-- <link href="<%= request.getContextPath() %>/common/layout/css/cuc.css" rel="stylesheet"> --%>
<%-- <link href="<%= request.getContextPath() %>/common/layout/css/apply.css" rel="stylesheet"> --%>
<%-- <link href="<%= request.getContextPath() %>/common/layout/css/font-awesome.min.css" rel="stylesheet"> --%>
<link href="<%= request.getContextPath() %>/coframe/taskcenter/media/tasklist.css" rel="stylesheet">
<style type="text/css">
		
	.mini-panel-border {
		border: none;
	}
	
	.mini-panel-header {
		font-weight: bold;
	}
	
	.mini-panel .mini-panel-title {
		margin-left: 18px;
		line-height: 12px;
	}
	
	.mini-panel .mini-tools {
		left: 8px;
	}
	
	.fit {
		margin: 4px; border: 1px solid #aaa;
	}
	
	#form {
		border-collapse: collapse;
		border-spacing: 0;
	}
	
	#form .td {
		border-right: 1px solid #aaa;
		border-bottom: 1px solid #aaa;
		padding: 3px;
		color: #3C3C3C;
	}
	
	#form .header {
		width: 100px;
		background-color: #E6E6FA;
	}
	
	.near li {
		float: left;
		padding-left: 8px;
	}
	.near a, .mini-radiobuttonlist-item-selected a {
		cursor: pointer;
		color: blueviolet;
	}
	.mini-panel-body {
		padding: 0;
	}
	
	.mini-radiobuttonlist-item label {
	   
	    margin:0;
	    position: inherit;
	}
	input[type="radio"] {
	    margin:   0;
	}
		.mini-radiobuttonlist {
		     margin-bottom: 7px; 
		}
		.mini-panel .mini-grid .mini-datagrid{
			    border-width: 0px;
	    		width: 100%;
	    		display: block;
	    		height: auto;
		}
	
	.has-error{
		position:relative;
	}
	.form-control-feedback {
	    position: absolute;
	    top: 0;
	    right: 17%;
	    z-index: 2;
	    display: block;
	    width: 34px;
	    height: 34px;
	    line-height: 34px;
	    text-align: center;
	    pointer-events: none;
	}
	
	/* 10.19*/
	#form tr td:nth-child(1){
		background-color: #fff;
		
	}
	#form tr .td{
		border:none;	
	}
	
	.form-box .ass-box:nth-child(2)  .panel-body  .mini-panel:nth-child(1)  .mini-panel-header{
	 display:none;
	}
	.form-box .ass-box:nth-child(3)  .panel-body  .mini-panel:nth-child(1)  .mini-panel-header{
	 display:none;
	}
	.form-box .ass-box:nth-child(4)  .panel-body  .mini-panel:nth-child(1)  .mini-panel-header{
	 display:none;
	}
	.nav-tabs {
	    margin-left: 0;
	}
	.mini-radiobuttonlist  .mini-radiobuttonlist-item{
		min-width:73px\9;
	}
	.ass-box{
		display: block;
    	height: auto;
	}
	td{
		background-color: #fff;
	}
</style>
<!-- 错误提示布局CSS -->
</head>
<body style="background-color:#f1f1f1;overflow: hidden;">
		<div class="form-first" style="padding-top: 15px; padding-left: 15px; background-color:#f1f1f1;" >
    		<div class="form-box">
        		<ul class="nav nav-tabs">
          			<li role="presentation" class="active"><a href="javascript:;" id="first-page"><b:message key="agent.title.create"/></td></a></li>
          			<li role="presentation" class=""><a href="javascript:;"><b:message key="agent.effect"/></a></li>
          			<li role="presentation" class=""><a href="javascript:;"><b:message key="agent.failed"/></a></li>
        		</ul>
        	<!-- 第一选项卡 -->
        	<div class="ass-box" style="display: block;">
            	<!-- <div class="nui-fit fit">-->
            	<div class="panel panel-default">
            		<div class="panel-body">
            		
						<table width="100%" id="form">
							<tr>
								<td class="td header"><b:message key="agent.timeSlot"/><span class="star">*</span></td>
								<td class="td">
									<input id="startTime" name="startTime" class="nui-datepicker" value="" 
										onvaluechanged="onDayesChanged" value="defaultStartDate()" 
										required="true" minDate="minDate()" maxDate="maxStartDate()" allowInput="false" ondrawdate="onDrawDate" showClose="true"  oncloseclick="this.setValue(null);"><b:message key="agent.timeSlot.to"/><span class="star">*</span>
									<input id="endTime" name="endTime" class="nui-datepicker" value="" 
										onvaluechanged="onDayesChanged" minDate="minEndDate()" 
										maxDate="maxDate()" required="true" allowInput="false" ondrawdate="onDrawDate" showClose="true"  oncloseclick="this.setValue(null);">
									<%-- <b:message key="agent.timeSlot.total"/> --%>
									<div style="display:none"></div><input id="daies" class="nui-spinner" onvaluechanged="onDayesChanged" 
										minValue="1" maxValue="3650" width="60" value="0" required="true"></div>
										<%-- <b:message key="agent.timeSlot.unit"/> --%>
								</td>
							</tr>
							<tr>
								<td class="td header"><b:message key="agent.procurator"/><span class="star">*</span></td>
								<td class="td">
									<b:message key="agent.procurator.inputTip"/>
									<br>
									<!--<div class="nui-autocomplete" width="85%" required="true"  name="agentTo" id="agentTo"
										url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext?topCount=10"
										dataField="list" valueField="empcodename" textField="empcodename" searchField="keyword" multiSelect="false">
                                </div>-->
                            	<div class="has-error">
	                                <div class="nui-autocomplete aaa"  onblur="testOnfocus(this)"  width="85%" required="true"  name="agentTo" id="agentTo"
											url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext?topCount=10"
											dataField="list" valueField="empcodename" textField="empcodename" searchField="keyword" multiSelect="false">
											
	                                </div>
	                                <div class="form-control-feedback feedback-help-text statusValid" style="display:none">
	                                    	<span class="fa fa-times "></span> <span class="sr-only">(error)</span> 
	                                    	您输入有误！
                                	</div>
                                </div>
									<br>
									<div>
										<label style="float: left;"><b:message key="agent.nearFuture"/>:</label><ul id="near" class="near" style="float: left;"></ul>
									</div>
								</td>
							</tr>
							<tr>
								<td class="td header"><b:message key="process-name"/><span class="star">*</span></td>
								<td class="td">
									<div class="nui-radiobuttonlist" id="agentType" name="agentType" 
										data="[{id:'ALL',text:'<b:message key='agent.agentType.ALL'/>'},{id:'PART',text:'<a><b:message key='agent.agentType.PART'/></a>'}]" value="ALL" 
										onvaluechanged="onAgentTypeChanged"></div>
									<input class="nui-hidden" id="flows" name="flows">
									<input class="nui-hidden" name="agentID">
									<input class="nui-hidden" id="tenantId" name="tenantId"/>
								</td>
							</tr>
							<tr>
								<td class="td header"><b:message key="agent.explain"/><span class="star">*</span></td>
								<td class="td">
									<div class="has-error">
										<div id="textAreaReason" class="nui-textarea aaa" onblur="testOnfocus(this)" name="agentReason" value="代理全部流程" required="true" width="85%"></div>
										<div class="form-control-feedback feedback-help-text statusValid" style="display:none">
	                                    	<span class="fa fa-times "></span> <span class="sr-only">(error)</span> 
	                                    	您输入有误！
                                	</div>
                                </div>
								</td>
							</tr>
						</table>
			
					<div id="pop" class="nui-window" showHeader="false" showFooter="true" showModal="true" 
							borderStyle="border:1px solid rgb(146, 172, 228)" width="340" height="320">
						<div class="nui-fit" >
							<ul class="nui-tree" id="catalogTree" showCheckBox="true" width="100%" height="100%"
								dataField="list" idField="id" textField="text" parentField="pid" resultAsTree="false">
							</ul>
						</div>
						<div property="footer" class="nui-toolbar" style="border: none;background: none;float: right;">
							<a class="btn btn-default" onclick="onSelectedFlows()"><b:message key="btn-ok"/></a>
							<a class="btn btn-second btn-default" onclick="onCancelSelectFlows()"><b:message key="btn-cancel"/></a>
						</div>
					</div>
						
					<div class="toolbar bg-info" style="border: none;background: none;float: right; margin-top: 5px;margin-bottom: 5px;margin-right: 30px;">
						<button type="button" class="btn btn-default" onclick="onSave()" style="margin-right: 10px;"></span><b:message key="btn-save"/></button>
						<a id = "edit_btn" class="btn btn-second btn-default" onclick="showEditPanel(null)"></span><b:message key="btn-reset"/></a>
					</div>
			</div>
			 </div>
        </div>
        <!-- 第2选项卡 -->
        <div class="ass-box" style="display: none;">
        	<div class="nui-fit" style="padding: 15px 0px 15px 15px; height: 500px;">
        		<div class="navbar mini-toolbar" style="border:0px;">
					<div style="margin:8px 0px 8px 12px;">
					    <button type="button"  class="btn btn-default" onclick="showEditPanel(nui.get('#usefulGrid').getSelected())" disabled="disabled" id="btnModifyAgent">
					    	<i class="fa fa-edit"></i>
					    	<b:message key="agent.btn.modify"/>
					    </button>
						<button type="button" class="btn btn-default" onclick="deleteAgents(nui.get('#usefulGrid').getSelecteds())" disabled="disabled" id="btnDelAgent">
							<i class="fa fa-trash-o"></i>
							<b:message key="agent.btn.delete"/>
						</button>
					</div>           
				</div>
				<div  class="nui-datagrid" id="usefulGrid" showPager="false" height="auto" dataField="list" allowSortColumn="false" multiSelect="true"
				url="com.cgn.components.coframe.taskcenter.AgentManager.queryAgents.biz.ext?useful=Y" 
				ondrawcell="onDrawcell" onselectionchanged="onUsefulSelectionChanged">
			    <div property="columns">
			    	<div type="checkcolumn" header='' width="50" headerAlign="center" align="center"></div>
			    	
			        <div field="agentFrom" width="" headerAlign="left" align="left" allowSort="true"><b:message key="agent.clientele"/></div>
			        <div field="agentTo" width="" headerAlign="left" align="left" allowSort="true"><b:message key="agent.procurator"/></div>
			        <div field="agentToType" width="" headerAlign="left" align="left" allowSort="true"><b:message key="agent.procurator.type"/></div>
			        <div field="agentType" width="" headerAlign="left" align="left" allowSort="true"><b:message key="agent.mode"/></div>
			        <div field="startTime" width="" headerAlign="left" align="left" allowSort="true" dataType="date" dateFormat="yyyy-MM-dd"><b:message key="agent.timeSlot.start"/></div>
			        <div field="endTime" width="" headerAlign="left" align="left" allowSort="true" dataType="date" dateFormat="yyyy-MM-dd"><b:message key="agent.timeSlot.end"/></div>
			    </div>
			</div>
        	</div>
        </div>
        
        <!-- 第3选项卡 -->
        <div class="ass-box" style="display: none;">
        	<div class="nui-fit" style="padding: 15px 0px 15px 15px; height: 500px;">
				<div class="navbar mini-toolbar" style="border:0px;">
					<div style="margin:8px 0px 8px 12px;">
					    <button type="button"  class="btn btn-default" onclick="showEditPanel(nui.get('#unusefulGrid').getSelected())" disabled="disabled" id="btnModifyAgent2">
					    	<i class="fa fa-edit"></i>
					    	<b:message key="agent.btn.modify"/>
					    </button>
						<button type="button"  class="btn btn-default" onclick="deleteAgents(nui.get('#unusefulGrid').getSelecteds())" disabled="disabled" id="btnDelAgent2">
							<i class="fa fa-trash-o"></i>
							<b:message key="agent.btn.delete"/>
						</button>
					</div>           
				</div>
        	<!-- 第3个选项卡显示的表格 -->
			<div  class="nui-datagrid" id="unusefulGrid" showPager="false" height="auto" dataField="list"  pageSize="20" sizeList="[20,100,1000]"showPageInfo="true"
				ondrawcell="onDrawcell" onselectionchanged="onUnusefulSelectionChanged" allowSortColumn="false" multiSelect="true"
				url="com.cgn.components.coframe.taskcenter.AgentManager.queryAgents.biz.ext?useful=N">
			    <div property="columns">
			    	<div type="checkcolumn" header='' width="50" headerAlign="center" align="center"></div>
			    	
			        <div field="agentFrom" width="" headerAlign="left" align="left" allowSort="true"><b:message key="agent.clientele"/></div>
			        <div field="agentTo" width="" headerAlign="left" align="left" allowSort="true"><b:message key="agent.procurator"/></div>
			        <div field="agentToType" width="" headerAlign="left" align="left" allowSort="true"><b:message key="agent.procurator.type"/></div>
			        <div field="agentType" width="" headerAlign="left" align="left" allowSort="true"><b:message key="agent.mode"/></div>
			        <div field="startTime" width="" headerAlign="left" align="left" allowSort="true" dataType="date" dateFormat="yyyy-MM-dd"><b:message key="agent.timeSlot.start"/></div>
			        <div field="endTime" width="" headerAlign="left" align="left" allowSort="true" dataType="date" dateFormat="yyyy-MM-dd"><b:message key="agent.timeSlot.end"/></div>
			    </div>
			</div>
		</div>
    </div> 
    </div> 
</div>

<script>
//tab 选项卡切换
		$(".form-box .nav-tabs > li ").bind("click",function(e){
			var index = $(this).index()
			$(this).addClass("active").siblings().removeClass("active")
			$(".ass-box").eq(index).show().siblings(".ass-box").hide()
		})
</script>
<script type="text/javascript">
		"use strict";
		nui.parse();
		//input框错误提示
		function testOnfocus(obj){
			var statusValid = $(obj.el).parents(".has-error").find(".statusValid");
			var content = obj.value;
			if(content=='' || content == null){
				statusValid.show();
			}else{
				statusValid.hide();
			}
			 
		}
		
		
		var _DDD = 24*60*60*1000;
		function addDays(date, days) {
			return new Date(date.getTime() + _DDD * days);
		}
		
		function today() {
			return nui.parseDate(nui.formatDate(new Date(), "yyyy-MM-dd"), true);
		}
		
		var _displays = {
			agentToType: [{id:'person', text:'个人'}],
			agentType: [{id:'ALL',text:'<b:message key='agent.agentType.ALL'/>'},{id:'PART',text:'<a><b:message key='agent.agentType.PART'/></a>'}]//--------------P196577
		};
		function onDrawcell(e) {
			var field = e.field, value = e.value, dataType = e.column.dataType;
			var text = null;
			if(field == "image") {
				if("out" == e.record.direction) {
					e.cellHtml = "<img src='<%=request.getContextPath()%>/common/nui/themes/icons/upgrade.gif'/>";
				} else {
					e.cellHtml = "<img src='<%=request.getContextPath()%>/common/nui/themes/icons/downgrade.gif'/>";
				}
			} else if(field == "agentFrom") {
				e.cellHtml = showUser("[" + value + "]" + e.record.agentFromName);
			} else if(field == "agentTo") {
				e.cellHtml = showUser("[" + value + "]" + e.record.agentToName);
			} else if (dataType == "date" && value) {
			// do nothing
			} else if(field == "agentType"&&e.record.agentType == "PART"){
					e.cellHtml = showAgentPart("[" + value + "]" + '部分流程::'+e.record.agentReason);//e.record.agentReason
			}else {
				var array = _displays[field];
				if(array) {
					for (var i = 0, l = array.length; i < l; i++) {
		                var t = array[i];
		                if (t.id == value) text = t.text;
		            }
	            }
			}
			if(text) {
				e.cellHtml =text;
			}
		}
		var grid_1 = nui.get("#usefulGrid");
		grid_1.load();
		var grid_2 = nui.get("#unusefulGrid");
		grid_2.load();
		//第一个表的点击监听器
		function onUsefulSelectionChanged(e) {
			//var enabled = ("out" == e.selected.direction);
			var rows = grid_1.getSelecteds();
			if(rows){
			if(rows.length == 1){
			$("#btnModifyAgent").prop("disabled","");
			$("#btnDelAgent").prop("disabled","");
				}else if(rows.length > 1){
					//修改禁止
					$("#btnModifyAgent").prop("disabled","disabled");
					//删除恢复
					$("#btnDelAgent").prop("disabled","");
				}else{
					$("#btnModifyAgent").prop("disabled","disabled");
					$("#btnDelAgent").prop("disabled","disabled");
				}
			}else{
				//两个都禁止
				$("#btnModifyAgent").prop("disabled","disabled");
				$("#btnDelAgent").prop("disabled","disabled");
			}
			//var btnModifyAgent = $("#btnModifyAgent");
 			//btnModifyAgent.attr("disabled", false);
 			//var btnDelAgent = $("#btnDelAgent");
 			//btnDelAgent.attr("disabled", false);
			//nui.get("#btnModifyAgent").setEnabled(enabled);
			//nui.get("#btnDelAgent").setEnabled(enabled);
		}
		//第二个表的点击监听器
		function onUnusefulSelectionChanged(e) {
			//var enabled = ("out" == e.selected.direction);
			var rows = grid_2.getSelecteds();
			if(rows){
			if(rows.length == 1){
			$("#btnModifyAgent2").prop("disabled","");
			$("#btnDelAgent2").prop("disabled","");
				}else if(rows.length > 1){
					//修改禁止
					$("#btnModifyAgent2").prop("disabled","disabled");
					//删除恢复
					$("#btnDelAgent2").prop("disabled","");
				}else{
					$("#btnModifyAgent2").prop("disabled","disabled");
					$("#btnDelAgent2").prop("disabled","disabled");
				}
			}else{
				//两个都禁止
				$("#btnModifyAgent2").prop("disabled","disabled");
				$("#btnDelAgent2").prop("disabled","disabled");
			}

			//var btnModifyAgent2 = $("#btnModifyAgent2");
 			//btnModifyAgent2.attr("disabled", false);
 			//var btnDelAgent2 = $("#btnDelAgent2");
 			//btnDelAgent2.attr("disabled", false);
			//nui.get("#btnModifyAgent2").setEnabled(enabled);
			//nui.get("#btnDelAgent2").setEnabled(enabled);
		}
		
		nui.parse();
		//nui.get("#usefulGrid").doLayout();
		//nui.get("#unusefulGrid").doLayout();
		
		
		function loadAgents() {
			nui.get("#usefulGrid").load();
			nui.get("#unusefulGrid").load();
			var btnModifyAgent = $("#btnModifyAgent");
 			btnModifyAgent.attr("disabled", true);
 			var btnDelAgent = $("#btnDelAgent");
 			btnDelAgent.attr("disabled", true);
 			
			//nui.get("#btnModifyAgent").setEnabled(false);
			//nui.get("#btnDelAgent").setEnabled(false);
			var btnModifyAgent2 = $("#btnModifyAgent2");
 			btnModifyAgent2.attr("disabled", true);
 			var btnDelAgent2 = $("#btnDelAgent2");
 			btnDelAgent2.attr("disabled", true);
 			
			//nui.get("#btnModifyAgent2").setEnabled(false);
			//nui.get("#btnDelAgent2").setEnabled(false);
		}
		loadAgents();
		
		function defaultStartDate() {
			return addDays(today(), 1);
		}
		
		function minDate() {
			return today();
		}
		
		function maxDate() {
			return addDays(today(), nui.get("#daies").getMaxValue());
		}
		
		function minEndDate() {
			var startTime = nui.get("#startTime");
			return startTime.getValue() ? nui.parseDate(startTime.getValue(), true) : minDate();
		}
		
		function maxStartDate() {
			var endTime = nui.get("#endTime");
			return endTime.getValue() ? nui.parseDate(endTime.getValue(), true) : maxDate();
		}
		
		//var agentInfoPanel = nui.get('#agentInfoPanel');
		function showEditPanel(data) {
			//agentInfoPanel.expand();
			$("#first-page ").click();//模拟点击事件
			var agentType = nui.get("#agentType");
			if(data) {
				var data = nui.clone(data);
				data.agentTo = "[" + data.agentTo + "]" + data.agentToName;
				getForm().setData(data);
				nui.get("#endTime").doValueChanged();
				nui.get("#agentTo").setText(nui.get("#agentTo").getValue());
				agentType.setEnabled(false);
				//agentInfoPanel.setTitle("<b:message key='agent.title.modify'/>");
			} else {
				agentType.setEnabled(true);
// 				agentInfoPanel.setTitle("<b:message key='agent.title.create'/>");
				getForm().reset();
				nui.get("#startTime").setMaxDate(maxStartDate());
				nui.get("#startTime").setMinDate(minDate());
				nui.get("#endTime").setMaxDate(maxDate());
				nui.get("#endTime").setMinDate(minEndDate());
			}
			
			updateTop3Procurators();
		}
		
		function updateTop3Procurators() {
			$.ajax({
				url: "com.cgn.components.coframe.taskcenter.AgentManager.getTop3Procurators.biz.ext",
				dataType: "json",
				success: function(data) {
					var $near = $("#near");
					$near.empty();
					if(data.list) {
						$.each(data.list, function(index, p) {
							var txt = "[" + p.userId + "]" + p.userRealName;
							var $a = $("<a>" + txt + "</li>").bind("click", function(e) {
								var agentTo = nui.get("#agentTo");
								var $s = $(e.srcElement);
								agentTo.setValue($s.text());
								agentTo.setText($s.text());
								agentTo.validate();
							});
							$near.append($("<li></li>").append($a));
						});
					} else {
						$near.text("<无>");
					}
				}
			});
		}
		updateTop3Procurators();
		
		function deleteAgents(list) {
			nui.confirm("<b:message key='tip-delete'/>", "<b:message key='agent.tip.delete.content'/>", function(action) {
				if (action == "ok") {
					var l = [];
					$.each(list, function(index, item) {
						l.push({agentID: item.agentID, tenantId: item.tenantId});
					});
					nui.ajax({
						url: "com.cgn.components.coframe.taskcenter.AgentManager.deleteAgents.biz.ext",
						type: "POST",
						data: {agents: l},
						success: function(data) {
							if(data.count) {
								nui.showTips({
									content: "<b:message key='tip-delete-success'/>",
									state: "success",
									x: "center",
									y: "top"
								});
								loadAgents();
							} else {
								nui.showTips({
									content: "<b:message key='tip-delete-fail'/>",
									state: "warning",
									x: "center",
									y: "top"
								});
							}
						}
					});
				}
			});
		}
		
		function onSave(e) {
			var form = getForm();
			if(form.validate()) {
				form.mask();
				var data = form.getData();
				if(Object.prototype.toString.call(data.endTime)=='[object Date]'){
					data.endTime=nui.formatDate(data.endTime,"yyyy-MM-dd HH:mm:ss");
				}
				if(Object.prototype.toString.call(data.startTime)=='[object Date]'){
					data.startTime=nui.formatDate(data.startTime,"yyyy-MM-dd HH:mm:ss");
				}
				data.endTime = data.endTime.replace("00:00:00", "23:59:59");
				nui.ajax({
					url: "com.cgn.components.coframe.taskcenter.AgentManager.saveAgent.biz.ext",
					type: "POST",
					contentType: "text/json",
					data: nui.encode(data),
					success: function(data) {
						getForm().unmask();
						if(data.errorMsg) {
							nui.showTips({
								content: data.errorMsg,
								state: "warning",
								x: "center",
								y: "top"
							});
						} else {
							//showEditPanel(null);
							loadAgents();
							nui.showTips({
								content: "保存成功",
								state: "success",
								x: "center",
								y: "top"
							});
						}
					}
				});
			}
		}
		
		var _form = null;
		function getForm() {
			if(!_form) {
				_form = new nui.Form("#form");
			}
			return _form;
		}
		
		function onDayesChanged(e) {
			var startTime = nui.get("#startTime");
			var endTime = nui.get("#endTime");
			var daies = nui.get("#daies");
			function getTime(c) {
				if(c.getValue()) {
					return nui.parseDate(c.getValue(), true);
				}
				return NaN;
			}
			function updateDaies() {
				daies.setValue(((getTime(endTime) - getTime(startTime)) / _DDD) + 1);
				daies.validate();
			}
			function updateEndDate() {
				endTime.setValue(addDays(getTime(startTime), parseInt(daies.getValue() - 1)));
				endTime.validate();
			}
			function updateStartDate() {
				startTime.setValue(addDays(getTime(endTime), -1 * parseInt(daies.getValue()) + 1));
				startTime.validate();
			}
			switch(e.source) {
				case startTime: 
					if(endTime.getValue()) {
						updateDaies();
					} else {
						updateEndDate();
					}
					endTime.setMinDate(minEndDate());
					endTime.validate();
				break;
				case endTime:
					if(startTime.getValue()) {
						updateDaies();
					} else {
						updateStartDate();
					}
					startTime.setMaxDate(maxStartDate());
					startTime.validate();
				break;
				case daies:
					if(startTime.getValue()) {
						updateEndDate();
					} else if(endTime.getValue()) {
						updateStartDate();
					}
				break;
			}
		}
		
		function showPop(e, cids) {
			var catalogTree = nui.get("#catalogTree");
			if(!catalogTree.url) {
				catalogTree.set({url: "com.cgn.components.coframe.taskcenter.BusinessCatalog.getCatalogTree2.biz.ext"});
			}
			var tree = nui.get("#catalogTree");
			tree.uncheckAllNodes();
			tree.selectNode(null);
			if(cids) {
				tree.checkNodes(cids.split(","));
			}
			nui.get("#pop").showAtEl(e, {xAlign: "left", yAlign: "below"});
		}
		function hidePop() {
			nui.get("#pop").hide();
		}
		function onAgentTypeChanged(e) {
			if(e.value == "PART") {
				showPop($(e.source.getEl()).find(".mini-radiobuttonlist-item-selected")[0], null);
			} else if(e.value == "ALL") {
				nui.get("#flows").setValue(null);
				nui.get("#textAreaReason").setValue();//清理原内容
				nui.get("#textAreaReason").setValue("代理全部流程");
			}
		}
		(function initPart() {
			$(nui.get("#agentType").getEl()).find(".mini-radiobuttonlist-item a").bind("click", function(e) {
				if($("#flows").val()) {
					showPop($(e.srcElement).parent().parent()[0], $("#flows").val());
				};
			});
		})();
		
		function onCancelSelectFlows(e) {
			hidePop();
			if(!$("#flows").val()){
				nui.get("#textAreaReason").setValue();//清理原内容
				nui.get("#textAreaReason").setValue("代理全部流程");
				nui.get("#agentType").setValue('ALL');
			}
		}
		
		function onSelectedFlows(e) {
			var tree = nui.get("#catalogTree");
			var flows = tree.getValue(false);
			//alert(nui.encode(tree.getCheckedNodes(false)));
			if(!flows) {
				return;
			}
			var tenantId = "";
			var text = "";
			$.each(tree.getCheckedNodes(false), function(index, node) {
				tenantId = tenantId + "," + node.tenantId;
				if(text == ""){
					text = "代理的流程有:" + node.text;
				}else{
					text = text + "," + node.text;
				}
			});
			nui.get("#textAreaReason").setValue();//清理原内容
			nui.get("#textAreaReason").setValue(text);
			//alert(text);
			tenantId = tenantId.substring(1);
			nui.get("#tenantId").setValue(tenantId);
			nui.get("#flows").setValue(flows);
			hidePop();
		}
		
		function showUser(value){
		
			if(value==null || value==""){
				hideInfo();
				return;
			}
			
			var str = value;
			var arr = str.split("]");
			var uname = arr[1];
			var uid = arr[0].replace("[","");
			
		 	return   '<a href="javascript:void(0));"  class="showtip" data-tipshow=' + str + '>' + uname +'</a>';
			//return   '<a href="javascript:void(0);" onmouseout="javascript:hideInfo();" onmouseover="javascript:showInfo(' + "'" + uname + "','"+ uid + "'" + ');">' + uname +'</a>';
	 	}
	 	function showAgentPart(value){
		
			if(value==null || value==""){
				hideInfo();
				return;
			}
			
			var str = value;
			var arr = str.split("]");
			var unameAndAgentReason = arr[1];
			var uname = unameAndAgentReason.split("::")[0];
			var AgentReason = unameAndAgentReason.split("::")[1]
			var uid = arr[0].replace("[","");
			//alert(AgentReason);
		 	return   '<a href="javascript:void(0));"  class="showtipAngentPart" data-tipshow=' + AgentReason + '>' + uname +'</a>';
			//return   '<a href="javascript:void(0);" onmouseout="javascript:hideInfo();" onmouseover="javascript:showInfo(' + "'" + uname + "','"+ uid + "'" + ');">' + uname +'</a>';
	 	}
	 	//用于创建表格弹出框，包括了姓名，工号，电话
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
	    //用于创建表格弹出框，包括流程详情
	    var tip1 = new nui.ToolTip();
	 	tip1.set({
	        target: document,
	        selector: '.showtipAngentPart',
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
				//alert(str);
	            if (str) {
	                this.showLoading();
	                
	                var selectHtml = "<table class='bordered' ><thead><tr><th>部分流程</th></tr></thead>";
					//var selectHtml = "<table class='bordered' ><thead><tr><th>姓名</th><th>工号</th></tr></thead>";
			        selectHtml += "<tr>";
					selectHtml += "<td>&nbsp;" + str + "&nbsp;</td>";
	                tip1.setContent(selectHtml);
	            }
	        }
	    });
	    //表单验证
	    
	    
	    
	     function onDrawDate(e) {
            var date = e.date;
            var d = new Date();

            if (date.getTime() < d.getTime()) {
                e.allowSelect = false;
            }
        }
	</script>
</body>
</html>