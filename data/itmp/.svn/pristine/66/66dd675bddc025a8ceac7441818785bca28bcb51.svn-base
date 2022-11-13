<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><%
	UserObject user=(UserObject)request.getSession().getAttribute("userObject");
	String userName=user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
	 String flag=request.getParameter("flag"); //页面来源，1：来源于容器基本信息页面
	  String gnwz=request.getParameter("gnwz");  //功能位置
 %>
 <%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): ASUS
- Date: 2018-12-25 15:44:32
- Description:
    --%>
    <head>
        <title>
            TSD标准库
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/common/nui/nui.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>  
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
    </head>
    <body style="background-color:#f1f1f1;width:98%;height:100%;margin:0 auto;">

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
				<div id="form1" class="nui-form display" align="center" style="height:27px">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.vessel.TsdStandardLibrary.TsdStandardLibrarySearch">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">功能位置：</td>
							<td colspan="1"><input id="gnwz" class="nui-textbox" name="criteria/_expr[1]/gnwz"/>
                    <input class="nui-hidden" name="criteria/_expr[1]/_op" value="=">
                    <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all"></td>
							<td class="form_label"></td>
							<td colspan="1"></td>
						</tr>
						
					</table>
					<input id="isdelete" class="nui-hidden" name="criteria/_expr[2]/isdelete" value="0"/>
		            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="=">
		            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
		            <input class="nui-hidden" id="con_jdid" name="criteria/_expr[3]/jd" /> 
		            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="="> 
		            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="end">
		            
		            <input class="nui-hidden" name="criteria/_orderby[4]/_property" value="orderindex">
					<input class="nui-hidden" name="criteria/_orderby[4]/_sort" value="desc"> 
				</div>
			</div>
		</div>
	</div>
</div>


                 
        <!-- <div class="row">
            <div class="col-sm-12">
                <div class="form-group text-right">
                    <a class="nui-button btn btn-default btn-xs" onclick="search()">
                <span class="fa fa-search"></span>查询
            </a>
            <a class="nui-button btn btn-default btn-xs" onclick="reset()">
                <span class="fa fa-rotate-left"></span>重置
            </a>
                </div>
            </div>
        </div> -->
    </div>
    
    <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
