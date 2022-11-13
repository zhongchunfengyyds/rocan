<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-08-06 11:44:02
- Description:
    --%>
<head>
<title>Entity录入</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>

</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<input name="gridarr" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<input class="nui-hidden" name="inspecomponentmenutree.uuid" />
		<input id='orderno' class="nui-hidden" name="inspecomponentmenutree.orderno"/>
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<!-- <td class="form_label">部件类型:</td>
				<td colspan="1"><input class="nui-textbox"
					name="inspecomponentmenutree.componenttype" required="required"/></td> -->
				<td class="form_label">设备名称:</td>
				<td colspan="1"><input class="nui-textbox" id="sbmc" emptyText="请输入设备名称" style="width:100%"
					onvalidation="hasIllegalChar(e,255,true,true)"
					name="inspecomponentmenutree.devicename" required="required" requiredErrorText="设备名称不能为空"/></td>
				<td class="form_label">部件名称:</td>
				<td colspan="1"><input class="nui-textbox" id="bjmc" emptyText="请输入部件名称" style="width:100%"
				onvalidation="hasIllegalChar(e,255,true,true)"
					name="inspecomponentmenutree.partname" required="required" requiredErrorText="部件名称不能为空"/></td>
			</tr>
			<tr>
				<td class="form_label">被检部位:</td>
				<td colspan="1"><input class="nui-textbox" id="bjbw" emptyText="请输入被检部位" style="width:100%"
				onvalidation="hasIllegalChar(e,255,true,true)"
					name="inspecomponentmenutree.detectedsite" required="required" requiredErrorText="被检部位不能为空"/></td>
				<!-- <td class="form_label">检查方法:</td>
				<td colspan="1"><input class="nui-textbox"
					name="inspecomponentmenutree.inspectionmethod" required="required"/></td> -->
				<td style="visibility: hidden;height: 1px;overflow: hidden;" colspan="1">
					<input value="0" class="nui-hidden" name="inspecomponentmenutree.isdel" />
				</td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button" id="savebt" onclick="onOk()"> 保存 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button" onclick="onCancel()">
							关闭</a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		 var jdid = getCookie('jdid');
	     var jzid = getCookie('jzid');
		/* var jdid = "82";
		var jzid = "83"; */
		function saveData() {

			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutreebiz.addInspecomponentmenutreeByLocation.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			var gridarr=nui.getbyName("gridarr").getValue();//获取之前页面的台账数据
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutreebiz.updateInspecomponentmenutree.biz.ext";
			}
			form.validate();
			if (form.isValid() == false){ 
				nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;
				return;
			}
			var data = form.getData(false, true);
			if(gridarr!=null){
				for (var i = 0; i < gridarr.length; i++) {
					if(data.inspecomponentmenutree.devicename==gridarr[i].devicename&&data.inspecomponentmenutree.partname==gridarr[i].partname&&
					data.inspecomponentmenutree.detectedsite==gridarr[i].detectedsite){
						nui.alert("该设备部件类型下被检部位已存在，无需重复新增");
						nui.get("bjbw").setValue("");
						return;
					}							
				}
			}
			data.inspecomponentmenutree.jd = jdid;
			data.inspecomponentmenutree.jz = jzid;
			var json={};
			if(pageType == "add"){
				json= nui.encode({"data":data.inspecomponentmenutree,"entity":"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree",
				"entityName":"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree"});
			}
			if(pageType == "edit"){
				json = nui.encode(data);
			}
			nui.get("#savebt").setEnabled(false);//置灰色
			$.ajax({
				url : urlStr,
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var returnJson = nui.decode(text);
					if (returnJson.exception == null) {
						if(pageType=="add"){
							CloseWindow("addSuccess");
						}else if(pageType=="edit"){
							CloseWindow("updateSuccess");
						}
						
					} else {
					nui.get("#savebt").setEnabled(true);//恢复
						nui.alert("保存失败", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
								//CloseWindow("saveFailed");
							}
						});
					}
				},error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							 nui.get("#savebt").setEnabled(true);//恢复
							});
						 }
			});
		}

		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);
			var json = infos.record;
			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);
			nui.getbyName("gridarr").setValue(infos.gridarr);
			if(infos.pageType == "add"){
				nui.get('orderno').setValue(json.inspecomponentmenutree.orderno);
			}
			//如果是点击编辑类型页面
			if (infos.pageType == "edit") {

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

		//取消
		function onCancel() {
			CloseWindow("cancel");
		}
	</script>
</body>
</html>
