<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-12 13:45:01
- Description:
    --%>
    <head>
        <title>
            	焊机管理
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	
</head>
<body style="background-color: #f1f1f1;width: 98%; height: 97%;">
    
<div class="bs-docs-section" style="height:100%;">
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
					<div id="form1" class="nui-form display" align="center" style="height: 80px">
						<!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.weldingmanagement.Machine.Machine">
<!-- 						排序字段 -->
						<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="createtime">
				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						<input class="nui-hidden" name="criteria/_orderby[2]/_property" value="orderno">
				<input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc">
						<table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%">
					<tr>
                        <td class="form_label">
                            设备编号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/number"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            设备名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/name"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            设备型号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/equipmenttype"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
                        </td>
                      
                        <td class="form_label">
                            输入电压:
                        </td>
                    
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[4]/input"/>
                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            生产厂家:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[5]/manufacturer"/>
                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[5]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            状态:
                        </td>
                        <td colspan="1">
                            <!-- <input class="nui-textbox" name="criteria/_expr[6]/state"/> -->
                             <input class="nui-dictcombobox" name="criteria/_expr[6]/state" style="width: 100%"
                            dictTypeId="HJGLZT" url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=HJGLZT" textField="dictName" valueField="dictID" emptyText="请选择"  required="false" allowInput="true" showNullItem="true" nullItemText="请选择..."/>
                            <input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[6]/_likeRule" value="all">
                        </td>
                   </tr>
                    <tr>
                        <td class="form_label">
                            所在位置:
                        </td>
                        <td colspan="1">
                            <input class="nui-dictcombobox" dictTypeId="SZWZ" name="criteria/_expr[7]/location"/>
                            <input class="nui-hidden" name="criteria/_expr[7]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[7]/_likeRule" value="all">
                        </td>
                        <td colspan="1"><input class="nui-hidden"
									name="criteria/_expr[8]/isdel" value="0" /> 
									<input class="nui-hidden" name="criteria/_expr[8]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[8]/_likeRule"
									value="all">
									<input class="nui-hidden" id="con_jdid" name="criteria/_expr[9]/jd" /> 
					            <input class="nui-hidden" name="criteria/_expr[9]/_op" value="="> 
					            <input class="nui-hidden" name="criteria/_expr[9]/_likeRule" value="end">
                        
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
        <div class=""  style="width:100%;" showToolbar="false" showFooter="false" >
            <div class="nui-toolbar" style="border-bottom: 0; padding:0px;">
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
<!-- 									<span class=""></span> -->
<%-- 									<b:message key="btn-add" /> --%>
<!-- 								</button> -->
<!-- 								<button class="btn btn-default" onclick="batchAdd()"> -->
<!-- 									<span class=""></span>  -->
<%-- 									<b:message key="btn-adds" /> --%>
<!-- 								</button> -->
								<button class="btn btn-default"
									type="button" id="batchAddAttach" onclick="batchAddAttach()">
									<span class=""></span>
									<b:message key="btn-upload" />
								</button>
								<button class="btn btn-default" onclick="edit()"
									 disabled="disabled" id="editbtn">
									<span class=""></span>
									<b:message key="btn-edit" />
								</button>
								 <!-- 						<a class="btn btn-default btn-xs" plain="true" onclick="exportDict();"><i class=" -cloud-download"></i>&nbsp导出</a> -->
								<button class="btn btn-default" onclick="remove()"
									disabled="disabled" id="delebtn">
									<span class=""></span>
									<b:message key="btn-delete" />
								</button>
								<button class="btn btn-default"
									type="button" id="export" onclick="output()">
									<span class=""></span>
									<b:message key="btn-export" />
								</button>
								<button class="btn btn-default"
									type="button" id="recycle" onclick="recycle()">
									<span class=""></span>
									<b:message key="btn-recycle" />
								</button>
								<button class="btn btn-default"
									type="button" id="lend" onclick="updateStatus(1)">
									出借
								</button>
								<button class="btn btn-default"
									type="button" id="return" onclick="updateStatus(2)">
									归还
								</button>
								<button class="btn btn-default"
									type="button" id="record" onclick="queryInfo()">
									
									使用记录
								</button>
								<button class="btn btn-default"
									type="button" id="inspection" onclick="updateStatus(3)">
									
									送检
								</button>
								<button class="btn btn-default"
									type="button" id="repair" onclick="updateStatus(4)">
									
									送修
								</button>
								<button class="btn btn-default"
									type="button" id="updateStatus" onclick="updateStatus(5)">
									
									报废
								</button>
								<button class="btn btn-default"
									type="button" onclick="reminder()">
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
				</table>
				</div>
				
				<div id="erweima" style="display:none"></div>
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="machines"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.weldingmanagement.machinebiz.queryMachines.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
<!--                         <div field="qrcode" headerAlign="center" width="130" visible="false" renderer="renderQrcode" > -->
<!--                            二维码 -->
<!--                         </div> -->

                        <div field="number" headerAlign="center" allowSort="true"  renderer="renderNumber">
                            设备编号
                        </div>
                        <div field="name" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="equipmenttype" headerAlign="center" allowSort="true" >
                            设备型号
                        </div>
                        <div field="input" headerAlign="center" allowSort="true" >
                            输入电压
                        </div>
                        <div field="currentrange" headerAlign="center" allowSort="true" >
                            电流调节范围
                        </div>
                        <div field="manufacturer" headerAlign="center" allowSort="true" >
                            生产厂家
                        </div>
                        
                        <div field="verification" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            检定有效期
                        </div>
                        <div field="state" headerAlign="center" allowSort="true" renderer="syztRenderer">
                            状态
                        </div>
                        <div field="location" headerAlign="center" allowSort="true" renderer="szwzRenderer">
                            所在位置
                        </div>
                         <div field="certificate" headerAlign="center"  renderer="setFile" width="130">
                            设备合格证明书
                        </div>
                        <div field="remark" headerAlign="center" width="130" >
                           备注
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            accessControlButton('<%=userRoleCodeList%>',15);
            var grid = nui.get("datagrid1");
            nui.get('con_jdid').setValue(getCookie('jdid'));
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);

			function renderNumber(e){
			var xm=e.record.number;
			var uid=e.record._uid;
			var html='<a href="javascript:void(0)" onclick="openView('+uid+')" >' +xm+'</a>';
			return html;
		}
		function openView(uid){
			var row=grid.getRowByUID(uid);
			nui.open({
				showMaxButton: true,
					url : "/itmp/weldingmanagement/Machine/MachineForm.jsp",
					title : "数据详情",
					width : 900,
					height : 350,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "show",
							record : {
								machine:row
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



			
			//二维码图片渲染
            function renderQrcode(e){
            	if(e.record.qrcode!= null && e.record.qrcode != ""){
            		return "<div><img onmousemove='imgHover(this)' onmouseout='imgOut(this)' width='40px' height='40px' src='<%=request.getContextPath()%>/coframe/tools/preview.jsp?remoteFile="+e.record.qrcode+"' /></div>";
            	}
            }
            
             //鼠标移入放大
           function imgHover(e){
           var a=e;
           document.getElementById("erweima").innerHTML="<img  width='400px' height='400px' src='"+e.src+"' />";
           document.getElementById("erweima").style.width = "350px";
           document.getElementById("erweima").style.height = "350px";
           document.getElementById("erweima").style.background = "#fff";
           document.getElementById("erweima").style.position = "absolute";
           document.getElementById("erweima").style.zIndex = "99";
           document.getElementById("erweima").style.margin = "0 40% 0 40%";
           document.getElementById("erweima").style.display="block";
           }
           
           //鼠标移出缩小
           function imgOut(e){
           		document.getElementById("erweima").style.width = "0px";
           		document.getElementById("erweima").style.height = "0px";
           		document.getElementById("erweima").style.display="none";
           }	

			
			//使用状态公共代码转换
				function syztRenderer(e){			    
				    if(e.row.state=="YBF"){
						e.rowStyle = 'color:red';
					}
				    	return nui.getDictText("HJGLZT",e.value);
				    }
				function szwzRenderer(e){
				
					return nui.getDictText("SZWZ",e.value);
				}
	//1、出借  2、归还
		function updateStatus(flag){
		var massage="";
		if(flag==1){
		  massage="出借";
		}else if(flag==2){
			massage="归还";
		}else if(flag==3){
			message="送检";
		}else if(flag==4){
			message="送修";
		}else if(flag==5){
			message="报废";
		}
			nui.open({
						showMaxButton : true,
				        url: "/itmp/weldingmanagement/Machine/MachinesLendandReturn.jsp?flag="+flag+"&entityType=com.cgn.itmp.weldingmanagement.Machine.Machine",
				        title: massage, 
				        width: 1000, height: 650,
				        onload: function () {//弹出页面加载完成
					        var iframe = this.getIFrameEl();
					        //var data = {type:type};//传入页面的json数据
					        //iframe.contentWindow.setFormData(data);
				        },
				        ondestroy: function (action) {//弹出页面关闭前
				        $("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
				        	grid.reload();
			    		}
			    	});
		} 
		
		function queryInfo(){
		var tabs = parent.parent.nui.get("mainTabs");
				  	var url="/itmp/weldingmanagement/MachineRecord/WelderuserrecordList.jsp";
			         var tab = { title: "焊机使用记录 ", url: url, showCloseButton: true };
			          tab.ondestroy = function (action) {
			          		$("#editbtn").prop("disabled", "disabled");
							$("#delebtn").prop("disabled", "disabled");
		                	grid.reload();
              }
	         tab = tabs.addTab(tab);            
		     tabs.activeTab(tab);
				}
// 			nui.open({
// 						showMaxButton : true,
// 				       /*  url: "/itmp/weldingmanagement/Machine/MachineHandleInfo.jsp?flag="+flag+"&entityType=com.cgn.itmp.weldingmanagement.Machine.Machine", */
// 				       	url:"/itmp/weldingmanagement/MachineRecord/WelderuserrecordList.jsp",
// 				        width: 1300, height: 550,
// 				        onload: function () {//弹出页面加载完成
// 					        var iframe = this.getIFrameEl();
// 					        //var data = {type:type};//传入页面的json数据
// 					        //iframe.contentWindow.setFormData(data);
// 				        },
// 				        ondestroy: function (action) {//弹出页面关闭前
// 				        $("#editbtn").prop("disabled", "disabled");
// 				$("#delebtn").prop("disabled", "disabled");
// 				        	grid.reload();
// 			    		}
// 			    	});
		
// 		}

            //新增
            function add() {
                nui.open({
                showMaxButton: true,
                    url: "/itmp/weldingmanagement/Machine/MachineForm.jsp",
                    title: "新增记录", width: 620, height: 350,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
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
                    nui.open({
                    showMaxButton: true,
                        url: "/itmp/weldingmanagement/Machine/MachineForm.jsp",
                        title: "编辑数据",
                        width: 620,
                        height: 350,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{machine:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                            $("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
				if(action=="updateSuccess"){
						nui.showTips({content: '修改成功!',state: 'success'});
					}
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
                                    var json = nui.encode({data:rows,entity:"com.cgn.itmp.weldingmanagement.Machine.Machine",token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.weldingmanagement.weldingassessmentbiz.updatedel.biz.ext",
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
                                function refresh(){
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    //nui.get("update").enable();
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
									nui.get('con_jdid').setValue(getCookie('jdid'));
								}

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    searchs();
                                }

                                //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                    if(rows.length>1){
                                        nui.get("update").disable();
                                    }else{
                                        nui.get("update").enable();
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
                	 //导入生产合格证书
				function batchAddAttach(){
							nui.open({
								   showMaxButton : true,
				                    url: "/itmp/basecommon/batchAddAttach.jsp",
				                    title: "导入附件", width: 600, height: 300,
				                    onload: function () {//弹出页面加载完成
				                    	var iframe = this.getIFrameEl();
					                    var data = {
					                    	page:"HJGL",
					                    
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
		
                
                
                		//导入
function batchAdd(){
	 var data = {};
	 data.modelFlag = "4";
	 
	 data.jdid = getCookie('jdid');
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
	   				nui.alert("该焊机已存在,不能导入","提示");
	   			}else{
	   				nui.open({showMaxButton : true,
			        url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
			        title: "新增记录", width: 600, height: 300,
			        onload: function () {//弹出页面加载完成
			        	var iframe = this.getIFrameEl();
			            var data = {
			            	pageType:"batchAdd",
			            	tempFileName:"hjgl.xlsx",
			            	tempLoadName:"焊机管理导入模板",
			            	entitfName:"com.cgn.itmp.weldingmanagement.Machine.Machine"
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
							//导出
	function output() {
 if(grid.data.length==0){
		 	nui.alert("没有数据可以导出!");
		 	return;
		 }
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        nui
            .open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiledAndAttachMultiple.jsp",
                title: "导出数据",
                width: 578,
                height: 264,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.weldingmanagement.Machine.Machine",
                        queryParam: json, //查询数据
                        queryKey: 'criteria', //查询实体名
                        query: ['number', 'name', 'equipmenttype', 'input', 'manufacturer','state','location','isdel',"jd"], //按顺序放置
                        //queryIndex: [1, 3, 10, 11, 12, 13],  //按顺序放置
                        expTitle: "焊机管理",
                        filterField: ['isdel','borrowperson','borrowunit','borrowtime','jd','inspectiontime','inspectionperson','returnunit','returnperson','returntime','maintenanceperson',
                        'maintenancetime','operator','operatingtime','orderno','qrcode','fileid','createtime','uuid','inserttime','locations','deletetime','deleteperson'], //要过滤的字段，多字段用,隔开
                        dicFieds: "state@HJGLZT,location@SZWZ",
                        jdFieds: "jd",
                        order: "createtime@desc,orderno@asc",
                        attachFied:"fileid@certificate",
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
    
    //控制修改和删除按钮
		function selectionChanged() {
			var rows = grid.getSelecteds();
			if (rows) {
				if (rows.length == 1) {
					//两个都恢复
					$("#editbtn").prop("disabled", "");
					$("#delebtn").prop("disabled", "");
					$("#QR").prop("disabled", "");
				} else if (rows.length > 1) {
					//修改禁止
					$("#editbtn").prop("disabled", "disabled");
					$("#QR").prop("disabled", "");
					//删除恢复
					$("#delebtn").prop("disabled", "");
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
			                matchFied: "number,name,equipmenttype,input,currentrange,manufacturer,certificate,verification,state,location",
			                dicFied: "state@HJGLZT,location@SZWZ",
			                wordVal: $("#cond").val(),
			                entity: $("input[name='criteria/_entity']").val(),
			                entityName: 'criteria',
			                sfdel: true,
			                jdInfo: 'jd@' + getCookie('jdid')
			            };
			            var query = nui.decode(getKeyWordQuery(data));
			            query["criteria/_expr[8]/isdel"] = "0";
						query["criteria/_expr[9]/jd"] = getCookie('jdid');
						query["criteria/_orderby[1]/_property"] = "createtime";
						query["criteria/_orderby[1]/_sort"] = "desc";
						query["criteria/_orderby[2]/_property"] = "orderno";
						query["criteria/_orderby[2]/_sort"] = "asc";
			            grid.load(query);
			        }
			    }
				//回收站
				function recycle () {
					nui.open({
					showMaxButton: true,
						url : "/itmp/common/recyclebin/recyclebinattachMachine.jsp",
						title : "回收站",
						width : 1000,
						height : 570,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								pageType : "recyclebin",
								urlName:"com.cgn.itmp.weldingmanagement.machinebiz.queryMachines.biz.ext",//回收
								entityVal:"com.cgn.itmp.weldingmanagement.Machine.Machine",
								removeUrl:"com.cgn.itmp.weldingmanagement.common.delete.biz.ext",//删除
								recoveryUrl:"com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//恢复
								columnscode:[
									{type:"indexcolumn" },
									{type:"checkcolumn" },
									{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
									{field:"number",header:"设备编号", width:100, headerAlign:"center", allowSort:true},
									{field:'name',header:'设备名称', width:100, headerAlign:"center", allowSort:true},
									{field:'equipmenttype',header:'设备型号', width:100, headerAlign:"center", allowSort:true},
									{field:'input',header:'输入电压', width:100, headerAlign:"center", allowSort:true},
									{field:'currentrange',header:'电流调节范围', width:100, headerAlign:"center", allowSort:true},
									{field:'manufacturer',header:'生产厂家', width:100, headerAlign:"center", allowSort:true},
									{field:'certificate',header:' 设备合格证明书', width:100, headerAlign:"center", allowSort:true,renderer:"setFile"},
									{field:'verification',header:'检定有效期', width:100, headerAlign:"center", allowSort:true,dateFormat:"yyyy-MM-dd",renderer:"timeRenderer"},
									{field:'state',header:'状态',width:100, headerAlign:"center", allowSort:true,dic:"HJGLZT",renderer:"stateRender"},
									{field:'location',header:'所在位置', width:100, headerAlign:"center", allowSort:true,dic:"SZWZ",renderer:"xbRenderer"},
									{field:'remark',header:'备注', width:100, headerAlign:"center", allowSort:true},
								],

								
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
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
                            	var json = nui.encode({data:rows,entity:"com.cgn.itmp.weldingmanagement.Machine.Machine"});
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
            	function reminder(){
            		var data = {
        					pageType : "Mac",
        					urlName:"com.cgn.itmp.dailyandoverhaul.authorization.Common.checkqueryAll.biz.ext",//查询语句
        					entityVal:"",
        					removeUrl:"com.cgn.itmp.weldingmanagement.common.delete.biz.ext",//
        					recoveryUrl:"com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//
        					columnscode:[
        						{type:"indexcolumn" },
        						{type:"checkcolumn" },
        						{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
        						{field:"number",header:"设备编号", width:100, headerAlign:"center", allowSort:true },
        						{field:'name',header:'设备名称', width:100, headerAlign:"center", allowSort:true},
        						{field:'equipmenttype',header:'设备型号', width:100, headerAlign:"center", allowSort:true},
        						{field:'input',header:'输入电压', width:100, headerAlign:"center", allowSort:true},
        						{field:'currentrange',header:'电流调节范围', width:100, headerAlign:"center", allowSort:true},
        						{field:'manufacturer',header:'生产厂家', width:100, headerAlign:"center", allowSort:true},
        						{field:'certificate',header:'生产合格证明书', width:100, headerAlign:"center", allowSort:true},
        						{field:'verification',header:'检定有效期', width:100, headerAlign:"center", dateFormat:"yyyy-MM-dd",renderer:"timeRenderer"},
        						{field:'state',header:'状态', width:100, headerAlign:"center", allowSort:true,dic:"HJGLZT",renderer:"xbRenderer"},
        						{field:'location',header:'所在位置', width:100, headerAlign:"center", allowSort:true,dic:"SZWZ",renderer:"xbRenderer"}
        						
        					],
        				};
        		
            		addTab("","到期提醒","/itmp/authorization/Common/ReminderList.jsp?fildname=dqtx",data);
            	}
function setFile(e) {
	var fileRealName = e.record.certificate;
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
function addTab(position,type,url,data) {
    var tabs = parent.parent.nui.get("mainTabs");
    var tab = { title: type, url: url, showCloseButton: true};
    tab.onload = function (e) {
       var iframe = tabs.getTabIFrameEl(e.tab);
       iframe.contentWindow.setData(data);
     }
    tab = tabs.addTab(tab);            
    tabs.activeTab(tab);
}
function outQR(){

	 var row = grid.getSelecteds();
	 
	 var json=nui.encode({rows:row,type:"machine"});
	 grid.loading("正在导出中,请稍等...");
 	$.ajax({
		    url:"com.cgn.itmp.weldingmanagement.machinebiz.outQR.biz.ext",
	    type:'POST',
	    cache:false,
	    data:json,
	    contentType:'text/json',
	    success:function(text){
	    	grid.unmask();
	    	window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + text.data + "&projectPath=temp1&loadFileName=" + text.data);
// 	    var elemIF = document.createElement("iframe");
<%--              elemIF.src = "<%=request.getContextPath()%>/"+text.data; --%>
//              elemIF.style.display = "none";
//              document.body.appendChild(elemIF);
		}
	});
}
				
                            </script>
                        </body>
                    </html>
