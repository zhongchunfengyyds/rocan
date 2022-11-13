<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-10-15 14:27:05
- Description:
    --%>
<head>
<title>SG二次异物管理</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script> 
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
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
		<input class="nui-hidden" name="foreignmattermg.uuid" />
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<input class="nui-hidden" id="fodisimgfileid" name="foreignmattermg.fodisimgfileid" />
			<input class="nui-hidden" id="fileid" name="foreignmattermg.fileid" />
			<tr>
				<td class="form_label">大修轮次:</td>
				<td colspan="1"><input id="overhaulsq" onvalidation="hasIllegalChar(e,12,true,true)" onvaluechanged="setFO" class="nui-textbox" style="width:100%"
				required="true" requiredErrorText="请输入"  emptyText="请输入大修轮次"
					name="foreignmattermg.overhaulsq" /></td>
				<td class="form_label">功能位置:</td>
				<td colspan="1">
					<input class="nui-textbox" emptyText="选选择生成功能位置"
				style="width: 70%; float: left;" 
				id="functionpostion" name="foreignmattermg.funposition" /> <input
				class="nui-dictcombobox" style="width: 30%; float: left;"
				required="true" requiredErrorText="请输入"  id = "funselect" 
				dictTypeId="functionpostion" onvaluechanged="functionpostionchange" />
				<input
					id = "funselect_ts" required="true" requiredErrorText="请输入名称"
					class="nui-dictcombobox" style="width: 30%; float: left;display: none"
					dictTypeId="functionpostion_ts" onvaluechanged="functionpostionchange" />
					
					</td>
			</tr>
			<tr>
				<td class="form_label">FO编号:</td>
				<td colspan="1"><input id="focde" onvalidation="hasIllegalChar(e,32,true,true)" readonly="readonly"class="nui-textbox" style="width:100%"
				required="true" requiredErrorText="请输入"  emptyText="请输入FO编号"
					name="foreignmattermg.focde" /></td>
				<td class="form_label">检查阶段:</td>
				<td colspan="1"><input class="nui-dictcombobox" style="width:100%"
				required="true" requiredErrorText="请输入" emptyText="请输入检查阶段"
					dictTypeId="checkstage" name="foreignmattermg.checkstage" /></td>
			</tr>
			<tr>
				<td class="form_label">是否取出:</td>
				<td colspan="1"><input class="nui-dictcombobox" style="width:100%"
				required="true" requiredErrorText="请输入" emptyText="请输入是否取出"
					dictTypeId="ISORNO" name="foreignmattermg.istakeout" /></td>
					<td class="form_label">FO属性:</td>
				<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,32,false,true)"
				style="width:100%"
				 
					name="foreignmattermg.foattribute" /></td>
			</tr>
			<tr>
				<td class="form_label">FO尺寸:</td>
				<td colspan="1"><input class="nui-textbox" style="width:100%"
				 	onvalidation="hasIllegalChar(e,12,false,true)"
					name="foreignmattermg.fosize" /></td>
				<td class="form_label">FO重量（g）:</td>
				<td colspan="1"><input class="nui-textbox" emptyText="请输入数字" vtype="float" floatErrorText="只可以输入数字" style="width:100%"
				 onvalidation="hasIllegalChar(e,46,false,true)"
					name="foreignmattermg.fokg" /></td>
			</tr>
			<tr>
				<td class="form_label">FO位置:</td>
				<td colspan="3"><input class="nui-textarea" style="width:100%" onvalidation="hasIllegalChar(e,4000,false,true)"
					name="foreignmattermg.foposition" /></td>
			</tr>
			<tr>
				<td class="form_label">FO分布图:</td>
				<td colspan="3">
				<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
				<div style="display: flex;">
					<input class="nui-textbox" readonly="readonly" style="width:100%"  id="fodisimgfjname" name="foreignmattermg.fodisimgfj" />
					<form id="uploadform" enctype="multipart/form-data">
						<input id="fodisimgfj" class="" style="" type="file" name="foreignmattermg.fodisimgfj" accept="*" onchange="fileSub(this)"> 
					</form>
				</div>
			</tr>
			<tr>
				<td class="form_label">相关图片:</td>
				<td colspan="3">
				<div id="progress2" class="progress" style="display:none;background:chartreuse;">
								        <div class="progress-item"></div>
							 </div>
				<div style="display: flex;">
					<input class="nui-textbox" readonly="readonly" style="width:100%"  id="fj" name="foreignmattermg.fj" />
					<form id="uploadform1" enctype="multipart/form-data">
						<input id="fj" class="" style="" type="file" name="foreignmattermg.fj" accept="*" onchange="fileSub1(this)"> 
					</form>
				</div>
			</tr>
			<tr>
				<td class="form_label">备注:</td>
				<td colspan="3"><input class="nui-textarea" style="width:100%" onvalidation="hasIllegalChar(e,4000,false,true)"
					name="foreignmattermg.remake" /></td>
			</tr>
			<tr class="changeReasons" style="display: none;">
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%" onvalidation="hasIllegalChar(e,512,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入修改原因"
					name="foreignmattermg.changeReason" /></td>
			</tr>
			<tr class="changeReasons" style="display: none;">
			<td class="form_label">校核人员</td>
					 <td colspan="3">
                        <input class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请输入校核人员"  valueField="empid"/>
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
						class="nui-button btn btn-default btn-xs" id="savebt" onclick="onOk('manualActivity')"> 保存 </a> 
						<a class="nui-button btn btn-default btn-xs" id="draftbt"  onclick="onOk('')" id="btnSave">
                   保存至草稿
                    </a>  <a
						class="nui-button"  onclick="onCancel()">
							关闭</a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var typeFlag = false;
		var upFileWhich;
		var fileid = "";
		var fodisimgfileid = "";
		var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		if (jdid == "86") {
			nui.get("funselect").hide();
			nui.get("funselect_ts").show();
		} else {
			nui.get("funselect").show();
			nui.get("funselect_ts").hide();
		}
		
		function saveData(finishFirstActivityId) {
			var form = new nui.Form("#dataform1");
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.foreignmattermgbiz.addForeignmattermg.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			if(finishFirstActivityId!=""){
				form.setChanged(false);
				form.validate();
				if (form.isValid() == false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
			}			
			nui.get("#savebt").setEnabled(false);
			nui.get("#draftbt").setEnabled(false);
			var data = form.getData(false, true);
			data.foreignmattermg.jd = getCookie('jdid');
			data.foreignmattermg.jz = getCookie('jzid');
			data.foreignmattermg.isdel = "0";
			data.foreignmattermg.fodisimgfj = nui.get("fodisimgfjname").value;
			data.foreignmattermg.jhry = nui.get("jhry").text;
			data.foreignmattermg.ccry = nui.get("ccry").value;
			
			
			if(fodisimgfileid==""){
			}else{
				data.foreignmattermg.fodisimgfileid = fodisimgfileid;
			}
			
			data.foreignmattermg.fj = nui.get("fj").value;
			if(fileid==""){
			}else{
				data.foreignmattermg.fileid = fileid;
			}
			var json = nui.encode(data);
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.foreignmattermg_mfbiz.workForeig.biz.ext";
				var allInfo = {};
		        allInfo.data = data.foreignmattermg;
		        allInfo.isadmin=isadmin;
		        allInfo.finishFirstActivityId = finishFirstActivityId;
		        allInfo.processInstName = "SG二次测管板清洁度管理_异物管理_修改";
		        allInfo.processInstDesc = "SG二次测管板清洁度管理_异物管理_修改";
		        allInfo.processDefName = "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.foreignmattermgwork";
 		        allInfo.jhry = nui.get("jhry").text;
			   	allInfo.ccry = nui.get("ccry").value;
			   	json = nui.encode(allInfo);
			}
			$.ajax({
				url : urlStr,
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var returnJson = nui.decode(text);
					if (returnJson.exception == null) {
					nui.alert("提交成功", "系统提示", function(action){
						if (action == "ok" || action == "close") {
						if(isadmin=="false"){
							var param={uuid:data.foreignmattermg.uuid,processStatus:"0"};
			                var updatedata =nui.encode({data:param,entity:"com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg"});
			                //修改流程状态
			                $.ajax({
								url : "com.cgn.itmp.weldingmanagement.common.updateentity.biz.ext",
								type : 'POST',
								data : updatedata,
								cache : false,
								contentType : 'text/json',
								success : function(text) {
								}
							});
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
			var json = infos.record;
			var form = new nui.Form("#dataform1");//将普通form转为nui的form
			//如果是点击编辑类型页面
			if (infos.pageType == "edit") {
				if(isadmin=="true"){
		 			nui.get("#draftbt").hide();
		 			
		 		}else{
		 			nui.get("#draftbt").show();
		 			$("#savebt")[0].childNodes[0].innerHTML="提交";
		 		}
				typeFlag = true;
				if (jdid == "86") {
					nui.get("funselect_ts").setValue((data.record.foreignmattermg.funposition).slice(5, 8));
				} else {
					nui.get("funselect").setValue((data.record.foreignmattermg.funposition).slice(5, 8));
				}
				if(isadmin == "true"){
					$(".changeReasons").hide();
				}else{
					$(".changeReasons").show();
				}
				
				form.setData(json);
				form.setChanged(false);
			}else if(infos.pageType == "show"){
				typeFlag = true;
				$("#funselect").hide();
				$("#funselect_ts").hide();
				$(".changeReasons").hide();
				form.setData(json);
				form.setChanged(false);
				$("#savebt").hide();
				$("#draftbt").hide();
                $("#uploadform").hide();
                $("#uploadform1").hide();
                if(json.foreignmattermg.fodisimgfj != null){
	                $("#fodisimgfjname").find("span").find("input").css("color","blue").css("text-decoration","underline").css("cursor","pointer");
					$("#fodisimgfjname").bind("click",function(){
				       download(json.foreignmattermg.fodisimgfileid,json.foreignmattermg.fodisimgfj);
				    });
                }
                if(json.foreignmattermg.fj != null){
	                $("#fj").find("span").find("input").css("color","blue").css("text-decoration","underline").css("cursor","pointer");
					$("#fj").bind("click",function(){
				       download(json.foreignmattermg.fileid,json.foreignmattermg.fj);
				    });
                }
                
			    //设置表单只读模式
                labelModel(form);
			}else{
				typeFlag = false;
				$("#draftbt").hide();
				$(".changeReasons").hide();
			}
			nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
		}
	
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
		function onOk(finishFirstActivityId) {
			saveData(finishFirstActivityId);
		}

		//关闭
		function onCancel() {
			CloseWindow("cancel");
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
							nui.get("fodisimgfjname").setValue(data.list[0].name);
							nui.get("fodisimgfileid").setValue(data.list[0].uri);
							fodisimgfileid = data.list[0].uri;
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
		function fileSub1(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress2").css('display','');
			document.querySelector("#progress2 .progress-item").style.width = "0%";
   	    		$("#uploadform1").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
   		            processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress2', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress2 .progress-item").style.width = percent + "%";
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
		function functionpostionchange(e) {
			nui.get("functionpostion").setValue(
					getCookie('jzname') + "RCP" + e.selected.dictName + "GV");
		};
		function setFO(){
// 		if(typeFlag==true){
// 			return
// 		}
			var jdjz = {};
			jdjz.jd = getCookie('jdid');
			jdjz.jz = getCookie('jzid');
			jdjz.overhaulsq = nui.get("overhaulsq").value;
			var json = nui.encode({
				selectInfo : jdjz
			});
			$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.foreignmattermgbiz.querySerialnum.biz.ext",
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					nui.get("focde").setValue("");
					nui.get("focde").setValue("FO-"+nui.get("overhaulsq").getValue()+"-"+text.returnData.SERIALNUM);
				}
			});
		}
	</script>
</body>
</html>
