<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Sun
- Date: 2019-02-28 10:14:47
- Description:
    --%>
    <head>
        <title>
            TCgnDgglCktlgl查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
    </head>
    <body style="width:98%;height:95%;">
        <div class="nui-panel" title="查询" style="width:100%;height:22%;" showToolbar="false" showFooter="true">
            <div id="form1" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.base.legendManagement.LEGEND">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="uuid">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
                <table id="table1" class="table" style="height:100%">
                    <tr>
                        <td class="form_label">
                            编号:
                        </td>
                        <td colspan="3">
                            <input id='baseid' class="nui-hidden" name="criteria/_expr[1]/jd"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input id='crewid' class="nui-hidden" name="criteria/_expr[2]/jzid"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-textbox" name="criteria/_expr[3]/cktlbh"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <input class="nui-hidden" value="0"name="criteria/_expr[5]/isdelete"/>
                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="=">
                        </td>
                        <td class="form_label">
                            名称:
                        </td>
                        <td colspan="3">
                            <input class="nui-textbox" name="criteria/_expr[4]/cktlmc"/>
                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                        </td>
                        <td>
                        <a class="nui-button" onclick="search()">
					                查询
					            </a>
					            <a class="nui-button" onclick="reset()">
					                重置
					            </a>
                        </td>
                        <td>
                        <a class="nui-button" onclick="onOk()">
					                确定
					            </a>
					            <a class="nui-button" onclick="onCancel()">
					                取消
					            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="nui-panel" title="数据列表" style="width:100%;height:83%;"  >
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdgglentrys"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.basecommon.Common.queryDataByEntity.biz.ext"
                       showPager="false"
                        multiSelect="false"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="cktlbh" headerAlign="center" allowSort="true" >
                            参考图例编号
                        </div>
                        <div field="cktlmc" headerAlign="center" allowSort="true" >
                            参考图例名称
                        </div>
                    </div>
                </div>
            </div>
        </div>
<script type="text/javascript">
nui.parse();
var grid = nui.get("datagrid1");
var jdid = getCookie('jdid');
var jzid = getCookie('jzid');
nui.get('baseid').setValue(jdid);
nui.get('crewid').setValue(jzid);
var formData = new nui.Form("#form1").getData(false,false);
grid.load(formData);

function GetData() {
    var rows = grid.getSelecteds();
    return rows;
}

function onOk() {
    CloseWindow("ok");
}
function onCancel() {
    CloseWindow("cancel");
}

function CloseWindow(action) {
    if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
    else window.close();
}

//重新刷新页面
function refresh(){
    var form = new  nui.Form("#form1");
    var json = form.getData(false,false);
    grid.load(json);//grid查询
    nui.get("update").enable();
}

//查询
function search() {
	nui.get('baseid').setValue(jdid);
    nui.get('crewid').setValue(jzid);
    var form = new nui.Form("#form1");
    var json = form.getData(false,false);
    grid.load(json);//grid查询
}

//重置查询条件
function reset(){
    var form = new nui.Form("#form1");//将普通form转为nui的form
    form.reset();
}

//enter键触发查询
function onKeyEnter(e) {
    search();
}
function onRowDblClick(e) {
    onOk();
}

//当选择列时
function selectionChanged(){
    var rows = grid.getSelecteds();
    if(rows.length>1){
       // nui.get("update").disable();
    }else{
        //nui.get("update").enable();
    }
}
        </script>
    </body>
</html>
