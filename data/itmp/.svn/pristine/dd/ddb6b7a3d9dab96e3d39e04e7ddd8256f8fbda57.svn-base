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
<title>焊接工艺卡管理</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<body style="background-color: #f1f1f1;width: 98%; height: 97%;">
	<div class="bs-docs-section" style="height: 100%">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;">
					<tr class="">
						<td class="form_label">关键字查询:</td>
						<td class="form_label"><input type="text" id="cond" name="processInstDesc:%" class="form-control Keywordsearch" placeholder="关键字查询" tmplId="todolist" url=" "></td>
						<td colspan="2"
								style="width: 50%; border-right: 1px solid #f7f7f9 !important"
								class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()">
										模糊查询 </a> <a id="allQuery" style="display: none"
										class="btn btn-default" onclick="searchs()"> 查询 </a> <a
										class="btn btn-default" id="reset" onclick="reset()"> 重置 </a>
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
					<div id="form1" class="nui-form display" align="center" style="height:125px">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard">
						<!-- 排序字段 -->
						<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="createtime">
				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						<input class="nui-hidden" name="criteria/_orderby[2]/_property" value="orderno">
				<input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc">
						<table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%">
							<tr class="query_two">
								<td class="form_label">评定单位:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[1]/ratingunit" /> 
								<input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
								</td>
								<td class="form_label">WPS编号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[2]/card_number" /> 
						<input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
									
								</td>
							</tr>
							<tr class="query_two">
								<td class="form_label">接头形式:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[3]/joint_form" /> 
									<input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
									</td>
								<td class="form_label">焊接方法:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[4]/welding_method" />
								<input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
								</td>
							</tr>
							<tr class="query_two">
								<td class="form_label">覆盖的母材范围:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[5]/covermaterial" />
									<input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[5]/_likeRule" value="all">
								</td>
								<td class="form_label">覆盖规格:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[6]/coverspecifications" /> 
								<input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[6]/_likeRule" value="all">
							</tr>
							<tr class="query_two">
								<td class="form_label">覆盖厚度:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[7]/coverthickness" /> 
									<input class="nui-hidden" name="criteria/_expr[7]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[7]/_likeRule" value="all">
								</td>
								<td class="form_label">覆盖位置:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[8]/coverlocation" /> 
									<input class="nui-hidden" name="criteria/_expr[8]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[8]/_likeRule" value="all">
									</td>
								<tr>
								<td class="form_label">覆盖电流范围:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[9]/covercurrentrange" /> 
									<input class="nui-hidden" name="criteria/_expr[9]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[9]/_likeRule" value="all">
								<td class="form_label">保护气体成分:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[10]/gascomposition" /> 
									<input class="nui-hidden" name="criteria/_expr[10]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[10]/_likeRule" value="all">
								</td>
								</tr>
								<tr>
								<td class="form_label">正面流量:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[11]/positivetraffic" /> 
									<input class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[11]/_likeRule" value="all">
								<td class="form_label">背面流量:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[12]/backflow" /> 
									<input class="nui-hidden" name="criteria/_expr[12]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[12]/_likeRule" value="all">
								</td>
								</tr>
							<tr>
								<td style="display:none;" colspan="0">
                       			<input class="nui-hidden"name="criteria/_expr[13]/isdel" value="0" /> 
								<input class="nui-hidden" name="criteria/_expr[13]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[13]/_likeRule" value="all">
								
								<input class="nui-hidden" id="con_jdid" name="criteria/_expr[14]/jd" /> 
					            <input class="nui-hidden" name="criteria/_expr[14]/_op" value="="> 
					            <input class="nui-hidden" name="criteria/_expr[14]/_likeRule" value="aLL">
					            </td>
							</tr>
						</table>
					</div>
				</div>

			</div>
		</div>
	<!--footer-->
<div class="" 
		 showToolbar="false"
		showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0;  padding: 5px 0px;">
			<table style="width: 100%;">
		<div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
			<table style="width: 100%;">
				<tr>
					<td style="width: 100%;">
						<button id="addallbut" style="position: relative;" class="btn btn-default"
							onclick="openAllAdd()">
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
						<button class="btn btn-default"
									type="button" id="batchAddAttach" onclick="batchAddAttach()">
									<b:message key="btn-upload" />
								</button>
						<button class="btn btn-default"
							type="button" id="output" onclick="doSave()">
							<b:message key="btn-export" />
						</button>
						<button class="btn btn-default"
							type="button" id="recycle" onclick="recycle()">
							<b:message key="btn-recycle" />
						</button>
					</td>
				</tr>
			</table>
		</div>
		
		</table>
		</div>
		<div class="nui-fit" style="height: 100%;">
			<div id="datagrid1" dataField="weldingprocesscards"
				class="nui-datagrid" style="width: 100%; height: 100%;"
				url="com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.queryWeldingprocesscardall.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true" 
				onselectionchanged="selectionChanged" allowSortColumn="false" allowCellWrap="true">
