<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): train
- Date: 2019-08-24 10:20:56
- Description:
    --%>
    
      <%
    SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dateTime = df.format(new Date());
    IUserObject cu = CommonUtil.getUserObject();
    String username = cu.getUserRealName();
%>
<head>
<title>焊接质量计划管理 - 工序模板新增</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript">
</script>
 <script src="<%= request.getContextPath()%>/js/xlsx.core.min.js" type="text/javascript"></script>
 <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	
<style type="text/css">
 .mini-grid-table tr:first-child td{
	height: 0;
}
 
.mini-grid-cell-nowrap{
	text-align: center;
}
.mini-grid-columns-view *{
 		margin-left: -0px; 
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
    .mini-grid-rows-view{
    	overflow-x: hidden;
    }
    .abiano{
        position: relative;
        border-radius: 4px;
        text-decoration: none;
        color: white;
        font-size: 9pt;
        font-family: Tahoma, Verdana, 宋体;
        background:none !important;
    	background-color: #60b1e3 !important;
    	vertical-align:top;
    	padding: 1px 5px 1px;
    }
    .abiano>input{position:absolute;top:0;right:0;bottom:0;left:0;width:100%;height:100%;opacity:0;cursor:pointer;padding:20px}
    </style>

</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<div class="nui-hidden" name="processes.uuid"></div>
		<div class="nui-hidden" name="processes.isdel"></div>
		<div class="nui-hidden" name="processes.modifyreason"></div>
		<input class="nui-hidden" id="edittime" value="<%=dateTime %>"/>
		<input class="nui-hidden" id="editname" value="<%=username %>" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">工序模板名称:</td>
				<td colspan="1"><input class="nui-textbox"
					name="processes.processnam"  onvalidation="hasIllegalChar(e,100,true,true)" style="width: 100%" required="true" emptyText="请输入工序模板名称" requiredErrorText="请输入工序模板名称"/></td>
				<td class="form_label">适用范围:</td>
				<td colspan="1"><input class="nui-textbox"
					name="processes.scope"  onvalidation="hasIllegalChar(e,50,true,true)" style="width: 100%" required="true" requiredErrorText="请输入适用范围" emptyText="请输入适用范围"/></td>
			</tr>
			<tr class="addPart">
				<td class="form_label">创建人:</td>
				<td colspan="1"><input class="nui-textbox"
					name="processes.founder" readonly="readonly" style="width: 100%" value="<%=username %>" /></td>

				<td class="form_label">创建时间:</td>
				<td colspan="1"><input class="nui-textbox"
					name="processes.createtime" readonly="readonly" style="width: 100%" value="<%=dateTime %>" /></td>
			</tr>
			<tr class="editPart">
				<td class="form_label">修改人:</td>
				<td colspan="1"><input class="nui-textbox" id="xgr"
					name="processes.editor" readonly="readonly" style="width: 100%" /></td>

				<td class="form_label">修改时间:</td>
				<td colspan="1"><input class="nui-textbox" id="xgsj"
					name="processes.edittime" readonly="readonly" style="width: 100%" /></td>
			</tr>
			<tr style="display: none;">
				<td class="form_label"><input class="nui-hidden" value="0"
					name="processes.isdel" /> <input class="nui-hidden" value="0"
					name="processes.state" /></td>
					<input class="nui-hidden" name="processes.relationid">
			</tr>
		</table>
		<div style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td>
						<div style="width: 100%;">
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
							style="width: 100%; height: 365px; text-align: center;"
							showPager="false"
							idField="uuid" allowResize="true" pageSize="20" sizeList="[20,100,1000]"
							defaultColumnWidth="100" allowCellEdit="true" sortMode="client"
							allowCellSelect="true" multiSelect="true" allowCellWrap="true" allowCellValid="true"
							editNextOnEnterKey="true" editNextRowCell="true" >
							<div property="columns">
								<div type="checkcolumn" width="30"></div>
								<div type="indexcolumn">序号</div>
								<div name="orders" field="orders" visible="false" width="40"
									headerAlign="center">
									序号<input type="hidden" class="mini-textbox" />
								</div>
								<div name="steps" field="steps" height="100" width="60%" headerAlign="center">
									工作步骤 <input  onvalidation="hasIllegalChar(e,4000,false,true)" property="editor" class="mini-textarea" />
								</div>
								<div name="filenumber" width="100" field="filenumber"
									headerAlign="center">
									文件编号 <input onvalidation="hasIllegalChar(e,4000,false,true)" property="editor" class="mini-textarea" />
								</div>
								<div name="version" width="100" field="version"
									headerAlign="center">
									版本 <input onvalidation="hasIllegalChar(e,4000,false,true)" property="editor" class="mini-textarea" />
								</div>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<table style="width: 100%; height: 100%; table-layout: fixed;" id="spTable" class="nui-form-table">
			<tr class="editPart">
				<td class="form_label">修改原因:</td>
				<td colspan="3">
					<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)"  required="true" requiredErrorText="修改原因不能为空" emptyText="请输入修改原因" 
					 name="processes.modifyreason" style="width: 100%"/>
				</td>			
			</tr>
			<tr>
				<td class="form_label">审查人:</td>
				<td colspan="1">
					<input id="scry" class="nui-buttonedit" allowInput="false" 
					required="true" requiredErrorText="审查人员不能为空" emptyText="请选择审查人员" readonly="readonly" onclick="onButtonSelectPerson" name="processes.scry" textName="scry" style="width: 100%"/>
				</td>
				<td class="form_label">审核人:</td>
				<td colspan="1">
					<input id="shry" class="nui-buttonedit" allowInput="false" 
					required="true" requiredErrorText="审核人员不能为空" emptyText="请选择审核人员" readonly="readonly" onclick="onButtonSelectPerson" name="processes.shry" textName="shry" style="width: 100%"/>
				</td>
			</tr>
			<tr>
				<td class="form_label">复核人:</td>
				<td colspan="1"><input id="fhry" class="nui-buttonedit" allowInput="false" 
				required="true" requiredErrorText="复核人员不能为空" emptyText="请选择复核人员" readonly="readonly" onclick="onButtonSelectPerson" name="processes.fhry" textName="fhry" style="width: 100%"/></td>

				<td class="form_label">抄送人:</td>
				<td colspan="1">
					<input property="editor" id="ccry" multi="false" class="nui-textboxlist" dataField="list"
	                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext" valueField="empcode"
	                       textField="empcodename" searchField="keyword" style="width:100%"/>
				</td>
			</tr>
			
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4">
					<a class="nui-button" onclick="onOk('admin')" id="save">
                                保存
                            </a>
                            <a class="nui-button" onclick="onOk('manualActivity')" id="tj">
                                提交
                            </a>
                             <span style="display:inline-block;width:25px;">
                            </span>
                             <a class="nui-button" onclick="onOk('')" id="cgx">
                                保存至草稿箱
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button" onclick="onCancel()">
                               关闭
                            </a>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();

		var grid = mini.get("datagrid1");
		var index = 1;
		function addRow() {
			var newRow = {
				orders : index
			};
			grid.addRow(newRow);
			index++;
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
		
		function removeRow() {
			var rows = grid.getSelecteds();
			if (rows.length > 0) {
				index = index - rows.length;
				grid.removeRows(rows, true);
			}else{
				nui.alert("请选择记录");
				return;
			}
			grid.setSelected();
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
		
		//下载模板
		function downloadTemplate(){
			 var tempFileName = "processes.xlsx";
			 var tempLoadName = "工作步骤模板";
	         window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + tempFileName + "&projectPath=example&loadFileName=" + tempLoadName);
		}
		
	var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		$("#save").hide();
		if(isadmin == 'true'){
			$("#tj").hide();
			$("#cgx").hide();
			$("#save").show();
			$("#spTable").hide();
		}
		
		//确定保存或更新
		function onOk(finishFirstActivityId) {
			saveData(finishFirstActivityId);
		}
		
		function saveData(finishFirstActivityId) {
	
	
			var tableData = grid.getData();
			var tableArr = filterArr(tableData);
			for(var j = 0; j<tableArr.length;j++){
				tableArr[j].orders = j+1;
			}
			
			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			
			if(finishFirstActivityId != ''){
				if(finishFirstActivityId == 'admin'){
					finishFirstActivityId = '';
				}
				form.validate();
				if(form.isValid()==false){
					 nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
					 return;
				}
				if(tableArr.length == 0){
					nui.alert("请添加工作步骤");
					return;
				}
			}
			
			var data = form.getData(false, true);
			data.processes.jd = getCookie("jdid");
			data.processes.weldingProcessStepss = tableArr;
			data.processes.scry = nui.get("scry").getText();
			data.processes.ccry = nui.get("ccry").value;
			
			var pageType = nui.getbyName("pageType").getValue();
			var wfInfo = {};
		    wfInfo.isadmin = isadmin;
		    wfInfo.finishFirstActivityId = finishFirstActivityId; 
		    wfInfo.processInstName = "焊接质量计划管理_工序模板_新增";
		    wfInfo.processInstDesc = "焊接质量计划管理_工序模板_新增";
		    if(pageType == "edit"){
		    	wfInfo.processInstName = "焊接质量计划管理_工序模板_修改";
		    	wfInfo.processInstDesc = "焊接质量计划管理_工序模板_修改";
		    }
		    //工作流视图url
		    wfInfo.processDefName = "com.cgn.itmp.weldingmanagement.Quality.ProcessTemplateWF";
        	wfInfo.jhry = nui.get("scry").getText();
        	wfInfo.ccry = nui.get("ccry").getValue();
        	
        	wfInfo.data = data.processes;
			var json = nui.encode(wfInfo);
			
			mini.mask({el: document.body,cls: 'mini-mask-loading',html: '加载中...'});
			nui.get("save").setEnabled(false);
			nui.get("tj").setEnabled(false);
			nui.get("cgx").setEnabled(false);
			//工作流启动
			var urlStr = "com.cgn.itmp.weldingmanagement.processesbiz.openWorkFlow.biz.ext";	
			$.ajax({
				url : urlStr,
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
				nui.get("save").setEnabled(true);
				nui.get("tj").setEnabled(true);
				nui.get("cgx").setEnabled(true);
				 mini.unmask(document.body);
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
									nui.get("save").setEnabled(true);
									nui.get("tj").setEnabled(true);
									nui.get("cgx").setEnabled(true);
									});
								 }
			});
		}

