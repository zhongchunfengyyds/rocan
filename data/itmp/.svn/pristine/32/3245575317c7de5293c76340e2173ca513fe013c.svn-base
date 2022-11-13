<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-15 11:46:14
- Description:役检报告管理
    --%>
<head>
<title>TEquipmentbaseinformation录入</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
         <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
	<input class="nui-hidden" name="serviceinspectionreportmanagement.uuid" />
	<input class="nui-hidden" id="fpath"
		name="serviceinspectionreportmanagement.filepath" />
	<input class="nui-hidden" id="fname"
		name="serviceinspectionreportmanagement.filename" />
	<input class="nui-hidden" name="serviceinspectionreportmanagement.fj" />

	<table style="width: 100%; height: 100%; table-layout: fixed;"
		class="nui-form-table">
		<tr>
			<td class="form_label">基地:</td>
			<td colspan="1"><input id="jd" class="nui-combobox"
				name="serviceinspectionreportmanagement.jd"
				url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"
				textField="name" readonly="readonly" dataField="jsonObject" id="jd"
				valueField="id" onvaluechanged="reloadJz" style="width: 100%" /></td>
			<td class="form_label">机组:</td>
			<td colspan="1"><input class="nui-combobox"
				name="serviceinspectionreportmanagement.jz" required="true"
				requiredErrorText="机组不能为空" dataField="jsonObject"
				readonly="readonly" id="jz" textField="name" url="" valueField="id"
				style="width: 100%" /></td>
		</tr>
		<tr>
				
			<td class="form_label">大修轮次:</td>
			<td colspan="1"><input class="nui-textbox" emptyText="请输入大修轮次" onvalidation="hasIllegalChar(e,255,true,true)" name="serviceinspectionreportmanagement.overhaulsequence" required="required" requiredErrorText="大修轮次不能为空" style="width: 100%" /></td>
		
			<td class="form_label">报告类型:</td>
			<td colspan="1"><input class="nui-dictcombobox" dictTypeId="BGLX" emptyText="请选择报告类型" requiredErrorText="报告类型不能为空"
				name="serviceinspectionreportmanagement.reportingtype" required="required" style="width: 100%" /></td>
			</tr>
		<tr>
			<td class="form_label">报告名称:</td>
			<td colspan="3"><input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入报告名称" requiredErrorText="报告名称不能为空"
				name="serviceinspectionreportmanagement.reportingname" required="required" style="width: 100%" /></td>
		</tr>
		<tr>
			<td class="form_label">报告编码:</td>
			<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入报告编码" requiredErrorText="报告编码不能为空"
				name="serviceinspectionreportmanagement.reportcoding" required="required" style="width: 100%" /></td>
			<td class="form_label">版次:</td>
			<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入版次" requiredErrorText="版次不能为空"
				name="serviceinspectionreportmanagement.edition" required="required" style="width: 100%" /></td>
		</tr>
		<tr>
			<td class="form_label">附件:</td>
			<td colspan="3">
					<%-- <input id="fileName" class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" limitSize="100MB" 
                    flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect" 
                    uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"  
                    onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"  style="width:100%;" required="required"/>
                    <input class="nui-textbox"
				name="serviceinspectionreportmanagement.fj" style="width: 100%" visible="false"/> --%>
				<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
				<div style="display: flex;">	
					<input id="enclosure" class="nui-textbox" readOnly="readOnly" style="width: 100%" name="serviceinspectionreportmanagement.fj" />
					<input id="fileid" style="display: none" class="nui-textbox" name="serviceinspectionreportmanagement.fileid" />
					<form id="uploadform" enctype="multipart/form-data">
						<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)"> 
					</form>
				</div>
				
				</td>
			<input class="nui-hidden" name="serviceinspectionreportmanagement.isdel" value="0"/>
		</tr>
	</table>
	<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
		<table width="100%">
			<tr>
				<td style="text-align: center;" colspan="4"><a
					class="nui-button btn btn-default btn-xs" id="savebt" onclick="onOk()"> 保存 </a> <span
					style="display: inline-block; width: 25px;"> </span> <a
					class="nui-button" onclick="onCancel()">
						取消 </a></td>
			</tr>
		</table>
	</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		nui.get("jd").setValue(jdid);
		nui.get('jz').setAjaxType("POST");
		nui.get('jz').load(
				"com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="
						+ jdid);
		nui.get("jz").setValue(jzid);

		
		
		
		function saveData() {
			
			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.serviceinspectionreportmanagementbiz.addServiceinspectionreportmanagement.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.inspectcomponentmanage.serviceinspectionreportmanagementbiz.updateServiceinspectionreportmanagement.biz.ext";
			}
			form.validate();
			  if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}

			var data = form.getData(false, true);
			var json = nui.encode(data);
			nui.get("#savebt").setEnabled(false);
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
								nui.get("#savebt").setEnabled(true);	
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
		
		function onfileselect(){
						startUpload();
					}
					function startUpload(e) {
					
				        var fileupload = nui.get("fileName");
				        fileupload.startUpload();
				    }
				    //上传成功时，回写附件的name、id
				  function onUploadSuccess(e){
					var appIconName = e.file.name;

					var appIconPath = nui.decode(e.serverData).ret.filePath;
					//var appIconData = nui.decode(e.serverData).ret.fileValue;
					nui.get("fpath").setValue(appIconPath);
					nui.get("fname").setValue(appIconName);
				}
		
		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);
			var json = infos.record;

			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);

			//如果是点击编辑类型页面
			if (infos.pageType == "edit") {
			nui.get("enclosure").setValue(json.serviceinspectionreportmanagement.fileRealName);
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
		
		function fileSub(file){
	var  fv=file.value;
	if(fv){
	$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
// 		 if (!/\.(xlsx||png||jpg||gif||doc||docx||zip)$/.test(fv)) {  
// 			 	nui.alert("文件类型必须是gif,png,jpg,doc,docx,xlsx,zip中的一种");  
// 			 return false;  
// 		 }
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
					nui.get("enclosure").setValue(data.list[0].name);
					nui.get("fileid").setValue(data.list[0].uri);
				} else {
					nui.alert("上传失败:" + data.message);
				}
			}
		});
	} else {
		return false;
	}
} 
	</script>
</body>
</html>
