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
<title></title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
  <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
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
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<input id="uuid" class="nui-hidden" name="trackingtubeins.uuid" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">SG型号:</td>
				<td colspan="1"><input class="nui-combobox"
									style="width: 100%" id="pipemodel"
									textField="text" valueField="id" required="true"
					requiredErrorText="请输入名称" emptyText="请输入SG型号" dictTypeId="evaporator_model"
					style="width: 100%" name="trackingtubeins.sgmodel" /></td>
				<td class="form_label">SG编号:</td>
				<td colspan="1"><input class="nui-textbox" style="width: 100%" onvalidation="hasIllegalChar(e,4000,false,true)"
					name="trackingtubeins.sgnumber" /></td>
			</tr>
			<tr>
				<td class="form_label">功能位置:</td>
				<td colspan="1"><input class="nui-textbox" emptyText="请输入生成功能位置"
					style="width: 70%; float: left;"  id="functionpostion"
					name="trackingtubeins.funposition" /> <input
					class="nui-dictcombobox" style="width: 30%; float: left;"
					id="funselect" dictTypeId="functionpostion"
					required="true"
					onvaluechanged="functionpostionchange" />
					<input
					id = "funselect_ts" required="true" requiredErrorText="请输入名称"
					class="nui-dictcombobox" style="width: 30%; float: left;display: none"
					dictTypeId="functionpostion_ts" onvaluechanged="functionpostionchange" /></td>
				<td class="form_label">传热管编号列（R）:</td>
				<td colspan="1"><input class="nui-textbox" id="no_r" onvalidation="hasIllegalChar(e,12,true,true)"
					vtype = "int" intErrorText="只可以输入数字" emptyText="请输入传热管编号列（R）"
					required="true" requiredErrorText="只可以输入数字" style="width: 100%"
					name="trackingtubeins.no_r" /></td>
			</tr>
			<tr>
				<td class="form_label">传热管编号行（C）:</td>
				<td colspan="1"><input class="nui-textbox" id="no_c" onvalidation="hasIllegalChar(e,12,true,true)"
					vtype = "int" intErrorText="只可以输入数字" emptyText="请输入传热管编号列（C）"
					required="true" requiredErrorText="只可以输入数字" style="width: 100%"
					name="trackingtubeins.no_c" /></td>
				<td class="form_label">是否发生显著变化:</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="ISCHANGE" required="true" emptyText="请输入是否发生显著变化" requiredErrorText="请输入是否发生显著变化" style="width: 100%"
					name="trackingtubeins.inspectiontype" /></td>
			</tr>
			<tr>
				<td class="form_label">是否取消跟踪检查:</td>
				<td colspan="1"><input class="nui-dictcombobox" required="true"
					requiredErrorText="请输入名称" emptyText="请输入是否取消跟踪检查" dictTypeId="ISORNO" style="width: 100%"
					name="trackingtubeins.iscancelcheck" /></td>
			</tr>
			<tr>
				<td class="form_label">备注:</td>
				<td colspan="3"><input class="nui-textarea"  style="width: 100%" onvalidation="hasIllegalChar(e,4000,false,true)"
					name="trackingtubeins.remarks" /></td>
			</tr>
			<tr style="visibility: hidden; height: 1px; overflow: hidden;">
				<td style="visibility: hidden; height: 1px; overflow: hidden;"
					colspan="1"><input value="0" class="nui-hidden"
					name="trackingtubeins.isdel" /></td>
			</tr>
			<tr class="changeReasons" style="display: none;">
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%" onvalidation="hasIllegalChar(e,4000,false,true)"
				required="true" requiredErrorText="请输入修改原因" emptyText="请输入修改原因"
					name="trackingtubeins.changeReason" /></td>
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
						class="nui-button btn btn-default btn-xs" id="savebt"  onclick="onOk('manualActivity')">保存</a> <a
						class="nui-button btn btn-default btn-xs" style="color:#fff;" id="draftbt" onclick="onOk('')" id="btnSave"> 保存至草稿 </a> <a
						class="nui-button" style="color:#fff;" onclick="onCancel()">关闭</a></td>
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
		
		function saveData(finishFirstActivityId) {
				var form = new nui.Form("#dataform1");
				form.setChanged(false);
				//保存
				var urlStr = "com.cgn.itmp.inspectcomponentmanage.trackingtubeinsbiz.addTrackingtubeins.biz.ext";
				var pageType = nui.getbyName("pageType")
						.getValue();//获取当前页面是编辑还是新增状态
				var data = form.getData(false, true);
				data.trackingtubeins.jd = jdid;
				data.trackingtubeins.jz = jzid;
				data.trackingtubeins.jhry=  nui.get("jhry").text;
				data.trackingtubeins.ccry = nui.get("ccry").value;
				data.trackingtubeins.isdel = "0";
				var json = nui.encode(data);
				if(finishFirstActivityId!=""){
					form.validate();
					if (form.isValid() == false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
				}
				nui.get("#savebt").setEnabled(false);
				nui.get("#draftbt").setEnabled(false);
				//编辑
				if (pageType == "edit") {
					urlStr = "com.cgn.itmp.inspectcomponentmanage.trackingtubeinsbiz.workTracking.biz.ext";
					var allInfo = {};
			        allInfo.data = data.trackingtubeins;
			        allInfo.isadmin=isadmin;
			        allInfo.finishFirstActivityId = finishFirstActivityId;
			        allInfo.processInstName = "蒸汽发生器传热管_跟踪管检查管理_修改";
			        allInfo.processInstDesc = "蒸汽发生器传热管_跟踪管检查管理_修改";
			        allInfo.processDefName = "com.cgn.itmp.inspectcomponentmanage.Trackingtubeins";
	 		        allInfo.jhry = nui.get("jhry").text;
			   		allInfo.ccry = nui.get("ccry").value;
			       
					
				   	json = nui.encode(allInfo);
				   	//保存前做检查 若同一“功能位置”的“列、行”编号完全相同的，则提示已有相同位置行列号数据，不可重复新增
				   	var jsons = nui.encode({jd:getCookie('jdid'),jz:getCookie('jzid'),funposition : nui.get("functionpostion").value,no_r : nui.get("no_r").value,no_c : nui.get("no_c").value,uuid:nui.get("uuid").value});
					$.ajax({
						url : "com.cgn.itmp.inspectcomponentmanage.trackingtubeinsbiz.getExistTrack.biz.ext",
						type : 'POST',
						data : jsons,
						cache : false,
						contentType : 'text/json',
						success : function(data) {
							if (data.flag) {
								nui.alert("已有相同位置行列号数据", "提示");
								nui.get("#savebt").setEnabled(true);
								nui.get("#draftbt").setEnabled(true);
							} else {
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
											if (action == "ok"|| action == "close") {
											if (pageType == "edit") {
											if(isadmin=="false"){
												var param={uuid:data.trackingtubeins.uuid,processStatus:"0"};
								                var json =nui.encode({data:param,entity:"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins"});
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
											CloseWindow("saveSuccess");
											}
										});
									} else {
										nui.alert("保存失败", "系统提示", function(action) {
											if (action == "ok"|| action == "close") {
												nui.get("#savebt").setEnabled(true);
												nui.get("#draftbt").setEnabled(true);	
												//CloseWindow("saveFailed");
											}
										}); 
									}
								},error: function (jqXHR, textStatus, errorThrown) {
								   nui.get("#savebt").setEnabled(true);
									nui.get("#draftbt").setEnabled(true);	
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
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
					
				} else {
					//保存前做检查 若同一“功能位置”的“列、行”编号完全相同的，则提示已有相同位置行列号数据，不可重复新增
					var jsons = nui.encode({jd:getCookie('jdid'),jz:getCookie('jzid'),funposition : nui.get("functionpostion").value,no_r : nui.get("no_r").value,no_c : nui.get("no_c").value,uuid:""});
					$.ajax({
						url : "com.cgn.itmp.inspectcomponentmanage.trackingtubeinsbiz.getExistTrack.biz.ext",
						type : 'POST',
						data : jsons,
						cache : false,
						contentType : 'text/json',
						success : function(data) {
							if (data.flag) {
								nui.alert("已有相同位置行列号数据，不可重复新增", "提示");
								nui.get("#savebt").setEnabled(true);
								nui.get("#draftbt").setEnabled(true);	
							} else {
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
										if (action == "ok"|| action == "close") {
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
						}
					});
				}
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
					nui.get("funselect_ts").setValue((data.record.trackingtubeins.funposition).slice(5, 8));
				} else {
					nui.get("funselect").setValue((data.record.trackingtubeins.funposition).slice(5, 8));
				}
				
				if(isadmin=='true'){
					$(".changeReasons").hide();
					nui.get("#draftbt").hide();
				}else{
					nui.get("#draftbt").show();
	 				$("#savebt")[0].children[0].innerHTML="提交";
					$(".changeReasons").show();
				}
				var json = infos.record;
				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				
				form.setData(json);
				form.setChanged(false);
			}else{
				nui.get("#draftbt").hide();
				$(".changeReasons").hide();
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
		//判断跟踪管是否存在
		function isExist(jsons) {
			$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.trackingtubeinsbiz.getExistTrack.biz.ext",
				type : 'POST',
				data : jsons,
				cache : false,
				contentType : 'text/json',
				success : function(data) {
					
					if (data.flag) {
						isexist = true;
					} else {
						isexist = false;
					}
				}
			});
		}
		function onCheck(e){
	       if (e.isValid) {
	         if(e.value==""){
	           e.errorText = "必填项不可为空";
	           e.isValid = false;
	           nui.showTips(
						{
							content: '必填项不可为空',
							state: 'warning',
							x: 'center', 
							y: 'center'
						}
					);
	         }
	       }
	     }
    	
    	function functionpostionchange(e) {
			nui.get("functionpostion").setValue(
					getCookie('jzname') + "RCP" + e.selected.dictName + "GV");
		};
	</script>
</body>
</html>
