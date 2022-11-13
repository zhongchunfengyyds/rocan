<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<%
    String position = request.getParameter("position");
 %>
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-10 11:54:19
- Description:
    --%>
<head>
<title>Entity查询</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</script>
</head>
<body style="background-color:#f1f1f1;width: 98%; height: 97%;">
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
					<div id="form1" class="nui-form display"
						align="center" style="height:77px">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation">
						<!-- 排序字段 -->
						<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="createtime">
				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						<input class="nui-hidden" name="criteria/_orderby[2]/_property" value="orderno">
				<input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc">
						<table id="table1" class="table" style="height: 100%">
							<tr>
								<td class="form_label">设备名称:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[1]/devicename" /> <input
									class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[1]/_likeRule"
									value="all"></td>
								<td class="form_label">功能位置:</td>
								<td colspan="1"><input id="position" class="nui-textbox"
									name="criteria/_expr[2]/position" /><input
									class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
							</tr>
							<tr>
								<td class="form_label">RCC-M级别:</td>
								<td colspan="1"><input class="nui-dictcombobox"
									dictTypeId="RCCM" name="criteria/_expr[3]/rccmlevel" /> <input
									class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[3]/_likeRule"
									value="all"></td>
								</td>
								<td class="form_label">RSE-M级别:</td>
								<td colspan="1"><input class="nui-dictcombobox"
									dictTypeId="RSEM" name="criteria/_expr[4]/rsemlevel" /> <input
									class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[4]/_likeRule"
									value="all"></td>
								</td>
								</tr>
							<tr>
								<td class="form_label">生产厂家:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[5]/manufacturer" /> <input
									class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[5]/_likeRule"
									value="all"></td>
								<td class="form_label"></td>
								<td colspan="1"></td>
							</tr>
							
							<tr style="visibility: hidden;">
								<td colspan="3"><input class="nui-hidden"
									name="criteria/_expr[6]/isdel" value="0" /> <input
									class="nui-hidden" name="criteria/_expr[6]/_op" value="=">
									<input class="nui-hidden" id="con_jdid"
									name="criteria/_expr[7]/jd" value="" /> <input 
									class="nui-hidden" name="criteria/_expr[7]/_op" value="=">
									<input class="nui-hidden" id="con_jzid"
									name="criteria/_expr[8]/jz" value="" /> <input
									class="nui-hidden" name="criteria/_expr[8]/_op" value="=">
									</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="width: 100%; height: 94%; float: left;"
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
			<div id="datagrid1" dataField="equipmentbaseinformations"
				class="nui-datagrid" style="width: 100%; height: 100%;"
				url="com.cgn.itmp.inspectcomponentmanage.equipmentbaseinformationbiz.queryEquipmentbaseinformationsAll.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
				onselectionchanged="selectionChanged" allowSortColumn="false">

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div field="jd" headerAlign="center" allowSort="true"
						visible="false">基地</div>
					<div field="jz" headerAlign="center" allowSort="true"
						visible="false">机组</div>
					<div field="devicename" headerAlign="center" allowSort="true" renderer="setHref">
						设备名称</div>
					<div field="position" headerAlign="center" allowSort="true">
						功能位置</div>
					<div field="devicetype" headerAlign="center" allowSort="true" renderer="sblxRender">
						设备类型</div>
					<div field="rccmlevel" headerAlign="center" allowSort="true" renderer="rccmRender">
						制造级别</div>
					<div field="rccplevel" headerAlign="center" allowSort="true" renderer="rccpRender" visible="false">
						RCCP级别</div>
					<div field="rsemlevel" headerAlign="center" allowSort="true" renderer="rsemRender">
						规范级别</div>
					<div field="designpressure" headerAlign="center" allowSort="true" visible="false">
						设计压力(Mpa)</div>
					<div field="operatingpressure" headerAlign="center"
						allowSort="true" visible="false">运行压力(Mpa)</div>
					<div field="designtemperature" headerAlign="center"
						allowSort="true" visible="false">设计温度(℃)</div>
					<div field="operationtemperature" headerAlign="center"
						allowSort="true" visible="false">运行温度(℃)</div>
					<div field="eommfile" headerAlign="center" allowSort="true"  renderer="setFile1" visible="false">
						EOMM文件</div>
					<div field="sdmfile" headerAlign="center" allowSort="true"  renderer="setFile2" visible="false">
						SDM文件</div>
					<div field="euqipmentgraph" headerAlign="center" allowSort="true"  renderer="setFile3" visible="false">
						设备图</div>
					<div field="equiaxedgraph" headerAlign="center" allowSort="true"  renderer="setFile4" visible="false">
						等轴图</div>
					<div field="eomrfile" headerAlign="center" allowSort="true"  renderer="setFile5" visible="false">
						EOMR文件</div>
					<div field="manufacturer" headerAlign="center" allowSort="true" visible="false">
						生产厂家</div>
					<div field="equipment_manufacturing_number" headerAlign="center" visible="false"
						allowSort="true">设备制造编号</div>
					<div field="materialbrand" headerAlign="center" allowSort="true" visible="false">
						材料牌号</div>
					<div field="deleteperson" headerAlign="center" allowSort="true"
						visible="false">删除人</div>
					<div field="deletetime" headerAlign="center" allowSort="true"
						visible="false">删除时间</div>
					<div field="isdel" headerAlign="center" allowSort="true"
						visible="false">删除标识</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		accessControlButton('<%=userRoleCodeList%>',7);
		 if ('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") < 0) {//PG专项管理员有全部权限
			 $("#output").hide();
			 $("#delebtn").hide();
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
		
			var position = '<%=position %>';
			if(position != 'null' && position != null && position != ''){
			nui.get('position').setValue(position.replace(/(^\s*)|(\s*$)/g, ""));
			searchs();
		}
		
		function setHref(e){
			var xm=e.record.devicename;
			var uid=e.record._uid;
			var html='<a href="javascript:void(0)" onclick="openView('+uid+')" >' +xm+'</a>';
			return html;
		}
		function openView(uid){
			var row=grid.getRowByUID(uid);
			nui.open({
				showMaxButton: true,
					url : "/itmp/inspectcomponentmanage/nuclearislanddatamanagement/equipmentbaseinformation/EquipmentbaseinformationShowForm.jsp",
					title : "数据详情",
					width : 900,
					height : 280,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record : {
								equipmentbaseinformation : row
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
		 //附件初始化 EOMMFILE
            function setFile1(e){
                var fileRealName = e.record.eommfile;
      			var filepath = e.record.eommfilepath;
      			var fileId = e.record.eommfileid;
      			
     			if(fileRealName == null || fileRealName == 'null'){
     				return "";
     			}
                	var html = '<a style="cursor: pointer" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
                	return html;
                }
                function setFile2(e){
                /* console.log(e) */
                var fileRealName = e.record.sdmfile;
      			var filepath = e.record.sdmfilepath;
      			var fileId = e.record.sdmfileid;
      			
     			if(fileRealName == null || fileRealName == 'null'){
     				return "";
     			}
                	var html = '<a style="cursor: pointer" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
                	return html;
                }
                function setFile3(e){
                /* console.log(e) */
                var fileRealName = e.record.euqipmentgraph;
      			var filepath = e.record.equipmentgraphfilepath;
      			var fileId = e.record.equipmentgraphfileid;
      			
     			if(fileRealName == null || fileRealName == 'null'){
     				return "";
     			}
                	var html = '<a style="cursor: pointer" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
                	return html;
                }
                function setFile4(e){
                /* console.log(e) */
                var fileRealName = e.record.equiaxedgraph;
      			var filepath = e.record.equiaxedgraphfilepath;
      			var fileId = e.record.equiaxedgraphfileid;
      			
     			if(fileRealName == null || fileRealName == 'null'){
     				return "";
     			}
                	var html = '<a style="cursor: pointer" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
                	return html;
                }
                function setFile5(e){
                /* console.log(e) */
                var fileRealName = e.record.eomrfile;
      			var filepath = e.record.eomrfilepath;
      			var fileId = e.record.eomrfileid;
      			
     			if(fileRealName == null || fileRealName == 'null'){
     				return "";
     			}
                	var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
                	return html;
                }
                      //点击附件下载
   				 function load(fileId,fileRealName) {
				 var elemIF = document.createElement("iframe");
				 elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
				 document.body.appendChild(elemIF);
				 elemIF.style.display = "none";
				}		
			
		function rccmRender(e){
			return nui.getDictText('RCCM', e.value);
		}
		function rsemRender(e){
		return nui.getDictText('RSEM', e.value);
		}
		function rccpRender(e){
		return nui.getDictText('RCCP', e.value);
		}
		function sblxRender(e){
			return nui.getDictText('SBLX', e.value);
		}
		$(function() {
			/* $('#addbtn').attr('title', "请选择插入位置（之后）"); */
			$('#editbtn').attr('title', "请选择需修改条目");
		});
		
		
		
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
				width : 350,
				height : 300,
				onload : function() {//弹出页面加载完成
					var iframe = this.getIFrameEl();
					var data = {
						entityName : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation",
						queryParam : json, //查询数据
						queryKey : 'criteria', //查询实体名
						query : [ 'devicename','position','rccmlevel','rsemlevel','manufacturer','isdel', 'jd','jz'], //按顺序放置
						filterField : ['fileRelativePath','jd','jz', 'orderindex','uuid', 'isdel', 'fj', 'deletetime',
								'deleteperson', 'yjjsr', 'dxlc', 'fildid', 'fileId','eommfileid','sdmfileid','equipmentgraphfileid','equiaxedgraphfileid','eomrfileid','eommfilepath','sdmfilepath','equipmentgraphfilepath','equiaxedgraphfilepath','eomrfilepath',
								'fileRealName', 'filePath', 'fileSize',
								'fileType', 'fileUploadTime', 'fileUploadUser','createtime','inserttime','orderno',
								'fileNewName','filename','filepath','filename1','filepath1','filename2','filepath2','filename3','filepath3','filename4','filepath4','filename5','filepath5'],
						expTitle : "设备基础技术信息",
						dicFieds : "rccmlevel@RCCM,rsemlevel@RSEM,rccplevel@RCCP,devicetype@SBLX",
						attachFied : "eomrfileid@eomrfile,equiaxedgraphfileid@equiaxedgraph,sdmfileid@sdmfile,eommfileid@eommfile,equipmentgraphfileid@euqipmentgraph",
						mode:"ftp",
						jdFieds : "jd",
						jzFieds : "jz",
						order:"createtime@desc,orderno@asc"
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
					showMaxButton: true,
						url : "/itmp/inspectcomponentmanage/nuclearislanddatamanagement/equipmentbaseinformation/EquipmentbaseinformationForm.jsp",
						title : "新增记录",
						width : 913,
						height : 280,
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
					url : "/itmp/inspectcomponentmanage/nuclearislanddatamanagement/equipmentbaseinformation/EquipmentbaseinformationForm.jsp",
					title : "编辑数据",
					width : 913,
					height : 280,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record : {
								equipmentbaseinformation : row
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
													entity : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
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
					showMaxButton: true,
						url : "/itmp/common/recyclebin/recyclebinattach.jsp",
						title : "回收站",
						width : 1000,
						height : 570,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								pageType : "recyclebin",
								urlName : "com.cgn.itmp.inspectcomponentmanage.equipmentbaseinformationbiz.queryEquipmentbaseinformations.biz.ext",//回收
								entityVal : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation",
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
								}, 
								
								{header:"设备基本信息",headerAlign : "center",columns:[
								{
									field : 'devicename',
									header : '设备名称',
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
									field : 'devicetype',
									header : '设备类型',
									width : 100,
									headerAlign : "center",
									allowSort : true,
									dic:"SBLX",
									renderer:"stateRender"
								}]}, 
								
								{header:"安全级别",headerAlign : "center",columns:[
								{
									field : 'rccmlevel',
									header : '制造级别',
									width : 100,
									headerAlign : "center",
									allowSort : true,
									dic:"RCCM",
									renderer:"stateRender"
								}, {
									field : 'rsemlevel',
									header : '规范级别(RSE-M)',
									width : 130,
									headerAlign : "center",
									allowSort : true,
									dic:"RSEM",
									renderer:"stateRender"
								}]}, 
								{
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

		//导入
		function batchAdd() {
			var data = {};
			data.modelFlag = "4";
			data.jdid = jdid;
			data.jzid = jzid;

			var json = nui.encode(data);
			$
					.ajax({
						url : "com.cgn.itmp.basecommon.Common.queryCountByEntity.biz.ext",
						type : 'POST',
						cache : false,
						data : json,
						contentType : 'text/json',
						success : function(data) {
							var count = data.count;
							if (count > 0) {
								nui.alert("役检部件目录树已存在,不能导入", "提示");
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
													tempFileName : "equipmentbaseinformation.xlsx",
													tempLoadName : "设备基础技术信息导入模板",
													entitfName : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.Equipmentbaseinformation"
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
		
		/* function showquery() {
			var div = $("#form1");
			div.slideToggle(500);
			$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
		}
 */
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
					matchFied : "devicename,position,rccmlevel,rsemlevel,manufacturer,euqipmentgraph,equiaxedgraph",
					dicFied : "rccmlevel@RCCM,rsemlevel@RSEM,rccplevel@RCCP,devicetype@SBLX",
					wordVal : $("#cond").val(),
					entity : $("input[name='criteria/_entity']").val(),
					entityName : 'criteria',
					sfdel : true,
					jdInfo : 'jd@' + getCookie('jdid'),
					jzInfo : 'jz@' + getCookie('jzid')
				};
				var query = nui.decode(getKeyWordQuery(data));
				query["criteria/_expr[6]/isdel"] = "0";
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