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
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript">
	
</script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<style>
</style>
<body style="width: 99%; height: 96%;">

	<div class="bs-docs-section">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
					<div id="form1" class="nui-form" align="center" style="height: 5%">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.inspectcomponentmanage.pipelayout.PipeBaseInfo">
						<!-- 排序字段 -->
						<table id="table1" class="table" style="height: 100%">
							<tr>
								<td class="form_label">蒸发器型号:</td>
								<td colspan="3"><input class="nui-combobox"
									style="width: 100%" id="pipemodel"
									textField="text" valueField="id"
									name="criteria/_expr[1]/model" /> <input class="nui-hidden"
									name="criteria/_expr[1]/_op" value="="></td>
								<td colspan="2" style="width:50%;border-right: 1px solid #f7f7f9 !important" class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="allQuery" class="btn btn-default" onclick="searchs()"> 查询 </a> 
									<a class="btn btn-default" onclick="reset()"> 重置 </a>
								</div>
							</td>
							<td style="width:0%; background: #f7f7f9;" class="form_label">
							</td>
							</tr>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div style="width: 100%; height: 92%;" showToolbar="false"
		showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0; padding:5px 0px;">
			<table style="width: 100%;">
				<td style="width: 100%;">
					<button class="btn btn-default" onclick="add()">
						<b:message key="btn-add" />
					</button>
					<button class="btn btn-default" onclick="adds()" disabled="disabled" id="import">
						<b:message key="btn-import" />
					</button>
					<button class="btn btn-default" onclick="edit()" disabled="disabled" id="editbtn">
						<b:message key="btn-edit" />
					</button>
					<button class="btn btn-default" onclick="remove()" disabled="disabled" id="delebtn">
						删除
					</button>
			</table>
		</div>
		<div class="nui-fit">
			<div id="datagrid1" dataField="pipebaseinfos" class="nui-datagrid"
				style="width: 100%; height: 100%;"
				url="com.cgn.itmp.inspectcomponentmanage.pipebaseInfo.pipebaseinfobiz.queryPipeBaseInfos.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
				onselectionchanged="selectionChanged" allowSortColumn="false">

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div field="model" headerAlign="center" allowSort="true">蒸发器型号</div>
					<div field="jz" headerAlign="center" allowSort="true"
						renderer="setpipe">设置</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var grid = nui.get("datagrid1");

		var formData = new nui.Form("#form1").getData(false, false);
		grid.load(formData);
		var datas = {};
		datas.jd = "all";
		var myjsons = nui.encode({
			myDatas : datas
		});
		$.ajax({
			url : "com.cgn.itmp.inspectcomponentmanage.pipebaseInfo.pipebaseinfobiz.queryPipemodel.biz.ext",
			type : 'POST',
			cache : false,
			data : myjsons,
			contentType : 'text/json',
			success : function(data) {
				 nui.get("pipemodel").setData(data.pipemodel.data);
			}
		});
		//新增
		function add() {
			nui.open({
				showMaxButton : true,
				url : "/itmp/inspectcomponentmanage/pipelayout/PipelayoutForm.jsp",
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
					$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
					$("#import").prop("disabled", "disabled");
				}
			});
		}
		function setpipe(e) {
			var html = '<a  onclick="setpipeFun(\'' + e.record.model + '\')" >'
					+ '设置' + '</a>';
			return html;
		}

		//设置管版图
		function setpipeFun(data) {
			var tabs = parent.parent.nui.get("mainTabs");
			var tab = {
				title : "管板设置",
				url : "/itmp/inspectcomponentmanage/pipelayout/PipelayoutDetailsList.jsp",
				showCloseButton : true
			};
			tab.onload = function(e) {
				var iframe = tabs.getTabIFrameEl(e.tab);
				iframe.contentWindow.setData(data);
			};
			tab = tabs.addTab(tab);
			tabs.activeTab(tab);

		}
		//编辑
		function edit() {
			var row = grid.getSelected();
			if (row) {
				nui.open({
					showMaxButton : true,
					url : "/itmp/inspectcomponentmanage/pipelayout/PipelayoutForm.jsp",
					title : "编辑数据",
					width : 600,
					height : 300,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record : {
								pipebaseinfo : row
							}
						};
						//直接从页面获取，不用去后台获取
						iframe.contentWindow.setFormData(data);
					},
					ondestroy : function(action) {
						grid.reload();
						$("#editbtn").prop("disabled", "disabled");
						$("#delebtn").prop("disabled", "disabled");
						$("#import").prop("disabled", "disabled");
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
				nui.confirm("确定删除选中记录？","系统提示",
					function(action) {
						if (action == "ok") {
							var json = nui.encode({
								pipebaseinfos : rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"
							});
							grid.loading("正在删除中,请稍等...");
							$.ajax({
								url : "com.cgn.itmp.inspectcomponentmanage.pipebaseInfo.pipebaseinfobiz.deletePipeBaseInfos.biz.ext",
								type : 'POST',
								data : json,
								cache : false,
								contentType : 'text/json',
								success : function(text) {
									var returnJson = nui
											.decode(text);
									if (returnJson.exception == null) {
										grid.reload();
										$("#editbtn").prop("disabled", "disabled");
										$("#delebtn").prop("disabled", "disabled");
										$("#import").prop("disabled", "disabled");
										nui.alert(
											"删除成功",
											"系统提示",
											function(action) {
											});
									} else {
										grid.unmask();
										nui.alert("删除失败","系统提示");
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
			$("#import").prop("disabled", "disabled");
		}

		//查询
		function searchs() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			grid.load(json);//grid查询
			$("#editbtn").prop("disabled", "disabled");
			$("#delebtn").prop("disabled", "disabled");
			$("#import").prop("disabled", "disabled");
		}

		//重置查询条件
		function reset() {
			var form = new nui.Form("#form1");//将普通form转为nui的form
			form.reset();
		}

		//enter键触发查询
		function onKeyEnter(e) {
			searchs();
		}
		//导入
		var gridlist=nui.get("#datagrid1");
		function adds() {
			var rows = grid.getSelecteds();
			var row = grid.getSelected();
			if (rows.length == 1) {
				var data = {};
				data.modelFlag = "4";
				var json = nui.encode({obj:row});
				$.ajax({
					url : "com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.getPilelayout.biz.ext",
					type : 'POST',
					cache : false,
					data : json,
					contentType : 'text/json',
					success : function(data) {
						if (data.flag.flag == true) {
							nui.confirm("该型号坐标已存在,是否<span style='color:red'>删除</span>","系统提示",function(action){
							gridlist.loading("正在删除中,请稍等...");
	           					if(action=="ok"){
	           						$.ajax({
					                	url:"com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.dellayout.biz.ext",
					                    type:'POST',
					                    data:json,
					                    cache: false,
					                    contentType:'text/json',
					                    success:function(text){
					                    	if(data.flag.flag == true){
						                    	gridlist.reload();
					                    	}
					                    }
	                    			});
	           					}else{
	           					}
	           				});
						} else {
							nui.open({
								showMaxButton : true,
								url : "/itmp/basecommon/importExcelComm/importPipeDataFormExcel.jsp",
								title : "新增记录",
								width : 600,
								height : 300,
								onload : function() {//弹出页面加载完成
									var iframe = this.getIFrameEl();
									var data = {
										pageType : "batchAdd",
										tempFileName : "hggl.xlsx",
										tempLoadName : "导入蒸发器坐标",
										pipeModel : row.model,
										entitfName : "com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout"
									};//传入页面的json数据
									iframe.contentWindow.SetData(data);
								},
								ondestroy : function(action) {//弹出页面关闭前
									grid.reload();
									$("#editbtn").prop("disabled", "disabled");
									$("#delebtn").prop("disabled", "disabled");
									$("#import").prop("disabled", "disabled");
								}
							});
						}
					}
			});
			} else {
				nui.alert("请选择一个蒸发器型号", "提示");
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
					$("#import").prop("disabled", "");
				} else if (rows.length > 1) {
					//修改禁止
					$("#editbtn").prop("disabled", "disabled");
					$("#import").prop("disabled", "disabled");
					//删除恢复
					$("#delebtn").prop("disabled", "");
				} else {
					//两个都禁止
					$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
					$("#import").prop("disabled", "disabled");
				}
			} else {
				//两个都禁止
				$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
				$("#import").prop("disabled", "disabled");
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
		function showquery() {
			var div = $("#form1");
			div.slideToggle(500);
			$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
		}
		//仅按照名称搜索
		function btnQuery() {
			var gjz = $("#cond").val();
			if (gjz == "") {
				refresh();
				// 				nui.get("update").disable();
			} else {
				var data = {
					matchFied : "model,isdel",
					dicFied : "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
					wordVal : $("#cond").val(),
					entity : $("input[name='criteria/_entity']").val(),
					entityName : 'criteria',
					sfdel : true,
				};
				var query = nui.decode(getKeyWordQuery(data));
				query["criteria/_expr[9]/funname"] = pageflow;
				query["criteria/_expr[10]/isdel"] = "0";
				grid.load(query);
				$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
				$("#import").prop("disabled", "disabled");
			}
		}
	</script>
</body>
</html>
