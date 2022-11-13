﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserObject user=(UserObject)request.getSession().getAttribute("userObject");
	String userName=user.getUserRealName();
	String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();

%>
<html>
<%--
- Author(s): Administrator
- Date: 2018-12-26 17:57:35
- Description:
    --%>
    <head>
        <title>
            经验反馈和良好实践管理查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"> </script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/> 
    </head>
    <body  style="background-color:#f1f1f1;width:98%;height:100%;margin:0 auto;">

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
				<div id="form1" class="nui-form display" align="center" style="height: 6.3%">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.EmpiricalFeedbackSearch"> 
					<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="orderindex">
				    <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc"> 	
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">类型：</td>
							<td colspan="1"><input zzCombo="jsCombo" name="criteria/_expr[1]/type" vtype="maxLength:128"  class="nui-combobox nui-form-input"
								dataField="dictObject" url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=lx" textField="dictName" valueField="dictID" emptyText="请选择"  required="false" allowInput="true" showNullItem="true" nullItemText="请选择..."/>
						 <input class="nui-hidden" 
							name="criteria/_expr[1]/_op" value="like"> <input 
 							class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end"></td>
							<td class="form_label">领域：</td>
							<td colspan="1"><input zzCombo="jsCombo" name="criteria/_expr[2]/ly" vtype="maxLength:128"  class="nui-combobox nui-form-input"
								dataField="dictObject" url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=LY" textField="dictName" valueField="dictID" emptyText="请选择"  required="false" allowInput="true" showNullItem="true" nullItemText="请选择..."/>
						 <input class="nui-hidden" 
							name="criteria/_expr[2]/_op" value="like"> <input 
 							class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end"></td>
						</tr>
						<tr>
							<td class="form_label">来源：</td>
							<td colspan="1"><input zzCombo="jsCombo" name="criteria/_expr[3]/quarry" vtype="maxLength:128"  class="nui-combobox nui-form-input"
								dataField="dictObject" url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=LAIYUAN" textField="dictName" valueField="dictID" emptyText="请选择"  required="false" allowInput="true" showNullItem="true" nullItemText="请选择..."/>
						 <input class="nui-hidden" 
							name="criteria/_expr[3]/_op" value="like"> <input 
 							class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="end">
 							<input class="nui-hidden"  name="criteria/_expr[4]/isdelete" value="0"/>
							<input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
							<input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="end"></td>
							<td class="form_label"></td>
							<td colspan="1"></td>
						</tr>
						
					</table>
				</div>
				
			</div>

		</div>
	</div>
