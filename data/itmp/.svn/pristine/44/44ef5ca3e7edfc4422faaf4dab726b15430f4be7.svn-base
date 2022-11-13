<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-09-11 14:58:16
- Description:
    --%>
    <head>
        <title>
            Entity录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
    </head>
    <body>
        <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
            <legend>
                Entity
            </legend>
            <div id="dataform1" style="padding-top:5px;">
                <!-- hidden域 -->
                <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
                <div class="nui-hidden" name="reviewrecord.uuid">
                </div>
                <input class="nui-hidden" name="reviewrecord.records" id="reviewrecord.records"/>
                <input class="nui-hidden" name="reviewrecord.uuid" id="reviewrecord.uuid"/>
                <table style="width:100%;height:95%;table-layout:fixed;" class="nui-form-table">
                    <tr>
                        <td class="form_label">
                            审查记录名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="reviewrecord.record_name"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            审查人:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="reviewrecord.record_person"/>
                        </td>
                        <td class="form_label">
                            审查日期:
                        </td>
                        <td colspan="1">
                            <input class="nui-datepicker" name="reviewrecord.record_time"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            复审人:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="reviewrecord.review_person"/>
                        </td>
                        <td class="form_label">
                            复审日期:
                        </td>
                        <td colspan="1">
                            <input class="nui-datepicker" name="reviewrecord.review_time"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            流程状态:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="reviewrecord.qw"/>
                        </td>
                        <td class="form_label">
                            基地:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="reviewrecord.jd"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            property1:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="reviewrecord.jz"/>
                        </td>
                        <td class="form_label">
                            property2:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="reviewrecord.isdel"/>
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
                                    Entity
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
                                <td >
                                    <a class="nui-button " iconCls="icon-reload" onclick="gridReload('grid_0')"  plain="true" tooltip="刷新">
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
                            url="com.cgn.itmp.weldingmanagement.reviewrecordbiz.getReviewrecord.biz.ext"
                            dataField="reviewrecord.records"
                            allowCellEdit="true"
                            allowCellSelect="true"
                            multiSelect="true"
                            editNextOnEnterKey="true">

                        <div property="columns">
                            <div type="checkcolumn">
                            </div>
                            <div field="welder" allowSort="true" align="left" headerAlign="center" width="">
                                焊工_资质
                                <input class="nui-textbox" enabled="true" name="welder" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="identification" allowSort="true" align="left" headerAlign="center" width="">
                                标识
                                <input class="nui-textbox" enabled="true" name="identification" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="result" allowSort="true" align="left" headerAlign="center" width="">
                                审查结果
                                <input class="nui-textbox" enabled="true" name="result" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="remarks" allowSort="true" align="left" headerAlign="center" width="">
                                备注
                                <input class="nui-textbox" enabled="true" name="remarks" property="editor" required="false" visible="true"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" iconCls="icon-save" onclick="onOk()">
                                保存
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button" iconCls="icon-cancel" onclick="onCancel()">
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
                data = nui.clone(data);
                nui.get("grid_0").load({reviewrecord:data});
                var json = nui.encode({reviewrecord:data});
                $.ajax({
                    url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.getReviewrecord.biz.ext",
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


                function saveData(){
                    form.validate();
                    if(form.isValid()==false) return;
                    setGridData("grid_0","reviewrecord.records");
                    var data = form.getData(false,true);
                    var json = nui.encode(data);

                    $.ajax({
                        url:"com.cgn.itmp.weldingmanagement.reviewrecordbiz.updateReviewrecord.biz.ext",
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
                        </script>
                    </body>
                </html>
