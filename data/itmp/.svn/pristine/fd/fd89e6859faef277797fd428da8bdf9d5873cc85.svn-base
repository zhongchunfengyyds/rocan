<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
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

<body style="width: 98%; height: 97%;">

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
					<div id="form1" class="nui-form display" align="center"  style="height: 43px;">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree">
						<!-- 排序字段 -->
						<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="orderno">
                		<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
						<table cellpadding="0" cellspacing="0" id="table1" class="table"
							style="height: 100%">
							<tr>
								<!-- <td class="form_label">部件类型:</td>
								<td colspan="1"><input class="nui-textbox" id="componenttype"
									name="criteria/_expr[2]/componenttype" /> <input
									class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
								</td> -->
								<td class="form_label">设备名称:</td>
								<td colspan="1"><input class="nui-textbox" id="devicename"
									name="criteria/_expr[1]/devicename" /> <input
									class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[1]/_likeRule"
									value="all"></td>
								<td class="form_label">部件名称:</td>
								<td colspan="1"><input class="nui-textbox" id="partname"
									name="criteria/_expr[2]/partname" />  <input
									class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
							</tr>
							<tr>
								<td class="form_label">被检部位:</td>
								<td colspan="1"><input class="nui-textbox" id="detectedsite"
									name="criteria/_expr[3]/detectedsite" />  <input
									class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[3]/_likeRule"
									value="all"></td>
							<!-- </tr>
							<tr>
								<td class="form_label">检查方法:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[6]/inspectionmethod" />  <input
									class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[6]/_likeRule"
									value="all"></td>
								</td> -->
								<td class="form_label"></td>
								<td colspan="1"></td>
							</tr>
							<tr style="visibility: hidden;">
								<td colspan="3">
								<input class="nui-hidden" id="con_jdid" name="criteria/_expr[4]/jd" /> 
								<input class="nui-hidden" name="criteria/_expr[4]/_op" value="=">
								<input class="nui-hidden" id="con_jzid" name="criteria/_expr[5]/jz"/> 
								<input class="nui-hidden" name="criteria/_expr[5]/_op" value="=">
								<input class="nui-hidden" name="criteria/_expr[6]/isdel" value="0" /> 
								<input class="nui-hidden" name="criteria/_expr[6]/_op" value="=">
								</td>
							</tr>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>






	<!--footer-->
	<div class="nui-layout" style="width:100%;height:94%;" > 
	<div  region="west" width="200" title="役检部件目录树">
        <div class="nui-fit">
        	<ul id="tree1" expandOnNodeClick="true" class="nui-tree" 
        	resultAsTree="false" style="width:100%;height:100%;" 
        	onnodeclick="onNodeSelect" onbeforeexpand="onBeforeExpand"
        	onnodeselect="onNodeSelect" expandOnNodeClick="true"
        	onbeforenodeselect="onBeforeNodeSelect"
            dataField="id" textField="text" url="">
			</ul>
		</div>
    	</div>
	