</div>


        <!--footer-->
 <!--        <div property="footer" align="center">
            <a class="nui-button" onclick="search()">
                查询
            </a>
            <a class="nui-button" onclick="reset()">
                重置
            </a>
        </div> -->
        <div region="center"   style="width:100%;height:93%;" showToolbar="false" showFooter="false">
        <!--  <div class="nui-panel"style="width:100%;height:100%;" showToolbar="false" showFooter="false" > -->
            <div id="div2" class="nui-toolbar" style="border-bottom:0;padding:0px;" name="ITMP_btn">
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
<!--              				<a class="nui-menubutton btn btn-default btn-xs" menu="#popupMenu" >新增</a> -->
<!-- 					    <ul id="popupMenu" class="nui-menu" style="display:none;"> -->
<!-- 					        <li> -->
<!-- 							 <li   onclick="add()">单条增加</li>	 -->
<!-- 							 <li   onclick="batchAdd()">批量增加</li> -->
<!-- 						 </ul>         -->
                            <a id="update" class="nui-button showCellTooltip btn btn-default btn-xs" onclick="edit()">
                                	修改
                            </a>                       
                            <a class="nui-button btn btn-default btn-xs" onclick="output()">
                                 	导出
                            </a>                           
                            <a class="nui-button btn btn-default btn-xs"  onclick="remove()">
                               删除
                            </a>
                            <a class="nui-button btn btn-default btn-xs"  onclick="recycle()">
                                	回收站
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdxglsysytsdinfos"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.dailyandoverhaul.vessel.TsdStandardLibrary.queryTDxglSysyTsdinfos.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="true"
                        sortMode="client"
                        allowAlternating="true"
                        >

                    <div property="columns">
                        
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>                    
		          		<div field="jzname" headerAlign="center" allowSort="true" renderer="JZRenderer" >
		                        机组
		                 </div>
		                 <div field="gnwz" headerAlign="center" allowSort="true" >
		                         功能位置
		                 </div>
		                 <div field="js" headerAlign="center" allowSort="true" >
		                         进水
		                  </div>
		                  <div field="pq" headerAlign="center" allowSort="true" >
		                         排气
		                   </div>
		                   <div field="fd" headerAlign="center" allowSort="true" >
		                           封堵
		                   </div>
		                   <div field="tp" headerAlign="center" allowSort="true" renderer="setFileTP" >
		                            图片
		                  </div>
		                   <div field="tz" headerAlign="center" allowSort="true"  renderer="setFileTZ">
		                            图纸
		                    </div>
		                    <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
		                           是否删除
		                    </div>
		                    <div field="delUser" headerAlign="center" allowSort="true" visible="false" value="<%=userName %>"
		                    >
		                       删除人
		                    </div>
		                    <div field="delTime" headerAlign="center" allowSort="true" visible="false">
		                           删除时间
		                    </div>
		                      <div field="addtime" headerAlign="center" allowSort="true" visible="false">
		                           
		                    </div>
                    </div>
                </div>
                </div>
        		</div>
        	
			
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");

            //按钮权限控制
            accessControlButton('<%=userRoleCodeList %>',4);

            nui.get("update").disable();
			/******   Tip提示 组件初始化 Start   *******/            
			var tip = new nui.ToolTip();
			tip.set({
				target: document,
				selector: '.showCellTooltip',   //要添加提示元素的calss
				placement:'topleft',              //提示出现的位置 
				onbeforeopen: function (e) {    
					e.cancel = false;
				},
				onopen: function (e) {      //提示框打开触发事件
				 tip.setContent("请选择需要修改的数据");  //给提示框内容添加值
				} 
			});
			  function batchAdd(){
					 nui.open({showMaxButton : true,
		                    url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
		                    title: "新增记录", width: 600, height: 300,
		                    onload: function () {//弹出页面加载完成
		                    	var iframe = this.getIFrameEl();
			                    var data = {
			                    	pageType:"batchAdd",
			                    	tempFileName:"rqsysyTsdbzImport.xlsx",
			                    	tempLoadName:"TSD标准库导入模板",
			                    	entitfName:"com.cgn.itmp.dailyandoverhaul.vessel.TsdStandardLibrary.TsdStandardLibrary"
			                    };//传入页面的json数据
			                     iframe.contentWindow.SetData(data);
		                    },
		                    ondestroy: function (action) {//弹出页面关闭前
		                    grid.reload();
		                }
	                });
				}               
			/******   Tip提示  End   *******/
			//如果是从容器基本信息页面跳转，则根据功能位置加载
			 nui.get("update").disable();
            var jdid=getCookie('jdid');
           	if(jdid!=null && jdid!=""){
           		nui.get('con_jdid').setValue(jdid);
	            if(<%=flag %> == '1'){
	            //隐藏查询和修改等
		            $("#form1").css("display","none");
		            $("#div2").css("display","none");
		            nui.get('gnwz').setValue('<%=gnwz%>');	           
	             	//grid.load({"criteria/_entity":"com.cgn.itmp.dailyandoverhaul.vessel.TsdStandardLibrary.TsdStandardLibrarySearch","criteria/_expr[1]/gnwz":'<%=gnwz%>',"criteria/_expr[2]/isdelete":"0","criteria/_expr[2]/jd":jdid});
            	}
	            var formData = new nui.Form("#form1").getData(false,false);
           	    grid.load(formData);
            }
           

 			//预览页面附件显示 
           function setFileTP(e){
           
             var fileRealName = e.record.fileRealName;
 			var filepath = e.record.filePath;
 			var fileId = e.record.tp;
			if(fileRealName == null || fileRealName == 'null'){
				return "";
			}
           	var html = '<a href="#" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
           	return html;
           }
            function setFileTZ(e){
             var fileRealName = e.record.fileRealName2;
 			 var filepath = e.record.filePath2;
 			 var fileId = e.record.tz;
			 if(fileRealName == null || fileRealName == 'null'){
				return "";
			 }
           	var html = '<a href="#" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
           	return html;
           }
           
             //点击附件下载
           	function load(fileId){
			  window.location.href="com.cgn.itmp.basecommon.fileDownload.flow?fileId="+fileId;
			}
           
			function output(){
		
                var form = new nui.Form("#form1");
                var json = form.getData(false,false);
                
                nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据", width: 300, height: 150,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                            entityName:"com.cgn.itmp.dailyandoverhaul.vessel.TsdStandardLibrary.TsdStandardLibraryAll",
                            queryParam:json,								    //查询数据
                            queryKey:'criteria',                              //查询实体名
                            query:['gnwz','isdelete','jd','addtime'],  //按顺序放置
                            expTitle:"TSD标准库",
                            vagueField:"", //关键字查询，多字段用,隔开   按顺序放置
                            filterField:"orderindex,uuid,tp,tz,addtime",
                            jdFieds:"jd",
                        	jzFieds:"jz",
                        	order:"orderindex@desc"
                    };//传入页面的json数据
                        iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                            grid.reload();
                    }
                });
             }




            //新增
            function add() {
                nui.open({showMaxButton : true,
                    url: "/itmp/vessel/TsdStandardLibrary/TsdStandardLibraryForm.jsp",
                    title: "新增记录", width: 600, height: 180,
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
            
        //回收站
		function recycle(){
        	nui.open({
	        	showMaxButton : true,
	        	url:"/itmp/vessel/TsdStandardLibrary/TsdStandardLibraryRecycle.jsp",
	        	title:"回收站",width:800,height:500,
	        	onload:function(){
	        	},
	        	ondestroy:function(action){//弹出页面关闭前
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
                        url: "/itmp/vessel/TsdStandardLibrary/TsdStandardLibraryForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 180,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{tdxglsysytsdinfo:row}};
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
                                    var json = nui.encode({tdxglsysytsdinfos:rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.vessel.TsdStandardLibrary.ljdeleteTDxglSysyTsdinfos.biz.ext",
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
                                                nui.get("update").disable();
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
                                    if(rows.length>1 || rows.length==0){
                                        nui.get("update").disable();
                                    }else{
                                        nui.get("update").enable();
                                    }
                                }
                                //关键字查询
						      	function btnQuery(){
									var gjz=$("#cond").val();
									if(gjz==""){
										refresh();
										nui.get("update").disable();
									}else{
										 var data = {
										 	 matchFied :"jzname,gnwz,js,pq,fd",
											 wordVal : $("#cond").val(),
											 entity  : $("input[name='criteria/_entity']").val(),
											 entityName : 'criteria',
											 sfdel : true,
											 jdInfo:'jd@'+getCookie('jdid')
										 }; 
										 var query = nui.decode(getKeyWordQuery(data));
										 grid.load(query);
										 nui.get("update").disable();
									}
									
									}
									
									function JZRenderer(e){
									
					     	    		var val = "";
					     	    		var jzval = e.row.jz;
					     	    		if(jzval != null && jzval != ""){
					     	    		var jzid = jzval.split(",");			     	    		
						     	    		for(var i = 0 ; i < jzid.length ; i++){
								     	    	nui.ajax({
									                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJznameByid.biz.ext",
									                type: 'POST',
									                async: false,
									                data:"{jzid:'" + jzid[i] + "'}",
									                success: function (text) {
									                	val +=  text.jzname + (i == jzid.length -1 ? "" : ",");
									                }
									            });	
									            
									        }	
								        }				
									return val;
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
