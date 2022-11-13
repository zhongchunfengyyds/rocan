<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserObject user = (UserObject) request.getSession().getAttribute("userObject");
	String userName = user.getUserRealName();
	String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%><html>
<%--
- Author(s): Administrator
- Date: 2019-01-07 16:56:34
- Description:
    --%>
<head>
<title>监管要求管理</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/common.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript">
	
</script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/themes/cuc/skin.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<body
	style="background-color: #f1f1f1; width: 98%; height:100%; margin: 0 auto;">
			<div class="bs-docs-section">
	<div class="search-box">
		<div class="search-container folding-menu" id="queryForm">
			<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0"
						class="table Keywordsearchtable" style="height: 100%;">
						<tr class="">
							<td class="form_label">关键字查询:</td>
							<td class="form_label"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td colspan="2"
								style="width: 50%; border-right: 1px solid #f7f7f9 !important"
								class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()"> 模糊查询 </a> 
									<a id="allQuery" style="display: none" class="btn btn-default" onclick="searchs()"> 查询 </a> 
									<a class="btn btn-default" onclick="reset()"> 重置 </a>
									<div onclick="showquery()" id="funquery"
										class="fa fa-chevron-down fa-1x">
										&nbsp;<a id="scbt">高级查询</a>
									</div>
								</div>
							</td>
							<td style="width: 0%; background: #f7f7f9;" class="form_label">
							</td>
						</tr>
					</table>
				<div id="form1" class="nui-form display" align="center" style="height: 27px">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgt.RegulationRequirementsMgtSearch">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">来源：</td>
							<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[1]/source" /> <input class="nui-hidden"
									name="criteria/_expr[1]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[1]/_likeRule"
									value="all"></td>
							<td class="form_label">状态：</td>
							<td colspan="1"><input class="nui-dictcombobox"
									name="criteria/_expr[2]/statu" dictTypeId="JGYQSTATU"
									url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=JGYQSTATU"
									textField="dictName" valueField="dictID" emptyText="请选择"
									required="false" allowInput="true" showNullItem="true"
									nullItemText="请选择..." /> <input class="nui-hidden"
									name="criteria/_expr[2]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
						</tr>
					</table>
					<input class="nui-hidden" name="criteria/_expr[3]/isdelete"
									value="0" /> <input class="nui-hidden"
									name="criteria/_expr[3]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[3]/_likeRule"
									value="end"> <input class="nui-hidden" id="con_jdid"
									name="criteria/_expr[4]/jdid" /> <input class="nui-hidden"
									name="criteria/_expr[4]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[4]/_likeRule"
									value="end">
									<input class="nui-hidden" name="criteria/_orderby[5]/_property" value="orderindex">
									<input class="nui-hidden" name="criteria/_orderby[5]/_sort" value="desc">
				</div>
				
			</div>

		</div>
	</div>
</div>

				<script type="text/javascript"
					src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>

	<div region="center" style="width: 100%; height: 92%;"
		showToolbar="false" showFooter="false">
		<div class="nui-toolbar" style="border-bottom:0;padding:0px;" name="ITMP_btn">
			<table style="width:100%;">
				<tr>
					<td style="width:100%;padding:5px 0;">
							<button id="addallbut" style="position: relative;" class="btn btn-default"
							onclick="openAllAdd()">
							新增
						</button>
						<ul id="popupMenu" class="add_adds nui-menu">
							<li onclick="add()">单条新增</li>
							<li onclick="batchAdd()">批量新增</li>
						</ul>
<!-- 						<a class="nui-button btn btn-default btn-xs" id="menuButton"  menu="#popupMenu" name="ITMP_btnAdd">新增</a> -->
<!-- 						<ul id="popupMenu" class="nui-menu" style="display:none;"> -->
<!-- 							<li   name="ITMP_btnAddOne" onclick="add()">单条增加</li> -->
<!-- 							<li   name="ITMP_btnAddBatch" onclick="batchAdd()">批量增加</li> -->