function dateFormat(date) {

return nui.formatDate (date, "yyyy-MM-dd HH:mm:ss");

}

		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);

			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);
			
			if(infos.pageType == "add"){
				$(".editPart").hide();
			}else if (infos.pageType == "edit") {
				$(".addPart").hide();
				infos.record.processes.createtime = dateFormat(infos.record.processes.createtime);
				var json = infos.record;
				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				json.processes.editor = $("#editname").val();
				json.processes.edittime = $("#edittime").val();
				json.processes.scry = '';
				json.processes.shry = '';
				json.processes.fhry = '';
				json.processes.ccry = '';
				form.setData(json);
				form.setChanged(false);
				
				$.ajax({
					url : "com.cgn.itmp.weldingmanagement.processesbiz.getProcessesSteps.biz.ext?pid="+json.processes.uuid,
					type : 'POST',
					data : '',
					cache : false,
					success : function(text) {
						var data = text.dataObject;
						index = data.length+1;
						for(var i = 0; i < data.length;i++){
							var row = {
									uuid:data[i].uuid,
									orders : data[i].orders,
									steps : data[i].steps,
									filenumber : data[i].filenumber,
									version : data[i].version
								};
								grid.addRow(row);
						}
					}
				});
				
				nui.get("scry").setValue(json.processes.scry);
				nui.get("scry").setText(json.processes.scry);
				nui.get("shry").setValue(json.processes.shry);
				nui.get("shry").setText(json.processes.shry);
				nui.get("fhry").setValue(json.processes.fhry);
				nui.get("fhry").setText(json.processes.fhry);
			}else if(infos.pageType == "show"){
				$("#spTable").hide();
				$(".addPart").hide();
				$(".editPart").hide();
				infos.record.processes.createtime = dateFormat(infos.record.processes.createtime);
				var json = infos.record;
				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
				
				$
						.ajax({
							url : "com.cgn.itmp.weldingmanagement.processesbiz.getProcessesSteps.biz.ext?pid="+json.processes.uuid,
							type : 'POST',
							data : '',
							cache : false,
							success : function(text) {
								var data = text.dataObject;
								index = data.length+1;
								for(var i = 0; i < data.length;i++){
									var row = {
											uuid:data[i].uuid,
											orders : data[i].orders,
											steps : data[i].steps,
											filenumber : data[i].filenumber,
											version : data[i].version
										};
										grid.addRow(row);
								}
							}
						});
						
						$("#add").hide();
						$("#del").hide();
						$("#template").hide();
						$("#choosefile").hide();
						$("#tj").hide();
						$("#cgx").hide();
						$("#save").hide();
						 var fields = form.getFields();                
				            for (var i = 0, l = fields.length; i < l; i++) {
				                var c = fields[i];
				                if (c.setReadOnly) c.setReadOnly(true);     //只读
				                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
				                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
				        }
					nui.get("scry").setValue(json.processes.scry);
					nui.get("scry").setText(json.processes.scry);
					nui.get("shry").setValue(json.processes.shry);
					nui.get("shry").setText(json.processes.shry);
					nui.get("fhry").setValue(json.processes.fhry);
					nui.get("fhry").setText(json.processes.fhry);
					grid.hideColumn(0);
					grid.allowCellEdit=false;
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

		//取消
		function onCancel() {
			CloseWindow("cancel");
		}
		
	</script>
</body>
</html>