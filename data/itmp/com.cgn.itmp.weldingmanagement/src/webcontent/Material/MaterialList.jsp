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
            	焊材管理
        </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
	<style type="text/css">
		.mini-grid-cell-inner{
			font-family: "Microsoft YaHei"!important;
    		font-size: 1.4rem!important;
		}
	</style>
</head>
<body style="background-color: #f1f1f1; width: 98%; height: 97%;">
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
					<div id="form1" class="nui-form display" align="center" style="height:110px">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.weldingmanagement.Material.Material">
                <!-- 排序字段 -->
               <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="kucunremind">
				<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
<!--                <input class="nui-hidden" name="criteria/_orderby[2]/_property" value="inventory"> -->
<!-- 				<input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc"> -->
				<input class="nui-hidden" name="criteria/_orderby[2]/_property" value="createtime">
				<input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="desc">
               <input class="nui-hidden" name="criteria/_orderby[3]/_property" value="orderno">
				<input class="nui-hidden" name="criteria/_orderby[3]/_sort" value="asc">
						
              <table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%">
					<tr>
                        <td class="form_label">
                            名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/name"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            标准:
                        </td>
                        <td colspan="1">
                            <input class="nui-dictcombobox" dictTypeId="BZ" style="width: 100%" emptyText="请选择..." name="criteria/_expr[2]/standard"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="=">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            型号:
                        </td>
                       
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/model"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            标准牌号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[4]/brand"/>
                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            规格:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[5]/specifications"/>
                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[5]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            批号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[6]/batchnumber"/>
                            <input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[6]/_likeRule" value="all">
                        </td>
                   </tr>
                    <tr>
                        <td class="form_label">
                            包装方式:
                        </td> 
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[7]/packing"/>
                            <input class="nui-hidden" name="criteria/_expr[7]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[7]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            库存数量:
                        </td>
                        <td colspan="1">
                        	<div style="display: flex">
	                            <input class="nui-combobox" emptyText="可选择.." width="20%" data="[{id:'>=','name':'>='},{id:'<','name':'<'}]" onvaluechanged="onvalueChanged" valueField="id" textField="name"/>
	                            <input class="nui-textbox" vtype="int;range:0,999999" rangeErrorText="请输入正整数" intErrorText="请输入正整数" emptyText="请输入库存数量" name="criteria/_expr[8]/inventory"/>
	                            <input class="nui-hidden" id="xzfz" name="criteria/_expr[8]/_op">
                        	</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            归属单位:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[9]/attribution"/>
                            <input class="nui-hidden" name="criteria/_expr[9]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[9]/_likeRule" value="all">
                        </td>
                        <td style="display:none;" colspan="0">
                       			<input class="nui-hidden"name="criteria/_expr[10]/isdel" value="0" /> 
								<input class="nui-hidden" name="criteria/_expr[10]/_op" value="like">
								<input class="nui-hidden" name="criteria/_expr[10]/_likeRule" value="all">
								
								<input class="nui-hidden" id="con_jdid" name="criteria/_expr[11]/jd" /> 
					            <input class="nui-hidden" name="criteria/_expr[11]/_op" value="="> 
					            <input class="nui-hidden" name="criteria/_expr[11]/_likeRule" value="end">
					            </td>
                        
                    </tr>
							</table>
					</div>
				</div>
			</div>
			
		</div>
