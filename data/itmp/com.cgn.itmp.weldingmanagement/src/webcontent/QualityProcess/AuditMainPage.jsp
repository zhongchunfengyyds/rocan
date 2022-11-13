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
<title>工序模板 - 流程 - 审批页面</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/common/common.js"
	type="text/javascript"></script>
 <script src="<%= request.getContextPath()%>/js/xlsx.core.min.js" type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />

</head>
<style type="text/css">
.mini-grid-table tr:first-child td {
	height: 0;
}

.mini-grid-cell-nowrap {
	text-align: center;
}
.mini-grid-rows-view{
    overflow-x : hidden;
    }
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
    .abiano{
        position: relative;
        border-radius: 4px;
        text-decoration: none;
        color: white;
        font-size: 9pt;
        background:none !important;
    	background-color: #60b1e3 !important;
    	vertical-align:top;
    	padding: 1px 5px 1px;
    }
    .abiano>input{position:absolute;top:0;right:0;bottom:0;left:0;width:100%;height:100%;opacity:0;cursor:pointer;padding:20px}
    .mini-grid-columns-view *{
 		margin-left: -0px; 
	}
</style>
<body>
	<div style="padding-top: 5px; width: 100%;">
		<!-- 审核内容 -->
		<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">工序模板名称:</td>
				<td colspan="1"><input class="nui-textbox" required="true" emptyText="请输入工序模板名称" requiredErrorText="请输入工序模板名称"
					name="processnam" style="width: 100%" /></td>
				<td class="form_label">适用范围:</td>
				<td colspan="1"><input class="nui-textbox" required="true" emptyText="请输入适用范围" requiredErrorText="请输入适用范围"
					name="scope" style="width: 100%" />
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td>
					<div style="width: 100%;" id="oprationBtn">
							<div class="mini-toolbar" style="border-bottom: 0; padding: 0px;">
								<table style="width: 100%;">
									<tr>
										<td style="width: 100%;">
										<a class="mini-button"
											 onclick="addRow()" plain="true" id="add"
											>增加</a> 
										<a class="mini-button"
											 onclick="removeRow()" plain="true" id="del">删除</a>
											 <a class="mini-button"
											 onclick="downloadTemplate()" plain="true" id="template">模板下载</a> 
											 <a class="abiano" id="choosefile">选择文件
											        <input type="file" id="excel-file" />
											    </a>
										</td>
									</tr>
								</table>
							</div>
						</div>
						<div id="datagrid1" class="nui-datagrid"
							style="width: 100%; height: 280px; text-align: center;"
							showPager="false"
							idField="uuid" allowResize="true" pageSize="20" sizeList="[20,100,1000]"
							defaultColumnWidth="100" allowCellEdit="true"
							allowCellSelect="true" multiSelect="true" allowCellWrap="true"
							editNextOnEnterKey="true" editNextRowCell="true" >
							<div property="columns">
								<div type="checkcolumn" width="30"></div>
								<div type="indexcolumn">序号</div>
								<div name="orders" field="orders" visible="false" width="40"
									headerAlign="center">
									序号<input type="hidden" class="mini-textbox" />
								</div>
								<div name="steps" field="steps" width="60%" headerAlign="center">
									工作步骤 <input property="editor" onvalidation="hasIllegalChar(e,4000,false,true)" class="nui-textarea" />
								</div>
								<div name="filenumber" width="100" field="filenumber"
									headerAlign="center">
									文件编号 <input property="editor" onvalidation="hasIllegalChar(e,4000,false,true)" class="nui-textbox" />
								</div>
								<div name="version" width="100" field="version"
									headerAlign="center">
									版本 <input property="editor" onvalidation="hasIllegalChar(e,4000,false,true)" class="nui-textbox" />
								</div>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
		</div>
		<!-- 审核内容 END -->
		<div style="padding-top: 5px;" id="baseInfoForm">
			<!-- hidden域 -->
			<input
				class="nui-hidden" id="editable"
				value="<b:write property='editable'/>" /> <input class="nui-hidden"
				name="processInstId" value="<b:write property='processInstId'/>"
				id="processInstId" /> <input class="nui-hidden" id="workItemId"
				name="workItemId" value="<b:write property='workItemId'/>" /> <input
				id="backid" class="nui-hidden" value="<b:write property='backid'/>"
				name="backid" />
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
						<td colspan="2" class="form_label">常用意见:<input id="cyyj"
							class="nui-dictcombobox" onvaluechanged="setcyyj" name="cyyj"
							dictTypeId="CYYJ" style="width: 80%" />
						</td>
					</tr>

					<tr id="sqrTr">
						<td class="form_label" style="width: 10%">申请人:</td>
						<td colspan="1"><input id="sqr" readonly="readonly"
							class="nui-textbox" style="text-align: center; width: 90%;"
							name="personInfo.sqr" value="<b:write property='baseInfo/applicant'/>" />
						</td>
						<td class="form_label" style="width: 10%">申请时间:</td>
						<td colspan="1"><input id="sqsj" readonly="readonly"
							class="nui-textbox" style="text-align: center; width: 90%;"
							name="personInfo.sqsj"
							value="<b:write property='baseInfo/applytime'/>" /></td>
					</tr>
					<tr id="xgrTr">
						<td class="form_label" style="width: 10%">修改人:</td>
						<td colspan="1"><input id="xgr" readonly="readonly"
							class="nui-textbox" style="text-align: center; width: 90%;"/>
						</td>
						<td class="form_label" style="width: 10%">修改时间:</td>
						<td colspan="1"><input id="xgsj" readonly="readonly"
							class="nui-textbox" style="text-align: center; width: 90%;"/></td>
					</tr>
					<tr id="xgyyTr">
						<td class="form_label" style="width: 10%">修改原因:</td>
						<td colspan="3"><input id="modifyreason" required="true" requiredErrorText="修改原因不能为空" emptyText="请选择修改原因"
							class="nui-textbox" style="text-align: center; width: 90%;"/>
						</td>
					</tr>
					<tr id="scryTr">
						<td class="form_label" style="width: 10%">审查人员:</td>
						<td colspan="5"><input id="scry" class="nui-buttonedit" required="true" requiredErrorText="审查人员不能为空" emptyText="请选择审查人员"
						readonly="readonly" onclick="onButtonSelectPerson" allowInput="false" name="personInfo.scry"
						style="width: 100%"/></td>
					</tr>
					<tr id="shryTr">
					<td class="form_label">审核人员:</td>
					<td colspan="5"><input id="shry" class="nui-buttonedit" required="true" requiredErrorText="审核人员不能为空" emptyText="请选择审核人员"
						readonly="readonly" onclick="onButtonSelectPerson" allowInput="false" name="personInfo.shry"
						style="width: 100%" /></td>
					</tr>
					<tr id="fhryTr">
						<td class="form_label">复核人员:</td>
						<td colspan="5"><input id="fhry" class="nui-buttonedit" required="true" requiredErrorText="复核人员不能为空" emptyText="请选择复核人员"
							readonly="readonly" onclick="onButtonSelectPerson" allowInput="false" name="personInfo.fhry"
							style="width: 100%" /></td>
					</tr>
					<tr id="ccryTr">
						<td class="form_label">抄送人员:</td>
						<td colspan="5"><input property="editor" id="ccry"
							multi="false" name="personInfo.ccry" class="nui-textboxlist"
							dataField="list"
							url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
							valueField="empcode" textField="empcodename" searchField="keyword"
							style="width: 100%" />
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
    var pageType = "";
    var uuid = "";
    var relationid = "";
    //显示全局数据加载提示
    mini.mask({
    	el: document.body,
        cls: 'mini-mask-loading',
        html: '加载中...'
   	});
    var editable = nui.get('editable').getValue();//已办
    var backid = nui.get("backid").getValue();//上一节点id
	var personInfo = {};
	var processInstId = nui.get("processInstId").getValue();
	var workItemId =nui.get("workItemId").getValue();
    	
    	var grid = mini.get("datagrid1");
		var index = 1;
		function addRow() {
			var newRow = {
				orders : index
			};
			grid.addRow(newRow);
			index++;
		}
		function removeRow() {
			var rows = grid.getSelecteds();
			if (rows.length > 0) {
				index = index - rows.length;
				grid.removeRows(rows, true);
			}else{
				nui.alert("请选择记录！");
				return;
			}
		}

		function filterArr(arr){
			for(var i = 0;i < arr.length; i++){
				if(arr[i].steps == null || arr[i].steps == "" ||typeof(arr[i].steps) == "undefined"){
					arr.splice(i,1);
					filterArr(arr);	
				}
			}
			return arr;
		}
    	
    	function sortArr(arr){
    		for(var i= 0; i < arr.length-1; i++){
    			for(var j = i+1; j < arr.length; j++){
    				if(arr[i].orders > arr[j].orders){
 						var order = arr[i];
 						arr[i] = arr[j];
 						arr[j] = order;   				
    				}
    			}
    		}
    		return arr;
    	}
    	
    	window.alert=function(){
				return false;
			}
    	function onCellValidation(e){
    		if(e.value != null && e.value != ""){
	         if(hasIllegalCharNew(e.value)){
	         	var newData = cleanData(this.data,e.field,e.row._id);
				this.setData(newData);	         
	         	nui.alert("含有非法字符,请检查输入的内容");
	    		return;
	         }
            }
    	}
    	
    	
    	//选择文件解析
	$('#excel-file').change(function(e) {            
	        try {
	            new Uint8Array([1,2]).slice(0,2);
	        } catch (e) {
	            
	            //IE或有些浏览器不支持Uint8Array.slice()方法。改成使用Array.slice()方法
	            Uint8Array.prototype.slice = Array.prototype.slice;
	        }
	        var url=$('#excel-file').val();
	        if(!url){return;}
	        var suffix=url.substring(url.lastIndexOf(".")+1,url.length);
	        if(!(suffix=="xls"||suffix=="xlsx")){
	        	nui.alert("文件类型不正确");
	            return;
	        }
	        var files = e.target.files;	        
	        var fileReader = new FileReader();
	        fileReader.readAsArrayBuffer(files[0]);// 以二进制方式打开文件
	        fileReader.onload = function(ev) {
	            $('#excel-file').val('');
	            try {	                
	            	var data = ev.target.result;
	            	var workbook = XLSX.read(data, { type: 'array'}),
	                persons = [];
	            } catch (e) {
	            	console.error(e);
	            	nui.alert("文件类型不正确");
	                return;
	            }
	            
	            //遍历每张表读取
	            for (var sheet in workbook.Sheets) {
	                if (workbook.Sheets.hasOwnProperty(sheet)) {
	                	var columnRow = XLSX.utils.sheet_to_json(workbook.Sheets[sheet] ,{raw:true, header:1});
	                	if(columnRow == 0){
	                		nui.alert("导入模板无数据");
	                		return;
	                	}
	                	if(!checkTemplate(columnRow[0])){
	                		nui.alert("导入模板错误，请检查导入模板");
	                		return;
	                	}
	                    persons = persons.concat(XLSX.utils.sheet_to_json(workbook.Sheets[sheet]/* ,{raw:true, header:1} */));
	                    break;
	                }
	            }
				//console.log(persons);
				batchAddRows(persons);
	        };
	    });
		
		function checkTemplate(arr){
			var current = false;
			if(arr.contains("orders") && arr.contains("steps") && arr.contains("filenumber") && arr.contains("version")){
				current = true;
			}
			return current;
		}
		
		function batchAddRows(persons){
			if(persons.length <= 1){
				nui.alert("导入模板无数据");
	            return;
			}
			for(var i = 1; i< persons.length;i++){
				var newRow = persons[i];
				grid.addRow(newRow);
				index++;
			}
		}
    	
    	//下载模板
		function downloadTemplate(){
			 var tempFileName = "processes.xlsx";
			 var tempLoadName = "工作步骤模板";
	         window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + tempFileName + "&projectPath=example&loadFileName=" + tempLoadName);
		}
		
    	
		//数据加载,获取业务表数据
		initBusinessData();
		function initBusinessData() {
			$.ajax({
				url : 'com.cgn.itmp.weldingmanagement.processesbiz.queryAuditData.biz.ext',
				type : 'POST',
				data : nui.encode({
							processInstId : processInstId
						}),
				cache : false,
				contentType : 'text/json',
				success : function(result) {
					if(result.result.data!= null && result.result.data.relationid != null){
						relationid = result.result.data.relationid;
					}
					uuid = result.result.data.uuid;
					//页面类型 add / edit
					pageType = result.result.pageType;
					var datas = result.result.data;
					var form = new nui.Form("#dataform1");//将普通form转为nui的form
					form.setData(datas);
					form.setChanged(false);
					nui.get("sqr").setValue(result.result.data.founder);
					nui.get("sqsj").setValue(result.result.data.createtime);
					nui.get("xgr").setValue(result.result.data.editor);
					nui.get("xgsj").setValue(result.result.data.edittime);
					nui.get("modifyreason").setValue(result.result.data.modifyreason);
					nui.get("scry").setText(result.result.data.scry);
					nui.get("scry").setValue(result.result.data.scry);
					nui.get("shry").setText(result.result.data.shry);
					nui.get("shry").setValue(result.result.data.shry);
					nui.get("fhry").setText(result.result.data.fhry);
					nui.get("fhry").setValue(result.result.data.fhry);
					/* nui.get("ccry").setValue(result.result.data.ccry);
					nui.get("ccry").setText(result.result.data.ccry); */
					var childArrs = sortArr(result.result.data.weldingProcessSteps);
					
					var grid = mini.get("datagrid1");
					if(childArrs.length > 0){
						index = childArrs.length+1;
						for(var i = 0; i < childArrs.length;i++){
							var row = {
									uuid:childArrs[i].uuid,
									orders : childArrs[i].orders,
									steps : childArrs[i].steps,
									filenumber : childArrs[i].filenumber,
									version : childArrs[i].version
								};
								grid.addRow(row);
						}
					}
					
					var currentUser = "";
					if(pageType == 'add'){
						currentUser = nui.get('sqr').getValue();
						$("#xgrTr").hide();
						$("#xgyyTr").hide();
					}else{
						currentUser = nui.get('xgr').getValue();
						$("#sqrTr").hide();
					}
					
					if(editable == 'false'){
				    		nui.get("btnSubmit").hide();
				    		nui.get("btnBack").hide();
				    		nui.get("btnDelete").hide();
				    		labelModel();
				    		labelModelBaseInfoForm();
					}else{
							if(backid == 'first'){//第一个节点(发起节点)
								if('<%=username%>'  != currentUser){
									nui.get("btnSubmit").hide();
						    		nui.get("btnBack").hide();
						    		nui.get("btnDelete").hide();
						    		$('#scryTr').hide();
						    		$('#shryTr').hide();
						    		$('#fhryTr').hide();
						    		$('#ccryTr').hide();
						    		$('#spyjId').hide();
						    		labelModel();
				    				labelModelBaseInfoForm();
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
								labelModel();
							}else if(backid=="manualActivity1"){//审核人节点
								nui.get("btnDelete").hide();
								labelModel();
							}else if(backid == 'finish'){//最后一个节点（复核人节点）
								nui.get("btnDelete").hide();
								labelModel();
							}
					}
                     //关闭加载提示
                    mini.unmask(document.body);
				}
			})
		}
		
		//文本只读模式，业务数据
		function labelModel() {
			$("#oprationBtn").hide();
			grid.hideColumn(0);
			grid.allowCellEdit=false;
			nui.get("scry").disable();
			nui.get("shry").disable();
			nui.get("fhry").disable();
			nui.get("modifyreason").setEnabled();
            var form = new nui.Form("#dataform1");
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
        }
		
		//审批信息禁用
		function labelModelBaseInfoForm() {
			$("#spyjId").hide();
			$("#ccryTr").hide();
			nui.get("scry").disable();
			nui.get("shry").disable();
			nui.get("fhry").disable();
			var form = new nui.Form("#baseInfoForm");
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
			//getworkItemId(workItemId);
		}
		
		function getworkItemId(workItemId){
        		var json =nui.encode({currentActInstId:workItemId});
        		var workItemId="";
        		$.ajax({
					url : "com.cgn.itmp.basecommon.WorkFlowCommon.getActiviInfo.biz.ext",
					type : 'POST',
					data : json,
					cache : false,
					async:false,
					contentType : 'text/json',
					success : function(text) {
						workItemId=text.data.currentWorkItems.BPSWorkItemExpand[0].workItemID;
					}
				});
				return workItemId;
			}
		
		////////////////////////////////////////////////////////

		//审核通过
		function onSubmit() {
			
			//流程数据验证
			var personform = new nui.Form("#baseInfoForm");
			personform.setChanged(false);
			personform.validate();
			if(personform.isValid()==false){
				 nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
				 return;
			}
			//业务数据验证
			var dataform1 = new nui.Form("#dataform1");
			dataform1.setChanged(false);
			dataform1.validate();
			if(dataform1.isValid()==false){
				 nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
				 return;
			}
			var dataFieldValue = dataform1.getData(false, true);
			var processes = {};
			processes.uuid = uuid;
			processes.processnam = dataFieldValue.processnam;
			processes.scope = dataFieldValue.scope;
			processes.ccry = nui.get('ccry').value;
			processes.relationid = relationid;
			
			//获取子表数据
			var grid = mini.get("datagrid1");
			var tableData = grid.getData();
			var tableArr = filterArr(tableData);
			for(var j = 0; j<tableArr.length;j++){
				tableArr[j].orders = j+1;
			}
			
			if(tableArr.length == 0){
				nui.alert("请添加工作步骤！");
				return;
			}
			processes.weldingProcessStepss = tableArr;
		
			//流程参数
			var wfInfo = {};
			wfInfo.processInstId = nui.get('processInstId').getValue();
			wfInfo.workItemId = nui.get('workItemId').getValue();
			wfInfo.ccry = nui.get('ccry').getValue();
			wfInfo.spyj = nui.get('spyj').getValue();
			wfInfo.backid = backid;
			wfInfo.pageType = pageType;
			var date = new Date();
			
			if (backid == 'finish') {//复核人节点
				processes.fhsj = nui.formatDate (date, "yyyy-MM-dd HH:mm:ss");
			} else if(backid == "manualActivity"){//审查人节点
				wfInfo.jhry = nui.get("shry").getText();
				processes.scsj = nui.formatDate (date, "yyyy-MM-dd HH:mm:ss");
			}else if(backid == "manualActivity1"){//审核人节点
				wfInfo.jhry = nui.get("fhry").getText();
				processes.shsj = nui.formatDate (date, "yyyy-MM-dd HH:mm:ss");
			}else if (backid == "first") {
				processes.scry = nui.get("scry").getText();
				processes.shry = nui.get("shry").getText();
				processes.fhry = nui.get("fhry").getText();
				wfInfo.jhry = nui.get("scry").getText();
			}
			wfInfo.personInfo = personInfo;
			wfInfo.data = processes;
			
			var json = nui.encode(wfInfo);
			 mini.mask({
				el: document.body,
				cls: 'mini-mask-loading',
				html: '加载中...'
			 });
			$
					.ajax({
						url : "com.cgn.itmp.weldingmanagement.processesbiz.operateWorkFlow.biz.ext",
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
										//onCancel();
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
								onCancel();
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

		//流程作废
		function onDelete() {
			nui
					.confirm(
							"确定要作废流程？",
							"提示",
							function(action) {
								if (action == "ok") {
									var json = {};
									json.processInstId = processInstId;
									json.workItemId = nui.get('workItemId').getValue();
									json.pageType = pageType;
									var jsondata = nui.encode(json);
									mini.mask({
										el: document.body,
										cls: 'mini-mask-loading',
										html: '加载中...'
									 });
									$
											.ajax({
												url : "com.cgn.itmp.weldingmanagement.processesbiz.invalidWorkFlow.biz.ext",
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
		
		  
		//提取人员id
		function getUserId(str) {
			return str.substr(1, str.indexOf("]") - 1);
		}
		
		
		
		$("input[readOnly]").keydown(function(e) {
              e.preventDefault();
         });
	</script>
</body>
</html>