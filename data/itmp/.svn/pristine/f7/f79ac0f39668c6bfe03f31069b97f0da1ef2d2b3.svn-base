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
<title>焊接工艺评定报告管理</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<body style="background-color: #f1f1f1; overflow: scroll;">9738








	<div class="bs-docs-section">
		<div class="search-box">
			
			<div class="search-container folding-menu"
				style="overflow: hidden; display: none; height: 8%" id="queryForm">
				<div style="width: 75%; height: 100%;">
					<div id="form1" class="nui-form" align="center" style="height: 10%">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment">
						<!-- 排序字段 -->
						<table id="table1" class="table"
							style="height: 10%; text-align: left">
							<tr>
								<td class="form_label">报告名称:</td>
									<td colspan="1"><input class="nui-hidden"
									name="criteria/_expr[11]/isdel" value="1" /> 
									<input class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[11]/_likeRule"
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
			<div id="datagrid1" dataField="weldingassessments"
				class="nui-datagrid" style="width: 100%; height: 100%;"
				url="com.cgn.itmp.weldingmanagement.weldingassessmentbiz.queryWeldingAssessments.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
				onselectionchanged="selectionChanged" allowSortColumn="false">

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">property0</div>
					<div field="assessmentunit" headerAlign="center" allowSort="true">
						评定单位</div>
					<div field="joint" headerAlign="center" allowSort="true">
						接头形式</div>
					<div field="method" headerAlign="center" allowSort="true">
						焊接方法</div>
					<div field="material" headerAlign="center" allowSort="true">
						填充材料</div>
					<div field="position" headerAlign="center" allowSort="true">
						位置</div>
					<div field="thickness" headerAlign="center" allowSort="true">
						评定厚度</div>
					<div field="diameter" headerAlign="center" allowSort="true">
						评定直径</div>
					<div field="base1" headerAlign="center" allowSort="true">
						母材材质1</div>
					<div field="base2" headerAlign="center" allowSort="true">
						母材材质2</div>
					<div field="assessmentid" headerAlign="center" allowSort="true">
						工艺评定报告号</div>
					<div field="assessmentname" headerAlign="center" allowSort="true">
						报告名称</div>
					<div field="level" headerAlign="center" allowSort="true">
						RCC-M等级</div>
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
								<button class="btn btn-default" onclick="edit()"
									disabled="disabled" id="editbtn">
									<span class="fa fa-pencil-square-o"></span>&nbsp;
									<b:message key="btn-completely" />
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
		
		
	

		//新增
		function add() {
			nui.open({
				url : "WeldingAssessmentForm.jsp",
				title : "新增记录",
				width : 600,
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

		//编辑
		function edit() {
			var row = grid.getSelected();
			if (row) {
				nui.open({
					url : "/itmp/weldingmanagement/WeldingAssessmentForm.jsp",
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


//回收站
		function godelete() {
			
				nui.open({
					url : "/itmp/weldingmanagement/WeldingAssessmentList.jsp",
					title : "回收站",
					width : 1000,
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
											weldingassessments : rows
										});
										grid.loading("正在删除中,请稍等...");
										$
												.ajax({
													url : "com.cgn.itmp.weldingmanagement.weldingassessmentbiz.updatedel.biz.ext",
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
			var form = new nui.Form("#nameSearch");
			var data = form.getData();
			grid.load(data);
		}
		//导出
	function output() {
 if(grid.data.length==0){
		 	nui.alert("没有数据可以导出!");
		 	return;
		 }
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        nui
            .open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                title: "导出数据",
                width: 400,
                height: 200,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment",
                        queryParam: json, //查询数据
                        queryKey: 'criteria', //查询实体名
                        query: ['assessmentname', 'assessmentunit', 'joint', 'method', 'material', 'position','thickness','diameter','level','base1','isdel'], //按顺序放置
                        //queryIndex: [1, 3, 10, 11, 12, 13],  //按顺序放置
                        expTitle: "焊接",
                        filterField: "uuid,isdel", //要过滤的字段，多字段用,隔开
                        dicFieds: "",
                        jdFieds: "jd",
                        order: "uuid@desc",
                        attachFied:"fildid"
                    };//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
            });
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
