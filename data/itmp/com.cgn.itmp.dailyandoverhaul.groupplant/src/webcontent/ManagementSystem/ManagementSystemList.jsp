<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<%
	UserObject user=(UserObject)request.getSession().getAttribute("userObject");
	String userName=user.getUserRealName();
	String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
 
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2018-12-26 17:00:11
- Description:
    --%>
    <head>
        <title>
            	管理制度查询
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
									
									<a class="btn btn-default" onclick="reset()"> 重置 </a>
									
								</div>
							</td>
							<td style="width: 0%; background: #f7f7f9;" class="form_label">
							</td>
						</tr>
					</table>
            <div id="form1" class="nui-form" align="center">
              
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.groupplant.ManagementSystem.ManagementSystemSearch">
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="orderindex">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
                <input class="nui-hidden" name="criteria/_expr[1]/isdelete" value="0" />
                <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
				<input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
                <!-- 排序字段 -->
	                    	
<!-- 	                              <input type="text" id="cond" name="processInstDesc:%" class="form-control" placeholder="关键字查询" tmplid="todolist" url=" "> -->
<!-- 	                              <span class="input-group-btn" style="width:auto;"> -->
<!-- 	                                <button class="btn btn-default" type="button" id="query" onclick="btnQuery();" style="height: 34px;"><span class="fa fa-search"></span></button> -->
<!-- 	                              </span> -->
	                               
	                                    	
            </div>
        </div>
        
		</div>
	</div>
