<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>

<!DOCTYPE html>
<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-09-07 00:03:56
  - Description:
-->
<head>
<title>查询模板配置</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
</head>
<body>
	<div class="nui-fit" style="padding: 4px;">
		<div class="nui-layout" style="width: 100%; height: 100%;">
			<div title="模板列表" region="east" width="380" minWidth="300">
				<div id="tmplList" class="nui-datagrid" height="100%" width="100%"
					pageSize="20" sizeList="[20,100,1000]" dataField="data" borderStyle="border:0" 
					url="com.cgn.components.coframe.tools.QueryTmplManager.getQueryTmplList.biz.ext">
					<div property="columns">
						<div field="name" width="80" headerAlign="center" allowSort="true">查询模板</div>
						<div field="description" width="120" headerAlign="center">描述</div>
					</div>
				</div>
			</div>

			<div title="模板配置" region="center">
				<div id="tmpl" class="nui-datagrid" height="100%" width="100%"
					allowCellEdit="true" allowCellSelect="true" pageSize="20" sizeList="[20,100,1000]"
					dataField="data"  pagerButtons="#buttons" borderStyle="border:0" multiSelect="true"
					url="com.cgn.components.coframe.tools.QueryTmplManager.getQueryTmplDetails.biz.ext">
					<div property="columns">
						<div type="indexcolumn" width="18"></div>
						<div field="field" width="200">字段名</div>
						<div field="text">
							字段显示文本<input property="editor" class="nui-textbox"
								style="width: 100%;" />
						</div>
						<div field="order">
							次序<input property="editor" class="nui-spinner"
								style="width: 100%;" />
						</div>
						<div field="israng" type="checkboxcolumn">是否范围</div>
						<div field="islike" type="checkboxcolumn">是否模糊匹配</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="buttons">
		<span class="separator"></span>
		<a class="nui-button" iconCls="icon-add" plain="true" id="add" enabled="false"></a>
		<a class="nui-button" iconCls="icon-remove" plain="true" id="remove" enabled="false"></a>
		<a class="nui-button" iconCls="icon-save" plain="true" id="save" enabled="false"></a>
	</div>

	<div id="fieldsDlg" class="nui-window" showToolbar="false" showFooter="true" title="选择过滤字段"
		style="width: 300px; height: 260px">
		<div>
			可选字段列表:<br> <select class="nui-listbox" id="fieldList"
				showCheckBox="true" multiSelect="true" valueField="field"
				textField="label" dataField="list" nullItemText="已无可选字段"
				style="width: 100%; height: 168px;"></select>
		</div>
		<div property="footer" style="margin: 4px 8px; float: right;">
			<a class="nui-button"  iconCls="icon-ok" onclick="this.getParent().hide(this);">确定</a>
			<a class="nui-button" iconCls="icon-cancel" onclick="this.getParent().hide(this);">取消</a>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			"use strict";
			nui.parse();
			
			var tmplId = null;
			
			var gTmplList = nui.get("#tmplList");
			var gTmpl = nui.get("#tmpl");
			var bAdd = nui.get("#add");
			var bRemove = nui.get("#remove");
			var bSave = nui.get("#save");
			var wFieldsDlg = nui.get("#fieldsDlg");
			var lFieldList = nui.get("#fieldList");
			
			lFieldList.on("beforeload", function(e) {
				this.setShowNullItem(false);
			});
			lFieldList.on("load", function(e) {
				this.setShowNullItem(this.getCount() == 0);
			});
			
			wFieldsDlg.show = function() {
				nui.Window.prototype.show.apply(this, arguments);
				nui.get("#fieldList").load("com.cgn.components.coframe.tools.QueryTmplManager.getQueryTmplAllAvailableFields.biz.ext?tmplId=" + tmplId);
			};
			wFieldsDlg.hide = function(btn) {
				if(this._doButtonClick(btn)) {
					nui.Window.prototype.hide.call(this);
				}
			};
			wFieldsDlg._doButtonClick = function(btn) {
				if(btn.iconCls == "icon-ok") {
					$.each(lFieldList.getSelecteds(), function(i, item) {
						gTmpl.addRow({tmplId: tmplId, field: item.field, text: item.label});
					});
					gTmpl.fire("cellendedit");
				}
				return true;
			};
			
			bAdd.on("click", function(e) {
				wFieldsDlg.showAtEl(gTmpl.getEl(), {xAlign: "center", yAlign: "middle"});
			});
			bRemove.on("click", function(e) {
				gTmpl.removeRows(gTmpl.getSelecteds(), true);
				gTmpl.fire("cellendedit");
			});
			bSave.on("click", function(e) {
				nui.ajax({
					url: "com.cgn.components.coframe.tools.QueryTmplManager.saveQueryTmplDetails.biz.ext",
					type: "POST",
					data: {added: gTmpl.getChanges("added"), modified: gTmpl.getChanges("modified"), removed: gTmpl.getChanges("removed")},
					dataType: "json",
					success: function(data) {
						var content, state;
						if(data.result && data.result == "ok") {
							gTmpl.reload();
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
					}
				});
			});
			
			gTmplList.on("select", function(e) {
				tmplId = e.record.id;
				gTmpl.load({
					tmplId : tmplId
				});
			});
			
			gTmpl.on("beforeload", function() {
				bAdd.setEnabled(false);
				bRemove.setEnabled(false);
				bSave.setEnabled(false);
			});
			gTmpl.on("load", function() {
				bAdd.setEnabled(true);
			});
			gTmpl.on("select", function(e) {
				bRemove.setEnabled(true);
			});
			gTmpl.on("cellendedit", function(e) {
				bSave.setEnabled(e.source.isChanged());
			});
			gTmpl.on("cellbeginedit", function(e) {
	            if(e.field == "islike") {
	            	e.cancel = e.record.supportFuzzy == false;
	            	if(e.cancel) {
 						nui.showTips({
				            content: "该字段不支持模糊匹配",
				            state: "info",
				            x: "left",
				            y: "bottom",
				            timeout: 2000
				        });
	            	}
	            	return;
	            }
			});
			
			gTmplList.load();
		});
	</script>
</body>
</html>