</div>
	
	
	
	    
	    <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
     
        <div region="center"  style="width:100%;height:92%;" showToolbar="false" showFooter="false" >
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
                          <a class="nui-button  btn btn-default btn-xs" onclick="shenqing()" name="ITMP_btnApply"> 申请</a>
                         <a class="nui-button showCellTooltip btn btn-default btn-xs" id="update"  onclick="edit()" name="ITMP_btnEdit">修改</a>
                        <!--   <a class="nui-button" onclick="fenfa()"iconCls="" >分发</a> -->
                        <a class="nui-button btn btn-default btn-xs" onclick="remove()" name="ITMP_btnDel">删除</a>
                         <a class="nui-button btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp">导出</a>
                        <a class="nui-button btn btn-default btn-xs" onclick="recycle()" name="ITMP_btnRec">回收站</a>
                     
                        <span id="saveOrCancel"> <a
							class="nui-button  btn btn-warning btn-xs" id="save"
							onclick="saveData()">保存</a> <a
							class="nui-button  btn btn-primary btn-xs" id="cancle"
							onclick="cancelSave()">关闭</a>
					</span>
                     
                        </td>
                    </tr>
                </table>
            </div>
            <div class="nui-fit">
				<div id="datagrid1" class="nui-datagrid" dataField="tqcjsgljyfkhsjgls"
					style="width: 100%; height:100%;" allowAlternating="true" 
					url="com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.queryTQcjsglJyfkhsjgls.biz.ext"
				    allowResize="true" pageSize="20" sizeList="[20,100,1000]"
					onselectionchanged="selectionChanged" allowCellEdit="false" allowCellValid="true" oncellvalidation="onCellValidation" allowSortColumn="true" sortMode="client"
					allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true">
					<div property="columns">
					 
						<div type="checkcolumn"></div>
						<div field="uuid" allowResize="true" width="120"
							headerAlign="center" allowSort="true" visible="false">
							<input property="editor" class="nui-textbox" style="width: 100%;" />
						</div>
						<div field="bh" allowResize="true" width="120"
							headerAlign="center" allowSort="true">
							   编号<input property="editor" class="nui-textbox bh"
								style="width: 100%;" readonly/>
						</div>
						<div field="type" width="100" headerAlign="center"
							renderer="lxRenderer">
							类型 <input property="editor" class="nui-dictcombobox"
								style="width: 100%;" required="true" dataField="type" dictTypeId="lx" />
						</div>
						<div field="zt" allowResize="true" width="120"
							headerAlign="center" allowSort="true">
							 主题<input property="editor" class="nui-textarea" onvalidation="hasIllegalChar(e,4000,true,true)"
								style="width: 100%;height:85%" required="true" />
						</div>
						<div field="ly" width="100" headerAlign="center"
							renderer="lyRenderer">
							领域 <input property="editor" class="nui-dictcombobox"
								style="width: 100%;" dataField="ly" dictTypeId="LY" required="true" />
						</div>
						<div field="quarry" width="100" headerAlign="center"
							renderer="quarryRenderer">
							 来源 <input property="editor" class="nui-dictcombobox"
								style="width: 100%;" dataField="quarry" dictTypeId="LAIYUAN" required="true" />
						</div>
						<div field="fj" allowResize="true" width="120" renderer="setFile"  headerAlign="center" allowSort="true">
							  附件 <input type="file" id="fj" name="file" multiple onchange="uploadFile(event,id)" /> 

						</div>
						 <div field="filePath" headerAlign="center" allowSort="true" visible="false" >
                           file_path
                        </div>
                        <div field="fileRealName" headerAlign="center" allowSort="true" visible="false" >
                           fileRealName
                        </div>
                       <div field="filename" headerAlign="center" allowSort="true" visible="false" >
                          
                        </div>
                         <div  field="filepath" headerAlign="center" allowSort="true" visible="false" >
                       </div>
                        <div field="fildid" headerAlign="center" allowSort="true" visible="false" >
                        </div>
						<div field="fkr" allowResize="true" width="120"
							headerAlign="center" allowSort="true">
							 反馈人<input property="editor" class="nui-textbox" onvalidation="hasIllegalChar(e,400,false,true)"
								style="width: 100%;" />
						</div>
						<div field="rq" width="100" allowSort="true" dateFormat="yyyy-MM-dd">日期
			                <input property="editor" class="nui-datepicker" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" style="width:120;" />
	
			            </div>
						<div field="isdelete" allowResize="false" width="120"
							headerAlign="center" allowSort="true" visible="false">
							<input property="editor" class="nui-textbox" style="width: 100%;" />
						</div>
						<div field="addtime" allowResize="false" width="120"
							headerAlign="center" allowSort="true" visible="false" dateFormat="yyyy-MM-dd HH:mm:ss">
						</div>
					</div>
				</div>
			</div>
		</div>
        <script type="text/javascript">
            nui.parse();
            if ('<%=userRoleCodeList %>'.indexOf(",ITMP_PGZXGLY,") >= 0 && '<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY")< 0) {//PG专项管理员有全部权限
					 $("div[name='ITMP_btn']").show();
					 $("#addallbut").hide();
					 if (nui.getbyName("ITMP_btnAddBatch") != undefined) {
						 nui.getbyName("ITMP_btnAddBatch").hide();
					 }

					 if (nui.getbyName("ITMP_btnDel") != undefined) {
						 nui.getbyName("ITMP_btnDel").hide();
					 }

					 if (nui.getbyName("ITMP_btnRec") != undefined) {
						 nui.getbyName("ITMP_btnRec").hide();
					 }
					 if (nui.getbyName("ITMP_btnEdit") != undefined) {
						 nui.getbyName("ITMP_btnEdit").hide();
					 }
				 }
            window.alert = function() {
				return false;
			}
            fileName = "";
		    filePath = "";

			//按钮权限控制
			accessControlButton('<%=userRoleCodeList %>',5);

            var grid = nui.get("datagrid1");
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
            nui.get("save").hide();
			nui.get("cancle").hide();
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
				 var el = e.element;
				 tip.setContent("请选择需要修改的数据");  //给提示框内容添加值
			    } 
			});
	/* 		
			//日期各格式转换
		   function setValue() {
	        var t = nui.get("date2");
	        t.setValue(new Date());
	        }
	        function getValue() {
	            var t = nui.get("date2");
// 	            alert(t.getValue());
	        }
	        function enable() {
	            var t = nui.get("date2");
	            t.enable();
	        }
	        function disable() {
	            var t = nui.get("date2");
	            t.disable();
	        }  */
			var tip1 = new nui.ToolTip();
			tip1.set({
			    target: document,
			    selector: '.bh',   //要添加提示元素的calss
			    placement:'topleft',              //提示出现的位置 
       			onbeforeopen: function (e) {    
			        e.cancel = false;
			    },
			    onopen: function (e) {      //提示框打开触发事件
				 var el = e.element;
				 tip1.setContent("系统自动生成！");  //给提示框内容添加值
			    } 
			});
              function output(){
                var form = new nui.Form("#form1");
                var json = form.getData(false,false);
                nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据", width: 350, height:200,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                            entityName:"com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.EmpiricalFeedbackSearch",
                            queryParam:json,								    //查询数据
                            queryKey:'criteria',                              //查询实体名
                            query:['type','ly','quarry','isdelete'],  //按顺序放置
                            filterField:['shry','hsry','pzry','qsry','adduser','orderindex','fileRelativePath','EmpiricalFeedbackList','uuid','isdelete','fj','addtime','addtime','scr','scsj','fildid','fileId','fileRealName','filePath','fileSize','fileType','fileUploadTime','fileUploadUser','fileNewName','processinstid'],
                            expTitle:"经验反馈和良好实践管理",
                            dicFieds : "type@lx,ly@LY,quarry@LAIYUAN",
                            order:"orderindex@desc"
                    };//传入页面的json数据
                        iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                            grid.reload();
                    }
                });
             }
       //必填项校验
         function onCellValidation(e) {
            if (e.field == "type" || e.field == "zt"|| e.field == "ly"|| e.field == "quarry"|| e.field == "fj") {
                if (e.value == null || e.value == "") {
                    e.isValid = false;
                    e.errorText = "字段不能为空";
//                     grid.beginEditRow(e.row); 
                }
            }
        }
            /******   Tip提示  End   *******/
                    //上传附件操作
        	function onfileselect(e){
				startUpload(e);
			}
			function startUpload(e) {
		        var fileupload = e.sender;
		        fileupload.startUpload();
		    }
		    //上传成功时，回写附件的name、id
		  function onUploadSuccess(e,row){
			fileName = e.file.name;
			filePath = nui.decode(e.serverData).ret.filePath;
		}
           grid.on("cellbeginedit", function (e) {
				if (e.field == "fj") {
			        e.editor.text = e.row.fj;
			    }
           });
           function setFile(e){
	            var fileRealName = e.record.fileRealName;
	 			var filepath = e.record.filePath;
	 			var fileId = e.record.fildid;
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
			//批量添加
			function batchAdd(){
			 nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
                    title: "新增记录", width: 600, height: 300,
                    onload: function () {//弹出页面加载完成
                    	var iframe = this.getIFrameEl();
	                    var data = {
	                    	pageType:"batchAdd",
	                    	tempFileName:"jyfkImport.xlsx",
	                    	tempLoadName :"经验反馈和良好实践管理导入模板",
	                    	entitfName:"com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.EmpiricalFeedback",
	                    	info : "经验反馈和良好实践"
	                    };//传入页面的json数据
	                     iframe.contentWindow.SetData(data);
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
				 	 matchFied :"bh,zt,fkr",
				 	 dicFied : "type@lx,ly@LY,quarry@LAIYUAN",
					 wordVal : $("#cond").val(),
					 entity  : $("input[name='criteria/_entity']").val(),
					 entityName : 'criteria',
					 sfdel : true
				 } 
				 var query = nui.decode(getKeyWordQuery(data));
				 grid.load(query);
				 nui.get("update").disable();
			}
			
			}
		
          
            //类型
            function lxRenderer(e){
				return nui.getDictText("lx",e.value);
			}
			//领域
			 function lyRenderer(e){
				return nui.getDictText("LY",e.value);
			}
			//来源
			 function quarryRenderer(e){
				return nui.getDictText("LAIYUAN",e.value);
			}
			//保存
			function saveData(){
			 	grid.commitEdit();
			    grid.validateRow(editRow);
	            if (grid.isValid() == false) {
	               grid.beginEditRow(editRow); 
	               nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;
	            }
			 	var jsonObject = grid.getChanges();
				if(jsonObject != null && jsonObject.length > 0){
					jsonObject[0]['filename'] = fileName;
			 		jsonObject[0]['filepath'] = filePath;
			 		jsonObject[0]['isadmin'] = true;
			 		jsonObject[0]['rq'] = nui.formatDate(jsonObject[0]['rq'],'yyyy-MM-dd');
				}
			 	
			  var data = {
			  	jsonObject:jsonObject[0],token:"<%=TokenUtil.getTokenString(request.getSession())%>" 
			  };
	            var json = nui.encode(data);
	            grid.loading("保存中，请稍后......");
	            nui.ajax({
	                url: "com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.addOrEdit.biz.ext",
	                type: 'POST',
	                data: json,
	                success: function (text) {
	                    grid.reload();
                        nui.get("update").disable();
	            		nui.get("save").hide();
						nui.get("cancle").hide();
						nui.get("popupMenu").enable();
						fileName = "";
		    			filePath = "";
	                },error: function (jqXHR, textStatus, errorThrown) {
								 grid.unmask();
								 nui.alert(jqXHR.responseText,'错误',function (action) {
									 grid.beginEditRow(editRow);
								});
							
							//                     alert(jqXHR.responseText);
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
		                   	fileName = "";
		                   	filePath = "";
		                    
		                }
		            }
       		 );
			}
			 var editRow = null;
              
        	//新增
			function add() {
				var newRow = {
					rq : new Date()
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
			//附件
			/* 	function linkRenderer(e){
		    		var xm=e.record.name;
		    		var retHtml ="&nbsp;&nbsp;<a style='color:blue;text-align: center;'  href='javascript:showDetail(\""+xm+"\")'>附件</a>";
		    		return retHtml;
				}  */
               //申请
            function shenqing() {
            	var height = "<%=request.getSession().getAttribute("isadmin") %>" == 'true' ? 300:450;
                nui.open({showMaxButton : true,
                    url: "/itmp/groupplant/EmpiricalFeedback/experienceApply.jsp",
                    title: "申请", width:700, height: 450,
                    onload: function () {
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                	}
                });
            }
            //回收站
			function recycle() {
                nui.open({
                	showMaxButton : true,
                    url: "/itmp/groupplant/EmpiricalFeedback/EmpiricalFeedbackRecycle.jsp",
                    title: "回收站", width:1000, height: 500,
                    onload: function () {
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    nui.get("save").hide();
					nui.get("cancle").hide();
					nui.get("update").disable();
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
                                    var json = nui.encode({
										data : rows,
										entity : "com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.EmpiricalFeedback",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
									});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                       url: "com.cgn.itmp.knowledgebase.tinencyclopediabiz.deleteone.biz.ext",
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
                                    nui.get("menuButton").enable();
                                    nui.get("update").disable();
                                    //nui.get("saveOrCancel").hide();
                                    nui.get("save").hide();
									nui.get("cancle").hide();
                                }

                                //查询
                                function searchs() {
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    nui.get("menuButton").enable();
                                    nui.get("update").disable();
                                    //nui.get("saveOrCancel").hide();
                                    nui.get("save").hide();
									nui.get("cancle").hide();
                                }

                                //重置查询条件
                                function reset(){
                                    var form = new nui.Form("#form1");//将普通form转为nui的form
                                    form.reset();
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
                        
             <script>
             function uploadFile (e, id) {
                let  xhr = new XMLHttpRequest();
                let  fd = new FormData();
                fd.append('file', e.target.files[0]);
                xhr.open('POST', '/itmp/coframe/framework/dzqm/uploadbd.jsp', true);
                xhr.send(fd);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        let  data = JSON.parse(xhr.responseText);
                        if (data.code == '1') {
                            onUploadSuccess&&onUploadSuccess({
                                file: {
                                    name: data.list[0].name
                                },
                                sender:{
                                    id: id
                                }
                                serverData: JSON.stringify({
                                    ret: {
                                        filePath: data.list[0].uri
                                    }
                                })
                            });
                        } else {
                            nui.alert(data.message);
                        }
                    }
                };
            }
             </script>
             </body>
             
                    </html>