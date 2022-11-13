<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.eos.data.datacontext.IUserObject"%>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserObject user = (UserObject) request.getSession().getAttribute("userObject");
	String userName = user.getUserRealName();
	String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%><html>
<%--
- Author(s): Administrator
- Date: 2019-01-05 15:27:02
- Description:
    --%>
<head>

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
	style="background-color: #f1f1f1; width: 98%; height: 100%; margin: 0 auto;">
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
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.InternalExperienceFeedbackSearch">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">机组状态:</td>
							<td colspan="1"><input class="nui-dictcombobox"
									dictTypeId="NBJY_JZSTATU" name="criteria/_expr[1]/jzstatus" textField="dictName" valueField="dictID"/>
								<input class="nui-hidden" name="criteria/_expr[1]/_op" value="=">
								<input class="nui-hidden" name="criteria/_expr[1]/_likeRule"
									value="all"></td>
							<td class="form_label">事件类型:</td>
							<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[2]/sjtype" /> <input class="nui-hidden"
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


						<a id="update" class="nui-button showCellTooltip btn btn-default btn-xs" onclick="edit()" name="ITMP_btnEdit" >
							修改
						</a>
						<a class="nui-button btn btn-default btn-xs"  onclick="remove2()" name="ITMP_btnDel" >
							删除
						</a>
						<a class="nui-button btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp">
							导出</a>

						<a class="nui-button btn btn-default btn-xs" onclick="recycle()" name="ITMP_btnRec" >
							回收站
						</a>
						<span id="saveOrCancel">
                         <a class="nui-button  btn btn-warning btn-xs" id="save" onclick="saveData()" >保存</a>
                         <a class="nui-button  btn btn-primary btn-xs" id="cancle" onclick="cancelSave()">关闭</a>

                         </span>

					</td>
				</tr>
			</table>
		</div>
		<div class="nui-fit">
			<div id="datagrid1" dataField="tddxglnbjys" class="nui-datagrid"
				style="width: 100%; height: 100%;"
				url="com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.queryTdDxglNbjys.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" allowAlternating="true"
				multiSelect="true" onselectionchanged="selectionChanged"
				allowSortColumn="true" oncellbeginedit="OnCellBeginEdit"
				allowCellValid="true" oncellvalidation="onCellValidation"
				sortMode="client">
				<div property="columns">
				 
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>

					<!--  <div field="jdid" allowResize="false" width="70" headerAlign="center" allowSort="true" visible="false" >
						基地<input id="jdid" property="editor" class="nui-combobox" dataField="jsonObject" style="width: 100%;"  onvaluechanged="reloadJz"
	                    textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id" emptyText="请选择" />
					  </div>   -->
					<div header="大修轮次" headerAlign="center">
						<div property="columns">
							<div field="dxlc" id="dxlc" allowResize="false" 
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
					<div field="jcff" id="jcff" allowResize="false" width="110"
						headerAlign="center" allowSort="true">
						检查项目和方法<input property="editor" class="nui-textarea"
							style="width: 100%;" />
					</div>
					<div field="jzstatus" width="80" headerAlign="center"
						renderer="jzztRenderer">
						机组状态<input property="editor" class="nui-dictcombobox"
							checkRecursive="true" style="width: 100%;" dataField="id"
							dictTypeId="NBJY_JZSTATU" />
					</div>
					<div field="rysxys1" width="170" headerAlign="center"
						renderer="reason1Renderer">
						人因失效因素分类（大类）<input property="editor" id="rysxys1"
							class="nui-combobox" dataField="jsonObject" textField="name"
							style="width: 100%;" onvaluechanged="getRysxys"
							url="com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.getRysxysD.biz.ext"
							valueField="id" emptyText="请选择" />
					</div>

					<div field="rysxys2" width="170" headerAlign="center"
						renderer="reason2Renderer">
						人因失效因素分类（小类）<input property="editor" id="rysxys2"
							class="nui-combobox" dataField="jsonObject" textField="name"
							style="width: 100%;" url="" valueField="id" emptyText="请选择"
							onvaluechanged="getRysxysX" />
					</div>
					<div field="sjtype" allowResize="false" width="120"
						headerAlign="center" allowSort="true">
						事件类型 <input property="editor" id="sjtype" class="nui-textbox"
							style="width: 100%;" readonly />
					</div>
					<div field="sjms" allowResize="false" width="120"
						headerAlign="center" allowSort="true" renderer="setsjms">
						事件描述<input property="editor" class="nui-textarea"
							style="width: 100%;" />
					</div>

					<div field="dzjg" allowResize="false" width="120"
						headerAlign="center" allowSort="true" >
						导致结果<input property="editor" class="nui-textarea"
							style="width: 100%;" />
					</div>

					<div field="yyfx" allowResize="false" width="120"
						headerAlign="center" allowSort="true">
						原因分析<input property="editor" class="nui-textarea"
							style="width: 100%;" />
					</div>

					<div field="jzxd" allowResize="false" width="120"
						headerAlign="center" allowSort="true">
						纠正行动<input property="editor" class="nui-textarea"
							style="width: 100%;" />
					</div>

					<div field="hxgjcs" allowResize="false" width="120"
						headerAlign="center" allowSort="true">
						后续改进措施<input property="editor" class="nui-textarea"
							style="width: 100%;" />
					</div>
					<div field="fujian" allowResize="false" width="120"
						renderer="setFile" headerAlign="center" allowSort="true">
						附件<input property="editor" class="nui-fileupload nui-form-input"
							name="uploadFile" limitType="*.*" limitSize="100MB"
							flashUrl="<%=request.getContextPath()%>/js/swfupload/swfupload.swf"
							onfileselect="onfileselect"
							uploadUrl="<%=request.getContextPath()%>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
							onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
							style="width: 100%;" />
					</div>
					<div field="fileRealName" headerAlign="center" allowSort="true"
						visible="false">fileRealName</div>
					<div field="filePath" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="filename" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="fildid" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="isdelete" headerAlign="center" allowSort="true"
						visible="false">删除标志</div>
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
		nui.get("cancle").hide();
		nui.get("update").disable();
		if (jdid != null && jdid != "") {
			//按钮权限控制
			accessControlButton('<%=userRoleCodeList %>',3);
			var formData = new nui.Form("#form1").getData(false, false);
			grid.load(formData);
		}

		var rysxysxCombox = null;
		var sjlx = null;
		var jzCombox = null;
		var rysxys = "";
		function OnCellBeginEdit(e) {
			var grid = e.sender;
			var record = e.record;
			var field = e.field, value = e.value;
			var editor = e.editor;
	        if (field == "dxlc") {
	        	var editor = e.editor;
	        	editor.load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
	        }
 			if (field == "rysxys2") {
				rysxysxCombox = editor;
				if(typeof(rysxys) != 'undefined' &&   rysxys != ''){
					rysxysxCombox.load("com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.getRysxysX.biz.ext?parentid="
						+ rysxys);
				}
			} else if (field == "sjtype") {
				sjlx = editor;
			} else if(field == "rysxys1"){
				rysxys = value;
		
			}

		}

		var rysxysd = nui.get("rysxys1");
		function getRysxys(e, row) {

			var parentid = e.sender.getValue();
			rysxysxCombox
					.load("com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.getRysxysX.biz.ext?parentid="
							+ parentid);

		}
		//事件类型
		function getRysxysX(e) {
			
			var rysxysX = e.sender.getValue();
			if (rysxysX == "A1" || rysxysX == "A2" || rysxysX == "B4"
					|| rysxysX == "D2" || rysxysX == "F1" || rysxysX == "F2"
					|| rysxysX == "F3" || rysxysX == "F5") {
				sjlx.setValue("安全类");
			} else if (rysxysX == "A3" || rysxysX == "A4" || rysxysX == "B1"
					|| rysxysX == "B2" || rysxysX == "B3" || rysxysX == "B5"
					|| rysxysX == "B6" || rysxysX == "D1" || rysxysX == "D3"
					|| rysxysX == "E2" || rysxysX == "E6" || rysxysX == "F4"
					|| rysxysX == "F6" || rysxysX == "F7" || rysxysX == "F8"
					|| rysxysX == "F9" || rysxysX == "F10") {
				sjlx.setValue("技术质量类");
			} else {
				sjlx.setValue("管理类");
			}
		}
		//表单提交验证
		function onCellValidation(e) {

			if (e.field == "dxlc"||e.field == "jzstatus"||e.field == "rysxys1"||e.field == "rysxys2"||e.field == "sjtype"||e.field == "sjms"||e.field == "dzjg"||e.field == "yyfx"||e.field == "jzxd") {
				if (e.value == null || e.value == "") {
					e.isValid = false;
					e.errorText = "字段不能为空";
					//                     grid.beginEditRow(e.row); 
				}
			}
		}
		//关键字查询
		function btnQuery() {
			var gjz=$("#cond").val();
				if(gjz==""){
					refresh();
					nui.get("update").disable();
				}else{
					var data = {
						matchFied : "sjtype,sjms,yyfx,dzjg,jzxd,hxgjcs,bz",
						dicFied : "jzstatus@NBJY_JZSTATU,rysxys1@REASON1,rysxys2@REASON2",
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
		function xhRender(e) {
			return e.row.name;

		}

		//机组状态
		function sjlxRenderer(e) {
			return nui.getDictText("SJLX", e.value);
		}
		//机组状态
		function jzztRenderer(e) {
			return nui.getDictText("NBJY_JZSTATU", e.value);
		}

		//人因失效因素大类
		function reason1Renderer(e) {
			return nui.getDictText("REASON1", e.value);
		}
		//人因失效因素小类
		function reason2Renderer(e) {
			return nui.getDictText("REASON2", e.value);
		}
		function output() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			nui
					.open({
						showMaxButton : true,
						url : "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
						title : "导出数据",
						width : 550,
						height : 300,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								entityName : "com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.InternalExperienceFeedbackSearch",
								queryParam : json, //查询数据
								queryKey : 'criteria', //查询实体名
								query : [ 'jzstatus', 'sjtype', 'isdelete','jdid','addtime'], //按顺序放置
								filterField : [ 'fileRelativePath','xgyy','orderindex','uuid', 'isdelete', 'fujian',
										'updtime', 'upduser', 'fildid',
										'fileId', 'fileRealName', 'filePath',
										'fileSize', 'fileType',
										'fileUploadTime', 'fileUploadUser',
										'fileNewName', 'adduser', 'addtime','name','xh','jizu'],
								expTitle : "内部经验反馈",
								dicFieds : "jzstatus@NBJY_JZSTATU,rysxys1@REASON1,rysxys2@REASON2",
								jdFieds : "jdid",
								jzFieds : "jizu",
								order:"orderindex@desc"
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
							grid.reload();
						}
					});
		}

		function sendEmail() {
			nui.open({
				showMaxButton : true,
				url : "/itmp/dxgcgl/fenfa.jsp",
				title : "分发",
				width : 400,
				height : 300,
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
								tempFileName : "dxnbjyfkImport.xlsx",
								tempLoadName : "内部经验反馈导入模板",
								entitfName : "com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.InternalExperienceFeedback"
							};//传入页面的json数据
							iframe.contentWindow.SetData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
							grid.reload();
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
					nui.get("cancle").hide();
					nui.get("popupMenu").enable();
					fileName = "";
					filePath = "";

				}
			});
		}
		var editRow = null;
	//单条新增	
	function add() {
			
			nui.open({
						showMaxButton : true,
						url : "/itmp/overhaul/InternalExperienceFeedback/InternalExperienceFeedbackAdd.jsp",
						title : "单条新增记录",
						width : '70%',
						height : '75%',
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
                    		var data = {pageType:"add"};//传入页面的json数据
                    		iframe.contentWindow.setFormData(data);

							},//传入页面的json数据
						ondestroy : function(action) {//弹出页面关闭前
							grid.reload();
						}
					});
		}
		  //编辑
            function edit() {
                var row = grid.getSelected();
                if (row) {
                    nui.open({
                    showMaxButton : true,
						url : "/itmp/overhaul/InternalExperienceFeedback/InternalExperienceFeedbackAdd.jsp",
                        title: "编辑数据",
                        width: 800,
                        height: 500,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{jsonObject:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                                grid.reload();
                            }
                            });
                        } else {
                            nui.alert("请选中一条记录","提示");
                        }
         }
                    
