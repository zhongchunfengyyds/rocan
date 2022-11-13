<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<%--
- Author(s): cuiK
- Date: 2019-01-07 16:34:41
- Description:
    --%>
<head>
<title>参考图例管理查询</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%= request.getContextPath()%>/common/common.js"
	type="text/javascript"></script>
<script src="<%= request.getContextPath() %>/common/nui/nui.js"
	type="text/javascript"> </script>
<script type="text/javascript"
	src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
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
	style="width: 98%; height: 98%; background-color: #f1f1f1; margin: 0 auto;">
	<div class="bs-docs-section">
	<div class="search-box">
		<div class="search-container folding-menu" id="queryForm">
			<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;">
					<tr class="">
							<td class="form_label">关键字查询:</td>
							<td class="form_label"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td colspan="2"
								style="width: 50%; border-right: 1px solid #f7f7f9 !important"
								class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="allQuery"
										class="btn btn-default" onclick="search1()"> 查询 </a> <a
										class="btn btn-default" onclick="reset()"> 重置 </a>
								</div>
							</td>
							<td style="width: 0%; background: #f7f7f9;" class="form_label">
							</td>
						</tr>
				</table>
				<div id="form1" class="nui-form display" align="center" style="height: 10%">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.base.legendManagement.LEGEND">
					<!-- 排序字段 -->
					<input class="nui-hidden" name="criteria/_expr[1]/isdelete" value="0" />
					<input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
					<input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
					<input class="nui-hidden" id="con_jdid" name="criteria/_expr[2]/jd" value="" />
					<input class="nui-hidden" name="criteria/_expr[2]/_op" value="in">
					<input class="nui-hidden" id="con_jzid" name="criteria/_expr[3]/jzid" value="" />
					<input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
					<input class="nui-hidden" name="criteria/_orderby[4]/_property" value="uuid">
					<input class="nui-hidden" name="criteria/_orderby[4]/_sort" value="asc">
					
				</div>
			</div>

		</div>
	</div>