<!-- 		<div class=""  showToolbar="false" showFooter="false"> -->
<!-- 		<div class="nui-toolbar" style="border-bottom: 0;  padding: 5px 0px;"> -->
<!-- 			<table style="width: 100%;"> -->
        <div class=""  style="width:100%;" showToolbar="false" showFooter="false" >
                        <div class="nui-toolbar" style="border-bottom: 0; padding:5px 0px;">
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
<!-- 									<span class=""></span>  -->
<%-- 									<b:message key="btn-add" /> --%>
<!-- 								</button> -->
<!-- 								<button class="btn btn-default" onclick="batchAdd()"> -->
<!-- 									<span class=""></span>  -->
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
<!-- 								<button class="btn btn-default" -->
<!-- 									type="button"  onclick="output()"> -->
<!-- 									<span class=""></span>  -->
<!-- 									<b:message key="btn-export" /> -->
<!-- 								</button> -->
								<button class="btn btn-default"
									type="button" id="recycle" onclick="recycle()">
									<span class=""></span> 
									<b:message key="btn-recycle" />
								</button>
								<button class="btn btn-default"
									type="button" disabled="disabled" id="inbtn" onclick="putin()">
									<i class=""></i>
									入库
								</button>
								<button class="btn btn-default"
									type="button" disabled="disabled" id="outbtn" onclick="out()">
									<i class=""></i>
									退库
								</button>
								<button class="btn btn-default"
									type="button" disabled="disabled" id="nobtn" onclick="no()">
									<i class=""></i>
									报废
								</button>
								<button class="btn btn-default"
									type="button" id="lend" onclick="updateStatus(1)">
									<i class=""></i>
									领用
								</button>
								<button class="btn btn-default"
									type="button" id="return" onclick="updateStatus(2)">
									<i class=""></i>
									归还
								</button>
								<button class="btn btn-default"
									type="button" id="usecondition" onclick="usecondition()">
									<i class=""></i>
									使用记录
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
            <div class="nui-fit" style="height: 100%;">
                <div id="datagrid1" dataField="materials" class="nui-datagrid" style="width:100%;height:100%;" url="com.cgn.itmp.weldingmanagement.materialbiz.queryMaterials.biz.ext" pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true" onselectionchanged="selectionChanged" allowSortColumn="false">
                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
