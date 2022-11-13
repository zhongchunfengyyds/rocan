
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserObject user = (UserObject) request.getSession().getAttribute("userObject");
	String userName = user.getUserRealName();
	String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%><html>
<%--
- Author(s): Administrator
- Date: 2019-01-07 13:46:43
- Description:
    --%>
<head>

<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%= request.getContextPath()%>/common/common.js"
	type="text/javascript"></script>
<script src="<%= request.getContextPath() %>/common/nui/nui.js"
	type="text/javascript"> </script>
<script type="text/javascript"
	src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
<script type="text/javascript"
	src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/themes/cuc/skin.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<body
	style="background-color: #f1f1f1; width: 98%; height: 100%; margin: 0 auto;">
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
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()"> 模糊查询 </a> 
									<a id="allQuery" style="display: none" class="btn btn-default" onclick="searchs()"> 查询 </a> 
									<a class="btn btn-default" onclick="reset()"> 重置 </a>
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
				<div id="form1" class="nui-form display" align="center" style="height: 54px">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.DefectNoticeManagementSearch">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">机组状态：</td>
							<td colspan="1"><input class="nui-dictcombobox"
									dictTypeId="NBJY_JZSTATU" name="criteria/_expr[1]/jzstatu" />
								<input class="nui-hidden" name="criteria/_expr[1]/_op" value="=">
								<input class="nui-hidden" name="criteria/_expr[1]/_likeRule"
									value="all"></td>
							<td class="form_label">缺陷通知单号：</td>
							<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[2]/qxtzdh" /> <input class="nui-hidden"
									name="criteria/_expr[2]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
						</tr>
						<tr>
							<td class="form_label">功能位置：</td>
							<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[3]/gnwz" /> <input class="nui-hidden"
									name="criteria/_expr[3]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[3]/_likeRule"
									value="all"></td>
							<td class="form_label"></td>
							<td colspan="1"></td>
						</tr>
					</table>
					<input class="nui-hidden" name="criteria/_expr[4]/isdelete"
									value="0" /> <input class="nui-hidden"
									name="criteria/_expr[4]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[4]/_likeRule"
									value="end"> <input class="nui-hidden" id="con_jdid"
									name="criteria/_expr[5]/jdid" /> <input class="nui-hidden"
									name="criteria/_expr[5]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[5]/_likeRule"
									value="end">
									 <input class="nui-hidden" name="criteria/_orderby[6]/_property" value="orderindex">
									 <input class="nui-hidden" name="criteria/_orderby[6]/_sort" value="desc">
				</div>
				
			</div>

		</div>
	</div>
