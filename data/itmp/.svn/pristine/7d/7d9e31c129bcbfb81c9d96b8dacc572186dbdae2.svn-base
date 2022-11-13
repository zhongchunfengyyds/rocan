<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): littlebear
- Date: 2019-11-02 17:19:08
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
					<div id="form1" class="nui-form displaynone" align="center"
						style="height: 80px">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf">
						<!-- 排序字段 -->
						<table id="table1" class="table" style="height: 100%">
							<tr>
								<td class="form_label">大修轮次:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[1]/overhaulsq" /> <input
									class="nui-hidden" name="criteria/_expr[1]/_op" value="="></td>
								<td class="form_label">功能位置:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[2]/funposition" /> <input
									class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
							</tr>
							<tr>
								<td class="form_label">检查阶段:</td>
								<td colspan="1"><input class="nui-dictcombobox"
									style="width: 100%" dictTypeId="checkstage"
									name="criteria/_expr[3]/checkstage" /> <input
									class="nui-hidden" name="criteria/_expr[3/_op" value="="></td>
								<td class="form_label">是否取出:</td>
								<td colspan="1"><input class="nui-dictcombobox"
									style="width: 100%" dictTypeId="COF_YESORNO"
									name="criteria/_expr[4]/istakeout" /> <input
									class="nui-hidden" name="criteria/_expr[4]/_op" value="="></td>
							</tr>
							<tr>
								<td class="form_label">FO重量（g）:</td>
								<td colspan="1">
								<div style="display: flex">
									<input class="nui-combobox" emptyText="可选择.." style="width: 30%" data="[{id:'>=','name':'>='},{id:'<','name':'<'}]" onvaluechanged="onvalueChangedfo" valueField="id" textField="name"/>
		                            <input class="nui-textbox" vtype="int;range:0,999999" emptyText="请输入重量(只可输入数字)" rangeErrorText="请输入正整数" intErrorText="请输入正整数" emptyText="" name="criteria/_expr[5]/fokg"/>
		                            <input class="nui-hidden" id="fokg" name="criteria/_expr[5]/_op">
								</div>
								</td>
								<td class="form_label">FO属性:</td>
								<td colspan="1"><input class="nui-textbox"
									style="width: 100%"
									name="criteria/_expr[6]/foattribute"  /> <input
									class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[6]/_likeRule"
									value="all"></td>
							</tr>
							<tr
								style="visibility: hidden; height: 1px; overflow: hidden; display: table-caption;">
								<td style="visibility: hidden; height: 1px; overflow: hidden;"
									colspan="1"><input class="nui-textbox"
									name="criteria/_expr[7]/isdel" value="3" /> <input
									class="nui-hidden" name="criteria/_expr[7]/_op" value="=">
								</td>
								<td style="visibility: hidden; height: 1px; overflow: hidden;"
									colspan="1"><input class="nui-textbox" id="jd"
									name="criteria/_expr[8]/jd" value="" /> <input
									class="nui-hidden" name="criteria/_expr[8]/_op" value="=">
								</td>
								<td style="visibility: hidden; height: 1px; overflow: hidden;"
									colspan="1"><input class="nui-textbox" id="jz"
									name="criteria/_expr[9]/jz" value="" /> <input
									class="nui-hidden" name="criteria/_expr[9]/_op" value="=">
								</td>
							</tr>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
	
	<div style="width: 100%; height: 94%;" showToolbar="false"
		showFooter="false">
	<div class="nui-toolbar" style="border-bottom: 0; padding: 5px 0px;">
		<table style="width: 100%;">
			<tr>
				<td style="width: 100%;">
					<button class="btn btn-default" onclick="remove()"
						disabled="disabled" id="delebtn">
						<b:message key="btn-delete" />
					</button>
					<button class="btn btn-default" type="button" id="output" onclick="output()">
						<b:message key="btn-export" />
					</button>
				</td>
			</tr>
		</table>
	</div>
	
	<div class="nui-fit">
		<div id="datagrid1" dataField="foreignmattermg_mfs"
			class="nui-datagrid" style="width: 100%; height: 100%;"
			url="com.cgn.itmp.inspectcomponentmanage.foreignmattermg.foreignmattermg_mfbiz.queryForeignmattermg_mfs.biz.ext"
			pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"
			onselectionchanged="selectionChanged" allowSortColumn="false">

			<div property="columns">
				<div type="indexcolumn"></div>
				<div type="checkcolumn"></div>
				<div field="uuid" headerAlign="center" allowSort="true"
					visible="false">uuid</div>
