<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-15 17:20:49
- Description:
    --%>
    <head>
        <title>
            焊工信息
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
<script src="<%= request.getContextPath()%>/common/common.js"
	type="text/javascript"></script>
	<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
	
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>

<script type="text/javascript"
            src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
	     <style type="text/css">
	     	#formTable table td{height:20px}
	     	#grid_0 table td,#grid_0 table th{height: 0px;}
			.mini-grid-table tr:first-child{display:none;}
			.mini-checkcolumn{width:30px;}
			#datagrid1 .mini-grid-table,#datagrid2 .mini-grid-table{width:100%!important;}
			.welderadd .mini-grid-columns-view *{
 				margin-left: -0px; 
			}
	     </style>
    </head>
    <body style="height:95%;overflow:hidden;">
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
    	<div  id="dataform1"   style="height:auto"  >
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <div class="nui-hidden" name="welder.uuid">
            </div>
            <div class="nui-hidden" name="welder.isdel">
            </div>
            <input class="nui-hidden" name="welder.uuid"/>	
            <fieldset>
          <legend><span>焊工信息</span></legend>
		   <div class="fieldset-body">
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table" id="formTable" >
	            <input class="nui-hidden" name="welder.certificates" id="welder.certificates"/>
	            <input class="nui-hidden" name="tdxglsysyfacilityinfo.uuid"/>

	            <input class="nui-hidden" id="fileid" name="welder.fileid"/>
	            <input class="nui-hidden" id="jd" name="welder.jd" />

<!-- 	                <tr> -->
<!-- 	                <td class="form_label"> -->
<!-- 	                      基地 -->
<!--                     </td> -->
<!--                     <td colspan="1">                         -->
<!--                       <input id="jd" class="nui-combobox" name="welder.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"  -->
<!--                         textField="name"  style="width:100%;" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" /> -->
<!--                     </td> -->
<!--                      <td class="form_label"> -->
	                    
<!--                     </td> -->
<!--                     <td colspan="1">                         -->
                      
<!--                     </td> -->
<!--                      <td class="form_label"> -->
	                    
<!--                     </td> -->
<!--                     <td colspan="1">                         -->
                      
<!--                     </td> -->
<!--                     </tr> -->
                    <tr>
                        <td class="form_label">
                            姓名:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" name="welder.name" required="true" requiredErrorText="姓名不能为空" emptyText="请输入姓名"  style="width:100%"/>
                        </td>
                        <td class="form_label">
                            所属公司:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" name="welder.company" required="true" requiredErrorText="所属公司不能为空" emptyText="请输入所属公司"  style="width:100%"/>
                        </td>
                        <td class="form_label">
                            员工号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" name="welder.empnumber" required="true" requiredErrorText="员工号不能为空" emptyText="请输入员工号"  style="width:100%"/>
                        </td>
                    </tr>
                     <tr>
	               
                    <td class="form_label">
	                        焊工代码:
                    </td>
                    <td colspan="1">                        
                       <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" name="welder.code" required="true" requiredErrorText="焊工代码不能为空" emptyText="请输入焊工代码"  style="width:100%"/>
                    </td>
                    <td class="form_label">
                            特种作业名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" name="welder.special" value="焊接" required="true" requiredErrorText="特种作业名称不能为空" emptyText="请输入特种作业名称"  style="width:100%"/>
                        </td>
                        <td class="form_label">
                            作业类别:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" name="welder.job" value="焊接与热切割作业" required="true" requiredErrorText="作业类别不能为空" emptyText="请输入作业类别"  style="width:100%"/>
                        </td>
                    
                    </tr>
                    <tr>
                        
                        <td class="form_label">
                            发证机关:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)"  name="welder.authority" required="true" requiredErrorText="发证机关不能为空" emptyText="请输入发证机关"  style="width:100%"/>
                        </td>
                         <td class="form_label">
                            操作项目:
                        </td>
                        
                        <td colspan="1">
                    <input  name="welder.items" onvalidation="hasIllegalChar(e,100,true,true)"  class="nui-dictcombobox"   dictTypeId="CZXM" required="true" requiredErrorText="操作项目不能为空" emptyText="请选择操作项目" style="width:100%;" />
	    	   		</td>
                            
                        <td class="form_label">
                            操作证编号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)"  name="welder.operatingnumber" required="true" requiredErrorText="操作证编号不能为空" emptyText="请输入操作证编号" id="welder_operatingnumber"  style="width:100%"/>
                        </td>
                    </tr>
                    <tr>
                        
                       
                        <td class="form_label">
                            证件有效期:
                        </td>
                        <td colspan="1">
                        <input property="editor" class="nui-datepicker" required="true"
							style="width: 100%;" required="true" requiredErrorText="证件有效期不能为空" emptyText="请输入证件有效期" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false"
							onvaluechanged="doChangeState"   name="welder.validity"  />
                        