// 		function edit() {
// 			var row = grid.getSelected();
// 			if (row) {
// 				grid.validateRow(row); //验证
// 				grid.beginEditRow(row);
// 				nui.get("save").show();
// 				nui.get("cancle").show();
// 				nui.get("popupMenu").disable();
// 				editRow = row;
// 				return;
// 			}
// 			nui.alert("请选中一条记录！");
// 		}

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

		//一览页面附件显示 
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
				jsonObject[0]['jdid'] = getCookie('jdid');
			}
			var data = {
				jsonObject : jsonObject[0],token:"<%=TokenUtil.getTokenString(request.getSession())%>"
			};
			var json = nui.encode(data);
			grid.loading("保存中，请稍后......");
			nui.ajax({
				url : "com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.newAddEdit.biz.ext",
				type : 'POST',
				data : json,
				success : function(text) {
					grid.reload();
					nui.get("update").disable();
					nui.get("save").hide();
					nui.get("cancle").hide();
					nui.get("popupMenu").enable();
					fileName = "";
					filePath = "";

				},error: function (jqXHR, textStatus, errorThrown) {
						 grid.unmask();
						 nui.alert(jqXHR.responseText,'错误',function (action) {
							 grid.beginEditRow(
							 editRow);
						});
					
					//                     alert(jqXHR.responseText);
					}
			});

		}

		//回收站页面
		function recycle() {
			nui.open({
				showMaxButton : true,//http://127.0.0.1:8080/itmp/dxgcgl/neibujingyan/HUISHOUTdDxglNbjyList.jsp
				url : "/itmp/overhaul/InternalExperienceFeedback/InternalExperienceFeedbackRecycle.jsp",
				title : "回收站",
				width : 1000,
				height : 500,
				onload : function() {
					var iframe = this.getIFrameEl();
                	var data = {pageType: "add",isJdgly : true};//传入页面的json数据
                	iframe.contentWindow.setFormData(data);
				},
				ondestroy : function(action) {//弹出页面关闭前
					nui.get("save").hide();
					nui.get("cancle").hide();
					nui.get("popupMenu").enable();
					grid.reload();
				}
			});
		}

		//逻辑删除
		function remove2() {

			var rows = grid.getSelecteds();
			if (rows.length > 0) {
				nui.confirm(
								"确定删除选中记录？",
								"系统提示",
								function(action) {
									if (action == "ok") {
										var json = nui.encode({
											data : rows,
											entity : "com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.InternalExperienceFeedback",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
										});
										grid.loading("正在删除中,请稍等...");
										$.ajax({//com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.LogicDeleteTdDxglNbjys
													 url: "com.cgn.itmp.knowledgebase.tinencyclopediabiz.deleteone.biz.ext",
													type : 'POST',
													data : json,
													cache : false,
													contentType : 'text/json',
													success : function(text) {
														var returnJson = nui.decode(text);
														if (returnJson.exception == null) {
															grid.reload();
															nui.get("save").hide();
															nui.get("cancle").hide();
															nui.get("update").disable();
															nui.get("popupMenu").enable();
															nui.alert("删除成功",
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
			} else {
				nui.get("update").enable();
			}
		}
		
		function onCloseClick(e) {
		    var obj = e.sender;
		    obj.setText("");
		    obj.setValue("");
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
  //重置查询条件
    function reset() {
        var form = new nui.Form("#form1");//将普通form转为nui的form
        form.reset();
        $('#cond').val("");
        nui.get('con_jdid').setValue(getCookie('jdid'));
    }
    
    //给描述加超链接
    function setsjms(e) {
        var html = '<a  onclick="tiaozhuan(\'' + e.record.uuid
            + '\',\'' + e.record.fileId
            + '\',\'' + e.record.fileRealName
            + '\')"  >' + e.record.sjms
            + '</a>';
        return html;
    }
    
    function tiaozhuan(uuid,fileid,filename){
    var data={};
    data.uuid=uuid;
    data.fileid=fileid;
    data.filename=filename;
    	nui.open({
                    url: "/itmp/overhaul/InternalExperienceFeedback/InternalExperienceFeedbackPrn.jsp",
                    title: "查看",
                     width:1200,
                     height:460,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
                });
    }
	</script>
</body>
</html>