<!-- 						</ul> -->


						<a id="update" class="nui-button showCellTooltip btn btn-default btn-xs" onclick="edit()" name="ITMP_btnEdit" >
							修改
						</a>
						<a class="nui-button btn btn-default btn-xs"  onclick="remove()" name="ITMP_btnDel" >
							删除
						</a>
						<a class="nui-button btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp">
							导出</a>

						<a class="nui-button btn btn-default btn-xs" onclick="recycle()" name="ITMP_btnRec" >
							回收站
						</a>
						<a class="nui-button btn btn-default btn-xs" onclick="task()" id="task" name="ITMP_btnRWDB">
							任务督办
						</a>
						<span id="saveOrCancel">
	                         <a class="nui-button  btn btn-warning btn-xs" id="save" onclick="saveData()" >保存</a>
	                         <a class="nui-button  btn btn-primary btn-xs" id="cancel" onclick="cancelSave()">关闭</a>
                         </span>

					</td>
				</tr>
			</table>
		</div>
		<div class="nui-fit">
			<div id="datagrid1" dataField="tddxgljgyqgls" class="nui-datagrid"
				style="width: 100%; height: 100%;"
				url="com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgt.queryTdDxglJgyqgls.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"
				allowAlternating="true" onselectionchanged="selectionChanged"
				allowSortColumn="true" allowCellValid="true"
				oncellvalidation="onCellValidation" sortMode="client" oncellbeginedit="OnCellBeginEdit">
				<div property="columns">
					 
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div header="大修轮次" headerAlign="center">
						<div property="columns">
							<div field="jizu" id="jizu" allowResize="false" 
								width="70" headerAlign="center" allowSort="true">
								<div id="combobox1" property="editor" popupWidth="70" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="false"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         <div field="name"></div>
							     </div>
								</div>
							</div>
						</div>
					</div>
					<div field="jzstatu" headerAlign="center" allowSort="true"
						renderer="jzztRenderer">
						机组状态<input property="editor" class="nui-dictcombobox"
							style="width: 100%;" dataField="jzstatu" dictTypeId="JZZT"
							required="true" requiredErrorText="机组状态不能为空" />
					</div>
					<div field="source" headerAlign="center" allowSort="true">
						来源<input property="editor" class="nui-textbox"
							style="width: 100%;" required="true" requiredErrorText="机组状态不能为空" />
					</div>
					<div field="jgyq" headerAlign="center" allowSort="true">
						监管要求<input property="editor" class="nui-textarea"
							style="width: 100%;" required="true" requiredErrorText="来源不能为空" />
					</div>
					<div field="xdjh" headerAlign="center" allowSort="true">
						行动计划<input property="editor" class="nui-textarea"
							style="width: 100%;" required="true" requiredErrorText="行动计划不能为空" />
					</div>
					<div field="zrr" headerAlign="center" allowSort="true">
						责任人<input property="editor" class="nui-textbox"
							style="width: 100%;" required="true" requiredErrorText="责任人不能为空" />
					</div>
					<div field="fujian" headerAlign="center" allowSort="true"
						renderer="setFile">
						附件<input id="fujian" property="editor"
							class="nui-fileupload nui-form-input" name="uploadFile"
							limitType="*.*" limitSize="100MB"
							flashUrl="<%=request.getContextPath()%>/js/swfupload/swfupload.swf"
							onfileselect="onfileselect"
							uploadUrl="<%=request.getContextPath()%>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
							onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
							style="width: 100%;" />
					</div>
					<div field="wcqksm" headerAlign="center" allowSort="true">
						完成情况说明<input property="editor" class="nui-textarea"
							style="width: 100%;" />
					</div>
					<div field="statu" headerAlign="center" allowSort="true"
						renderer="ztRenderer">
						状态<input property="editor" class="nui-dictcombobox"
							style="width: 100%;" dataField="statu" dictTypeId="JGYQSTATU" />
					</div>
					
					<div field="zynr" headerAlign="center" allowSort="true"
						visible="false">主要内容</div>
					<div field="hxxd" headerAlign="center" allowSort="true"
						visible="false">后续行动</div>
					<div field="wjmc" headerAlign="center" allowSort="true"
						visible="false">文件名称</div>
					<div field="upduser" headerAlign="center" allowSort="true"
						visible="false">修改人</div>
					<div field="updtime" headerAlign="center" allowSort="true"
						visible="false">修改时间</div>
					<div field="isdelete" headerAlign="center" allowSort="true"
						visible="false">删除标志</div>
					<div field="filePath" headerAlign="center" allowSort="true"
						visible="false">file_path</div>
					<div field="fileRealName" headerAlign="center" allowSort="true"
						visible="false">fileRealName</div>
					<div field="filename" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="filepath" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="fildid" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="addtime" headerAlign="center" allowSort="true"
						visible="false"></div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var grid = nui.get("datagrid1");
		var jdid = getCookie('jdid');
		var fileName = "";
		var filePath = "";
		nui.get('con_jdid').setValue(jdid);
		nui.get("save").hide();
		nui.get("cancel").hide();
		nui.get("update").disable();
		nui.get("task").disable();
		if (jdid != null && jdid != "") {
			//按钮权限控制
			accessControlButton('<%=userRoleCodeList %>',3);
			var formData = new nui.Form("#form1").getData(false, false);
			grid.load(formData);
		}

		function onCellValidation(e) {
			if (e.field == "jizu" || e.field == "jzstatu" || e.field == "zrr"
					|| e.field == "source" || e.field == "jgyq"
					|| e.field == "xdjh") {
				if (e.value == null || e.value == "") {
					e.isValid = false;
					e.errorText = "字段不能为空";
					//                     grid.beginEditRow(e.row); 
				}
			}
		}
		function xhRender(e) {
			return e.row.name;

		}
		/******   Tip提示 组件初始化 Start   *******/
		var tip = new nui.ToolTip();
		tip.set({
			target : document,
			selector : '.showCellTooltip', //要添加提示元素的calss
			placement : 'topleft', //提示出现的位置 
			onbeforeopen : function(e) {
				e.cancel = false;
			},
			onopen : function(e) { //提示框打开触发事件
				tip.setContent("请选择需要修改的数据"); //给提示框内容添加值
			}
		});
		//关键字查询
		function btnQuery() {
			var gjz=$("#cond").val();
				if(gjz==""){
					refresh();
					nui.get("update").disable();
				}else{
					var data = {
						matchFied : "jizu,source,wcqksm,upduser,statu,jgyq,xdjh,zrr",
						dicFied : "jzstatu@JZZT",
						wordVal : $("#cond").val(),
						entity : $("input[name='criteria/_entity']").val(),
						entityName : 'criteria',
						sfdel : true,
						jdInfo : 'jdid@' + getCookie('jdid')
					}
					var query = nui.decode(getKeyWordQuery(data));
					grid.load(query);
					nui.get("update").disable();
				}

		}

		function output() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			nui
					.open({
						showMaxButton : true,
						url : "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
						title : "导出数据",
						width : 350,
						height : 200,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								entityName : "com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgt.RegulationRequirementsMgtSearch",
								queryParam : json, //查询数据
								queryKey : 'criteria', //查询实体名
								query : [ 'source', 'statu', 'isdelete','jdid','addtime'], //按顺序放置
								filterField : ['lunci','zynr','hxxd','wjmc','fileRelativePath','orderindex', 'uuid', 'isdelete', 'fujian',
										'updtime', 'upduser', 'fildid',
										'fileId', 'fileRealName', 'filePath',
										'fileSize', 'fileType',
										'fileUploadTime', 'fileUploadUser',
										'fileNewName','xh','name','addtime' ],
								expTitle : "监管要求管理",
								dicFieds : "jzstatu@JZZT,statu@JGYQSTATU",
								jdFieds : "jdid",
								//jzFieds : "jizu",
								order:"orderindex@desc"
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
							grid.reload();
						}
					});
		}
		//批量添加
		function batchAdd() {
			nui
					.open({
						showMaxButton : true,
						url : "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
						title : "新增记录",
						width : 600,
						height : 300,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								pageType : "batchAdd",
								tempFileName : "dxjgyqImport.xlsx",
								tempLoadName : "监管要求管理导入模板",
								entitfName : "com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgt.RegulationRequirementsMgt"
							};//传入页面的json数据
							iframe.contentWindow.SetData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
							grid.reload();
						}
					});
		}
		//上传附件操作
		function onfileselect(e) {
			startUpload(e);
		}
		function startUpload(e) {
			var fileupload = e.sender;
			fileupload.startUpload();
		}
		//上传成功时，回写附件的name、id
		function onUploadSuccess(e, row) {
			fileName = e.file.name;
			filePath = nui.decode(e.serverData).ret.filePath;
		}
		//预览页面附件显示 
		function setFile(e) {
			
			var fileRealName = e.record.fileRealName;
			var filepath = e.record.filePath;
			var fileId = e.record.fildid;
			if (fileRealName == null || fileRealName == 'null') {
				return "";
			}
			var html = '<a href="#" onclick="load(\'' + fileId
					+ '\')" id="attr_' + filepath + '" >' + fileRealName
					+ '</a>';
			return html;
		}

		//点击附件下载
		function load(fileId) {
			window.location.href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId="
					+ fileId;
		}
		//保存
		function saveData() {
			grid.commitEdit();
			grid.validateRow(editRow);
			if (grid.isValid() == false) {
				grid.beginEditRow(editRow);
				nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;
			}

			var jsonObject = grid.getChanges();
			if (jsonObject != null && jsonObject.length > 0) {
				jsonObject[0]['filename'] = fileName;
				jsonObject[0]['filepath'] = filePath;
				var num = 0;
				if (jsonObject[0]['dxlc'] < 10
						&& jsonObject[0]['dxlc'].length < 2) {
					jsonObject[0]['dxlc'] = num + jsonObject[0]['dxlc'];
				}
				jsonObject[0]['jdid'] = getCookie('jdid');
			}
			var data = {
				jsonObject : jsonObject[0],token:"<%=TokenUtil.getTokenString(request.getSession())%>"
			};
			var json = nui.encode(data);
			grid.loading("保存中，请稍后......");
			nui.ajax({
				url : "com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgt.addOrEdit.biz.ext",
				type : 'POST',
				data : json,
				success : function(text) {
					grid.reload();
					nui.get("update").disable();
					nui.get("save").hide();
					nui.get("cancel").hide();
					nui.get("popupMenu").enable();
					fileName = "";
					filePath = "";
				},error: function (jqXHR, textStatus, errorThrown) {
						 grid.unmask();
						 nui.alert(jqXHR.responseText,'错误',function (action) {
							 grid.beginEditRow(editRow);
						});
					
					//                     alert(jqXHR.responseText);
					}
			});

		}
		//取消保存
		function cancelSave() {
			nui.confirm("是否取消此次操作，确认取消？", "确定？", function(action) {
				if (action == "ok") {
					nui.get("update").disable();
					grid.reload();
					nui.get("save").hide();
					nui.get("cancel").hide();
					nui.get("popupMenu").enable();
					fileName = "";
					filePath = "";

				}
			});
		}
		var editRow = null;

		//新增
		function add() {
			var newRow = {
				name : " "
			};
			grid.addRow(newRow, 0);
			this.grid.select(0);
			grid.validateRow(newRow); //加入新行，马上验证新行
			grid.beginEditRow(newRow);
			nui.get("update").disable();
			nui.get("save").show();
			nui.get("cancel").show();
			nui.get("popupMenu").disable();
			editRow = newRow;
		}
		//编辑
		function edit() {
			var row = grid.getSelected();
			if (row) {
				grid.validateRow(row); //验证
				grid.beginEditRow(row);
				nui.get("save").show();
				nui.get("cancel").show();
				nui.get("popupMenu").disable();
				editRow = row;
				return;
			}
			nui.alert("请选中一条记录！");
		}

		//回收站页面
		function recycle() {
			nui
					.open({
						showMaxButton : true,//http://127.0.0.1:8080/itmp/dxgcgl/jianguanyqcontroller/HuiShouTdDxglJgyqglList.jsp
						url : "/itmp/overhaul/RegulationRequirementsMgt/RegulationRequirementsMgtRecycle.jsp",
						title : "回收站",
						width : 1000,
						height : 500,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								pageType : "add"
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
							grid.reload();
						}
					});
		}

		//逻辑删除
		function remove() {
			var rows = grid.getSelecteds();
			if (rows.length > 0) {
				nui
						.confirm(
								"确定删除选中记录？",
								"系统提示",
								function(action) {
									if (action == "ok") {
										var json = nui.encode({
											tddxgljgyqgls : rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"
										});
										grid.loading("正在删除中,请稍等...");
										$
												.ajax({//com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgt.LogicDeleteTdDxglJgyqgls
													url : "com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgt.LogicDeleteTdDxglJgyqgls.biz.ext",
													type : 'POST',
													data : json,
													cache : false,
													contentType : 'text/json',
													success : function(text) {
														var returnJson = nui
																.decode(text);
														if (returnJson.exception == null) {
															grid.reload();
															nui
																	.alert(
																			"删除成功",
																			"系统提示",
																			function(
																					action) {
																			});
														} else {
															grid.unmask();
															nui.alert("删除失败",
																	"系统提示");
														}
													}
												});
									}
								});
			} else {
				nui.alert("请选中一条记录！");
			}

		}

		//重新刷新页面
		function refresh() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			grid.load(json);//grid查询
			nui.get("update").enable();
		}

		//查询
		function searchs() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			grid.load(json);//grid查询
			nui.get("update").disable();
		}

		//重置查询条件
		function reset() {
			var form = new nui.Form("#form1");//将普通form转为nui的form
			$("#cond").val("");
			form.reset();
			nui.get('con_jdid').setValue(getCookie('jdid'));
		}

		//enter键触发查询
		function onKeyEnter(e) {
			searchs();
		}

		//当选择列时
		function selectionChanged() {
			var rows = grid.getSelecteds();
			if (rows.length > 1 || grid.isEditing() || rows.length == 0) {
				nui.get("update").disable();
				nui.get("task").disable();
				if(rows.length > 1){
					nui.get("task").enable();					
				}
			} else {
				nui.get("task").enable();
				nui.get("update").enable();
			}
		}
		//状态公共代码转换
		function ztRenderer(e) {
			return nui.getDictText("JGYQSTATU", e.value);
		}

		//机组状态公共代码转换
		function jzztRenderer(e) {
			return nui.getDictText("JZZT", e.value);
		}
		
		function onCloseClick(e) {
		    var obj = e.sender;
		    obj.setText("");
		    obj.setValue("");
		}
		
		
		function OnCellBeginEdit(e) {
			var field = e.field;
	        if (field == "jizu") {
	        	var editor = e.editor;
	        	editor.load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
	        }
		}

		//高级搜索按钮
