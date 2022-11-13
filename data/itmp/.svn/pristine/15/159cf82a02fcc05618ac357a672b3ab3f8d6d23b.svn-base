<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): train
- Date: 2019-08-24 10:20:56
- Description:
    --%>
<head>
<title>工序模板</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<body style="background-color: #f1f1f1; overflow: scroll;width: 98%;height: 97%"">
	<div class="bs-docs-section" style="height: 100%;">
		<div class="search-box" style="height: 100%;">
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
							<td style="width: 0%; background: #f7f7f9;" class="form_label">
							</td>
						</tr>
					</table>
					<div id="form1" class="nui-form display" align="center" style="height: 10%">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.weldingmanagement.Processes.Processes">
						<!-- 排序字段 -->
						<table cellpadding="0" cellspacing="0" id="table1" class="table"
							style="height: 100%">
							<tr>
								<td class="form_label">工序模板名称:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[1]/processnam" /> <input
									class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[1]/_likeRule"
									value="all"></td>

								<td class="form_label">适用范围:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[2]/scope" /> <input
									class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
							</tr>
							<tr>
								<td class="form_label">备注:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[3]/note" /> <input class="nui-hidden"
									name="criteria/_expr[3]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[3]/_likeRule"
									value="all"></td>
								<td class="form_label">创建人:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[4]/founder" /> <input class="nui-hidden"
									name="criteria/_expr[4]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[4]/_likeRule"
									value="all"></td>
							</tr>
							<tr>
							<td style="display:none;" colspan="0">
							<input class="nui-hidden" name="criteria/_expr[5]/isdel" value="0" /> 
							<input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
							<input class="nui-hidden" name="criteria/_expr[5]/_likeRule"value="all">
									</td>
									<input class="nui-hidden" id="con_jdid" name="criteria/_expr[12]/jd" /> 
					            <input class="nui-hidden" name="criteria/_expr[12]/_op" value="="> 
					            <input class="nui-hidden" name="criteria/_expr[12]/_likeRule" value="end">
					            <input class="nui-hidden" id="con_jzid" name="criteria/_expr[13]/jz" /> 
					            <input class="nui-hidden" name="criteria/_expr[13]/_op" value="="> 
					            <input class="nui-hidden" name="criteria/_expr[13]/_likeRule" value="end">
					            
					            <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="createtime">
					            <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
					            
					            
							</tr>
						</table>
						</div>
					</div>
				</div>
				<div class="" 
		 showToolbar="false"
		showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0;  padding: 5px 0px;">
			<table style="width: 100%;">
				<div class="" style="width: 100%; height: 100%;" showToolbar="false"
					showFooter="false">
					<div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
						<table style="width: 100%;">
							<tr>
								<td style="width: 100%;">
									<button class="btn btn-default" id="addbtn" onclick="add()">
										<b:message key="btn-add" />
									</button>
									<button class="btn btn-default" onclick="edit()"
										disabled="disabled" id="editbtn">
										<b:message key="btn-edit" />
									</button>
									<button class="btn btn-default" onclick="remove()"
										disabled="disabled" id="delebtn">
										<b:message key="btn-delete" />
									</button> <!-- 						<a class="btn btn-default btn-xs" plain="true" onclick="exportDict();"><i class="fa fa-cloud-download"></i>&nbsp导出</a> -->
									<button class="btn btn-default" id="recycle" type="button"
										onclick="recycle()">
										<b:message key="btn-recycle" />
									</button>
									

								</td>
							</tr>
						</table>
					</div>
					</table>
					</div>
					<div class="nui-fit">
						<div id="datagrid1" dataField="processess" class="nui-datagrid"
							style="width: 100%; height: 100%;"
							url="com.cgn.itmp.weldingmanagement.processesbiz.queryProcessess.biz.ext"
							pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true" oncellclick="onClick"
							onselectionchanged="selectionChanged" allowSortColumn="false">
							<div property="columns">
								<div type="indexcolumn"></div>
								<div type="checkcolumn"></div>
								<div field="uuid" headerAlign="center" allowSort="true"
									visible="false">uuid</div>
								<div field="processnam" headerAlign="center" allowSort="true">
									工序模板名称</div>
								<div field="scope" headerAlign="center"
									allowSort="true">适用范围</div>
								<div field="founder" headerAlign="center" allowSort="true">
									创建人</div>
								<div field="createtime" headerAlign="center" allowSort="true"  dateFormat="yyyy-MM-dd HH:mm:ss">
									创建时间</div>
								<!-- <div field="state" headerAlign="center" allowSort="true">状态</div>
								 <div field="isdel" headerAlign="center" allowSort="true">
									删除标识</div> -->
							</div>
						</div>
					</div>
				</div>
				</div>
				</div>
				<script type="text/javascript">
					nui.parse();
					accessControlButton('<%=userRoleCodeList%>',17);
					var grid = nui.get("datagrid1");
					nui.get('con_jdid').setValue(getCookie('jdid'));
            		nui.get('con_jzid').setValue(getCookie('jzid'));
					var formData = new nui.Form("#form1").getData(false, false);
					grid.load(formData);
						
					grid.on("drawcell", function (e) {
		
			   		var record = e.record,
			        column = e.column,
			        field = e.field,
			        value = e.value;
			        
		            if (field == "processnam") {
		            //添加样式
		            e.cellStyle ="cursor: pointer";
		            //修改html值
		           	e.cellHtml = '<a href="#">'+value+'</a>';
		    		}
				});
				function onClick(e){
					var name=e.field;
					if(name=="processnam"){
						var row=e.row;
						nui.open({
						showMaxButton : true,
							url : "/itmp/weldingmanagement/QualityProcess/ProcessesForm.jsp",
							title : "查看数据",
							width : '70%',
							height : 520,
							onload : function() {
								var iframe = this.getIFrameEl();
								var data = {
									pageType : "show",
									record : {
										processes : row
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
				}	
						
					//新增
					function add() {
						nui
								.open({
									showMaxButton : true,
									url : "/itmp/weldingmanagement/QualityProcess/ProcessesForm.jsp",
									title : "新增记录",
									width : '70%',
									height : 590,
									onload : function() {//弹出页面加载完成
										var iframe = this.getIFrameEl();
										var data = {
											pageType : "add"
										};//传入页面的json数据
										iframe.contentWindow.setFormData(data);
									},
									ondestroy : function(action) {//弹出页面关闭前
										if(action=="saveSuccess"){
											nui.showTips({content: '保存成功',state: 'success'});
										} 
										grid.reload();
									}
								});
					}

					//编辑
					function edit() {
						var row = grid.getSelected();
						if (row) {
							if(row.processStatus == '0'){
								nui.alert("工序模板["+row.processnam+"]正在[修改]流程中<br>请待审批结束后再进行操作", "提示");
								return;
							}
							nui
									.open({
									showMaxButton : true,
										url : "/itmp/weldingmanagement/QualityProcess/ProcessesForm.jsp",
										title : "编辑数据",
										width : '70%',
										height : 620,
										onload : function() {
											var iframe = this.getIFrameEl();
											var data = {
												pageType : "edit",
												record : {
													processes : row
												}
											};
											//直接从页面获取，不用去后台获取
											iframe.contentWindow
													.setFormData(data);
										},
										ondestroy : function(action) {
											if(action=="saveSuccess"){
												nui.showTips({content: '保存成功',state: 'success'});
											} 
											grid.reload();
										}
									});
						} else {
							nui.alert("请选中一条记录", "提示");
							return;
						}
					}
					
			function recycle () {
			nui.open({
				showMaxButton : true,
				url : "/itmp/common/recyclebin/recyclebin.jsp",
				title : "回收站",
				width : 1000,
				height : 570,
				onload : function() {//弹出页面加载完成
					var iframe = this.getIFrameEl();
					var data = {
						pageType : "recyclebin",
						urlName:"com.cgn.itmp.weldingmanagement.processesbiz.queryProcessess.biz.ext",//回收
						entityVal:"com.cgn.itmp.weldingmanagement.Processes.Processes",
						removeUrl:"com.cgn.itmp.weldingmanagement.common.delete.biz.ext",//删除
						recoveryUrl:"com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//恢复
						columnscode:[
							{type:"indexcolumn" },
							{type:"checkcolumn" },
							{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
							{field:"processnam",header:"工序模板名称", width:100, headerAlign:"center", allowSort:true},
							{field:'scope',header:'适用范围', width:100, headerAlign:"center", allowSort:true},
							{field:'founder',header:'创建人', width:100, headerAlign:"center", allowSort:true},
							{field:'createtime',header:'创建时间', width:100, headerAlign:"center",dateFormat:"yyyy-MM-dd HH:mm:ss", allowSort:true}
						],
					};//传入页面的json数据
					iframe.contentWindow.setFormData(data);
				},
				ondestroy : function(action) {//弹出页面关闭前
					grid.reload();
				}
			});
		}
					
					
		//回收站
		function godelete() {
			
				nui.open({
					showMaxButton : true,
					url : "/itmp/weldingmanagement/QualityProcess/ProcessesDelete.jsp",
					title : "回收站",
					width : '90%',
					height : '80%',
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record : {
								progresses : row
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
														data:rows,entity:"com.cgn.itmp.weldingmanagement.Processes.Processes",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
													});
													grid
															.loading("正在删除中,请稍等...");
													$
															.ajax({
																url:"com.cgn.itmp.weldingmanagement.processesbiz.updatedel.biz.ext",
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
																						"删除成功",
																						"系统提示",
																						function(
																								action) {
																						});
																	} else {
																		grid
																				.unmask();
																		nui
																				.alert(
																						"删除失败",
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
					}

					//查询
					function searchs() {
						var form = new nui.Form("#form1");
						var json = form.getData(false, false);
						grid.load(json);//grid查询
					}

					//重置查询条件
					function reset() {
					$("#cond").val('');
						var form = new nui.Form("#form1");//将普通form转为nui的form
						form.reset();
						nui.get('con_jdid').setValue(getCookie('jdid'));
            			nui.get('con_jzid').setValue(getCookie('jzid'));
					}

					//enter键触发查询
					function onKeyEnter(e) {
						searchs();
					}

					//控制修改和刪除按鈕
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
					//高级搜索上下拉动效果
					$(".adv-search").bind(
							"click",
							function(e) {
								e.preventDefault();
								var folding = $(this).parents(".navbar").next(
										".folding-menu");
								var html = btnText(folding);
								$(this).html(html);
								$(this).parents(".query-form").find(
										".dw-toggle .fa").toggleClass(
										"fa-angle-down");
							});
					//上下拉动效果
					$(".dw-toggle").bind(
							"click",
							function(e) {
								e.preventDefault();
								$(this).find(".fa")
										.toggleClass("fa-angle-down");
								var folding = $(this).parents(".navbar").next(
										".folding-menu");
								var html = btnText(folding);
								$(this).parents(".navbar-right").prev().find(
										".adv-search").html(html);
							});
					//模糊查询
					function btnQuery() {
						var gjz = $("#cond").val();
						if (gjz == "") {
							refresh();
						} else {
							var data = {
								matchFied : "processnam,scope,founder",
								dicFied : "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
								wordVal : $("#cond").val(),
								entity : $("input[name='criteria/_entity']")
										.val(),
								entityName : 'criteria',
								sdel : true,
								jdInfo : 'jd@' + getCookie('jdid')
							};
							
							var query = nui.decode(getKeyWordQuery(data));
							grid.load(query);
						}
					}
				</script>
</body>
</html>
