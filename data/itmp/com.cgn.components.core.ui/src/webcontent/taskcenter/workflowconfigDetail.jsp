<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>

<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-09-05 16:36:51
  - Description: 流程配置
-->
<head>
<title>流程配置</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome">

<link rel="stylesheet" type="text/css" href="media/tasklist.css"/>


<link rel="stylesheet" href="<%=request.getContextPath()%>/coframe/taskcenter/themes/css/cuc.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/coframe/taskcenter/themes/css/apply.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/coframe/taskcenter/themes/css/font-awesome.min.css" />
<script src="<%=request.getContextPath()%>/coframe/taskcenter/themes/css/jquery.min.js"></script>

<style type="text/css">
*{
			margin:0;
			padding:0;
			box-sizing:border-box;
		}
		.modal-backdrop.in{
			opacity:0.9;
		}
		.modal-backdrop{
			background-color:#fff;
		}
		.fa-plus{
			cursor:pointer;
		}
		.form-box{
		    border:0px solid red;
		}
		.nav-tabs{
			margin-left:15px;
		}
		.form-demo-nei{
			padding:10px 60px 50px;
			overflow:auto;
		}
		.datagrid-set{
			padding:15px;
			overflow:auto;
		}
		.lt-input{
			float:left;
			width:50%;
			padding-right:20px;
			padding-top:3px;
		}
		.rt-input{
			float:right;
			width:50%;
			padding-left:20px;
			padding-top:3px;
		}
		
		.form-box .form-group{width:100%;}
		.form-add{margin-bottom:25px ;}
		.form-add-btn{
			background:#e5f0f7;
			color:#0067ac;
			border:1px solid #E8E8E8;
			padding:3px 8px;
			margin-left:5px;
			position:relative;
		}
		.form-add-btn .fa-minus-circle{
			position:absolute;
			right:0;
			top:0;
			color:#EC6C00;
			cursor: pointer;
			display:none;
		}
		.form-add .fa-plus{margin-left:5px;color:#036BAD;}
		.form-submit{
			margin-left:80px;
		}
		.star{
			font-size:12px;
			color:#E94848;
		}
		.form-demo-nei .form-group,.form-add{
			/*padding-left:75px;*/
			position:relative;
		}
		.form-demo-nei .form-group label,.form-add-tit{
			position:absolute;
			left:0;
			top:7px;
		}
		/* 提交成功*/
		.succ{
			display:none;
			position: fixed;
			top:0;
			left:0;
			right:0;
			bottom:0;
			z-index: 1050;
		}
		.submit-success{
			position:absolute;
			top:50%;
			left:50%;
			width:200px;
			padding:15px;
			margin-left:-100px;
			margin-top:-115px;
			z-index: 1050;
		}	
		.sub-img{
			text-align:center;
		}
		.sub-img>img{
			max-width: 100%;display:inline-block;
		}
		.submit-success .succ-text,.submit-success .small-succ{
			text-align:center;
			padding:6px;
			margin:0;
		}
		.submit-success .succ-text{
			font-size: 18px;
			color:#000;
		}
		.submit-success .small-succ{
			color:#666;
			font-size:14px;
		}
		/*  进度   */
		.schedule{
			margin-bottom:15px;
			text-align:center;
			overflow:hidden;
		}
		.schedule .schedule-inline{
			display:inline-block;
		}
		.schedule-box{
			float:left;
			vertical-align: middle;
		}
		.schedule-box .circle,.schedule-box .text,.schedule-box .border{
			float:left;
		}
		.schedule-box .text,.schedule-box .border{
			margin-left:7px;
		}
		.schedule-box .circle{
			display:inline-block;
			width:25px;
			height:25px;
			line-height:25px;
			color:#666;
			text-align:center;
			border-radius:50%;
			border:1px solid #666;
			font-size:12px;
		}
		.schedule-box .text{
			color:#999;
			line-height:25px;
			margin-top:-1px;
		}
		.schedule-box .border{
			display: inline-block;
			width:80px;
			height:1px;
			margin-top:12px;
			border-top:1px solid #999;
			background:#999;
		}
		.schedule-box.item .circle{
			color:#004a86;
			border-color:#004a86;
		}
		.schedule-box.item .border{
			border-top-color:#004a86;
			background-color:#004a86;
		}
		.schedule-box.item .text{
			color:#004a86;
		}
		.schedule-box + .schedule-box{
			margin-left:7px;
		}
		.schedule-box.active .circle{
			background-color:#004a86;
			border-color:#004a86;
			color:#fff;
		}
		.schedule-box.active-overtime .circle{
			background-color:#e94848;
			color:#fff;
			border-color:#e94848;
		}
		.schedule-box.active .text{
			color:#004a86;
		}
		.schedule-box.active-overtime .text{
			color:#e94848;
		}
		.btn-times{
			cursor:pointer;
			display:inline-block;
			font-weight:bold;
			width:15px;
			line-height:15px;
			font-size:16px;
			text-align:right;
		}
		.form-first{
		    background-color:#fff;
		    overflow-y:scroll;
		    border:0px solid red;
		}
		.form-demo-nei .fixd-btn-group,.fixd-btn-group{
		    position:fixed;
		    left:0;
		    bottom:40px;
		    background-color:#E5E9EC;
		    padding:8px 60px;
		    margin-bottom:0;
		}
		
		/*10.17号样式调整*/
		.form-group  .mini-textbox,.form-group .mini-buttonedit {
			margin-left:20% !important;	
		}
		.form-group label{
			width:150px;		
		}
		.mini-grid-row .mini-grid-cell {
    		border-left: 1px solid #ddd;
		}
		.mini-grid-editwrap .mini-textbox-border ,.mini-grid-editwrap .mini-buttonedit-border{
			height: 19px;
			position: relative;
			overflow: hidden;
			border-radius:0;
		}
		
		.mini-grid-editwrap .mini-textbox .mini-textbox-input ,.mini-grid-editwrap .mini-combobox .mini-buttonedit-input{
		    width: 100%;
		    height: 19px;
		    line-height: 19px;
		    border: 0;
		    padding: 0 !important;
		    margin: 0;
		}
		.mini-grid-editwrap .mini-combobox .mini-buttonedit-border .mini-buttonedit-buttons {
		    margin-top: 0 !important;
		}
		.mini-textbox-focus .mini-textbox-border{  /*可以公用的样式*/
	  		border-color: #004a86 !important;
		  	color: #004a86;
		  	outline: 0;
		  	-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
		  	box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
		}
		body > div[class="mini-grid-editwrap"]:nth-child(2) .mini-buttonedit .mini-buttonedit-border .mini-buttonedit-input {
			width: 100%;
		    height: 19px;
		    line-height: 19px;
		    border: 0;
		    padding: 0 !important;
		    margin: 0;
		}
		
		.demo-accordion .cuc-navbar{
			border-bottom:1px solid #ddd;
		}
		.demo-accordion{
			background:#fff;
			margin:5px 0;
			border-bottom:1px solid #ddd;
		}
		.demo-accordion:last-child{
            margin-bottom:0;
        }
		.demo-accordion .accordion-container{
			background:#fff;
		}
		.demo-accordion .accordion-container .cuc-row:first-child{
			border-top:1px solid #ddd;
		}
		.demo-accordion .accordion-container a{
			text-decoration: none;
			color: #000;
		}
		.demo-accordion .accordion-container a:hover{
		    color:#004A86;
		}
		.demo-accordion .accordion-container .cuc-col-sm-4{
			line-height:45px;
			text-align:left;
		}
		.demo-accordion .accordion-container .cuc-row{
			border-bottom: 1px solid #ddd;
			margin:0;
		}
		
		
</style>
</head>
<body style="background-color:#f1f1f1;">
<div class="bs-docs-section" id="bs-docs-section" style="padding-top:15px;padding-bottom:0;">
<div class="form-first" style="position:relative;">
    <div class="form-box" style="position:relative;height:100%;">
        <ul class="nav nav-tabs">
          <li role="presentation" class="active"><a href="javascript:;">流程配置</a></li>
          <li role="presentation"><a href="javascript:;">人工活动配置</a></li>
          <li role="presentation"><a href="javascript:;">流程图</a></li>
        </ul>
        <div class="ass-box" id="form1">
                <div class="form-demo-nei">
                    <input class="nui-hidden" name="id"/>
					<input class="nui-hidden" name="processDefName" />
					<input class="nui-hidden" name="applyActivityId" id="applyActivityId"/>
                    <div class="form-group">
                        <label style="width:150px;text-align:right;margin-right:-10px;">是否使用流程框架 <span class="star">*</span></label>
                        <input class="nui-dictcombobox" name="isDefault"  id="isDefault" required="true" value="1" style="width:70%" valueField="dictID" textField="dictName" dictTypeId="COF_YESORNO" onvaluechanged="isDefaultChange"/>
                     </div>
                     <div class="form-group">
                        <label for="displayName" style="width:150px;text-align:right;margin-right:10px;">流&nbsp;程&nbsp;&nbsp;显&nbsp;示&nbsp;&nbsp;名&nbsp;称 <span class="star">*</span></label>
                        <input name="displayName" type="text" class="nui-textbox" style="width:70%" id="displayName" placeholder="">
                     </div>
                     <div class="form-group">
                        <label for="businessEntity" style="width:150px;text-align:right;margin-right:10px;">业&nbsp;务&nbsp;&nbsp;数&nbsp;据&nbsp;&nbsp;实&nbsp;体 <span class="star">*</span></label>
                        <input name="businessEntity" type="text" class="nui-textbox" style="width:70%" id="businessEntity" placeholder="">
                     </div>
                    
                    <div class="form-group">
                        <label for="businessForm" style="width:150px;text-align:right;margin-right:10px;">业&nbsp;&nbsp;&nbsp;&nbsp;务&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;表&nbsp;&nbsp;&nbsp;&nbsp;单 <span class="star">*</span></label>
                        <input name="businessForm" type="text" class="nui-textbox" style="width:70%" id="businessForm" placeholder="">
                     </div>
                     
                     <div class="form-group">
                        <label for="descBizName" style="width:150px;text-align:right;margin-right:10px;">预处理&nbsp;&nbsp;业务&nbsp;&nbsp;逻辑<span class="star">*</span></label>
                        <input name="descBizName" type="text" class="nui-textbox" style="width:70%" id="descBizName" placeholder="">
                     </div>
                     
                     <div class="form-group">
                        <label for="businessReader" style="width:150px;text-align:right;margin-right:10px;">读取&nbsp;&nbsp;&nbsp;&nbsp;业务&nbsp;&nbsp;&nbsp;逻辑 &nbsp;</label>
                        <input name="businessReader" type="text" class="nui-textbox" style="width:70%" id="businessReader" placeholder="">
                     </div>
                     
                     <div class="form-group">
                        <label for="businessWriter" style="width:150px;text-align:right;margin-right:10px;">保存&nbsp;&nbsp;&nbsp;&nbsp;业务&nbsp;&nbsp;&nbsp;逻辑 &nbsp;</label>
                        <input name="businessWriter" type="text" class="nui-textbox" style="width:70%" id="businessWriter" placeholder="">
                     </div>
                     
                     <div class="form-group">
                        <label for="context" style="width:150px;text-align:right;margin-right:10px;">上&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;下&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;文 &nbsp;</label>
                        <input name="context" type="text" class="nui-textbox" style="width:70%" id="context" placeholder="">
                     </div>
                     
                     <div class="form-group">
                        <label for="customUrl" style="width:150px;text-align:right;margin-right:10px;">自定义&nbsp;&nbsp;发起界面 <span class="star">*</span></label>
                        <input name="customUrl" type="text" class="nui-textbox" style="width:70%" id="customUrl" placeholder="">
                     </div>
                </div>
        </div>
        
        <div id="test-ass-box-1" class="ass-box" style="display: none;">
	          <div id="data_element"></div>
        </div>
        
        <div id="test-ass-box-2" class="ass-box" style="display: none;border:0px solid red;overflow:hidden"">
        	<iframe id="flowchart" frameborder="0" height="100%" width="100%"></iframe>
        </div>
    </div>
	</div>
	<div id="btnSubmit" style="text-align:left;margin-top:5px;" >
            <button class="mini-button btn btn-default btn-xs btn-submit" type="button" onclick="doSave()">
             提交
            </button>
     </div>
    
</div>

	<script>
		"use strict";
		nui.parse();
		
		var minHeight=document.body.clientHeight-173;
		document.getElementById("form1").style.height=minHeight+"px";
		document.getElementById("test-ass-box-1").style.height=minHeight+"px";
		document.getElementById("test-ass-box-2").style.height=minHeight+"px";
		
		//IE下滚动条问题
		var hei = $(".form-first").height();
		hei = parseInt(hei) + 13;
		$(".form-first").css("height",hei+"px");
		
		var form = new nui.Form("#form1");
		var activities = nui.get("#activities");
		var dataLength = "";
	
		var defName = getCookies("session_def_name2");
		

		
		//tab 选项卡切换
		$(".form-box .nav-tabs > li ").bind("click",function(e){
			var index = $(this).index();
			$(this).addClass("active").siblings().removeClass("active");
			$(".ass-box").eq(index).show().siblings(".ass-box").hide();
		});
		
		function getCookies(c_name){
			if(document.cookie.length>0){
				var c_start = document.cookie.indexOf(c_name+"=");
				if(c_start!=-1){
					c_start = c_start+c_name.length+1;
					var c_end = document.cookie.indexOf(";", c_start);
					if(c_end==-1){
						c_end = document.cookie.length;
					}
					return unescape(document.cookie.substring(c_start, c_end));				
				}
			}
		}
		
		function setCookie(c_name,value,expiredays){
			var exdate = new Date();
			exdate.setDate(exdate.getDate()+expiredays);
			document.cookie = c_name +"="+escape(value)+((expiredays==null) ?"":";expires="+exdate.toString());
		}
		
		function beforenodeselect(e) {
			//禁止选中父节点
			if (!e.isLeaf)
				e.cancel = true;
		}
		
		function onCellBeginEdit(e) {
            var record = e.record, field = e.field;
            if(record.activityId == nui.get("#applyActivityId").getValue()) {
            	e.cancel = !(field == "canChooseNextActivity" || field == "canChangNextActivityParticipant");
            	return;
            }
            
            if(record.last) {
            	e.cancel = (field == "canChooseNextActivity" || field == "canChangNextActivityParticipant");
            	return;
            }
            
            if (field == "untreadActivitiesId" && record.supportUntread == false) {
                e.cancel = true;    //如果不支持回退，阻止编辑回退到属性
                return;
            }
        }
		
		function onShowRowDetail(e) {
			var grid = e.sender;
			var row = e.record;
			var td = grid.getRowDetailCellEl(row);
			$("<div></div>")
				.append($("<div></div>").text("业务逻辑: " + (row.bizName ? row.bizName : "")))
				.append($("<div></div>").text("操作数据实体: " + (row.operationEntity ? row.operationEntity: "")))
				.append($("<div></div>").text("操作表单: " + (row.operationForm ? row.operationForm : "")))
				.append($("<div></div>").text("可回退到的活动: " + getActivityNames(row.untreadActivitiesId)))
				.append($("<div></div>").text("侯选人: " + (row.candidates ? row.candidates : "")))
				.appendTo($(td).html("").addClass("detail"));
		}
		
		function getData() {
			return Window.data;
		}
		
		function getActivityNames(ids) {
			if(!ids) return "";
			
			var value = ids.split(",");
			var text = "";
			$.each(Window.data, function(i, act) {
				$.each(value, function(j, v) {
					if(v == act.activityId) {
						text += ',' + act.name;
						return false;
					}
				});
			});
			return text.substring(1);
		}
		
		function onUntreadActivitiesRenderer(e){
			return getActivityNames(e.value);
		}
		
		function isDefaultChange(e){
			var isDefault = nui.get("isDefault").getValue();
        	if(isDefault==""){
        		isDefault = "1";
        		nui.get("isDefault").setValue("1");
        	}
        	form.setIsValid(true);
    		nui.get("displayName").set({"required":isDefault=="1"});
    		nui.get("businessEntity").set({"required":isDefault=="1"});
    		nui.get("businessForm").set({"required":isDefault=="1"});
    		nui.get("descBizName").set({"required":isDefault=="1"});
    		nui.get("customUrl").set({"required":isDefault=="0"});
    		
    		nui.get("displayName").set({"enabled":isDefault=="1"});
    		nui.get("businessEntity").set({"enabled":isDefault=="1"});
    		nui.get("businessForm").set({"enabled":isDefault=="1"});
    		nui.get("descBizName").set({"enabled":isDefault=="1"});
    		nui.get("businessReader").set({"enabled":isDefault=="1"});
    		nui.get("businessWriter").set({"enabled":isDefault=="1"});
    		nui.get("context").set({"enabled":isDefault=="1"});
    		nui.get("customUrl").set({"enabled":isDefault=="0"});
    		form.validate();
        }
		
		function refActivities() {
			$("#flowchart").attr("src", "com.cgn.components.coframe.taskcenter.flowchart.flow?contextPath=<%=request.getContextPath()%>&zoomQuotiety=1&processDefName=" + defName);
			var json=nui.encode({processDefName : defName});
			$.ajax({
				url : "com.cgn.components.bps.api.webservice.DefinitionQueryManager.queryActivitiesOfProcess.biz.ext",
				type : "POST",
				data : json,
				cache:true,
				contentType:"text/json",
				success : function(data) {
					if (data.processDefine) {
						form.setData(data.processDefine);
						isDefaultChange();
						if (data.processDefine.activityDefines.WFActivityDefineExt) {
							var objHtml="";
							var _data = data.processDefine.activityDefines.WFActivityDefineExt;
							Window.data = data.processDefine.activityDefines.WFActivityDefineExt;
							dataLength = _data.length;
							for(var i=0;i<_data.length;i++){
								objHtml+=appendHtml(_data[i],i);
							}
							$("#data_element").html(objHtml);
							
							//加载完成 重新渲染页面
							nui.parse();
							//加载js文件
							loadScript("<%=request.getContextPath()%>/coframe/taskcenter/themes/css/cuc.min.js");
							//渲染
							nui.parse();
							nui.setCookie("session_def_name2","");
						} else {
							activities.clearRows();
						}
					}
				}
			});
		}
		
		function appendHtml(data,count){
			var html="";
			
			html+='<div class="demo-accordion " style="width:760px;">';
		            html+='<nav class="cuc-navbar cuc-navbar-default  cuc-patch">';
		              html+='<div class="cuc-container-fluid">';
		                html+='<div class="cuc-navbar-header">';
		                    html+='<a class="cuc-navbar-brand" href="#">'+data.name+'</a>';
		                html+='</div>';
		                html+='<div class="cuc-collapse cuc-navbar-collapse" id="bs-example-navbar-collapse-1">';
		                    html+='<ul class="cuc-nav cuc-navbar-nav cuc-navbar-right">';
		                        html+='<li  class="folding-toggle">';
		                            html+='<a href="#"><span class="fa fa-angle-up"></span></a>';
		                        html+='</li>';
		                    html+='</ul>';
		                html+='</div>';
		              html+='</div>';
		            html+='</nav>';
				
					html+='<div class="accordion-container folding-menu" id="mmp_test_form'+count+'">';
					html+='<input class="nui-hidden" id="id" name="id" value="'+data.id+'"/>';
					html+='<input class="nui-hidden" id="activityId" name="activityId" value="'+data.activityId+'"/>';
					html+='<input class="nui-hidden" id="last" name="last" value="'+data.last+'"/>';
					html+='<input class="nui-hidden" id="processDefId" name="processDefId" value="'+data.processDefId+'"/>';
			
			if(count=="0"){
			 	html+='<div class="row" style="position:relative;">';
                    html+='<label style="width:150px;text-align:right;margin-right:20px;">用户决定下一环节</label>';
                    html+='<input class="nui-checkbox" style="position:absolute;top:50%;margin-top:-18px;" id="canChooseNextActivity" name="canChooseNextActivity" value="'+data.canChooseNextActivity+'"/>';
                html+='</div>';
                
	            html+='<div class="row" style="position:relative;">';  
                    html+='<label style="width:150px;text-align:right;margin-right:20px;">指定下一环节侯选人外的参与者</label>';
                    html+='<input class="nui-checkbox" style="position:absolute;top:50%;margin-top:-18px;" id="canChangNextActivityParticipant" name="canChangNextActivityParticipant" value="'+data.canChangNextActivityParticipant+'"/>';
                html+='</div>';	
                
                html+='<input class="nui-hidden" id="bizName" name="bizName" value="'+data.bizName+'"/>';
                html+='<input class="nui-hidden" id="operationEntity" name="operationEntity" value="'+data.operationEntity+'"/>';
                html+='<input class="nui-hidden" id="operationForm" name="operationForm" value="'+data.operationForm+'"/>';
                html+='<input class="nui-hidden" id="supportDirect" name="supportDirect" value="'+data.supportDirect+'"/>';
                html+='<input class="nui-hidden" id="canModifyBizData" name="canModifyBizData" value="'+data.canModifyBizData+'"/>';
                html+='<input class="nui-hidden" id="supportInvalid" name="supportInvalid" value="'+data.supportInvalid+'"/>';
                html+='<input class="nui-hidden" id="supportUntread" name="supportUntread" value="'+data.supportUntread+'"/>';
                html+='<input class="nui-hidden" id="untreadActivitiesId" name="untreadActivitiesId" value="'+data.untreadActivitiesId+'"/>';
                html+='<input class="nui-hidden" id="candidates" name="candidates" value="'+data.candidates+'"/>';
                	          
			}else{
			
				var _bizName = data.bizName==null?"":data.bizName;
				html+='<div class="row">';
	                    html+='<label style="width:150px;text-align:right;margin-right:20px;">业务逻辑</label>';
	                    html+='<input style="width:50%" class="nui-textbox" id="bizName" name="bizName"  value="'+_bizName+'"/>';
                html+='</div>';
                
                var _operationEntity = data.operationEntity==null?"":data.operationEntity;
            	html+='<div class="row">';
                    html+='<label style="width:150px;text-align:right;margin-right:20px;">操作数据实体</label>';
                    html+='<input style="width:50%" class="nui-textbox" id="operationEntity" name="operationEntity" value="'+_operationEntity+'"/>';
           		html+='</div>';
	           		
               var _operationForm = data.operationForm==null?"":data.operationForm;
                html+='<div class="row">';
	                    html+='<label style="width:150px;text-align:right;margin-right:20px;">操作表单</label>';
	                    html+='<input style="width:50%" class="nui-textbox" id="operationForm" name="operationForm" value="'+_operationForm+'"/>';
                html+='</div>';
            	
            	html+='<div class="row" style="position:relative;">';
	                    html+='<label style="width:150px;text-align:right;margin-right:20px;">支持快速审批</label>';
	                    html+='<input class="nui-checkbox" style="position:absolute;top:50%;margin-top:-18px;" id="supportDirect" name="supportDirect" value="'+data.supportDirect+'"/>';
	            
	            html+='</div>';
	            html+='<div class="row" style="position:relative;">';        
	                    html+='<label style="width:150px;text-align:right;margin-right:20px;">支持修改业务数据</label>';
	                    html+='<input class="nui-checkbox" style="position:absolute;top:50%;margin-top:-18px;" id="canModifyBizData" name="canModifyBizData" value="'+data.canModifyBizData+'"/>';
                html+='</div>';
                
                html+='<div class="row" style="position:relative;">';
	                    html+='<label style="width:150px;text-align:right;margin-right:20px;">支持作废</label>';
	                    html+='<input class="nui-checkbox" style="position:absolute;top:50%;margin-top:-18px;" id="supportInvalid" name="supportInvalid" value="'+data.supportInvalid+'"/>';
	            html+='</div>';
	            html+='<div class="row" style="position:relative;">';      
	                    html+='<label style="width:150px;text-align:right;margin-right:20px;">支持回退</label>';
	                    html+='<input class="nui-checkbox" style="position:absolute;top:50%;margin-top:-18px;" id="supportUntread" name="supportUntread" value="'+data.supportUntread+'"/>';
                html+='</div>';
                
                html+='<div class="row">';
	                    html+='<label style="width:150px;text-align:right;margin-right:20px;">可回退到的活动</label>';
                		html+='<input class="nui-combobox" name="untreadActivitiesId" id="activityList" width="50%" allowInput="false" valueField="activityId" textField="name" data="getData()" value="'+data.untreadActivitiesId+'"/>';
                html+='</div>';
            	
            	var _candidates = data.candidates==null?"":data.candidates;
             	html+='<div class="row">';
	                    html+='<label style="width:150px;text-align:right;margin-right:20px;">侯选人</label>';
                		html+='<input class="nui-textboxlist" url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcodename" textField="empcodename" searchField="keyword" dataField="list" property="editor" value="'+_candidates+'" text="'+_candidates+'" name="candidates" textName="candidates" width="50%" required="true"/>';
                html+='</div>';
                
                html+='<div class="row" style="position:relative;">';
                    html+='<label style="width:150px;text-align:right;margin-right:20px;">用户决定下一环节</label>';
                    html+='<input class="nui-checkbox" style="position:absolute;top:50%;margin-top:-18px;" id="canChooseNextActivity" name="canChooseNextActivity" value="'+data.canChooseNextActivity+'"/>';
                html+='</div>';
                
	            html+='<div class="row" style="position:relative;">';  
                    html+='<label style="width:150px;text-align:right;margin-right:20px;">指定下一环节侯选人外的参与者</label>';
                    html+='<input class="nui-checkbox" style="position:absolute;top:50%;margin-top:-18px;" id="canChangNextActivityParticipant" name="canChangNextActivityParticipant" value="'+data.canChangNextActivityParticipant+'"/>';
                html+='</div>';	
			}
						          
		        html+='</div>';
	    	html+='</div>';
		    
		    return html;
		}
		
		function doSave() {
			//if(!form.isChanged() && !activities.isChanged()) return;
			if(defName==null || defName==''){return;}
			//activities.commitEdit();
			var data = form.getData();
			data.activityDefines = {};
			
			//data.activityDefines.WFActivityDefineExt = activities.getChanges().slice(0);
			
			var defineExt = [];
			for(var i=0;i<dataLength;i++){
				var queryForm = new nui.Form("#mmp_test_form"+i);
				if(queryForm){
					var tempData = queryForm.getData();
					if(tempData.id=="null"){
						tempData.id="";
					}
					defineExt.push(tempData);
				}
			}
			data.activityDefines.WFActivityDefineExt = defineExt;
			
// 			for(var i = 0; i < data.activityDefines.WFActivityDefineExt.length; i++) {
// 				delete data.activityDefines.WFActivityDefineExt[i]._id;
// 				delete data.activityDefines.WFActivityDefineExt[i]._state;
// 				delete data.activityDefines.WFActivityDefineExt[i]._uid;
// 			}
			var json = nui.encode({processDefine:data});
			
			window.parent.showMask();
			nui.ajax({
				url: "com.cgn.components.bps.api.webservice.BpsClient.saveProcessCfg.biz.ext",
				type: "POST",
				data: json,
				dataType: "json",
				complete: function(xmlhttp, textStatus) {
					if (xmlhttp.readyState==4) {
						var content, state;
						if (xmlhttp.status==200) {
							window.parent.hideMask();
							window.parent.showSucc();
						} else {
							content = "<b>失败</b> <br/>数据保存失败";
							state = "warning";
							alert("数据保存失败");
						}
						
					}
				}
			});
		}
		
		if(defName!=null && defName!=''){
			refActivities();
		}
		
		function loadScript(url){
			var script = document.createElement("script");
			script.type="text/javascript";
			script.src = url;
			document.body.appendChild(script);		
		}
		
	</script>
</body>


</html>