<!-- 				<div field="jd" headerAlign="center" allowSort="true">基地</div> -->
<!-- 				<div field="jz" headerAlign="center" allowSort="true">机组</div> -->
				<div field="overhaulsq" headerAlign="center" allowSort="true">
					大修轮次</div>
				<div field="funposition" headerAlign="center" allowSort="true">
					功能位置</div>
				<div field="focde" headerAlign="center" allowSort="true">FO编号</div>
				<div field="checkstage" headerAlign="center" allowSort="true">
					检查阶段</div>
				<div field="istakeout" headerAlign="center" allowSort="true">
					是否取出</div>
				<div field="foposition" headerAlign="center" allowSort="true">
					FO位置</div>
				<div field="fosize" headerAlign="center" allowSort="true">
					FO尺寸</div>
				<div field="fokg" headerAlign="center" allowSort="true">
					FO重量（g）</div>
				<div field="foattribute" headerAlign="center" allowSort="true">
					FO属性</div>
				<div field="fodisimgfj" headerAlign="center" allowSort="true" renderer="setFile1">
					FO分布图</div>
				<div field="fj" headerAlign="center" allowSort="true" renderer="setFile2">相关图片</div>
				<div field="remake" headerAlign="center" allowSort="true">备注</div>
				<div field="changeReason" headerAlign="center" allowSort="true">
					修改原因</div>
				<div field="changeInfo" headerAlign="center" allowSort="true">
					修改内容</div>
				<div field="changeUser" headerAlign="center" allowSort="true">
					修改人</div>
				<div field="changeDate" headerAlign="center" allowSort="true">
					修改时间</div>
			</div>
		</div>
	</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var grid = nui.get("datagrid1");

		var formData = new nui.Form("#form1").getData(false, false);
		formData["criteria/_expr[10]/isdel"] = "3";
		formData["criteria/_orderby[1]/_property"] = "changeDate";
		formData["criteria/_orderby[1]/_sort"] = "desc";
		formData["criteria/_expr[11]/jz"] = getCookie('jzid');
		formData["criteria/_expr[12]/jd"] = getCookie('jdid');
		grid.load(formData);
		var str = '<%=userRoleCodeList%>';
		if (str.indexOf(",ITMP_JDGLY") < 0) {//普通人员
			 	 $("#delebtn").hide();
			 	 $("#output").hide();
		 }else if(str.indexOf(",ITMP_JDGLY") > 0){
		 	$("#delebtn").hide();
		 	$("#recycle").hide();
		 }
		 if(str.indexOf(",ITMP_CJGLY") > 0){
		 	 $("#delebtn").show();
		 	 $("#output").show();
		 }
		//附件初始化
		function setFile1(e) {
			var fileRealName = e.record.fodisimgfj;
			var filepath = e.record.fodisimgfilepath;
			var fileId = e.record.fodisimgfileid;

			if (fileRealName == null || fileRealName == 'null') {
				return "";
			}
			var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
			return html;
		}
		function setFile2(e) {
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
				//删除
		function remove() {
			var rows = grid.getSelecteds();
			if (rows.length > 0) {
			//判断是否为流程中数据
				if(fordata()){
						return;
				}
				nui.confirm(
								"确定删除选中记录？",
								"系统提示",
								function(action) {
									if (action == "ok") {
										var json = nui
												.encode({
													data : rows,
													entity : "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
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
		//重新刷新页面
		function refresh() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			json["criteria/_expr[11]/isdel"] = "3";
			json["criteria/_expr[12]/jz"] = getCookie('jzid');
			json["criteria/_expr[13]/jd"] = getCookie('jdid');
			json["criteria/_orderby[1]/_property"] = "changeDate";
			json["criteria/_orderby[1]/_sort"] = "desc";
			grid.load(json);//grid查询
		}
		//查询
		function searchs() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			json["criteria/_expr[11]/isdel"] = "3";
			json["criteria/_expr[12]/jz"] = getCookie('jzid');
			json["criteria/_expr[13]/jd"] = getCookie('jdid');
			
			json["criteria/_orderby[1]/_property"] = "changeDate";
			json["criteria/_orderby[1]/_sort"] = "desc";
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
				// 				nui.get("update").disable();
			} else {
				var data = {
					matchFied : "overhaulsq,funposition,focde,checkstage,istakeout,foposition,fosize,fokg,foattribute",
					wordVal : $("#cond").val(),
					entity : $("input[name='criteria/_entity']").val(),
					entityName : 'criteria',
					sfdel : true,
					jdInfo : 'jd@' + getCookie('jdid'),
					jzInfo : 'jz@' + getCookie('jzid')
				};
				var query = nui.decode(getKeyWordQuery(data));
				query["criteria/_expr[10]/isdel"] = "3";
				query["criteria/_expr[12]/jz"] = getCookie('jzid');
				query["criteria/_expr[13]/jd"] = getCookie('jdid');
				query["criteria/_orderby[1]/_property"] = "changeDate";
				query["criteria/_orderby[1]/_sort"] = "desc";
				grid.load(query);
				// 				nui.get("update").disable();
			}
		}
				//导出
		function output() {
			var form = new nui.Form("#form1");
			nui.get("jd").value=getCookie('jdid');
			nui.get("jz").value=getCookie('jzid');
			var json = form.getData(false, false);
			nui.open({
						showMaxButton : true,
						url : "/itmp/basecommon/importExcelComm/expSelectFiledAndAttachMultiple.jsp",
						title : "导出数据",
						width : 450,
						height : 230,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								entityName : "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf",
								queryParam : json, //查询数据
								queryKey : 'criteria', //查询实体名
								query : [ 'overhaulsq', 'funposition',
										'checkstage', 'istakeout', 'fokg',
										'foattribute', 'isdel', 'jd', 'jz' ], //按顺序放置
								filterField : [ 'processInstId','uuid', 'isdel', 'jd', 'jz', 'fileid','filepath','fodisimgfileid','fodisimgfilepath','createtime','processInstId','processStatus','deletetime','deleteperson','orderno','serialnum' ],
								expTitle : "异物管理",
								dicFieds : "jzstatu@NBJY_JZSTATU,statu@QXSTATUS",
								jdFieds : "jd",
								jzFieds : "jz",
								order : "changeDate@desc",
								attachFied : "fileid@fj,fodisimgfileid@fodisimgfj",
								mode:"ftp",
								defaultCheck : [ 'overhaulsq', 'funposition',
										'focde', 'checkstage', 'istakeout',
										'foposition', 'fosize', 'fokg',
										'foattribute',
										'remake' ]
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
						}
					});

		}
	</script>
</body>
</html>
