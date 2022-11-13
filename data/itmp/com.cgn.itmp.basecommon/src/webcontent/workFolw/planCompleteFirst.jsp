<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.*" %>
<%@ page import="commonj.sdo.DataObject" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Sun
- Date: 2019-01-21 11:23:22
- Description:
    --%>
<head>
    <title>
        计划更新申请
    </title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
    </script>
    <%
        DataObject[] resultList = (DataObject[]) request.getAttribute("resultList");//数据列表
        DataObject data = null;
        if (resultList != null && resultList.length > 0) {
            data = resultList[0];
        }
        String planFlag = request.getParameter("planFlag");
        String transferEntity = request.getParameter("transferEntity");//中间表
        String modelFlag = request.getParameter("modelFlag");
        String title = "计划完成清单";
        if (planFlag.equals("2")) {
            title = "计划取消清单";
        }
        IUserObject cu = CommonUtil.getUserObject();
        String userid = cu.getUserId();
        String username = cu.getUserRealName();
        String flag = request.getParameter("flag");
    %>
</head>

<body style="background-color:#f1f1f1;width:98%;height:95%;margin:0 auto;overflow: hidden;">
<div id="recordFromList" class="nui-form" align="center" style="height:0%">

    <input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
    <input class="nui-hidden" id="planFlag" value="<b:write property='planFlag'/>"/>
    <input class="nui-hidden" id="processInstId" name="processInstId" value="<b:write property='processInstId'/>"/>
    <input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>

</div>
<div class="nui-panel" title="<%=title %>" style="width:100%;height:80%;">
    <div class="nui-fit">
        <div
                id="planCompleteGrid"
                dataField="tdgglentrys"
                class="nui-datagrid"
                style="width:100%;height:100%;"
                url="com.cgn.itmp.basecommon.Common.queryDataByEntity.biz.ext"
                allowCellSelect="true"
                multiSelect="true"
                editNextOnEnterKey="true"
                editNextRowCell="true"
                showPager="false"
                showPageInfo="true"
                multiSelect="true"
                allowSortColumn="false">
            <div property="columns">
            </div>
        </div>
    </div>


    <table id="jh">
        <tr id="jhryId">
            <td class="form_label" style="width: 10%">校核人员</td>
<!--             <td colspan="5"> -->
<!--                 <input class="nui-combobox" dataField="resultList.EmployeeSource" onvaluechanged="onchangePerson" -->
<!--                        id="jhry" name="jhry" textField="empname" style="width:50%" -->
<!--                        url="" required="true" -->
<!--                        requiredErrorText="请选择校核人员" valueField="empid"/> -->
<!--             </td> -->
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
            <!-- 				<td colspan="5"> -->
            <!-- 					<input  required="true" property="editor" id="jhry"  name="jhry"  class="nui-textboxlist" dataField="list" required="true" requiredErrorText="请输入校核人员" style="width:250px"  -->
            <!-- 					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  /> -->
            <!-- 				</td> -->
            <td class="form_label" style="width: 10%">抄送人员</td>
            <td colspan="5">
                <input property="editor" id="ccry" multi="false" name="ccry" class="nui-textboxlist" dataField="list"
                       style="width:250px"
                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext" valueField="empcode"
                       textField="empcodename" searchField="keyword" />
            </td>
        </tr>
    </table>
</div>
</body>

<div id="flag" class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
    <table width="100%">
        <tr>
            <td style="text-align:center;" colspan="4">
                <a class="nui-button" onclick="onSubmit()" id="btnSubmit" name="hiddenButton">
                    提交
                </a>
                <a class="nui-button" onclick="onDelete()" id="btnDelete">
                    作废
                </a>
                <a class="nui-button" onclick="onCancel()">
                    关闭
                </a>
            </td>
        </tr>
    </table>
</div>

