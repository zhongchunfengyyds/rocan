<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-14 10:51:27
- Description:
    --%>
    <head>
        <title>
            	焊工管理
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	<style type="text/css">
		 
	</style>
	
</head>
<body style="background-color: #f1f1f1;width: 98%; height: 97%;">
   
<div class="bs-docs-section" style="height: 100%;">
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
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()"> 模糊查询 </a> 
									<a id="allQuery" style="display: none" class="btn btn-default" onclick="searchs()"> 查询 </a> 
									<a class="btn btn-default" id="reset" onclick="reset()"> 重置 </a>
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

					<div id="form1" class="nui-form display" align="center" style="height: 65px">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.weldingmanagement.Welder.Welderall">
                <!-- 排序字段 -->
                 <table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%">
                    <tr>
                        <td class="form_label">
                            姓名:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/name"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            所属公司:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/company"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            员工号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/empnumber"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            焊工代码:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[4]/code"/>
                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            操作项目:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[5]/items"/>
                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[5]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            操作证编号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[6]/operatingnumber"/>
                            <input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[6]/_likeRule" value="all">
                        </td>
                    <td style="display:none;" colspan="0"><input class="nui-hidden"
									name="criteria/_expr[7]/isdel" value="0" /> 
									<input class="nui-hidden" name="criteria/_expr[7]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[7]/_likeRule"
									value="all">
									<input class="nui-hidden" id="con_jdid" name="criteria/_expr[8]/jd" /> 
					            <input class="nui-hidden" name="criteria/_expr[8]/_op" value="="> 
					            <input class="nui-hidden" name="criteria/_expr[8]/_likeRule" value="end">
					            <input class="nui-hidden" name="criteria/_orderby[9]/_property" value="createtime"> 
                                <input class="nui-hidden" name="criteria/_orderby[9]/_sort" value="desc">
					           
                    </tr>
								</table>
					</div>
					
				</div>
			</div>
		</div>
         <div class=""  style="width:100%; " showToolbar="false" showFooter="false" >
                        <div class="nui-toolbar" style="border-bottom: 0; padding: 5px 0px;">
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
							
<!-- 								<button class="btn btn-default" onclick="add()"> -->
									
<%-- 									<b:message key="btn-add" /> --%>
<!-- 								</button> -->
<!-- 								<button class="btn btn-default" onclick="batchAdd()"> -->
									
<%-- 									<b:message key="btn-adds" /> --%>
<!-- 								</button> -->
								
								<button class="btn btn-default" id="shencha" onclick="shencha()"
									 id="addc">
									审查记录
								</button>
								<button class="btn btn-default" onclick="edit()"
									disabled="disabled" id="editbtn">
									<b:message key="btn-edit" />
								</button>
								
								<button class="btn btn-default" onclick="remove()"
									disabled="disabled" id="delebtn">
									<b:message key="btn-delete" />
								</button> <!-- 						<a class="btn btn-default btn-xs" plain="true" onclick="exportDict();"><i class="fa fa-cloud-download"></i>&nbsp导出</a> -->
								<button class="btn btn-default"
									type="button" id="output" onclick="output()">
									<b:message key="btn-export" />
								</button>
								
								<button class="btn btn-default"
									type="button" id="recycle" onclick="recycle()">
									<b:message key="btn-recycle" />
								</button>
								<button class="btn btn-default"
									type="button" id="batchAddAttach" onclick="batchAddAttach()">
									<b:message key="btn-upload" />
								</button>
								<button class="btn btn-default"
									type="button" id="reminder" onclick="reminder()">
									到期提醒
								</button>
								<button class="btn btn-default"
									type="button" disabled="disabled" id="QR" onclick="outQR()">
									导出二维码
								</button>
							</td>
						</tr>
					</table>
				</div>
				</div>
				<div id="erweima" style="display:none"></div>
            <div class="nui-fit">
                <div id="datagrid1" dataField="welders" class="nui-datagrid" style="width:100%;height:100%;" url="com.cgn.itmp.weldingmanagement.welderbiz.queryWelderall.biz.ext" pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true" onselectionchanged="selectionChanged" allowSortColumn="false">
                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
