
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
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
- Author(s): cuiK
- Date: 2019-01-03 16:08:12
- Description:
    --%>
<head>
<title>程序管理查询</title>
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
	        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
	
</head>

<body
	style="background-color: #f1f1f1; width: 98%; height: 98%; margin: 0 auto;">
	<div class="bs-docs-section">
	<div class="search-box">
		<div class="search-container folding-menu" id="queryForm">
			<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;">
					<tr class="">
						<td class="form_label">关键字查询:</td>
						<td class="form_label"><input type="text" id="cond" name="processInstDesc:%" class="form-control Keywordsearch"
							 placeholder="关键字查询" tmplId="todolist" url=" "></td>
						<td colspan="2"
								style="width: 50%; border-right: 1px solid #f7f7f9 !important"
								class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()">
										模糊查询 </a> <a id="allQuery" style="display: none"
										class="btn btn-default" onclick="searchs()"> 查询 </a> <a
										class="btn btn-default" onclick="reset()"> 重置 </a>
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
				<div id="form1" class="nui-form display" align="center" style="height: 6%">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM_SEARCH">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">程序名称:</td>
							<td colspan="1"><input class="nui-textbox" name="criteria/_expr[1]/name" /> <input class="nui-hidden" name="criteria/_expr[1]/_op"
								 value="like"> <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all"></td>
							<td class="form_label">编写单位:</td>
							<td colspan="1"><input class="nui-textbox" name="criteria/_expr[2]/bxdw" /> <input class="nui-hidden" name="criteria/_expr[2]/_op"
								 value="like"> <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all"></td>
							<input class="nui-hidden" name="criteria/_expr[3]/isdelete" value="0" /> <input class="nui-hidden" name="criteria/_expr[3]/_op"
							 value="like"> <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="end"> <input class="nui-hidden"
							 id="con_jdid" name="criteria/_expr[4]/dzid" value="" /> <input class="nui-hidden" name="criteria/_expr[4]/_op"
							 value="in">
							<input class="nui-hidden" id="con_jzid" name="criteria/_expr[5]/jzid" value="" /> <input class="nui-hidden" name="criteria/_expr[5]/_op"
							 value="like">
							<input class="nui-hidden" name="criteria/_orderby[6]/_property" value="uuid">
							<input class="nui-hidden" name="criteria/_orderby[6]/_sort" value="asc">
						</tr>

					</table>
				</div>
			</div>

		</div>
	</div>