<script type="text/javascript">
    nui.parse();
    var planFlag = nui.get('planFlag').getValue();
    var flag = '<%=flag%>';
    if ("1" == flag) {
        $('#jh').hide();
        $('#flag').hide();
    }
    //审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
    var lc = '<%=data.get("lc")%>';
    var modelFlag = '<%=modelFlag%>';
    var typeFlag = 1;//日常与大修标识，1为大修，2为大纲日常3、专用检查计划日常
    if (modelFlag == '2' || modelFlag == '4' || modelFlag == '6' || modelFlag == '8') {
        typeFlag = 2;
    } else if (modelFlag == '10' || modelFlag == '12'
        || modelFlag == '19' || modelFlag == '20' || modelFlag == '21' || modelFlag == '22' || modelFlag == '23' || modelFlag == '24' || modelFlag == '25' || modelFlag == '26') {
        typeFlag = 3;
    }

    var editable = nui.get('editable').getValue();//已办
    getProcessInfo();
    if (editable == 'false' ) {
    	
        nui.get("btnSubmit").hide();
        nui.get("btnDelete").hide();
        $('#jhryId').hide();

    }


    function getProcessInfo() {
    	var result = null;
        var json = "{processInstId:" + nui.get("processInstId").getValue() + ",getOther:false}";
        var urlStr = 'com.cgn.itmp.basecommon.WorkFlowCommon.queryProcInstanceCurrentState.biz.ext';
        $.ajax({
            url: urlStr,  //获取当前的活动节点
            type: 'POST',
            data: json,
            cache: false,
            contentType: 'text/json',
            success: function (text) {
              	if(editable == 'true' && text.data.processInst.creator != '<%=userid%>'){
              	 	nui.get("btnSubmit").hide();
			        nui.get("btnDelete").hide();
			        $('#jhryId').hide();
              	}
            }
        });
        return result;
    }


    $(function () {
        var dictTypeId = "FLOW_FIELD" + "<%=modelFlag%>";
        $.ajax({
            url: "com.cgn.itmp.basecommon.DictionaryOperation.getDictInfoByType.biz.ext",
            type: 'POST',
            cache: false,
            data: "{dictTypeId:'" + dictTypeId + "',pdictTypeId:'FLOW_FIELD'}",
            contentType: 'text/json',
            success: function (text) {
                var resultInfo = text.resultInfo;
                var gridColumn = new Array();
                var indexColumn = {};
                indexColumn.type = "indexcolumn";
                gridColumn.push(indexColumn);

                //id字段
                var editidcolumn = {};
                editidcolumn.field = "editid";
                editidcolumn.visible = false;
                editidcolumn.displayField = "editid";
                gridColumn.push(editidcolumn);
                //uuid字段
                var uuidcolumn = {};
                uuidcolumn.field = "uuid";
                uuidcolumn.visible = false;
                uuidcolumn.displayField = "uuid";
                gridColumn.push(uuidcolumn);

                for (var i = 0; i < resultInfo.length; i++) {
                    var dictId = resultInfo[i].DICTID;
                    var dictName = resultInfo[i].DICTNAME;

                    if (dictName.indexOf('C') != -1) {
                        column.visible = false;
                        continue;
                    } else if (!isNaN(dictName)) {
                        column.visible = false;
                        continue;
                    }
                    var fields = dictId.split("@");
                    var type = fields[1];
                    var column = {};
                    column.field = fields[0];
                    column.header = dictName;
                    column.displayField = fields[0];

                    if (type == 'jd') {//基地转换
                        column.visible = false;
                    } else if (type == 'jz') {//机组转换
                        column.visible = false;
                    } else if (type == 'time') {//日期转换
                        column.renderer = timeRender;
                    } else if (type == 'dic') {//公共字典转换
                        column.dicType = fields[2];
                        column.renderer = "dicRender";
                    }
                    gridColumn.push(column);
                }

                var dxlcColumn = {};
                dxlcColumn.header = lc;
                if (typeFlag == 1) {
                    dxlcColumn.field = (lc + '').toLowerCase();
                    dxlcColumn.displayField = (lc + '').toLowerCase();
                } else if (typeFlag == 2) {
                    dxlcColumn.field = "n" + lc;
                    dxlcColumn.displayField = "n" + lc;
                } else {
                    dxlcColumn.field = "c" + lc;
                    dxlcColumn.displayField = "c" + lc;
                }

//                         dxlcColumn.field = lc.toLowerCase();
// 		            	dxlcColumn.header  = lc; 
// 		            	dxlcColumn.displayField  = lc.toLowerCase();

                gridColumn.push(dxlcColumn);
                var dxFlag = "false";
                if (planFlag == '1') {//计划完成
                } else if (planFlag == '2') {//计划取消
                    if (isNaN(lc)) {
                        dxFlag = "true";
                        lc = lc.substr(1, lc.length);
                    }
                    for (var i = parseInt(lc) + 1; i <= parseInt(lc) + 9; i++) {
                        dxlcColumn = {};

                        if (dxFlag == "true") {//大修
                            dxlcColumn.header = "C" + i;
                        } else {
                            dxlcColumn.header = i;
                        }
                        if (typeFlag == 1) {
                            column.dxlcColumn = "C" + i;
                        }
                        if (typeFlag == 2) {
                            dxlcColumn.field = "n" + i;
                            dxlcColumn.displayField = "n" + i;
                        } else {
                            dxlcColumn.field = "c" + i;
                            dxlcColumn.displayField = "c" + i;
                        }

// 								dxlcColumn.field = "c"+i;
// 				            	dxlcColumn.header  = "C"+i; 
// 				            	dxlcColumn.displayField  = "c"+i;
                        gridColumn.push(dxlcColumn);
                    }
                    ;
                }

                //修改原因
                var xgyycolumn = {};
                xgyycolumn.field = "xgyy";
                xgyycolumn.header = "修改原因";
                xgyycolumn.name = "xgyy";
                gridColumn.add(xgyycolumn);

                var grid = nui.get("planCompleteGrid");
                grid.setColumns(gridColumn);

                grid.load({
                    "criteria/_entity": "<%=transferEntity%>",
                    "criteria/_expr[1]/processInstId": '<%=data.get("processInstId")%>',
                    "criteria/_expr[1]/_op": '='
                }, function () {
                    if (planFlag == '1') {
                        grid.mergeColumns(["xgyy"]);//合并修改原因
                    }
                });


            }
        });
    });

    //日期转换
    function timeRender(e) {
        return nui.formatDate(e.cellHtml, 'yyyy-MM-dd HH:mm:ss');
    }

    // 公共字典转换
    function dicRender(e) {
        return nui.getDictText(e.column.dicType, e.value);
    }

    //提交申请
    function onSubmit() {
        var data = {};
        data.processInstId = nui.get('processInstId').getValue();
        data.workItemId = nui.get('workItemId').getValue();
        data.jhry = nui.get('jhry').getValue();
        data.ccry = nui.get('ccry').getValue();

        if (data.jhry == '') {
            nui.alert("请选择校核人员", "提示");
            return;
        }

        var json = nui.encode(data);

        nui.get("#btnSubmit").setEnabled(false);
        nui.get("#btnDelete").setEnabled(false);

        $.ajax({
            url: "com.cgn.itmp.basecommon.WorkFlowCommon.finshWork.biz.ext",
            type: 'POST',
            data: json,
            cache: false,
            contentType: 'text/json',
            success: function (text) {
                var returnJson = nui.decode(text);
                if (returnJson.exception == null) {
                    nui.alert("提交成功");

                    onCancel();
                } else {
                    nui.alert("提交失败", "系统提示", function (action) {
                        if (action == "ok" || action == "close") {
                            onCancel();
                        }
                    });
                }
            },
             error: function (jqXHR, textStatus, errorThrown) {
                 nui.alert(jqXHR.responseText,'错误',function (action) {
                 	 	nui.get("#btnSubmit").setEnabled(true);
    					nui.get("#btnDelete").setEnabled(true);
	        	});
   			 }
        });
    }

    //取消
    function onCancel() {
        if (self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();
        self.parent.location.reload();

        return;
    }


    //流程作废
    function onDelete() {
        var transferEntity = "<%=transferEntity %>";
        nui.confirm("确定要作废流程？", "提示",
            function (action) {
                if (action == "ok") {
                    nui.get("#btnSubmit").setEnabled(false);
                    nui.get("#btnDelete").setEnabled(false);
                    var json = {};
                    json.processInstId = nui.getbyName('processInstId').getValue();
                    json.workItemId = nui.getbyName('workItemId').getValue();
                    json.entityType = transferEntity;
                    var jsondata = nui.encode(json);
                    $.ajax({
                        url: "com.cgn.itmp.basecommon.WorkFlowCommon.wsterminateProcess.biz.ext",
                        type: 'POST',
                        data: jsondata,
                        cache: false,
                        contentType: 'text/json',
                        success: function (data) {
                            var message = "流程作废成功";
                            nui.alert(message, "成功", function () {
                                onCancel();
                            });
                        }
                    });
                }
            });
    }
</script>

<style>
    .dxlb {
        position: relative;
    }

    .xuze {
        position: absolute;
    }
</style>

</html>