<!-- 	<div style="width: 15%; height: 85%; float: left;" class="leftmenu inleftmenu" -->
<!-- 		region="west" showSplitIcon="true" width="200"> -->
<!-- 		<ul id="tree1" class="mini-tree" style="height: 100%" -->
<!-- 			onnodeclick="onNodeSelect" onbeforeexpand="onBeforeExpand" -->
<!-- 			onnodeselect="onNodeSelect" expandOnNodeClick="true" -->
<!-- 			onbeforenodeselect="onBeforeNodeSelect"  -->
<!-- 			showTreeIcon="true" showTreeIcon="true" textField="text" idField="id"> -->
<!-- 		</ul> -->
<!-- 	</div> -->
	<div style="width: 80%; height: 85%; float: left;" showToolbar="false" showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0; padding:5px 0px;">
			<table style="width: 100%;">
				<tr>
					<td style="width: 100%;">
						<button class="btn btn-default" onclick="add()"
						disabled="disabled" id="addbtn"
						>
							<b:message key="btn-add" />
						</button>
						<button class="btn btn-default" onclick="edit()"
							disabled="disabled" id="editbtn">
							<b:message key="btn-edit" />
						</button>
						<button class="btn btn-default" onclick="remove()"
							disabled="disabled" id="delebtn">
							<b:message key="btn-delete" />
						</button>
						<button class="btn btn-default" type="button" onclick="batchAdd()" id="batchAdd">
							<b:message key="btn-import" />
						</button>
						<button class="btn btn-default" type="button" onclick="doUp()" id="doUp">
							<b:message key="btn-export" />
						</button>
						<button class="btn btn-default" type="button" onclick="recycle()" id="recycle">
							
							<b:message key="btn-recycle" />
						</button>
					</td>
				</tr>
			</table>
		</div>
		<div class="nui-fit">
			<div id="datagrid1" dataField="inspecomponentmenutrees"
				class="nui-datagrid" style="width: 100%; height: 100%;"
				url="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutreebiz.queryInspecomponentmenutrees.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
				onselectionchanged="selectionChanged" allowSortColumn="false">

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<!-- <div field="componenttype" headerAlign="center" allowSort="true">
						部件类型</div> -->
					<div field="devicename" headerAlign="center" allowSort="true">
						设备名称</div>
					<div field="partname" headerAlign="center" allowSort="true">
						部件名称</div>
					<div field="detectedsite" headerAlign="center" allowSort="true">
						被检部位</div>
					<!-- <div field="inspectionmethod" headerAlign="center" allowSort="true">
						检查方法</div> -->
					<div field="inspectionmethod" headerAlign="center" allowSort="true" visible="false">
						删除人</div>
					<div field="inspectionmethod" headerAlign="center" allowSort="true" visible="false">
						删除时间</div>	
					<!--<div field="isdel" headerAlign="center" allowSort="true">
						是否删除</div>-->
				</div>
			</div>
		</div>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		accessControlButton('<%=userRoleCodeList%>',7);
		 var str = '<%=userRoleCodeList%>';
			 if (str.indexOf(",ITMP_JDGLY") < 0) {//普通人员
			 	 $("#addbtn").hide();
			 	 $("#delebtn").hide();
			 	 $("#recycle").hide();
			 	 $("#doUp").hide();
			 	 $("#batchAdd").hide();
			 }else if(str.indexOf(",ITMP_JDGLY") > 0){
			 	$("#delebtn").hide();
			 	$("#recycle").hide();
			 }
			if(str.indexOf(",ITMP_CJGLY") > 0){//ITMP_CJGLY 超级管理员
				 $("#addbtn").show();
				 $("#editbtn").show();
				 $("#delebtn").show();
				 $("#batchAdd").show();
				 $("#doUp").show();
				 $("#recycle").show();
			 }
		// 		加载目录树
		 var jdid = getCookie('jdid');
	     var jzid = getCookie('jzid');
		showtree();
		function showtree(){
		var json=nui.encode({base:jdid,crew:jzid});
		$
				.ajax({
					url : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutreebiz.gettree.biz.ext",
					type : 'POST',
					data : json,
					cache : false,
					contentType : 'text/json',
					success : function(treeData) {
						var tree1 = mini.get("tree1");
						tree1.loadList(treeData.treeData, "id", "pid");
					}
				});
			}
		var grid = nui.get("datagrid1");
		nui.get('con_jdid').setValue(jdid);
       	 	nui.get('con_jzid').setValue(jzid);
		var formData = new nui.Form("#form1").getData(false, false);
		grid.load(formData);

		$(function() {
			$('#addbtn').attr('title',"请选择插入位置（之后）");
			$('#editbtn').attr('title',"请选择需修改条目");
		});


		/* //新增
		function add() {
			nui
					.open({
						url : "/itmp/inspectcomponentmanage/nuclearislanddatamanagement/inspecomponentmenutree/InspecomponentmenutreeForm.jsp",
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
		} */
		
		//新增
		function add() {
			var row = grid.getSelected();
			var arr=new Array();
			arr=grid.getData();
			
			if (row) {
				nui.open({showMaxButton : true,
			        url: "/itmp/inspectcomponentmanage/nuclearislanddatamanagement/inspecomponentmenutree/InspecomponentmenutreeForm.jsp",
			        title: "新增记录", width: 600, height: 150,
			        onload: function () {//弹出页面加载完成
				        var iframe = this.getIFrameEl();
				        var data = {pageType:"add",record:{inspecomponentmenutree:row},gridarr:arr};//传入页面的json数据
				        iframe.contentWindow.setFormData(data);
			        },
			        ondestroy: function (action) {//弹出页面关闭前
			        if(action=="addSuccess"){
						nui.showTips({content: '新增成功!',state: 'success'});
					} 
			        	$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
			        	grid.reload();
			        	 showtree();
		    		}
		    	});
			}else{
				nui.alert("请选中插入位置（之后）","提示");
			}
		}

		//编辑
		function edit() {
			var row = grid.getSelected();
			if (row) {
				nui
						.open({
							url : "/itmp/inspectcomponentmanage/nuclearislanddatamanagement/inspecomponentmenutree/InspecomponentmenutreeForm.jsp",
							title : "编辑数据",
							width : 600,
							height : 150,
							onload : function() {
								var iframe = this.getIFrameEl();
								var data = {
									pageType : "edit",
									record : {
										inspecomponentmenutree : row
									}
								};
								//直接从页面获取，不用去后台获取
								iframe.contentWindow.setFormData(data);
							},
							ondestroy : function(action) {
							if(action=="updateSuccess"){
						nui.showTips({content: '修改成功!',state: 'success'});
					}
							$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
								grid.reload();
								showtree();
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
													entity : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
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
														var returnJson = nui
																.decode(text);
														if (returnJson.exception == null) {
															grid.reload();
															showtree();
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
		//导出
		 function doUp(){
		 if(grid.data.length==0){
		 	nui.alert("没有数据可以导出!");
		 	return;
		 }
			var form = new nui.Form("#form1");
   		    var json = form.getData(false,false);
    		var filterField = "uuid,isdel,deleteperson,deletetime,jd,jz,orderno,batchindex";
			var defaultCheck="devicename,partname,detectedsite";
    	nui.open({showMaxButton : true,
        url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
        title: "导出数据", width: 400, height: 350,
        onload: function () {//弹出页面加载完成
        var iframe = this.getIFrameEl();
        var data = {
                entityName:"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree",
                queryParam:json,								    //查询数据
                queryKey:'criteria',                              //查询实体名
                query:['devicename','partname','detectedsite','jd','jz','isdel'],  //按顺序放置
                dicFieds: "",
                expTitle:"役检部件目录树",
                filterField:[filterField],
                jdFieds:"jd",
            	jzFieds:"jz",
            	order:"orderno@asc",
                defaultCheck:[defaultCheck]
        };//传入页面的json数据
        	    iframe.contentWindow.setFormData(data);
        	},
       	 ondestroy: function (action) {//弹出页面关闭前
       	 $("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
                grid.reload();
                showtree();
      		  }
   			 });
		
		} 
		//重新刷新页面
		function refresh() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			grid.load(json);
			showtree();
			//grid查询
			// 			nui.get("update").enable();
		}

		//查询
		function searchs() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			grid.load(json);//grid查询
			showtree();
			$("#editbtn").prop("disabled", "disabled");
			$("#delebtn").prop("disabled", "disabled");
			$("#addbtn").prop("disabled", "disabled");
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

		//当选择列时
		function selectionChanged() {
			var rows = grid.getSelecteds();
			if (rows.length > 1) {
				// 				nui.get("update").disable();
			} else {
				// 				nui.get("update").enable();
			}
		}

		//回收站
		function recycle() {
			nui
					.open({
						url : "/itmp/common/recyclebin/recyclebinattach.jsp",
						title : "回收站",
						width : 1000,
						height : 570,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								pageType : "recyclebin",
								recyclebinFlag : "instree",
								urlName : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutreebiz.queryInspecomponentmenutrees.biz.ext",//回收
								entityVal : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree",
								removeUrl : "com.cgn.itmp.weldingmanagement.common.delete.biz.ext",
								recoveryUrl : "com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//恢复
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
								}, 
								{
									field : 'devicename',
									header : '设备名称',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'partname',
									header : '部件名称',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, 
								{
									field : 'detectedsite',
									header : '被检部位',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, 
								{
									field : 'deleteperson',
									header : '删除人',
									width : 100,
									headerAlign : "center",
									allowSort : true
								} , {
									field : 'deletetime',
									header : '删除时间',
									width : 100,
									headerAlign : "center",
								    dateFormat: "yyyy-MM-dd HH:mm:ss",
									allowSort : true
								}  ],
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
							grid.reload();
							showtree();
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
					$("#addbtn").prop("disabled", "");
				} else if (rows.length > 1) {
					//修改禁止
					$("#editbtn").prop("disabled", "disabled");
					//增加也禁止
					$("#addbtn").prop("disabled", "disabled");
					//删除恢复
					$("#delebtn").prop("disabled", "");
				} else {
					//两个都禁止
					$("#addbtn").prop("disabled", "disabled");
					$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
				}
			} else {
				//两个都禁止
				$("#addbtn").prop("disabled", "disabled");
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
				// 				nui.get("update").disable();
			} else {
				var data = {
					matchFied : "devicename,partname,detectedsite",
					dicFied : "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
					wordVal : $("#cond").val(),
					entity : $("input[name='criteria/_entity']").val(),
					entityName : 'criteria',
					sfdel : true,
					jdInfo : 'jd@' + getCookie('jdid'),
					jzInfo : 'jz@' + getCookie('jzid')
				};
				var query = nui.decode(getKeyWordQuery(data));
				query["criteria/_expr[6]/isdel"] = "0";
				query["criteria/_orderby[1]/_property"] = "orderno";
				query["criteria/_orderby[1]/_sort"] = "asc";
				grid.load(query);
				// 				nui.get("update").disable();
			}
		}
		/* function showquery() {
			var div = $("#form1");
			div.slideToggle(500);
			$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
		} */

		//导入
		function batchAdd() {
			var data = {};
			data.modelFlag = "4";
			data.jdid = jdid;
			data.jzid = jzid;
			var entityType="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree";
			var json = nui.encode({data:data,entityType:entityType,fields:"batchindex",values:"1",base:jdid,crew:jzid});
			$
					.ajax({
						url : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutreebiz.queryCountByEntity.biz.ext",
						type : 'POST',
						cache : false,
						data : json,
						contentType : 'text/json',
						success : function(data) {
							var count = data.count;
							if (count > 0) {
								/* nui.alert("役检部件目录树已存在,不能导入", "提示"); */
								nui.confirm("已导入数据，如需继续导入数据需要清空之前导入的数据，确认吗？","", function(action){
						    		if(action == 'ok'){
										nui.ajax({
											url: "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutreebiz.deleteByBatchIndex.biz.ext",
											type: "post",
											data: json,
											cache: false,
											contentType: 'text/json',
											success: function (text) {
												if(text.status == 'success'){
												nui.alert("导入数据清空成功!请尝试重新导入");
												grid.reload();
												showtree();		
												}
												else nui.alert("清空失败！");
											},
											error: function () {
												nui.alert("清空失败！");
											}
										});
									}
								});
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
													tempFileName : "Inspecomponentmenutree.xlsx",
													tempLoadName : "役检部件目录树导入模板",
													entitfName : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Inspecomponentmenutree"
												};//传入页面的json数据
												iframe.contentWindow
														.SetData(data);
											},
											ondestroy : function(action) {//弹出页面关闭前
												grid.reload();
												showtree();
											}
										});
							}
						}
					});

		}
		//菜单点击事件
		function onNodeSelect(e) {
			var node = e.node;
			var isLeaf = e.isLeaf;
			if(typeof(node.pid)=="undefined"){
				searchInfoOne();
			}else{
				if (isLeaf) {
				searchInfoThree();
				}else{
				searchInfoTwo();
				}
			}
			  

			
		}
		function onBeforeExpand(e) {
			var tree1 = e.sender;
			var nowNode = e.node;
			var level = tree1.getLevel(nowNode);
			var root = tree1.getRootNode();
			tree1.cascadeChild(root, function(node) {
				if (tree1.isExpandedNode(node)) {
					var level2 = tree1.getLevel(node);
					if (node != nowNode && !tree1.isAncestor(node, nowNode)
							&& level == level2) {
						tree1.collapseNode(node, true);
					}
				}
			});

		}
		function onBeforeNodeSelect(e) {
            var tree = e.sender;
            var node = e.node;
            /* if (tree.hasChildren(node)) {
                e.cancel = true;
            } */
        }
         //树点击查询 一级节点
		function searchInfoOne(e){
			var tree = mini.get("tree1");
            var node = tree.getSelectedNode();
            if (node) {
	            var form = new nui.Form("#form1");
				form.jd = jdid;
				form.jz = jzid;
				var data = form.getData(false, false);
// 				nui.get("devicename").setValue(node.text);
				data["criteria/_expr[1]/devicename"] = node.text;
				data["criteria/_expr[1]/_op"]='=';
				data["criteria/_expr[3]/detectedsite"] = "";
				data["criteria/_expr[2]/partname"] = "";
				data["criteria/_expr[6]/isdel"] = "0";
				grid.load(data);//grid查询
            }
		}
		
        //树点击查询 二级节点
		function searchInfoTwo(e){
			var tree = mini.get("tree1");
            var node = tree.getSelectedNode();
            if (node) {
	            var form = new nui.Form("#form1");
				form.jd = jdid;
				form.jz = jzid;
				var data = form.getData(false, false);
// 				nui.get("partname").setValue(node.text);
				data["criteria/_expr[7]/devicename"] = tree.getParentNode(node).text;
				data["criteria/_expr[7]/_op"]='=';
				data["criteria/_expr[2]/partname"] = node.text;
				data["criteria/_expr[2]/_op"]='=';
				data["criteria/_expr[1]/devicename"] = "";
				data["criteria/_expr[3]/detectedsite"] = "";
				data["criteria/_expr[6]/isdel"] = "0";
				grid.load(data);//grid查询
            }
		}
        
		//树点击查询 三级节点
		function searchInfoThree(e){
			var tree = mini.get("tree1");
            var node = tree.getSelectedNode();
            if (node) {
	            var form = new nui.Form("#form1");
				form.jd = jdid;
				form.jz = jzid;
				var data = form.getData(false, false);
// 				nui.get("detectedsite").setValue(node.text);
				data["criteria/_expr[7]/partname"] = tree.getParentNode(node).text;
				data["criteria/_expr[7]/_op"]='=';
				data["criteria/_expr[3]/detectedsite"] = node.text;
				data["criteria/_expr[3]/_op"]='=';
				data["criteria/_expr[2]/partname"] = "";
				data["criteria/_expr[1]/devicename"] = "";
				data["criteria/_expr[6]/isdel"] = "0";
				grid.load(data);//grid查询
            }
		}
    var tip = new nui.ToolTip();
//     mini-grid-row mini-tree-selectedNode
    $('#tree1 table').mouseover(function(){
    });
//     tip.set({
//         target: document,
//         selector: '.showCellTooltip', //要添加提示元素的calss
//         placement: 'topleft', //提示出现的位置
//         onbeforeopen: function (e) {
//             e.cancel = false;
//         },
//         onopen: function (e) { //提示框打开触发事件
//             tip.setContent("请选择需要修改的数据"); //给提示框内容添加值
//         }
//     });
	</script>
</body>
</html>
