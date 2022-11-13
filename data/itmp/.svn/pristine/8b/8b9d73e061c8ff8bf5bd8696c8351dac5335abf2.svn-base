
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserObject user=(UserObject)request.getSession().getAttribute("userObject");
	String userName=user.getUserRealName();
	String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();

%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<head>
<title>组织机构查询</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<script src="<%= request.getContextPath()%>/common/common.js"
	type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/themes/cuc/skin.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
<script type="text/javascript"
	src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<body style="width: 98%; height:96%; margin: 0 auto;">
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
				<div id="form1" class="nui-form display" align="center" style="height: 6.7%">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity"
					value="com.cgn.itmp.dailyandoverhaul.groupplant.Organization.Organization">
				<input class="nui-hidden" name="criteria/_orderby[1]/_property"
					value="orderindex"> <input class="nui-hidden"
					name="criteria/_orderby[1]/_sort" value="desc">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">姓名：</td>
							<td colspan="1"><input class="nui-textbox"
									name="criteria/_expr[1]/name" /> <input class="nui-hidden"
									name="criteria/_expr[1]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[1]/_likeRule"
									value="all"></td>
							<td class="form_label">公司：</td>
							<td colspan="1"><input zzCombo="gsCombo"
									name="criteria/_expr[2]/gs" vtype="maxLength:128"
									class="nui-combobox nui-form-input" dataField="dictObject"
									url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=GS"
									textField="dictName" valueField="dictID" emptyText="请选择"
									required="false" allowInput="true" showNullItem="true"
									nullItemText="请选择..." /> <input class="nui-hidden"
									name="criteria/_expr[2]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all"></td>
						</tr>
						<tr>
							<td class="form_label">组织：</td>
							<td colspan="1"><input zzCombo="zzCombo"
									name="criteria/_expr[3]/zz" vtype="maxLength:128"
									class="nui-combobox nui-form-input" dataField="dictObject"
									url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=ZZ"
									textField="dictName" valueField="dictID" emptyText="请选择"
									required="false" allowInput="true" showNullItem="true"
									nullItemText="请选择..." /> <input class="nui-hidden"
									name="criteria/_expr[3]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[3]/_likeRule"
									value="all"></td>
							<td class="form_label">角色：</td>
							<td colspan="1"><input zzCombo="jsCombo"
									name="criteria/_expr[4]/role" vtype="maxLength:128"
									class="nui-combobox nui-form-input" dataField="dictObject"
									url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=JS"
									textField="dictName" valueField="dictID" emptyText="请选择"
									required="false" allowInput="true" showNullItem="true"
									nullItemText="请选择..." /> <input class="nui-hidden"
									name="criteria/_expr[4]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[4]/_likeRule"
									value="all"></td>
						</tr>
						
						
					</table>
					<input class="nui-hidden" name="criteria/_expr[5]/isdelete"
									value="0" /> <input class="nui-hidden"
									name="criteria/_expr[5]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[5]/_likeRule"
									value="all">
				</div>
				
			</div>

		</div>
	</div>