</div>

		<script type="text/javascript"
			src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
	</div>
	<div region="center" style="width: 100%; height: 95%;"
		showToolbar="false" showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0; padding:5px 0px;"
			name="ITMP_btn">
			<table style="width: 100%;">
				<tr>
					<td style="width: 100%;"><a
						class="nui-menubutton btn btn-default btn-xs" menu="#popupMenu"
						name="ITMP_btnAdd">新增</a>
						<ul id="popupMenu" class="nui-menu" style="display: none;">
							<li>
							<li name="ITMP_btnAddOne" onclick="addRow()">单条增加</li>
							<li name="ITMP_btnAddBatch" onclick="batchAdd()">批量增加</li>

						</ul> <a id="update"
						class="nui-button showCellTooltip btn btn-default btn-xs"
						onclick="edit()" name="ITMP_btnEdit"> 修改
					</a> <a class="nui-button btn btn-default btn-xs" onclick="remove()"
						name="ITMP_btnDel"> 删除
					</a> <a id="upload" class="nui-button btn btn-default btn-xs"
						onclick="batchAddAttach()" name="ITMP_btnAddAttachBatch"> 导入附件
					</a> <a class="nui-button btn btn-default btn-xs" onclick="output()"
						name="ITMP_btnExp">导出</a> <a
						class="nui-button btn btn-default btn-xs" onclick="recycle()"
						name="ITMP_btnRec"> 回收站
					</a> <span id="saveOrCancel"> <a
							class="nui-button btn btn-warning btn-xs" id="save"
							onclick="saveData()">保存</a> <a
							class="nui-button btn btn-primary btn-xs" id="cancle"
							onclick="cancelSave()">取消</a>

					</span></td>
				</tr>
			</table>
		</div>
		<div class="nui-fit">
			<div id="datagrid1" class="nui-datagrid" dataField="tcgndgglcktlgls"
				style="width: 100%; height: 100%;"
				url="com.cgn.itmp.outlineandplan.base.LegendManagement.QueryCktlglAndFile.biz.ext"
				allowResize="true" pageSize="20" sizeList="[20,100,1000]"
				onselectionchanged="selectionChanged" allowCellEdit="false"
				allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true"
				allowAlternating="true" allowCellValid="true" allowSortColumn="true"
				sortMode="client" oncellvalidation="onCellValidation"
				allowAlternating="true">
				<div property="columns">
					<div type="checkcolumn"></div>
					<div field="uuid" allowResize="false" width="120"
						headerAlign="center" allowSort="true" visible="false">
						<input property="editor" class="nui-textbox" style="width: 100%;" />

					</div>
					<div field="fildid" headerAlign="center" allowSort="true"
						visible="false"></div>

					<div field="cktlbh" allowResize="false" width="10%"
						headerAlign="center" align="center" allowSort="true">
						参考图例编号 <input property="editor" class="nui-textbox" onvalidation="hasIllegalChar(e,32,true,true)"
							name="tcgndgglcktlgl.cktlbh" style="width: 100%;" required="true"
							requiredErrorText="参考图例编号不能为空" />
					</div>
					<div field="cktlmc" allowResize="false" width="40%"
						headerAlign="center" allowSort="true">
						参考图例名称 <input property="editor" class="nui-textbox" onvalidation="hasIllegalChar(e,500,true,true)"
							name="tcgndgglcktlgl.cktlmc" style="width: 100%;" required="true"
							requiredErrorText="参考图例名称不能为空" />
					</div>

					<div field="fj" allowResize="false" width="40%" renderer="setFile"
						headerAlign="center" allowSort="true">
						附件 <input property="editor" id="fj"
							class="nui-fileupload  nui-form-input" name="uploadFile"
							limitType="*.*" limitSize="100MB" onvalidation="hasIllegalChar(e,500,false,true)"
							flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf"
							onfileselect="onfileselect"
							uploadUrl="<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp"
							onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
							style="width: 100%;" />
					</div>
					<div field="filename" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="filepath" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="isdelete" headerAlign="center" allowSort="true"
						visible="false">
						是否删除 <input property="editor" class="nui-combobox"
							name="tcgndgglcktlgl.isdelete" value="0" style="width: 100%;" />
					</div>
					<div field="scr" headerAlign="center" allowSort="true"
						visible="false">
						删除人 <input property="editor" class="nui-combobox"
							name="tcgndgglcktlgl.scr" style="width: 100%;" />
					</div>
					<div field="scsj" headerAlign="center" allowSort="true"
						visible="false" dateFormat="yyyy-MM-dd HH:mm:ss">
						删除时间 <input property="editor" class="nui-combobox"
							name="tcgndgglcktlgl.scsj" style="width: 100%;" />
					</div>
					<div field="filePath" headerAlign="center" allowSort="true"
						visible="false">file_path</div>
					<div field="fileRealName" headerAlign="center" allowSort="true"
						visible="false">fileRealName</div>
					<div field="addtime" headerAlign="center" allowSort="true"
						visible="false" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
            nui.parse();
            window.alert = function() {
			    return false;
			}
            //按钮权限控制
            accessControlButton('<%=userRoleCodeList %>',1);
            var role = '<%=userRoleCodeList %>';
            if(role.indexOf(",ITMP_JDGLY") > 0 &&'<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") <0){
				if (nui.getbyName("ITMP_btnAddAttachBatch") != undefined) {
					nui.getbyName("ITMP_btnAddAttachBatch").show();
				}
			}

            var grid = nui.get("datagrid1");
            var fileName = "";
            var filePath = "";
            var fildId = "";
			nui.get("save").hide();
			nui.get("cancle").hide();
			nui.get("update").disable();
			var jd=getCookie('jdid');
			var jz=getCookie('jzid');
			nui.get('con_jdid').setValue(jd);
			nui.get('con_jzid').setValue(jz);
			if(jd!=null && jd!=""){
				var formData = new nui.Form("#form1").getData(false,false);
            	grid.load(formData);
			
			}
          
            var jzCombox = null;
			
              //关键字查询
            function btnQuery(){
				var gjz=$("#cond").val();
				if(gjz==""){
					refresh();
					nui.get("update").disable();
				}else{
					 var data = {
					 	 matchFied :"cktlbh,cktlmc",
						 wordVal : $("#cond").val(),
						 entity  : $("input[name='criteria/_entity']").val(),
						 entityName : 'criteria',
						 sfdel : true,
						 jdInfo:'jd@'+getCookie('jdid'),
						 jzInfo:'jzid@'+getCookie('jzid')
					 } 
					 var query = nui.decode(getKeyWordQuery(data));
					 grid.load(query);
					 nui.get("update").disable();
				 }
			
			}
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
            
             function output(){
                var form = new nui.Form("#form1");
                var json = form.getData(false,false);
                nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiledAndAttach.jsp",
                    title: "导出数据", width: 400, height: 200,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                            entityName:"com.cgn.itmp.outlineandplan.base.legendManagement.LEGEND",
                            queryParam:json,								    //查询数据
                            queryKey:'criteria',                              //查询实体名
                            query:['isdelete','jd','jzid','uuid'],  				//按顺序放置
                            filterField:['uuid','isdelete','addtime','name','scr','scsj','filepath','filename','fildid','fileId','fileRealName','filePath','fileSize','fileType','fileUploadTime','fileUploadUser','fileNewName'],
                            expTitle:"参考图例管理",
                            jdFieds:"jd",
                        	jzFieds:"jzid",
                        	order:"uuid@asc",
                        	attachFied:"fileId"
                    };//传入页面的json数据
                        iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                            grid.reload();
                    }
                });
             }
            //上传附件操作
        	function onfileselect(e){
				startUpload(e);
			}
			//上传附件
			function startUpload(e) {
		        var fileupload = e.sender;
		        fileupload.startUpload();
		    }
		    //上传成功时，回写附件的name、id
		  function onUploadSuccess(e,row){
			fileName = nui.decode(e.serverData).list[0].name;
				//filePath = nui.decode(e.serverData).ret.filePath;
			fildId = nui.decode(e.serverData).list[0].uri;
		}
            //附件超链接设置
          function setFile(e) {
				var fileRealName = e.record.fj;
				var filepath = e.record.filepath;
				var fileId = e.record.fildid;
			
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
          function saveData(){
          
           	   grid.commitEdit();
			       grid.validateRow(editRow); 
	            if (grid.isValid() == false) {
	               grid.beginEditRow(editRow); 
	                nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;;
	            }
			 	var jsonObject = grid.getChanges();
		
				if(jsonObject != null && jsonObject.length > 0){
					jsonObject[0]['fj'] = fileName;
			 		jsonObject[0]['fildid'] = fildId;
			 		jsonObject[0]['jd'] = jd;
				} else{
					nui.showTips({content: '数据未更改',state: 'warning',x: 'center', y: 'center'});
            		grid.beginEditRow(editRow); 
					return;
				}
				
					jsonObject[0]['jzid'] = jz;
            		  var data = {
					  	jsonObject:jsonObject[0] 
					  };
            		   var json = nui.encode(data);
//             		   grid.loading("保存中，请稍后......");
			            nui.ajax({
			                url: "com.cgn.itmp.outlineandplan.base.LegendManagement.addCktlglOrEdit.biz.ext",
			                type: 'POST',
			                data: json,
			                success: function (data) {
			                
			                  var result = data.result;
			                  if(result == 'false'){
				                  nui.alert("保存失败,当前基地下参考图例编号已经存在", "系统提示");
				   				  grid.beginEditRow(editRow); 
			                  }else{
			                  	grid.reload();
		                		nui.get("update").disable();
		                		nui.get("save").hide();
								nui.get("cancle").hide();
								nui.get("popupMenu").enable();
								fileName = "";
		            			filePath = "";
			                  }
			                
			                },
			                error: function (jqXHR, textStatus, errorThrown) {
			                    nui.alert(jqXHR.responseText,'错误',function (action) {
									 grid.beginEditRow(editRow); 
							});
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
			function addRow() {
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
				nui.get("popupMenu").disable();
				 editRow = newRow;
			}
			grid.on("cellbeginedit", function (e) {
				if (e.field == "fj") {
			        e.editor.text = e.row.fj;
			    }
           });
        //编辑
			function edit() {
				var row = grid.getSelected();
				if(row){
					grid.validateRow(row);   //验证
					grid.beginEditRow(row); 
					fildId = row.fildid;
					fileName = row.fj;
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
	                    	tempFileName:"cxglcktlImport.xlsx",
	                    	tempLoadName :"参考图例管理导入模板",
	                    	entitfName:"com.cgn.itmp.outlineandplan.base.legendManagement.LEGEND"
	                    };//传入页面的json数据
	                     iframe.contentWindow.SetData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
            });
		}
			//回收站
           function recycle (){
           	 nui.open({
           	 		showMaxButton : true,
                    url: "/itmp/base/legendManagement/LegendRecycle.jsp",
                    title: "回收站", width: 1000, height: 600,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                  /*   iframe.contentWindow.setFormData(data); */
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    nui.get("save").hide();
					nui.get("cancle").hide();
					nui.get("update").disable();
					nui.get("popupMenu").enable();
                 	grid.reload();
                }
                });
            
            }
             //编辑
            function SearchXq() {
                 var row = grid.getSelected();
                if (row) {
                    nui.open({showMaxButton : true,
                        url: "/itmp/base/legendManagement/LegendForm.jsp",
                        title: "查看数据详情",
                        width: 700,
                        height: 300,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{tcgndgglcktlgl:row}};
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
                        var json = nui.encode({tcgndgglcktlgls:rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                        grid.loading("正在删除中,请稍等...");
                        $.ajax({
                            url:"com.cgn.itmp.outlineandplan.base.LegendManagement.ljDeleteTCgnDgglCktlgls.biz.ext",
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
                        nui.get("popupMenu").enable();	
                        nui.get("update").disable();
                        nui.get("save").hide();
						nui.get("cancle").hide();
                    }

                    //查询
                    function search1() {
                        var form = new nui.Form("#form1");
                        var json = form.getData(false,false);
                        grid.load(json);//grid查询
                        nui.get("popupMenu").enable();
                    	nui.get("update").disable();
                        nui.get("save").hide();
						nui.get("cancle").hide();
                    }

                    //重置查询条件
                    function reset(){
                    $("#cond").val('');
                        var form = new nui.Form("#form1");//将普通form转为nui的form
                        form.reset();
                        nui.get('con_jdid').setValue(jd);
						nui.get('con_jzid').setValue(jz);
                    }

                    //enter键触发查询
                    function onKeyEnter(e) {
                        search1();
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
                 	function onCellValidation(e) {
			
							if(e.field == "jzid"||  e.field == "cktlbh" || e.field == "cktlmc" ){
									 
									 if (e.value == null || e.value == "") {
					                    e.isValid = false;
					                    e.errorText = "字段不能为空";
			        				}
							
							}
							
						    
			     	   }
			     	   
			     	   //基地转换
			     		function JZRenderer(e){
			     	    		var val = "";
			     	    		var jzval = e.row.jzid;
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
						
						//导入附件
						function batchAddAttach(){
							nui.open({
									showMaxButton : true,
				                    url: "/itmp/basecommon/batchAddAttach.jsp",
				                    title: "导入附件", width: 600, height: 300,
				                    onload: function () {//弹出页面加载完成
				                    	var iframe = this.getIFrameEl();
					                    var data = {
					                    	page:"CKT",
					                    
					                    };//传入页面的json数据
					                     iframe.contentWindow.SetData(data);
				                    },
				                    ondestroy: function (action) {//弹出页面关闭前
				                    grid.reload();
				                }
				            });
						}
             
                            </script>
</body>
</html>
