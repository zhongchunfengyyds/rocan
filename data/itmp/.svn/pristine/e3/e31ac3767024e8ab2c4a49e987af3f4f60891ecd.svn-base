<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-09-28 16:52:08
- Description:
    --%>
<head>
<title>蒸汽堵管统计</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
  <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
  <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script> <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
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
		<input class="nui-hidden" name="pipeblockage.uuid" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
			<input class="nui-hidden" id="fileid" name="pipeblockage.fileid" />
			<tr>
				<td class="form_label">蒸汽发生器型号:</td>
				<td colspan="1"><input class="nui-combobox"
									 id="pipemodel"
									textField="text" valueField="id"
					required="true" requiredErrorText="请输入名称" emptyText="请输入蒸汽发生器型号" dictTypeId="evaporator_model"
					style="width: 100%" name="pipeblockage.steamGeneratorModel" /></td>
				<td class="form_label">蒸汽发生器编号:</td>
				<td colspan="1"><input class="nui-textbox"
					style="width: 100%" onvalidation="hasIllegalChar(e,255,false,true)"
					name="pipeblockage.steamGeneratorNo" /></td>
			</tr>
			<tr>
				<td class="form_label">功能位置:</td>
				<td colspan="1"><input class="nui-textbox" emptyText="请输入生成功能位置"
				style="width: 70%; float: left;" 
				id="functionpostion" name="pipeblockage.funlocation" /> <input
				class="nui-dictcombobox" style="width: 30%; float: left;"
				required="true" requiredErrorText="请输入名称" id = "funselect" 
				dictTypeId="functionpostion" onvaluechanged="functionpostionchange" />
				<input
					id = "funselect_ts" required="true" requiredErrorText="请输入名称"
					class="nui-dictcombobox" style="width: 30%; float: left;display: none"
					dictTypeId="functionpostion_ts" onvaluechanged="functionpostionchange" />
				</td>
				<td class="form_label">传热管编号列（R）:</td>
				<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,12,true,true)"
					required="true" requiredErrorText="请输入数字" emptyText="请输入传热管编号列（R）" emptyText="请输入数字" style="width: 100%" name="pipeblockage.no_r" /></td>
			</tr>
			<tr>
				<td class="form_label">传热管编号行（C）:</td>
				<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,12,true,true)"
					required="true" requiredErrorText="请输入数字" emptyText="请输入传热管编号列（C）" emptyText="请输入数字" style="width: 100%" name="pipeblockage.no_c" /></td>
				<td class="form_label">缺陷类型:</td>
				<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,true,true)"
					required="true" requiredErrorText="请输入名称" emptyText="请输入缺陷类型" style="width: 100%"
					name="pipeblockage.defectTypes" /></td>
			</tr>
			<tr>
				<td class="form_label">缺陷尺寸:</td>
				<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,true,true)"
					required="true" requiredErrorText="请输入名称" emptyText="请输入缺陷尺寸" style="width: 100%"
					name="pipeblockage.defectSize" /></td>
				<td class="form_label">所在位置:</td>
				<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,true,true)"
					required="true" requiredErrorText="请输入名称" emptyText="请输入所在位置" style="width: 100%"
					name="pipeblockage.location" /></td>
			</tr>
			<tr>
				<td class="form_label">附件:</td>
				<td colspan="1">
				<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
				<div style="display: flex;">
					<input class="nui-textbox" readonly="readonly" style="width:100%"  id="fj" name="pipeblockage.fj" />
					<form id="uploadform" enctype="multipart/form-data">
						<input class="" style="width:100%" type="file" name="file" accept="*" onchange="fileSub(this)"> 
					</form>
				</div>
				</td>
				<td class="form_label">堵管时间:</td>
				<td colspan="1"><input class="mini-datepicker"
					required="true" requiredErrorText="请输入名称" emptyText="请输入堵管时间" style="width: 100%"
					name="pipeblockage.pluggingTime" /></td>
			</tr>
			<tr>
				<td class="form_label">堵管原因:</td>
				<td colspan="3"><input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,true,true)"
					required="true" requiredErrorText="请输入名称" emptyText="请输入堵管原因" style="width: 100%"
					name="pipeblockage.pluggingReason" /></td>
			</tr>
			<tr style="visibility: hidden; height: 1px; overflow: hidden;">
				<td style="visibility: hidden; height: 1px; overflow: hidden;"
					colspan="1"><input value="0" class="nui-hidden"
					name="pipeblockage.isdel" /></td>
			</tr>
					<tr class="changeReasons" style="display: none;">
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%" onvalidation="hasIllegalChar(e,4000,true,true)"
				required="true" requiredErrorText="请输入名称" emptyText="请输入修改原因"
					name="pipeblockage.changeReason" /></td>
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
						class="nui-button " id="savebt"   onclick="onOk('manualActivity')">保存</a> 
						<a class="nui-button btn btn-default btn-xs" id="draftbt"  onclick="onOk('')" style="display:none;" >
                   保存至草稿
                    </a>  <a
						class="nui-button "  onclick="onCancel()">
							关闭</a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var datas = {};
		datas.jd = getCookie('jdid');
		var myjsons = nui.encode({
			myDatas : datas
		});
		$.ajax({
			url : "com.cgn.itmp.inspectcomponentmanage.pipebaseInfo.pipebaseinfobiz.queryPipemodel.biz.ext",
			type : 'POST',
			cache : false,
			data : myjsons,
			contentType : 'text/json',
			success : function(data) {
				 nui.get("pipemodel").setData(data.pipemodel.data);
			}
		});
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		if (jdid == "86") {
			nui.get("funselect").hide();
			nui.get("funselect_ts").show();
			nui.get("pipemodel").setValue("79/19TE");
		} else {
			nui.get("funselect").show();
			nui.get("funselect_ts").hide();
			nui.get("pipemodel").setValue("55/19B");
		}
		var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		
		
		var filename;
		var fileid;

		function saveData(finishFirstActivityId) {
		
			var form = new nui.Form("#dataform1");
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.pipeblockagebiz.addPipeblockage.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			if(finishFirstActivityId!=""){
				form.setChanged(false);
				form.validate();
				if (form.isValid() == false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
			}
			nui.get("#savebt").setEnabled(false);
			nui.get("#draftbt").setEnabled(false);
			var data = form.getData(false, true);
			data.pipeblockage.jd = jdid;
			data.pipeblockage.jz = jzid;
// 			data.pipeblockage.fj = nui.get("fname").value;
			data.pipeblockage.fj = nui.get("fj").value;
			data.pipeblockage.isdel = "0";
			data.pipeblockage.fileid = nui.get("fileid").value;
			data.pipeblockage.jhry = nui.get("jhry").text;
			data.pipeblockage.ccry= nui.get("ccry").value;
			var json = nui.encode(data);
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.inspectcomponentmanage.pipeblockagebiz.workpipeblock.biz.ext";
				var allInfo = {};
		        allInfo.data = data.pipeblockage;
		        allInfo.isadmin=isadmin;
		        allInfo.finishFirstActivityId = finishFirstActivityId;
		        allInfo.processInstName = "蒸汽发生器传热管_堵管统计_修改";
		        allInfo.processInstDesc = "蒸汽发生器传热管_堵管统计_修改";
		        allInfo.processDefName = "com.cgn.itmp.inspectcomponentmanage.Pipblockage";
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
						CloseWindow("saveSuccess");
						nui.alert("保存失败", "系统提示", function(action) {
						if (action == "ok" || action == "close") {
							if (pageType == "edit") {
							if(isadmin=="false"){
								var param={uuid:data.pipeblockage.uuid,processStatus:"0"};
					            var json =nui.encode({data:param,entity:"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage"});
					            //修改流程状态
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
				if (jdid == "86") {
					nui.get("funselect_ts").setValue((data.record.pipeblockage.funlocation).slice(5, 8));
				} else {
					nui.get("funselect").setValue((data.record.pipeblockage.funlocation).slice(5, 8));
				}
// 				nui.get("fj").setText(data.record.pipeblockage.fj);//加载附件名称
// 				nui.get("fname").setValue(data.record.pipeblockage.fj);
				var json = infos.record;
				if(isadmin=='true'){
					$(".changeReasons").hide();
					
				}else{				
					nui.get("#draftbt").show();
					$(".changeReasons").show();
					$("#savebt")[0].children[0].innerHTML="提交";
				}
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
		function onOk(finishFirstActivityId) {
			saveData(finishFirstActivityId);
		}

		//关闭
		function onCancel() {
			CloseWindow("cancel");
		}

		function functionpostionchange(e) {
			nui.get("functionpostion").setValue(
					getCookie('jzname') + "RCP" + e.selected.dictName + "GV");
		};
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