<!--                             <input class="nui-textbox" name="welder.validity"/> -->
                        </td>
                        <td class="form_label">
                            复审日期:
                        </td>
                        <td colspan="1">
                        <input class="nui-textbox"  style="width:100%" required="true" requiredErrorText="复审日期不能为空" emptyText="请输入复审日期" name="welder.review"/>
                            
                        </td>
                        <td class="form_label">
                            初领日期:
                        </td>
                        <td colspan="1">
                        <input property="editor" class="nui-datepicker"
							  style="width:100%" id="Initial" required="true" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false"  requiredErrorText="初领日期不能为空"  emptyText="请输入初领日期"
							 name="welder.initial"/>
                        </td>
                    </tr>
                   
                    <tr>
                        <td class="form_label">
                            状态:
                        </td>
                        <td colspan="1">
                            <input class="nui-dictcombobox" onclike="zt()" required="true" requiredErrorText="状态不能为空" emptyText="请输入状态" dictTypeId="WSZT" name="welder.status" id="status"  style="width:100%"/>
                        </td>
                        <td class="form_label">
                            附件:
                        </td>
                        <td id="fileHref" style="display:none;">
                     
                    </td>
                    
                   <td colspan="1" id="fileNoHref">
                   <div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
							 
                  		<div style="display: flex;">
							<input class="nui-textbox" style="width:100%"  onvalidation="hasIllegalChar(e,100,false,true)"  id="zfj" name="welder.fj" />
							<form id="uploadform" enctype="multipart/form-data">
								<input id="zfj"  style="width:100%" type="file" name="welder.fj" accept="*" onchange="fileSub(this)"> 
							</form>
						</div>
                    </td>
                    
                        <td class="form_label">
                            备注:
                            
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"  name="welder.remarks" style="width:100%;height:100%;"/>
                        </td>
                    </tr>
                   
                    
                </table>
                </div>
        </fieldset>
         </div>
        <!-- 从表的修改 -->
        <div  style="width:100%;height:auto" >
               <fieldset style="height:100%">
        		<legend><span>焊工资质信息</span></legend>
           		 <div class="fieldset-body">
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;height:10%;">
                        <table style="width:100%;height:100%;">
                            <tr>
                                <td >
                                    <span class="nui-button " onclick="gridAddRow('grid_0')" id="add"  plain="true" >
                                        增加
                                    </span>
                                     <span class="nui-button " onclick="gridRemoveRow('grid_0')" id="del"  plain="true" >
                                       删除
                                    </span>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div 
                            id="grid_0"
                            class="nui-datagrid welderadd"
                            style="width:100%;height:50%;min-height:170px;"
                            showPager="false"
                            sortMode="client"
                            url="com.cgn.itmp.weldingmanagement.welderbiz.getWelder.biz.ext"
                            dataField="welder.certificates"
                            allowCellEdit="true"
                            allowCellSelect="true"
                           allowResizeColumn="true" allowResize="true"
                            multiSelect="true" oncolumnschanged="ceshi" allowCellValid="true"
                            editNextOnEnterKey="true" onCellBeginEdit="onCellBeginEdit" >
                            
                        <div property="columns">
                        	
                            <div type="checkcolumn" >
                            </div>
									 
                            <div field="cernumber" allowSort="false" align="center" width="50px;" headerAlign="center"  >
                                证书编号
                                <input class="nui-textbox" enabled="true" onvalidation="hasIllegalChar(e,100,false,true)" name="cernumber" property="editor" required="false" visible="true"  style="width:50%"/>
                            </div>
                            <div field="projcode" allowSort=""false""  width="200px;" align="left" headerAlign="center" >
                                项目代号
                                <input class="nui-textbox" enabled="true" onvalidation="hasIllegalChar(e,100,false,true)" name="projcode" property="editor" required="false" visible="true"  style="width:100%"/>
                            </div>
                            <div field="validdate"  allowSort="false" align="center" headerAlign="center" width="" dateFormat="yyyy-MM-dd">
                                有效时间 			<input property="editor" onvaluechanged="yxrq" class="nui-datepicker"
									style="width: 100%;" required="true" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false"  requiredErrorText="有效日期不能为空"
									   name="validdate"    style="width:100%"/>
