<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-09-24 11:22:02
- Description:
    --%>
<head>
<title>检查计划录入</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
</head>
<style>
.displaynone {
	display: none;
}
textarea{
overflow:auto;
}
</style>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<input class="nui-hidden" name="ghttinspection.uuid" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">大修轮次:</td>
				<td colspan="1"><input class="nui-textbox" style="width: 100%" onvalidation="hasIllegalChar(e,12,true,true)" onvalidation="hasIllegalChar(e,255,true,true)"
					required="true" requiredErrorText="请输入名称" emptyText="请输入大修轮次" name="ghttinspection.overhaulRotation" /></td>
				<td class="form_label">蒸汽发生器型号:</td>
				<td colspan="1"><input class="nui-dictcombobox"
					required="true" requiredErrorText="请输入名称" emptyText="请输入蒸汽发生器型号"
					class="nui-combobox"
					style="width: 100%" id="pipemodel"
					textField="text" valueField="id"
					name="ghttinspection.steamGeneratorModel" /></td>
			</tr>
			<tr>
				<td class="form_label">蒸汽发生器编号:</td>
				<td colspan="1"><input class="nui-textbox"
					style="width: 100%" onvalidation="hasIllegalChar(e,24,false,true)"
					name="ghttinspection.steamGeneratorNo" /></td>
				<td class="form_label">功能位置:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" emptyText="选择生成功能位置"
					style="width: 70%; float: left;" 
					id="functionpostion" name="ghttinspection.funcPosition" /> <input
					id = "funselect" required="true" requiredErrorText="请输入名称"
					class="nui-dictcombobox" style="width: 30%; float: left;display: none"
					dictTypeId="functionpostion" onvaluechanged="functionpostionchange" />
					<input
					id = "funselect_ts" required="true" requiredErrorText="请输入名称"
					class="nui-dictcombobox" style="width: 30%; float: left;display: none"
					dictTypeId="functionpostion_ts" onvaluechanged="functionpostionchange" />
					</td>
			</tr>
			<tr>
				<td class="form_label">检查范围:</td>
				<td colspan="1"><input class="nui-dictcombobox" emptyText="请输入检查范围"
					style="width: 100%" dictTypeId="checkRange" required="true" requiredErrorText="请输入名称"
					name="ghttinspection.checkRange" /></td>
				<td class="form_label">检查类型:</td>
				<td colspan="1"><input onvaluechanged="checkTypechange" emptyText="请输入检查类型"
					style="width: 100%" id="checkType" required="true" requiredErrorText="请输入名称"
					class="nui-dictcombobox nts" name="" dictTypeId="checkType" /> <input
					onvaluechanged="checkTypechange_ts"
					style="width: 100%; display: none;" id="checkType_ts" emptyText="请输入检查类型"
					required="true" requiredErrorText="请输入名称" class="nui-dictcombobox ts" name=""
					dictTypeId="checkType_ts" /></td>
			</tr>
			<tr>
				<td class="form_label mrpcmodel">检查计划:</td>
				<td class="mrpcmodel" colspan="1"><input id="checkPlan"
					onvaluechanged="checkPlanchange" class="nui-dictcombobox nts"
					name="" style="width: 100%" required="true" requiredErrorText="请输入名称" emptyText="请输入检查计划"
					dictTypeId="checkPlan" /> <input id="checkPlan_ts"
					onvaluechanged="checkPlanchange_ts" class="nui-dictcombobox ts"
					name="" style="width: 100%" required="true" requiredErrorText="请输入名称" emptyText="请输入检查计划"
					dictTypeId="checkPlan_ts" /></td>
				<td class="form_label mrpcmodel">1/8抽检原点位移:</td>
				<td class="mrpcmodel" colspan="1"><input style="width: 100%"
					id="oneEight" class="nui-dictcombobox nts" name=""
					dictTypeId="oneEighthDisplace" /> <input style="width: 100%"
					id="oneEight_ts" class="nui-dictcombobox ts" name=""
					dictTypeId="oneEighthDisplace_ts" /></td>
			</tr>
			<tr>
			<td class="form_label">备注:</td>
				<td colspan="3"><input class="nui-textarea" style="width: 100%" onvalidation="hasIllegalChar(e,4000,true,true)"
					name="ghttinspection.remarks" /></td>
			</tr>
			<tr>
				<td style="visibility: hidden; height: 1px; overflow: hidden;"
					colspan="1"><input value="0" class="nui-hidden"
					name="ghttinspection.isdel" /></td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button btn btn-default btn-xs" id="savebt" onclick="onOk()"> 保存 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button" onclick="onCancel()">关闭</a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var datas = {};
		datas.jd = getCookie('jdid');
		var myjsons = nui.encode({
			myDatas : datas
		});
		$.ajax({
			url : "com.cgn.itmp.inspectcomponentmanage.pipebaseInfo.pipebaseinfobiz.queryPipemodel.biz.ext",
			type : 'POST',
			cache : false,
			data : myjsons,
			contentType : 'text/json',
			success : function(data) {
				 nui.get("pipemodel").setData(data.pipemodel.data);
			}
		});
		var fileid = "";
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		if (jdid == "86") {
			$(".ts").css('display', 'block');
			$(".nts").css('display', 'none');
			nui.get("checkType").name = "";
			nui.get("checkType_ts").name = "ghttinspection.checkType";

			nui.get("oneEight").name = "";
			nui.get("oneEight_ts").name = "ghttinspection.oneEighthDisplace";

			nui.get("checkPlan").name = "";
			nui.get("checkPlan_ts").name = "ghttinspection.checkPlan";
			nui.get("funselect").hide();
			nui.get("funselect_ts").show();
			nui.get("pipemodel").setValue("79/19TE");
		} else {
			$(".ts").css('display', 'none');
			$(".nts").css('display', 'block');
			nui.get("checkType_ts").name = "";
			nui.get("checkType").name = "ghttinspection.checkType";

			nui.get("oneEight_ts").name = "";
			nui.get("oneEight").name = "ghttinspection.oneEighthDisplace";

			nui.get("checkPlan_ts").name = "";
			nui.get("checkPlan").name = "ghttinspection.checkPlan";
			nui.get("funselect").show();
			nui.get("funselect_ts").hide();
			nui.get("pipemodel").setValue("55/19B");
		}
		function saveData() {
			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.ghttinspectionbiz.addGhttinspection.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.inspectcomponentmanage.ghttinspectionbiz.updateGhttinspection.biz.ext";
			}
			form.validate();
			if (form.isValid() == false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
			nui.get("#savebt").setEnabled(false);
			var data = form.getData(false, true);
			data.ghttinspection.jd = jdid;
			data.ghttinspection.jz = jzid;
			var json = nui.encode(data);

			$.ajax({
				url : urlStr,
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var returnJson = nui.decode(text);
					if (returnJson.exception == null) {
						CloseWindow("saveSuccess");
					} else {
						nui.alert("保存失败", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
							nui.get("#savebt").setEnabled(true);
								//CloseWindow("saveFailed");
							}
						});
					}
				},error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							nui.get("#savebt").setEnabled(true);
							});
						 }
			});
		}

		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);

			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);

			//如果是点击编辑类型页面
			if (infos.pageType == "edit") {
				if (jdid == "86") {
					nui.get("funselect_ts").setValue((data.record.ghttinspection.funcPosition).slice(5, 8));
				} else {
					nui.get("funselect").setValue((data.record.ghttinspection.funcPosition).slice(5, 8));
				}
				var json = infos.record;

				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
			}
			if (nui.get("checkPlan").value.indexOf("1/8抽检") != -1) {
				nui.get("oneEight").enable();
			} else {
				nui.get("oneEight").disable();
				nui.get("oneEight").setValue("");
			}
			//checkinterval
			//mrpcmodel

			// 			if (nui.get("checkType").value.indexOf("MRPC") != -1) {
			// 				$(".checkinterval").css('display', 'table-cell');
			// 				$(".mrpcmodel").css('display', 'none');
			// 			}else{
			// 				$(".checkinterval").css('display', 'none');
			// 				$(".mrpcmodel").css('display', 'table-cell');
			// 			}
			nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
		}

		//关闭窗口
		function CloseWindow(action) {
			if (action == "close" && form.isChanged()) {
				if (confirm("数据被修改了，是否先保存？")) {
					saveData();
				}
			}
			if (window.CloseOwnerWindow)
				return window.CloseOwnerWindow(action);
			else
				window.close();
		}

		//确定保存或更新
		function onOk() {
			saveData();
		}

		//关闭
		function onCancel() {
			CloseWindow("cancel");
		}
		function checkTypechange(e) {
			if (e.selected.dictID == "MRPC") {
			  nui.get("checkPlan").setValue("手动选取");
			  nui.get("checkPlan").disable();
			  nui.get("oneEight").disable();
			  nui.get("oneEight").setValue("");
			}else if(e.selected.dictID == "HLT"){
			  nui.get("checkPlan").setValue("全部100%");
			  nui.get("checkPlan").disable();
			  nui.get("oneEight").disable();
			  nui.get("oneEight").setValue("");
			}else{
				nui.get("checkPlan").setValue("");
				nui.get("checkPlan").enable();
				nui.get("oneEight").enable();
			}
		};
		function checkTypechange_ts(e) {
			if (e.selected.dictID == "VCI-SAX"||e.selected.dictID == "VC-SAX"||e.selected.dictID == "HLT") {
			  nui.get("checkPlan_ts").setValue("全部100%");
			  nui.get("checkPlan_ts").disable();
			  nui.get("oneEight_ts").disable();
			}else if(e.selected.dictID == "STL"){
			  nui.get("checkPlan_ts").setValue("手动选取");
			  nui.get("checkPlan_ts").disable();
			  nui.get("oneEight_ts").disable();
			}else if(e.selected.dictID == "VP-SAX"){
			  nui.get("checkPlan_ts").setValue("最外围两圈100%＋其余12.5%");
			  nui.get("checkPlan_ts").disable();
			  nui.get("oneEight_ts").enable();
			}else{
				nui.get("checkPlan").setValue("");
				nui.get("checkPlan").enable();
				nui.get("oneEight_ts").enable();
			}
		};
		function checkPlanchange(e) {
			if (e.selected.dictName.indexOf("1/8抽检") != -1) {
				nui.get("oneEight").enable();
			} else {
				nui.get("oneEight").disable();
				nui.get("oneEight").setValue("");
			}
		};
		function checkPlanchange_ts(e) {
			if (e.selected.dictName.indexOf("其余") != -1) {
				nui.get("oneEight_ts").enable();
			} else {
				nui.get("oneEight_ts").disable();
				nui.get("oneEight_ts").setValue("");
			}
		};
		function functionpostionchange(e) {
			nui.get("functionpostion").setValue(
				getCookie('jzname') + "RCP" + e.selected.dictName + "GV");
		};
		 function onCheck(e) {
		if (e.isValid) {
			if (e.value == "") {
				e.errorText = "必填项不可为空";
				e.isValid = false;
				nui.showTips(
						{
							content: '必填项不可为空',
							state: 'warning',
							x: 'center', 
							y: 'center'
						}
					);
			}
		}
	}
	</script>
</body>
</html>
