<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): Administrator
  - Date: 2019-12-03 14:34:39
  - Description:
-->
<head>
<title>焊接质量计划管理 - 修改流程 - 审批页面</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
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
		<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
		<input class="nui-hidden" name="jhry" id="jhry"/>
    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
    	<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
    	<div id="form1">
		<input class="nui-hidden" name="quality.uuid" id="uuid"/>
		<table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">                
                <tr>
                	<td class="form_label">
                   WQP编号
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width:100%" name="quality.qualitynumber"/>
                    </td>
                    <td class="form_label">
                   	描述
                    </td>
                      <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width:100%" name="quality.describe"/>
                    </td>
                    
                    <td class="form_label">
                  	功能位置
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width:100%" name="quality.position"/>
                    </td>
                   </tr>
                   <tr>
                <td class="form_label">
                        制造级别
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width:100%" name="quality.level"/>
                    </td>
                    <td class="form_label">
                        接头形式
                    </td>
                    <td colspan="1">
                        <input readonly="readonly" name="quality.form" class="nui-dictcombobox" dictTypeId="JTXS" style="width:100%;" />
                    </td>
                    <td class="form_label">
                        专业
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width:100%" name="quality.major"/>
                    </td>
                    </tr>
               <tr>
                    <td class="form_label">
                        无损检测方法及比例
                    </td>
                    <td colspan="5">
                        <input class="nui-textbox" style="width:100%" name="quality.ndtmethod_proportions"/>
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        预派焊工
                    </td>
                    <td colspan="5">
                     <div name="quality.prewelder" id="combobox1" class="nui-combobox" style="width:100%;"  popupWidth="150" textField="name" valueField="id" 
					     url=""  multiSelect="true"  
					     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
					     <div property="columns" >
					         <div header="预派焊工"  field="name"></div>
					     </div>
					</div>
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        实派焊工
                    </td>
                    <td colspan="5">
                    <div name="quality.solidwelder" id="combobox2" class="nui-combobox" style="width:100%;"  popupWidth="150" textField="name" valueField="id" 
					     url=""  multiSelect="true"  
					     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
					     <div property="columns" >
					         <div header="实派焊工"  field="name"></div>
					     </div>
					</div>
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        工作负责人
                    </td>
                    <td colspan="5">
						<input class="nui-textbox" style="width:100%" name="quality.chargeperson"/>
                    </td>
             	</tr>
             	<input class="nui-hidden" id="jd" name="quality.jd"/>
             	<input class="nui-hidden" id="jz" name="quality.jz"/>
             	<input class="nui-hidden" name="quality.rounds">
             	<input class="nui-hidden" name="quality.createtime">
             	<input class="nui-hidden" name="quality.batchnumber">
             	<input class="nui-hidden" name="quality.cardnumber_edtion">
             	<input class="nui-hidden" id="jd" name="quality.component1interfacesize"/>
             	<input class="nui-hidden" id="jz" name="quality.component1interfacethickness"/>
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
				<input class="nui-hidden" name="quality.dynamicgeneration"/>
				<input class="nui-hidden" name="quality.relationid"/>
            </table>
		</div>
			</div>
<div  style="padding-top:5px;" id="baseInfoForm">
      <!-- hidden域 -->
      <fieldset id="personInfo" style="width:95%;">
        <legend><span>审批信息</span></legend>
     <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
    
                 <tr id="spyjId">
                 
                    <td class="form_label"  style="width: 10%">
                        审批意见:
                    </td>
                  <td colspan="3">
                        <input id="spyj"  required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width:100%" name="spyj"/>
                    </td>
                      <td colspan="2" class="form_label" >
                        常用意见:<input class="nui-dictcombobox"  onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ" style="width:80%"  />
                    </td>
                </tr>
    
        <tr id="ccryTr">
           <td class="form_label" style="width: 10%">抄送人员:</td>
				<td colspan="5">
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list" style="width:55%" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
        </tr>
    </table>
    </fieldset>
    </div>
		<div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
        <table width="100%">
            <tr>
                <td style="text-align:center;" colspan="4">
                    <a class="nui-button" id="btnSubmit" onclick="onSubmit()">
                        同意
                    </a>
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <a class="nui-button"  onclick="onBack()" id="btnBack">
                   退回
                    </a> 
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <a class="nui-button"  onclick="onCancel()">
                        关闭
                    </a>
                </td>
            </tr>
        </table>
    </div>


	<script type="text/javascript">
    	nui.parse();
    	var jdid = getCookie("jdid");
    	var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		var processInstId =nui.get("processInstId").getValue();
		var workItemId =nui.get("workItemId").getValue();
		var personInfo = {};
		initData();
		var editable=nui.get('editable').value;
		if(editable=='false'){
			nui.get("btnSubmit").hide();
			nui.get("btnBack").hide();
			$('#baseInfoForm').hide();
// 			$('#ccryTr').hide();   
		}
		
		function initData(){
		
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
					     labelModel(form);
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
			var form = new nui.Form("#baseInfoForm");
            form.setChanged(false);
            form.validate();
            if(form.isValid()==false) return;
            
			var wfInfo = {};
			wfInfo.processInstId = processInstId;
			wfInfo.workItemId = workItemId;
			wfInfo.ccry = nui.get('ccry').value;
			wfInfo.spyj = nui.get('spyj').getValue();
			wfInfo.entityType = "com.cgn.itmp.weldingmanagement.Quality.Quality";
			var dataform1 = new nui.Form("#dataform1");
			var quality = dataform1.getData(false,true);
			quality.quality.processStatus="3";
			wfInfo.data = quality.quality;
			var json = nui.encode(wfInfo);
			nui.get("btnSubmit").setEnabled(false);
			nui.get("btnBack").setEnabled(false);
			$.ajax({
						url : "com.cgn.itmp.weldingmanagement.qualitybiz.endupdatework.biz.ext",
						type : 'POST',
						data : json,
						cache : false,
						contentType : 'text/json',
						success : function(text) {
							nui.get("btnSubmit").setEnabled(true);
							nui.get("btnBack").setEnabled(true);
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
							nui.alert(jqXHR.responseText, '错误',
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
		
		
		//驳回
		function onBack() {
			var form = new nui.Form("#baseInfoForm");
            form.setChanged(false);
            form.validate();
            if(form.isValid()==false) return;
			//工作流公用方法
			var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
			var data = form.getData(false, true);
			data.processInstId=processInstId;
			data.workItemId=workItemId;
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
						nui.alert("驳回成功");
						onCancel();
					} else {
						nui.alert("驳回失败", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
								onCancel();
							}
						});
					}
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
		
		//设置常用意见
		function setcyyj() {
			nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
		}
		
    </script>
</body>
</html>