<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserObject user = (UserObject) request.getSession().getAttribute("userObject");
	String userName = user.getUserRealName();
	String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-10 18:16:17
- Description:
    --%>
    <head>
        <title>
            大修日历列表视图
        </title> 
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <link id="css_skin" rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/newui/css/styles.css" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"> </script>
       <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/> 
    </head>
    <style>
    
.mini-calendar-daysheader td,body .mini-calendar td {
	border: none !important;
}

.mini-calendar-tadayButton,.mini-calendar-clearButton {
	border-color: #004a86;
	background: #004a86;
	color: #fff;
	font-family: "微软雅黑";
}

.mini-calendar .mini-calendar-today {
	border: 1px solid #C00000;
}

body .mini-calendar td {
	height: 14px;
}

.mini-calendar .mini-calendar-selected,.mini-calendar .mini-calendar-date:hover
	{
	background-color: #004a86;
	border-color: #004a86;
	color: #fff;
}
    </style>
    <body  style="background-color:#f1f1f1;height:95%;">
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
    <div id="form1" class="nui-form displaynone" align="center" style="height: 30px">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.overhaul.OverhaulCalendar.CalendarSearch">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">大修轮次：</td>
							<td colspan="1"><input class="nui-textbox" name="criteria/_expr[1]/xh"/>
                         <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                         <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all"></td>
							<td class="form_label"></td>
							<td colspan="1"></td>
						</tr>
						
					</table>
					<input class="nui-hidden" name="criteria/_expr[2]/isdelete"value="0" /> 
					<input class="nui-hidden"name="criteria/_expr[2]/_op" value="like"> 
					<input class="nui-hidden" name="criteria/_expr[2]/_likeRule"value="end"> 
					
					<input class="nui-hidden" id="con_jdid" name="criteria/_expr[3]/jdid" /> 
					<input class="nui-hidden"name="criteria/_expr[3]/_op" value="like"> 
					<input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="end">
					
					  <input class="nui-hidden" name="criteria/_orderby[4]/_property" value="orderindex">
       				<input class="nui-hidden" name="criteria/_orderby[4]/_sort" value="desc">
				</div>
					</div>     
            	</div>
        	</div>
		</div>
	
        <div region="center"  style="width:100%;height:90%" showToolbar="false" showFooter="false" >
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;" name="ITMP_btn">
                <table style="width:100%;">
                    <tr>
                        <td style="width:100%;">
                        <button id="addallbut" style="position: relative;" class="btn btn-default"
							onclick="openAllAdd()">
							新增
						</button>
						<ul id="popupMenu" class="add_adds nui-menu">
							<li onclick="add()">单条新增</li>
							<li onclick="batchAdd()">批量新增</li>
						</ul>
<!--                   <a class="nui-button btn btn-default btn-xs" id="menuButton"  menu="#popupMenu" name="ITMP_btnAdd">新增</a> -->
<!-- 					    <ul id="popupMenu" class="nui-menu" style="display:none;"> -->
<!-- 							 <li   name="ITMP_btnAddOne" onclick="add()">单条增加</li> -->
<!-- 							 <li   name="ITMP_btnAddBatch" onclick="batchAdd()">批量增加</li> -->
						   
