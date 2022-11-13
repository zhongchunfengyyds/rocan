<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<html>
<%--
- Author(s): littlebear
- Date: 2019-08-01 16:16:36
- Description:
    --%>
<head>
<title>查询</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/newui/css/treestyle/tree.css" />
</head>
<body style="width: 98%; height: 95%;">
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
							<td colspan="2" style="width:50%;border-right: 1px solid #f7f7f9 !important" class="form_label">
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
							<td style="width:0%; background: #f7f7f9;" class="form_label">
							</td>
						</tr>
					</table>
					<div id="form1" class="nui-form displaynone" align="center">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage">
						<!-- 排序字段 -->
						<table id="table1" class="table" style="height: 100%">
							<tr>
								<td class="form_label">功能位置:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[6]/funlocation" /> <input
									class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[6]/_likeRule"
									value="all"></td>
								<td class="form_label">传热管编号列（R）:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[7]/no_r" /> <input class="nui-hidden"
									name="criteria/_expr[7]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[7]/_likeRule"
									value="all"></td>
							</tr>
							<tr>
								<td class="form_label">传热管编号行（C）:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[8]/no_c" /> <input class="nui-hidden"
									name="criteria/_expr[8]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[8]/_likeRule"
									value="all"></td>
								<td class="form_label">缺陷类型:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[9]/defectTypes" /> <input
									class="nui-hidden" name="criteria/_expr[9]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[9]/_likeRule"
									value="all"></td>
							</tr>
							<tr>
								<td class="form_label">所在位置:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[11]/location" /> <input
									class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[11]/_likeRule"
									value="all"></td>
								<td class="form_label">堵管原因:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[12]/pluggingReason" /> <input
									class="nui-hidden" name="criteria/_expr[12]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[12]/_likeRule"
									value="all"></td>
							</tr>
							<tr style="visibility: hidden;height: 1px;overflow: hidden;display: table-caption;">
								<td style="visibility: hidden;height: 1px;overflow: hidden;" colspan="1">
									<input class="nui-textbox" name="criteria/_expr[14]/isdel" value = "0" /> 
									<input class="nui-hidden" name="criteria/_expr[14]/_op" value="=">
								</td>
							</tr>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div style="width: 100%; height: 85%;" showToolbar="false"
		showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0; padding:5px 0px;">
			<table style="width: 100%;">
				<tr>
					<td style="width: 100%;">
<!-- 						<button id="addallbut" style="position: relative;" class="btn btn-default" onclick="openAllAdd()"> -->
<%-- 							<b:message key="btn-add" /> --%>
<!-- 						</button> -->
<!-- 							<ul class="add_adds nui-menu"> -->
<!-- 								<li onclick="add()">单条新增</li> -->
<!-- 								<li onclick="batchAdd()">批量新增</li> -->
<!-- 							</ul> -->
<!-- 						<button class="btn btn-default" onclick="edit()" -->
<!-- 							disabled="disabled" id="editbtn"> -->
<%-- 							<b:message key="btn-edit" /> --%>
<!-- 						</button> -->
<!-- 						<button class="btn btn-default" onclick="remove()" -->
<!-- 							disabled="disabled" id="delebtn"> -->
<%-- 							<b:message key="btn-delete" /> --%>
<!-- 						</button> -->
<!-- 						<button class="btn btn-default" type="button" onclick="output()"> -->
<%-- 							<b:message key="btn-export" /> --%>
<!-- 						</button> -->
<!-- 						<button class="btn btn-default" type="button" onclick="recycle()"> -->
<%-- 							<b:message key="btn-recycle" /> --%>
<!-- 						</button> -->
						<button class="btn btn-default" type="button" onclick="importBlock()">
							确定导入堵管数据
						</button>
					</td>
				</tr>
			</table>
		</div>
		<div class="nui-fit">
			<div id="datagrid1" dataField="pipeblockages" class="nui-datagrid"
				style="width: 100%; height: 100%;"
				url="com.cgn.itmp.inspectcomponentmanage.pipeblockagebiz.queryPipeblockages.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
				onselectionchanged="selectionChanged" allowSortColumn="false">

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div field="steamGeneratorModel" headerAlign="center"
						allowSort="true">蒸汽发生器型号</div>
					<div field="steamGeneratorNo" headerAlign="center" allowSort="true">
						蒸汽发生器编号</div>
					<div field="funlocation" headerAlign="center" allowSort="true">
						功能位置</div>
					<div header="传热管编号">
						<div property="columns">
							<div field="no_c" headerAlign="center" allowSort="true">
								行（C）</div>
							<div field="no_r" headerAlign="center" allowSort="true">
								列（R）</div>
						</div>
					</div>