</div>
        <div region="center"  style="width:100%;height:93%;" showToolbar="false" showFooter="false" >  
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
                         	<a id="update" class="nui-button showCellTooltip btn btn-default btn-xs" name="ITMP_btnEdit" onclick="edit()" >修改</a>
                         	<a class="nui-button btn btn-default btn-xs"  onclick="remove()" name="ITMP_btnDel" >删除</a>
	                        <a class="nui-button btn btn-default btn-xs" onclick="recycle()" name="ITMP_btnRec">回收站</a>
	                       	<a class="nui-button btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp">导出</a>
	                        
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
				<div id="datagrid1" class="nui-datagrid" dataField="tqcjsglglzds"
					style="width: 100%; height: 100%;"
					url="com.cgn.itmp.dailyandoverhaul.groupplant.ManagementSystem.queryTQcjsglGlzds.biz.ext"
				    allowResize="true" pageSize="20" sizeList="[20,100,1000]" 
					onselectionchanged="selectionChanged" allowCellEdit="false"
					allowCellSelect="true" multiSelect="true" allowAlternating="true" editNextOnEnterKey="true" allowSortColumn="true" sortMode="client"
				allowCellValid="true" oncellvalidation="onCellValidation">
					<div property="columns">
						<div type="checkcolumn"></div>
						<div field="uuid" allowResize="true" width="120" 
							headerAlign="center" allowSort="true" visible="false">
							<input property="editor" class="nui-textbox" style="width: 100%;" />
						</div>
						<div field="name" allowResize="true" width="120"
							headerAlign="center" allowSort="true">
							名称 <input property="editor" class="nui-textbox"onvalidation="hasIllegalChar(e,500,true,true)"
								style="width: 100%;"required="true" requiredErrorText="名称不能为空"/>
						</div>
						<div field="zrbm" allowResize="true" width="120"
							headerAlign="center" allowSort="true">
							责任部门 <input property="editor" class="nui-textbox" onvalidation="hasIllegalChar(e,200,false,true)"
								style="width: 100%;"  />
						</div>
						<div field="ywly" allowResize="true" width="120"
							headerAlign="center" allowSort="true">
							 业务领域 <input property="editor" class="nui-textbox" onvalidation="hasIllegalChar(e,200,true,true)"
								style="width: 100%;" />
						</div>
						<div field="syfw" allowResize="true" width="120"
							headerAlign="center" allowSort="true">
							   适用范围 <input property="editor" class="nui-textbox" onvalidation="hasIllegalChar(e,200,false,true)"
								style="width: 100%;" />
						</div>
						<div field="bc" allowResize="true" width="120"
							headerAlign="center" allowSort="true">
							  版次<input property="editor" class="nui-textbox" onvalidation="hasIllegalChar(e,200,true,true)"
								style="width: 100%;" required="true" requiredErrorText="版次不能为空"/>
						</div>
						<div field="xcsbsj" width="140" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss">下次升版时间
			                 <input property="editor" class="nui-datepicker" style="width:100%;" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false"
	          		 format="yyyy-MM-dd HH:mm:ss" timeFormat="HH:mm:ss" showTime="true" showOkButton="true" showClearButton="false"/>
			            </div>
						<div field="fj" allowResize="true" width="120" renderer="setFile"   headerAlign="center" allowSort="true">
							  附件<input property="editor" onvalidation="hasIllegalChar(e,200,true,true)" class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" limitSize="100MB" flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect" uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"  onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess" style="width:100%;"/>
						</div>
                        <div field="fileRealName" headerAlign="center" allowSort="true" visible="false" >
                           fileRealName
                        </div>
                         <div field="filePath" headerAlign="center" allowSort="true" visible="false" >
                          
                        </div>
                         <div field="filename" headerAlign="center" allowSort="true" visible="false" >
                          
                        </div>
                        <div field="fildid" headerAlign="center" allowSort="true" visible="false" >
                        </div>
						<div field="isdelete" allowResize="true" width="120" headerAlign="center" allowSort="true" visible="false">
							
						</div>
						<div field="addtime" headerAlign="center" allowSort="true" visible="false" dateFormat="yyyy-MM-dd HH:mm:ss">
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
            fileName = "";
		    filePath = "";
			var editRow = null;
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

            var grid = nui.get("datagrid1");
            var formData = new nui.Form("#form1").getData(false,false);

            grid.load(formData);
            nui.get("save").hide();
			nui.get("cancle").hide();
			nui.get("update").disable();
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
			
			  function output(){
                var form = new nui.Form("#form1");
                var json = form.getData(false,false);
                nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据", width: 400, height: 240,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                            entityName:"com.cgn.itmp.dailyandoverhaul.groupplant.ManagementSystem.ManagementSystemSearch",
                            queryParam:json,								    //查询数据
                            queryKey:'criteria',                              //查询实体名
                            query:['isdelete'],  //按顺序放置
                            filterField:['fileRelativePath','orderindex','uuid','isdelete','fj','addtime','scr','scsj','fildid','fileId','fileRealName','filePath','fileSize','fileType','fileUploadTime','fileUploadUser','fileNewName'],
                            expTitle:"管理制度",
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
						 	 matchFied :"name,zrbm,ywly,syfw,bc",
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
		//必填项校验
         function onCellValidation(e) {
            if (e.field == "name" || e.field == "ywly" || e.field == "bc" || e.field == "fj") {
                if (e.value == null || e.value == "") {
                    e.isValid = false;
                    e.errorText = "字段不能为空";
                }
            }
        }
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
           //一览页面附件显示 
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
            /******   Tip提示  End   *******/
			 function saveData() {
			 	grid.commitEdit();
			    grid.validateRow(editRow);
	            if (grid.isValid() == false) {
	            nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
	               grid.beginEditRow(editRow); 
	                return;
	            }
			 	var jsonObject = grid.getChanges();
				if(jsonObject != null && jsonObject.length > 0){
					jsonObject[0]['filename'] = fileName;
			 		jsonObject[0]['filepath'] = filePath;
			 		jsonObject[0]['xcsbsj'] = nui.formatDate(jsonObject[0]['xcsbsj'],'yyyy-MM-dd');
				}
			 	
				var data = {
					jsonObject : jsonObject[0],token:"<%=TokenUtil.getTokenString(request.getSession())%>"
				};
				var form = new nui.Form("#datagrid1");
				form.validate();
                if(form.isValid()==false){
                	nui.alert("请把数据填写完整！");
               		return;
                } 
				var json = nui.encode(data);
				grid.loading("保存中，请稍后......");
				nui.ajax({
							url : "com.cgn.itmp.dailyandoverhaul.groupplant.ManagementSystem.addGlzdOrEdit.biz.ext",
							type : 'POST',
							data : json,
							success : function(text) {
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
			 
              
        	//新增
			function add() {
				var newRow = {
					xcsbsj : new Date()
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
			//批量添加
			function batchAdd(){
			 nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
                    title: "新增记录", width: 600, height: 300,
                    onload: function () {//弹出页面加载完成
                    	var iframe = this.getIFrameEl();
	                    var data = {
	                    	pageType:"batchAdd",
	                    	tempFileName:"glzdImport.xlsx",
	                    	tempLoadName :"管理制度导入模板",
	                    	entitfName:"com.cgn.itmp.dailyandoverhaul.groupplant.ManagementSystem.ManagementSystem",
	                    	info : "管理制度"
	                    };//传入页面的json数据
	                     iframe.contentWindow.SetData(data);
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
                    url: "/itmp/groupplant/ManagementSystem/ManagementSystemRecycle.jsp",
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
                                    var json = nui.encode({tqcjsglglzds:rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.dailyandoverhaul.groupplant.ManagementSystem.ljdeleteTQcjsglGlzds.biz.ext",
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
