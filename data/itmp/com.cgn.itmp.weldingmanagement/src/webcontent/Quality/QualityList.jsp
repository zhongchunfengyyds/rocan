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
            	焊接质量计划管理
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	<style type="text/css">
		.mini-required .mini-textbox-border, .mini-required .mini-buttonedit-border {
    		width: 70%!important;
		}
	</style>
</head>
<body style="background-color: #f1f1f1;width: 98%;height: 97%">
	
<div class="bs-docs-section" style="height: 100%;">
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
					<div id="form1" class="nui-form display" align="center" style="height:110px">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.weldingmanagement.Quality.Quality">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="createtime">
				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
                <table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%">
                    <tr>
                        <td class="form_label">
                            WQP编号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/qualitynumber"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            描述:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/describe"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                       <td class="form_label">
                            功能位置:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/position"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            制造级别:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[4]/describe"/>
                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            接头形式:
                        </td>
                        <td colspan="1">
                            <input class="nui-dictcombobox" style="width: 100%" dictTypeId="JTXS" name="criteria/_expr[5]/form"/>
                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[5]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            无损检测方法及比例:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[6]/form"/>
                            <input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[6]/_likeRule" value="all">
                        </td>
                        
                    </tr> 
                    
                    <tr>
                    <td class="form_label">
                          	专业:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[7]/form"/>
                            <input class="nui-hidden" name="criteria/_expr[7]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[7]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                          	WQP流程状态：
                        </td>
                        <td colspan="1">
                            <input class="nui-dictcombobox" style="width: 100%" dictTypeId="WQPLCZT" name="criteria/_expr[8]/wqp_statu"/>
                            <input class="nui-hidden" name="criteria/_expr[8]/_op" value="=">
                        </td>
                    	 
                    </tr>
                    <tr>
                    	 <td class="form_label">
                          	当前任务状态：
                        </td>
                        <td colspan="1">
                           <input class="nui-dictcombobox" style="width: 100%" dictTypeId="DQRWZT" name="criteria/_expr[9]/state"/>
                            <input class="nui-hidden" name="criteria/_expr[9]/_op" value="=">
                        </td>
                    </tr>
                    		<tr style="display: none;">
                    		<td>
                    		<input class="nui-hidden" id="con_jdid" name="criteria/_expr[10]/jd" /> 
				            <input class="nui-hidden" name="criteria/_expr[10]/_op" value="="> 
				            <input class="nui-hidden" name="criteria/_expr[10]/_likeRule" value="end">
				            <input class="nui-hidden" name="criteria/_expr[12]/isdel" value="0" /> 
						    <input class="nui-hidden" name="welder/_expr[12]/_op" value="like">
						    <input class="nui-hidden" name="welder/_expr[12]/_likeRule" value="all">
                    		</td>
                    		</tr>
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
        <div id="queryregion" class=""  style="width:100%;height:100%;" showToolbar="false" showFooter="false" >
                        <div class="nui-toolbar" style="border-bottom: 0; padding:  0px;">
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
								<button class="btn btn-default" id="lversion" disabled="disabled"
									type="button" onclick="lversion()">
									WQP升版
								</button>
								
								<button class="btn btn-default"
									type="button" id="template" onclick="template()">
									<b:message key="btn-template" />
								</button>
								<button class="btn btn-default" id="printWQP" disabled="disabled"
									type="button" onclick="printWQP()">
									打印WQP
								</button>
								<button class="btn btn-default" disabled="disabled"
									type="button" id="probtn" onclick="project(1)">
									项目开工
								</button>
								<button class="btn btn-default" disabled="disabled"
									type="button" id="probtn1" onclick="project(2)">
									项目中止
								</button>
								<button class="btn btn-default" disabled="disabled"
									type="button" id="probtn2" onclick="project(3)">
									项目完工
								</button>
								<button class="btn btn-default" 
									type="button" id="probtn2" onclick="Record()">
									项目记录
								</button>
								
							</td>
						</tr>
					</table>
				</div>
				</table>
		</div>
            <div class="nui-fit" style="height: 100%;">
                <div id="datagrid1" dataField="qualitys" class="nui-datagrid" 
                	style="width:100%;height:100%;" url="com.cgn.itmp.weldingmanagement.qualitybiz.queryQualitys.biz.ext" 
                	pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true" 
                	onselectionchanged="selectionChanged" allowSortColumn="false">
                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        
                        
                        <div field="rounds" headerAlign="center" allowSort="true" visible="false">
                            大修轮次
                        </div>
                         <div field="wqp_statu" headerAlign="center" allowSort="true" renderer="WqpRender">
                WQP流程状态
                        </div>
                <div field="state" headerAlign="center" allowSort="true" renderer="flowstateRender">
                            当前任务状态
                </div>        
                        <div field="qualitynumber" headerAlign="center" width="200" allowSort="true" >
                WQP编号
                        </div>
                        <div field="describe" headerAlign="center" allowSort="true" >
                            描述
                        </div>
                        <div field="position" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div field="level" headerAlign="center" allowSort="true" >
                            制造级别
                        </div>
                        <div field="form" headerAlign="center" allowSort="true" renderer="renderForm">
                            接头形式
                        </div>
                        <div field="ndtmethod_proportions" headerAlign="center" allowSort="true" width="140">
                            无损检测方法及比例
                        </div>
                        <div field="prewelder" headerAlign="center" allowSort="true" >
                            预派焊工
                        </div>
                          <div field="solidwelder" headerAlign="center" allowSort="true" >
                            实派焊工
                        </div>
                          <div field="chargeperson" headerAlign="center" allowSort="true" >
                            工作负责人
                        </div>
                        <div field="fj" headerAlign="center" width="280" renderer="setFile">
                            附件
                        </div>
                        
                        <div field="isdel" headerAlign="center" visible="false" allowSort="true" >
                            删除标识
                        </div>
                        <div field="processStatus" headerAlign="center" visible="false" allowSort="true" >
                            流程标识
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
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
            
            grid.on("drawcell", function (e) {
		   		var record = e.record,
		        field = e.field,
		        value = e.value;
		        if(record.weldertype=="M"){
		        	return;
		        }
	            if (field == "qualitynumber" && value != null) {
	            //添加样式
	            e.cellStyle ="cursor: pointer";
	            //修改html值
	           	e.cellHtml = '<a onclick="showOneQuality(\''+value+'\')">'+value+'</a>';
	    		}
			});
		
		function renderForm(e){
			return nui.getDictText("JTXS", e.value);
		}
		
		function showOneQuality(value){
				var json=nui.encode({qualitynumber:value});
				$.ajax({
				url:"com.cgn.itmp.weldingmanagement.qualitybiz.getQualityOneSimple.biz.ext",
					    type:'POST',
					    cache:false,
					    data:json,
					    contentType:'text/json',
					    success:function(text){
					    	nui.open({
					    	showMaxButton : true,
			                    url: "/itmp/weldingmanagement/Quality/QualitySingleformwork.jsp",
			                    title: "查看记录", width: '95%', height: '80%',
			                    onload: function () {//弹出页面加载完成
			                    var iframe = this.getIFrameEl();
			                    var data = {pageType:"editone",record:{quality:text.quality[0]}};//传入页面的json数据
			                    iframe.contentWindow.setFormData(data);
			                    },
			                    ondestroy: function (action) {//弹出页面关闭前
			                    grid.reload();
			                }
			                });
					    }
				});
		
		}
             //工序模板
            function template(){
	          	var tabs = parent.parent.nui.get("mainTabs");
				var url="/itmp/weldingmanagement/QualityProcess/ProcessesList.jsp";
				 $(".add_adds").toggle();
				 var tab = { title: "工序模板 ", url: url, showCloseButton: true };
				  tab.ondestroy = function (action) {
			 	 	$("#editbtn").prop("disabled", "disabled");
					grid.reload();
				  };
				 
				 tab = tabs.addTab(tab);            
				 tabs.activeTab(tab);
				}
            
            function WqpRender(e){
             return nui.getDictText("WQPLCZT", e.value);
            }
            function flowstateRender(e){
            if(e.row.state=="WQPYQX"){
						e.rowStyle = 'color:gray';
					}
            return nui.getDictText("DQRWZT", e.value);
            }

            //新增
            function add() {
                var tabs = parent.parent.nui.get("mainTabs");
					var url="/itmp/weldingmanagement/Apply/WeldingapplyList.jsp?";
					 $(".add_adds").toggle();
					 var tab = { title: "焊接申请", url: url, showCloseButton: true };
					  tab.onload = function (e) {
		                	var iframe = tabs.getTabIFrameEl(e.tab);
		                 	var data = "YSP";//已审批
		                	iframe.contentWindow.setData(data);
		              	};
					  tab.ondestroy = function (action) {
					 		$("#editbtn").prop("disabled", "disabled");
							$("#delebtn").prop("disabled", "disabled");
							grid.reload();
					  };
					 
					 tab = tabs.addTab(tab);            
					 tabs.activeTab(tab);
            }

            //编辑
            function edit() {
	            if(fordata()){
	            	return;
	            }
                var row = grid.getSelected();
                if (row) {
                	if(row.state == 'WQPZBWC' || row.state == 'WQPZZ'){
                		nui.open({
		                    	showMaxButton : true,
		                        url: "/itmp/weldingmanagement/Quality/QualityOneQuality.jsp",
		                        title: "编辑数据",
		                        width: '55%',
		                        height: '50%',
		                        onload: function () {
		                            var iframe = this.getIFrameEl();
		                            var data = {pageType:"edit",record:{quality:row}};
		                            //直接从页面获取，不用去后台获取
		                            iframe.contentWindow.setFormData(data);
		                            },
		                            ondestroy: function (action) {
		                                grid.reload();
		                            }
		                            });
		                	}else{
			                	nui.alert("请选择'当前任务状态'为'WQP准备完成'或'WQP中止'的数据!","提示");
		                        return;
		                	}
                    
	                    } else {
	                        nui.alert("请选中一条记录","提示");
	                        return;
	                    }
                    }

                    //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                	var json = nui.encode({data:rows,entity:"com.cgn.itmp.weldingmanagement.Quality.Quality",token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
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
                                        nui.alert("请选中一条记录");
                                    }
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
                                }

                                //重置查询条件
                                function reset(){
                                $("#cond").val('');
                                    var form = new nui.Form("#form1");//将普通form转为nui的form
                                    form.reset();
                                    nui.get('con_jdid').setValue(getCookie('jdid'));
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    searchs();
                                }
                                
                                
                  //WQP升版
                  function lversion(){
                  	var row = grid.getSelected();
                  	if(!row){
						nui.alert("请选中一条记录");
						return;
					}
                  	if(row.state == 'WQPZBWC' || row.state == 'WQPZZ'){
                  		//单焊缝
                  		if(row.weldertype == 'D'){
                  			nui.open({
								    showMaxButton : true,
				                    url: "/itmp/weldingmanagement/Quality/SingleWeldTemplate.jsp",
				                    title: "焊接质量计划-单焊接WQP模板-升版",
				                    width:'90%', height: '90%',
				                    onload: function () {//弹出页面加载完成
				                    var iframe = this.getIFrameEl();
				                    var data = {
					                    	pageType : "addone",
					                    	record : {
					                    			quality : row
					                    		}
				                    	};
				                    iframe.contentWindow.setFormData(data);
				                    },
				                    ondestroy: function (action) {//弹出页面关闭前
				                    grid.reload();
				                }
				              });
                  		}
                  		//多焊缝
                  		if(row.weldertype == 'M'){
                  			 nui.open({
									 showMaxButton : true,
					                    url: "/itmp/weldingmanagement/Quality/ManyWeldLVersion.jsp",
					                    title: "焊接质量计划-多焊接WQP-升版", 
					                    width: '80%', 
					                    height: '80%',
					                    onload: function () {//弹出页面加载完成
						                    var iframe = this.getIFrameEl();
						                    var data = {
						                    	pageType:"addmore",
						                    	record: {
						                    			quality : row
						                    		}
						                    	};
						                    iframe.contentWindow.setFormData(data);
					                    },
					                    ondestroy: function (action) {//弹出页面关闭前
					                    	grid.reload();
					                	}
					                });
                  		}
                  	}else{
                  		nui.alert("请选择一个焊接质量计划且“当前任务状态”为“WQP准备完成”或“WQP中止”的数据");
						return;
                  	}
                  }              
                                
                 //项目状态变更       
                 function project(p){
					var rows = grid.getSelected();
					if(!rows){
						nui.alert("请选中一条记录");
						return;
					}
					var quality = {};
					quality.uuid = rows.uuid; 
					quality.qualitynumber = rows.qualitynumber; 
					quality.chargeperson = rows.chargeperson;
					quality.solidwelder = rows.solidwelder;
					quality.ndtmethod_proportions = rows.ndtmethod_proportions;
					//项目开工
					if(p == 1){
						if((rows.state == 'WQPZBWC' || rows.state == 'WQPZZ') && rows.wqp_statu == 'YWC'){
							quality.state = 'WQPZXZ';
							 nui.open({
			                    showMaxButton : true,
			                        url: "/itmp/weldingmanagement/Quality/projectManager.jsp",
			                        title: "项目开工",
			                        width: '30%',
			                        height: '25%',
			                        onload: function () {
			                            var iframe = this.getIFrameEl();
			                            var data = {pageType:"start",record:quality};
			                            //直接从页面获取，不用去后台获取
			                            iframe.contentWindow.setFormData(data);
			                            },
			                            ondestroy: function (action) {
			                                grid.reload();
			                            }
                           			 });
						}else{
							nui.alert("请选择WQP准备完成或WQP已中止且WQP流程状态为已完成的数据");
							return;
						}
					}
					//项目中止
					if(p == 2){
						if(rows.state == 'WQPZXZ'){
							quality.state = 'WQPZZ';
							nui.open({
			                    showMaxButton : true,
			                        url: "/itmp/weldingmanagement/Quality/projectManager.jsp",
			                        title: "项目完工",
			                        width: '35%',
			                        height: '25%',
			                        onload: function () {
			                            var iframe = this.getIFrameEl();
			                            var data = {pageType:"Suspension",record:quality};
			                            //直接从页面获取，不用去后台获取
			                            iframe.contentWindow.setFormData(data);
			                            },
			                            ondestroy: function (action) {
			                                grid.reload();
			                            }
                           			 });
							  var json = nui.encode({quality :quality});
				              
						}else{
							nui.alert("请选择WQP执行中的数据");
							return;
						}
					}
					//项目完工
					if(p == 3){
						if(rows.state == 'WQPZXZ'){
							quality.state = 'WQPYWC';
							quality.ndtmethod_proportions = rows.ndtmethod_proportions;
							nui.open({
			                    showMaxButton : true,
			                        url: "/itmp/weldingmanagement/Quality/projectManager.jsp",
			                        title: "项目完工",
			                        width: '35%',
			                        height: '25%',
			                        onload: function () {
			                            var iframe = this.getIFrameEl();
			                            var data = {pageType:"complete",record:quality};
			                            //直接从页面获取，不用去后台获取
			                            iframe.contentWindow.setFormData(data);
			                            },
			                            ondestroy: function (action) {
			                                grid.reload();
			                            }
                           			 });
						}else{
							nui.alert("请选择WQP执行中的数据");
							return;
						}
					}
				}
             
             //打印WQP
             function printWQP(){
             	var rows = grid.getSelecteds();
             	var ids = "";
             	for(var i = 0;i < rows.length; i++){
             		if(rows[i].weldertype == 'M'){
						nui.alert("请选择“单焊缝质量计划”进行打印");
						return;
					}else if(rows[i].state != 'WQPZXZ'){
             			nui.alert("请选择“当前任务状态”为“WQP执行中”的数据进行打印");
						return;
             		}else{
             			ids +=  rows[i].uuid + ",";
             		}
             	}
             	expotyPDF(ids.substr(0,ids.length-1));
             }
              //导出pdf
          function expotyPDF(ids){
         		var json = nui.encode({
         						ids : ids
         					});
          		var message = nui.loading("正在下载,请稍侯...",'提示');
            	nui.ajax({
	                url: "com.cgn.itmp.weldingmanagement.qualitybiz.printWQP.biz.ext",
	                type: 'POST',
	                data: json,
	                 cache:false,
	                success: function (text) {
	                nui.hideMessageBox(message);
	                	 if(text.result != null){
	                	   window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + text.result.substr(4).replace("\\", "/").split("/")[1] + "&projectPath=tempFile&loadFileName=" + text.result.substr(4).replace("\\", "/").split("/")[1]);
	                	 
<%-- 	                     		("<%=request.getContextPath()%>/"+text.result,text.result.substr(4)); --%>
	                	}
	                	
	                	
	                },
	                error: function (jqXHR, textStatus, errorThrown) {
	                    nui.hideMessageBox(message);
	                    nui.alert(jqXHR.responseText);
	                }
	            });
          }
         

        //下载弹窗	
		function openDownloadDialog(url, saveName){
				var type = navigator.userAgent;
                if(type.indexOf("Chrome")>-1){
                 //"谷歌";
	                 if(typeof(url) == 'object'&& url instanceof Blob){
					  url = URL.createObjectURL(url); // 创建blob地址
					 }
					 var aLink = document.createElement('a');
					 aLink.href = url;
					 aLink.download = saveName.substring(5,saveName.length) || '';// HTML5新增的属性，指定保存文件名，可以不要后缀，注意，file:///模式下不会生效
					 var event;
					 if(window.MouseEvent) event = new MouseEvent('click');
					 else
					 {
					 
					 
					 
					  event = document.createEvent('MouseEvents');
					  event.initMouseEvent('click',true,false, window, 0, 0, 0, 0, 0, false,false,false,false, 0, null);
					 }
					 aLink.dispatchEvent(event);
                }else{
                  //"其他";
			      // var elemIF = document.createElement("iframe");
			       // elemIF.src = url;
			        //elemIF.style.display = "none";
			       // document.body.appendChild(elemIF);
				  window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + decodeURIComponent(saveName.replace("\\", "/").split("/")[1]) + "&projectPath=tempFile&loadFileName=" + saveName.replace("\\", "/").split("/")[1]);
                }
                nui.alert("文件下载完成");
		}		
             
                                
        //控制修改和删除按钮
		function selectionChanged() {
			var rows = grid.getSelecteds();
			if (rows) {
				if (rows.length == 1) {
					//两个都恢复
					$("#editbtn").prop("disabled", "");
					$("#delebtn").prop("disabled", "");
					$("#probtn").prop("disabled", "");
					$("#probtn1").prop("disabled", "");
					$("#probtn2").prop("disabled", "");
					$("#printWQP").prop("disabled", "");
					$("#lversion").prop("disabled", "");
					if(rows[0].state=="WQPYQX"){
						$("#editbtn").prop("disabled", "disabled");
					}
				} else if (rows.length > 1) {
					//修改禁止
					$("#editbtn").prop("disabled", "disabled");
					//删除恢复
					$("#delebtn").prop("disabled", "");
					$("#probtn").prop("disabled", "disabled");
					$("#probtn1").prop("disabled", "disabled");
					$("#probtn2").prop("disabled", "disabled");
					$("#lversion").prop("disabled", "disabled");
				} else {
					//两个都禁止
					$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
					$("#probtn").prop("disabled", "disabled");
					$("#probtn1").prop("disabled", "disabled");
					$("#probtn2").prop("disabled", "disabled");
					$("#lversion").prop("disabled", "disabled");
					$("#printWQP").prop("disabled", "disabled");
				}
			} else {
				//两个都禁止
				$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
				$("#probtn").prop("disabled", "disabled");
				$("#probtn1").prop("disabled", "disabled");
				$("#probtn2").prop("disabled", "disabled");
				$("#lversion").prop("disabled", "disabled");
				$("#printWQP").prop("disabled", "disabled");
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
				//模糊查询
				function btnQuery() {
			        var gjz = $("#cond").val();
			        if (gjz == "") {
			            refresh();
			        } else {
			            var data = {
			            	matchFied: "rounds,qualitynumber,edition,applyno,ticketnumber,describe,position,assigned,fj,state",
			                dicFied: "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
			                wordVal: $("#cond").val(),
			                entity: $("input[name='criteria/_entity']").val(),
			                entityName: 'criteria',
			                sfdel: true,
			                jdInfo: 'jd@' + getCookie('jdid')
			            };
			            var query = nui.decode(getKeyWordQuery(data));
			            grid.load(query);
			        }
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
								urlName:"com.cgn.itmp.weldingmanagement.qualitybiz.queryQualitys.biz.ext",//回收
								entityVal:"com.cgn.itmp.weldingmanagement.Quality.Quality",
								removeUrl:"com.cgn.itmp.weldingmanagement.common.delete.biz.ext",//删除
								recoveryUrl:"com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//恢复
								columnscode:[
									{type:"indexcolumn" },
									{type:"checkcolumn" },
									{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
									{field:"rounds",header:"大修轮次", width:100, headerAlign:"center", allowSort:true},
									{field:'qualitynumber',header:'质量计划编号', width:100, headerAlign:"center", allowSort:true},
									{field:'edition',header:'版本', width:100, headerAlign:"center", allowSort:true},
									{field:'applyno',header:'申请单号', width:100, headerAlign:"center", allowSort:true},
									{field:'ticketnumber',header:'主票号', width:100, headerAlign:"center", allowSort:true},
									{field:'describe',header:'描述', width:100, headerAlign:"center", allowSort:true},
									{field:'position',header:'功能位置', width:100, headerAlign:"center", allowSort:true},
									{field:'assigned',header:'预约焊工', width:100, headerAlign:"center", allowSort:true},
									{field:'fj',header:'  附件', width:100, headerAlign:"center", allowSort:true},
									{field:'state',header:'流程状态', width:100, headerAlign:"center", allowSort:true}
								],

								
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
							grid.reload();
						}
					});
				}
				
				function setFile(e) {
					var fileRealName = e.record.fj;
					var filepath = e.record.filepath;
					var fileId = e.record.fildid;
					var uuid=e.record.uuid;
				
					if (fileRealName == null || fileRealName == 'null') {
						return "";
					}
					var html = '<a href="javascript:void(0)" onclick="load(\'' + uuid + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
					return html;
				}
				function load(id,filename) {
					    
         		var json = nui.encode({
         						id : id,
         						filename:""
         					});
          		var message = nui.loading("正在下载,请稍侯...",'提示');
            	nui.ajax({
	                url: "com.cgn.itmp.weldingmanagement.qualitybiz.uploadpdf.biz.ext",
	                type: 'POST',
	                data: json,
	                 cache:false,
	                success: function (text) {
	                nui.hideMessageBox(message);
	                	 if(text.result != null){
	                	 
	                	 	//window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + text.result.substr(4).replace("\\", "/").split("/")[1] + "&projectPath=tempFile&loadFileName=" + text.result.substr(4).replace("\\", "/").split("/")[1]);
	                	 openDownloadDialog("<%=request.getContextPath()%>/"+text.result,text.result.substr(4));
	                	}
	                	
	                	
	                },
	                error: function (jqXHR, textStatus, errorThrown) {
	                    nui.hideMessageBox(message);
	                    nui.alert(jqXHR.responseText);
	                }
	            });
          
				}	
				//遍历所选数据
          function fordata(){
          	var data = grid.getSelecteds();
          	var list=new Array();
          	var focds="";
          	if(data){
          		for(var i=0;i<data.length;i++){
          			if(data[i].processStatus=="0"){
		          		focds+="WQP编号为["+data[i].qualitynumber+"]正在[修改]流程中<br>";
          			}
          		}
          	}
          	if(focds==""){
          		return false;
          	}else{
	          	nui.alert(focds+"请待审批结束后再进行操作", "提示");
          		return true;
          	}
          } 
          function Record(){
	          	var tabs = parent.parent.nui.get("mainTabs");
				var url="/itmp/weldingmanagement/Quality/Recordlist.jsp";
				 $(".add_adds").toggle();
				 var tab = { title: "项目记录 ", url: url, showCloseButton: true };
				  tab.ondestroy = function (action) {
			 	 	$("#editbtn").prop("disabled", "disabled");
					grid.reload();
				  };
				 
				 tab = tabs.addTab(tab);            
				 tabs.activeTab(tab);
				}
				
                            </script>
                        </body>
                    </html>