<!-- 					    </ul> -->
					   
                  
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
                             <span id="saveOrCancel">
                         <a class="nui-button  btn btn-warning btn-xs" id="save" onclick="saveData()" >保存</a>  
                         <a class="nui-button  btn btn-primary btn-xs" id="cancle" onclick="cancelSave()">关闭</a> 
                         
                         </span>    
                           
                        </td>
                    </tr>
                </table>
            </div>
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdxgldxrls"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.dailyandoverhaul.overhaul.OverhaulCalendar.queryTDxglDxrls.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
                        multiSelect="true" oncellvalidation="onCellValidation"
                        sortMode="client"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="true" oncellbeginedit="OnCellBeginEdit">

                    <div property="columns">
                       
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
					  <div field="jdid" allowResize="false" width="120"
						headerAlign="center" allowSort="true" visible="false">
						基地<input id="jdid" property="editor" class="nui-combobox" dataField="jsonObject" 
						style="width: 100%;"  onvaluechanged="reloadJz"
		                  textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id" emptyText="请选择" />
					  </div> 
	                <div header="大修轮次" headerAlign="center">
						<div property="columns">
							<div field="jzid" id="jzid" align="right" renderer="xhRender"
								allowResize="false" width="50" headerAlign="center"
								allowSort="true">
								<input property="editor" class="nui-combobox"
									dataField="jsonObject" required="true"
									requiredErrorText="机组不能为空" textField="name" valueField="id"
									emptyText="请选择" />
							</div>

							<div field="dxlc" id="dxlc"
								vtype="required;range:01,99;maxLength:2" renderer="lcRender"
								allowResize="false" width="50" headerAlign="center"
								allowSort="true">
								<input property="editor" class="nui-textbox"
									style="width: 100%;" />
							</div>
							<div field="xh" id="xh" allowResize="false"  visible="false"
								width="50" headerAlign="center" allowSort="true">
								<input property="editor" class="nui-textbox"
									style="width: 100%;" />
							</div>
						</div>
					</div>
					 <div field="starttime" allowResize="false" width="120" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd" >
					 开始日期  <input property="editor" class="nui-datepicker" ondrawdate="ondrawdateStart"  showClose="true" oncloseclick="this.setValue(null);" style="width: 100%;"/>
					  	<!-- <input id="starttime" property="editor"  class="nui-datepicker"  style="width:100%;" required="true" requiredErrorText="开始日期不能为空"/> -->
					  </div>
					  <div field="endtime" allowResize="false" width="120" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd" >
					   结束日期  <input property="editor" class="nui-datepicker" ondrawdate="ondrawdateEnd" showClose="true" oncloseclick="this.setValue(null);" style="width: 100%;"/>
					   <!--  <input  property="editor" class="nui-datepicker"  style="width:100%;"  required="true" requiredErrorText="结束日期不能为空"/> -->
					  </div>
					  <div field="dxgq" allowResize="false" width="120" headerAlign="center" allowSort="true">									大修工期<input property="editor" id="dxgq" class="nui-textbox dxgq" style="width: 100%;" readonly="readonly" />
					  </div> 
					    <div field="status" allowResize="false" width="120"  headerAlign="center" allowSort="true" >
					状态<input id="status" property="editor" class="nui-textbox status" style="width: 100%;" readonly="readonly" />
					  </div> 
	                   <div field="isdelete" allowResize="false" width="120" headerAlign="center" allowSort="true" visible="false">
					
					  </div> 
					  <div field="addtime" allowResize="false" width="120" headerAlign="center" allowSort="true" visible="false">
						
					  </div>   
	                </div>
	            </div>
	        </div>
	    </div>
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
            
             nui.get("save").hide();
			nui.get("cancle").hide();
			nui.get("update").disable();
			var jdid= getCookie('jdid');
			nui.get('con_jdid').setValue(jdid);
			if(jdid!=null && jdid!=""){
				//按钮权限控制
				accessControlButton('<%=userRoleCodeList %>',3);
	            var formData = new nui.Form("#form1").getData(false,false);
	            grid.load(formData);
            }
     
// 	        function gzstatus(e){
// 	        var zt="";
// 	        var date=new Date();
// 	       var strt= new Date(Date.parse(e.row.starttime));
// 	        var edt= new Date(Date.parse(e.row.endtime));
// 			 	if(date < strt){
// 			 		 zt="正在准备的大修";
// 			 	}else if(date >= strt && date <= edt){
// 			 		 zt="正在进行的大修";
// 			 	}else if(date > edt){
// 			 		 zt="已完成的大修";
// 			 	}
// 			 	return zt;
// 	        }
	       	 var starttime="";
	         var endtime="";
				function OnCellBeginEdit(e) {
					var grid = e.sender;
					var record = e.record;
					var field = e.field, value = e.value;
					var editor = e.editor;
					if (field == "starttime") {
						starttime = editor;
					}else if(field == "endtime"){
						endtime = editor;
					}else if(field == "dxgq"){
						dxgq = editor;
					}
		
				}
	        
