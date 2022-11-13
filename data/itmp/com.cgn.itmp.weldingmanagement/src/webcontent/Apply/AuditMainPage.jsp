<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ page import="com.eos.data.datacontext.IUserObject"%>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	IUserObject cu = CommonUtil.getUserObject();
	String username = cu.getUserRealName();
%>
<html>

<head>
<title>焊接申请 - 创建焊接计划审批页面</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/common/common.js"
	type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
</head>
<style type="text/css">
.mini-grid-table tr:first-child td {
	height: 0;
}

.mini-grid-cell-nowrap {
	text-align: center;
}

#wq span input{color:blue;text-decoration:underline;cursor: pointer;}

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
<body>
	<div style="padding-top: 5px; width: 95%;">
		<!-- 审核内容 -->
		<div id="dataform1" style="padding-top: 5px;">
			<!-- hidden域 -->
			<table style="width: 100%; height: 100%; table-layout: fixed;"
				class="nui-form-table">
				<tr>
					<td class="form_label">WQP编号</td>
					<td colspan="1"><a class="nui-textbox" id="wq" allowInput="false" style="width: 100%;" name="quality.qualitynumber" onclick="detail()" /></td>
					<td class="form_label">描述</td>
					<td colspan="1"><input class="nui-textbox" style="width: 100%" required="true" requiredErrorText="描述不能为空" emptyText="请输入描述" name="quality.describe" /></td>

					<td class="form_label">功能位置</td>
					<td colspan="1"><input class="nui-textbox" style="width: 100%" required="true" requiredErrorText="功能位置不能为空" emptyText="请输入功能位置" 
						name="quality.position" /></td>
				</tr>
				<tr>
					<td class="form_label">制造级别</td>
					<td colspan="1"><input class="nui-textbox" style="width: 100%" required="true" requiredErrorText="制造级别不能为空" emptyText="请输入制造级别" 
						name="quality.level" /></td>


					<td class="form_label">接头形式</td>
					<td colspan="1"><input id="formCombo" name="quality.form" required="true" requiredErrorText="接头形式不能为空" emptyText="请选择接头形式" 
						class="nui-dictcombobox" dictTypeId="JTXS" style="width: 100%;" /></td>
					<td class="form_label">专业</td>
					<td colspan="1"><input class="nui-textbox" style="width: 100%" required="true" requiredErrorText="专业不能为空" emptyText="请输入专业" 
						name="quality.major" /></td>
				</tr>
				<tr>
					<td class="form_label">无损检测方法及比例</td>
					<td colspan="5"><input class="nui-textbox" style="width: 100%" required="true" requiredErrorText="无损检测方法及比例不能为空" emptyText="请输入无损检测方法及比例" 
						name="quality.ndtmethod_proportions" /></td>
				</tr>
				<tr>
					<td class="form_label">预派焊工</td>
					<td colspan="5">
						<div name="quality.prewelder" id="combobox1" class="nui-combobox"
							style="width: 100%;" popupWidth="150" textField="name"
							valueField="id" url="" multiSelect="true" showClose="true"
							oncloseclick="onCloseClick" dataField="jsonObject">
							<div property="columns">
								<div header="预派焊工" field="name"></div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="form_label">实派焊工</td>
					<td colspan="5">
						<div name="quality.solidwelder" id="combobox2"
							class="nui-combobox" style="width: 100%;" popupWidth="150"
							textField="name" valueField="id" url="" multiSelect="true"
							showClose="true" oncloseclick="onCloseClick"
							dataField="jsonObject">
							<div property="columns">
								<div header="实派焊工" field="name"></div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="form_label">工作负责人</td>
					<td colspan="5">
						<input class="nui-textbox" style="width: 100%" name="quality.chargeperson" />
						<input class="nui-hidden" id="uuid" name="quality.uuid" />
					</td>
				</tr>
				
				<tr id="fjTr">
                    <td class="form_label">
                        附件
                    </td>
                    <td colspan="5">
                    <div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
                        <div style="display: flex;">	
							<input id="enclosure" class="nui-textbox" readonly="readonly" style="width: 100%" name="quality.fj" required="true" requiredErrorText="附件不能为空" emptyText="请上传附件" />
							<input id="fildid" style="display: none" class="nui-textbox" name="quality.fildid" />
							<form id="uploadform" enctype="multipart/form-data">
								<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)"> 
							</form>
						</div>
                    </td>
             	</tr>
				
			</table>
		</div>

		<!-- 审核内容 END -->
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
					<tr id="spyjId">
						<td class="form_label" style="width: 10%">审批意见:</td>
						<td colspan="3"><input id="spyj" required="true"
							requiredErrorText="请输入审批意见" emptyText="请输入审批意见" class="nui-textarea"
							style="width: 100%" name="spyj" /></td>
						<td colspan="2" class="form_label">常用意见:<input
							class="nui-dictcombobox" onvaluechanged="setcyyj" name="cyyj"
							dictTypeId="CYYJ" style="width: 80%" />
						</td>
					</tr>

					<tr id="sqrTr">
						<td class="form_label" style="width: 10%">申请人:</td>
						<td colspan="1"><input id="sqr" readonly="readonly"
							class="nui-textbox" style="text-align: center; width: 90%;"
							name="personInfo.sqr"  />
						</td>
						<td class="form_label" style="width: 10%">申请时间:</td>
						<td colspan="1"><input id="sqsj" readonly="readonly"
							class="nui-textbox" style="text-align: center; width: 90%;"
							name="personInfo.sqsj"
							 /></td>
					</tr>
					<tr id="scryTr">
						<td class="form_label" style="width: 10%">审查人员:</td>
						<td colspan="5"><input id="examinant" class="nui-buttonedit"
						readonly="readonly" onclick="onButtonSelectPerson" allowInput="false" name="personInfo.examinant" required="true" requiredErrorText="审查人员不能为空" emptyText="请选择审查人员" 
						style="width: 100%"/></td>
					</tr>
					<tr id="shryTr">
					<td class="form_label">审核人员:</td>
					<td colspan="5"><input id="auditor" class="nui-buttonedit"
						readonly="readonly" onclick="onButtonSelectPerson" allowInput="false" name="personInfo.auditor" required="true" requiredErrorText="审核人员不能为空" emptyText="请选择审核人员" 
						style="width: 100%" /></td>
					</tr>
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
		<div id="btn" class="nui-toolbar" style="padding: 0px;"
			borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button" onclick="onSubmit()" id="btnSubmit">提交</a> <a
						class="nui-button" onclick="onBack()" id="btnBack"> 驳回 </a> <a
						class="nui-button" onclick="onDelete()" id="btnDelete"> 作废 </a> <a
						class="nui-button" onclick="onCancel()">关闭 </a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
    nui.parse();
    $("#fjTr").hide();
    //显示全局数据加载提示
    mini.mask({
    	el: document.body,
        cls: 'mini-mask-loading',
        html: '加载中...'
   	});
    var editable = nui.get('editable').getValue();//已办
    var daiyue = 0;
    var backid = nui.get("backid").getValue();//上一节点id
	var personInfo = {};
	var processInstId = nui.get("processInstId").getValue();
	var isDownloadFile = false;
	
		
		//文本只读模式
		function labelModel(isEdit) {
			nui.get("examinant").setEnabled();
			nui.get("auditor").setEnabled();
			nui.get("reviewer").setEnabled();
			
            var form = new nui.Form("#dataform1");
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if(c.name == 'quality.qualitynumber'){
                	continue;
                }
                if(isEdit && c.name == 'quality.prewelder'){
                	continue;
                }
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
        }

		//审批信息禁用
		function labelModelBaseInfoForm() {
			$("#spyjId").hide();
			$("#ccryTr").hide();
			nui.get("examinant").setEnabled();
			nui.get("auditor").setEnabled();
			nui.get("reviewer").setEnabled();
			
			$("#combobox1").find(".mini-buttonedit-buttons").css("display","none");
			$("#combobox2").find(".mini-buttonedit-buttons").css("display","none");
			$("#scryTr").find(".mini-buttonedit-border").css("padding-right","0");
			$("#scryTr").find(".mini-buttonedit-input").css("background","#fff");
			$("#shryTr").find(".mini-buttonedit-border").css("padding-right","0");
			$("#shryTr").find(".mini-buttonedit-input").css("background","#fff");
			$("#fhryTr").find(".mini-buttonedit-border").css("padding-right","0");
			$("#fhryTr").find(".mini-buttonedit-input").css("background","#fff");
			var form = new nui.Form("#baseInfoForm");
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
		}

    	var tempData;
    	var weldertype = "";
    	var relationid = '';
    	//单焊缝模板详情
    	function detail(){
    		if(weldertype == "M"){
    			return;
    		}
			 nui.open({
				 showMaxButton : true,
                    url: "/itmp/weldingmanagement/Apply/WorkFlowSingleformwork.jsp",
                    title: "创建质量计划-单焊接WQP", width:'90%', height: '90%',
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                    		daiyue : daiyue,
                    		pageType:backid,
                    		record:{quality:tempData},
                    		relationid:relationid};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    	initBusinessData();
                	}
                });
		}
     
		//提取人员id
		function getUserId(str) {
			return str.substr(1, str.indexOf("]") - 1);
		}
		
		document.onreadystatechange = function(){
			if(document.readyState == "complete"){ 
			initBusinessData();
			}
		}
		
		//数据加载,获取业务表数据
		function initBusinessData() {
			$.ajax({
				url : 'com.cgn.itmp.weldingmanagement.weldingapplybiz.getApplyInfoByProcessInstId.biz.ext',
				type : 'POST',
				data : nui.encode({
							processInstId : processInstId,
							entityType : 'com.cgn.itmp.weldingmanagement.Quality.Quality'
						}),
				cache : false,
				contentType : 'text/json',
				success : function(result) {
					var quality = {};
					var form = new nui.Form("#dataform1");//将普通form转为nui的form
                    quality = result.result;
                    result.quality = quality;
                      //关闭加载提示
                    mini.unmask(document.body);
                    tempData =  result.quality;
                    form.setData(result);
                    form.setChanged(false);
                    nui.get("sqr").setValue(result.quality.applicant);
                    nui.get("sqsj").setValue(result.quality.applytime);
                    //质量计划类型判断，多焊缝去除WQP编号超链接
					if(result.quality.weldertype == "M"){
						$("#wq").find("span").find("input").css("color","#000").css("text-decoration","none").css("cursor","default");
						weldertype = "M";
						$("#fjTr").show();
						if(backid != 'first'){
							$("#uploadform").css("display","none");
						}
						
						if(result.quality.fj != null && backid != 'first'){
							$("#enclosure").find("span").find("input").css("color","blue").css("text-decoration","underline").css("cursor","pointer");
							$("#enclosure").bind("click",function(){
						       load(result.quality.fildid,result.quality.fj);
						    });
						}else if(isDownloadFile){
							$("#enclosure").find("span").find("input").css("color","blue").css("text-decoration","underline").css("cursor","pointer");
							$("#enclosure").bind("click",function(){
						       load(result.quality.fildid,result.quality.fj);
						    });
						}
					}
					nui.get('combobox1').setAjaxType("POST");
			  		nui.get('combobox1').load("com.cgn.itmp.weldingmanagement.qualitybiz.getWelderName.biz.ext?base="+result.quality.jd);
			  		nui.get('combobox2').setAjaxType("POST");
			  		nui.get('combobox2').load("com.cgn.itmp.weldingmanagement.qualitybiz.getWelderName.biz.ext?base="+result.quality.jd);
			  		
                    nui.get("examinant").setText(result.quality.examinant);
                    nui.get("examinant").setValue(result.quality.examinant!= null?getUserId(result.quality.examinant):"");
                    nui.get("auditor").setText(result.quality.auditor);
                    nui.get("auditor").setValue(result.quality.auditor!= null?getUserId(result.quality.auditor):"");
                    nui.get("reviewer").setText(result.quality.reviewer);
                    nui.get("reviewer").setValue(result.quality.reviewer!= null?getUserId(result.quality.reviewer):"");
                    nui.get("uuid").setValue(result.quality.uuid);
                   if(result.quality.relationid != null){
                   	relationid = result.quality.relationid;
                   }
                   
                   //页面权限判断
                   if(editable == 'false'){
    		nui.get("btnSubmit").hide();
    		nui.get("btnBack").hide();
    		nui.get("btnDelete").hide();
    		labelModel();
    		labelModelBaseInfoForm();
    		daiyue = 1;
    		$("#uploadform").css("display","none");
    		isDownloadFile = true;
	}else{
			if(backid == 'first'){//第一个节点(发起节点)
				if('<%=username%>'  != nui.get('sqr').getValue()){
					nui.get("btnSubmit").hide();
		    		nui.get("btnBack").hide();
		    		nui.get("btnDelete").hide();
		    		$('#scryTr').hide();
		    		$('#shryTr').hide();
		    		$('#fhryTr').hide();
		    		$('#ccryTr').hide();
		    		$('#spyjId').hide();
		    		labelModel(false);
		    		labelModelBaseInfoForm();
		    		daiyue = 1;
		    		isDownloadFile = true;
		    		$("#uploadform").css("display","none");
				}else{
					$('#spyjId').hide();
					nui.get("btnBack").hide();
					$('#scryTr').show();
		    		$('#shryTr').show();
		    		$('#fhryTr').show();
		    		$('#ccryTr').show();
				}
			}else if(backid=="manualActivity"){//审查人节点
				nui.get("btnDelete").hide();
				labelModel(false);
			}else if(backid=="manualActivity1"){//审核人节点
				nui.get("btnDelete").hide();
				labelModel(true);
			}else if(backid == 'finish'){//最后一个节点（复核人节点）
				nui.get("btnDelete").hide();
				labelModel(false);
			}
	}
                   
				}
			})
		}
		
		//附件下载
		function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
			 elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
			 document.body.appendChild(elemIF);
			 elemIF.style.display = "none";
		}		
		
		////////////////////////////////////////////////////////
		//审核通过
		function onSubmit() {
		
			var data = {};
			data.processInstId = nui.get('processInstId').getValue();
			data.workItemId = nui.get('workItemId').getValue();
			data.ccry = nui.get('ccry').getValue();
			data.spyj = nui.get('spyj').getValue();
			data.examinant = nui.get('examinant').getText();
			data.backid = backid;
			
			//业务数据验证
			var dataform1 = new nui.Form("#dataform1");
			dataform1.setChanged(false);
			dataform1.validate();
			if(dataform1.isValid()==false) return;
			//流程数据验证
			var personform = new nui.Form("#baseInfoForm");
			personform.setChanged(false);
			personform.validate();
			if(personform.isValid()==false) return;
			
			var date = new Date();
			var businessData = dataform1.getData(false,true);
			
			if (backid == 'finish') {
				data.entityType = "com.cgn.itmp.weldingmanagement.Quality.Quality";
				data.isdelete = "4";
				businessData.quality.fhsj = nui.formatDate (date, "yyyy-MM-dd HH:mm:ss");
			} else if(backid == "manualActivity"){//审查人节点
				data.jhry = nui.get("auditor").getText();
				businessData.quality.wqp_statu = 'SHZ';
				businessData.quality.scsj =nui.formatDate (date, "yyyy-MM-dd HH:mm:ss");
			}else if(backid == "manualActivity1"){//审核人节点
				//必选预派焊工
				if(nui.get("combobox1").getValue() == ""){
					nui.alert("请选择预派焊工！", "系统提示");
					return;
				}
				data.jhry = nui.get("reviewer").getText(); 
				businessData.quality.wqp_statu = 'FHZ';
				businessData.quality.shsj = nui.formatDate (date, "yyyy-MM-dd HH:mm:ss");
			}else if (backid == "first") {
				data.jhry = data.examinant;
				//审批人员相关信息赋值
				if (nui.get("examinant").getValue() != ""
						|| nui.get("examinant").getValue() != null) {
					businessData.quality.examinant = nui.get("examinant").getText();
				}
				if (nui.get("auditor").getValue() != ""
						|| nui.get("auditor").getValue() != null) {
					businessData.quality.auditor = nui.get("auditor").getText();
					}
				if (nui.get("reviewer").getValue() != ""
					|| nui.get("reviewer").getValue() != null) {
					businessData.quality.reviewer = nui.get("reviewer").getText();
				}
				if (nui.get("ccry").getValue() != ""
					|| nui.get("ccry").getValue() != null) {
					businessData.quality.ccry = nui.get("ccry").value;
				}
				businessData.quality.state = 'WQPZBZ';
				businessData.quality.wqp_statu = 'SCZ';
				businessData.quality.isdel = 0;
			}
			if(relationid != ''){
				data.entityType = "com.cgn.itmp.weldingmanagement.QualityBackup.WeldingQualityBackup";
				businessData.quality.relationid = relationid;
				data.data = businessData.quality;
				data.pageType = 'lversion';
			}else{
				data.entityType = "com.cgn.itmp.weldingmanagement.Quality.Quality";
				data.quality = businessData.quality;
			}
			
			var json = nui.encode(data);
			nui.get("#btnSubmit").setEnabled(false);
			nui.get("#btnDelete").setEnabled(false);
			nui.get("#btnBack").setEnabled(false); 
			 mini.mask({
				el: document.body,
				cls: 'mini-mask-loading',
				html: '加载中...'
			 });
			$
					.ajax({
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

		//取消
		function onCancel() {
			if (self.parent.parent.$("li.index&.icon-task"))
				self.parent.parent.$("li.index&.icon-task").remove();
			self.parent.location.reload();
			return;
		}

		//驳回
		function onBack() {
		//流程数据验证
			var form = new nui.Form("#baseInfoForm");
			form.setChanged(false);
			form.validate();
			if(form.isValid()==false){
				 nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
				 return;
			}
			//工作流公用方法
			var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";

			var data = form.getData(false, true);
			if (backid == "finish") {
				data.backid = "manualActivity2";
			}
			var json = nui.encode(data);

			nui.get("#btnSubmit").setEnabled(false);
			nui.get("#btnDelete").setEnabled(false);
			nui.get("#btnBack").setEnabled(false);
			 mini.mask({
				el: document.body,
				cls: 'mini-mask-loading',
				html: '加载中...'
			 });
			$.ajax({
				url : urlStr,
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
				mini.unmask(document.body);
					var returnJson = nui.decode(text);
					if (returnJson.exception == null) {
						nui.alert("驳回成功", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
								changgeWqpState();
							}
						});
					} else {
						nui.alert("驳回失败", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
								//onCancel();
							}
						});
					}
				}
			});
		}

		//回退成功，改变对应的流程状态
		function changgeWqpState(){
		
			var wqpState = (backid == 'finish' ? 'SHZ':(backid == 'manualActivity1' ? 'SCZ' : 'DTJ'));
			var uuid = nui.get("uuid").getValue();
			$.ajax({
				url : 'com.cgn.itmp.weldingmanagement.weldingapplybiz.changeWqpState.biz.ext',
				type : 'POST',
				data : nui.encode({uuid: uuid,wqpstate :wqpState}),
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var returnJson = nui.decode(text);
					if (returnJson.exception == null) {
						onCancel();
					} else {
						nui.alert("流程状态修改失败", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
								//onCancel();
							}
						})
					}
				}
			})
		}
		//流程作废
		function onDelete() {
			nui
					.confirm(
							"确定要作废流程？",
							"提示",
							function(action) {
								if (action == "ok") {
									nui.get("#btnSubmit").setEnabled(false);
									nui.get("#btnDelete").setEnabled(false);
									nui.get("#btnBack").setEnabled(false);
									var json = {};
									json.processInstId = processInstId;
									json.workItemId = nui.get('workItemId')
											.getValue();
									json.entityType = "com.cgn.itmp.weldingmanagement.Quality.Quality";
									json.isdelete = "0";
									var url = "com.cgn.itmp.weldingmanagement.weldingapplybiz.invalidWorkFlow.biz.ext";
									if(relationid != ''){
										json.uuid = relationid;
										url = "com.cgn.itmp.weldingmanagement.weldingapplybiz.LVersionInvalidWorkFlow.biz.ext";
									}
									var jsondata = nui.encode(json);
									mini.mask({
										el: document.body,
										cls: 'mini-mask-loading',
										html: '加载中...'
									 });
									$.ajax({
										url : url,
										type : 'POST',
										data : jsondata,
										cache : false,
										contentType : 'text/json',
										success : function(data) {
										mini.unmask(document.body);
											var message = "流程作废成功";
											nui.alert(message, "成功",
													function() {
														onCancel();
													});
										}
										});
								}
							});
		}
		//设置常用意见
		function setcyyj() {
			nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
		}
		
		
		  function fileSub(file){
						var  fv=file.value;
						if(fv){
						$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
// 							 if (!/\.(xlsx||png||jpg||gif||doc||docx||zip)$/.test(fv)) {  
// 								 	nui.alert("文件类型必须是gif,png,jpg,doc,docx,xlsx,zip中的一种");  
// 								 return false;  
// 							 }
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
										nui.get("fildid").setValue(data.list[0].uri);
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