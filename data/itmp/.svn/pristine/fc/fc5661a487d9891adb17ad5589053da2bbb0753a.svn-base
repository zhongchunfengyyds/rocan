<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-10 11:54:19
- Description:
    --%>
<head>
<title>内外部经验录入</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
	 <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
 <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
 <script type="text/javascript" src="<%= request.getContextPath()%>/knowledgebase/knowledgebase/encyclopedia/common.js"></script>
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
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<input class="nui-hidden" name="in_exexperience.uuid" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<input class="nui-hidden" id="fpath" name="in_exexperience.filepath" />
			<input class="nui-hidden" id="fname" name="in_exexperience.enclosure" />
			<tr>
				<td class="form_label">文件来源:</td>
				<td colspan="1">
				<input class="nui-combobox" id="combox1" name="in_exexperience.filesource"  style="width: 100%"
				data = "" readonly="readonly" requiredErrorText="文件来源不能为空"  onvalidation="hasIllegalChar(e,128,true,true)" required="true"/></td>
				<td class="form_label">文件编码:</td>
				<td colspan="1"><input class="nui-textbox" name="in_exexperience.filecode"  onvalidation="hasIllegalChar(e,255,false,true)" style="width: 100%" /></td>
			</tr>
			<tr>
				<td class="form_label">文件名称:</td>
				<td colspan="3"><input class="nui-textbox"
					name="in_exexperience.filename" required="true" style="width: 100%"  onvalidation="hasIllegalChar(e,255,true,true)" requiredErrorText="文件名称不能为空" emptyText="请输入文件名称"/></td>
			</tr>
			<tr>
				<td class="form_label">摘要/说明:</td>
				<td colspan="3"><input class="nui-textarea"
					name="in_exexperience.summary_note" style="width: 100%"  onvalidation="hasIllegalChar(e,4000,true,true)" required="true" requiredErrorText="摘要/说明不能为空" emptyText="请输入摘要/说明"/></td>
			</tr>
			<tr>
				<td class="form_label">附件:</td>
				<td colspan="3">
				
				
				<%-- <input id="enclosure" buttonText="浏览"
					property="editor" class="nui-fileupload nui-form-input"
					name="uploadFile" limitType="*.*" limitSize="100MB"
					uploadOnSelect="true"
					flashUrl="<%=request.getContextPath()%>/js/swfupload/swfupload.swf"
					onfileselect="onfileselect"
					uploadUrl="<%=request.getContextPath()%>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
					onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
					onuploadcomplete="onuploadcomplete" style="width: 100%;" /> <input
					class="nui-textbox" name="in_exexperience.enclosure" visible="false" /> --%>
					<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
					<div style="display: flex;">	
							<input id="enclosure" class="nui-textbox" readonly="readonly" style="width: 100%"  onvalidation="hasIllegalChar(e,100,false,true)" name="in_exexperience.enclosure" />
							<input id="fileid" style="display: none" class="nui-textbox" name="in_exexperience.fileid" />
							<form id="uploadform" enctype="multipart/form-data">
								<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)"> 
							</form>
							</div>
					</td>
				</tr>	
				<tr>
				<td class="form_label">备注:</td>
				<td colspan="3">
				<input class="nui-textarea" style ="width :100%"
					name="in_exexperience.remarks"  onvalidation="hasIllegalChar(e,4000,true,true)" /></td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button" onclick="onOk()" id="btnSave"> 保存 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button" onclick="onCancel()">
							关闭</a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var funName = "";
		var file;
		var filename;
		var fileid;

		var pageFlow = [{id:'信息通报',text:'信息通报'},
						{id:'EDF事件',text:'EDF事件'},
						{id:'技术资料',text:'技术资料'},
						{id:'INPO事件',text:'INPO事件'},
						{id:'EPRI技术报告',text:'EPRI技术报告'},
						{id:'WANO EO及报告',text:'WANO EO及报告'},
						{id:'PG信息共享',text:'PG信息共享'},
						{id:'来访出访资料',text:'来访出访资料'},
						{id:'EDF咨询单',text:'EDF咨询单'},
						{id:'其他信息',text:'其他信息'}];
		nui.get("combox1").setData(pageFlow);	

		function saveData() {
			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.knowledgebase.in_exexperiencebiz.addin_exExperience.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.knowledgebase.in_exexperiencebiz.updatein_exExperience.biz.ext";
			}
			form.validate();
			if(form.isValid()==false){
            	 nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
				 return;
			}

			var data = form.getData(false, true);
			data.in_exexperience.jd = getCookie('jdid');
			data.in_exexperience.funname = data.in_exexperience.filesource;
			var json = nui.encode(data);
			nui.get("btnSave").setEnabled(false);
			$.ajax({
				url : urlStr,
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
				 nui.get("btnSave").setEnabled(true);
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
							nui.get("btnSave").setEnabled(true);
							});
						 }
			});
		}

		function funNameIsExist(type){
			var isExist = false;
			for(var i = 0;i < pageFlow.length;i++){
				if(pageFlow[i].id == type){
					isExist = true;
					break;
				}
			}
			if(!isExist){
				pageFlow.push({id:type,text:type});
			}
			nui.get("combox1").setData(pageFlow);	
		}

		//页面间传输json数据
		function setFormData(data) {
			funName = data.funName;
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);

			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);
			funNameIsExist(infos.funName);
			nui.get("combox1").setValue(infos.funName);
			
			var json = infos.record;
			var form = new nui.Form("#dataform1");//将普通form转为nui的form
			//如果是点击编辑类型页面
			if (infos.pageType == "edit") {
				form.setData(json);
				form.setChanged(false);
			}else if (infos.pageType == "show") {
				form.setData(json);
				form.setChanged(false);
				$("#btnSave").hide();
                $("#uploadform").hide();
                if(json.in_exexperience.enclosure != null){
	                $("#enclosure").find("span").find("input").css("color","blue").css("text-decoration","underline").css("cursor","pointer");
					$("#enclosure").bind("click",function(){
				       download(json.in_exexperience.fileid,json.in_exexperience.enclosure);
				    });
                }
			    //设置表单只读模式
                labelModel(form);
			}
			nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
		}

//附件下载
		function download(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
			 elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
			 document.body.appendChild(elemIF);
			 elemIF.style.display = "none";
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

		//选择文件
		function onfileselect(e) {

			startUpload(e);
		}
		//上传
		function startUpload(e) {
			var fileupload = e.sender;

			fileupload.startUpload();
		}
// 		//上传成功时，回写附件的name、id
		function onUploadSuccess(e) {
			var appIconName = e.file.name;
			var appIconPath = nui.decode(e.serverData).ret.filePath;
			nui.get("fpath").setValue(appIconPath);
			nui.get("fname").setValue(appIconName);
			fileid = e.file.fileid;
			
			fileName = e.file.name;
			filePath = nui.decode(e.serverData).ret.filePath;
			var json = {};
			json.filename = fileName;
			json.filepath = filePath;
			json = nui.encode(json);
			$.ajax({
				url : "com.cgn.itmp.basecommon.FileComp.addFile.biz.ext",
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					fileid = text.fileid;
				}
			});
			
		}

		function onuploadcomplete(e) {

		}
		//编辑加载文件
		function onCellBeginEdit(e) {
			var field = e.field, value = e.value;

			if (field == "enclosure") {
				file = e;
			}
		}
		
		function fileSub(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
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
