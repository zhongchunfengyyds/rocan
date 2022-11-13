<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-10-19 16:57:13
- Description:
    --%>
<head>
<title>Entity录入</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript">
	
</script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet"
</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="pipebaseinfo.uuid" />
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
<!-- 			<tr> -->
<!-- 				<td class="form_label">基地</td> -->
<!-- 				<td colspan="1"><input class="nui-combobox" -->
<!-- 					style="width: 100%" name="pipebaseinfo.jdid" -->
<!-- 					url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" -->
<!-- 					textField="name" dataField="jsonObject" id="jdid" -->
<!-- 					valueField="id" onvaluechanged="reloadJz" /></td> -->
<!-- 				<td class="form_label">机组</td> -->
<!-- 				<td colspan="1"><input class="nui-combobox" style="width: 100%" -->
<!-- 					name="pipebaseinfo.jzid" required="true" requiredErrorText="机组不能为空" -->
<!-- 					dataField="jsonObject" id="jzid" textField="name" multiSelect="true" -->
<!-- 					url="" valueField="id" /></td> -->

<!-- 			</tr> -->
			<tr>
				<td class="form_label">蒸发器型号:</td>
				<td colspan="3"><input class="nui-textbox"
					style="width: 100%" dictTypeId="evaporator_model"
					name="pipebaseinfo.model" /></td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button" onclick="onOk()"> 保存 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button" onclick="onCancel()">关闭</a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();

		function saveData() {

			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.pipebaseInfo.pipebaseinfobiz.addPipeBaseInfo.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.inspectcomponentmanage.pipebaseInfo.pipebaseinfobiz.updatePipeBaseInfo.biz.ext";
			}
			form.validate();
			if (form.isValid() == false)
				return;

			var data = form.getData(false, true);
// 			data.pipebaseinfo.jd = getCookie('jdid');
// 			data.pipebaseinfo.jdname = getCookie('jdname');
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
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);

			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);

			//如果是点击编辑类型页面
			if (infos.pageType == "edit") {
				var json = infos.record;

				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
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

		//关闭
		function onCancel() {
			CloseWindow("cancel");
		}
		 function reloadJz(e) {

        var jdid = nui.get('jdid').getValue();
        var jzid = nui.get("jzid").getValue();
        nui.get('jzid').setValue("");
        var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
        nui.get('jzid').setUrl(url);
        nui.get('jzid').setValue(jzid);
    }
	</script>
</body>
</html>
