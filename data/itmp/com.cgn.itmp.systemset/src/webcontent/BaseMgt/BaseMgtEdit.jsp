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
    <!-- <title>
        TdDxglJddict录入
    </title> -->
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
    </script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/fontstyle.css"/>
</head>
<body style="width:98%;height:95%;margin:0 auto;">
<fieldset style="border:solid 1px #aaa;position:relative;">
    <!-- <legend>
        TdDxglJddict
    </legend> -->
    <div id="dataform1" style="padding-top:5px;">
        <!-- hidden域 -->
        <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
        <input class="nui-hidden" name="tddxgljddict.tdDxglJizudicts" id="tddxgljddict.tdDxglJizudicts"/>
        <input class="nui-hidden" name="tddxgljddict.id" id="tddxgljddict.id"/>
        <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
            <tr>

                <td class="form_label">
                    基地:
                </td>
                <td colspan="1">
                    <input class="nui-textbox" name="tddxgljddict.name" readOnly="readOnly"/>
                </td>

                <td class="form_label">
                    蒸发器型号:
                </td>
                <td colspan="1">
                    <input  <input class="nui-dictcombobox" 
					dictTypeId="evaporator_model" name="tddxgljddict.type"/>
                </td>


            </tr>
        </table>
    </div>
</fieldset>
<!-- 从表的修改 -->
<div style="margin:0px 2px 0px 2px;height:80%;">
    <div class="nui-tabs" id="tab" activeIndex="0" style="width:100%;height:92%;">
        <div title="包含机组信息">
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table style="height:80%;">
                    <tr>

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
            <div
                    id="grid_0"
                    class="nui-datagrid"
                    style="width:100%;height:80%;"
                    pageSize="20" sizeList="[20,100,1000]"
                    showPageInfo="true"
                    url="com.cgn.itmp.systemset.BaseMgt.getTdDxglJddict.biz.ext"
                    dataField="tddxgljddict.tdDxglJizudicts"
                    allowCellEdit="true"
                    allowCellSelect="true"
                    multiSelect="true"
                    editNextOnEnterKey="true">

                <div property="columns">
                    <div type="checkcolumn">
                    </div>
                    <div field="jzname" allowSort="true" align="left" headerAlign="center" width="">
                        机组名称 <input class="nui-textbox" name="name" property="editor"/>
                    </div>
                    <div field="type" allowSort="true" align="left" headerAlign="center" width="">
                        备注
                        <input class="nui-textbox" name="type" property="editor"/>
                    </div>

                    <div field="ord" allowSort="true" align="left" headerAlign="center" width="">
                        排序
                        <input class="nui-textbox" name="type" property="editor"/>
                    </div>
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

<script type="text/javascript">
    nui.parse();
    var form = new nui.Form("#dataform1");
    var tab = nui.get("tab");
    form.setChanged(false);
    
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

    function gridReload(datagrid) {
        var grid = nui.get(datagrid);
        grid.reload();
    }

    function setGridData(datagrid, dataid) {
        var grid = nui.get(datagrid);
        var grid_data = grid.getData();
        nui.get(dataid).setValue(grid_data);
    }

    function setData(data) {
        data = nui.clone(data);
        nui.get("grid_0").load({tddxgljddict: data});
        var json = nui.encode({tddxgljddict: data});
        $.ajax({
            url: "com.cgn.itmp.systemset.BaseMgt.getTdDxglJddict.biz.ext",
            type: 'POST',
            data: json,
            cache: false,
            contentType: 'text/json',
            success: function (text) {
                obj = nui.decode(text);
                form.setData(obj);
                form.setChanged(false);
            }
        });
        nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
    }


    function saveData() {
        form.validate();
        if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}

        var grid = nui.get("grid_0");
        var crewList = grid.getData();
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
        if(!crewIsExist) {
            setGridData("grid_0", "tddxgljddict.tdDxglJizudicts");
            var data = form.getData(false, true);
            json = nui.encode(data);

            $.ajax({
                url: "com.cgn.itmp.systemset.BaseMgt.updateTdDxglJddict.biz.ext",
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

                            }
                        });
                    }
                },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							});
						 }
            });
        }
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
