<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-10-18 10:04:20
- Description:
    --%>
<head>
<title>Pipelayout录入</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript">
	
</script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
</head>
<style>
.bgblue {
	background: #60b1e3;
	font-size: 18px;
	color: black;
	font-family: inherit;
	text-align: left;
}

.bgbluesub {
	background: #9cbdd2;
	font-size: 18px;
	color: black;
	font-family: inherit;
	text-align: left;
}
</style>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px; display: none;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="pipelayout.uuid" /> <input
			class="nui-hidden" name="pipelayout.model" />
			<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">行号:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.linenum" /></td>
			</tr>
			<tr>
				<td colspan="4" class="form_label bgblue">全部管束:</td>
			</tr>
			<tr>
				<td class="form_label">起点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.all_start" /></td>
				<td class="form_label">终点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.all_end" /></td>
			</tr>
			<tr>
				<td colspan="4" class="form_label bgblue">1/8抽样:</td>
			</tr>
			<tr>
				<td colspan="4" class="form_label bgbluesub">原点（管嘴侧第一根）:</td>
			</tr>
			<tr>
				<td class="form_label">起点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight0_start" /></td>
				<td class="form_label">终点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight0_end" /></td>
			</tr>
			<tr>
				<td colspan="4" class="form_label bgbluesub">向人孔侧位移1根:</td>
			</tr>
			<tr>
				<td class="form_label">起点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight1_start" /></td>
				<td class="form_label">终点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight1_end" /></td>
			</tr>
			<tr>
				<td colspan="4" class="form_label bgbluesub">向人孔侧位移2根:</td>
			</tr>
			<tr>
				<td class="form_label">起点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight2_start" /></td>
				<td class="form_label">终点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight2_end" /></td>
			</tr>
			<tr>
				<td colspan="4" class="form_label bgbluesub">向人孔侧位移3根:</td>
			</tr>
			<tr>
				<td class="form_label">起点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight3_start" /></td>
				<td class="form_label">终点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight3_end" /></td>
			</tr>
			<tr>
				<td colspan="4" class="form_label bgbluesub">向人孔侧位移4根:</td>
			</tr>
			<tr>
				<td class="form_label">起点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight4_start" /></td>
				<td class="form_label">终点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight4_end" /></td>
			</tr>
			<tr>
				<td colspan="4" class="form_label bgbluesub">向人孔侧位移5根:</td>
			</tr>
			<tr>
				<td class="form_label">起点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight5_start" /></td>
				<td class="form_label">终点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight5_end" /></td>
			</tr>
			<tr>
				<td colspan="4" class="form_label bgbluesub">向人孔侧位移6根:</td>
			</tr>
			<tr>
				<td class="form_label">起点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight6_start" /></td>
				<td class="form_label">终点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight6_end" /></td>
			</tr>
			<tr>
				<td colspan="4" class="form_label bgbluesub">向人孔侧位移7根:</td>
			</tr>
			<tr>
				<td class="form_label">起点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight7_start" /></td>
				<td class="form_label">终点:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="pipelayout.eight7_end" /></td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button"  onclick="onOk()"> 保存 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button"  onclick="onCancel()">
							取消 </a></td>
				</tr>
			</table>
		</div>
	</div>
	<!-- 	外围抽检 -->
	<div id="dataform2" style="padding-top: 5px; display: none;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="pipelayout.uuid" /> <input
			class="nui-hidden" name="pipelayout.model" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">抽样类型:</td>
				<td colspan="1"><input class="nui-dictcombobox"
				style="width:100%"
					onvaluechanged="selectall_fun(this.value,this)"
					dictTypeId="peripheral_sampling" name="pipelayout.statisticstype" /></td>
			</tr>
			<tr>
				<td class="form_label">行号:</td>
				<td colspan="1"><input class="nui-textbox" name="pipelayout.x" style="width:100%" /></td>
				<td class="form_label">列号:</td>
				<td colspan="1"><input class="nui-textbox" name="pipelayout.y" style="width:100%" /></td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button"  onclick="onOk()"> 保存 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button"  onclick="onCancel()">
							取消 </a></td>
				</tr>
			</table>
		</div>
	</div>

	<div id="dataform3" style="padding-top: 5px; display: none;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="pipelayout.uuid" /> <input
			class="nui-hidden" name="pipelayout.model" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td colspan="4" class="form_label">行区间:</td>
			</tr>
			<tr>
				<td class="form_label">起点:</td>
				<td colspan="1"><input class="nui-textbox" name="pipelayout.y1" style="width:100%" /></td>
				<td class="form_label">终点:</td>
				<td colspan="1"><input class="nui-textbox" name="pipelayout.x1" style="width:100%" /></td>
			</tr>
			<tr>
				<td colspan="4" class="form_label">列区间:</td>
			</tr>
			<tr>
				<td class="form_label">起点:</td>
				<td colspan="1"><input class="nui-textbox" name="pipelayout.y2" style="width:100%" /></td>
				<td class="form_label">终点:</td>
				<td colspan="1"><input class="nui-textbox" name="pipelayout.x2" style="width:100%" /></td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button"  onclick="onOk()"> 保存 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button"  onclick="onCancel()">
							取消 </a></td>
				</tr>
			</table>
		</div>
	</div>

	<div id="dataform4" style="padding-top: 5px; display: none;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="pipelayout.uuid" /> <input
			class="nui-hidden" name="pipelayout.model" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">行号:</td>
				<td colspan="1"><input class="nui-textbox" name="pipelayout.y" style="width:100%" /></td>
				<td class="form_label">列号:</td>
				<td colspan="1"><input class="nui-textbox" name="pipelayout.x" style="width:100%" /></td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button"  onclick="onOk()"> 保存 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button"  onclick="onCancel()">
							取消 </a></td>
				</tr>
			</table>
		</div>
	</div>

	<div id="dataform5" style="padding-top: 5px; display: none;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="pipelayout.uuid" /> <input
			class="nui-hidden" name="pipelayout.model" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">行号:</td>
				<td colspan="1"><input class="nui-textbox" name="pipelayout.y" style="width:100%" /></td>
				<td class="form_label">列号:</td>
				<td colspan="1"><input class="nui-textbox" name="pipelayout.x" style="width:100%" /></td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4">
					<a class="nui-button"  onclick="onOk()"> 保存 </a> 
					<a class="nui-button" onclick="onCancel()"> 取消 </a>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<script type="text/javascript">
		nui.parse();
		var statisticstype;
		var model;//抽样类型
		var flag;//父页面下拉框第几种抽样方式
		var form;//页面表单

		function saveData() {

			
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.addPipelayout.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.updatePipelayout.biz.ext";
			}
			form.validate();
			if (form.isValid() == false)
				return;