<!-- 					<div field="no_r" headerAlign="center" allowSort="true"> -->
<!-- 						传热管编号列（R）</div> -->
<!-- 					<div field="no_c" headerAlign="center" allowSort="true"> -->
<!-- 						传热管编号行（C）</div> -->
					<div field="defectTypes" headerAlign="center" allowSort="true">
						缺陷类型</div>
					<div field="defectSize" headerAlign="center" allowSort="true">
						缺陷尺寸</div>
					<div field="location" headerAlign="center" allowSort="true">
						所在位置</div>
					<div field="pluggingReason" headerAlign="center" allowSort="true">
						堵管原因</div>
					<div field="pluggingTime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
						堵管时间</div>
					<div field="fj" headerAlign="center" allowSort="true"  renderer="setFile">
						附件</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var grid = nui.get("datagrid1");

		var formData = new nui.Form("#form1").getData(false, false);
		formData["criteria/_expr[13]/isdel"] = "0";
		formData["criteria/_expr[14]/jz"] = getCookie('jzid');
		formData["criteria/_expr[15]/jd"] = getCookie('jdid');
		formData["criteria/_orderby[1]/_property"] = "createtime";
		formData["criteria/_orderby[1]/_sort"] = "desc";
		formData["criteria/_orderby[2]/_property"] = "orderno";
		formData["criteria/_orderby[2]/_sort"] = "asc";
		grid.load(formData);

		//新增
		function add() {
			nui.open({
				showMaxButton : true,
				url : "/itmp/inspectcomponentmanage/nuclearislanddatamanagement/pipeblockage/PipeblockageForm.jsp",
				title : "新增记录",
				width : 600,
				height : 350,
				onload : function() {//弹出页面加载完成
				$("#editbtn").prop("disabled", "disabled");
								$("#delebtn").prop("disabled", "disabled");
					var iframe = this.getIFrameEl();
					var data = {
						pageType : "add"
					};//传入页面的json数据
					iframe.contentWindow.setFormData(data);
				},
				ondestroy : function(action) {//弹出页面关闭前
				$("#editbtn").prop("disabled", "disabled");
								$("#delebtn").prop("disabled", "disabled");
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
					url : "/itmp/inspectcomponentmanage/nuclearislanddatamanagement/pipeblockage/PipeblockageForm.jsp",
					title : "编辑数据",
					width : 600,
					height : 350,
					onload : function() {
					$("#editbtn").prop("disabled", "disabled");
								$("#delebtn").prop("disabled", "disabled");
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record : {
								pipeblockage : row
							}
						};
						//直接从页面获取，不用去后台获取
						iframe.contentWindow.setFormData(data);
					},
					ondestroy : function(action) {
					$("#editbtn").prop("disabled", "disabled");
								$("#delebtn").prop("disabled", "disabled");
						grid.reload();
					}
				});
			} else {
				nui.alert("请选中一条记录", "提示");
			}
		}

		//删除
		function remove() {
			var rows = grid.getSelecteds();
			if (rows.length > 0) {
				nui
						.confirm(
								"确定删除选中记录？",
								"系统提示",
								function(action) {
									if (action == "ok") {
										var json = nui
												.encode({
													data : rows,
													entity : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage"
												});
										grid.loading("正在删除中,请稍等...");
										$
												.ajax({
													url : "com.cgn.itmp.inspectcomponentmanage.equipmentbaseinformationbiz.updatedel.biz.ext",
													type : 'POST',
													data : json,
													cache : false,
													contentType : 'text/json',
													success : function(text) {
													$("#editbtn").prop("disabled", "disabled");
								$("#delebtn").prop("disabled", "disabled");
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
			json["criteria/_expr[13]/isdel"] = "0";
			json["criteria/_expr[14]/jz"] = getCookie('jzid');
			json["criteria/_expr[15]/jd"] = getCookie('jdid');
			json["criteria/_orderby[1]/_property"] = "createtime";
			json["criteria/_orderby[1]/_sort"] = "desc";
			json["criteria/_orderby[2]/_property"] = "orderno";
			json["criteria/_orderby[2]/_sort"] = "asc";
			grid.load(json);//grid查询
// 			nui.get("update").enable();
		}

		//查询
		function searchs() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			json["criteria/_expr[13]/isdel"] = "0";
			json["criteria/_expr[14]/jz"] = getCookie('jzid');
			json["criteria/_expr[15]/jd"] = getCookie('jdid');
			json["criteria/_expr[15]/jd"] = getCookie('jdid');
			json["criteria/_orderby[1]/_property"] = "createtime";
			json["criteria/_orderby[1]/_sort"] = "desc";
			json["criteria/_orderby[2]/_property"] = "orderno";
			json["criteria/_orderby[2]/_sort"] = "asc";
			grid.load(json);//grid查询
		}

		//重置查询条件
		function reset() {
			$("#cond").val("");
			var form = new nui.Form("#form1");//将普通form转为nui的form
			form.reset();
		}

		//enter键触发查询
		function onKeyEnter(e) {
			searchs();
		}

		//当选择列时
		function selectionChanged() {
			var rows = grid.getSelecteds();
			if (rows.length > 1) {
				nui.get("update").disable();
			} else {
				nui.get("update").enable();
			}
		}

		//回收站
		function recycle() {
			nui
					.open({
						showMaxButton : true,
						url : "/itmp/common/recyclebin/recyclebinattach.jsp",
						title : "回收站",
						width : 1000,
						height : 570,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								pageType : "recyclebin",
								urlName : "com.cgn.itmp.inspectcomponentmanage.pipeblockagebiz.queryPipeblockages.biz.ext",//回收
								entityVal : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage",
								removeUrl : "com.cgn.itmp.weldingmanagement.common.delete.biz.ext",
								recoveryUrl : "com.cgn.itmp.inspectcomponentmanage.equipmentbaseinformationbiz.recovery.biz.ext",//恢复
								columnscode : [ {
									type : "indexcolumn"
								}, {
									type : "checkcolumn"
								}, {
									field : "uuid",
									width : 100,
									headerAlign : "center",
									allowSort : true,
									header : "uuid",
									visible : false
								}, {
									field : 'steamGeneratorModel',
									header : '蒸汽发生器型号',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'steamGeneratorNo',
									header : '蒸汽发生器编号',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'funlocation',
									header : '功能位置',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'no_r',
									header : '传热管编号列（R）',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'no_c',
									header : '传热管编号行（C）',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'defectTypes',
									header : '缺陷类型',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'defectSize',
									header : '缺陷尺寸',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'location',
									header : '所在位置',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'pluggingReason',
									header : '堵管原因',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'pluggingTime',
									header : '堵管时间',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'fj',
									header : '附件',
									width : 100,
									headerAlign : "center",
									allowSort : true
								} ,{
									field : 'deleteperson',
									header : '删除人',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'deletetime',
									header : '删除时间',
									width : 100,
									headerAlign : "center",
									dateFormat : "yyyy-MM-dd HH:mm:ss",
									allowSort : true
								} ],
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
						$("#editbtn").prop("disabled", "disabled");
								$("#delebtn").prop("disabled", "disabled");
							grid.reload();
						}
					});
		}
		//控制修改和删除按钮
		function selectionChanged() {
			var rows = grid.getSelecteds();
			if (rows) {
				if (rows.length == 1) {
					//两个都恢复
					$("#editbtn").prop("disabled", "");
					$("#delebtn").prop("disabled", "");
				} else if (rows.length > 1) {
					//修改禁止
					$("#editbtn").prop("disabled", "disabled");
					//删除恢复
					$("#delebtn").prop("disabled", "");
				} else {
					//两个都禁止
					$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
				}
			} else {
				//两个都禁止
				$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
			}
		}
		//高级搜索上下拉动时显示文字控制
		function btnText(query, html) {
			var html = "";
			if (query.css("display") == "none") {
				html = "返回";
			} else {
				html = "高级搜索";
			}
			query.slideToggle();
			return html;
		}
		//仅按照名称搜索
		function btnQuery() {
			var gjz = $("#cond").val();
			if (gjz == "") {
				refresh();
			} else {
				var data = {
					matchFied : "steamGeneratorModel,steamGeneratorNo,funlocation,no_c,no_r,defectTypes,defectSize,location,pluggingReason",
					wordVal : $("#cond").val(),
					entity : $("input[name='criteria/_entity']").val(),
					entityName : 'criteria',
					sfdel : true,
					jdInfo : 'jd@' + getCookie('jdid')
				};
				var query = nui.decode(getKeyWordQuery(data));
				query["criteria/_expr[13]/isdel"] = "0";
				query["criteria/_expr[14]/jz"] = getCookie('jzid');
				query["criteria/_expr[15]/jd"] = getCookie('jdid');
				query["criteria/_expr[15]/jd"] = getCookie('jdid');
				query["criteria/_orderby[1]/_property"] = "createtime";
				query["criteria/_orderby[1]/_sort"] = "desc";
				query["criteria/_orderby[2]/_property"] = "orderno";
				query["criteria/_orderby[2]/_sort"] = "asc";
				grid.load(query);
			}
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
						$("#editbtn").prop("disabled", "disabled");
								$("#delebtn").prop("disabled", "disabled");
							var iframe = this.getIFrameEl();
							var data = {
								pageType : "batchAdd",
								tempFileName : "pipeblockageList.xlsx",
								tempLoadName : "堵管统计",
								entitfName : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins"
							};//传入页面的json数据
							iframe.contentWindow.SetData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
						$("#editbtn").prop("disabled", "disabled");
								$("#delebtn").prop("disabled", "disabled");
							grid.reload();
						}
					});
		}
		//导出
		function output() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			nui
					.open({
						showMaxButton : true,
						url : "/itmp/basecommon/importExcelComm/expSelectFiledAndAttach.jsp",
						title : "导出数据",
						width : 450,
						height : 400,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								entityName : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage",
								queryParam : json, //查询数据
								queryKey : 'criteria', //查询实体名
								query : [ 'jd', 'jz', 'steamGeneratorModel',
										'steamGeneratorNo', 'funlocation', 'no_r',
										'no_c', 'defectTypes',
										'defectSize','location','pluggingReason','pluggingTime' ], //按顺序放置
								filterField : [ 'uuid', 'isdel','createtime' ],
								expTitle : "堵管统计",
								dicFieds : "jzstatu@NBJY_JZSTATU,statu@QXSTATUS",
								jdFieds : "jdid",
								jzFieds : "jzid",
								order : "createtime@desc",
								attachFied:"fileid",
								defaultCheck : ['steamGeneratorModel',
										'steamGeneratorNo', 'funlocation', 'no_r',
										'no_c', 'defectTypes',
										'defectSize','location','pluggingReason','pluggingTime' ]
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
						}
					});

		}
		//附件初始化
		function setFile(e) {
			var fileRealName = e.record.fj;
			var filepath = e.record.filepath;
			var fileId = e.record.fileid;

			if (fileRealName == null || fileRealName == 'null') {
				return "";
			}
			var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
			return html;
		}
		function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
	         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
	         document.body.appendChild(elemIF);
	         elemIF.style.display = "none";
		}
		//打开新增按钮
		function openAllAdd(){
			$(".add_adds").toggle();
		}
		var selectData;
		//确认导入数据
		function importBlock() {
			var rows = grid.getSelecteds();
			if (rows.length > 0) {
				selectData = grid.getSelecteds();
				CloseWindow("cancel");
			}else{
				nui.showTips(
					{
						content: '至少选择一条记录',
						state: 'warning',
						x: 'center', 
						y: 'center'
					}
				);
			}
		}
		function GetData() {
	        return selectData;
	    }
	     function CloseWindow(action) {
	        if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
	        else window.close();
	    }
	</script>
</body>
</html>
