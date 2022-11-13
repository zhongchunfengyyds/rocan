<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-10-15 18:10:08
- Description:
    --%>
<head>
<title>螺栓/螺母检查计划管理</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script> 
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript">
	
</script>
<link type="text/css" href="<%=request.getContextPath()%>/css/themes/table.css" rel="stylesheet" />
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
		<input class="nui-hidden" name="screwplanmg.uuid" />
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<input class="nui-hidden" id="fileid" name="screwplanmg.fileid" />
			<tr>
				<td class="form_label">检查部位:</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="checkpostion"
				required="true" requiredErrorText="请输入名称" emptyText="请输入检查部位" style="width:100%"
					name="screwplanmg.checkposition" /></td>
					<td class="form_label">检查方法:</td>
				<td colspan="1">
					<input class="nui-dictcombobox" dictTypeId="trainsmg_checkmeth"
					required="true" requiredErrorText="请输入名称" emptyText="请输入检查方法" style="width:100%"
						name="screwplanmg.checkmethod" />
				</td>
					
				
			</tr>
			<tr>
				<td class="form_label">检查计划:</td>
				<td colspan="3">
				<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
					<div style="display: flex;">
						<input id="fj" readonly="readonly" class="nui-textbox" style="width:100%" name="screwplanmg.fj" />
						<form id="uploadform" enctype="multipart/form-data">
							<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)"> 
						</form>
					</div>
					
				</td>
			</tr>
			<tr>
				<td class="form_label">备注:</td>
				<td colspan="3"><input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,false,true)"
				 style="width:100%"
					name="screwplanmg.remake" /></td>
			</tr>      
			<tr class="changeReasons_yy" style="display: none;">
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%" onvalidation="hasIllegalChar(e,512,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入修改原因"
					name="screwplanmg.changeReason" /></td>
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
		var fileid = "";
		var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		if(isadmin=="true"){
 			nui.get("#draftbt").hide();
 			$("#savebt")[0].children[0].innerHTML="保存";
 		}
		
		function saveData(finishFirstActivityId) {


			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.screwplanmg.screwplanmgbiz.addScrewplanmg.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			form.validate();
			if(finishFirstActivityId!=""){
				if (form.isValid() == false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
			}
				nui.get("#savebt").setEnabled(false);
				nui.get("#draftbt").setEnabled(false);
			//编辑
			var data = form.getData(false, true);
			data.screwplanmg.jd = getCookie('jdid');
			data.screwplanmg.jz = getCookie('jzid');
			data.screwplanmg.isdel = "0";
			data.screwplanmg.fj = nui.get("fj").value;
			data.screwplanmg.jhry= nui.get("jhry").text;
			data.screwplanmg.ccry = nui.get("ccry").value;
			if(fileid==""){
			}else{
				data.screwplanmg.fileid = fileid;
			}
			var json = nui.encode(data);
			
			var processInstName="螺栓/螺母役检专项管理_检查计划_新增";
			var processDefName="com.cgn.itmp.inspectcomponentmanage.screwplanmg.addscrewplanmg";
			
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.inspectcomponentmanage.screwplanmg.screwplanmgbiz.workScrewplanmg.biz.ext";
// 				urlStr = "com.cgn.itmp.inspectcomponentmanage.trainsmg.trainsmgbiz.workTrainsmg.biz.ext";
				processInstName="螺栓/螺母役检专项管理_检查计划_修改";
		        processDefName="com.cgn.itmp.inspectcomponentmanage.screwplanmg.screwplanmg";
		       
				
			}
			var allInfo = {};
			allInfo.data = data.screwplanmg;
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
						CloseWindow("saveSuccess");
					} else {
						nui.alert("保存失败", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
							nui.get("#savebt").setEnabled(true);
							nui.get("#draftbt").setEnabled(true);	
								//CloseWindow("saveFailed");
							}
						});
					}
					
					if(pageType == "edit"){
					if(isadmin=="false"){
					 	var param={uuid:data.screwplanmg.uuid,processStatus:"0"};
		                var json =nui.encode({data:param,entity:"com.cgn.itmp.inspectcomponentmanage.screwplanmg.Screwplanmg"});
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
// 				nui.get("fj").setText(data.record.screwplanmg.fj);//加载附件名称
// 				nui.get("fname").setValue(data.record.screwplanmg.fj);
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

		//关闭
		function onCancel() {
			CloseWindow("cancel");
		}
		
    	function fileSub(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
//         		if (!/\.(xlsx||png||jpg||gif||doc||docx||zip)$/.test(fv)) {  
// 					 nui.alert("文件类型必须是gif,png,jpg,doc,docx,xlsx,zip中的一种");  
// 					 return false;  
// 				 }
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
							showimage(data.list[0].uri);
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} else {
				return false;
			}
		} 
		//显示图片预览
    	function showimage(uri){
    		
    		 var div = document.getElementById('imageBox');
    		 div.innerHTML ='<img id=imghead>';
             var img = document.getElementById('imghead');
             img.width  =125;
             img.height =50;
             img.src ="<%=request.getContextPath()%>/coframe/tools/preview.jsp?remoteFile="+uri; 
    	}
	</script>
</body>
</html>