<!--                         <div field="qrcode" headerAlign="center" width="130" renderer="renderQrcode"> -->
<!--                   二维码        -->
<!--                         </div> -->
                        
                        <div field="name" headerAlign="center" width="200" allowSort="true" renderer="renderName">
                            名称
                        </div>
                        <div field="standard" headerAlign="center" allowSort="true" renderer="bzRender">
                            标准
                        </div>
                        <div field="model" headerAlign="center" allowSort="true" >
                            型号
                        </div>
                        <div field="brand" headerAlign="center" allowSort="true" >
                            标准牌号
                        </div>
                        <div field="specifications" headerAlign="center" allowSort="true" >
                            规格
                        </div>
                        <div field="batchnumber" headerAlign="center" allowSort="true" >
                            批号
                        </div>
                        <div field="packing" headerAlign="center" allowSort="true" >
                            包装方式
                        </div>
                        <div field="inventory" headerAlign="center" allowSort="true" renderer="txrenderer">
                            库存数量
                        </div>
                        <div field="measurement" headerAlign="center" allowSort="true" >
                            计量单位
                        </div>
                        <div field="validuntil" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                            有效期至
                        </div>
                        
                        
                        <div field="attribution" headerAlign="center" allowSort="true" >
                            归属单位
                        </div>
                        <div field="minimum" headerAlign="center" allowSort="true">
                            最小库存提醒
                        </div>
                        <div field="remarks" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="jd" headerAlign="center" allowSort="true" visible="fasle">
                            基地
                        </div>
                  <div field="jz" headerAlign="center" allowSort="true" visible="fasle">
                            基组
                        </div>       
                        
                         
                           <div field="isbf" headerAlign="center" allowSort="true" renderer="bftRenderer">
                 状态    
                        </div>
                        <div field="createtime" headerAlign="center" visible="fasle">
               创建时间      
                        </div>
			</div>
		</div>
	</div>
	</div>
	</div>
	
        <script type="text/javascript">
            nui.parse();
            accessControlButton('<%=userRoleCodeList%>',16);
            var grid = nui.get("datagrid1");
            
            nui.get('con_jdid').setValue(getCookie('jdid'));
            var jdid=getCookie('jdid');
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
            
            
            function renderName(e){
			var xm=e.record.name;
			var uid=e.record._uid;
			var html='<a href="javascript:void(0)" onclick="openView('+uid+')" >' +xm+'</a>';
			return html;
		}
		function openView(uid){
			var row=grid.getRowByUID(uid);
			nui.open({
				showMaxButton: true,
					url : "/itmp/weldingmanagement/Material/MaterialForm.jsp",
					title : "数据详情",
					width : 900,
					height : 450,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "show",
							record : {
								material:row
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
            
//             公共字典转换
            function bzRender(e){
           	 	return nui.getDictText("BZ", e.value);
            }
            
            //查询大于等于或者小于
            function onvalueChanged(e){
            	var value=e.value;
            	nui.get('xzfz').setValue(value);
            }          
            function usecondition(){
				  var tabs = parent.parent.nui.get("mainTabs");
				  	var url="/itmp/weldingmanagement/Material/MaterialRecordList.jsp";
			         var tab = { title: "使用记录 ", url: url, showCloseButton: true };
			          tab.ondestroy = function (action) {
			           $("#inbtn").prop("disabled", "disabled");
							$("#outbtn").prop("disabled", "disabled");
							$("#nobtn").prop("disabled", "disabled");
						        	$("#editbtn").prop("disabled", "disabled");
							$("#delebtn").prop("disabled", "disabled");
		                	grid.reload();
              }
	         tab = tabs.addTab(tab);            
		     tabs.activeTab(tab);
				}
//             function usecondition(){
//             	nui.open({
//             	showMaxButton : true,
// 				        url: "/itmp/weldingmanagement/Material/MaterialRecordList.jsp",
// 				        title: "使用记录", 
// 				        width: '60%', height: 500,
// 				        onload: function () {//弹出页面加载完成
// 					        var iframe = this.getIFrameEl();
// 					        //var data = {type:type};//传入页面的json数据
// 					        //iframe.contentWindow.setFormData(data);
// 				        },
// 				        ondestroy: function (action) {//弹出页面关闭前
// 				        $("#inbtn").prop("disabled", "disabled");
// 					$("#outbtn").prop("disabled", "disabled");
// 					$("#nobtn").prop("disabled", "disabled");
// 				        	$("#editbtn").prop("disabled", "disabled");
// 					$("#delebtn").prop("disabled", "disabled");
// 				        	grid.reload();
// 			    		}
            	
//             	});
//             }
            
            function txrenderer(e){
            var minimum= parseInt(e.row.minimum);
            var kucun= e.value;
	            if(kucun<minimum){
	            	e.rowStyle="color:red";
	            }
	            if(kucun>=minimum){
	            	e.rowStyle="";
	            }
	            return e.value;
            }
            
            //提示
			function tankuang() {
              alert("尚未完成");
            }
            
            function updateStatus(flag){
		var massage="";
		if(flag==1){
		  massage="出借";
		}else if(flag==2){
			massage="归还";
		}
			nui.open({
						showMaxButton : true,
				        url: "/itmp/weldingmanagement/Material/MaterialLendandReturn.jsp?flag="+flag+"&entityType=com.cgn.itmp.weldingmanagement.Material.Material",
				        title: massage, 
				        width: 1000, height: 650,
				        onload: function () {//弹出页面加载完成
					        var iframe = this.getIFrameEl();
					        //var data = {type:type};//传入页面的json数据
					        //iframe.contentWindow.setFormData(data);
				        },
				        ondestroy: function (action) {//弹出页面关闭前
				        $("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
				        	$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
				        	grid.reload();
			    		}
			    	});
		} 
            //使用状态公共代码转换
				function bftRenderer(e){ 
				  
				    if(e.row.isbf=="YBF"){
						e.rowStyle = 'color:grey !important';
					}
				    	return nui.getDictText("BFBS",e.value);
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
           document.getElementById("erweima").style.width = "400px";
           document.getElementById("erweima").style.height = "400px";
           document.getElementById("erweima").style.position = "absolute";
           document.getElementById("erweima").style.background = "black";
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

            
            //入库
            function putin(){
           		var row = grid.getSelected();
           		if(row.isbf=="YBF"){
           			nui.alert("存在报废的数据，无法操作!");
           			return
           		}
                if (row) {
                    nui.open({
                    	showMaxButton : true,
                        url: "/itmp/weldingmanagement/Material/MaterialInOutandScrap.jsp",
                        title: "入库",
                        width: 250,
                        height: 200,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"in",record:{materials:row}};
                           
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                            $("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
				        	$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
                                grid.reload();
                            }
                            });
                        } else {
                            nui.alert("请选中一条记录","提示");
                        }
            } 
             //退库
            function out(){
           		var row = grid.getSelected();
           		if(row.isbf=="YBF"){
           			nui.alert("存在报废的数据，无法操作!");
           			return
           		}
                if (row) {
                    nui.open({
                    	showMaxButton : true,
                        url: "/itmp/weldingmanagement/Material/MaterialInOutandScrap.jsp",
                        title: "退库",
                        width: 250,
                        height: 200,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"out",record:{materials:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                            $("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
				        	$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
                                grid.reload();
                            }
                            });
                        } else {
                            nui.alert("请选中一条记录","提示");
                        }
            }
             //报废
            function no(){
           		var row = grid.getSelected();
           		if(row.isbf=="YBF"){
           			nui.alert("存在报废的数据，无法操作!");
           			return
           		}
           		row.isbf="ZC";
                if (row) {
                    nui.open({
                    	showMaxButton : true,
                        url: "/itmp/weldingmanagement/Material/MaterialInOutandScrap.jsp",
                        title: "报废",
                        width: 250,
                        height: 200,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"no",record:{materials:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                            $("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
				        	$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
                                grid.reload();
                            }
                            });
                        } else {
                            nui.alert("请选中一条记录","提示");
                        }
            }
            
            
            //新增
            function add() {
                nui.open({
                showMaxButton : true,
                    url: "/itmp/weldingmanagement/Material/MaterialForm.jsp",
                    title: "新增记录", width: 600, height: 310,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    $("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
				        	$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
					if(action=="addSuccess"){
						nui.showTips({content: '新增成功!',state: 'success'});
					} 
                    grid.reload();
                }
                });
            }
          //删除
            function remove1(){
                var rows = grid.getSelecteds();
                if(rows.isbf=="YBF"){
           			nui.alert("存在报废的数据，无法操作!");
           			return
           		}
                if(rows.length > 0){
                    nui.confirm("确定删除选中记录？","系统提示",
                    function(action){
                        if(action=="ok"){
                        	var json = nui.encode({data:rows,entity:"com.cgn.itmp.weldingmanagement.Material.Material",token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                            grid.loading("正在删除中,请稍等...");
                            $.ajax({
                                url:"com.cgn.itmp.weldingmanagement.common.updatedel.biz.ext",
                                type:'POST',
                                data:json,
                                cache: false,
                                contentType:'text/json',
                                success:function(text){
                                  $("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
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
             //导入生产合格证书
				function batchAddAttach(){
							nui.open({
								   showMaxButton : true,
				                    url: "/itmp/basecommon/batchAddAttach.jsp",
				                    title: "导入附件", width: 600, height: 300,
				                    onload: function () {//弹出页面加载完成
				                    	var iframe = this.getIFrameEl();
					                    var data = {
					                    	page:"HCGL",
					                    
					                    };//传入页面的json数据
					                     iframe.contentWindow.SetData(data);
				                    },
				                    ondestroy: function (action) {//弹出页面关闭前
				                    $("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
				        	$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
				                    grid.reload();
				                }
				            });
						}
		
                
//             //导出
//             function output() {
//  			if(grid.data.length==0){
// 			 	nui.alert("没有数据可以导出!");
// 			 	return;
// 			 }
//         var form = new nui.Form("#form1");
//         var json = form.getData(false, false);
//         nui
//             .open({
//                 showMaxButton: true,
//                 url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
//                 title: "导出数据",
//                 width: 400,
//                 height: 200,
//                 onload: function () {//弹出页面加载完成
//                     var iframe = this.getIFrameEl();
//                     var data = {
//                         entityName: "com.cgn.itmp.weldingmanagement.Material.Material",
//                         queryParam: json, //查询数据
//                         queryKey: 'criteria', //查询实体名
//                         query: ['name','standard', 'model', 'brand', 'specifications','batchnumber','packing','inventory','attribution','isdel','jd'], //按顺序放置
//                         //queryIndex: [1, 3, 10, 11, 12, 13],  //按顺序放置
//                         expTitle: "焊材",
//                         filterField: "uuid,isdel", //要过滤的字段，多字段用,隔开
//                         dicFieds: "",
//                         jdFieds: "jd",
//                         order: "uuid@desc",
//                         attachFied:"fildid"
//                     };//传入页面的json数据
//                     iframe.contentWindow.setFormData(data);
//                 },
//                 ondestroy: function (action) {//弹出页面关闭前
//                 $("#inbtn").prop("disabled", "disabled");
// 					$("#outbtn").prop("disabled", "disabled");
// 					$("#nobtn").prop("disabled", "disabled");
// 				        	$("#editbtn").prop("disabled", "disabled");
// 					$("#delebtn").prop("disabled", "disabled");
//                     grid.reload();
//                 }
//             });
//     }             
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
	   				nui.alert("该焊材已存在,不能导入","提示");
	   			}else{
	   				nui.open({showMaxButton : true,
			        url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
			        title: "新增记录", width: 600, height: 300,
			        onload: function () {//弹出页面加载完成
			        	var iframe = this.getIFrameEl();
			            var data = {
			            	pageType:"batchAdd",
			            	tempFileName:"hcgl.xlsx",
			            	tempLoadName:"焊材管理导入模板",
			            	entitfName:"com.cgn.itmp.weldingmanagement.Material.Material"
			            };//传入页面的json数据
			             iframe.contentWindow.SetData(data);
			        },
			        ondestroy: function (action) {//弹出页面关闭前
			        $("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
				        	$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
			        grid.reload();
			    	}
				});
	   		}
	   		}
	});
	

}

            //编辑
            function edit() {
                var row = grid.getSelected();
                if(row.isbf=="YBF"){
           			nui.alert("存在报废的数据，无法操作!");
           			return
           		}
                if (row) {
                    nui.open({
                        url: "/itmp/weldingmanagement/Material/MaterialForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 310,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{material:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                            $("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
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
                       if(rows.isbf=="YBF"){
           			nui.alert("存在报废的数据，无法操作!");
           			return
           		}
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                    
                                    var json = nui.encode({data:rows,entity:"com.cgn.itmp.weldingmanagement.Material.Material"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.weldingmanagement.common.updatedel.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                         $("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
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
//                                     nui.get("update").enable();
                                }

                                //查询
                                function searchs() {
                                    var form = new nui.Form("#form1");
                                      form.validate();
                 if(form.isValid()==false){nui.showTips({content: '请输入正确的库存数量(0-999999)',state: 'danger',x: 'center', y: 'center'});return;}
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    $("#inbtn").prop("disabled", "disabled");
								$("#outbtn").prop("disabled", "disabled");
								$("#nobtn").prop("disabled", "disabled");
							        	$("#editbtn").prop("disabled", "disabled");
								$("#delebtn").prop("disabled", "disabled");
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
                                
                                //控制修改和删除按钮
		function selectionChanged() {
		 
			var rows = grid.getSelecteds();
			if (rows) {
				
				if (rows.length == 1) {
					//两个都恢复	
					if(rows[0].isbf=='YBF'){
						$("#inbtn").prop("disabled", "disabled");
						$("#outbtn").prop("disabled", "disabled");
						$("#nobtn").prop("disabled", "disabled");
						$("#editbtn").prop("disabled", "disabled");
						$("#delebtn").prop("disabled", "disabled");
					}else{
						$("#editbtn").prop("disabled", "");
						$("#delebtn").prop("disabled", "");
						$("#inbtn").prop("disabled", "");
						$("#outbtn").prop("disabled", "");
						$("#nobtn").prop("disabled", "");
						$("#QR").prop("disabled", "");
					}
				} else if (rows.length > 1) {
					//修改禁止
					$("#editbtn").prop("disabled", "disabled");
					//删除恢复
					$("#delebtn").prop("disabled", "");
					$("#QR").prop("disabled", "");
					$("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
				} else {
					//两个都禁止
					$("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
					$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
					$("#QR").prop("disabled", "disabled");
				}
			} else {
				//两个都禁止
				$("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
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
		//模糊查询
				function btnQuery() {
			        var gjz = $("#cond").val();
			        if (gjz == "") {
			            refresh();
			        } else {
			            var data = {
			            	matchFied: "name,standard,model,batchnumber,brand,specifications,packing,measurement,attribution",
			                dicFied: "standard@BZ",
			                wordVal: $("#cond").val(),
			                entity: $("input[name='criteria/_entity']").val(),
			                entityName: 'criteria',
			                sfdel: true,
			                jdInfo: 'jd@' + getCookie('jdid')
			            };
			            var query = nui.decode(getKeyWordQuery(data));
			            query["criteria/_expr[10]/isdel"] = "0";
			            query["criteria/_expr[11]/jd"] = getCookie('jdid');
						query["criteria/_orderby[1]/_property"] = "kucunremind";
						query["criteria/_orderby[1]/_sort"] = "desc";
						query["criteria/_orderby[2]/_property"] = "createtime";
						query["criteria/_orderby[2]/_sort"] = "desc";
						query["criteria/_orderby[3]/_property"] = "orderno";
						query["criteria/_orderby[3]/_sort"] = "asc";
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
								urlName:"com.cgn.itmp.weldingmanagement.materialbiz.queryMaterials.biz.ext",//回收
								entityVal:"com.cgn.itmp.weldingmanagement.Material.Material",
								removeUrl:"com.cgn.itmp.weldingmanagement.common.delete.biz.ext",//删除
								recoveryUrl:"com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//恢复
								columnscode:[
									{type:"indexcolumn" },
									{type:"checkcolumn" },
									{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
									{field:"name",header:"名称", width:100, headerAlign:"center", allowSort:true},
									{field:'standard',header:'标准', width:100, headerAlign:"center", allowSort:true,dic:"BZ",renderer:"stateRender"},
									{field:'model',header:'型号', width:100, headerAlign:"center", allowSort:true},
									{field:'brand',header:'标准牌号', width:100, headerAlign:"center", allowSort:true},
									{field:'specifications',header:'规格', width:100, headerAlign:"center", allowSort:true},
									{field:'batchnumber',header:'批号', width:100, headerAlign:"center", allowSort:true},
									{field:'packing',header:'包装方式', width:100, headerAlign:"center", allowSort:true},
									{field:'inventory',header:'库存数量', width:100, headerAlign:"center", allowSort:true},
									{field:'measurement',header:'计量单位', width:100, headerAlign:"center", allowSort:true},
									{field:'minimum',header:'最小库存提醒', width:100, headerAlign:"center", allowSort:true},
									{field:'attribution',header:'归属单位', width:100, headerAlign:"center", allowSort:true},
									{field:'validuntil',header:'有效期至', width:100, headerAlign:"center", allowSort:true},
									{field:'remarks',header:'备注', width:100, headerAlign:"center", allowSort:true}
								],

								
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
						 $("#inbtn").prop("disabled", "disabled");
					$("#outbtn").prop("disabled", "disabled");
					$("#nobtn").prop("disabled", "disabled");
				        	$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
							grid.reload();
						}
					});
				}
				//导出二维码
				function outQR(){

			    	 var row = grid.getSelecteds();
			    	 grid.loading("正在导出中,请稍等...");
			    	 
			    var json=nui.encode({rows:row,type:"mater"});
			    	$.ajax({
					    url:"com.cgn.itmp.weldingmanagement.machinebiz.outQR.biz.ext",
					    type:'POST',
					    cache:false,
					    data:json,
					    contentType:'text/json',
					    success:function(text){
					    window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + text.data + "&projectPath=temp1&loadFileName=" + text.data);
// 					    var elemIF = document.createElement("iframe");
<%-- 			                  elemIF.src = "<%=request.getContextPath()%>/"+text.data; --%>
// 			                  elemIF.style.display = "none";
// 			                  document.body.appendChild(elemIF);
			                  grid.unmask();
			  		}
			  	});
				}
                            </script>
                        </body>
                    </html>
