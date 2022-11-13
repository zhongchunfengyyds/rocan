<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-11 16:46:42
- Description:缺陷显示跟踪与处理数据展示页面
    --%>
<head>
<title>Entity查询</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
</script>
</head>
<body style="background-color:#f1f1f1;width: 98%; height: 95%;">
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
					<div id="form1" class="nui-form display" align="center" style="height:110px">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectdisplaytrackingandprocessing.Defectdisplaytrackingandprocessing">
						<!-- 排序字段 -->
						<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="createtime">
				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						<input class="nui-hidden" name="criteria/_orderby[2]/_property" value="orderno">
				<input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc">
						<table id="table1" class="table" style="height: 100%">
							<tr>
								<td class="form_label">机组状态:</td>
								<td colspan="1"><input class="nui-dictcombobox" dictTypeId="NBJY_JZSTATU" name="criteria/_expr[1]/jzstate" /> <input class="nui-hidden"
									name="criteria/_expr[1]/_op" value="="></td>
								<td class="form_label">大修轮次:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[2]/overhaulsequence" /> <input
									class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
							</tr>
							
							<tr>
								<td class="form_label">发现缺陷工单号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[3]/defectjobnumber" /> <input
									class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[3]/_likeRule"
									value="all"></td>
								<td class="form_label">检查方法:</td>
								<td colspan="1"><input class="nui-dictcombobox" dictTypeId="YJJCFF"
									name="criteria/_expr[4]/checkmethod" /> <input
									class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[4]/_likeRule"
									value="all"></td>
							</tr>
							<tr>
								<td class="form_label">通知单号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[5]/notificationnumber" /> <input
									class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[5]/_likeRule"
									value="all"></td>
								<td class="form_label">功能位置:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[6]/position" /> <input class="nui-hidden"
									name="criteria/_expr[6]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[6]/_likeRule"
									value="all"></td>
							</tr>
							<tr>
								<td class="form_label">创建日期:</td>
								<td colspan="1"><input id="cssd" class="mini-datepicker" name="criteria/_expr[7]/createdate" /> <input class="nui-hidden"
									name="criteria/_expr[7]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[7]/_likeRule"
									value="all"></td>
								<td class="form_label">当前状态:</td>
								<td colspan="1"><input class="nui-dictcombobox"
									dictTypeId="QXDQZT" name="criteria/_expr[8]/currentstate" /> <input
									class="nui-hidden" name="criteria/_expr[8]/_op" value="=">
								</td>
								<td style="display:none;" colspan="0"><input class="nui-hidden"
									name="criteria/_expr[9]/isdel" value="0" /> <input
									class="nui-hidden" name="criteria/_expr[9]/_op" value="=">
									<input class="nui-hidden" id="con_jdid"
									name="criteria/_expr[10]/jd" /> <input 
									class="nui-hidden" name="criteria/_expr[10]/_op" value="=">
									<input class="nui-hidden" id="con_jzid"
									name="criteria/_expr[11]/jz" /> <input
									class="nui-hidden" name="criteria/_expr[11]/_op" value="="></td>
							</tr>
						</table>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	
	<div style="width: 100%; height: 96%; float: left;"
		showToolbar="false" showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0; padding:5px 0px;">
			<table style="width: 100%;">
				<tr>
					<td style="width: 100%;">
						<button id="addallbut" style="position: relative;" class="btn btn-default" onclick="openAllAdd()">
							<b:message key="btn-add" />
						</button>
							<ul class="add_adds nui-menu">
								<li onclick="add()">单条新增</li>
								<li onclick="batchAdd()">批量新增</li>
							</ul>
						<button class="btn btn-default" onclick="edit()"
							disabled="disabled" id="editbtn">
							<b:message key="btn-edit" />
						</button>
						<button class="btn btn-default" onclick="remove()"
							disabled="disabled" id="delebtn">
							<b:message key="btn-delete" />
						</button>
						<button class="btn btn-default" type="button" id="output" onclick="output()">
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
						<div id="datagrid1"
							dataField="defectdisplaytrackingandprocessings"
							class="nui-datagrid" style="width: 100%; height: 100%;"
							url="com.cgn.itmp.inspectcomponentmanage.defectdisplaytrackingandprocessingbiz.queryDefectdisplaytrackingandprocessingAll.biz.ext"
							pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true" onselectionchanged="selectionChanged" allowSortColumn="false" >

							<div property="columns">
								<div type="indexcolumn"></div>
								<div type="checkcolumn"></div>
								<div field="uuid" headerAlign="center" allowSort="true"
									visible="false">uuid</div>
								
								<div field="jzstate" headerAlign="center" allowSort="true" renderer="jzstateRender">
									机组状态</div>
								<div field="overhaulsequence" headerAlign="center"
									allowSort="true">大修轮次</div>
								<div field="defectjobnumber" headerAlign="center"
									allowSort="true">发现缺陷工单号</div>
								<div field="checkmethod" headerAlign="center" allowSort="true" renderer="jcffRender">
									检查方法</div>
								<div header="缺陷单通知信息">
								<div property="columns">
								<div field="notificationnumber" headerAlign="center"
									allowSort="true" renderer="setHref">通知单号</div>
								<div field="title" headerAlign="center" allowSort="true">标题
								</div>
								<div field="describe" headerAlign="center" allowSort="true">
									描述</div>
								<div field="position" renderer="goon" headerAlign="center" allowSort="true" >
									功能位置</div>
								<div field="createdate" headerAlign="center" allowSort="true"  dateFormat="yyyy-MM-dd">
									创建日期</div>
								<div field="currentstate" headerAlign="center" allowSort="true" renderer="stateRender">
									当前状态</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<script type="text/javascript">
		nui.parse();
		accessControlButton('<%=userRoleCodeList%>',7);
		if ('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") < 0) {
			 $("#output").hide();
			 $("#recycle").hide();
		}else if('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") > 0){
		 	$("#delebtn").hide();
		 	$("#recycle").hide();
		 }
		 if('<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") > 0){//ITMP_CJGLY 超级管理员
			 $("#addallbut").show();
			 $("#editbtn").show();
			 $("#delebtn").show();
			 $("#output").show();
			 $("#recycle").show();
		 }
		var grid = nui.get("datagrid1");
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		nui.get('con_jdid').setValue(jdid);
        nui.get('con_jzid').setValue(jzid);
		var formData = new nui.Form("#form1").getData(
				false, false);
		grid.load(formData);
		
		$(function() {
			
			$('#editbtn').attr('title', "请选择需修改条目");
		});
		
		function setHref(e){
			var xm=e.record.notificationnumber;
			var uid=e.record._uid;
			var html='<a href="javascript:void(0)" onclick="openView('+uid+')" >' +xm+'</a>';
			return html;
		}
		function openView(uid){
			var row=grid.getRowByUID(uid);
			nui.open({
				showMaxButton: true,
					url : "/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaytrackingandprocessing/DefectdisplaytrackingandprocessingShowForm.jsp",
					title : "数据详情",
					width : 900,
					height : 550,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record : {
								defectdisplaytrackingandprocessing : row
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
		}	
		
		function goon(e){
			if(e.record.position != null){
				return '<a style="cursor: pointer" onclick ="showposition(\''+e.record.position+'\')">'+e.record.position+'</a>';
		 	}
		}	
		function showposition(position){
			var json ={};
			json.fieldName = "position";
			json.fieldValue = position;
			json.entity = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation";
			json.jd = jdid;
			json.jz = jzid;
			json = nui.encode(json);
			$.ajax({
			    url:"com.cgn.itmp.inspectcomponentmanage.defectdisplaytrackingandprocessingbiz.getDataByPosition.biz.ext",
			    type:'POST',
			    cache:false,
			    data:json,
			    contentType:'text/json',
			    success:function(data){
			    	 if(data.record.data1){
			    	 	var url = '/itmp/inspectcomponentmanage/nuclearislanddatamanagement/equipmentbaseinformation/EquipmentbaseinformationList.jsp?position='+encodeURI(JSON.parse(JSON.stringify(position)));
			    	 	addTab(position,'',url);
			    	 }
			    	 if(!data.record || !data.record.data1){
			    	 	nui.alert("无相关数据","提示");
			    	 }
		   		}
			});
		}	
		
		function addTab(position,type,url) {
	         var tabs = parent.parent.nui.get("mainTabs");
	         var tab = { title: type + "设备基础技术信息", url: url, showCloseButton: true };
	         tab = tabs.addTab(tab);            
		     tabs.activeTab(tab);
	    }
	    
		
		//导出
		function output() {
		 if(grid.data.length==0){
		 	nui.alert("没有数据可以导出!");
		 	return;
		 }
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			nui.open({
				showMaxButton : true,
				url : "/itmp/basecommon/importExcelComm/expSelectFiledAndAttachMultiple.jsp",
				title : "导出数据",
				width : 400,
				height : 200,
				onload : function() {//弹出页面加载完成
					var iframe = this.getIFrameEl();
					var data = {
						entityName : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectdisplaytrackingandprocessing.Defectdisplaytrackingandprocessing",
						queryParam : json, //查询数据
						queryKey : 'criteria', //查询实体名
						query : [ 'jzstate','overhaulsequence','defectjobnumber','checkmethod','notificationnumber','position','createdate','currentstate', 'isdel', 'jd','jz'], //按顺序放置
						filterField : ['fileRelativePath','jd','jz','uuid', 'isdel','deletetime',
								'deleteperson', 'yjjsr', 'dxlc', 'fildid', 'fileId','filename','filepath','fileid',
								'fileRealName', 'filePath', 'fileSize','inserttime', 'createtime',
								'fileType', 'fileUploadTime', 'fileUploadUser', 'orderno',
								'fileNewName' ],
						expTitle : "缺陷显示跟踪与处理",
						dicFieds : "jzstate@NBJY_JZSTATU,checkmethod@YJJCFF,currentstate@QXDQZT",
						jdFieds : "jd",
						jzFieds : "jz",
						order:"createtime@desc,orderno@asc",
						attachFied:"fileid@fj",
                         mode:"ftp"
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
		
		//新增
		function add() {
			nui
					.open({
						showMaxButton : true,
						url : "/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaytrackingandprocessing/DefectdisplaytrackingandprocessingForm.jsp",
						title : "新增记录",
						width : 913,
						height : 400,
						onload : function() { //弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								pageType : "add"
							}; //传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) { //弹出页面关闭前
						if(action=="addSuccess"){
						nui.showTips({content: '新增成功!',state: 'success'});
					} 
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
				showMaxButton: true,
					url : "/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaytrackingandprocessing/DefectdisplaytrackingandprocessingForm.jsp",
					title : "编辑数据",
					width : 913,
					height : 400,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record : {
								defectdisplaytrackingandprocessing : row
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
													entity : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectdisplaytrackingandprocessing.Defectdisplaytrackingandprocessing",
													token:"<%=TokenUtil.getTokenString(request.getSession())%>"
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

		//回收站
		function recycle() {
			nui
					.open({
					showMaxButton : true,
						url : "/itmp/common/recyclebin/recyclebin.jsp",
						title : "回收站",
						width : 1000,
						height : 570,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								pageType : "recyclebin",
								urlName : "com.cgn.itmp.inspectcomponentmanage.defectdisplaytrackingandprocessingbiz.queryDefectdisplaytrackingandprocessings.biz.ext",//回收
								entityVal : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectdisplaytrackingandprocessing.Defectdisplaytrackingandprocessing",
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
									field : 'jzstate',
									header : '机组状态',
									width : 100,
									headerAlign : "center",
									allowSort : true,
									dic:"NBJY_JZSTATU",
									renderer:"stateRender"
								}, {
									field : 'overhaulsequence',
									header : '大修轮次',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'defectjobnumber',
									header : '发现缺陷工单号',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'checkmethod',
									header : '检查方法',
									width : 100,
									headerAlign : "center",
									allowSort : true,
									dic:"YJJCFF",
									renderer:"stateRender"
								}, {
									field : 'notificationnumber',
									header : '通知单号',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'title',
									header : '标题',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'describe',
									header : '描述',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'position',
									header : '功能位置',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'createdate',
									header : '创建日期',
									width : 100,
									headerAlign : "center",
									dateFormat : "yyyy-MM-dd",
									allowSort : true
								}, {
									field : 'currentstate',
									header : '当前状态',
									width : 100,
									headerAlign : "center",
									allowSort : true,
									dic:"QXDQZT",
									renderer : "stateRender"
									
								}, {
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

		//导入（改）
		function batchAdd() {
			var data = {};
			data.modelFlag = "4";
			data.jdid = jdid;
			data.jzid = jzid;

			var json = nui.encode(data);
			$.ajax({
						url : "com.cgn.itmp.basecommon.Common.queryCountByEntity.biz.ext",
						type : 'POST',
						cache : false,
						data : json,
						contentType : 'text/json',
						success : function(data) {
							var count = data.count;
							if (count > 0) {
								nui.alert("已存在,不能导入", "提示");
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
													tempFileName : "defectdisplaytrackingandprocessing.xlsx",
													tempLoadName : "缺陷显示跟踪处理导入模板",
													entitfName : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectdisplaytrackingandprocessing.Defectdisplaytrackingandprocessing"
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
		
		function stateRender(e){
             return nui.getDictText("QXDQZT", e.value);
            }
        function jzstateRender(e){
             return nui.getDictText("NBJY_JZSTATU", e.value);
            }
        function jcffRender(e){
             return nui.getDictText("YJJCFF", e.value);
            }        
            
		
		/* function showquery() {
			var div = $("#form1");
			div.slideToggle(500);
			$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
		} */

		//重新刷新页面
		function refresh() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			grid.load(json); //grid查询
			/* nui.get("update").enable(); */
		}

		//查询
		function searchs() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			grid.load(json); //grid查询
			$("#editbtn").prop("disabled", "disabled");
			$("#delebtn").prop("disabled", "disabled");
			$("#addbtn").prop("disabled", "disabled");
		}

		//重置查询条件
		function reset() {
			$("#cond").val('');
			var form = new nui.Form("#form1"); //将普通form转为nui的form
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
				/* nui.get("update").disable(); */
			} else {
			/*  nui.get("update").enable();
				*/
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
		//仅按照名称搜索（模糊查询）
		function btnQuery() {
			var gjz = $("#cond").val();
			if (gjz == "") {
				refresh();
				// 				nui.get("update").disable();
			} else {
				var data = {
					matchFied : "defectjobnumber,checkmethod,notificationnumber,title,describe,position",
					dicFied : "checkmethod@YJJCFF",
					wordVal : $("#cond").val(),
					entity : $("input[name='criteria/_entity']").val(),
					entityName : 'criteria',
					sfdel : true,
					jdInfo : 'jd@' + getCookie('jdid'),
					jzInfo : 'jz@' + getCookie('jzid')
				};
				var query = nui.decode(getKeyWordQuery(data));
				query["criteria/_expr[9]/isdel"] = "0";
				query["criteria/_orderby[1]/_property"] = "createtime";
				query["criteria/_orderby[1]/_sort"] = "desc";
				query["criteria/_orderby[2]/_property"] = "orderno";
				query["criteria/_orderby[2]/_sort"] = "asc";
			
				grid.load(query);
				// 				nui.get("update").disable();
			}
		}
		
	</script>				
</body>
</html>