</div>

	    <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
			
				<div class="search-container folding-menu"
					style="overflow: hidden; display: none;" id="queryForm">
					<div class="row">
						<div class="input-control" style="float:left;margin:0 50px 0 0;">
							<div class="form-group">
								<label>姓名：</label> <input class="nui-textbox"
									name="criteria/_expr[1]/name" /> <input class="nui-hidden"
									name="criteria/_expr[1]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[1]/_likeRule"
									value="all">
							</div>
						</div>
						<div class="input-control" style="float:left;margin:0 50px 0 0;">
							<div class="form-group">
								<label>公司：</label> <input zzCombo="gsCombo"
									name="criteria/_expr[2]/gs" vtype="maxLength:128"
									class="nui-combobox nui-form-input" dataField="dictObject"
									url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=GS"
									textField="dictName" valueField="dictID" emptyText="请选择"
									required="false" allowInput="true" showNullItem="true"
									nullItemText="请选择..." /> <input class="nui-hidden"
									name="criteria/_expr[2]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[2]/_likeRule"
									value="all">
							</div>
						</div>
						<div class="input-control" style="float:left;margin:0 50px 0 0;">
							<div class="form-group">
								<label>组织：</label> <input zzCombo="zzCombo"
									name="criteria/_expr[3]/zz" vtype="maxLength:128"
									class="nui-combobox nui-form-input" dataField="dictObject"
									url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=ZZ"
									textField="dictName" valueField="dictID" emptyText="请选择"
									required="false" allowInput="true" showNullItem="true"
									nullItemText="请选择..." /> <input class="nui-hidden"
									name="criteria/_expr[3]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[3]/_likeRule"
									value="all">
							</div>
						</div>
					<!-- </div>
					<div class="row"> -->
						<div class="input-control" style="float:left;margin:0 50px 0 0;">
							<div class="form-group">
								<label>角色:</label> <input zzCombo="jsCombo"
									name="criteria/_expr[4]/role" vtype="maxLength:128"
									class="nui-combobox nui-form-input" dataField="dictObject"
									url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=JS"
									textField="dictName" valueField="dictID" emptyText="请选择"
									required="false" allowInput="true" showNullItem="true"
									nullItemText="请选择..." /> <input class="nui-hidden"
									name="criteria/_expr[4]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[4]/_likeRule"
									value="all">
							</div>
						</div>
						<div class="input-control" style="float:left;margin:0 50px 0 0;">
							<div class="form-group">
								<input class="nui-hidden" name="criteria/_expr[5]/isdelete"
									value="0" /> <input class="nui-hidden"
									name="criteria/_expr[5]/_op" value="like"> <input
									class="nui-hidden" name="criteria/_expr[5]/_likeRule"
									value="all">
							</div>
						</div>
						
						
					</div>	
						<!-- <div class="row">
							<div class="col-sm-12"> -->
								
							<!-- </div>
						</div> -->
					</div>

					<script type="text/javascript"
						src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
				</div>
			</div>
		</div>
	</div>
	<div class="nui-layout" style="width: 100%; height: 97%;">
		<div region="west" width="250" title="组织机构查询列表">
			<div class="nui-fit">
				<ul id="formtree" expandOnNodeClick="true" class="leftmenu inleftmenu nui-tree" resultAsTree="false"
					dataField="jsonObject" style="width: 100%; height: 100%;"
					idField="id" parentField="parentid" expand="true" textField="name"
					url="com.cgn.itmp.dailyandoverhaul.groupplant.Organization.getZzjgTreeInfo.biz.ext">
				</ul>
			</div>
		</div>
		<div class="center" region="center" title="组织机构查询列表"
			style="width: 100%; height: 90%;" showToolbar="false"
			showFooter="false">
			<div class="nui-toolbar" style="border-bottom: 0; padding: 0px;" name="ITMP_btn">
				<table style="width: 100%; height: 100%;">
					<tr>
						<td style="width: 100%;padding:5px 0;">
							<button id="addallbut" style="position: relative;" class="btn btn-default"
							onclick="openAllAdd()">
							新增
						</button>
						<ul class="add_adds nui-menu">
							<li onclick="add()">单条新增</li>
							<li onclick="batchAdd()">批量新增</li>
						</ul>
							 <a id="update"
							class="nui-button showCellTooltip btn btn-default btn-xs" 
							onclick="edit()" disabled="disabled" name="ITMP_btnEdit">修改
						</a> <a class="nui-button btn btn-default btn-xs" onclick="remove()" disabled="disabled" name="ITMP_btnDel">
								删除
						</a> <a class="nui-button btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp">导出</a>
							<a class="nui-button btn btn-default btn-xs"
							onclick="recycle()"  name="ITMP_btnRec"> 回收站 <!-- 弹框页面进入回收站页面,同时条件查询isdelete字段 -->
						</a> <span id="saveOrCancel"> <a
								class="nui-button  btn btn-warning btn-xs" id="save"
								onclick="saveData()">保存</a> <a
								class="nui-button  btn btn-primary btn-xs" id="cancle"
								onclick="cancelSave()">关闭</a>
						</span></td>
					</tr>
				</table>
			</div>
			<div class="nui-fit">
				<div id="datagrid1" class="nui-datagrid" dataField="tqcjsglzzjgs"
					style="width: 100%; height: 100%;"
					url="com.cgn.itmp.dailyandoverhaul.groupplant.Organization.queryTQcjsglZzjgs.biz.ext"
					allowResize="true" pageSize="20" sizeList="[20,100,1000]" allowAlternating="true"
					onselectionchanged="selectionChanged" allowCellEdit="false"
					allowSortColumn="true" sortMode="client" allowCellSelect="true"
					multiSelect="true" editNextOnEnterKey="true" allowCellValid="true"
					oncellvalidation="onCellValidation">
					<div property="columns">
					 
						<div type="checkcolumn"></div>
						<div field="uuid" allowResize="true" width="120"
							headerAlign="center" allowSort="true" visible="false">
							<input property="editor" class="nui-textbox" style="width: 100%;" />
						</div>
						<div field="name" allowResize="true" width="100"
							headerAlign="center" allowSort="true">
							姓名 <input property="editor" class="nui-textbox" onvalidation="hasIllegalChar(e,200,false,true)"
								style="width: 100%;" />
						</div>
						<div field="ygbh" allowResize="true" width="100"
							headerAlign="center" allowSort="true">
							员工号 <input property="editor" class="nui-textbox" onvalidation="hasIllegalChar(e,200,true,true)"
								style="width: 100%;" required="true"
								requiredErrorText="员工号不能为空" />
						</div>
						<div field="gs" width="100" headerAlign="center"
							renderer="gsRenderer">
							公司 <input property="editor" class="nui-dictcombobox"
								style="width: 100%;" dataField="gs" dictTypeId="GS" />
						</div>
						<div field="zz" width="100" headerAlign="center"
							renderer="zzRenderer">
							组织 <input property="editor" class="nui-dictcombobox"
								style="width: 100%;" dataField="zz" dictTypeId="ZZ" id="zzCombox"
								required="true" requiredErrorText="组织不能为空" />
						</div>
						<div field="role" width="100" headerAlign="center"
							renderer="jsRenderer">
							角色 <input property="editor" class="nui-dictcombobox"
								style="width: 100%;" dataField="role" dictTypeId="JS" />
						</div>
						<div field="isdelete" allowResize="true" width="120"
							headerAlign="center" allowSort="true" visible="false">
							<input property="editor" class="nui-textbox" style="width: 100%;" />
						</div>
						<div field="addtime" allowResize="true" width="120"
							headerAlign="center" allowSort="true" visible="false">
							<input property="editor" class="nui-textbox" style="width: 100%;" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
			nui.parse();
			window.alert = function() {
				return false;
			}
			var grid = nui.get("datagrid1");
			nui.get("save").hide();
			nui.get("cancle").hide();
			nui.get("update").disable();

			//按钮权限控制
			accessControlButton('<%=userRoleCodeList %>',5);
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

		 	var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
			//获取组织树对象，并默认将树展开
			var formtree = nui.get("formtree");
			formtree.expandAll();
			formtree.on("nodeselect", function (e) {
				if(grid.isEditing()){
						
							nui.confirm("有数据在编辑,确定离开？", "确定？",
		            function (action) {            
		                if (action == "ok") {
		                
		                	nui.get("update").disable();
		                   
		                   	nui.get("save").hide();
		                   	nui.get("cancle").hide();
// 		                   	nui.get("popupMenu").enable();
		                   	fileName = "";
		                   	filePath = "";
		                   	nui.get('zzCombox').setValue(e.node.id);
		                   	 grid.reload();
// 		                  	grid.load({"criteria/_entity": "com.cgn.itmp.dailyandoverhaul.groupplant.Organization.Organization","criteria/_expr[3]/zz" : e.node.id ,"criteria/_expr[5]/isdelete" :'0'});
		                }
		            }
       		 );
       		 
				}else{
						nui.get('zzCombox').setValue(e.node.id);
						grid.load({"criteria/_entity": "com.cgn.itmp.dailyandoverhaul.groupplant.Organization.Organization","criteria/_expr[3]/zz" : e.node.id ,"criteria/_expr[5]/isdelete" :'0'});
				
				}

			});
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
			
		//必填项校验
         function onCellValidation(e) {
            if (e.field == "name"||e.field == "zz" ||e.field == "gs"||e.field == "role") {
                if (e.value == null || e.value == "") {
                    e.isValid = false;
                    e.errorText = "字段不能为空";
                }
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
					 	 matchFied :"name,ygbh",
					 	 dicFied : "gs@GS,zz@ZZ,role@JS",
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
             function output(){
            
                var form = new nui.Form("#form1");
                var json = form.getData(false,false);
                nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据", width: 300, height:240,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                            entityName:"com.cgn.itmp.dailyandoverhaul.groupplant.Organization.Organization",
                            queryParam:json,								    //查询数据
                            queryKey:'criteria',                              //查询实体名
                            query:['name','gs','zz','role','isdelete'],  //按顺序放置                  
                            expTitle:"群厂技术组织管理",
                            filterField:['orderindex','uuid','isdelete','scr','scsj','addtime'],
                            dicFieds : "gs@GS,zz@ZZ,role@JS",
                            order:"orderindex@desc"
                    };//传入页面的json数据
                        iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                            grid.reload();
                    }
                });
             }
            /******   Tip提示  End   *******/
			 function saveData() {
			 	grid.commitEdit();
			    grid.validateRow(editRow);
	            if (grid.isValid() == false) {
	            nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
	               grid.beginEditRow(editRow); 
	                return;
	            }
				var data = {
					jsonObject : grid.getChanges(),token:"<%=TokenUtil.getTokenString(request.getSession())%>"
				};
				var json = nui.encode(data);
				grid.loading("保存中，请稍后......");
				nui.ajax({
							url : "com.cgn.itmp.dailyandoverhaul.groupplant.Organization.addZzjg.biz.ext",
							type : 'POST',
							data : json,
							success : function(text) {
								grid.reload();
                        		nui.get("update").disable();
                        		nui.get("save").hide();
								nui.get("cancle").hide();
// 								nui.get("popupMenu").enable();
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
// 		                   	nui.get("popupMenu").enable();
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
					name : " "
				};
				grid.addRow(newRow, 0);
				this.grid.select(0);
				grid.validateRow(newRow);   //加入新行，马上验证新行
				grid.beginEditRow(newRow); 
				nui.get("update").disable();
				nui.get("save").show();
				nui.get("cancle").show();
// 				nui.get("popupMenu").disable();
				 editRow = newRow;
			}
			//编辑
			function edit() {
				var row = grid.getSelected();
				if(row){
					delete row.orderindex;
					grid.validateRow(row);   //验证
					grid.beginEditRow(row); 
					nui.get("save").show();
					nui.get("cancle").show();
// 					nui.get("popupMenu").disable();	
					editRow = row;
					return;
				}
				nui.alert("请选中一条记录！");
			}
			/* //取消保存
			function cancelSave(){
					nui.confirm("是否取消取消此次操作，确认取消？", "确定？",
		            function (action) {            
		                if (action == "ok") {
		                  	nui.get("update").enable();
		                    grid.reload();
		                   	nui.get("save").hide();
		                   	nui.get("cancle").hide();
		                   	nui.get("popupMenu").enable();
		                    
		                }
		            }
       		 );
			} */
			/* //新增
			function add() {
				var newRow = {
					name : " "
				};
				grid.addRow(newRow, 0);
				this.grid.select(0);
				grid.beginEditRow(newRow); 
				nui.get("update").disable();
				nui.get("save").show();
				nui.get("cancle").show();
			} */
			//批量添加
			function batchAdd(){
			 nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
                    title: "新增记录", width: 600, height: 300,
                    onload: function () {//弹出页面加载完成
                    	var iframe = this.getIFrameEl();
	                    var data = {
	                    	pageType:"batchAdd",
	                    	tempFileName:"zzglImport.xlsx",
	                    	tempLoadName :"组织管理导入模板",
	                    	entitfName:"com.cgn.itmp.dailyandoverhaul.groupplant.Organization.Organization",
	                    	info:'组织机构'
	                    };//传入页面的json数据
	                     iframe.contentWindow.SetData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
            });
		}
			//编辑
			/* function edit() {
				var row = grid.getSelected();
				if(row){
					grid.beginEditRow(row); 
					nui.get("save").show();
					nui.get("cancle").show();
					nui.get("popupMenu").disable();	
					return;
				}
				nui.alert("请选中一条记录！");
			} */
			
			function recycle() {
				nui.open({
					showMaxButton : true,
					url : "/itmp/groupplant/Organization/OrganizationRecycle.jsp",
					title : "回收站",
					width : 1000,
					height : 500,
					onload : function() {
					},
					ondestroy : function(action) {//弹出页面关闭前
					nui.get("save").hide();
					nui.get("cancle").hide();
					nui.get("update").disable();
					grid.reload();
					}
				});
			}

			//删除
			function remove() {
				var rows = grid.getSelecteds();
				if (rows.length > 0) {
					nui.confirm(
									"确定删除选中记录？",
									"系统提示",
									function(action) {
										if (action == "ok") {
											for(var i=0;i<rows.length;i++){
												delete rows[i].orderindex;
											}
											var json = nui.encode({
												data : rows,
												entity : "com.cgn.itmp.dailyandoverhaul.groupplant.Organization.Organization",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
											});
						
											grid.loading("正在删除中,请稍等...");
											$
													.ajax({
														url: "com.cgn.itmp.knowledgebase.tinencyclopediabiz.deleteone.biz.ext",
														type : 'POST',
														data : json,
														cache : false,
														contentType : 'text/json',
														success : function(text) {
															var returnJson = nui.decode(text);
															if (returnJson.exception == null) {
																grid.reload();
// 																  nui.get("popupMenu").enable();
						                            				nui.get("update").disable();
						                                            nui.get("save").hide();
																	nui.get("cancle").hide();
																nui.alert("删除成功","系统提示",
																				function(action) {
																				});
															} else {
																grid.unmask();
																nui.alert("删除失败","系统提示");
															}
														}
													});
										}
									});
				} else {
					nui.alert("请选中一条记录！");
				}
			}

			//重新刷新页面
			function refresh() {
				var form = new nui.Form("#form1");
				var json = form.getData(false, false);
				grid.load(json);//grid查询
				nui.get("update").enable();
			}

			//查询
			function searchs() {
				var form = new nui.Form("#form1");
				var json = form.getData(false, false);
				grid.load(json);//grid查询
				nui.get("update").disable();
			}

			//重置查询条件
			function reset() {
				var form = new nui.Form("#form1");//将普通form转为nui的form
				form.reset();
			}

			//enter键触发查询
			function onKeyEnter(e) {
				searchs();
			}

		   //当选择列时
//             function selectionChanged(){
//                 var rows = grid.getSelecteds();
//                  if(rows.length>1  || grid.isEditing()||rows.length==0){
//                     nui.get("update").disable();
//                 }else{
//                     nui.get("update").enable();
//                 }
//             }
			function selectionChanged() {
			var rows = grid.getSelecteds();
			if (rows) {
				if (rows.length == 1) {
					//两个都恢复
					nui.get("update").enable();
// 					$("#editbtn").attr("title","");
// 					$("#editbtn").prop("disabled", "");
// 					$("#delebtn").prop("disabled", "");
// 					$("#addbtn").prop("disabled", "");
					if(rows[0].status=="YQX"){
						$("#editbtn").prop("disabled", "disabled");
					}
				} else if (rows.length > 1) {
				  nui.get("update").disable();
					//修改禁止
// 					$("#editbtn").attr("title","");
// 					$("#editbtn").prop("disabled", "disabled");
// 					$("#addbtn").prop("disabled", "disabled");
					//删除恢复
// 					$("#delebtn").prop("disabled", "");
				} else {
					nui.get("update").disable();
// 					$("#editbtn").attr("title","请选择需修改条目");
					//两个都禁止
// 					$("#editbtn").prop("disabled", "disabled");
// 					$("#delebtn").prop("disabled", "disabled");
				}
			} else {
			nui.get("update").disable();
				//两个都禁止
// 				$("#editbtn").attr("title","请选择需修改条目");
// 				$("#editbtn").prop("disabled", "disabled");
// 				$("#delebtn").prop("disabled", "disabled");
				
			}
		}   

			//公司公共代码转换
			function gsRenderer(e) {
				return nui.getDictText("GS", e.value);
			}
			//组织公共代码转换
			function zzRenderer(e) {
				return nui.getDictText("ZZ", e.value);
			}
			//角色公共代码转换
			function jsRenderer(e) {
				return nui.getDictText("JS", e.value);
			}
			                                																			//显示出高级查询的条件
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