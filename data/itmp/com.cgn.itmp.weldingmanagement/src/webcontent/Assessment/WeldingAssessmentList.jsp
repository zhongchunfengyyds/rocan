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
<title>焊接管理  - 焊接工艺评定报告管理</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<style>
.sx{
 background-color:red;
	cursor: pointer;
}
</style>
<body style="background-color: #f1f1f1;width: 98%; height: 97%;">
   
<div class="bs-docs-section" style="height: 100%;">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;">
					<tr class="">
						<td class="form_label">关键字查询:</td>
						<td class="form_label"><input type="text" id="cond" name="processInstDesc:%" class="form-control Keywordsearch" placeholder="关键字查询" tmplId="todolist" url=" "></td>
						<td class="form_label" colspan="2" style="width: 50%; border-right: 1px solid #f7f7f9 !important">
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
				
				
				
				 
				
					<div id="form1" class="nui-form display" align="center" style="height:101px" >
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment">
						<!-- 排序字段 -->
						<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="createtime">
				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						<input class="nui-hidden" name="criteria/_orderby[2]/_property" value="orderno">
				<input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc">
						<table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%">
							<tr>
							<td class="form_label">工艺评估报告号:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[1]/assessmentid" /> <input
									class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[1]/_likeRule"
									value="all"></td>
								<td class="form_label">报告名称:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[2]/assessmentname" /> <input
									class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
									</tr>
							<tr>
								<td class="form_label">评定单位:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[3]/assessmentunit" /> <input
									class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[3]/_likeRule"
									value="all"></td>
							
								<td class="form_label">接头形式:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[4]/joint" /> <input class="nui-hidden"
									name="criteria/_expr[4]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[4]/_likeRule"
									value="all"></td>
									</tr>
							<tr>
								<td class="form_label">焊接方法:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[5]/method" /> <input class="nui-hidden"
									name="criteria/_expr[5]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[5]/_likeRule"
									value="all"></td>
							
								
								<td class="form_label">评定位置:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[6]/position" /> <input class="nui-hidden"
									name="criteria/_expr[6]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[6]/_likeRule"
									value="all"></td>
								</tr>
							<tr><td class="form_label">规格:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[7]/thickness" /> <input class="nui-hidden"
									name="criteria/_expr[7]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[7]/_likeRule"
									value="all"></td>
									<td class="form_label">制造级别:</td>
								<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[8]/level" /> <input class="nui-hidden"
									name="criteria/_expr[8]/_op" value="="></td>
								
								</tr>
								<input class="nui-hidden" id="con_jdid" name="criteria/_expr[9]/jd" /> 
					            <input class="nui-hidden" name="criteria/_expr[9]/_op" value="="> 
					            <input class="nui-hidden" name="criteria/_expr[9]/_likeRule" value="end">
					            <input class="nui-hidden" id="isdel" name="criteria/_expr[10]/isdel" value="0" /> 
					            <input class="nui-hidden" name="criteria/_expr[10]/_op" value="like"> 
					            
							
							</table>
					</div>
					
				</div>
			</div>
		</div>


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
<!-- 								<button class="btn btn-default" onclick="add()" > -->
<!-- 									<span class=""></span> -->
<%-- 									<b:message key="btn-add" /> --%>
<!-- 								</button> -->
<!-- 								<button class="btn btn-default" onclick="batchAdd()"> -->
<!-- 									<span class=""></span> -->
<%-- 									<b:message key="btn-adds" /> --%>
<!-- 								</button> -->
								<button class="btn btn-default" onclick="edit()"
									disabled="disabled" id="editbtn">
									<span class=""></span>
									<b:message key="btn-edit" />
								</button>
								<button class="btn btn-default" onclick="remove()"
									disabled="disabled" id="delebtn">
									<span class=""></span>
									<b:message key="btn-delete" />
								</button> <!-- 						<a class="btn btn-default btn-xs" plain="true" onclick="exportDict();"><i class="fa fa-cloud-download"></i>&nbsp导出</a> -->
								<button class="btn btn-default"
									type="button" id="output" onclick="output()">
									<span class=""></span>
									<b:message key="btn-export" />
								</button>
								<button class="btn btn-default"
									type="button" id="recycle" onclick="recycle()">
									<span class=""></span>
									<b:message key="btn-recycle" />
								</button>
								<button class="btn btn-default"
									type="button" id="batchAddAttach" onclick="batchAddAttach()">
									<span class=""></span>
									<b:message key="btn-upload" />
								</button>
							</td>
						</tr>
					</table>
				</div>


			</table>
		</div>
		<div class="nui-fit" style="height: 100%;" >
			<div id="datagrid1" dataField="weldingassessments"
				class="nui-datagrid" style="width: 100%; height: 100%;"
				url="com.cgn.itmp.weldingmanagement.weldingassessmentbiz.queryWeldingAssessments.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true"  
				onselectionchanged="selectionChanged" allowSortColumn="false" >

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">property0</div>
						
					<div field="assessmentid" headerAlign="center" allowSort="true" width="130" renderer="setHref">
						工艺评定报告号</div>
					<div field="assessmentname" headerAlign="center" allowSort="true" visible="false">
						报告名称</div>
					<div field="edition" headerAlign="center" allowSort="true">
						版本</div>
					<div field="assessmentunit" headerAlign="center" allowSort="true">
						评定单位</div>
					<div field="joint" headerAlign="center" allowSort="true">
						接头形式</div>
					<div field="method" headerAlign="center" allowSort="true">
						焊接方法</div>
					<div field="position" headerAlign="center" allowSort="true">
						评定位置</div>
					<div field="specifications" headerAlign="center" allowSort="true">
						规格</div>
					<div field="level" headerAlign="center" allowSort="true">
						制造等级</div>
					<div field="fj" headerAlign="center" allowSort="true" renderer="setFile" >
						附件</div>
					<div field="remark" headerAlign="center" allowSort="true">
						备注</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	
	
	
							
	
	
	
	
	
	
	
	<script type="text/javascript">
		nui.parse();
		accessControlButton('<%=userRoleCodeList%>',14);
		var grid = nui.get("datagrid1");
		var jdid = getCookie('jdid');
		
		nui.get('con_jdid').setValue(getCookie('jdid'));
        
		var formData = new nui.Form("#form1").getData(false, false);
		grid.load(formData);
		
		
		
		function setHref(e){
			var xm=e.record.assessmentid;
			var uid=e.record._uid;
			var html='<a href="javascript:void(0)" onclick="openView('+uid+')" >' +xm+'</a>';
			return html;
		}
		function openView(uid){
			var row=grid.getRowByUID(uid);
			nui.open({
				showMaxButton: true,
					url : "/itmp/weldingmanagement/Assessment/WeldingAssessmentFormPrint.jsp",
					title : "数据详情",
					width : 900,
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
					$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
						grid.reload();
					}
				});
		}	
		
		

		//新增
		function add() {
			nui.open({
			showMaxButton : true,
				url : "/itmp/weldingmanagement/Assessment/WeldingAssessmentForm.jsp",
				title : "新增记录",
				width : 1000,
				height : 280,
				onload : function() {//弹出页面加载完成
					var iframe = this.getIFrameEl();
					var data = {
						pageType : "add"
					};//传入页面的json数据
					iframe.contentWindow.setFormData(data);
				},
				ondestroy : function(action) {//弹出页面关闭前SSS
				
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
				showMaxButton : true,
					url : "/itmp/weldingmanagement/Assessment/WeldingAssessmentForm.jsp",
					title : "编辑数据",
					width : 1000,
					height : 280,
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
 				//导入生产合格证书
				function batchAddAttach(){
							nui.open({
								   showMaxButton : true,
				                    url: "/itmp/basecommon/batchAddAttach.jsp",
				                    title: "导入附件", width: 600, height: 300,
				                    onload: function () {//弹出页面加载完成
				                    	var iframe = this.getIFrameEl();
					                    var data = {
					                    	page:"GYPD",
					                    
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
		//回收站
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
						urlName:"com.cgn.itmp.weldingmanagement.weldingassessmentbiz.queryWeldingAssessments.biz.ext",//回收
						entityVal:"com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment",
						removeUrl:"com.cgn.itmp.weldingmanagement.common.delete.biz.ext",//删除
						recoveryUrl:"com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//恢复
						columnscode:[
							{type:"indexcolumn" },
							{type:"checkcolumn" },
							{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
							{field:"assessmentid",header:"工艺评定报告号", width:100, headerAlign:"center", allowSort:true},
							{field:'assessmentname',header:'报告名称', width:100, headerAlign:"center", allowSort:true},
							{field:'edition',header:'版本', width:100, headerAlign:"center", allowSort:true},
							{field:'assessmentunit',header:'评定单位', width:100, headerAlign:"center", allowSort:true},
							{field:'joint',header:'接头形式', width:100, headerAlign:"center", allowSort:true},
							{field:'method',header:'焊接方法', width:100, headerAlign:"center", allowSort:true},
							{field:'position',header:'评定位置', width:100, headerAlign:"center", allowSort:true},
							{field:'specifications',header:'规格', width:100, headerAlign:"center", allowSort:true},
							{field:'level',header:'制造等级', width:100, headerAlign:"center", allowSort:true},
							{field:'fj',header:'附件', width:100, headerAlign:"center", allowSort:true,renderer:"setFile"},
							{field:'remark',header:'备注', width:100, headerAlign:"center", allowSort:true}
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
	
//删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({data:rows,entity:"com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment",token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.weldingmanagement.common.updatedel.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
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
                                    }else{
                                        nui.alert("请选中一条记录！");
                                    }
                                }

	
		//重新刷新页面
		function refresh() {
			var form = new nui.Form("#form1");
			var json = form.getData(false, false);
			grid.load(json);//grid查询
			nui.get("update").enable();
			  $("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
		}

		//查询
		function searchs() {
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
				 nui.get('con_jdid').setValue(getCookie('jdid'));
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
	/* 	function btnQuery() {
			var form = new nui.Form("#nameSearch");
			var data = form.getData();
			grid.load(data);
		} */
		//导出
	function output() {

        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        nui
            .open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiledAndAttachMultiple.jsp",
                title: "导出数据",
                width:600,
                height: 160,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                    
                        entityName: "com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment",
                        queryParam: json, //查询数据
                        queryKey: 'criteria', //查询实体名
                        query: ['assessmentid','assessmentname', 'assessmentunit', 'joint', 'method', 'position','thickness','level','jd','isdel'], //按顺序放置
                        //queryIndex: [1, 3, 10, 11, 12, 13],  //按顺序放置
                        expTitle: "焊接工艺评定报告管理",
                        filterField: "uuid,isdel,fileid,createtime,jd,inserttime,orderno,deletetime,deleteperson", //要过滤的字段，多字段用,隔开
                        dicFieds: "",
                        jdFieds: "jd",
                        order: "createtime@desc,orderno@asc",
                        attachFied:"fileid@fj",
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
		//高级搜索
		function btnQueryDetail() {
			var form = new nui.Form("#queryForm");
			var data = form.getData();
			grid.load(data);
		}
					
						//导入
function batchAdd(){
	 var data = {};
	 data.modelFlag = "4";
	 data.jdid = jdid;
	 var json = nui.encode(data);
	$.ajax({
	    url:"com.cgn.itmp.basecommon.Common.queryCountByEntity.biz.ext",
	    type:'POST',
	    cache:false,
	    data:json,
	    contentType:'text/json',
	    success:function(data){
	   		 var count = data.count;
	   			if(count > 0){
	   				nui.alert("该焊接工艺评定报告已存在,不能导入","提示");
	   			}else{
	   				nui.open({showMaxButton : true,
			        url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
			        title: "新增记录", width: 600, height: 300,
			        onload: function () {//弹出页面加载完成
			        	var iframe = this.getIFrameEl();
			            var data = {
			            	pageType:"batchAdd",
			            	tempFileName:"hjgypdbggl.xlsx",
			            	tempLoadName:"焊接工艺评定报告导入模板",
			            	entitfName:"com.cgn.itmp.weldingmanagement.assessment.WeldingAssessment"
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
				/* function showquery(){
					var div=$("#form1");
					div.slideToggle(500);
			    	$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
				} */
				
				//模糊查询
				function btnQuery() {
			        var gjz = $("#cond").val();
			        if (gjz == "") {
			            refresh();
			        } else {
			            var data = {
			                matchFied: "assessmentunit,joint,method,material,position,thickness,diameter,base1,base2,assessmentid,assessmentname,level",
			                dicFied: "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
			                wordVal: $("#cond").val(),
			                entity: $("input[name='criteria/_entity']").val(),
			                entityName: 'criteria',
			                sfdel: true,
			                jdInfo: 'jd@' + getCookie('jdid')
			            };
			            var query = nui.decode(getKeyWordQuery(data));
			            query["criteria/_expr[9]/jd"] = getCookie('jdid');
			            query["criteria/_expr[10]/isdel"] = "0";
						query["criteria/_orderby[1]/_property"] = "createtime";
						query["criteria/_orderby[1]/_sort"] = "desc";
						query["criteria/_orderby[2]/_property"] = "orderno";
						query["criteria/_orderby[2]/_sort"] = "asc";
			            grid.load(query);
			        }
			    }
	    function setFile(e) {
			 var fileRealName = e.record.fj;
      			var fileId = e.record.fileid;

			if (fileRealName == null || fileRealName == 'null') {
				return "";
			}
			var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')"  >' + fileRealName + '</a>';
			return html;
		}
		function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
	         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
	         document.body.appendChild(elemIF);
	         elemIF.style.display = "none";
		}
				
	</script>
</body>
</html>
