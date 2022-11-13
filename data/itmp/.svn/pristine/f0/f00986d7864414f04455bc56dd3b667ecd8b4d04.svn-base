<%@page import="com.cgn.itmp.basecommon.CommonUtil"%>
<%@page import="com.eos.data.datacontext.IUserObject"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

	IUserObject cu = CommonUtil.getUserObject();
	String userid = cu.getUserId();
	String username = cu.getUserRealName();
%>
<html>
<head>
<title>焊接质量计划管理 - 修改流程 - 草稿箱</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%= request.getContextPath() %>/common/nui/nui.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/common/common.js"
	type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	<style type="text/css">
	.asLabel .mini-textbox-border,
    .asLabel .mini-textbox-input,
    .asLabel .mini-buttonedit-border,
    .asLabel .mini-buttonedit-input,
    .asLabel .mini-textboxlist-border
    {
        border:0;background:none;cursor:default;
    }
    .asLabel .mini-buttonedit-button,
    .asLabel .mini-textboxlist-close
    {
        display:none;
    }
    .asLabel .mini-textboxlist-item
    {
        padding-right:8px;
    }  
	</style>
</head>
<body>
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="processInstId"
			value="<b:write property='processInstId'/>" id="processInstId" /> <input
			class="nui-hidden" name="jhry" id="jhry" /> <input class="nui-hidden"
			id="workItemId" name="workItemId"
			value="<b:write property='workItemId'/>" />
			<input class="nui-hidden" id="editable" name="editable" value="<b:write property='editable'/>"/>
		<div id="form1">
			<input class="nui-hidden" name="quality.uuid" id="uuid" />
			<input class="nui-hidden" id="jd" name="quality.jd" />
				<input class="nui-hidden" id="jz" name="quality.jz" />
				<input class="nui-hidden" name="quality.rounds">
				<input class="nui-hidden" name="quality.createtime">
				<input class="nui-hidden" name="quality.batchnumber">
				<input class="nui-hidden" name="quality.cardnumber_edtion">
				<input class="nui-hidden" name="quality.component1interfacesize" />
				<input class="nui-hidden" name="quality.component1interfacethickness" />
				<input class="nui-hidden" name="quality.component1material">
				<input class="nui-hidden" name="quality.component2interfacesize">
				<input class="nui-hidden" name="quality.component2interfacethickness">
				<input class="nui-hidden" name="quality.component2material">
				<input class="nui-hidden" name="quality.downname">
				<input class="nui-hidden" name="quality.equiaxedgraph">
				<input class="nui-hidden" name="quality.geographicalposition">
				<input class="nui-hidden" name="quality.model_specifications">
				<input class="nui-hidden" name="quality.name">
				<input class="nui-hidden" name="quality.ticketnumber">
				<input class="nui-hidden" name="quality.uppername">
				<input class="nui-hidden" name="quality.welding_method">
				<input class="nui-hidden" name="quality.weldnumber">
				<input class="nui-hidden" name="quality.weldertype">
				<input class="nui-hidden" name="quality.dynamicgeneration" />
			<table style="width: 100%; height: 100%; table-layout: fixed;"
				class="nui-form-table">
				<tr>
					<td class="form_label">WQP编号</td>
					<td colspan="1"><input class="nui-textbox"  
						style="width: 100%" name="quality.qualitynumber" /></td>
					<td class="form_label">描述</td>
					<td colspan="1"><input class="nui-textbox"  
						style="width: 100%" name="quality.describe" /></td>

					<td class="form_label">功能位置</td>
					<td colspan="1"><input class="nui-textbox"  
						style="width: 100%" name="quality.position" /></td>
				</tr>
				<tr>
					<td class="form_label">制造级别</td>
					<td colspan="1"><input class="nui-textbox"  
						style="width: 100%" name="quality.level" /></td>
					<td class="form_label">接头形式</td>
					<td colspan="1"><input   name="quality.form"
						class="nui-dictcombobox" dictTypeId="JTXS" style="width: 100%;" /></td>
					<td class="form_label">专业</td>
					<td colspan="1"><input class="nui-textbox"  
						style="width: 100%" name="quality.major" /></td>
				</tr>
				<tr>
					<td class="form_label">无损检测方法及比例</td>
					<td colspan="5"><input class="nui-textbox" style="width: 100%"
						name="quality.ndtmethod_proportions" required="true" requiredErrorText="无损检测方法及比例不能为空" emptyText="请输入无损检测方法及比例"/></td>
				</tr>
				<tr>
					<td class="form_label">预派焊工</td>
					<td colspan="5">
						<div name="quality.prewelder" id="combobox1" class="nui-combobox" style="width:100%;" 
						required="true" requiredErrorText="预派焊工不能为空" emptyText="请选择预派焊工"
						 popupWidth="150" textField="name" valueField="id" 
					     url=""  multiSelect="true"  
					     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
					     <div property="columns" >
					         <div header="预派焊工"  field="name"></div>
					     </div>
					</div>
					</td>
				</tr>
				<tr>
					<td class="form_label">实派焊工</td>
					<td colspan="5">
						<div name="quality.solidwelder" id="combobox2" class="nui-combobox" style="width:100%;"  popupWidth="150" textField="name" valueField="id" 
					     url=""  multiSelect="true"  
					     required="true" requiredErrorText="实派焊工不能为空" emptyText="请选择实派焊工"
					     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
					     <div property="columns" >
					         <div header="实派焊工"  field="name"></div>
					     </div>
					</div>
					</td>
				</tr>
				<tr>
					<td class="form_label">工作负责人</td>
					<td colspan="5"><input class="nui-textbox" style="width: 100%" required="true" requiredErrorText="工作负责人不能为空" emptyText="请选择工作负责人"
						name="quality.chargeperson" /></td>
				</tr>
			</table>
		</div>
		</div>
		<div style="padding-top: 5px;" id="baseInfoForm">
			<!-- hidden域 -->
			 <input class="nui-hidden" id="editable" value="<b:write property='editable'/>" />
			 <input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId" /> 
			 <input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>" />
			 <input id="backid" class="nui-hidden" value="<b:write property='backid'/>" name="backid" />
			<fieldset id="personInfo" style="width: 98%;">
				<legend>
					<span>审批信息</span>
				</legend>
				<table style="width: 100%; height: 100%; table-layout: fixed;"
					class="nui-form-table">
					<tr id="fhryTr">
						<td class="form_label">复核人员:</td>
						<td colspan="5"><input id="reviewer" class="nui-buttonedit"
							readonly="readonly" onclick="onButtonSelectPerson" allowInput="false" name="personInfo.reviewer" required="true" requiredErrorText="复核人员不能为空" emptyText="请选择复核人员" 
							style="width: 100%" /></td>
					</tr>
					<tr id="ccryTr">
						<td class="form_label">抄送人员:</td>
						<td colspan="5"><input property="editor" id="ccry"
							multi="false" name="personInfo.ccry" class="nui-textboxlist"
							dataField="list"
							url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
							valueField="empcode" textField="empcodename" searchField="keyword"
							style="width: 100%" /></td>
					</tr>
				</table>
			</fieldset>
		</div>
		
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button" id="btnSubmit" onclick="onSubmit()"> 提交 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button" onclick="onDelete()" id="btnDelete"> 作废 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button" onclick="onCancel()"> 关闭 </a></td>
				</tr>
			</table>
		</div>
	
	<script type="text/javascript">
    	nui.parse();
    	var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		var processInstId =nui.get("processInstId").getValue();
		var workItemId =nui.get("workItemId").getValue();
		var personInfo = {};
		var jdid = getCookie("jdid");
	    var editable=nui.get('editable').value;
       
		initData();
		function initData(){
			nui.get("btnSubmit").hide();
			nui.get("btnDelete").hide();
			nui.get('combobox1').setAjaxType("POST");
  		    nui.get('combobox1').load("com.cgn.itmp.weldingmanagement.qualitybiz.getWelderName.biz.ext?base="+jdid);
  			nui.get('combobox2').setAjaxType("POST");
  			nui.get('combobox2').load("com.cgn.itmp.weldingmanagement.qualitybiz.getWelderName.biz.ext?base="+jdid);
			$.ajax({
						url : "com.cgn.itmp.weldingmanagement.qualitybiz.getQualityByProcessInstId.biz.ext",
						type : 'POST',
						data : nui.encode({processInstId: processInstId}),
						cache : false,
						contentType : 'text/json',
						success : function(text) {
						 var form = new nui.Form("#dataform1");//将普通form转为nui的form
		                 var data = {};
		                 data.quality = text.result;
					     form.setData(data);
					     form.setChanged(false);
					     
					     //不是创建人
						 if('<%=username%>'!= text.result.applicant|| editable == 'false') {
								
								$('#baseInfoForm').hide();
								
								labelModel(form); 
						
						}else{
								nui.get("btnSubmit").show();
								nui.get("btnDelete").show();
						}
					     
					      
					     
					     
						}
					});
		}
		
		function labelModel(form) {
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
        }
		
		//审核通过
		function onSubmit() {
		
		var personform = new nui.Form("#baseInfoForm");
		personform.setChanged(false);
		personform.validate();
		if(personform.isValid()==false) return;
		mini.mask({
					el: document.body,
					cls: 'mini-mask-loading',
					html: '加载中...'
				 });
			var wfInfo = {};
			wfInfo.processInstId = processInstId;
			wfInfo.workItemId = workItemId;
			wfInfo.jhry = nui.get('reviewer').getText();
			wfInfo.ccry= nui.get('ccry').getValue();
			
			wfInfo.entityType = "com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup";
			wfInfo.pageType = "edit";
			var dataform1 = new nui.Form("#dataform1");
			var quality = dataform1.getData(false,true);
			
			wfInfo.data = quality.quality;
			var json = nui.encode(wfInfo);
			$.ajax({
						url : "com.cgn.itmp.weldingmanagement.weldingapplybiz.operateWorkFlow.biz.ext",
						type : 'POST',
						data : json,
						cache : false,
						contentType : 'text/json',
						success : function(text) {
						 mini.unmask(document.body);
							var returnJson = nui.decode(text);
							if (returnJson.exception == null) {
								nui.alert("提交成功", "系统提示", function(action) {
									if (action == "ok" || action == "close") {
										onCancel();
									}
								});
								
							} else {
								nui.alert("提交失败", "系统提示", function(action) {
									if (action == "ok" || action == "close") {
										onCancel();
									}
								});
							}
						},
						error : function(jqXHR, textStatus, errorThrown) {
							nui
									.alert(jqXHR.responseText, '错误',
											function(action) {
												nui.get("#btnSubmit")
														.setEnabled(false);
												nui.get("#btnBack").setEnabled(
														false);
												nui.get("#btnDelete")
														.setEnabled(false);
											});
						}
					});

		}
		//流程作废
		function onDelete() {
			nui
					.confirm(
							"确定要作废流程？",
							"提示",
							function(action) {
								if (action == "ok") {
								mini.mask({
									el: document.body,
									cls: 'mini-mask-loading',
									html: '加载中...'
								 });
									var json = {};
									json.processInstId = processInstId;
									json.workItemId = workItemId;
									json.entityType = "com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup";
									var jsondata = nui.encode(json);
									$.ajax({
										url : "com.cgn.itmp.weldingmanagement.weldingapplybiz.invalidWorkFlow.biz.ext",
										type : 'POST',
										data : jsondata,
										cache : false,
										contentType : 'text/json',
										success : function(data) {
										 mini.unmask(document.body);
											var message = "流程作废成功";
											nui.alert(message, "成功",function(action) {
											if (action == "ok" || action == "close") {
														onCancel();
														}
													});
										}
									});
								}
							});
		}
		
		 
		//取消
		function onCancel() {
			if (self.parent.parent.$("li.index&.icon-task"))
				self.parent.parent.$("li.index&.icon-task").remove();
			self.parent.location.reload();
			return;
		}
		
		
		
    </script>
</body>
</html>