<!-- oncellbeginedit="onCellBeginEdit" -->
				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">UUID</div>
					<div field="card_number" width="170"  headerAlign="center" allowSort="true" renderer="setHref">
						WPS编号</div>
					<div field="edition" width="50" headerAlign="center" allowSort="true">
						版本</div>
					<div field="ratingunit" headerAlign="center" allowSort="true">
						评定单位</div>
					<div field="process_assessment_report"   width="240" headerAlign="center" allowSort="true" renderer="setcode">
						工艺卡评定报告号</div>
						
					<div field="welding_method"  headerAlign="center" allowSort="true">
						焊接方法</div>
					<div field="covermaterial" headerAlign="center" width="80"  allowSort="true">
						覆盖的母材范围</div>
					<div field="coverspecifications" headerAlign="center" width="70" allowSort="true">
						覆盖规格</div>
					<div field="coverthickness" headerAlign="center"  width="70"  allowSort="true">
						覆盖厚度</div>
					<div field="coverlocation" headerAlign="center" allowSort="true">
						覆盖位置</div>
					<div field="covercurrentrange" headerAlign="center" allowSort="true">
						覆盖电流范围</div>
					 <div header="保护气体" allowSort="true">
                     	<div property="columns">
							<div field="gascomposition" headerAlign="center"  width="70"  allowSort="true">
								气体成分</div>
							<div field="positivetraffic" headerAlign="center"  width="70"  allowSort="true">
								正面流量</div>
							<div field="backflow" headerAlign="center"  width="70"  allowSort="true">
								背面流量</div>
						</div>
					</div>
					<div field="enclosure" headerAlign="center" width="150"  allowSort="true" renderer="setFile">
						附件</div>
					<div field="remarks" headerAlign="center" allowSort="true" width="200">
						备注</div>
				</div>
			</div>
	</div>
	</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		accessControlButton('<%=userRoleCodeList%>',13);
		var grid = nui.get("datagrid1");
		var jdid = getCookie('jdid');
		nui.get('con_jdid').setValue(jdid);
		var formData = new nui.Form("#form1").getData(false, false);
		grid.load(formData);

		/* function onCellBeginEdit(e){
		var field = e.field;
        if (field == "process_assessment_report") {
        	var editor = e.editor;
        	editor.load("com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.getProcessAssessRep.biz.ext?base="+jdid);
        }
	} */
	
/* 	function setFile(e) {
			 var fileRealName = e.record.enclosure;
      			var filepath = e.record.filepath;
      			var fileId = e.record.fildid;

			if (fileRealName == null || fileRealName == 'null') {
				return "";
			}
			var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
			return html;
		} */
		//给评定报告赋a连接
		function setcode(e){
		
		var value=e.value;
		if(value!=null){
        if(value.indexOf(",")!=-1){
		 var strs=e.value.split(",");
            var str="";
            for(var i=0;i<strs.length;i++){
            	if(str.length==1){
            	
            	str += '<a onclick="showAssess(\''+strs[i]+'\')">'+strs[i]+'</a>';
            	}else if(strs.length>1){
            	
	            	if(i!=strs.length-1){
	            	str += '<a onclick="showAssess(\''+strs[i]+'\')">'+strs[i]+'</a> , ';
	            	}else{
	            		str += '<a onclick="showAssess(\''+strs[i]+'\')">'+strs[i]+'</a>';
	            	}
            	   }
            	}
		}else{
			var str=value;
            	str = '<a onclick="showAssess(\''+str+'\')">'+str+'</a>';
		}
		e.cellStyle ="cursor: pointer"; 
          e.cellHtml = str;
		
		}
		return str;
		}
		