</div>
	
	<div region="center" style="width: 100%; height: 95%;"
		showToolbar="false" showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0; padding: 0px;" name="ITMP_btn">
			<table style="width: 100%;">
				<tr>
					<td style="width: 100%;padding:5px 0;"><a
						class="nui-menubutton btn btn-default btn-xs" menu="#popupMenu" name="ITMP_btnAdd">新增</a>
						<ul id="popupMenu" class="nui-menu" style="display: none;">
							<li>
							<li name="ITMP_btnAddOne"  onclick="addRow()">单条增加</li>
							<li name="ITMP_btnAddBatch"  onclick="batchAdd()">批量增加</li>

						</ul> <a id="update"
						class="nui-button showCellTooltip btn btn-default btn-xs"
						onclick="edit()" name="ITMP_btnEdit">修改
					</a> <a id="upload" class="nui-button btn btn-default btn-xs"
						onclick="batchAddAttach()" name="ITMP_btnAddAttachBatch"> 导入附件
					</a> <a class="nui-button btn btn-default btn-xs" onclick="output()"  name="ITMP_btnExp">导出</a> <a
						class="nui-button btn btn-default btn-xs" onclick="remove()"  name="ITMP_btnDel">
							 删除
					</a> <a class="nui-button btn btn-default btn-xs"
						onclick="recycle()"  name="ITMP_btnRec">回收站
					</a>
					 	<a class="nui-button btn btn-default btn-xs"
						onclick="reminder()"  > 升版提醒
					</a>
					 <span id="saveOrCancel"> <a
							class="nui-button btn btn-warning btn-xs" id="save"
							onclick="saveData()">保存</a> <a
							class="nui-button btn btn-default btn-xs" id="cancle"
							onclick="cancelSave()">取消</a>

					</span>
				</tr>
			</table>

		</div>

		<div class="nui-fit">
			<div id="datagrid1" class="nui-datagrid" dataField="tcgndgglcxgls"
				style="width: 100%; height: 100%;"
				url="com.cgn.itmp.outlineandplan.base.ProgramManagement.QueryCxglAndFile.biz.ext"
				allowResize="true" pageSize="20" sizeList="[20,100,1000]"
				onselectionchanged="selectionChanged" allowCellEdit="false"
				allowSortColumn="true" sortMode="client" multiSelect="true"
				editNextOnEnterKey="true"  oncellbeginedit="OnCellBeginEdit"
				allowAlternating="true" allowCellValid="true"
				oncellvalidation="onCellValidation">
				<div property="columns">
					
					<div type="checkcolumn"></div>
					<div field="uuid" allowResize="false" style="width: 100%;"
						headerAlign="center" allowSort="true" visible="false">
						<input property="editor" class="nui-textbox" style="width: 100%;" />
					</div>
						<div field="cxbm"  style="width: 100%;"
						headerAlign="center" allowSort="true">
						程序编码 <input property="editor" id="cxbm" class="nui-textbox" onvalidation="hasIllegalChar(e,500,true,true)"
							name="tcgndgglcxgl.cxbm"  style="width: 100%;" />
					</div>
					<div field="name" style="width: 100%;"
						headerAlign="center" allowSort="true">
						程序名称 <input property="editor" id="name" class="nui-textbox"
							name="tcgndgglcxgl.name" required="true" onvalidation="hasIllegalChar(e,2000,true,true)"
							requiredErrorText="名称不能为空" style="width: 100%;" />
					</div>
					<div field="lx" renderer="lxRenderer" 
						style="width: 100%;" headerAlign="center" allowSort="true">
						类型 <input property="editor" id="lx" class="nui-dictcombobox" onvalidation="hasIllegalChar(e,200,true,true)"
							name="tcgndgglcxgl.lx" style="width: 100%;" dictTypeId="CXLX"
							dataField="cxlx" required="true" requiredErrorText="类型不能为空" />
					</div>
					<div field="jm"  style="width: 100%;"
						headerAlign="center" allowSort="true">
						简码 <input property="editor" id="jm" class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)"
							required="true" requiredErrorText="简码不能为空" style="width: 100%;"
							name="tcgndgglcxgl.jm" />
					</div>
				
					<div field="bbh"  style="width: 100%;"
						headerAlign="center" allowSort="true">
						版本号 <input property="editor" id="bbh" class="nui-textbox"
							 name="tcgndgglcxgl.bbh" onvalidation="hasIllegalChar(e,100,false,true)"
							style="width: 100%;" />
					</div>
					<div field="status" headerAlign="center" allowSort="true">
						状态 <input property="editor" class="nui-textbox" value="" onvalidation="hasIllegalChar(e,100,false,true)"
							name="tcgndgglcxgl.status" style="width: 100%;" />
					</div>
					<div field="sxrq" allowResize="false" style="width: 100%;"
						headerAlign="center" allowSort="true"
						dateFormat="yyyy-MM-dd">
						生效日期<input  property="editor" class="nui-datepicker"  style="width:100%;" onvaluechanged="getxcsbsj" />
							

					</div>
					<div field="xcsbsj"  style="width: 100%;" headerAlign="center" allowSort="true" renderer="sxrqRenderer" dateFormat="yyyy-MM-dd">
						下次升版日期 <input  property="editor"  class="nui-datepicker"  style="width:100%;"/>

					</div>
					<div field="bxdw"  style="width: 100%;"
						headerAlign="center" allowSort="true">
						编写单位 <input property="editor" name="tcgndgglcxgl.bxdw" onvalidation="hasIllegalChar(e,10,false,true)"
							class="nui-textbox" style="width: 100%;" />
					</div>
					<div field="fj"  style="width: 100%;" renderer="setFile"
						headerAlign="center" allowSort="true">
						附件 <input property="editor" id="fj"
							class="nui-fileupload  nui-form-input" name="uploadFile" onvalidation="hasIllegalChar(e,500,false,true)"
							limitType="*.*" limitSize="100MB"
							flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf"
							onfileselect="onfileselect"
							uploadUrl="<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp"
							onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
							style="width: 100%;" />
					</div>
					<div field="isdelete" headerAlign="center" allowSort="true"
						visible="false">
						是否删除 <input property="editor" class="nui-combobox"
							name="tcgndgglcxgl.isdelete" value="0" style="width: 100%;" />
					</div>
					<div field="scr" headerAlign="center" allowSort="true"
						visible="false">
						删除人 <input property="editor" class="nui-textbox"
							value="<%=userName %>" name="tcgndgglcxgl.scr"
							style="width: 100%;" />
					</div>
					<div field="scsj" headerAlign="center" allowSort="true"
						visible="false">
						删除时间 <input property="editor" class="nui-combobox"
							name="tcgndgglcxgl.scsj" style="width: 100%;" />
					</div>
					<div field="xcsbsj" headerAlign="center" allowSort="true"
						visible="false" dateFormat="yyyy-MM-dd HH:mm:ss">下次升版时间</div>
					<div field="filePath" headerAlign="center" allowSort="true"
						visible="false">file_path</div>
					<div field="fileRealName" headerAlign="center" allowSort="true"
						visible="false">fileRealName</div>
					<div field="filename" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="filepath" headerAlign="center" allowSort="true"
						visible="false"></div>
					<div field="addtime" headerAlign="center" allowSort="true"
						visible="false" dateFormat="yyyy-MM-dd HH:mm:ss"></div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
            nui.parse();
           
			//按钮权限控制
			accessControlButton('<%=userRoleCodeList %>',1);

			var grid = nui.get("datagrid1");
            var fileName = "";
            var filePath = "";
            var fildid = "";
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
				var xcsxrq="";
				function OnCellBeginEdit(e) {
					var grid = e.sender;
					var record = e.record;
					var field = e.field, value = e.value;
					var editor = e.editor;
					if (field == "xcsbsj") {
						xcsxrq = editor;
					}
		
				}
			
		 	function getxcsbsj(e){
			
			var row = grid.getSelected();
			var sbsj=e.value;
			var xcsbsj=row.xcsbsj;
			xcsbsj=parseInt(sbsj.getFullYear()+5)+"-"+parseInt(sbsj.getMonth()+1)+"-"+sbsj.getDate();
			xcsxrq.setValue(xcsbsj);
			
			} 
        
			function sxrqRenderer(e){
			
			var xcsbsj= e.value;
			
			if(xcsbsj != null){
				var cssj = new Date(xcsbsj);//超时时间
				cssj.setMonth(cssj.getMonth() - 3);
				
			    var newdate=nui.formatDate(new Date(),'yyyy-MM-dd');
			    
			    xcsbsj = nui.formatDate(xcsbsj,'yyyy-MM-dd');
			    if(xcsbsj==""){
			    	xcsbsj= e.value;
			    }
				cssj = nui.formatDate(cssj,'yyyy-MM-dd');
				if(newdate > xcsbsj){//系统日期大于下次升版日期
					e.rowStyle = 'color:gray';
				}else if(newdate > cssj){
					e.rowStyle = 'color:red';
				}else{
					e.rowStyle = 'color:black';
				}
			}
				return xcsbsj;
			
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
			//基地机组
			 
	          var jzCombox = nui.get("jizu");
			
			function onCellValidation(e) {
			
				if(e.field == "name" || e.field == "lx"|| e.field == "jm"){ 
						 if (e.value == null || e.value == "") {
		                    e.isValid = false;
		                    e.errorText = "字段不能为空";
        				}
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
				 var el = e.element;
				 
				 tip.setContent("请选择需要修改的数据");  //给提示框内容添加值
			    } 
			});
		 var tip1 = new nui.ToolTip();
			tip1.set({
			    target: document,
			    selector: '.zrr',   //要添加提示元素的calss
			    placement:'topleft',              //提示出现的位置 
       			onbeforeopen: function (e) {    
			        e.cancel = false;
			    },
			    onopen: function (e) {      //提示框打开触发事件
				 var el = e.element;
				 
				 tip1.setContent("系统默认当前登录人！");  //给提示框内容添加值
			    } 
			});
			
			var tip2 = new nui.ToolTip();
			tip2.set({
			    target: document,
			    selector: '.scsbrq',   //要添加提示元素的calss
			    placement:'topleft',              //提示出现的位置 
       			onbeforeopen: function (e) {    
			        e.cancel = false;
			    },
			    onopen: function (e) {      //提示框打开触发事件
				 var el = e.element;
				 tip2.setContent("系统根据生效日期的五年后自动计算");  //给提示框内容添加值
			    } 
			});
   	 //有效期公共代码转换
	
          //关键字查询
            function btnQuery(){
            	var gjz=$("#cond").val();
				if(gjz==""){
					refresh();
				}else{
					 var data = {
					 	 matchFied :"name,jm,cxbm,bbh,zrr,status,bxdw",
					 	 dicFied : "lx@CXLX",
						 wordVal : $("#cond").val(),
						 entity  : $("input[name='criteria/_entity']").val(),
						 entityName : 'criteria',
						 sfdel : true,
						 jdInfo:'dzid@'+getCookie('jdid'),
						 jzInfo:'jzid@'+getCookie('jzid')
						
					 } 
					 var query = nui.decode(getKeyWordQuery(data));
					 grid.load(query);
				}
			
			}
			//导出
		   function output(){
            var form = new nui.Form("#form1");
            var json = form.getData(false,false);
            nui.open({showMaxButton : true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiledAndAttach.jsp",
                title: "导出数据", width: 550, height: 200,
                onload: function () {//弹出页面加载完成
                var iframe = this.getIFrameEl();
                var data = {
                        entityName:"com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM_SEARCH",
                        queryParam:json,								    //查询数据
                        queryKey:'criteria',                              //查询实体名
                        query:['name','bxdw','isdelete','dzid','jzid','uuid'],  //按顺序放置
                        filterField:['fileRelativePath','uuid','isdelete','addtime','scr','zrr','dzid','scsj','jd','jzid','fildid','fileId','fileRealName','filePath','fileSize','fileType','fileUploadTime','fileUploadUser','fileNewName'],
                        expTitle:"程序管理",
                        dicFieds : "lx@CXLX",
                        jdFieds:"dzid",
                        jzFieds:"jzid",
                        order:"uuid@asc",
                        attachFied:"fildid"
                };//传入页面的json数据
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
                    url: "/itmp/base/programManagement/ProgramRecycle.jsp",
                    title: "回收站", width: 1000, height: 600,
                    onload: function () {
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
				fileName = nui.decode(e.serverData).list[0].name;
				//filePath = nui.decode(e.serverData).ret.filePath;
				fildid = nui.decode(e.serverData).list[0].uri;
			}
            //获取附件路径并添加超链接		
			function setFile(e) {
				var fileRealName = e.record.fj;
				var filepath = e.record.filepath;
				var fileId = e.record.fildid;
				if (fileRealName == null || fileRealName == 'null') {
					return "";
				}
				if (fileId == null || fileId == 'null') {
					return "";
				}
			 	var html = '<a href="javascript:void(0)" onclick="loadFtp(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
// 				if(fileId.split(".").length == 1){
// 					html = '<a href="#" onclick="load(\''+fileId+'\')" id="attr_'+filepath+'" >'+fileRealName+'</a>';
// 				}
				return html;
			}
			//ftp下载
			function loadFtp(fileId,fileRealName) {
				 var elemIF = document.createElement("iframe");
				 elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
				 document.body.appendChild(elemIF);
				 elemIF.style.display = "none";
			}		
			//本地下载
			function load(fileId){
			  window.location.href="com.cgn.itmp.basecommon.fileDownload.flow?fileId="+fileId;
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
					jsonObject[0]['fj'] = fileName;
			 		jsonObject[0]['fildid'] = fildid;
			 		jsonObject[0]['dzid'] = jd;
			 		jsonObject[0]['sxrq'] = nui.formatDate(jsonObject[0]['sxrq'],'yyyy-MM-dd');
			 		jsonObject[0]['xcsbsj'] = nui.formatDate(jsonObject[0]['xcsbsj'],'yyyy-MM-dd');
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
         		  // grid.loading("保存中，请稍后......");
		            nui.ajax({
		                url: "com.cgn.itmp.outlineandplan.base.ProgramManagement.addCxglOrEdit.biz.ext",
		                type: 'POST',
		                data: json,
		                success: function (data) {
		                   var result = data.result;
		                   if(result == 'false'){
		                   	 grid.unmask();
		                   	 	nui.alert("保存失败,当前基地下简码已经存在", "系统提示");
			   				  grid.beginEditRow(editRow); 
		                   }else{
		                  		nui.alert("保存成功！", "系统提示");
		                   		grid.reload();
			                		nui.get("update").disable();
			                		nui.get("save").hide();
									nui.get("cancle").hide();
									nui.get("popupMenu").enable();
									fileName = "";
			            			fileid = "";
		                   }
		                
		                },
		                error: function (jqXHR, textStatus, errorThrown) {
		                   nui.alert(jqXHR.responseText,'错误',function (action) {
									 grid.beginEditRow(editRow); 
							});
		                  
		                }
		            });
					            
	            //根据基地机组 查询升版的数据量，用于生成版次
// 	             var total = 1;
	             
// 	             if(jsonObject[0]._state == 'added' || (jsonObject[0]._state == 'modified' &&  typeof(changeObj[0].jm) != "undefined" &&  jsonObject[0].jm != '')){
// 				   	total = 0;
// 				  }
// 				 var data = {};
// 				 var fields = ['jzid','jm','isdelete'];
// 				 var values = [jz,jsonObject[0].jm,'0'];
// 				 data.entityType = "com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM";
// 				 data.fields = fields;
// 				 data.values = values;
// 				 var json = nui.encode(data);
// 			 	$.ajax({
// 				    url:"com.cgn.itmp.basecommon.Common.queryCountByEntity.biz.ext",
// 				    type:'POST',
// 				    cache:false,
// 				    data:json,
// 				    contentType:'text/json',
// 				    success:function(data){
// 				   		var count = data.count;
				   		
// 			   			if(count   > total){
// 			   				  nui.alert("保存失败,当前基地下简码已经存在", "系统提示");
// 			   				  grid.beginEditRow(editRow); 
// 	                	}else{
// 	                	 	  jsonObject[0]['jzid'] = jz;
// 	                		  var data = {
// 							  	jsonObject:jsonObject[0] 
// 							  };
// 	                		   var json = nui.encode(data);
// 	                		   grid.loading("保存中，请稍后......");
// 					            nui.ajax({
// 					                url: "com.cgn.itmp.outlineandplan.base.ProgramManagement.addCxglOrEdit.biz.ext",
// 					                type: 'POST',
// 					                data: json,
// 					                success: function (data) {
// 					                	grid.reload();
// 				                		nui.get("update").disable();
// 				                		nui.get("save").hide();
// 										nui.get("cancle").hide();
// 										nui.get("popupMenu").enable();
// 										fileName = "";
// 				            			filePath = "";
// 					                },
// 					                error: function (jqXHR, textStatus, errorThrown) {
// 					                   nui.alert(jqXHR.responseText);
// 					                }
// 					            });
// 	                	}
// 				   	}
// 				});
	
	            
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
			var now = new Date();
			now.setFullYear(now.getFullYear() + 5)
				var newRow = {
					sxrq : new Date(),
					xcsbsj:now
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
	                    	tempFileName:"cxglImport.xlsx",
	                    	tempLoadName :"程序管理导入模板",
	                    	entitfName:"com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM"
	                    };//传入页面的json数据
	                     iframe.contentWindow.SetData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
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
                            var json = nui.encode({tcgndgglcxgls:rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                            grid.loading("正在删除中,请稍等...");
                            $.ajax({
                                url:"com.cgn.itmp.outlineandplan.base.ProgramManagement.ljDeleteTCgnDgglCxgls.biz.ext",
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
                                    nui.get("update").enable();
                                    nui.get("saveOrCancel").hide();
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
                                    nui.get('con_jdid').setValue(jd);
									nui.get('con_jzid').setValue(jz);
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
                                //公共类型转换
                                function lxRenderer(e) {
									return nui.getDictText("CXLX", e.value);
								}
								
// 						function JZRenderer(e){
// 			     	    		var val = "";
// 			     	    		var jzval = e.row.jzid;
// 			     	    		if(jzval != null && jzval != ""){
// 			     	    		var jzid = jzval.split(",");			     	    		
// 				     	    		for(var i = 0 ; i < jzid.length ; i++){
// 						     	    	nui.ajax({
// 							                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJznameByid.biz.ext",
// 							                type: 'POST',
// 							                async: false,
// 							                data:"{jzid:'" + jzid[i] + "'}",
// 							                success: function (text) {
// 							                	val +=  text.jzname + (i == jzid.length -1 ? "" : ",");
// 							                }
// 							            });	
							            
// 							        }	
// 						        }				
// 							return val;
// 						}
             			
             			function batchAddAttach(){
             			
							nui.open({showMaxButton : true,
				                    url: "/itmp/basecommon/batchAddAttach.jsp",
				                    title: "导入附件", width: 600, height: 300,
				                    onload: function () {//弹出页面加载完成
				                    	var iframe = this.getIFrameEl();
					                    var data = {
					                    	page:"CXGL",
					                    
					                    };//传入页面的json数据
					                     iframe.contentWindow.SetData(data);
				                    },
				                    ondestroy: function (action) {//弹出页面关闭前
				                    grid.reload();
				                }
				            });
						}
								function Upgrade(){
							nui.open({showMaxButton : true,
				                    url: "/itmp/base/programManagement/ProgramUpgrade.jsp",
				                    title: "升版提醒", width: 1000, height: 600,
				                    onload: function () {//弹出页面加载完成
				                    },
				                    ondestroy: function (action) {//弹出页面关闭前
				                }
				            });
						}
								var data = {
										pageType : "program",
										urlName:"com.cgn.itmp.dailyandoverhaul.authorization.Common.checkqueryAll.biz.ext",//查询语句
										entityVal:"",
										removeUrl:"com.cgn.itmp.weldingmanagement.common.delete.biz.ext",//
										recoveryUrl:"com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//
										columnscode:[
											{type:"indexcolumn" },
											{type:"checkcolumn" },
											{field:'UUID',header:'uuid', width:100, headerAlign:"center", allowSort:true,visible:false},
											{field:'CXBM',header:'程序编码', width:100, headerAlign:"center", allowSort:true},
											{field:"NAME",header:"名称", width:100, headerAlign:"center", allowSort:true },
											{field:'LX',header:'类型', width:100, headerAlign:"center", allowSort:true,dic:"CXLX",renderer:"xbRenderer"},
											{field:'JM',header:'简码 ', width:100, headerAlign:"center", allowSort:true},
											{field:'BBH',header:'版本号', width:100, headerAlign:"center", allowSort:true},
											{field:'status',header:'状态', width:100, headerAlign:"center", allowSort:true},
											{field:'SXRQ',header:'生效日期', dateFormat:'yyyy-MM-dd', width:100, headerAlign:"center", allowSort:true},
											{field:'XCSBRQ',header:'下次升版日期',dateFormat:'yyyy-MM-dd', width:100, headerAlign:"center", allowSort:true},
											{field:'BXDW',header:'编写单位 ', width:100, headerAlign:"center", allowSort:true},
											{field:'fj',header:'附件', width:130, headerAlign:"center", allowSort:true,renderer:'setFile'}
										],
									};
								function reminder(){

									addTab("","升版提醒","/itmp/authorization/Common/ReminderList.jsp?fildname=sbtx",data);
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
                            </script>
</body>
</html>
