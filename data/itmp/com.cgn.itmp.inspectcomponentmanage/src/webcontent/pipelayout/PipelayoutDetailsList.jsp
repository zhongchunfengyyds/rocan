<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): littlebear
- Date: 2019-10-18 10:04:20
- Description:
    --%>
<head>
<title></title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

</script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<style>
.threepipe,.twopipe,.statisticstype {
	display: none;
}

#table2,#table3,#table4,#table5 {
	display: none;
}
</style>
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
							<td style="width: 30%; background: #fff;"><input
								onvaluechanged="selectall_fun(this.value,this)"
								style="text-align: left; width: 100%" name="selectall_eight"
								class="mini-radiobuttonlist" value="1"
								data="[{id: 1, text: '全部管束&八分之一抽样点'}, {id: 2, text: '外围抽样'}, {id: 3, text: '泥渣区'}, {id: 4, text: '拉杆区'}, {id: 5, text: '遮挡区'}]" /></td>
							<td colspan="2"
								style="background: #f7f7f9; width: 50%; border-right: 1px solid #f7f7f9 !important"
								class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()">
										模糊查询 </a> <a id="allQuery" style="display: none"
										class="btn btn-default" onclick="searchs()"> 查询 </a> <a
										class="btn btn-default" onclick="reset()"> 重置 </a>
									<div onclick="showquery()" id="funquery"
										class="fa fa-chevron-down fa-1x">
										&nbsp;<a id="scbt">高级查询</a>
									</div>
								</div>
							</td>
						</tr>
					</table>
					<div id="form1" class="nui-form displaynone" align="center"
						style="height: 5%">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout">
						<!-- 排序字段 -->
						<table id="table1" class="table" style="height: 100%">
							<tr class="">
								<td class="form_label">行号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[1]/linenum" /> <input class="nui-hidden"
									name="criteria/_expr[1]/_op" value="="></td>
								<td></td>
								<td></td>
							</tr>
						</table>

						<table id="table2" class="table" style="height: 100%">
							<tr class="">
								<td class="form_label">统计类型:</td>
								<td colspan="1"><input class="nui-dictcombobox"
									 id="statisticstype"
									dictTypeId="peripheral_sampling" style="width: 100%"
									name="criteria/_expr[2]/statisticstype" /> <input
									class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
								<td></td>
								<td></td>
							</tr>
							<tr class="">
								<td class="form_label">行号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[3]/x" /> <input class="nui-hidden"
									name="criteria/_expr[3]/_op" value="="></td>
								<td class="form_label">列号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[4]/y" /> <input class="nui-hidden"
									name="criteria/_expr[4]/_op" value="="></td>
							</tr>
						</table>
						<table id="table3" class="table" style="height: 100%">
							<tr class="">
								<td class="form_label">起点行号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[5]/y1" /> <input class="nui-hidden"
									name="criteria/_expr[5]/_op" value="="></td>
								<td class="form_label">起点列号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[6]/x1" /> <input class="nui-hidden"
									name="criteria/_expr[6]/_op" value="="></td>
							</tr>
							<tr class="">
								<td class="form_label">终点行号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[7]/y2" /> <input class="nui-hidden"
									name="criteria/_expr[7]/_op" value="="></td>
								<td class="form_label">终点列号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[8]/x2" /> <input class="nui-hidden"
									name="criteria/_expr[8]/_op" value="="></td>
							</tr>
						</table>

						<table id="table4" class="table" style="height: 100%">
							<tr class="">
								<td class="form_label">行号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[9]/x" /> <input class="nui-hidden"
									name="criteria/_expr[9]/_op" value="="></td>
								<td class="form_label">列号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[10]/y" /> <input class="nui-hidden"
									name="criteria/_expr[10]/_op" value="="></td>
							</tr>
						</table>

						<table id="table5" class="table" style="height: 100%">
							<tr class="">
								<td class="form_label">行号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[11]/x" /> <input class="nui-hidden"
									name="criteria/_expr[11]/_op" value="="></td>
								<td class="form_label">列号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[12]/y" /> <input class="nui-hidden"
									name="criteria/_expr[12]/_op" value="="></td>
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
				<td style="width: 100%;">
					<button id="addallbut" style="position: relative;"
						class="btn btn-default" onclick="openAllAdd()">
						<b:message key="btn-add" />
					</button>
					<ul class="add_adds nui-menu">
						<li onclick="add()">单条新增</li>
						<li onclick="adds()">批量新增</li>
					</ul>
					<button class="btn btn-default" onclick="edit()"
						disabled="disabled" id="editbtn">
						<b:message key="btn-edit" />
					</button>
					<button class="btn btn-default" onclick="remove()"
						disabled="disabled" id="delebtn">
						<b:message key="btn-delete" />
					</button>
			</table>
		</div>
		<div class="nui-fit">
			<div id="datagrid1" dataField="pipelayouts" class="nui-datagrid"
				style="width: 100%; height: 100%;"
				url="com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.queryPipelayouts.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
				onselectionchanged="selectionChanged" allowSortColumn="false">

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div field="linenum" headerAlign="center" allowSort="true">行号</div>
					<div header="全部管束">
						<div property="columns">
							<div field="all_start" headerAlign="center" allowSort="true">起点</div>
							<div field="all_end" headerAlign="center" allowSort="true">终点</div>
						</div>
					</div>
					<div header="1/8抽样">
						<div property="columns">
							<div header="原点（管嘴侧第一根）">
								<div property="columns">
									<div field="eight0_start" headerAlign="center" allowSort="true">起点</div>
									<div field="eight0_end" headerAlign="center" allowSort="true">终点</div>
								</div>
							</div>
							<div header="向人孔侧位移1根">
								<div property="columns">
									<div field="eight1_start" headerAlign="center" allowSort="true">起点</div>
									<div field="eight1_end" headerAlign="center" allowSort="true">终点</div>
								</div>
							</div>
							<div header="向人孔侧位移2根">
								<div property="columns">
									<div field="eight2_start" headerAlign="center" allowSort="true">起点</div>
									<div field="eight2_end" headerAlign="center" allowSort="true">终点</div>
								</div>
							</div>
							<div header="向人孔侧位移3根">
								<div property="columns">
									<div field="eight3_start" headerAlign="center" allowSort="true">起点</div>
									<div field="eight3_end" headerAlign="center" allowSort="true">终点</div>
								</div>
							</div>
							<div header="向人孔侧位移4根">
								<div property="columns">
									<div field="eight4_start" headerAlign="center" allowSort="true">起点</div>
									<div field="eight4_end" headerAlign="center" allowSort="true">终点</div>
								</div>
							</div>
							<div header="向人孔侧位移5根">
								<div property="columns">
									<div field="eight5_start" headerAlign="center" allowSort="true">起点</div>
									<div field="eight5_end" headerAlign="center" allowSort="true">终点</div>
								</div>
							</div>
							<div header="向人孔侧位移6根">
								<div property="columns">
									<div field="eight6_start" headerAlign="center" allowSort="true">起点</div>
									<div field="eight7_end" headerAlign="center" allowSort="true">终点</div>
								</div>
							</div>
							<div header="向人孔侧位移7根">
								<div property="columns">
									<div field="eight7_start" headerAlign="center" allowSort="true">起点</div>
									<div field="eight7_end" headerAlign="center" allowSort="true">终点</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="datagrid2" dataField="pipelayouts" class="nui-datagrid"
				style="width: 100%; height: 100%; display: none;"
				url="com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.queryPipelayouts.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
				onselectionchanged="selectionChanged" allowSortColumn="false">

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div field="statisticstype" headerAlign="center" allowSort="true">抽样类型</div>
					<div field="x" headerAlign="center" allowSort="true">行号</div>
					<div field="y" headerAlign="center" allowSort="true">列号</div>
				</div>
			</div>

			<div id="datagrid3" dataField="pipelayouts" class="nui-datagrid"
				style="width: 100%; height: 100%; display: none;"
				url="com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.queryPipelayouts.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
				onselectionchanged="selectionChanged" allowSortColumn="false">

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div header="起点">
						<div property="columns">
							<div field="y1" headerAlign="center" allowSort="true">行号</div>
							<div field="x1" headerAlign="center" allowSort="true">列号</div>
						</div>
					</div>
					<div header="终点">
						<div property="columns">
							<div field="y1" headerAlign="center" allowSort="true">行号</div>
							<div field="x2" headerAlign="center" allowSort="true">列号</div>
						</div>
					</div>
				</div>
			</div>

			<div id="datagrid4" dataField="pipelayouts" class="nui-datagrid"
				style="width: 100%; height: 100%; display: none;"
				url="com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.queryPipelayouts.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
				onselectionchanged="selectionChanged" allowSortColumn="false">

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div field="y" headerAlign="center" allowSort="true">行号</div>
					<div field="x" headerAlign="center" allowSort="true">列号</div>
				</div>
			</div>

			<div id="datagrid5" dataField="pipelayouts" class="nui-datagrid"
				style="width: 100%; height: 100%; display: none;"
				url="com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.queryPipelayouts.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
				onselectionchanged="selectionChanged" allowSortColumn="false">

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div field="y" headerAlign="center" allowSort="true">行号</div>
					<div field="x" headerAlign="center" allowSort="true">列号</div>
				</div>
			</div>


		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var grid = nui.get("datagrid1");
		var model;
		var pageflg = "1";
		var statisticstype = "全部管束&八分之一抽样点";

		//新增
		function add() {
			nui
					.open({
						showMaxButton : true,
						url : "/itmp/inspectcomponentmanage/pipelayout/PipelayoutDetailsForm.jsp",
						title : "新增记录",
						width : 650,
						height : pageflg == 1 ? 750 : 250,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								pageType : "add",
								pageflg : pageflg,
								model : model
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
				nui
						.open({
							showMaxButton : true,
							url : "/itmp/inspectcomponentmanage/pipelayout/PipelayoutDetailsForm.jsp",
							title : "编辑数据",
							width : 650,
							height : pageflg == 1 ? 750 : 250,
							onload : function() {
								var iframe = this.getIFrameEl();
								var data = {
									pageType : "edit",
									pageflg : pageflg,
									model : model,
									record : {
										pipelayout : row
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
										var json = nui.encode({
											pipelayouts : rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"
										});
										grid.loading("正在删除中,请稍等...");
										$
												.ajax({
													url : "com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.deletePipelayouts.biz.ext",
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
			grid.load(json);//grid查询
			$("#editbtn").prop("disabled", "disabled");
			$("#delebtn").prop("disabled", "disabled");
		}

		//查询
		function searchs() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			if(pageflg==2){
				json["criteria/_expr[22]/statisticstype"]!=""?json["criteria/_expr[22]/statisticstype"]:statisticstype;
			}else{
				json["criteria/_expr[22]/statisticstype"]=statisticstype;
			}
			json["criteria/_expr[21]/model"] = model;
			$("#editbtn").prop("disabled", "disabled");
			$("#delebtn").prop("disabled", "disabled");
			grid.load(json);//grid查询
		}

		//重置查询条件
		function reset() {
			var form = new nui.Form("#form1");//将普通form转为nui的form
			form["criteria/_expr[22]/statisticstype"] = statisticstype;
			form["criteria/_expr[21]/model"] = model;
			form.reset();
		}

		//enter键触发查询
		function onKeyEnter(e) {
			searchs();
		}

		//导入
		function adds() {
			var data = {};
			var json = nui.encode(data);

			$
					.ajax({
						url : "com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.queryPipelayouts.biz.ext",
						type : 'POST',
						cache : false,
						data : json,
						contentType : 'text/json',
						success : function(data) {
							var count = data.count;
							if (count > 0) {
								nui.alert("坐标已存在,不能导入", "提示");
							} else {
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
													tempFileName : getCookie('jdname')=="台山"?"tszfq.xlsx":"hggl.xlsx",
													tempLoadName : "导入蒸发器坐标",
													entitfName : "com.cgn.itmp.weldingmanagement.Welder.Welder"
												};//传入页面的json数据
												iframe.contentWindow
														.SetData(data);
											},
											ondestroy : function(action) {//弹出页面关闭前
											$("#editbtn").prop("disabled", "disabled");
											$("#delebtn").prop("disabled", "disabled");
												grid.reload();
											}
										});
							}
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
		//仅按照名称搜索
		function btnQuery() {
			var gjz = $("#cond").val();
			if (gjz == "") {
				refresh();
			} else {
				var data = {
					matchFied : "overhaulsq,insphase,insscope,insplanflu,enclosure,remarks,isdel",
					dicFied : "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
					wordVal : $("#cond").val(),
					entity : $("input[name='criteria/_entity']").val(),
					entityName : 'criteria',
					sfdel : true,
				};
				var query = nui.decode(getKeyWordQuery(data));
				query["criteria/_expr[10]/isdel"] = "0";
				grid.load(query);
			}
		}
		function statisticstype() {
			var statisticstype = nui.get("statisticstype").value;
			if (statisticstype == "allPipe") {
				$(".threepipe").show();
				$(".twopipe").hide();
			} else {
				$(".threepipe").hide();
				$(".twopipe").show();
			}
		}
		function setData(data) {
			model = data;
			var formData = new nui.Form("#form1").getData(false, false);
			formData["criteria/_expr[21]/model"] = model;
			searchs();
		}
		function selectall_fun(value, e) {
			if (value == "2") {
				$(".statisticstype").show();
			} else {
				$(".statisticstype").hide();
			}
			$("[id^='datagrid']").hide();
			$("#datagrid" + value).show();

			$("[id^='table']").hide();
			$("#table" + value).show();
			grid = nui.get("datagrid" + value);
			pageflg = value;
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			json["criteria/_expr[22]/statisticstype"] = e._selected.text;
			statisticstype = e._selected.text;
			grid.load(json);//grid查询
		}
	</script>
</body>
</html>
