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
            
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
    
         <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css"
	     href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	     <style type="text/css">
	     	#grid_0 table td,#grid_0 table th{height: 0px;}
	     </style>
	     
	     
	     
    </head>
    <body>
        <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
            <legend>
               焊工管理
            </legend>
            <div id="dataform1" style="padding-top:5px;">
                <!-- hidden域 -->
                <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
                <div class="nui-hidden" name="welder.uuid">
                </div>
                <div class="nui-hidden" name="welder.isdel">
                </div>
                <input class="nui-hidden" name="welder.certificates" id="welder.certificates"/>
                <input class="nui-hidden" name="welder.uuid" id="welder.uuid"/>
                <table style="width:100%;height:95%;table-layout:fixed;" class="nui-form-table">
                    <tr>
                        <td class="form_label">
                            姓名:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.name"/>
                        </td>
                        <td class="form_label">
                            所属公司:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.company"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            员工号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.employeenumber"/>
                        </td>
                        <td class="form_label">
                            焊工代码:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.code"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            特种作业名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.special"/>
                        </td>
                        <td class="form_label">
                            作业类别:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.job"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            发证机关:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.authority"/>
                        </td>
                        <td class="form_label">
                            操作项目:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.items"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            操作证编号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.operatingnumber"/>
                        </td>
                        <td class="form_label">
                            证件有效期:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.validity"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            复审日期:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.review"/>
                        </td>
                        <td class="form_label">
                            初领日期:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.initial"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            状态:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.status"/>
                        </td>
                       <td class="form_label">
                            附件:
                        </td>
                        <td colspan="1">
                  <input id="fileName" buttonText="浏览" property="editor"
                                         class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*"
                                         limitSize="100MB" uploadOnSelect="true"
                                         flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf"
                                         onfileselect="onfileselect"
                                         uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
                                         onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess1"
                                         onuploadcomplete="onuploadcomplete" style="width:100%;"/>
                        <input class="nui-textbox" name="welder.fj" visible="false"/>
                    </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            备注:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.remarks"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            基地标识:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="welder.jd"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            机组:
                        </td>
                        <td colspan="3">
                            <input class="nui-textbox" name="welder.jz"/>
                        </td>
                    </tr>
                </table>
            </div>
        </fieldset>
        <!-- 从表的修改 -->
        <div style="margin:0px 2px 0px 2px;" >
            <div class="nui-tabs" id="tab" activeIndex="0" style="width:100%;height:100%;">
                <div title="Entity">
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:100%;">
                                    添加资质证
                                </td>
                                <td >
                                    <a class="nui-button " iconCls="icon-add" onclick="gridAddRow('grid_0')"  plain="true" tooltip="增加">
                                        &nbsp;
                                    </a>
                                </td>
                                <td >
                                    <a class="nui-button " iconCls="icon-remove" onclick="gridRemoveRow('grid_0')"  plain="true" tooltip="删除">
                                        &nbsp;
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div 
                            id="grid_0"
                            class="nui-datagrid"
                            style="width:100%;height:150px;"
                            showPager="false"
                            sortMode="client"
                            url="com.cgn.itmp.weldingmanagement.welderbiz.getWelder.biz.ext"
                            dataField="welder.certificates"
                            allowCellEdit="true"
                            allowCellSelect="true"
                            multiSelect="true"
                            editNextOnEnterKey="true" onCellBeginEdit="onCellBeginEdit" >

                        <div property="columns">
                            <div type="checkcolumn">
                            </div>
                            <div field="cernumber" allowSort="true" align="left" headerAlign="center" width="">
                                证书编号
                                <input class="nui-textbox" enabled="true" name="cernumber" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="projcode" allowSort="true" align="left" headerAlign="center" width="">
                                项目代号
                                <input class="nui-textbox" enabled="true" name="projcode" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="validdate" allowSort="true" align="left" headerAlign="center" width="">
                                有效时间
                                <input class="nui-textbox" enabled="true" name="validdate" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="office" allowSort="true" align="left" headerAlign="center" width="">
                                发证机关
                                <input class="nui-textbox" enabled="true" name="office" property="editor" required="false" visible="true"/>
                            </div>
                          <div field="fj" width="20%" headerAlign="center"  renderer="setFile">
                       附件<input id="fj" buttonText="浏览" property="editor"
                                         class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*"
                                         limitSize="100MB" uploadOnSelect="true"
                                         flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf"
                                         onfileselect="onfileselect"
                                         uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
                                         onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
                                         onuploadcomplete="onuploadcomplete" style="width:100%;"/>
                    </div>
                            <div field="remarks" allowSort="true" align="left" headerAlign="center" width="">
                                备注
                                <input class="nui-textbox" enabled="true" name="remarks" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="isdel" allowSort="true" align="left" headerAlign="center" width="">
                                删除标识
                                <input class="nui-textbox" enabled="true" name="isdel" property="editor" required="false" visible="true"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" onclick="onOk()">
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
        </div>
        <script type="text/javascript">
            nui.parse();
            var form = new nui.Form("#dataform1");
            var tab = nui.get("tab");
            form.setChanged(false);
            nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
            
            function onOk(){
                saveData();
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
            
          //预览页面附件显示
            function setFile(e) {
        	 	
                var fileRealName = e.record.filename;
                
                var fileId = e.record.fj;
                if (fileRealName == null || fileRealName == 'null') {
                    return "";
                }
                var html = '<a href="com.cgn.itmp.basecommon.fileDownload.flow?fileId='+fileId+'" >' + fileRealName + '</a>';
                return html;
            }
            function gridReload(datagrid){
                var grid = nui.get(datagrid);
                grid.reload();
            }

            function setGridData(datagrid,dataid){
                var grid = nui.get(datagrid);
                var grid_data = grid.getData();
                nui.get(dataid).setValue(grid_data);
            }
            function setData(data){
            	
                nui.get("fileName").setText(data.fileRealName);//加载附件名称
                var form = new nui.Form("#dataform1");//将普通form转为nui的form
                var json = {welder:data};
                
                form.setData(json);
                form.setChanged(false);
                nui.get("grid_0").load({welder:data});
                
                $.ajax({
                    url:"com.cgn.itmp.weldingmanagement.welderbiz.getWelder.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        obj = nui.decode(text);
                        //form.setData(obj);
                        form.setChanged(false);
                    }
                    });
                }


                function saveData(){
                    form.validate();
                    if(form.isValid()==false) return;
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
                            var returnJson = nui.decode(text);
                            if(returnJson.exception == null){
                                CloseWindow("saveSuccess");
                            }else{
                                nui.alert("保存失败", "系统提示", function(action){
                                    if(action == "ok" || action == "close"){
                                        //CloseWindow("saveFailed");
                                    }
                                    });
                                }
                            },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
								 }
                            });
                        }

                        function onReset(){
                            form.reset();
                            form.setChanged(false);
                        }

                        function onCancel(){
                            CloseWindow("cancel");
                        }

                        function CloseWindow(action){

                            if(action=="close"){

                                }else if(window.CloseOwnerWindow)
                                return window.CloseOwnerWindow(action);
                                else
                                return window.close();
                            }
                        function onCellBeginEdit(e) {
                        	
                            var field = e.field, value = e.value;
                            
                            if (field == "fj") {
                               file = e;
                            }
                        }
                        </script>
                    </body>
                </html>
