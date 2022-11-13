<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserObject user=(UserObject)request.getSession().getAttribute("userObject");
	String userName=user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
 %>
<html>
<%--
- Author(s): ASUS
- Date: 2019-01-02 15:04:31
- Description:
    --%>
    <head>
        <title>
            核岛维修范畴目视检验人员管理
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> 
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>       
        <script src="<%= request.getContextPath()%>/common/nui/nui.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>  
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>  
        <style type="text/css">
.mini-calendar-tadayButton, .mini-calendar-clearButton, .mini-calendar-okButton, .mini-calendar-cancelButton {
    border-color: #004a86;
    background: #004a86;
    color: #fff;
    display: inline-block;
    font-size: 9pt;
    font-family: "microsoft yahei" !important;
    text-decoration: none;
    padding: 4px;
    padding-left: 0px;
    padding-right: 0px;
    width: 52px;
    text-align: center;
    outline: none;
    cursor: pointer;
    vertical-align: middle;
}
.mini-popup {
    border: 1px solid #ddd;
    padding: 4px;
    border-radius: 4px;
    background: #fff;
    max-width: 290px;
}
.mini-calendar .mini-calendar-today {
    border: 1px solid #C00000;
}

.mini-calendar .mini-calendar-selected, .mini-calendar .mini-calendar-date:hover {
    background-color: #004a86;
    border-color: #004a86;
    color: #fff;
}
        </style>
    </head>
 <body style="background-color:#f1f1f1;width:98%;height:95%;margin:0 auto;">

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
				<div id="form1" class="nui-form display" align="center" style="height: 78px">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.dailyandoverhaul.authorization.VisualInspectorMgt.VisualInspectorMgtFile">
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">姓名：</td>
							<td colspan="1">
							<input class="nui-textbox" name="criteria/_expr[1]/name"/>
		                    <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
		                    <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all"></td>
							<td class="form_label">员工号：</td>
							<td colspan="1">
							<input class="nui-textbox" name="criteria/_expr[2]/empnubmer"/>
		                    <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
		                    <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all"></td>
						</tr>
						<tr>
							<td class="form_label">有效日期:</td>
							<td colspan="1">
							<input id="starttime" class="nui-datepicker" ondrawdate="ondrawdateStart"  name="criteria/_expr[5]/yxrq" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" format="yyyy-MM-dd"/>
                   			<input class="nui-hidden" id="bjz" name="criteria/_expr[5]/_op" value=">=">
							</td>
							<td class="form_label">至</td>
							<td colspan="1">
							<input id="endtime" class="nui-datepicker" ondrawdate="ondrawdateEnd"  name="criteria/_expr[6]/yxrq" showClose="true" oncloseclick="this.setValue(null);" allowInput="false" format="yyyy-MM-dd"/>
                   <input class="nui-hidden" name="criteria/_expr[6]/_op" value="<="></td>
						</tr>
						<tr>
							<td class="form_label">身份证号：</td>
							<td colspan="1"><input class="nui-textbox" name="criteria/_expr[3]/idnumber"/>
                    <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all"></td>
							<td class="form_label"></td>
							<td colspan="1"></td>
						</tr>
						
						
					</table>
					<input class="nui-hidden" name="criteria/_expr[8]/isdelete" value="0"/>
			            <input class="nui-hidden" name="criteria/_expr[8]/_op" value="like">
			            <input class="nui-hidden" name="criteria/_expr[8]/_likeRule" value="end">
			            <input class="nui-hidden" id="con_jdid" name="criteria/_expr[9]/jd" /> 
			           <input class="nui-hidden" name="criteria/_expr[9]/_op" value="like"> 
			           <input class="nui-hidden" name="criteria/_expr[9]/_likeRule" value="end">
			           <input class="nui-hidden"  name="criteria/_expr[10]/fildid"/>
           				<input class="nui-hidden" id="Isnull" name="criteria/_expr[10]/_op" value="">
           				<input class="nui-hidden" name="criteria/_orderby[11]/_property" value="orderindex">
						<input class="nui-hidden" name="criteria/_orderby[11]/_sort" value="desc">
				</div>
				
			</div>

		</div>
	</div>