function showquery() {
	var div = $("#form1");
	div.slideToggle(500);
	$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
	if($("#scbt").text()=="高级查询"){
		$("#fuzzyQuery").hide();
		$("#allQuery").show();
		$("#scbt").text("隐藏查询条件");
	}else{
		$("#fuzzyQuery").show();
		$("#allQuery").hide();
		$("#scbt").text("高级查询");
	}
};
//打开新增按钮
function openAllAdd(){
	$(".add_adds").toggle();
};
document.onclick = function (e) {
    //判断点击的地方是否为“更多”按钮和弹出层是否显示
	    if(!$(e.target).is("#addallbut")&&$(".add_adds").is(":visible")==true){
	        $(".add_adds").toggle();
	    }
 };
	 //任务督办
		  function  task(){
			 var row = grid.getSelected();
		 	nui.open({
                    url: "/itmp/groupplant/ConferenceActionMgt/CommonEmail.jsp",
                    title: "任务督办", width:500, height: 200,
                    onload: function () {//弹出页面加载完成
                    	var iframe = this.getIFrameEl();
						iframe.contentWindow.setData(row);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
           });
 }
  //重置查询条件
    function reset() {
        var form = new nui.Form("#form1");//将普通form转为nui的form
        form.reset();
        $('#cond').val("");
        nui.get('con_jdid').setValue(getCookie('jdid'));
    }
	</script>
</body>
</html>