<!--                                 <input class="nui-textbox" enabled="true" name="validdate" property="editor" required="false" visible="true"/> -->
                            </div>
                            <div field="office" allowSort="false" align="center" headerAlign="center" width="">
                                发证机关
                                <input class="nui-textbox" enabled="true" onvalidation="hasIllegalChar(e,100,false,true)" name="office" property="editor" required="false" visible="true"  style="width:100%"/>
                            </div>
                            
                            
                          <div field="fj" width="20%" headerAlign="center"  renderer="setFile">
                       附件<input id="fj" buttonText="浏览" property="editor"
                                         class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" onvalidation="hasIllegalChar(e,100,false,true)"
                                         limitSize="100MB" uploadOnSelect="true"
                                         flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf"
                                         onfileselect="onfileselect"
                                         uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
                                         onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
                                         onuploadcomplete="onuploadcomplete" style="width:100%;"/>
                    </div>
                            
                            
                            <div field="remarks" allowSort="false" align="left" headerAlign="center" width="">
                                备注
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" enabled="true" name="remarks" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="orderno"  headerAlign="center" allowSort="true" visible="false">orderno</div>
                            <div field="fileRealName" headerAlign="center" allowSort="false"
						visible="false">fileRealName</div>
						<div field="operatingnumber" headerAlign="center" allowSort="false"
						visible="false">operatingnumber</div>
                        </div>
                        
                        </div>
                        </div>
                           </div>
                                    <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button btn btn-default btn-xs"  id="submit" onclick="onOk()">
                                保存
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button" onclick="onCancel()">
                                关闭
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
                </fieldset>
                 </div>
   
        </div>
        <script type="text/javascript">
        
            nui.parse();
            var file;
           var filename;
            
            var nowStart = null;
            var nowEnd = null;
            var tab = nui.get("tab");
            var form = new nui.Form("dataform1");
            var jzid = parent.nui.get("jzid").getValue();
        	var jdid = parent.nui.get("jdid").getValue();
        	nui.get("jd").setValue(jdid);