<!--                          <div field="qrcode" headerAlign="center" width="130" renderer="renderQrcode"> -->
<!--                   二维码        -->
<!--                         </div> -->
                        
                        
                        <div field="name" headerAlign="center" allowSort="true" >
                            姓名
                        </div>
                        <div field="company" headerAlign="center" allowSort="true" >
                            所属公司
                        </div>
                        <div field="empnumber" headerAlign="center" allowSort="true" >
                            员工号
                        </div>
                        <div field="code" headerAlign="center" allowSort="true" >
                            焊工代码
                        </div>
                        <div field="special" headerAlign="center" allowSort="true" >
                            特种作业名称
                        </div>
                        <div field="job" headerAlign="center" allowSort="true" >
                            作业类别
                        </div>
                        <div field="authority" headerAlign="center" allowSort="true" >
                            发证机关
                        </div>
                        <div field="items" headerAlign="center" allowSort="true"  dictTypeId="CZXM" renderer="dicCZXM">
                            操作项目
                        </div>
                        <div field="operatingnumber" headerAlign="center" allowSort="true" renderer="show">
                            操作证编号
                        </div>
                        <div field="validity" headerAlign="center" dateFormat="yyyy-MM-dd" allowSort="true"  visible="false">
                            证件有效期
                        </div>
                        <div field="review" headerAlign="center" dateFormat="yyyy-MM-dd" allowSort="true"  visible="false">
                            复审日期
                        </div>
                        <div field="initial" headerAlign="center" dateFormat="yyyy-MM-dd" allowSort="true"  visible="false">
                            初领日期
                        </div>
                        <div field="status"  headerAlign="center"  allowSort="true"   renderer="dicZYLY">
                            状态
                        </div>
                        <div field="fj" headerAlign="center" allowSort="true" renderer="setFile"  visible="false">
                            附件
                        </div>
                       
                        <div field="remarks" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="isdel" class="tp" headerAlign="center" allowSort="true"  visible="false">
                            删除标识
                                       </div>
			</div>
		</div>
	</div>
	</div>
        <script type="text/javascript">
            nui.parse();
            accessControlButton('<%=userRoleCodeList%>',12);
            var grid = nui.get("datagrid1");
            var jdid=getCookie('jdid');
            var jzid = getCookie('jzid');
            nui.get('con_jdid').setValue(getCookie('jdid'));
