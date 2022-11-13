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
<style type="text/css">
body .mini-labelfield {
	width: 49%;
}
.detail {
	font-size: 9pt;
	font-family: Tahoma, Verdana, 宋体;
}
.detail div div {
	margin-top: 4px;
}
.mini-labelfield-label {
	width: 150px;
}
</style>
</head>
<body style="background-color:#f1f1f1;">
	<div id="root-panel" class="nui-panel" style="height: 100%;width: 100%;" showHeader="false" showFooter="true">
		<div class="nui-panel" showToolbar="false" title="流程配置"
			showFooter="false" style="width: 100%; height: auto;">
			<input id="treeSelect" class="nui-treeselect" 
				labelField="true" label="流程"
				url="com.cgn.components.coframe.taskcenter.BusinessCatalog.getCatalogTree2.biz.ext"
				multiSelect="false" valueFromSelect="false" dataField="list"
				textField="text" valueField="id" parentField="pid"
				onbeforenodeselect="beforenodeselect" onvaluechanged="refActivities"
				allowInput="false" expandOnLoad="true" showTreeLines="false"/>

			<div id="wfd">
				<input class="nui-hidden" name="id"/>
				<input class="nui-hidden" name="processDefName" />
				<input class="nui-hidden" name="applyActivityId" id="applyActivityId"/>
				<input class="nui-dictcombobox" name="isDefault"  id="isDefault" labelField="true" label="是否使用流程框架" required="true" value="1" 
                   		 valueField="dictID" textField="dictName" dictTypeId="COF_YESORNO" onvaluechanged="isDefaultChange"/>
				<input class="nui-textbox" name="displayName"  id="displayName" labelField="true" label="流程显示名称" required="true"/>
				<input class="nui-textbox" name="businessEntity"  id="businessEntity" labelField="true" label="业务数据实体" required="true"/>
				<input class="nui-textbox" name="businessForm"  id="businessForm" labelField="true" label="业务表单" required="true"/>
				<input class="nui-textbox" name="descBizName"  id="descBizName" labelField="true" label="业务数据预处理业务逻辑" required="true"/>
				<input class="nui-textbox" name="businessReader"  id="businessReader" labelField="true" label="业务数据读取业务逻辑"/>
				<input class="nui-textbox" name="businessWriter"  id="businessWriter" labelField="true" label="业务数据保存业务逻辑"/>
				<input class="nui-textbox" name="context"  id="context" labelField="true" label="上下文"/>
				<input class="nui-textbox" name="customUrl"  id="customUrl" labelField="true" label="自定义发起界面" required="true"/>
			</div>
			
			<iframe id="flowchart" style="height: 270px;width: 50%;position: absolute;right: 0;top: 0" frameborder="0" ></iframe>
		</div>
		
		<div style="height: 10px;"></div>
		
		<div class="nui-fit">
			<div  class="nui-panel" title="人工活动配置" showToolbar="false" showFooter="false" style="width:100%;height:100%;" bodyStyle="">
				<div  class="nui-datagrid" id="activities" showPager="false" 
					allowCellEdit="true" allowCellSelect="true" autoHideRowDetail="true"
					onshowrowdetail="onShowRowDetail" oncellbeginedit="onCellBeginEdit" oncellvalidation="onCellValidation"
					style="height: 100%">
				    <div property="columns">
				    	<div type="expandcolumn" width="20" allowMove="false" allowResize="false" cellCls="mini-grid-headerCell"></div>
				        <div field="name" width="" headerAlign="center">活动名称</div>
				        <div field="bizName" width="" headerAlign="center">业务逻辑
				        	<input property="editor" class="nui-textbox" style="width:100%;"/>
				        </div>
				        <div field="operationEntity" width="" headerAlign="center">操作数据实体
				        	<input property="editor" class="nui-textbox" style="width:100%;"/>
				        </div>
				        <div field="operationForm" width="" headerAlign="center">操作表单
				        	<input property="editor" class="nui-textbox" style="width:100%;"/>
				        </div>
				        <div field="supportDirect" headerAlign="center" type="checkboxcolumn">支持快速审批</div>
				        <div field="canModifyBizData" width="" headerAlign="center" type="checkboxcolumn">支持修改业务数据</div>
				        <div field="supportInvalid" width="" headerAlign="center" type="checkboxcolumn">支持作废</div>
				        <div field="supportUntread" width="" headerAlign="center" type="checkboxcolumn">支持回退</div>
				        <div field="untreadActivitiesId" width="" headerAlign="center" renderer="onUntreadActivitiesRenderer">可回退到的活动
				        	<input id="activityList" property="editor" class="nui-combobox" multiSelect="true" allowInput="false"
				        		data="getData()" dataField="text" valueField="activityId" textField="name" style="width:100%;"/>
				        </div>
				        <div field="candidates" width="" headerAlign="center">侯选人
				        	<!--<input property="editor" class="nui-personpicker" allowInput="false" style="width: 100%;"/>-->
				        	<input property="editor"  class="nui-textboxlist" dataField="list" required="true" style="width:250px;"
        					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcodename" textField="empcodename"  searchField="keyword"/>
				        </div>
				        <div field="canChooseNextActivity" headerAlign="center" type="checkboxcolumn">用户决定下一环节</div>
				        <div field="canChangNextActivityParticipant" headerAlign="center" type="checkboxcolumn">指定下一环节侯选人外的参与者</div>
		 		   </div>
				</div>
			</div>
		</div>
		
		<div property="footer" style="padding:2px;border:none;">
			<table width="100%">
				<tr>
					<td style="width:100%;" align="right">
						<a class="nui-button" iconCls="icon-ok" onclick="doSave">确定</a>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<script type="text/javascript">
		"use strict";
		nui.parse();
		
		var form = new nui.Form("#wfd");
		var activities = nui.get("#activities");

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
		
		function onCellValidation(e) {
/* 			if (e.field == "untreadActivitiesId") {
				if(!e.value) {
					e.isValid = false;
					e.errorText = "可回退到的活动不能为空";
				}
			} */
		}

		function refActivities() {
			var tree = nui.get("#treeSelect");
			var defName = tree.getSelectedNode().defName;
			$("#flowchart").attr("src", "com.cgn.components.coframe.taskcenter.flowchart.flow?contextPath=<%=request.getContextPath()%>&zoomQuotiety=0.75&processDefName=" + defName);
			$.ajax({
				url : "com.cgn.components.bps.api.webservice.DefinitionQueryManager.queryActivitiesOfProcess.biz.ext",
				type : "POST",
				data : {
					processDefName : defName
				},
				dataType : "json",
				success : function(data) {
					if (data.processDefine) {
						form.setData(data.processDefine);
						isDefaultChange();
						//form.validate();

						if (data.processDefine.activityDefines.WFActivityDefineExt) {
							Window.data = data.processDefine.activityDefines.WFActivityDefineExt
							activities.set({
								data : Window.data //data.processDefine.activityDefines.WFActivityDefineExt.slice(1) //不显示申请环节
							});
						} else {
							activities.clearRows();
						}
					}
				}
			});
		}
		
		function doSave() {
			//if(!form.isChanged() && !activities.isChanged()) return;
			activities.commitEdit();
			var data = form.getData();
			data.activityDefines = {};
			data.activityDefines.WFActivityDefineExt = activities.getChanges().slice(0);
			for(var i = 0; i < data.activityDefines.WFActivityDefineExt.length; i++) {
				delete data.activityDefines.WFActivityDefineExt[i]._id;
				delete data.activityDefines.WFActivityDefineExt[i]._state;
				delete data.activityDefines.WFActivityDefineExt[i]._uid;
			}
			var json = nui.encode({processDefine:data});
			var root = nui.get("#root-panel");
			root.mask("数据保存");
			nui.ajax({
				url: "com.cgn.components.bps.api.webservice.BpsClient.saveProcessCfg.biz.ext",
				type: "POST",
				data: json,
				dataType: "json",
				complete: function(xmlhttp, textStatus) {
					if (xmlhttp.readyState==4) {
						var content, state;
						if (xmlhttp.status==200) {
							content = "<b>成功</b> <br/>数据保存成功";
							state = "success";
						} else {
							content = "<b>失败</b> <br/>数据保存失败";
							state = "warning";
						}
						nui.showTips({
				            content: content,
				            state: state,
				            x: "center",
				            y: "top",
				            timeout: 3000
				        });
						root.unmask();
					}
				}
			});
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
	</script>
</body>
</html>