<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-15 12:31:12
- Description:
    --%>
    
<head>
    <title>
        基地录入
    </title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
    </script>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/fontstyle.css"/>
    
</head>
<body style="width:98%;height:100%;margin:0 auto;">
<fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
    <div id="dataform1" style="padding-top:5px;">
        <!-- hidden域 -->
        <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
        <input class="nui-hidden" name="tddxgljddict.tdDxglJizudicts" id="tddxgljddict.tdDxglJizudicts"/>
        <input class="nui-hidden" name="tddxgljddict.id" id="tddxgljddict.id"/>
        <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
            <tr>

                <td class="form_label">
                    基地名称:
                </td>
                <td colspan="1">
                    <input class="nui-textbox" onvalidation="hasIllegalChar(e,32,true,true)" required="true" requiredErrorText="基地名称不能为空"  name="tddxgljddict.name" id="powerName"/>
                </td>
                <td class="form_label">
                   蒸发器型号:
                </td>
                <td colspan="1">
                    <input  <input class="nui-dictcombobox" 
					dictTypeId="evaporator_model" name="tddxgljddict.type"/>
                </td>
                <!-- <div field="ord" allowSort="true" align="left" headerAlign="center" width="">
                          排序号:
                  <input class="nui-textbox" name="ord" property="editor"/>
                </div>  -->

            </tr>
        </table>
    </div>
</fieldset>
<!-- 从表的修改 -->
<div style="margin:0px 2px 0px 2px;">
    <div class="nui-tabs" id="tab" activeIndex="0" style="width:100%;height:100%;">
        <div title="包含机组信息">
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table style="width:100%;">
                    <tr>
                        <!--     <td style="width:100%;">
                                新增机组名称
                            </td> -->
                        <td>
                            <a class="nui-button btn btn-default btn-xs" onclick="gridAddRow('grid_0')">
                               增加
                            </a>

                            <a class="nui-button btn btn-default btn-xs" onclick="gridRemoveRow('grid_0')">
                              删除
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="grid_0" class="nui-datagrid" style="width:100%;height:150px;" showPager="false" sortMode="client"
                 allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true">
                <div property="columns">
                    <div type="checkcolumn">
                    </div>
                    <div field="jzname" allowSort="true" align="left" headerAlign="center" width="">
                        机组名称
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,32,true,true)" required="true" requiredErrorText="基组名称不能为空"  name="name" property="editor"/>
                    </div>
                    <div field="type" allowSort="true" align="left" headerAlign="center" width="">
                        备注
                        <input class="nui-textbox" name="type"  onvalidation="hasIllegalChar(e,32,false,true)" property="editor"/>
                    </div>
                    <div field="ord" allowSort="true" align="left" headerAlign="center" width="">
                        排序号
                        <input class="nui-textbox" name="ord"  onvalidation="hasIllegalChar(e,32,false,true)" property="editor"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
        <table width="100%">
            <tr>
                <td style="text-align:center;" colspan="4">
                    <a class="btn btn-default" onclick="onOk()">
                        保存
                    </a>
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <a class="btn btn-second" onclick="onCancel()">
                       关闭
                    </a>
                </td>
            </tr>
        </table>
    </div>
</div>
<script type="text/javascript">
    nui.parse();
    var tab = nui.get("tab");
    var form = new nui.Form("#dataform1");
    form.setChanged(false);
    nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
    function onOk() {
        saveData();
    }

    function gridAddRow(datagrid) {
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

    function setGridData(datagrid, dataid) {
        var grid = nui.get(datagrid);
        var grid_data = grid.getChanges();
        nui.get(dataid).setValue(grid_data);
    }

    function saveData() {
        
        form.validate();
        if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
 			//验证基地名是否已经存在
        var json = "{'powerName':'"+ nui.get("powerName").getValue() +"',num:0}";
        $.ajax({
            url: "com.cgn.itmp.systemset.BaseMgt.validPowerNameExist.biz.ext",
            type: 'POST',
            data: json,
            cache: false,
            contentType: 'text/json',
            success: function (text) {
                if(text.result){
                    nui.alert("该基地已存在!")
                    return;
                }else{
                    var grid = nui.get("grid_0");
                    var crewList = grid.getChanges();
                    var crewIsExist = false;
                    var crewStr = "#";
                    for(var i = 0 ; i < crewList.length ; i++){
                        if(crewStr.indexOf(crewList[i].jzname) >= 0){
                            crewIsExist = true;
                            nui.alert("该基地下存在重复的机组!")
                            return;
                        }else{
                            crewStr += crewList[i].jzname + "#";
                        }
                    }
                    if(!crewIsExist){
                        var data = form.getData(false, true);
                        setGridData("grid_0", "tddxgljddict.tdDxglJizudicts");
                        data = form.getData(false, true);
                        json = nui.encode(data);
                        $.ajax({
                            url: "com.cgn.itmp.systemset.BaseMgt.addTdDxglJddict.biz.ext",
                            type: 'POST',
                            data: json,
                            cache: false,
                            contentType: 'text/json',
                            success: function (text) {
                                var returnJson = nui.decode(text);
                                if (returnJson.exception == null) {
                                	setDefaultZQ();
                                    CloseWindow("saveSuccess");
                                } else {
                                    nui.alert("保存失败", "系统提示", function (action) {
                                        if (action == "ok" || action == "close") {
                                            //CloseWindow("saveFailed");
                                        }
                                    });
                                }
                            }
                        });
                    }
              }
            }
        });
    }

	//设置默认周期
    function setDefaultZQ(){
        $.ajax({
            url: "com.cgn.itmp.systemset.BaseMgt.setDefaultZQ.biz.ext",
            type: 'POST',
            cache: false,
            contentType: 'text/json',
            success: function (text) {

            }
        });
    }


    
    
    function onReset() {
        form.reset();
        form.setChanged(false);
    }

    function onCancel() {
        CloseWindow("cancel");
    }

    function CloseWindow(action) {

        if (action == "close") {

        } else if (window.CloseOwnerWindow)
            return window.CloseOwnerWindow(action);
        else
            return window.close();
    }
</script>
</body>
</html>