// 	               function getgq(e){
// 	        	var time="";
// 	        	var strtime=nui.parseDate(e.row.starttime,'yyyy-MM-dd');
// 	        	var edtime=nui.parseDate(e.row.endtime,'yyyy-MM-dd');
// 	        	var gq=edtime-strtime;
// 	         	time = parseInt(gq / (1000 * 60 * 60 * 24));
// 	        	return time;
// 	        }
            /******   Tip提示 组件初始化 Start   *******/ 
			function ondrawdateStart(e){
			var date = e.date;
			var d = endtime.value;
			if(d){
				var timeStr = d.getFullYear() + "/" + (d.getMonth() + 1) + "/" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
				d = new Date(timeStr);
			}
			if(date && d && date.getTime() > d.getTime()){
				e.allowSelect=false;
			}
		}
		
		function ondrawdateEnd(e){
			var date = e.date;
			var d = starttime.value;
			if(d){
				var timeStr = d.getFullYear() + "/" + (d.getMonth() + 1) + "/" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
				d = new Date(timeStr);
			}
			if(date && d && date.getTime() < d.getTime()){
				e.allowSelect=false;
			}
		}
		
		
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
           	var tip1 = new nui.ToolTip();
			tip1.set({
				target: document,
				selector: '.dxgq',   //要添加提示元素的calss
				placement:'topleft',              //提示出现的位置 
				onbeforeopen: function (e) {    
					e.cancel = false;
				},
				onopen: function (e) {      //提示框打开触发事件
				 tip1.setContent("系统自动判断");  //给提示框内容添加值
				} 
			});
			var tip2 = new nui.ToolTip();
			tip2.set({
				target: document,
				selector: '.status',   //要添加提示元素的calss
				placement:'topleft',              //提示出现的位置 
				onbeforeopen: function (e) {    
					e.cancel = false;
				},
				onopen: function (e) {      //提示框打开触发事件
				 tip2.setContent("系统自动判断");  //给提示框内容添加值
				} 
			});
           /* function EndtimeMax(e){
           
	           	var starttime=nui.get("starttime").getValue;
	           	var endtime=e.sender.getValue();
	           	if(endtime<=starttime){
	           		nui.alert("结束日期必须大于开始日期！");
	           	}else{
	           	return e.cellHtml;
	           	}
           } */
			
			function xhRender(e){
            grid.hideColumn('dxlc');
            return e.record.xh;
            }
             function lcRender(e){
            return "";
            }
      //关键字查询
            function btnQuery(){
            	var gjz=$("#cond").val();
				if(gjz==""){
					refresh();
					nui.get("update").disable();
				}else{
					 var data = {
					 	 matchFied :"xh,starttime,endtime,dxgq",
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
			  //表单提交验证
			function onCellValidation(e) {
	         if(e.field == "jzid") {
	         	e.column.editor.url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="+ getCookie('jdid');
	         }
	         
	            if (e.field == "jzid"||e.field == "dxlc"||e.field == "starttime"||e.field == "endtime") {
	                if (e.value == null || e.value == "") {
	                    e.isValid = false;
	                    e.errorText = "字段不能为空";
	//                     grid.beginEditRow(e.row); 
	                }
	            }
	        }			
       //数据导出
       function output(){
                var form = new nui.Form("#form1");
                var json = form.getData(false,false);
                nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据", width: 350, height: 200,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                            entityName:"com.cgn.itmp.dailyandoverhaul.overhaul.OverhaulCalendar.CalendarSearch",
                            queryParam:json,								    //查询数据
                            queryKey:'criteria',                              //查询实体名
                            query:['xh','isdelete','jdid','addtime'],  //按顺序放置
                            filterField:['orderindex','uuid','isdelete','scr','scsj','addtime','dxlc','name'],
                            expTitle:"大修日历",
                            jdFieds : "jdid",
							jzFieds : "jzid",
							order:"orderindex@desc"
                    };//传入页面的json数据
                        iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                            grid.reload();
                    }
                });
             }		
            //回收站页面
            function recycle() {
                nui.open({
                	showMaxButton : true,
                    url: "/itmp/overhaul/OverhaulCalendar/CalendarRecycle.jsp",
                    title: "回收站", width:1000, height: 500,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    nui.get("save").hide();
					nui.get("cancle").hide();
					nui.get("update").disable();
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
	                    	tempFileName:"Dxrl.xlsx",
	                    	tempLoadName :"大修日历导入模板",
	                    	entitfName:"com.cgn.itmp.dailyandoverhaul.overhaul.OverhaulCalendar.Calendar",
	                    	ifDxmk:"true"
	                    };//传入页面的json数据
	                     iframe.contentWindow.SetData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
            });
		}
		//取消保存
			function cancelSave(){
					nui.confirm("是否取消此次操作，确认取消？", "确定？",
		            function (action) {            
		                if (action == "ok") {
		                  	nui.get("update").disable();
		                    grid.reload();
		                   	nui.get("save").hide();
		                   	nui.get("cancle").hide();
		                   	nui.get("popupMenu").enable();
		                }
		            }
       		 );
			}
			 var editRow = null;
             
              
        	//新增
			function add() {
				var newRow = {
					
				};
				grid.addRow(newRow, 0);
				this.grid.select(0);
				grid.validateRow(newRow);   //加入新行，马上验证新行
				grid.beginEditRow(newRow); 
				nui.get("update").disable();
				nui.get("save").show();
				nui.get("cancle").show();
				nui.get("popupMenu").disable();
				 editRow = newRow;
			}
			//编辑
			function edit() {
				var row = grid.getSelected();
				if(row){
					grid.validateRow(row);   //验证
					grid.beginEditRow(row); 
					nui.get("save").show();
					nui.get("cancle").show();
					nui.get("popupMenu").disable();	
					editRow = row;
					return;
				}
				nui.alert("请选中一条记录！");
			}
			
         //保存
			function saveData(){
				grid.commitEdit();
			    grid.validateRow(editRow);
	            if (grid.isValid() == false) {
	               grid.beginEditRow(editRow); 
	                 nui.showTips({content: '表单校验不通过,请确认', state: 'warning', x: 'center', y: 'center'});
	                return;
	            }
			 	var jsonObject = grid.getChanges();
			 	if(jsonObject != null && jsonObject.length > 0){
			 	var num=0;
		 		if(jsonObject[0]['dxlc']<10 && jsonObject[0]['dxlc'].length < 2){
		 			jsonObject[0]['dxlc']=num+jsonObject[0]['dxlc'];
		 		}
			 	
			 	jsonObject[0]['jdid']= getCookie('jdid');
			 	var gq=jsonObject[0]['endtime']-jsonObject[0]['starttime'];
			 	var time = parseInt(gq / (1000 * 60 * 60 * 24));
			 	jsonObject[0]['dxgq']=time+1;
			 	jsonObject[0]['starttime'] = nui.formatDate(jsonObject[0]['starttime'],'yyyy-MM-dd');
			 	jsonObject[0]['endtime'] = nui.formatDate(jsonObject[0]['endtime'],'yyyy-MM-dd');
				}
				var data = {
					jsonObject : jsonObject[0],token:"<%=TokenUtil.getTokenString(request.getSession())%>"
				};
	            var json = nui.encode(data);
	            grid.loading("保存中，请稍后......");
	            nui.ajax({
	                url: "com.cgn.itmp.dailyandoverhaul.overhaul.OverhaulCalendar.newAddEdit.biz.ext",
	                type: 'POST',
	                data: json,
	                success: function (text) {
	                    grid.reload();
                       	nui.get("update").disable();
                		nui.get("save").hide();
						nui.get("cancle").hide();
						nui.get("popupMenu").enable();
						
	                },error: function (jqXHR, textStatus, errorThrown) {
						 grid.unmask();
						 nui.alert(jqXHR.responseText,'错误',function (action) {
							 grid.beginEditRow(editRow);
						});
					
					//                     alert(jqXHR.responseText);
					}
	            });
	            
			}
			//大修轮次
			function dxlcRenderer(e){
				return nui.getDictText("DXLC",e.value);
			} 
                    //逻辑删除
                    function remove2(){
                    	var scr = '<%=userName %>';                                 
                         var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                	for(var i=0;i<rows.length;i++){
                                		rows[i].scr = scr;
                                		rows[i].scsj = nui.formatDate (new Date() , "yyyy-MM-dd HH:mm:ss" );
                                	}
                                    var json = nui.encode({tdxgldxrls:rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.overhaul.OverhaulCalendar.ljdeleteTDxglDxrl.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                            var returnJson = nui.decode(text);
                                            if(returnJson.exception == null){
                                                grid.reload();
                                                nui.get("popupMenu").enable();
                                				nui.get("update").disable();
                                                nui.get("save").hide();
												nui.get("cancle").hide();
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
