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
<title>工序模板</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<body style="background-color: #f1f1f1; overflow: scroll;">
	<div class="bs-docs-section">
		<div class="search-box">
			
			<div class="search-container folding-menu"
				style="overflow: hidden; display: none; height: 8%" id="queryForm">
				<div style="width: 75%; height: 100%;">
					<div id="form1" class="nui-form" align="center" style="height: 10%">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.weldingmanagement.Processes.Processes">
						<!-- 排序字段 -->
						<table id="table1" class="table"
							style="height: 10%; text-align: left">
							<tr>
								<td class="form_label">模板名称:</td>
									<td colspan="1"><input class="nui-hidden"
									name="criteria/_expr[5]/isdel" value="1" /> 
									<input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[5]/_likeRule"
									value="all"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>


	<div class="" 
		style="width: 100%; height: 85%;" showToolbar="false"
		showFooter="false">
		<div class="nui-fit">
			<div id="datagrid1" dataField="processess"
				class="nui-datagrid" style="width: 100%; height: 100%;"
				url="com.cgn.itmp.weldingmanagement.processesbiz.queryProcessess.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
				onselectionchanged="selectionChanged" allowSortColumn="false">

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">property0</div>
					<div field="processnam" headerAlign="center" allowSort="true">
									工序模板名称</div>
								<div field="templatenumber" headerAlign="center"
									allowSort="true">模板编号</div>
								<div field="note" headerAlign="center" allowSort="true">备注</div>
								<div field="founder" headerAlign="center" allowSort="true">
									创建人</div>
								<div field="createtime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss">
									创建时间</div>
								<!-- <div field="state" headerAlign="center" allowSort="true">状态</div>
								<div field="isdel" headerAlign="center" allowSort="true">
									删除标识</div> -->
				</div>
			</div>
		</div>
		
				<div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
			<table style="width: 100%;">

				<div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
					<table style="width: 100%;">
						<tr>
							<td style="width: 100%;">
								<button class="btn btn-default" onclick="edit()"
									disabled="disabled" id="editbtn">
									<span class="fa fa-pencil-square-o"></span>&nbsp;
									<b:message key="btn-recovery" />
								</button>
								<button class="btn btn-default" onclick="remove()"
									disabled="disabled" id="removebtn">
									<span class="fa fa-pencil-square-o"></span>&nbsp;
									彻底删除
								</button>
								
							</td>
						</tr>
					</table>
				</div>


			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var grid = nui.get("datagrid1");

		var formData = new nui.Form("#form1").getData(false, false);
		grid.load(formData);
		
			//恢复
					function edit() {
						var rows = grid.getSelecteds();
						if (rows.length > 0) {
							nui
									.confirm(
											"确定恢复选中记录？",
											"系统提示",
											function(action) {
												if (action == "ok") {
													var json = nui.encode({
														data:rows,entity:"com.cgn.itmp.weldingmanagement.Processes.Processes"
													});
													grid
															.loading("正在恢复中,请稍等...");
													$
															.ajax({
																url:"com.cgn.itmp.weldingmanagement.processesbiz.updatedelbyRez.biz.ext",
																type : 'POST',
																data : json,
																cache : false,
																contentType : 'text/json',
																success : function(
																		text) {
																	var returnJson = nui
																			.decode(text);
																	if (returnJson.exception == null) {
																		grid
																				.reload();
																		nui
																				.alert(
																						"恢复成功",
																						"系统提示",
																						function(
																								action) {
																						});
																	} else {
																		grid
																				.unmask();
																		nui
																				.alert(
																						"恢复失败",
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
		//恢复
		function edit1() {
			var row = grid.getSelected();
			if (row) {
				nui.open({
					url : "/itmp/weldingmanagement/QualityProcess/ProcessesForm.jsp",
					title : "编辑数据",
					width : 600,
					height : 300,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record : {
								weldingassessment : row
							}
						};
						//直接从页面获取，不用去后台获取
						iframe.contentWindow.setFormData(data);
					},
					ondestroy : function(action) {
						grid.reload();
					}
				});
			} else {
				nui.alert("请选中一条记录", "提示");
			}
		}



		//彻底删除
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
											processess : rows
										});
										grid.loading("正在删除中,请稍等...");
										$
												.ajax({
													url : "com.cgn.itmp.weldingmanagement.processesbiz.deleteProcessess.biz.ext",
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
		function search() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			grid.load(json);//grid查询
		}

		//重置查询条件
		function reset() {
			var form = new nui.Form("#form1");//将普通form转为nui的form
			form.reset();
		}

		//enter键触发查询
		function onKeyEnter(e) {
			search();
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
		//控制修改和删除按钮
		function selectionChanged() {
			var rows = grid.getSelecteds();
			if (rows) {
				if (rows.length >= 1) {
					//两个都恢复
					$("#editbtn").prop("disabled", "");
					$("#removebtn").prop("disabled", "");
				}
				 /* else if (rows.length > 1) {
					//修改禁止
					$("#editbtn").prop("disabled", "disabled");
					//删除恢复
					$("#delebtn").prop("disabled", "");
				}  */
				else {
					//两个都禁止
					$("#editbtn").prop("disabled", "disabled");
					$("#removebtn").prop("disabled", "disabled");
				}
			} else {
				//两个都禁止
				$("#editbtn").prop("disabled", "disabled");
				$("#removebtn").prop("disabled", "disabled");
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
			var form = new nui.Form("#nameSearch");
			var data = form.getData();
			grid.load(data);
		}
		
		//高级搜索
		function btnQueryDetail() {
			var form = new nui.Form("#queryForm");
			var data = form.getData();
			grid.load(data);
		}
		//高级搜索上下拉动效果
		$(".adv-search").bind(
				"click",
				function(e) {
					e.preventDefault();
					var folding = $(this).parents(".navbar").next(
							".folding-menu");
					var html = btnText(folding);
					$(this).html(html);
					$(this).parents(".query-form").find(".dw-toggle .fa")
							.toggleClass("fa-angle-down");
				});
		//上下拉动效果
		$(".dw-toggle").bind(
				"click",
				function(e) {
					e.preventDefault();
					$(this).find(".fa").toggleClass("fa-angle-down");
					var folding = $(this).parents(".navbar").next(
							".folding-menu");
					var html = btnText(folding);
					$(this).parents(".navbar-right").prev().find(".adv-search")
							.html(html);
				});
	</script>
</body>
</html>
