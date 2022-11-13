<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<html>
<%--
- Author(s): littlebear
- Date: 2019-12-06 11:37:42
- Description:
    --%>
<head>
<title>监管要求管理查询</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript">
	
</script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<style>
	.search-container table input {
	    height: 100% !important;
	}
</style>
<body style="background-color: #f1f1f1; width: 98%; height: 97%;">

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
					<div id="form1" class="nui-form displaynone" align="center"
						style="height: 80px">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW">
						<!-- 排序字段 -->
						<table id="table1" class="table" style="height: 100%">
							<tr>
								<td class="form_label">监督检查窗口:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[1]/inswindow" /> <input
									class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[1]/_likeRule"
									value="all"></td>
								<td class="form_label">适用机组:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[2]/applyjz" /> <input class="nui-hidden"
									name="criteria/_expr[2]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
							</tr>
							<tr>
								<td class="form_label">文件编码:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[3]/filecode" /> <input class="nui-hidden"
									name="criteria/_expr[3]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[3]/_likeRule"
									value="all"></td>
								<td class="form_label">问题描述:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[4]/probleminfo" /> <input
									class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[4]/_likeRule"
									value="all"></td>
							</tr>
							<tr
								style="visibility: hidden; height: 1px; overflow: hidden; display: table-caption;">
								<td style="visibility: hidden; height: 1px; overflow: hidden;"
									colspan="1"><input class="nui-textbox"
									name="criteria/_expr[5]/isdel" value="0" /> <input
									class="nui-hidden" name="criteria/_expr[5]/_op" value="=">
								</td>
								<td style="visibility: hidden; height: 1px; overflow: hidden;"
									colspan="1"><input class="nui-textbox" id="jd"
									name="criteria/_expr[6]/jd" value="" /> <input
									class="nui-hidden" name="criteria/_expr[6]/_op" value="=">
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
						<button id="addallbut" style="position: relative;"
							class="btn btn-default" onclick="openAllAdd()">
							<b:message key="btn-add" />
						</button>
						<ul class="add_adds nui-menu">
							<li onclick="add()">单条新增</li>
							<li onclick="batchAdd()">批量新增</li>
						</ul>
						<button class="nui-button btn btn-default btn-xs" onclick="edit()"
							disabled="disabled" id="editbtn" name="ITMP_btnEdit">
							<b:message key="btn-edit" />
						</button>
						<button class="nui-button btn btn-default btn-xs" onclick="remove()"
							disabled="disabled" id="delebtn"  name="ITMP_btnDel">
							<b:message key="btn-delete" />
						</button>
						<button class="nui-button btn btn-default btn-xs" type="button" id="output" onclick="output()"  name="ITMP_btnExp">
							<b:message key="btn-export" />
						</button>
						<button class="nui-button btn btn-default btn-xs" type="button" onclick="recycle()"  name="ITMP_btnRec">
							<b:message key="btn-recycle" />
						</button>
						<button class="nui-button btn btn-default btn-xs" disabled="disabled" type="button" id="task" onclick="task()"  name="ITMP_btnTask">
							任务督办</button>
					</td>
				</tr>
			</table>
		</div>
		<div class="nui-fit">
			<div id="datagrid1" dataField="regulationrequirementsmgtnews"
				class="nui-datagrid" style="width: 100%; height: 100%;"
				url="com.cgn.itmp.dailyandoverhaul.overhaul.regulationrequirementsmgtnewbiz.queryRegulationRequirementsMgtNEWs.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
				onselectionchanged="selectionChanged" allowSortColumn="false">

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
	
					<div field="inswindow" headerAlign="center" allowSort="true">
						监督检查窗口</div>
					<div field="applyjz" headerAlign="center" allowSort="true">
						适用机组</div>
					<div field="filecode" headerAlign="center" allowSort="true">
						文件编码</div>
					<div field="problempage" headerAlign="center" allowSort="true">
						问题所在页码</div>
					<div field="probleminfo" headerAlign="center" allowSort="true" renderer="setConnect">
						问题描述</div>
					<div field="reply" headerAlign="center" allowSort="true">答复</div>
					<div field="isafteraction" headerAlign="center" allowSort="true" dictTypeId="SF" renderer="dicSF">
						是否有后续行动</div>
					<div field="afteractionperson" headerAlign="center"
						allowSort="true">后续行动负责人</div>
					<div field="checktime" headerAlign="center" allowSort="true">
						检查/发文时间</div>
					<div field="singtime" headerAlign="center" allowSort="true">
						签发时间</div>
					<div field="fj" headerAlign="center" renderer="setFile" allowSort="true">附件</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var grid = nui.get("datagrid1");
		accessControlButton('<%=userRoleCodeList%>',3);
		var str = '<%=userRoleCodeList%>';
		 if (str.indexOf(",ITMP_JDGLY") < 0) {//普通人员
		 	 $("#addallbut").hide();
			 if (nui.getbyName("ITMP_btnTask") != undefined) {
				 nui.getbyName("ITMP_btnTask").hide();
			 }
		 }
		 if(str.indexOf(",ITMP_CJGLY") > 0){
		 	$("#addallbut").show();
			 if (nui.getbyName("ITMP_btnTask") != undefined) {
				 nui.getbyName("ITMP_btnTask").show();
			 }
		  }

		var formData = new nui.Form("#form1").getData(false, false);
		formData["criteria/_expr[10]/isdel"] = "0";
		formData["criteria/_expr[12]/jd"] = getCookie('jdid');
		formData["criteria/_orderby[1]/_property"] = "createtime";
		formData["criteria/_orderby[1]/_sort"] = "desc";
		formData["criteria/_orderby[2]/_property"] = "orderno";
		formData["criteria/_orderby[2]/_sort"] = "asc";
		nui.get('jd').setValue(getCookie('jdid'));
		grid.load(formData);

		//新增
		function add() {
			nui
					.open({
					showMaxButton : true,
						url : "/itmp/overhaul/RegulationRequirementsMgt/RegulationRequirementsMgtNEWForm.jsp",
						title : "新增记录",
						width : 750,
						height : 400,
						onload : function() {//弹出页面加载完成
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
				nui
						.open({
						showMaxButton : true,
							url : "/itmp/overhaul/RegulationRequirementsMgt/RegulationRequirementsMgtNEWForm.jsp",
							title : "编辑数据",
							width : 840,
							height : 400,
							onload : function() {
								var iframe = this.getIFrameEl();
								var data = {
									pageType : "edit",
									record : {
										regulationrequirementsmgtnew : row
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
													entity : "com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW"
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
			$("#cond").val("");
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			json["criteria/_expr[10]/isdel"] = "0";
			json["criteria/_expr[11]/jz"] = getCookie('jzid');
			json["criteria/_expr[12]/jd"] = getCookie('jdid');
			json["criteria/_orderby[1]/_property"] = "createtime";
			json["criteria/_orderby[1]/_sort"] = "desc";
			json["criteria/_orderby[2]/_property"] = "orderno";
			json["criteria/_orderby[2]/_sort"] = "asc";
			grid.load(json);//grid查询
		}

		//查询
		function searchs() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			json["criteria/_expr[10]/isdel"] = "0";
			json["criteria/_expr[11]/jz"] = getCookie('jzid');
			json["criteria/_expr[12]/jd"] = getCookie('jdid');
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

		//控制修改和删除按钮
		function selectionChanged() {
			var rows = grid.getSelecteds();
			if (rows) {
				if (rows.length == 1) {
					//两个都恢复
					$("#editbtn").prop("disabled", "");
					$("#delebtn").prop("disabled", "");
					$("#task").prop("disabled", "");
				} else if (rows.length > 1) {
					//修改禁止
					$("#editbtn").prop("disabled", "disabled");
					//删除恢复
					$("#delebtn").prop("disabled", "");
					$("#task").prop("disabled", "");
				} else {
					//两个都禁止
					$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
					$("#task").prop("disabled", "disabled");
				}
			} else {
				//两个都禁止
				$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
				$("#task").prop("disabled", "disabled");
			}
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
								entityName : "com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW",
								queryParam : json, //查询数据
								queryKey : 'criteria', //查询实体名
								query : [
										'inswindow', 'applyjz', 'filecode', 'probleminfo', 'isdel','jd' ], //按顺序放置
								filterField : [ 'uuid', 'isdel', 'jd', 'jz','filepath','fileid','changeReasons','processInstId','createtime','deleteperson','deletetime','processStatus' ],
								expTitle : "监管要求管理",
								jdFieds : "jd",
								jzFieds : "jz",
								dicFieds : "isafteraction@SF",
								order : "createtime@desc",
								attachFied : "fileid",
								defaultCheck : [ 'inswindow', 'applyjz',
										'filecode', 'problempage','probleminfo','reply','isafteraction','afteractionperson','checktime','singtime' ]
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
						}
					});

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
								isJdgly : true,
								urlName : "com.cgn.itmp.dailyandoverhaul.overhaul.regulationrequirementsmgtnewbiz.queryRegulationRequirementsMgtNEWs.biz.ext",//回收
								entityVal : "com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW",
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
									field : 'inswindow',
									header : '监督检查窗口',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'applyjz',
									header : '适用机组',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'filecode',
									header : '文件编码',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'problempage',
									header : '问题所在页码',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'probleminfo',
									header : '问题描述',
									width : 100,
									headerAlign : "center",
									allowSort : true
								} ,{
									field : 'reply',
									header : '答复',
									width : 100,
									headerAlign : "center",
									allowSort : true
								},{
									field : 'isafteraction',
									header : '是否有后续行动',
									width : 100,
									headerAlign : "center",
									allowSort : true
								},{
									field : 'afteractionperson',
									header : '后续行动负责人',
									width : 100,
									headerAlign : "center",
									allowSort : true
								},{
									field : 'checktime',
									header : '检查/发文时间',
									width : 100,
									headerAlign : "center",
									allowSort : true
								},{
									field : '签发时间',
									header : '删除人',
									width : 100,
									headerAlign : "center",
									allowSort : true
								},{
									field : 'fj',
									header : '附件',
									width : 100,
									headerAlign : "center",
									allowSort : true,
									renderer:"setFile"
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
							$("#task").prop("disabled", "disabled");
							grid.reload();
						}
					});
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
								tempFileName : "RegulationRequirementsMgt.xlsx",
								tempLoadName : "监管要求管理",
								entitfName : "com.cgn.itmp.dailyandoverhaul.overhaul.RegulationRequirementsMgtNew.RegulationRequirementsMgtNEW"
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
		function btnQuery() {
			var gjz = $("#cond").val();
			if (gjz == "") {
				refresh();
			} else {
				var data = {
					matchFied : "inswindow,applyjz,filecode,problempage,probleminfo,reply,isafteraction,afteractionperson",
					dicFied : "isafteraction@SF",
					wordVal : $("#cond").val(),
					entity : $("input[name='criteria/_entity']").val(),
					entityName : 'criteria',
					sfdel : true,
					jdInfo : 'jd@' + getCookie('jdid')
				};
				var query = nui.decode(getKeyWordQuery(data));
				query["criteria/_expr[10]/isdel"] = "0";
				query["criteria/_expr[11]/jz"] = getCookie('jzid');
				query["criteria/_expr[12]/jd"] = getCookie('jdid');
				query["criteria/_orderby[1]/_property"] = "createtime";
				query["criteria/_orderby[1]/_sort"] = "desc";
				query["criteria/_orderby[2]/_property"] = "orderno";
				query["criteria/_orderby[2]/_sort"] = "asc";
				grid.load(query);
			}
		}
		function dicSF(e) {
               return nui.getDictText("SF", e.value);
           }
		
		
		//任务督办
		 function  task(){
			 var row = grid.getSelecteds();
			 	nui.open({
	                    url: "/itmp/groupplant/ConferenceActionMgt/CommonEmaildb.jsp?type=reg",
	                    title: "任务督办", width:500, height: 200,
	                    onload: function () {//弹出页面加载完成
	                    	var iframe = this.getIFrameEl();
							iframe.contentWindow.setData(row);
	                    },
	                    ondestroy: function (action) {//弹出页面关闭前
	                    
	                    grid.reload();
	                }
	               });
			}
			
	//预览页面附件显示
     function setConnect(e) {
    	 var uid = e.record._uid;
     	return '<a href = "#" onclick ="Problem('+uid+')">'+e.record.probleminfo+'</a>'; 
     }
     			//超链接页面  
				function Problem(uid) {
						var row = grid.getRowByUID(uid);
					      if (row) {
					                    nui.open({
						showMaxButton : true,
							url : "/itmp/overhaul/RegulationRequirementsMgt/RegulationRequirementsMgtShowForm.jsp",
							title : "监管要求管理数据详情",
							width : 840,
							height : 400,
							onload : function() {
								var iframe = this.getIFrameEl();
								var data = {
									pageType : "edit",
									record : {
										regulationrequirementsmgtnew : row
									}
								}
								iframe.contentWindow.setFormData(data);
			                   }
			                 });
			               }
			           }
	</script>
</body>
</html>