form = new nui.Form("#dataform" + flag);
			var data = form.getData(false, true);
			data.pipelayout.jd = getCookie('jdid');
			data.pipelayout.statisticstype = statisticstype;
			data.pipelayout.model = model;
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
								//CloseWindow("saveFailed");
							}
						});
					}
				},error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							});
						 }
			});
		}

		//页面间传输json数据
		function setFormData(data) {
			$("[id^='dataform']").hide();
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);

			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);

			//如果是点击编辑类型页面
			if (infos.pageType == "edit") {
				var json = infos.record;

				var form = new nui.Form("#dataform" + infos.pageflg);//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
			}
			model = infos.model;
			flag = infos.pageflg;
			$("#dataform" + infos.pageflg).show();
			if (infos.pageflg == "1") {
				statisticstype = "全部管束&八分之一抽样点";
			} else if (infos.pageflg == "3") {
				statisticstype = "泥渣区";
			} else if (infos.pageflg == "4") {
				statisticstype = "拉杆区";
			} else if (infos.pageflg == "5") {
				statisticstype = "遮挡区";
			}
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

		//取消
		function onCancel() {
			CloseWindow("cancel");
		}
		function selectall_fun(value, e) {
			// 			if (e.text == "最外围两圈100%" || e.text == "次外围两圈50%（A类）"
			// 					|| e.text == "次外围两圈50%（B类）") {
			// 				statisticstype = e.text + "_外围抽样";
			// 			} else {
			// 				statisticstype = e.text;
			// 			}

		}
	</script>
</body>
</html>