</div>
					<!-- </div>
					<div class="row">
						<div class="col-sm-12"> -->
							<!-- <div class="col-sm-3 input-control  form-inline" style="float:right;">
								<a class="nui-button btn btn-default btn-xs" onclick="searchs()">
									<span class="fa fa-search"></span>查询
								</a> <a class="nui-button btn btn-default btn-xs" onclick="reset()">
									<span class="fa fa-rotate-left"></span>重置
								</a> <input class="nui-hidden" name="criteria/_expr[4]/isdelete"
									value="0" /> <input class="nui-hidden"
									name="criteria/_expr[4]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[4]/_likeRule"
									value="end"> <input class="nui-hidden" id="con_jdid"
									name="criteria/_expr[5]/jdid" /> <input class="nui-hidden"
									name="criteria/_expr[5]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[5]/_likeRule"
									value="end">
									 <input class="nui-hidden" name="criteria/_orderby[6]/_property" value="orderindex">
									 <input class="nui-hidden" name="criteria/_orderby[6]/_sort" value="desc">
							</div> -->
						<!-- </div>
					</div> -->
				
	<div region="center" style="width: 100%; height: 92%;"
		showToolbar="false" showFooter="false">
		<div class="nui-toolbar" style="border-bottom:0;padding:0px;" name="ITMP_btn">
			<table style="width:100%;">
				<tr>
					<td style="width:100%;padding:5px 0;">

						<button id="addallbut" style="position: relative;" class="btn btn-default"
							onclick="openAllAdd()">
							新增
						</button>
						<ul id="popupMenu" class="add_adds nui-menu">
							<li onclick="add()">单条新增</li>
							<li onclick="batchAdd()">批量新增</li>
						</ul>
						<a id="update" class="nui-button showCellTooltip btn btn-default btn-xs" onclick="edit()" name="ITMP_btnEdit" >
							修改
						</a>
						<a class="nui-button btn btn-default btn-xs"  onclick="remove2()" name="ITMP_btnDel" >
							删除
						</a>
						<a class="nui-button btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp">
							导出</a>

						<a class="nui-button btn btn-default btn-xs" onclick="recycle()" name="ITMP_btnRec" >
							回收站
						</a>
					</td>
				</tr>
			</table>
		</div>
		<div class="nui-fit">
			<div id="datagrid1" dataField="tddxglqxgls" class="nui-datagrid"
				style="width: 100%; height: 100%;"
				url="com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.queryTdDxglQxgls.biz.ext"
				pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" allowAlternating="true"
				multiSelect="true" onselectionchanged="selectionChanged"
				allowSortColumn="true" sortMode="client">
				<div property="columns">
				 
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true"
						visible="false">uuid</div>
					<div field="jdid" headerAlign="center" allowSort="true"
						visible="false">基地</div>
					<div field="dxlc" headerAlign="center" 
						allowSort="true">大修轮次</div>
					<div field="jzstatu" headerAlign="center" renderer="jzztRenderer"
						allowSort="true">机组状态</div>
					<div field="gdh" headerAlign="center" allowSort="true">工单号</div>
					<div field="gznr" headerAlign="center" allowSort="true">工作内容</div>
					<div field="qxtzdh" renderer="setdanhao" headerAlign="center"
						allowSort="true">缺陷通知单号</div>
					<div field="title" headerAlign="center" allowSort="true">标题</div>
					<div field="xh" headerAlign="center" allowSort="true">请求条件</div>
					
					<div field="gnwz" headerAlign="center" allowSort="true">功能位置</div>
					<div field="tzdms" headerAlign="center" allowSort="true">
						通知单描述</div>
						<div field="tzdrq" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
						通知单日期</div>
					<div field="statu" headerAlign="center" allowSort="true" renderer="getqxstatus">状态</div>
					<div field="zrbm" headerAlign="center" allowSort="true">
						责任部门</div>
					<div field="yhstatu" headerAlign="center" allowSort="true" visible="false">
						用户状态</div>
					<div field="upduser" headerAlign="center" allowSort="true"
						visible="false">修改人</div>
					<div field="updtime" headerAlign="center" allowSort="true"
						visible="false">修改时间</div>
						<div field="updtime" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="isdelete" headerAlign="center" allowSort="true"
						visible="false">删除标志</div>
				</div>
			</div>
		</div>
		<!-- <a href = "#" onclick ="showdetail()">点击</a> -->
	</div>
	<script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
            var jdid= getCookie('jdid')	;
            var fileName = "";
            var filePath = "";
            nui.get('con_jdid').setValue(jdid);
			nui.get("update").disable();
             if(jdid!=null && jdid!=""){
				 //按钮权限控制
				 accessControlButton('<%=userRoleCodeList %>',3);
				 var formData = new nui.Form("#form1").getData(false,false);
	            grid.load(formData);
            }
            
            function test(){
             edit();
            }
            function getqxstatus(e){
            	return nui.getDictText("QXSTATUS",e.value);
            }
            		//机组状态
            function jzztRenderer(e){
				return nui.getDictText("NBJY_JZSTATU",e.value);
			}
            //添加超链接
           function setdanhao(e){
          	return "&nbsp;&nbsp;<a style='color:blue;' href='javascript:showdetail()'>"+e.record.qxtzdh+"</a>";
           } 
			 function output(){
                var form = new nui.Form("#form1");
                var json = form.getData(false,false);
                nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据", width: 450, height: 400,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                            entityName:"com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.DefectNoticeManagementSearch",
                            queryParam:json,								    //查询数据
                            queryKey:'criteria',                              //查询实体名
                            query:['jzstatu','qxtzdh','gnwz','isdelete','jdid','updtime'],  //按顺序放置
                            filterField:['addtime','jzid','orderindex','uuid','isdelete','updtime','upduser','zrren','cljg','jtms','name','tzdlx','bgz','gzzxgc','yhstatu'],
                            expTitle:"缺陷通知单管理",
                            dicFieds : "jzstatu@NBJY_JZSTATU,statu@QXSTATUS",
                            jdFieds:"jdid",
                        	jzFieds:"jzid",
                        	order:"orderindex@desc"
                    };//传入页面的json数据
                        iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                            grid.reload();
                    }
                });
             }	
             
               //关键字查询
            function btnQuery(){
				var gjz=$("#cond").val();
				if(gjz==""){
					refresh();
					nui.get("update").disable();
				}else{
					 var data = {
					 	 matchFied :"xh,gdh,gznr,qxtzdh,title,tzdlx,gnwz,tzdms,bgz,gzzxgc,yhstatu,upduser",
					 	 dicFied : "jzstatu@NBJY_JZSTATU,statu@QXSTATUS",
						 wordVal : $("#cond").val(),
						 entity  : $("input[name='criteria/_entity']").val(),
						 entityName : 'criteria',
						 sfdel : true,
						 jdInfo:'jdid@'+ getCookie('jdid')
					 } 
					 var query = nui.decode(getKeyWordQuery(data));
				
					 grid.load(query);
					 nui.get("update").disable();
				 }
			
			}
			function jzRender(e){
				return e.row.name;
				
				}	
            //新增
            function add() {
                nui.open({showMaxButton : true,//http://127.0.0.1:8080/itmp/dxgcgl/quexiancontroller/TdDxglQxglForm.jsp
                    url: "/itmp/overhaul/DefectNoticeManagement/DefectNoticeManagementForm.jsp",
                    title: "新增记录", width: 620, height: 430,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
                });
            }
            //批量添加
			function batchAdd(){
			 nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
                    title: "新增记录", width: 600, height: 300,
                    onload: function () {//弹出页面加载完成
                    	var iframe = this.getIFrameEl();
	                    var data = {
	                    	pageType:"batchAdd",
	                    	tempFileName:"dxqxtzdImport.xlsx",
	                    	tempLoadName :"缺陷通知单管理导入模板",
	                    	entitfName:"com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.DefectNoticeManagement"
	                    };//传入页面的json数据
	                     iframe.contentWindow.SetData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
            });
		}
            
          //超链接页面  
            function showdetail() {
                var row = grid.getSelected();      
                if (row) {
                    nui.open({showMaxButton : true,
                        url: "/itmp/overhaul/DefectNoticeManagement/DefectNoticeManagementLink.jsp",
                        title: "数据详情",
                        width: 600,
                        height: 300,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{tddxglqxgl:row}};
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
            
            
            

            //编辑
            function edit() {
                var row = grid.getSelected();
                if (row) {
                    nui.open({showMaxButton : true,
                        url: "/itmp/overhaul/DefectNoticeManagement/DefectNoticeManagementForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 430,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{tddxglqxgl:row}};
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
                    
                     
            //回收站页面
            function recycle() {
                nui.open({showMaxButton : true,//http://127.0.0.1:8080/itmp/dxgcgl/quexiancontroller/HuiShouTdDxglQxglList.jsp
                    url: "/itmp/overhaul/DefectNoticeManagement/DefectNoticeManagementRecycle.jsp",
                    title: "回收站", width:1000, height: 500,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
                });
            }
            
             //逻辑删除
                    function remove2(){                 
                         var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tddxglqxgls:rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({//com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.LogicDeleteTdDxglQxgls
                                        url:"com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.LogicDeleteTdDxglQxgls.biz.ext",
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

                    //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({tddxglqxgls:rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.overhaul.DefectNoticeManagement.deleteTdDxglQxgls.biz.ext",
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
                                    nui.get("update").disable();
                                }

                                  //重置查询条件
                                function reset(){
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
                                     if(rows.length>1  || grid.isEditing()||rows.length==0){
                                        nui.get("update").disable();
                                    }else{
                                        nui.get("update").enable();
                                    }
                                }
                                						//高级搜索按钮
function showquery() {
	var div = $("#form1");
	div.slideToggle(500);
	$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
	if($("#scbt").text()=="高级查询"){
		$("#fuzzyQuery").hide();
		$("#allQuery").show();
		$("#scbt").text("隐藏查询条件");
	}else{
		$("#fuzzyQuery").show();
		$("#allQuery").hide();
		$("#scbt").text("高级查询");
	}
};
//打开新增按钮
function openAllAdd(){
	$(".add_adds").toggle();
};
document.onclick = function (e) {
    //判断点击的地方是否为“更多”按钮和弹出层是否显示
	    if(!$(e.target).is("#addallbut")&&$(".add_adds").is(":visible")==true){
	        $(".add_adds").toggle();
	    }
 };
  //重置查询条件
    function reset() {
        var form = new nui.Form("#form1");//将普通form转为nui的form
        form.reset();
        $('#cond').val("");
        nui.get('con_jdid').setValue(getCookie('jdid'));
    }
                            </script>
</body>
</html>