//             nui.get('con_jzid').setValue(getCookie('jzid'));
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
            
            function show(e){
            	return '<a onclick="showQuality(\''+e.record.uuid+'\')">'+e.record.operatingnumber+'</a>';
            }
             
            function showQuality(uuid){
            	nui.open({
					showMaxButton : true,
							 	url: "/itmp/weldingmanagement/Welder/WelderAddprn.jsp",
			                    title: "数据详情", width: "80%", height: "80%",
			                    onload: function () {//弹出页面加载完成
			                    var iframe = this.getIFrameEl();
			                    var data = {uuid:uuid};//传入页面的json数据
			                    iframe.contentWindow.quality(data);
			                    },
			                    ondestroy: function (action) {//弹出页面关闭前
			                    grid.reload();
			                    }
				});
            }
            //附件初始化
            function setFile(e){
                var fileNewName = e.record.fileNewName;
                var fileRealName = e.record.fileRealName;
      			var filepath = e.record.filePath;
      			var fileId = e.record.fildid;
      			
     			if(fileRealName == null || fileRealName == 'null'){
     				return "";
     			}
                	var html = '<a href="#" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
                	return html;
                }

            //新增
            function add() {
             $(".add_adds").toggle();
             
                nui.open({
                showMaxButton: true,
                    url: "/itmp/weldingmanagement/Welder/WelderAdd.jsp",
                    title: "新增数据", width: "80%", height: "80%",
                    showMaxButton: true,
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
                    showMaxButton: true,
                        url: "/itmp/weldingmanagement/Welder/WelderAdd.jsp",
                        title: "编辑数据",
                        width: "80%", height: "80%",
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data ={pageType:"edit",welder:row};
                            
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
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
                                    var json = nui.encode({data:rows,entity:"com.cgn.itmp.weldingmanagement.Welder.Welder",token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.weldingmanagement.common.updatedel.biz.ext",
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

                                //重新刷新页面
                        function refresh(){
                            var form = new  nui.Form("#form1");
                            var json = form.getData(false,false);
                            grid.load(json);//grid查询
                            nui.get("update").enable();
                        }

                                //查询
                        function searchs() {
                        	
                            var form = new nui.Form("#form1");
                            
                            var json = form.getData(false,false);
                            
                            grid.load(json);//grid查询
                        }

                                //重置查询条件
                       function reset() {
							$("#cond").val('');
								var form = new nui.Form("#form1");//将普通form转为nui的form
								form.reset();
								nui.get('con_jdid').setValue(jdid);
						         nui.get('con_jzid').setValue(jzid);
						}

                                //enter键触发查询
                        function onKeyEnter(e) {
                            searchs();
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
					                    	page:"HGGL",
					                    };//传入页面的json数据
					                     iframe.contentWindow.SetData(data);
				                    },
				                    ondestroy: function (action) {//弹出页面关闭前
				                    grid.reload();
				                }
				            });
						}
		

                                 //导出
			            function output() {
			
					        var form = new nui.Form("#form1");
					        var json = form.getData(false, false);
					        nui
					            .open({
					                showMaxButton: true,
					                url: "/itmp/basecommon/importExcelComm/expSelectFiledAndAttach.jsp",
					                title: "导出数据",
					                width: 500,
					                height: 300,
					                onload: function () {//弹出页面加载完成
					                    var iframe = this.getIFrameEl();
					                    var data = {
					                        entityName: "com.cgn.itmp.weldingmanagement.Welder.Welder",
					                        queryParam: json, //查询数据
					                        queryKey: 'criteria', //查询实体名
					                        query: ['name','company', 'employeenumber', 'code', 'items','operatingnumber','isdel','jd'], //按顺序放置
					                        //queryIndex: [1, 3, 10, 11, 12, 13],  //按顺序放置
					                        expTitle: "焊工",
					                        filterField: "orderno,isdel,jd,uuid,fileid,qrcode,createtime,deletetime,deleteperson", //要过滤的字段，多字段用,隔开
					                        dicFieds: "items@CZXM,status@WSZT",
					                        jdFieds: "jd",
					                        order: "createtime@desc",
					                        attachFied:"fileid@fj"
					                    };//传入页面的json数据
					                    iframe.contentWindow.setFormData(data);
					                },
					                ondestroy: function (action) {//弹出页面关闭前
					                    grid.reload();
					                }
					            });
			    			}
                   		//导入
						function batchAdd(){
							 var data = {};
							 data.modelFlag = "4";
						
							 data.jdid = jdid;
							 data.jzid = jzid;
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
							   				nui.alert("该焊工已存在,不能导入","提示");
							   			}else{
							   				nui.open({showMaxButton : true,
									        url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
									        title: "新增记录", width: 600, height: 300,
									        onload: function () {//弹出页面加载完成
									        	var iframe = this.getIFrameEl();
									            var data = {
									            	pageType:"batchAdd",
									            	tempFileName:"hggl.xlsx",
									            	tempLoadName:"焊工管理",
									            	entitfName:"com.cgn.itmp.weldingmanagement.Welder.Welder"
									            };//传入页面的json数据
									             iframe.contentWindow.SetData(data);
									        },
									        ondestroy: function (action) {//弹出页面关闭前
									        grid.reload();
									    	}
										});
							   		}
							   		}
							});
							
						
						}
						                   		
						                   		
						            //导入
						function certificateAdd(){
							 var data = {};
							 data.modelFlag = "4";
							 
							 data.jdid = jdid;
							 data.jzid = getCookie('jzid');
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
							   				nui.alert("该资质已存在,不能导入","提示");
							   			}else{
							   				nui.open({showMaxButton : true,
									        url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
									        title: "新增记录", width: 600, height: 300,
									        onload: function () {//弹出页面加载完成
									        	var iframe = this.getIFrameEl();
									            var data = {
									            	pageType:"batchAdd",
									            	tempFileName:"zzzgl.xlsx",
									            	tempLoadName:"焊工资质证导入模板",
									            	entitfName:"com.cgn.itmp.weldingmanagement.Welder.Certificate"
									            };//传入页面的json数据
									             iframe.contentWindow.SetData(data);
									        },
									        ondestroy: function (action) {//弹出页面关闭前
									        grid.reload();
									    	}
										});
							   		}
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
									$("#output").prop("disabled", "");
									$("#QR").prop("disabled", "");
									
								} else if (rows.length > 1) {
									//修改禁止
									
									$("#editbtn").prop("disabled", "disabled");
									//删除恢复
									$("#delebtn").prop("disabled", "");
									$("#QR").prop("disabled", "");
								} else {
									//两个都禁止
									
									$("#editbtn").prop("disabled", "disabled");
									$("#delebtn").prop("disabled", "disabled");
									$("#QR").prop("disabled", "disabled");
								}
							} else {
								//两个都禁止
								
								$("#editbtn").prop("disabled", "disabled");
								$("#delebtn").prop("disabled", "disabled");
								$("#QR").prop("disabled", "disabled");
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
							
						function btnQuery() {
					        var gjz = $("#cond").val();
					        if (gjz == "") {
					            refresh();
					        } else {
					            var data = {
					            	matchFied: "name,company,empnumber,code,special,job,authority,items,operatingnumber,review,status,remarks",
					                dicFied: "items@CZXM,status@ZYLY",
					                wordVal: $("#cond").val(),
					                entity: $("input[name='criteria/_entity']").val(),
		// 							entity:"com.cgn.itmp.weldingmanagement.Welder.Welder"
					                entityName: 'criteria',
					                sfdel: true,
					                jdInfo: 'jd@'+ getCookie('jdid')
					            };
					            var query = nui.decode(getKeyWordQuery(data));
					            grid.load(query);
					        }
					    }
					    
						/* function showquery(){
							var div=$("#form1");
							div.slideToggle(450);
					    	$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
						} */
						
				
				
					//动态生成列数据
					var data = {
							recyclebinFlag:"weld",
							pageType : "recyclebin",
							urlName:"com.cgn.itmp.weldingmanagement.welderbiz.queryWelders.biz.ext",//回收
							entityVal:"com.cgn.itmp.weldingmanagement.Welder.Welder",
							removeUrl:"com.cgn.itmp.weldingmanagement.welderbiz.deleteWelders.biz.ext",//删除
							recoveryUrl:"com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//恢复
							columnscode:[
								{type:"indexcolumn" },
								{type:"checkcolumn" },
								{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
								{field:"name", width:100, headerAlign:"center", allowSort:true, header:"姓名"},
								{field:'company',header:'所属公司', width:100, headerAlign:"center", allowSort:true},
								{field:'empnumber',header:'员工号', width:100, headerAlign:"center", allowSort:true},
								{field:'code',header:'焊工代码', width:100, headerAlign:"center", allowSort:true},
								{field:'special',header:'特种作业名称', width:100, headerAlign:"center", allowSort:true},
								{field:'job',header:'作业类别', width:100, headerAlign:"center", allowSort:true},
								{field:'authority',header:'发证机关', width:100, headerAlign:"center", allowSort:true},
								{field:'items',header:'操作项目', width:100,dic:"CZXM",renderer:"xbRenderer", headerAlign:"center", allowSort:true},
								{field:'operatingnumber',header:'操作证编号', width:100, headerAlign:"center", allowSort:true},
								{field:'validity',header:'证件有效期', width:100, headerAlign:"center", allowSort:true,dateFormat:"yyyy-MM-dd"},
								{field:'review',header:'复审日期', width:100, headerAlign:"center", allowSort:true},
								{field:'initial',header:'初领日期', width:100, headerAlign:"center", allowSort:true,dateFormat:"yyyy-MM-dd"},
								{field:'status',header:'状态', width:100, headerAlign:"center", allowSort:true,dic:"WSZT",renderer:"xbRenderer"},
								{field:'fj',header:'  附件', width:100, headerAlign:"center", allowSort:true},
								{field:'remarks',header:'备注', width:100, headerAlign:"center", allowSort:true}
							]
					};
					
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
								
								iframe.contentWindow.setFormData(data);
							},
							ondestroy : function(action) {//弹出页面关闭前
							$("#editbtn").prop("disabled", "disabled");
								$("#delebtn").prop("disabled", "disabled");
								grid.reload();
							}
						});
					}
				
					//上传附件操作
			    	function onfileselect(num){
						startUpload(num);
					}
					function startUpload(e) {
						
				        var fileupload = nui.get("fileName"+e);
				        fileupload.startUpload();
				    }
				    //上传成功时，回写附件的name、id
				 	function onUploadSuccess(e){
				 		
						var appIconName = e.file.name;						
						var appIconPath = nui.decode(e.serverData).ret.filePath;
						var num = "";
						if(e.sender.id == "fileName2"){
							num = "2";
						}
						//var appIconData = nui.decode(e.serverData).ret.fileValue;
						nui.get("fpath"+num).setValue(appIconPath);
						nui.get("fname"+num).setValue(appIconName);
					}
				    
				 	//点击附件下载
			       	function load(fileId){
					  window.location.href="com.cgn.itmp.basecommon.fileDownload.flow?fileId="+fileId;
					}
					function shencha(){
					 
							addTab("","审查记录","/itmp/weldingmanagement/Review/ReviewrecordList.jsp",null);
					}
					//到期提醒
			    	function addTab(position,type,url,data) {
				         var tabs = parent.parent.nui.get("mainTabs");
				         var tab = { title: type, url: url, showCloseButton: true};
				         tab.onload = function (e) {
			                var iframe = tabs.getTabIFrameEl(e.tab);
			                if(type=="到期提醒"){
			                	iframe.contentWindow.setData(data);
			                }
			              }
				         tab = tabs.addTab(tab);            
					     tabs.activeTab(tab);
				    }
				    //到期提醒
					function reminder(){
						data.pageType="Welder";
						data.entityVal="";
						data.removeUrl="";
						data.recoveryUrl="";
						data.urlName="com.cgn.itmp.dailyandoverhaul.authorization.Common.checkqueryAll.biz.ext";
						addTab("","到期提醒","/itmp/authorization/Common/ReminderList.jsp?fildname=dqtx",data);
					}
				
					function onCheck(e){
				       if (e.isValid) {
				         if(e.value==""){
				           e.errorText = "必填项不可为空";
				           e.isValid = false;
				         }
				       }
				     }
				 //二维码图片渲染
		            function renderQrcode(e){
		            	if(e.record.qrcode!= null && e.record.qrcode != ""){
		            		return "<div><img onmousemove='imgHover(this)' onmouseout='imgOut(this)' width='40px' height='40px' src='<%=request.getContextPath()%>/coframe/tools/preview.jsp?remoteFile="+e.record.qrcode+"' /></div>";
		<%-- return "<div ><img  width='40px' height='40px' src='<%=request.getContextPath()%>/coframe/tools/preview.jsp?remoteFile="+e.record.qrcode+"' /></div>"; --%>
		            	}
		            }
					 //鼠标移入放大
		           function imgHover(e){
		           var y=event.clientY;
		           var a=e;
		           document.getElementById("erweima").innerHTML="<img  width='200px' height='200px' src='"+e.src+"' />";
		           document.getElementById("erweima").style.width = "200px";
		           document.getElementById("erweima").style.height = "200px";
		           document.getElementById("erweima").style.position = "absolute";
		           document.getElementById("erweima").style.background = "white";
		           document.getElementById("erweima").style.zIndex = "99";
		           document.getElementById("erweima").style.margin = "0 30% 0 60%";
		           document.getElementById("erweima").style.marginTop = (y-100)+"px";
		           document.getElementById("erweima").style.display="block";
		           }
		           
           //鼠标移出缩小
           function imgOut(e){
           		document.getElementById("erweima").style.width = "0px";
           		document.getElementById("erweima").style.height = "0px";
           		document.getElementById("erweima").style.display="none";
           }	
           
         //性别公共代码转换
           function dicCZXM(e) {
               return nui.getDictText("CZXM", e.value);
           }
           function dicZYLY(e) {
                 return nui.getDictText("WSZT", e.value);
             }
           //导出二维码
           function outQR(){
		    	 var row = grid.getSelecteds();
		    	 grid.loading("正在导出中,请稍等...");
		    var json=nui.encode({rows:row,type:"welder"});
		    	$.ajax({
				    url:"com.cgn.itmp.weldingmanagement.machinebiz.outQR.biz.ext",
				    type:'POST',
				    cache:false,
				    data:json,
				    contentType:'text/json',
				    success:function(text){
				    grid.unmask();
				    var test = text.data.replace("\\", "/").split("/")[1];
				    window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + text.data + "&projectPath=temp1&loadFileName=" + text.data);
// 				    var elemIF = document.createElement("iframe");
<%-- 		                  elemIF.src = "<%=request.getContextPath()%>/"+text.data; --%>
// 		                  elemIF.style.display = "none";
// 		                  document.body.appendChild(elemIF);
		  		}
		  	});
			}
   
                            </script>
                        </body>
                    </html>
