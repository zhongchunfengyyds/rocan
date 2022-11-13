<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-12-06 11:37:42
- Description:
    --%>
<head>
<title>监管要求管理录入</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
	<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
<!-- 	<link rel="stylesheet" type="text/css" href="/itmp/css/themes/cuc/jud.css"/> -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
<style type="text/css">
.mini-datepicker .mini-buttonedit-icon::before {
    content: none;
    background: none;
}
.btn-default {
    line-height: 16px;
    height: 18px !important;
    border-radius: 4px;
}
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
		<input class="nui-hidden" name="regulationrequirementsmgtnew.uuid" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<input class="nui-hidden" id="fileid" name="regulationrequirementsmgtnew.fileid" />
			<tr>
				<td class="form_label">监督检查窗口:</td>
				<td colspan="1"><input class="nui-textbox" style="width:100%" required="true"
					requiredErrorText="监督检查窗口不能为空" onvalidation="hasIllegalChar(e,128,true,true)"
					name="regulationrequirementsmgtnew.inswindow" /></td>
				<td class="form_label">适用机组:</td>
				<td colspan="1"><input class="nui-textbox" style="width:100%" required="true"
					requiredErrorText="适用机组不能为空" onvalidation="hasIllegalChar(e,128,true,true)"
					name="regulationrequirementsmgtnew.applyjz" /></td>
			</tr>
			<tr>
				<td class="form_label">文件编码:</td>
				<td colspan="1"><input class="nui-textbox" style="width:100%" required="true"
					requiredErrorText="文件编码不能为空" onvalidation="hasIllegalChar(e,128,true,true)"
					name="regulationrequirementsmgtnew.filecode" /></td>
				<td class="form_label">问题所在页码:</td>
				<td colspan="1"><input class="nui-textbox" style="width:100%" onvalidation="hasIllegalChar(e,64,false,true)"
					name="regulationrequirementsmgtnew.problempage" /></td>
			</tr>
			<tr>
				<td class="form_label">问题描述:</td>
				<td colspan="3"><input class="nui-textarea" style="width:100%;height:90px" 
				required="true" requiredErrorText="问题描述不能为空" onvalidation="hasIllegalChar(e,4000,true,true)"
					name="regulationrequirementsmgtnew.probleminfo" /></td>
			</tr>
			<tr>
				<td class="form_label">答复:</td>
				<td colspan="3"><input class="nui-textarea" style="width:100%;height:100px"
				required="true" requiredErrorText="答复不能为空" onvalidation="hasIllegalChar(e,4000,true,true)"
					name="regulationrequirementsmgtnew.reply" /></td>
			</tr>
			<tr>
				<td class="form_label">是否有后续行动:</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="SF" style="width:100%" required="true"
					requiredErrorText="是否有后续行动不能为空" onvalidation="hasIllegalChar(e,64,true,true)"
					name="regulationrequirementsmgtnew.isafteraction" /></td>
				<td class="form_label">后续行动负责人:</td>
				<td colspan="1"><input class="nui-textbox" style="width:100%" onvalidation="hasIllegalChar(e,64,false,true)"
					name="regulationrequirementsmgtnew.afteractionperson" /></td>
			</tr>
			<tr>
				<td class="form_label">检查/发文时间:</td>
				<td colspan="1"><input class="nui-datepicker" style="width:100%" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false"
					name="regulationrequirementsmgtnew.checktime" /></td>
				<td class="form_label">签发时间:</td>
				<td colspan="1"><input class="nui-datepicker" style="width:100%" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false"
					name="regulationrequirementsmgtnew.singtime" /></td>
			</tr>
			<tr>
				<td class="form_label">附件:</td>
				<td colspan="1">
				<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
				<div style="display: flex;">
					<input class="nui-textbox" style="width:100%"  id="fj" name="regulationrequirementsmgtnew.fj" onvalidation="hasIllegalChar(e,128,false,true)" />
					<form id="uploadform" enctype="multipart/form-data"> 
						<input id="fj" class="" style="width:100%" type="file" name="file" accept="*" onchange="fileSub(this)"> 
					</form>
				</div>
				</td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button btn btn-default btn-xs" id="savebt" onclick="onOk()"> 保存 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button btn btn-default btn-xs" onclick="onCancel()"> 关闭 </a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var fileid = "";

		function saveData() {

			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.dailyandoverhaul.overhaul.regulationrequirementsmgtnewbiz.addRegulationRequirementsMgtNEW.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.dailyandoverhaul.overhaul.regulationrequirementsmgtnewbiz.updateRegulationRequirementsMgtNEW.biz.ext";
			}
			form.validate();
			if (form.isValid() == false)
				return;
			nui.get("#savebt").setEnabled(false);
			var data = form.getData(false, true);
			data.regulationrequirementsmgtnew.jd = getCookie('jdid');
			data.regulationrequirementsmgtnew.isdel = "0";
			data.regulationrequirementsmgtnew.fj = nui.get("fj").value;
			if(fileid==""){
			}else{
				data.regulationrequirementsmgtnew.fileid = fileid;
			}
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
							nui.get("#savebt").setEnabled(true);
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
		function fileSub(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
   	    		$("#uploadform").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
   		            processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress .progress-item").style.width = percent + "%";
		                }, false);
		            }
		            return xhr;
		        },
					success : function(data) {
						if (data.code == 1) {
							nui.get("fj").setValue(data.list[0].name);
							nui.get("fileid").setValue(data.list[0].uri);
							fileid = data.list[0].uri;
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} else {
				nui.alert("请上传图片");
				return false;
			}
		} 
	</script>
</body>
</html>