//         	nui.get('jz').setAjaxType("POST");
//         	nui.get('jz').load( "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid);
//         	nui.get("jz").setValue(jzid);
            form.setChanged(false);
            
            var grid1=nui.get("grid_0");

        function onOk(){
            saveData();
    	}

			function doChangeState(e){
				if(e.value >= new Date(parseInt(1420184730) * 1000)){
					nui.get("status").setValue("ZC");
				}else{
					nui.get("status").setValue("YGQ");
				}
				nui.get("Initial").maxDate=e.value;
			}
			function SetHref(){
		   		 var div = document.getElementById('fileHref');
		   		 var fileName = nui.get("zfj").getValue();
		   		 var fileId = nui.get("fileid").getValue();
		   		 div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileName + '\')" >' + fileName + '</a>';
		   	}
		   	//附件下载
			function load(fileId,fileRealName) {
				 var elemIF = document.createElement("iframe");
		         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
		         document.body.appendChild(elemIF);
		         elemIF.style.display = "none";
			}

            function gridAddRow(datagrid){
                var grid = nui.get(datagrid);
             
                grid.addRow({});
            }

            function gridRemoveRow(datagrid) {
                var grid = nui.get(datagrid);
                var rows = grid.getSelecteds();
                if (rows.length > 0) {
                    grid.removeRows(rows, true);
                }
            }

           
            function setGridData(datagrid,dataid){
                var grid = nui.get(datagrid);
                var grid_data = grid.getData();
				if(grid_data&&grid_data.length>0){
                	for(var i=0;i<grid_data.length;i++){
                		grid_data[i].orderno=grid.indexOf(grid_data[i]);
                	}
                }
                nui.get(dataid).setValue(grid_data);
            }
            
            window.alert=function(){
				return false;
			}
    	function onCellValidation(e){
    		if(e.value != null && e.value != ""){
	         if(hasIllegalCharNew(e.value)){
	         	var newData = cleanData(this.data,e.field,e.row._id);
				this.setData(newData);	         
	         	nui.alert("含有非法字符,请检查输入的内容");
	    		return;
	         }
            }
    	}
    	
            function saveData(){
            	
            	var pagetype=nui.getbyName("pageType").getValue();
            	if(pagetype=="edit"){
            		form.validate();
                    if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
//                     for(var i=0;i<nui.get("grid_0").data.length;i++){
// 	                	nui.get("grid_0").data[i].operatingnumber=nui.get("welder_operatingnumber").value;	
// 	                }
					
					nui.get("#submit").setEnabled(false);
                    setGridData("grid_0","welder.certificates");
                    
                    
                    var data = form.getData(false,true);
                   
                    var json = nui.encode(data);
					
                    $.ajax({
                        url:"com.cgn.itmp.weldingmanagement.welderbiz.updateWelder.biz.ext",
                        type:'POST',
                        data:json,
                        cache:false,
                        contentType:'text/json',
                        success:function(text){
                        nui.get("#submit").setEnabled(true);
                            var returnJson = nui.decode(text);
                            if(returnJson.exception == null){
                                nui.alert("保存成功", "系统提示", function(action){
                                    if(action == "ok" || action == "close"){
                                        CloseWindow("saveSuccess");
                                    }
                               });
                            }else{
                                nui.alert("保存失败", "系统提示", function(action){
                                    if(action == "ok" || action == "close"){
                                    	
                                    }
                                    });
                                }
                            },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									 nui.get("#submit").setEnabled(true);//恢复
									});
								 }
                            });
            	}else{
	                form.validate();
	                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	                nui.get("#submit").setEnabled(false);
// 	                for(var i=0;i<nui.get("grid_0").data.length;i++){
// 	                	nui.get("grid_0").data[i].operatingnumber=nui.get("welder_operatingnumber").value;	
// 	                }
	                setGridData("grid_0","welder.certificates");
	                var data = form.getData(false,true);
	                var json = nui.encode(data);
	                $.ajax({
	                    url:"com.cgn.itmp.weldingmanagement.welderbiz.addWelder.biz.ext",
	                    type:'POST',
	                    data:json,
	                    cache:false,
	                    contentType:'text/json',
	                    success:function(text){
	                    nui.get("#submit").setEnabled(true);
	                        var returnJson = nui.decode(text);
	                        if(returnJson.exception == null){
	                            nui.alert("保存成功", "系统提示", function(action){
                                    if(action == "ok" || action == "close"){
                                        CloseWindow("saveSuccess");
                                    }
                                    });
	                        }else{
	                            nui.alert("保存失败", "系统提示", function(action){
	                                if(action == "ok" || action == "close"){
	                                	
	                                }
	                                });
	                            }
	                        },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									 nui.get("#submit").setEnabled(true);//恢复
									});
								 }
	                        });
	            		}
                    }

                    function onReset(){
                    $('#cond').val("");
                        form.reset();
                        form.setChanged(false);
                    }

                    //确定保存或更新
                    function onOk() {
                        saveData();
                    }

                    //取消
                    function onCancel() {
                       CloseWindow("cancel");
                    }

                    function onCellBeginEditdate(e) {
                    	
                        var grid = e.sender;
                        var record = e.record;
                        var field = e.field, value = e.value;
                        if (field == "endDate") {
                            nowStart = record.startDate;
                        }else if(field=="startDate"){
                        	nowStart = record.endDate;
                        }
                    }

                //起始日期事件
                    function onDrawDateStart(e) {
                        var date = e.date;
                        var d = nowStart;
                         if(d == null){
                        	 return;
                        }
                        if (date.getTime() > d.getTime()) {	
                            e.allowSelect = false;
                        }
                    }
                    //终止日期事件
                    function onDrawDateEnd(e) {
                        var date = e.date;
                        var d = nowStart;
                        if(d == null){
                        	 return;
                        }
                        if (date.getTime() < d.getTime()) {
                            e.allowSelect = false;
                        }
                    }

                 

	                    //关闭窗口
			function CloseWindow(action) {
				if (action == "close" && form.isChanged()) {
					if (confirm("数据被修改了，是否先保存？")) {
						saveData();
					}
				}
				if (window.CloseOwnerWindow)
					return window.CloseOwnerWindow(action);
				else
					window.close();
			}

                 
               //预览页面附件显示
                 function setFile(e) {
                     var fileRealName = e.record.fj;
                     
                     var fileId = e.record.fildid;
                     if (fileRealName == null || fileRealName == 'null') {
                         return "";
                     }
                     var html = '<a href="com.cgn.itmp.basecommon.fileDownload.flow?fileId='+fileId+'" >' + fileRealName + '</a>';
                     return html;
                 }
               

                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);

                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                        	data= nui.clone(infos.welder);
                        	nui.get("fileid").setValue(data.fileid);//加载附件名称
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            var json = nui.encode({welder:data});
                            
                            form.setData(json);
                            form.setChanged(false);
                            nui.get("grid_0").load({welder:data},function(e){
                            	nui.get("grid_0").sortBy("orderno","asc");
						    });
                            
                            $.ajax({
                                url:"com.cgn.itmp.weldingmanagement.welderbiz.getWelder.biz.ext",
                                type:'POST',
                                data:json,
                                cache:false,
                                contentType:'text/json',
                                success:function(text){
                                    obj = nui.decode(text);
                                    form.setData(obj);
                                    form.setChanged(false);
                                }
                           });
                        }
                        nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                    }


                    function onfileselect(e) {
                    	
                        startUpload(e);
                    }

                    function startUpload(e) {
                    	
                        var fileupload = e.sender;
                        
                        fileupload.startUpload();
                    }

                  //上传成功时，回写附件的name、id
                    function onUploadSuccess(e) {
                 		fileName = e.file.name;
                 		filePath = nui.decode(e.serverData).ret.filePath;
                 		var json = {};
                 		json.filename = fileName;
                 		json.filepath = filePath;
                 		json = nui.encode(json);
                 		$.ajax({
                            url: "com.cgn.itmp.basecommon.FileComp.addFile.biz.ext",
                            type: 'POST',
                            data: json,
                            cache: false,
                            contentType: 'text/json',
                            success: function (text) {
                            	file.record.fildid = text.fileid;
                            }
                        });
                    }
                    
                    function zt(){
                    	var   d=new   Date(Date.parse(thetime .replace(/-/g,"/")));
				        var   curDate=new   Date();
				        if(d <=curDate){
				        	nui.get("status").value("YGQ");
				        }else{
				        	nui.get("status").value("ZC");
				        }
                    }
                    //上传成功时，回写附件的name、id
                    function onUploadSuccess1(e) {
                    	
                    	 var appIconName = e.file.name;

     					var appIconPath = nui.decode(e.serverData).ret.filePath;
     					//var appIconData = nui.decode(e.serverData).ret.fileValue;
     					nui.get("fpath").setValue(appIconPath);
     					nui.get("fname").setValue(appIconName);
                    }

                    function onuploadcomplete(e) {
                        
                    }
                    function onCellBeginEdit(e) {
                    	
                        var field = e.field, value = e.value;
                        
                        if (field == "fj") {
                           file = e;
                        }
                    }
                   function onCheck(e){
				       if (e.isValid) {
				         if(e.value==""){
				           e.errorText = "必填项不可为空";
				           e.isValid = false;
				         }
				       }
				     }
                   //附件上传
                   function fileSub(file){
               		var  fv=file.value;
               		if(fv){ 
               		$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
              	    		$("#uploadform").ajaxSubmit({
              					type: "post",
              					dataType : "json",
              		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
              		            processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress .progress-item").style.width = percent + "%";
		                }, false);
		            }
		            return xhr;
		        },
   					success : function(data) {
   					 
   						if (data.code == 1) {
   							nui.get("fileid").setValue(data.list[0].uri);
   							nui.get("zfj").setValue(data.list[0].name);
   							equiaxedgraphfileid = data.list[0].uri;
   							showimage(data.list[0].uri);
   						} else {
   							nui.alert("上传失败:" + data.message);
   						}
   					}
   				});
   			} else {
   				nui.alert("请上传图片");
   				return false;
   			}
   		} 
   		
               		
                    </script>
                </body>
            </html>
