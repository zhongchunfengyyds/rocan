<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): jirukang
- Date: 2019-12-09 19:17:24
- Description:
    --%>
    <head>
        <title>
            常规岛_缺陷显示跟踪与处理查询
        </title>
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
					<div id="form1" class="nui-form display" align="center" style="height:95px">
						 <!-- 数据实体的名称 -->
			                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice">
			                <!-- 排序字段 -->
			                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="createtime">
			                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
			                <input class="nui-hidden" name="criteria/_orderby[2]/_property" value="orderno">
			                <input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc">
						<table id="table1" class="table" style="height: 100%">
							<tr>
			                        <td class="form_label">
			                            机组状态:
			                        </td>
			                        <td colspan="1">
			                            <input class="nui-dictcombobox" dictTypeId="JZZT" name="criteria/_expr[1]/jzstate"/>
			                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
			                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
			                        </td>
			                        <td class="form_label">
			                            大修轮次:
			                        </td>
			                        <td colspan="1">
			                            <input class="nui-textbox" name="criteria/_expr[2]/overhaulrounds"/>
			                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
			                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
			                        </td>
			                    </tr>
			                    <tr>
			                        <td class="form_label">
			                            设备类型:
			                        </td>
			                        <td colspan="1">
			                            <input class="nui-dictcombobox" dictTypeId="JYLB" name="criteria/_expr[3]/equipmenttype"/>
			                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
			                            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
			                        </td>
			                        <td class="form_label">
			                            检查方法:
			                        </td>
			                        <td colspan="1">
			                            <input class="nui-dictcombobox" dictTypeId="CGJCFF" name="criteria/_expr[4]/inspectionmethod"/>
			                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
			                            <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
			                        </td>
			                    </tr>
			                    <tr>
			                        <td class="form_label">
			                           通知单号:
			                        </td>
			                        <td colspan="1">
			                            <input class="nui-textbox" name="criteria/_expr[5]/noticenumber"/>
			                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
			                            <input class="nui-hidden" name="criteria/_expr[5]/_likeRule" value="all">
			                        </td>
			                        <td style="display:none;" colspan="0"><input class="nui-hidden"
												name="criteria/_expr[6]/isdel" value="0" /> <input
												class="nui-hidden" name="criteria/_expr[6]/_op" value="=">
												<input class="nui-hidden" id="con_jdid"
												name="criteria/_expr[7]/jd" /> <input 
												class="nui-hidden" name="criteria/_expr[7]/_op" value="=">
												<input class="nui-hidden" id="con_jzid"
												name="criteria/_expr[8]/jz" /> <input
												class="nui-hidden" name="criteria/_expr[8]/_op" value="=">
									</td>
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
                <div 
                        id="datagrid1"
                        dataField="tinspectdefectnotices"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.tinspectdefectnoticebiz.queryTInspectDefectNotices.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false"
                        >

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="jzstate" headerAlign="center" allowSort="true"  renderer="jzstateRender">
                            机组状态
                        </div>
                        <div field="overhaulrounds" headerAlign="center" allowSort="true" >
                            大修轮次
                        </div>
                        <div field="equipmenttype" headerAlign="center" allowSort="true" renderer="sblxRender">
                            设备类型
                        </div>
                        <div field="workticketnumber" headerAlign="center" allowSort="true" visible="false">
                            工作票号
                        </div>
                        <div field="workcontent" headerAlign="center" allowSort="true"  visible="false">
                            工作内容
                        </div>
                        <div field="workchargeperson" headerAlign="center" allowSort="true"  visible="false">
                            工作负责人
                        </div>
                        <div field="inspectionmethod" headerAlign="center" allowSort="true" renderer="checkRender">
                            检查方法
                        </div>
                        <div field="noticenumber" headerAlign="center" allowSort="true" renderer="setHref">
                            通知单号
                        </div>
                        <div field="title" headerAlign="center" allowSort="true" visible="false">
                            标题
                        </div>
                        <div field="describe" headerAlign="center" allowSort="true" visible="false">
                            描述
                        </div>
                        <div field="functionallocation" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div field="createdate" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            创建日期
                        </div>
                        <div field="currentstatus" headerAlign="center" allowSort="true" renderer="stateRender">
                            当前状态
                        </div>
                        <div field="responsibledepartment" headerAlign="center" allowSort="true" visible="false">
                            责任部门
                        </div>
                        <div field="process" headerAlign="center" allowSort="true" visible="false">
                            处理过程
                        </div>
                        <div field="processresult" headerAlign="center" allowSort="true" visible="false">
                            处理结果
                        </div>
                        <div field="strategyadjustment" headerAlign="center" allowSort="true" visible="false">
                            在役检查策略调整
                        </div>
                        <div field="nondestructive" headerAlign="center" allowSort="true" visible="false">
                            无损检测方法优化
                        </div>
                        <div field="responsibleperson" headerAlign="center" allowSort="true" visible="false">
                            责任人
                        </div>
                        <div field="fj" headerAlign="center" allowSort="true" visible="false">
                            附件
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            if ('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") < 0 &&'<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") <0) {
				 $("#addallbut").hide();
				 $("#editbtn").hide();
				 $("#delebtn").hide();
				 $("#recycle").hide();
				 $("#output").hide();
			 }else if('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") > 0 &&'<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") <0){
		 	$("#delebtn").hide();
		 	$("#recycle").hide();
		 }
		 
            var grid = nui.get("datagrid1");
			var jdid = getCookie('jdid');
			var jzid = getCookie('jzid');
			nui.get('con_jdid').setValue(jdid);
        	nui.get('con_jzid').setValue(jzid);
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
			
			
			
			function setHref(e){
			var xm=e.record.noticenumber;
			var uid=e.record._uid;
			var html='<a href="javascript:void(0)" onclick="openView('+uid+')" >' +xm+'</a>';
			return html;
		}
		function openView(uid){
			var row=grid.getRowByUID(uid);
			nui.open({
				showMaxButton: true,
					url : "/itmp/conventionalislandand/DefaceNotice/TInspectDefectNoticeShowForm.jsp",
					title : "缺陷显示跟踪与处理数据详情",
					width : 900,
					height : 550,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record : {tinspectdefectnotice:row}
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
		
			
			$(function() {
				$('#editbtn').attr('title', "请选择需修改条目");
			});
			function stateRender(e){//当前状态
             	return nui.getDictText("QXDQZT", e.value);
            }
            function sblxRender(e){//设备类型
             	return nui.getDictText("JYLB", e.value);
            }
            function jzstateRender(e){//机组状态
             	return nui.getDictText("JZZT", e.value);
            }
            function checkRender(e){//检查方法
             	return nui.getDictText("CGJCFF", e.value);
            }
            
            //新增
            function add() {
                nui.open({
                showMaxButton : true,
                    url: "/itmp/conventionalislandand/DefaceNotice/TInspectDefectNoticeForm.jsp",
                    title: "新增记录", width: 900, height: 500,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
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
                    showMaxButton : true,
                        url: "/itmp/conventionalislandand/DefaceNotice/TInspectDefectNoticeForm.jsp",
                        title: "编辑数据",
                        width: 900,
                        height: 500,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{tinspectdefectnotice:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                            $("#editbtn").prop("disabled", "disabled");
							$("#delebtn").prop("disabled", "disabled");
                                grid.reload();
                            }
                            });
                        } else {
                            nui.alert("请选中一条记录","提示");
                        }
                    }

                    //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                var json = nui.encode({
									data : rows,
									entity : "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
												});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.knowledgebase.tinencyclopediabiz.deleteKnowledge.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
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
                                    }else{
                                        nui.alert("请选中一条记录！");
                                    }
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
				url : "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
				title : "导出数据",
				width : 382,
				height : 309,
				onload : function() {//弹出页面加载完成
					var iframe = this.getIFrameEl();
					var data = {
						entityName : "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice",
						queryParam : json, //查询数据
						attachFied : 'fj',
						queryKey : 'criteria', //查询实体名
						query : [ 'jzstate','overhaulrounds','equipmenttype','inspectionmethod','noticenumber','isdel', 'jd','jz'], //按顺序放置
						filterField : ['jd','jz','uuid', 'isdel','deletetime','deleteperson','fj','fildid','fildpath','createtime','orderno'],
						expTitle : "常规岛_缺陷显示跟踪与处理",
						dicFieds : "jzstate@JZZT,equipmenttype@JYLB,inspectionmethod@CGJCFF,currentstatus@QXDQZT",
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
		//回收站
		function recycle() {
			nui.open({
					showMaxButton : true,
						url : "/itmp/common/recyclebin/recyclebin.jsp",
						title : "回收站",
						width : 900,
						height : 570,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								pageType : "recyclebin",
								urlName : "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.tinspectdefectnoticebiz.queryTInspectDefectNotices.biz.ext",//回收
								entityVal : "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice",
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
									dic:"JZZT",
									renderer : "stateRender"
								}, {
									field : 'overhaulrounds',
									header : '大修轮次',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'equipmenttype',
									header : '设备类型',
									width : 100,
									headerAlign : "center",
									allowSort : true,
									dic:"JYLB",
									renderer : "stateRender"
							
								}, {
									field : 'inspectionmethod',
									header : '检查方法',
									width : 100,
									headerAlign : "center",
									allowSort : true,
									dic:"CGJCFF",
									renderer : "stateRender"
								}, {
									field : 'noticenumber',
									header : '通知单号',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'functionallocation',
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
									field : 'currentstatus',
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
								nui.open({
											showMaxButton : true,
											url : "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
											title : "新增记录",
											width : 600,
											height : 300,
											onload : function() {//弹出页面加载完成
												var iframe = this.getIFrameEl();
												var data = {
													pageType : "batchAdd",
													tempFileName : "tinspectdefectnotice.xlsx",
													tempLoadName : "常规岛_缺陷显示跟踪处理导入模板",
													entitfName : "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.TInspectDefectNotice"
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
						}
					});

		}
								
                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                }

                                //查询
                                function searchs() {
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    $("#editbtn").prop("disabled", "disabled");
									$("#delebtn").prop("disabled", "disabled");
									$("#addbtn").prop("disabled", "disabled");
                                }

                                //重置查询条件
                                function reset(){
                                 $("#cond").val('');
                                    var form = new nui.Form("#form1");//将普通form转为nui的form
                                    form.reset();
                                     nui.get('con_jdid').setValue(getCookie('jdid'));
									nui.get('con_jzid').setValue(getCookie('jzid'));
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    search();
                                }

                                //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                    if(rows.length>1){
                                    }else{
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
								//仅按照名称搜索（模糊查询）
								
							function btnQuery() {
								var gjz = $("#cond").val();
								if (gjz == "") {
									refresh();
									// 				nui.get("update").disable();
								} else {
									var data = {
										matchFied : "jzstate,overhaulrounds,equipmenttype,inspectionmethod,noticenumber,functionallocation,currentstatus",
										dicFied : "jzstate@JZZT,equipmenttype@JYLB,inspectionmethod@CGJCFF,currentstatus@QXDQZT",
										wordVal : $("#cond").val(),
										entity : $("input[name='criteria/_entity']").val(),
										entityName : 'criteria',
										sfdel : true,
										jdInfo : 'jd@' + getCookie('jdid'),
										jzInfo : 'jz@' + getCookie('jzid')
									};
									var query = nui.decode(getKeyWordQuery(data));
									query["criteria/_expr[6]/isdel"] = "0";
									query["criteria/_expr[7]/jd"] = getCookie("jdid");
									query["criteria/_expr[8]/jz"] = getCookie("jzid");;
									query["criteria/_orderby[1]/_property"] = "createtime";
									query["criteria/_orderby[1]/_sort"] = "desc";
									query["criteria/_orderby[2]/_property"] = "orderno";
									query["criteria/_orderby[2]/_sort"] = "asc";
								
									grid.load(query);
								}
							}
                            </script>
                        </body>
                    </html>
