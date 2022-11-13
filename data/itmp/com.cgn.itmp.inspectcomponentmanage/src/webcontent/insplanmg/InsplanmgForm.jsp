<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-10-15 10:42:52
- Description:
    --%>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script> 
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
	
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
		<input class="nui-hidden" name="insplanmg.uuid" />
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<input class="nui-hidden" id="fileid" name="insplanmg.fileid" />
			<tr>
				<td class="form_label">大修轮次:</td>
				<td colspan="1"><input class="nui-textbox" style="width:100%" onvalidation="hasIllegalChar(e,255,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入大修轮次"
					name="insplanmg.overhaulsq" /></td>
				<td class="form_label">检查阶段:</td>
				<td colspan="1"><input class="nui-dictcombobox"
				multiSelect="true" id="pipemodel"
				 valueField="dictID" textField="dictName"  
					required="true" requiredErrorText="请输入名称" emptyText="请输入大修轮次" dictTypeId="checkstage"
					style="width: 100%" name="insplanmg.insphase" />
					</td>
			</tr>
			<tr>
				<td class="form_label">检查范围:</td>
				<td colspan="1">
				<input class="nui-dictcombobox"
				multiSelect="true" id="pipemodel"
				 valueField="dictID" textField="dictName"  
					required="true" requiredErrorText="请输入名称" emptyText="请输入检查范围" dictTypeId="insscope"
					style="width: 100%" name="insplanmg.insscope" />
				</td>
				<td class="form_label">冲洗后管间检查计划:</td>
				<td colspan="1">
				<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
				<div style="display: flex;">
					<input class="nui-textbox" readonly="readonly" style="width:100%"  id="fj" name="insplanmg.fj" />
					<form id="uploadform" enctype="multipart/form-data">
						<input id="fj" class="" style="width:100%" type="file" name="file" accept="*" onchange="fileSub(this)"> 
					</form>
				</div>
				</td>
			</tr>
			<tr>
				<td class="form_label">备注:</td>
				<td colspan="3"><input class="nui-textarea" style="width:100%" onvalidation="hasIllegalChar(e,4000,false,true)"
					name="insplanmg.remake" /></td>
			</tr>
			<tr class="changeReasons" style="display: none;">
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%" onvalidation="hasIllegalChar(e,4000,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入修改原因"
					name="insplanmg.changeReason" /></td>
			</tr>
			<tr class="changeReasons" style="display: none;">
			<td class="form_label">校核人员</td>
					 <td colspan="3">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请输入校核人员"  valueField="empid"/>
                    </td>
<!-- 				<td colspan="4"> -->
<!-- 					<div style="flex-direction: row;display: flex;"> -->
<!-- 						<button id="btnEdit1" class="nui-button" onClick="onButtonEdit">校核人</button> -->
<!-- 						<span id="result"></span> -->
<!-- 						<div id="template" style="display: none;"> -->
<!-- 							<div class="emp" > -->
<!-- 								<span class="emp-id" style="display: none;"></span> -->
<!-- 								<span class="emp-name" style="padding:3px 3px;"></span> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</td> -->
				</tr>
				<tr class="changeReasons">
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
						class="nui-button btn btn-default btn-xs" id="savebt"  onclick="onOk('manualActivity')">保存 </a> 
						<span
						style="display: inline-block; width: 25px;"> </span>
						<a class="nui-button btn btn-default btn-xs" id="draftbt"  onclick="onOk('')" >
                   保存至草稿
                    </a> 
                    <span
						style="display: inline-block; width: 25px;"> </span>
						 <a
						class="nui-button" onclick="onCancel()">
							关闭</a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
				window.addEventListener("message",function(e){
		},false);
	</script>
	<script type="text/javascript">
		nui.parse();
		var fileid = "";
 		var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
 		
		
		function saveData(finishFirstActivityId) {

			
			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmgbiz.addInsplanmg.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			if(finishFirstActivityId!=""){
				form.validate();
				if (form.isValid() == false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
			}
			nui.get("#savebt").setEnabled(false);
			nui.get("#draftbt").setEnabled(false);
			var data = form.getData(false, true);
			data.insplanmg.jd = getCookie('jdid');
			data.insplanmg.jz = getCookie('jzid');
			data.insplanmg.jhry= nui.get("jhry").text;
			data.insplanmg.ccry = nui.get("ccry").value;
			data.insplanmg.isdel = "0";
			data.insplanmg.fj = nui.get("fj").value;
			
			if(fileid!=""){
				data.insplanmg.fileid = fileid;
			}
			var json = nui.encode(data);
			//编辑
			if (pageType == "edit") {
// 				urlStr = "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmgbiz.updateInsplanmg.biz.ext";
				urlStr = "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.workInsplanmg.biz.ext";
				var allInfo = {};
		        allInfo.data = data.insplanmg;
		        allInfo.isadmin=isadmin;
		        allInfo.finishFirstActivityId = finishFirstActivityId;
		        allInfo.processInstName = "SG二次侧管板清洁度役检专项管理_检查计划管理_修改";
		        allInfo.processInstDesc = "SG二次侧管板清洁度役检专项管理_检查计划管理_修改";
		        allInfo.processDefName = "com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg";
 		        allInfo.jhry = nui.get("jhry").text;
			   	allInfo.ccry = nui.get("ccry").value;
		        
			   	
			   	json = nui.encode(allInfo);
			} else {
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
						nui.alert("保存成功", "系统提示", function(action) {
						if (action == "ok" || action == "close") {
							if (pageType == "edit") {
							if(isadmin=="false"){
								var param={uuid:data.insplanmg.uuid,processStatus:"0"};
				                var updatedata =nui.encode({data:param,entity:"com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg"});
				                //修改焊接申请得流程状态
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
							}
						}
					});
				
						CloseWindow("saveSuccess");
					} else {
						nui.alert("保存失败", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
							nui.get("#savebt").setEnabled(true);
							nui.get("#draftbt").setEnabled(true);
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
				if(isadmin == "true"){
					$(".changeReasons").hide();
					nui.get("#draftbt").hide();
 					
				}else{
					nui.get("#draftbt").show();
 					$("#savebt")[0].children[0].innerHTML="提交";
					$(".changeReasons").show();
				}
				
// 				$("#fj").val(data.record.insplanmg.fj);
// 				nui.get("fj").setText(data.record.insplanmg.fj);
// 				nui.get("fname").setValue(data.record.insplanmg.fj);
				var json = infos.record;

				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
			}else{
			
				$(".changeReasons").hide();
				$("#draftbt").hide();
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

		//关闭
		function onCancel() {
			CloseWindow("cancel");
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