// function load(fileId,fileRealName) {
// 			 var elemIF = document.createElement("iframe");
// 			 if(fileRealName == "nohup.txt"){
// 			 	elemIF.src = "/data/ITMP/zyjcpt/project/nohup.out";
// 			 }else{
<%-- 		         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName);  --%>
// 			 }
// 	         document.body.appendChild(elemIF);
// 	         elemIF.style.display = "none";
// 		}
	
	function setHref(e){
			var xm=e.record.card_number;
			var uid=e.record._uid;
			var html='<a href="javascript:void(0)" onclick="openView('+uid+')" >' +xm+'</a>';
			return html;
		}
		function openView(uid){
			var row=grid.getRowByUID(uid);
			nui.open({
				showMaxButton: true,
					url : "/itmp/weldingmanagement/Weldingprocesscard/weldingprocesscardFormShow.jsp",
					title : "数据详情",
					width : 900,
					height : 450,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record : {
								weldingprocesscard : row
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
		
	

		
    	$("#editbtn").attr("title","请选择需修改条目");
	
		      //附件初始化
            function setFile(e) {
				var fileRealName = e.record.enclosure;
				var filepath = e.record.filepath;
				var fileId = e.record.fildid;
			
				if (fileRealName == null || fileRealName == 'null') {
					return "";
				}
				var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
				return html;
			}
			function load(fileId,fileRealName) {
				 var elemIF = document.createElement("iframe");
			         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
<%-- 				 elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName);  --%>
				 document.body.appendChild(elemIF);
				 elemIF.style.display = "none";
			}	
		//新增
		function add() {
			nui.open({
			showMaxButton : true,
				url : "/itmp/weldingmanagement/Weldingprocesscard/weldingprocesscardForm.jsp",
				title : "新增记录",
				width : 800,
				height : 410,
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
									if(action=="addSuccess"){
						nui.showTips({content: '新增成功!',state: 'success'});
					} 
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
							url : "/itmp/weldingmanagement/Weldingprocesscard/weldingprocesscardForm.jsp",
							title : "编辑数据",
							width : 800,
							height : 410,
							onload : function() {
								var iframe = this.getIFrameEl();
								var data = {
									pageType : "edit",
									record : {
										weldingprocesscard : row
									}
								};
								//直接从页面获取，不用去后台获取
								iframe.contentWindow.setFormData(data);
							},
							ondestroy : function(action) {
							 $("#editbtn").prop("disabled", "disabled");
									$("#delebtn").prop("disabled", "disabled");
									if(action=="updateSuccess"){
						nui.showTips({content: '修改成功!',state: 'success'});
					}
								grid.reload();
							}
						});
			} else {
				nui.alert("请选中一条记录", "提示");
			}
		}
		
								//导入
function batchAdd(){
	 var data = {};
	 data.modelFlag = "4";
	 data.jdid = jdid;
	
	 var json = nui.encode(data);
	 // 
	$.ajax({
	    url:"com.cgn.itmp.basecommon.Common.queryCountByEntity.biz.ext",
	    type:'POST',
	    cache:false,
	    data:json,
	    contentType:'text/json',
	    success:function(data){
	   		 var count = data.count;
	   			if(count > 0){
	   				nui.alert("该焊接工艺卡管理已存在,不能导入","提示");
	   			}else{
	   				nui.open({showMaxButton : true,
			        url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
			        title: "新增记录", width: 600, height: 300,
			        onload: function () {//弹出页面加载完成
			        	var iframe = this.getIFrameEl();
			            var data = {
			            	pageType:"batchAdd",
			            	tempFileName:"hjgykgl.xlsx",
			            	tempLoadName:"焊接工艺卡管理导入模板",
			            	entitfName:"com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard"
			            };//传入页面的json数据
			             iframe.contentWindow.SetData(data);
			        },
			        ondestroy: function (action) {//弹出页面关闭前
			         $("#editbtn").prop("disabled", "disabled");
									$("#delebtn").prop("disabled", "disabled");
			        grid.reload();
			    	}
				});
	   		}
	   		}
	});
	

}
		
		//批量上传数据
		function batchAddAttach(){
							nui.open({
								   showMaxButton : true,
				                    url: "/itmp/basecommon/batchAddAttach.jsp",
				                    title: "导入附件", width: 600, height: 300,
				                    onload: function () {//弹出页面加载完成
				                    	var iframe = this.getIFrameEl();
					                    var data = {
					                    	page:"GYKBH",
					                    
					                    };//传入页面的json数据
					                     iframe.contentWindow.SetData(data);
				                    },
				                    ondestroy: function (action) {//弹出页面关闭前
				                    $("#editbtn").prop("disabled", "disabled");
									$("#delebtn").prop("disabled", "disabled");
				                    grid.reload();
				                }
				            });
						}
		
		//导出
		function doSave(){
			 if(grid.data.length==0){
			 	nui.alert("没有数据可以导出!");
			 	return;
			 }
			var form = new nui.Form("#form1");
                var json = form.getData(false,false);
                nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiledAndAttach.jsp",
                    title: "导出数据", width: 582, height: 283,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                            entityName:"com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard",
                            queryParam:json,								    //查询数据
                            queryKey:'criteria',                              //查询实体名
                            query:['ratingunit','card_number','joint_form','welding_method','covermaterial','coverspecifications','coverthickness','coverlocation','covercurrentrange','gascomposition','positivetraffic','backflow','isdel','jd'],  //按顺序放置
                            filterField:['uuid','isdel','fildid','orderno','createtime','filepath','filename','jd','inserttime','deletetime','deleteperson'],
                            expTitle:"焊接工艺卡管理",
                            dicFieds : "",
                            jdFieds:"jdid",
                        	order:"createtime@desc,orderno@asc",
                        	attachFied:"fildid@enclosure",
                        	mode:"ftp"
                    };//传入页面的json数据
                        iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    	$("#editbtn").prop("disabled", "disabled");
						$("#delebtn").prop("disabled", "disabled");
                    	grid.reload();
                    }
                });
		}

		//删除
		function remove() {
			var rows = grid.getSelecteds();
			if (rows.length > 0) {
				nui.confirm(
					"确定删除选中记录？",
					"系统提示",
				function(action) {
						if (action == "ok") {
							rows[0].isdelete="1";
//							var json = nui.encode({weldingprocesscards:rows});
							var json = nui.encode({data:rows,entity:"com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard",token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
							grid.loading("正在删除中,请稍等...");
							$.ajax({
								url : "com.cgn.itmp.weldingmanagement.common.updatedel.biz.ext",
								type : 'POST',
								data : json,
								cache : false,
								contentType : 'text/json',
								success : function(text) {
								$("#editbtn").prop("disabled", "disabled");
								$("#delebtn").prop("disabled", "disabled");
									var returnJson = nui.decode(text);
			                        if(returnJson.exception == null){
			                            grid.reload();
			                            nui.alert("删除成功", "系统提示", function(action){
			                                });
			                            }else{
			                                grid.unmask();
			                                nui.alert("删除失败", "系统提示");
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


		//重置查询条件
		function reset() {
			$("#cond").val('');
			var form = new nui.Form("#form1");//将普通form转为nui的form
			form.reset();
			nui.get('con_jdid').setValue(jdid);
		}

		//enter键触发查询
		function onKeyEnter(e) {
			searchs();
		}
		//回收站
		function recycle () {
			nui.open({
			showMaxButton : true,
				url : "/itmp/common/recyclebin/recyclebinattachWeldingproce.jsp",
				title : "回收站",
				width : 1000,
				height : 570,
				onload : function() {//弹出页面加载完成
					var iframe = this.getIFrameEl();
					var data = {
						pageType : "recyclebin",
						urlName:"com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.queryweldingprocesscards.biz.ext",//回收
						entityVal:"com.cgn.itmp.weldingmanagement.weldingprocesscard.weldingprocesscard",
						removeUrl:"com.cgn.itmp.weldingmanagement.common.delete.biz.ext",
						recoveryUrl:"com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//恢复
						columnscode:[
							{type:"indexcolumn" },
							{type:"checkcolumn" },
							{field:"uuid", width:100, headerAlign:"center", allowSort:true, header:"uuid",visible:false},
							{field:'card_number',header:'WPS编号', width:100, headerAlign:"center", allowSort:true},
							{field:'edition',header:'版本', width:100, headerAlign:"center", allowSort:true},
							{field:'joint_form',header:'接头形式', width:100, headerAlign:"center", allowSort:true},
							{field:'welding_method',header:'焊接方法', width:100, headerAlign:"center", allowSort:true},
							{field:'filling_material',header:'填充材料', width:100, headerAlign:"center", allowSort:true},
							{field:'position',header:'评定位置', width:100, headerAlign:"center", allowSort:true},
							{field:'manufacturinglevel',header:'制造级别', width:100, headerAlign:"center", allowSort:true},
							{field:'assesscurrent',header:'评定电流', width:100, headerAlign:"center", allowSort:true},
							{field:'process_assessment_report',header:'工艺评定报告号', width:120, headerAlign:"center", allowSort:true},
							{field:'assessparentmaterial1',header:'评定母材1', width:100, headerAlign:"center", allowSort:true},
							{field:'assessparentmaterial2',header:'评定母材2', width:100, headerAlign:"center", allowSort:true},
							{field:'ratingunit',header:'评定单位', width:100, headerAlign:"center", allowSort:true},
							{field:'materialspecification1',header:'母材规格1', width:100, headerAlign:"center", allowSort:true},
							{field:'materialspecification2',header:'母材规格2', width:100, headerAlign:"center", allowSort:true},
							{field:'covermaterial',header:'覆盖的母材', width:100, headerAlign:"center", allowSort:true},
							{field:'base_metal_thickness_one',header:'母材厚度1', width:100, headerAlign:"center", allowSort:true},
							{field:'base_metal_thickness_two',header:'母材厚度2', width:100, headerAlign:"center", allowSort:true},
							{field:'coverspecifications',header:'覆盖规格', width:100, headerAlign:"center", allowSort:true},
							{header:'保护气体',headerAlign:"center",columns:[
								{field:'gascomposition',header:'气体成分', width:100, headerAlign:"center", allowSort:true},
								{field:'positivetraffic',header:'正面流量', width:100, headerAlign:"center", allowSort:true},
								{field:'backflow',header:'背面流量', width:100, headerAlign:"center", allowSort:true}
							]},
							{field:'coverthickness',header:'覆盖厚度', width:100, headerAlign:"center", allowSort:true},
							{field:'coverlocation',header:'覆盖位置', width:100, headerAlign:"center", allowSort:true},
							{field:'covercurrentrange',header:'覆盖电流范围', width:100, headerAlign:"center", allowSort:true},
							{field:'enclosure',header:'附件', width:100, headerAlign:"center", allowSort:true,renderer:"setFile"},
							{field:'remarks',header:'备注', width:100, headerAlign:"center", allowSort:true}
						],
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
		//当选择列时
		function selectionChanged() {
			var rows = grid.getSelecteds();
			if (rows.length > 1) {
// 				nui.get("update").disable();
			} else {
				/* nui.get("update").enable(); */
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
		
		function btnQuery() {
	        var gjz = $("#cond").val();
	        if (gjz == "") {
	            refresh();
	        } else {
	            var data = {
	                matchFied: "ratingunit,card_number,joint_form,welding_method,covermaterial,coverspecifications,coverthickness,coverlocation,covercurrentrange,gascomposition,positivetraffic,backflow,isdel,jd",
	                dicFied: "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
	                wordVal: $("#cond").val(),
	                entity: $("input[name='criteria/_entity']").val(),
	                entityName: 'criteria',
	                sfdel: true,
	                jdInfo: 'jd@' + getCookie('jdid')
	            };
	            var query = nui.decode(getKeyWordQuery(data));
	            query["criteria/_expr[13]/isdel"] = "0";
	            query["criteria/_expr[14]/jd"] = getCookie("jdid");
	            query["criteria/_orderby[1]/_property"] = "createtime";
				query["criteria/_orderby[1]/_sort"] = "desc";
				query["criteria/_orderby[2]/_property"] = "orderno";
				query["criteria/_orderby[2]/_sort"] = "asc";
	            grid.load(query);
	        }
	    }
		//查询
		function searchs() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			grid.load(json);//grid查询
			
// 			btnQuery();
		}
		
		function showAssess(id){
		var assess={};
		var json=nui.encode({jd:jdid,assessmentid:id});
		$.ajax({
		    url:"com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.getassessment.biz.ext",
		    type:'POST',
		    async:false,
		    cache:false,
		    data:json,
		    contentType:'text/json',
		    success:function(data){
				assess=data.data;
				if(assess==null){
					nui.alert("该评定报告已不存在,请确认后重新关联","系统提示");
					return;
				}else{
				nui.open({
					showMaxButton : true,
					url : "/itmp/weldingmanagement/Assessment/WeldingAssessmentFormPrint.jsp",
					title : "查看数据",
					width : 900,
					height : 300,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record : {
								weldingassessment : assess
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
			}
		});
				
			}
	</script>
</body>
</html>
