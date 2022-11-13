<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-10-15 18:22:58
- Description:
    --%>
<head>
<title>Entity录入</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script> 
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript">
	
</script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
<style type="text/css">
	textarea{
overflow:auto;
}
</style>
</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="trainsmg.uuid" />
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">检查部位:</td>
				<td colspan="1"><input class="nui-dictcombobox" onvalidation="hasIllegalChar(e,4000,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入检查部位" style="width:100%"
					name="trainsmg.checkpostion" dictTypeId="checkpostion" /></td>
				<td class="form_label">检查方法:</td>
				<td colspan="1"><input class="nui-dictcombobox"
				required="true" requiredErrorText="请输入名称" emptyText="请输入检查方法" style="width:100%"
					dictTypeId="trainsmg_checkmeth" name="trainsmg.checkmethond" /></td>
			</tr>
			<tr>
				<td class="form_label">螺栓/螺母标识号:</td>
				<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入螺栓/螺母标识号" style="width:100%"
					name="trainsmg.screwiden" /></td>
				<td class="form_label">缺陷显示首次出现的大修轮次:</td>
				<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入缺陷显示首次出现的大修轮次" style="width:100%"
					name="trainsmg.overhaulsq" /></td>
			</tr>
			<tr>
				<td class="form_label">显示位置:</td>
				<td colspan="3"><input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入显示位置" style="width:100%"
					name="trainsmg.shoupostion" /></td>
			</tr>
			<tr>
				<td class="form_label">跟踪检查计划及结果第1次:</td>
				<td colspan="3"><input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入跟踪检查计划及结果第1次" style="width:100%"
					name="trainsmg.planone" /></td>
			</tr>
			<tr>
				<td class="form_label">跟踪检查计划及结果第2次:</td>
				<td colspan="3"><input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入跟踪检查计划及结果第2次" style="width:100%"
					name="trainsmg.plantwo" /></td>
					</tr>
			<tr>
				<td class="form_label">跟踪检查计划及结果第3次:</td>
				<td colspan="3"><input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入跟踪检查计划及结果第3次" style="width:100%"
					name="trainsmg.planthree" /></td>
			</tr>
			<tr>
				<td class="form_label">备注:</td>
				<td colspan="3"><input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,false,true)"
				style="width:100%"
					name="trainsmg.remake" /></td>
			</tr>
		<tr class="changeReasons_yy" style="display: none;">
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%" onvalidation="hasIllegalChar(e,4000,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入修改原因"
					name="trainsmg.changeReason" /></td>
			</tr>
			<tr class="changeReasons" style="display: none;">
			<td class="form_label">校核人员</td>
					 <td colspan="3">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请输入校核人员"  valueField="empid"/>
                    </td>
				</tr>
				<tr class="changeReasons" style="display: none;">
				<td class="form_label" colspan="1"
					style="width: 16% !important; text-align: center">选择抄送人员:</td>
				<td colspan="3"><input property="editor" id="ccry" multi="true"
					name="copyperson" class="nui-textboxlist" dataField="list"
					style="width: 100%; height: 100%;"
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
					valueField="empcode" textField="empcodename" ScrollBar="Vertical"
					searchField="keyword" /></td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button btn btn-default btn-xs" id="savebt"  onclick="onOk('manualActivity')"> 提交 </a> 
						<a class="nui-button btn btn-default btn-xs" id="draftbt"  onclick="onOk('')" >
                   保存至草稿
                    </a>  <a
						class="nui-button"  onclick="onCancel()">
							关闭 </a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		if(isadmin=="true"){
 			nui.get("#draftbt").hide();
 			$("#savebt")[0].children[0].innerHTML="保存";
 		}else{
 			nui.get("#draftbt").show();
 			
 		}
		function saveData(finishFirstActivityId) {
		
			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			if(finishFirstActivityId!=""){
				form.validate();
				if (form.isValid() == false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
			}
				nui.get("#savebt").setEnabled(false);
				nui.get("#draftbt").setEnabled(false);
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.trainsmg.trainsmgbiz.addTrainsmg.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			var data = form.getData(false, true);
			data.trainsmg.jd = getCookie('jdid');
			data.trainsmg.jz = getCookie('jzid');
			data.trainsmg.jhry= nui.get("jhry").text;
			data.trainsmg.ccry = nui.get("ccry").value;
			data.trainsmg.isdel = "0";
			var json = nui.encode(data);
			
			var processInstName="螺栓/螺母役检专项管理_跟踪管检查管理_新增";
			var processDefName="com.cgn.itmp.inspectcomponentmanage.trainsmg.addTrainsmgwork";
			
			if (pageType == "edit") {
// 				urlStr = "com.cgn.itmp.inspectcomponentmanage.screwplanmg.screwplanmgbiz.workScrewplanmg.biz.ext";
				urlStr = "com.cgn.itmp.inspectcomponentmanage.trainsmg.trainsmgbiz.workTrainsmg.biz.ext";
				processInstName="螺栓/螺母役检专项管理_跟踪管检查管理_修改";
		        processDefName="com.cgn.itmp.inspectcomponentmanage.trainsmg.trainsmgwork";
		       
			}

				
				var allInfo = {};
		        allInfo.data = data.trainsmg;
		        allInfo.isadmin=isadmin;
		        allInfo.finishFirstActivityId = finishFirstActivityId;
		        allInfo.processInstName = processInstName;
		        allInfo.processInstDesc = processInstName;
		        allInfo.processDefName = processDefName;
 		        allInfo.jhry = nui.get("jhry").text;
			   	allInfo.ccry = nui.get("ccry").value;
			   	json = nui.encode(allInfo);
		
				
			$.ajax({
				url : urlStr,
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var returnJson = nui.decode(text);
					if (returnJson.exception == null) {
					nui.alert("保存成功", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
								if (pageType == "edit") {
								if(isadmin=="false"){
									var param={uuid:data.trainsmg.uuid,processStatus:"0"};
					                var json =nui.encode({data:param,entity:"com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg"});
					                //修改焊接申请得流程状态
					                $.ajax({
										url : "com.cgn.itmp.weldingmanagement.common.updateentity.biz.ext",
										type : 'POST',
										data : json,
										cache : false,
										contentType : 'text/json',
										success : function(text) {
										}
									});
									}
								}
							
								CloseWindow("saveSuccess");
							}
						});
					} else {
						nui.alert("保存失败", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
							nui.get("#savebt").setEnabled(true);
							nui.get("#draftbt").setEnabled(true);	
								//CloseWindow("saveFailed");
							}
						});
					}
				},error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							 nui.get("#savebt").setEnabled(true);
							nui.get("#draftbt").setEnabled(true);
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
				if(isadmin == "true"){
					$(".changeReasons").hide();
				}else{
					$(".changeReasons").show();
					$(".changeReasons_yy").show();
				}
				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
			}else{
				if(isadmin == "true"){
					$(".changeReasons").hide();
				}else{
					$(".changeReasons").show();
				}
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
		function onOk(finishFirstActivityId) {
			saveData(finishFirstActivityId);
		}

		//取消
		function onCancel() {
			CloseWindow("cancel");
		}
	</script>
</body>
</html>