</div>



            
          
          <div   region="center"   style="width:100%;height:98%;" showToolbar="false" showFooter="false">
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;" name="ITMP_btn">
                <table style="width:100%;">
                    <tr>
                      <td style="width:100%;padding:5px 0;">
                      <button id="addallbut" style="position: relative;" class="btn btn-default"
							onclick="openAllAdd()">
							新增
						</button>
						<ul  id="popupMenu" class="add_adds nui-menu">
							<li onclick="add()">单条新增</li>
							<li onclick="batchAdd()">批量新增</li>
						</ul>
<!--                           <a class="nui-menubutton  btn btn-default btn-xs" menu="#popupMenu" name="ITMP_btnAdd">新增</a> -->
<!-- 					    <ul id="popupMenu" class="nui-menu" style="display:none;"> -->
<!-- 					        <li> -->
<!-- 							 <li name="ITMP_btnAddOne"  onclick="add()">单条增加</li> -->
<!-- 							 <li name="ITMP_btnAddBatch"  onclick="batchAdd()">批量增加</li> -->
						   
<!-- 					    </ul> -->
                            <a id="update" class="nui-button showCellTooltip btn btn-default btn-xs"  name="ITMP_btnEdit"  onclick="edit()" title="请选择需要修改的数据" data-placement="top">
                               修改
                            </a>
                             <a class="nui-button  btn btn-default btn-xs" onclick="updatatime()" name="ITMP_btnApplyMore" >
                        		
                       有效期批量更新
                    		</a>
                            <a class="nui-button btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp">
                               导出
                            </a>
                            <a class="nui-button zmwj btn btn-default btn-xs" onclick="inport()" name="ITMP_btnAddAttachBatch" >
                               批量导入证明文件
                            </a>
                            <a class="nui-button btn btn-default btn-xs"  onclick="remove()"  name="ITMP_btnDel">
                                删除
                            </a>
                    		<a class="nui-button btn btn-default btn-xs" onclick="recycle()" name="ITMP_btnRec">回收站</a>
                        	<span id="saveOrCancel">
		                         <a class="nui-button  btn btn-warning btn-xs" id="save"  onclick="saveData()" >保存</a>  
		                         <a class="nui-button btn btn-default btn-xs" id="cancel"  onclick="cancelSave()">取消</a> 		                         
	                         </span>    
                        </td>
                    </tr>
                </table>
            </div>
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdxglzzsqglhdwxfcmsjyrygls"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.dailyandoverhaul.authorization.VisualInspectorMgt.queryTDxglZzsqglHdwxfcmsjyrygls.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowCellEdit="false"
						allowCellSelect="true"
                        allowSortColumn="true"
                        sortMode="client"
                        allowAlternating="true"
                        allowCellValid = "true"
                       	oncellvalidation="onCellValidation"
                       
                       	>
                    <div property="columns">
                       
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false" >
                            uuid
                        </div>      
                        <div field="name" headerAlign="center" renderer="setHref" allowSort="true" width="70" >
                            姓名<input property="editor" class="nui-textbox" style="width: 100%;" required="true" requiredErrorText="姓名不能为空"/>
                        </div>
                        <div field="sex" headerAlign="center" align="center" allowSort="true" renderer="xbRenderer" width="50">
                            性别<input property="editor"  class="nui-dictcombobox"
								style="width: 100%;" dataField="sex" dictTypeId="XB" />
                        </div>
                        <div field="empnubmer" headerAlign="center" align="center" allowSort="true" >
                            员工号<input property="editor" class="nui-textbox" style="width: 100%;" />
                        </div>
                        <div field="idnumber" headerAlign="center" allowSort="true" width="180">
                            身份证号<input property="editor" class="nui-dictcombobox" allowInput="true" url="com.cgn.itmp.dailyandoverhaul.authorization.VisualInspectorMgt.getIdnumber.biz.ext"
                          dataField="jsonObject" textField="IDNUMBER" valueField="IDNUMBER" style="width: 100%;" required="true" requiredErrorText="身份证号不能为空"/>
                        </div>
                        <div field="sqlx" headerAlign="center" allowSort="true" >
                            授权类型<input id="sqlx" property="editor" class="nui-textbox" style="width: 100%;"
                             required="true" value="核岛维修范畴目视检验" requiredErrorText="授权类型不能为空"/>
                        </div>
                         <div field="gzdw" headerAlign="center" allowSort="true" >
                            工作单位		<input property="editor" class="nui-textbox" style="width: 100%;"/>
                        </div>
                        <div field="yxrq" headerAlign="center" allowSort="true" width="120" dateFormat="yyyy-MM-dd"   renderer="yxqRenderer" >
                       有效日期至  
	          		 
                            <input property="editor" class="nui-datepicker" style="width: 100%;" required="true" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" requiredErrorText="有效日期不能为空" onvaluechanged="doChangeState"/>
                        </div>
                        <div field="zmwj" headerAlign="center" allowSort="true" renderer="setFile">
                            证明文件<input id="zmwj" property="editor" class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" limitSize="100MB" 
                            flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect" 
                            uploadUrl="<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp"
                            onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess" style="width:100%;"/>
                        </div>
                        <div name="zt" field="zt" headerAlign="center" align="center" allowSort="true"  renderer="ztRenderer">
                            状态
                        </div>
                        <div field="bz" headerAlign="center" allowSort="true" >
                            备注				<input property="editor" class="nui-textarea" style="width: 100%;" />
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false" >
                            是否删除
                        </div>
                        <div field="deluser" headerAlign="center" allowSort="true" visible="false" value="<%=userName %>">
                            删除人
                        </div>
                        <div field="delTime" headerAlign="center" allowSort="true" visible="false" >
                            删除时间
                        </div>
                         <div field="zmwjyw" headerAlign="center" allowSort="true" visible="false" >
                            证明文件有无
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
                         <div field="addtime" headerAlign="center" allowSort="true" visible="false" dateFormat="yyyy-MM-dd HH:mm:ss">
                        </div>                
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            var fileName = "";
           	var filePath = "";
			var fildId = "";

            //按钮权限控制
            accessControlButton('<%=userRoleCodeList %>',2);

            var grid = nui.get("datagrid1");
			nui.get("save").hide();
			nui.get("cancel").hide();
			nui.get("update").disable();
			var jdid=getCookie('jdid');
			nui.get('con_jdid').setValue(jdid);
           	if(jdid!=null && jdid!=""){
            	
	            var formData = new nui.Form("#form1").getData(false,false);
	            grid.load(formData);
            }
            
            
            function ondrawdateStart(e){
			var date = e.date;
			var d = nui.get("#endtime").getValue();
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
			var d = nui.get("#starttime").getValue();
			if(d){
				var timeStr = d.getFullYear() + "/" + (d.getMonth() + 1) + "/" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
				d = new Date(timeStr);
			}
			if(date && d && date.getTime() < d.getTime()){
				e.allowSelect=false;
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
				 tip.setContent("请选择需要修改的数据");  //给提示框内容添加值
				} 
			});
			
			function output(){
		
                var form = new nui.Form("#form1");
                var json = form.getData(true,false);
                
                nui.open({showMaxButton : true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据", width: 400, height: 200,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                            entityName:"com.cgn.itmp.dailyandoverhaul.authorization.VisualInspectorMgt.VisualInspectorMgtSearch",
                            queryParam:json,								    //查询数据
                            queryKey:'criteria',                              //查询实体名
                            query:['name','empnubmer','idnumber','yxrq','yxrq','isdelete','jd','fildid','addtime'],  //按顺序放置
                            queryIndex:[1,2,3,5,6,8,9,10,11],  //按顺序放置
                            expTitle:"核岛维修范畴目视检验人员管理",
                            filterField:"orderindex,uuid,zmwj,addtime,jd,zt",  //要过滤的字段，多字段用,隔开
                            dicFieds : "sex@XB",
                            jdFieds:"jd",
                            order:"orderindex@desc"
                        	
                    };//传入页面的json数据
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
	                    	tempFileName:"zzsqHdglImport.xlsx",
	                    	tempLoadName :"核岛维修范畴目视检验人员管理导入模板",
	                    	entitfName:"com.cgn.itmp.dailyandoverhaul.authorization.VisualInspectorMgt.VisualInspectorMgt"
	                    };//传入页面的json数据
	                     iframe.contentWindow.SetData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
            });
		}
		
		//新增
		 function add() {
		        nui.open({
		            url: "/itmp/authorization/VisualInspectorMgt/VisualInspectorMgtForm.jsp",
		            showMaxButton:true,
		            title: "新增记录", width: 1000, height: 300,
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
		    
            //新增
            function addRow() {
               var newRow = { name: "",sex:"MALE",sqlx:"核岛维修范畴目视检验", yxrq:nui.formatDate(new Date(),'yyyy-MM-dd')};
            	grid.addRow(newRow, 0);
				this.grid.select(0);
				grid.validateRow(newRow);   //加入新行，马上验证新行
				grid.beginEditRow(newRow); 
				nui.get("update").disable();
				nui.get("save").show();
				nui.get("cancel").show();
				nui.get("popupMenu").disable();
				editRow = newRow;
				
            }
            
            	//上传附件操作
        	function onfileselect(e){
				startUpload(e);
			}
			function startUpload(e) {
		        var fileupload =e.sender;
		        fileupload.startUpload();
		    }
		    //上传成功时，回写附件的name、id
			function onUploadSuccess(e,row){
				fileName = nui.decode(e.serverData).list[0].name;
				//filePath = nui.decode(e.serverData).ret.filePath;
				fildId = nui.decode(e.serverData).list[0].uri;
				
			}
			//预览页面附件显示 
          function setFile(e) {
				var fileRealName = e.record.zmwj;
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
			
			function onCellValidation(e) {
				if(e.field == "name"|| e.field == "sex"||e.field == "sqlx" || e.field == "yxrq"){
						 if (e.value == null || e.value == "") {
		                    e.isValid = false;
		                    e.errorText = "字段不能为空";
        				}
				
				}
				
			    if (e.field == "idnumber") {
		                var value = e.value;
		                if (e.value == null || e.value == "") {
		               	    e.errorText = "字段不能为空";
		                    e.isValid = false;
		                }else if (value.length<15 || value.length>18) {
		                    e.errorText = "必须输入15~18位数字";
		                    e.isValid = false;
		                }
		        }	
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
					jsonObject[0]['zmwj'] = fileName;
			 		jsonObject[0]['fildid'] = fildId;
			 		if(jsonObject[0]['zmwj']!=null&&jsonObject[0]['zmwj']!=""){
			 			jsonObject[0]['zmwjyw']="YOU";
			 		}else{
			 			jsonObject[0]['zmwjyw']="WU";
			 		}
			 		jsonObject[0]['jd']=getCookie('jdid');
			 		jsonObject[0]['yxrq'] = nui.formatDate(jsonObject[0]['yxrq'],'yyyy-MM-dd');
					 delete jsonObject[0].orderindex;
				}
			 	
			  var data = {
			  	jsonObject:jsonObject[0] 
			  };
			 
	            var json = nui.encode(data);
	            grid.loading("保存中，请稍后......");
	            nui.ajax({
	                url: "com.cgn.itmp.dailyandoverhaul.authorization.VisualInspectorMgt.addOrEdit.biz.ext",
	                type: 'POST',
	                data: json,
	                success: function (text) {
	                    grid.reload();
                        nui.get("update").disable();
	            		nui.get("save").hide();
						nui.get("cancel").hide();
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
			//编辑
function edit() {
    var row = grid.getSelected();
    
    if (row) {
        nui.open({
       		 showMaxButton : true,
		     url: "/itmp/authorization/VisualInspectorMgt/VisualInspectorMgtForm.jsp",
            title: "编辑数据",
            width: 1000,
            height: 300,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = {pageType:"edit",record:{jsonObject:row}};
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
        

			
			 var editRow = null;
			//编辑
			function editRow() {
				var row = grid.getSelected();
				if(row){
					grid.validateRow(row);   //验证
					grid.beginEditRow(row); 
					nui.get("save").show();
					nui.get("cancel").show();
					nui.get("popupMenu").disable();	
					editRow = row;
					return;
				}
				nui.alert("请选中一条记录！");
			}
			//取消保存
			function cancelSave(){
			nui.confirm("是否取消此次操作，确认取消？", "确定？",
		            function (action) {            
		                if (action == "ok") {
		                  	nui.get("update").enable();
		                    grid.reload();
		                   	nui.get("save").hide();
		                   	nui.get("cancel").hide();
		                   	nui.get("popupMenu").enable();
		                    fileName = "";
           					filePath = "";
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
                    	for(var i=0;i<rows.length;i++){
                    		delete rows[i].orderindex;
                    	}
    					var json = nui.encode({
							data : rows,
							entity : "com.cgn.itmp.dailyandoverhaul.authorization.VisualInspectorMgt.VisualInspectorMgt",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
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
                                nui.get("update").disable();
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
            //回收站
			function recycle(){
	        	nui.open({
	        	showMaxButton : true,
	        	url:"/itmp/authorization/VisualInspectorMgt/VisualInspectorMgtRecycle.jsp",
	        	title:"回收站",width:1000,height:500,
	        	onload:function(){//弹出页面加载完成
	        		var iframe = this.getIFrameEl();
                	var data = {pageType: "add",isJdgly : true};//传入页面的json数据
                	iframe.contentWindow.setFormData(data);
	        	},
	        	ondestroy:function(action){//弹出页面关闭前
	        	grid.reload();                                	                               	
	        	}
	        	});                                	                                	
	        }

            //重新刷新页面
            function refresh(){
                var form = new  nui.Form("#form1");
                var json = form.getData(true,false);
                grid.load(json);//grid查询
                nui.get("update").enable();
            }
	   /******   Tip提示 组件初始化 Start   *******/            
			var tip1 = new nui.ToolTip();
			tip1.set({
				target: document,
				selector: '.zmwj',   //要添加提示元素的calss
				placement:'topleft',              //提示出现的位置 
				onbeforeopen: function (e) {    
					e.cancel = false;
				},
				onopen: function (e) {      //提示框打开触发事件
				 tip1.setContent("请正确命名证明文件并选择要导入的压缩包");  //给提示框内容添加值
				} 
			});
             function searchs() {
             
//              var newdate=nui.formatDate(new Date(),"yyyy-MM-dd HH:mm:ss");
		            var form = new nui.Form("#form1");
// 		            var wszt=nui.get("wszt").getValue();
// 		            var ywwj=nui.get("ywwj").getValue();
// 		            if(wszt!=null&&wszt!=""){
// 		            	if(wszt=="YGQ"){
		            	
// 		            	nui.get("starttime").setValue(newdate);
// 		            	nui.get("bjz").setValue("<=");
		            	
		            		
// 		            	}else if(wszt=="ZC"){
// 		            		nui.get("starttime").setValue(newdate);
// 		            		nui.get("bjz").setValue(">");
		            		 
// 		            	}
// 		            	nui.get("starttime").setValue("");
// 		            }
// 		              if(ywwj=="YOU"){
// 		            	nui.get("Isnull").setValue("notnull");
// 		            }else if(ywwj=="WU"){
// 		            	nui.get("Isnull").setValue("null");
// 		            }
		            var json = form.getData(true,false);
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
                if(rows.length>1  || grid.isEditing()||rows.length==0){
                    nui.get("update").disable();
                }else{
                    nui.get("update").enable();
                }
            }
            //性别公共代码转换
			function xbRenderer(e){								
				return nui.getDictText("XB",e.value);
			}
			//状态公共代码转换
			function ztRenderer(e){								
				return nui.getDictText("WSZT",e.value);
			}
			 //有效期公共代码转换
			function yxqRenderer(e){
			
				var yxq=new Date(e.row.yxrq);
				if(yxq!=null&&yxq<new Date()){
					e.rowStyle = 'color:red';
					e.row.zt="YGQ";
				}else{
					e.row.zt="ZC";
				}																
				return e.cellHtml;
			}
			//关键字查询
				function btnQuery(){
					var gjz=$("#cond").val();
						if(gjz==""){
							refresh();
							nui.get("update").disable();
						}else{
						 var data = {
						 	 matchFied :"name,idnumber,empnubmer,bz",
						 	 dicFied : "sex@XB,zt@WSZT",
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
					
					//根据有效日期修改状态
					function doChangeState(e){
					    
// 					    var combo = e.sender;
// 			            var row = grid.getEditorOwnerRow(combo);
// 			            var editor = grid.getCellEditor("zt", row);
// 						var nowTime = new Date();
// 						if(combo.value >= nowTime){
// 							editor.setValue("ZC");
// 						}else{
// 							editor.setValue("YGQ");
// 						}
			            
			          
					}
					
					function inport(){
							nui.open({showMaxButton : true,
				                    url: "/itmp/basecommon/batchAddAttach.jsp",
				                    title: "导入附件", width: 600, height: 300,
				                    onload: function () {//弹出页面加载完成
				                    	var iframe = this.getIFrameEl();
					                    var data = {
					                    	page:"HDWX",
					                    
					                    };//传入页面的json数据
					                     iframe.contentWindow.SetData(data);
				                    },
				                    ondestroy: function (action) {//弹出页面关闭前
				                    grid.reload();
				                }
				            });
						}
						//显示出高级查询的条件
					function showquery(){
						var div=$("#form1");
						div.slideToggle(500);
				    	$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
					}
					
					
					var data = {
						pageType : "Vis",
						urlName:"com.cgn.itmp.dailyandoverhaul.authorization.Common.checkqueryAll.biz.ext",//查询语句
						entityVal:"com.cgn.itmp.dailyandoverhaul.authorization.VisualInspectorMgt.VisualInspectorMgt",
						removeUrl:"com.cgn.itmp.weldingmanagement.common.delete.biz.ext",//
						recoveryUrl:"com.cgn.itmp.weldingmanagement.common.recovery.biz.ext",//
						columnscode:[
							{type:"indexcolumn"},
							{type:"checkcolumn"},
							{field:'uuid',header:'uuid', width:100, headerAlign:"center", allowSort:false,visible:false},
							{field:"name",header:"姓名", width:100, headerAlign:"center", allowSort:false },
							{field:'sex',header:'性别', width:100, headerAlign:"center", allowSort:false,dic:"XB",renderer:"xbRenderer"},
							{field:'empnubmer',header:'员工号', width:100, headerAlign:"center", allowSort:false},
							{field:'idnumber',header:'身份证号', width:100, headerAlign:"center", allowSort:false},
							{field:'sqlx',header:'授权类型', width:100, headerAlign:"center", allowSort:false,dic:"SQTYPE",renderer:"xbRenderer"},
							{field:'gzdw',header:'工作单位', width:100, headerAlign:"center", allowSort:false},
							{field:'yxrq',header:'有效期至', width:100, headerAlign:"center",allowSort:false,dateFormat:"yyyy-MM-dd",onvalidation:"onCheck",renderer:"yxqRenderer"},
							{field:'zmwj',header:'证明文件（上传附件)', width:100, headerAlign:"center", allowSort:false,renderer:"setFile",onvalidation:"onCheck"},
							{field:'zt',header:'状态', width:100, headerAlign:"center", allowSort:false,dic:"WSZT",renderer:"ztRenderer"},
							{field:'bz',header:'备注', width:100, headerAlign:"center", allowSort:false},
							{field:'fileRealName',header:'附件真实文件名称', width:100, headerAlign:"center", allowSort:false,visible:false},
							{field:'fileName',header:'附件名称', width:100, headerAlign:"center", allowSort:false,visible:false},
							{field:'filePath',header:'附件路径', width:100, headerAlign:"center", allowSort:false,visible:false},
							{field:'fildid',header:'附件id', width:100, headerAlign:"center", allowSort:false,visible:false}
						],
					};
					
					
					
					 //有效期更新
			function updatatime(){
				nui.open({
		            showMaxButton: true,
		            url: "/itmp/authorization/Common/Validity.jsp",
		            title: "有效期批量更新",
		            width: '100%',
		            height: '100%',
		            onload: function () {
		                var iframe = this.getIFrameEl();
		                iframe.contentWindow.setData(data);
		            },
		            ondestroy: function (action) {
		                grid.reload();
		            }
		        });
			}
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
 //重置查询条件
    function reset() {
        var form = new nui.Form("#form1");//将普通form转为nui的form
        form.reset();
        $('#cond').val("");
        nui.get('con_jdid').setValue(getCookie('jdid'));
    }
    
    //设置名称超链接
	function setHref(e){
		var xm = e.record.name;
		var uid = e.record._uid;
		
		var html = '<a href="javascript:void(0)" onclick="openView('+uid+')"  >' + xm + '</a>';
		return html;
	}
	//打开查看页面
	function openView(uid){
		var row = grid.getRowByUID(uid);
		nui.open({
		showMaxButton : true,
		    url: "/itmp/authorization/VisualInspectorMgt/VisualInspectorMgtForm.jsp",
            title: "查看数据",
            width: 600,
            height: 400,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = {pageType:"view",record:{jsonObject:row}};
                //直接从页面获取，不用去后台获取
                iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {
                    grid.reload();
                }
                });
	}
        </script>
    </body>
</html>
