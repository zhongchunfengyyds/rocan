<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    int processInstId = Integer.parseInt(request.getParameter("processInstId"));
    String param = request.getParameter("editable");
    IUserObject cu = CommonUtil.getUserObject();
    String userid = cu.getUserId();
    String username = cu.getUserRealName();
%>
<html>

<%--
- Author(s): Administrator
- Date: 2019-02-12 09:50:51
- Description:
    --%>
<head>
    <title>
        录入
    </title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css"/>
</head>
<style>
    ul, li {
        list-style: none;
    }

    ul li {
        float: left;
        margin: 3px;
    }

    {
        overflow: hidden
    ;
    }
</style>
<body>
<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
<input name="pageType" class="nui-hidden"/>
<div id="dataform1" style="padding-top:5px;">
    <!-- hidden域 -->
    <input class="nui-hidden" name="delete_entity.uuid" value="<b:write property='entity/uuid'/>"/>
    <input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
    <input class="nui-hidden" name="delete_entity.processInstId" value="<b:write property='processInstId'/>" />
    <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>" id="workItemId">
    <input class="nui-hidden" name="actInstId" value="<b:write property='actInstId'/>"  id="actInstId"/>
    <input class="nui-hidden" name="jdid" value="<b:write property='entity/base'/>" id="jdid"/>
    <input class="nui-hidden" name="jzid" value="<b:write property='entity/crew'/>" id="jzid"/>
    <input class="nui-hidden" name="backid" value="manualActivity"/>
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td class="form_label" align="center">
                基地:
            </td>
            <td colspan="1">
                <input class="nui-combobox" readonly="readonly" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"
                       textField="name" onvaluechanged="reloadJz" value="<b:write property='entity/base'/>"
                       readonly="readonly" dataField="jsonObject" id="jd" name="delete_entity.base" valueField="id"/>
            </td>

            <td class="form_label" align="center">
                机组:
            </td>
            <td colspan="1">
                <input class="nui-combobox" readonly="readonly" dataField="jsonObject" id="jz" textField="name"
                       url="" name="delete_entity.crew" valueField="id" value="<b:write property='entity/crew'/>"/>
            </td>

            <td class="form_label" align="center">
                类型:
            </td>
            <td colspan="1">
                <input class="nui-dictcombobox" readonly="readonly" id="type" dictTypeId="ZYJCJH" value="RQRJHQ"
                       value="<b:write property='entity/type'/>" name="delete_entity.type"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                维护项目:
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<b:write property='entity/tasklist'/>" name="delete_entity.tasklist"/>
            </td>
            <td class="form_label" align="center">
                项目来源:
            </td>
            <td colspan="1">
                <input class="nui-dictcombobox"  readonly="readonly" required="true" dictTypeId="protype" value="<b:write property='entity/zytool'/>" name="delete_entity.zytool"/>
            </td>
            <td class="form_label" align="center">
                检查项目名称:
            </td>
            <td colspan="1">
                <input class="nui-textbox" readonly="readonly" required="true" value="<b:write property='entity/checkprojectname'/>"
                       requiredErrorText="请输入检查项目名称" name="delete_entity.checkprojectname"/>
            </td>

        </tr>
        <tr>
            <td class="form_label" align="center">
                项号:
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<b:write property='entity/itemnumber'/>"
                       name="delete_entity.itemnumber"/>
            </td>
            <td class="form_label" align="center">
                功能位置:
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<b:write property='entity/gnwz'/>" name="delete_entity.gnwz"/>
            </td>
            <td class="form_label" align="center">
                设备名称:
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<b:write property='entity/sbname'/>" name="delete_entity.sbname"/>
            </td>


        </tr>

        <tr>
            <td class="form_label" align="center">
                管壳侧:
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<b:write property='entity/gkc'/>" name="delete_entity.gkc"/>
            </td>
            <td class="form_label" align="center">
                设备图号:
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<b:write property='entity/sbnumber'/>" name="delete_entity.sbnumber"/>
            </td>
            <td class="form_label" align="center">
                检查方法:
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<b:write property='entity/jcmethod'/>" name="delete_entity.jcmethod"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                检查程序:
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<b:write property='entity/jcprocedure'/>"
                       name="delete_entity.jcprocedure"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                被检部位:
            </td>
            <td colspan="5">
                <input class="nui-textarea" value="<b:write property='entity/jcbw'/>" style="width: 100%"
                       name="delete_entity.jcbw"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                接近方式:
            </td>
            <td colspan="5">
                <input class="nui-textarea" value="<b:write property='entity/jjmode'/>" style="width: 100%"
                       name="delete_entity.jjmode"/>
            </td>

        </tr>
        <tr>
            <td class="form_label" align="center">
                备注:
            </td>
            <td colspan="5">
                <input class="nui-textarea" value="<b:write property='entity/remarks'/>" style="width: 100%"
                       name="delete_entity.remarks"/>
            </td>
        </tr>
    </table>
    <table id="circle" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td id="c1" class="form_label" align="center">
                C1:
            </td>
            <td id="c1i" colspan="1">
                <div name="delete_entity.c1" id="combobox1i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c1'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>

            <td id="c2" class="form_label" align="center">
                C2:
            </td>
            <td id="c2i" colspan="1">
                <div name="delete_entity.c2" id="combobox2i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c2'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>

            <td id="c3" class="form_label" align="center">
                C3:
            </td>
            <td id="c3i" colspan="1">
                <div name="delete_entity.c3" id="combobox3i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c3'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c4" class="form_label" align="center">
                C4:
            </td>
            <td id="c4i" colspan="1">
                <div name="delete_entity.c4" id="combobox4i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c4'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c5" class="form_label" align="center">
                C5:
            </td>
            <td id="c5i" colspan="1">
                <div name="delete_entity.c5" id="combobox5i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c5'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c6" class="form_label" align="center">
                C6:
            </td>
            <td id="c6i" colspan="1">
                <div name="delete_entity.c6" id="combobox6i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c6'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c7" class="form_label" align="center">
                C7:
            </td>
            <td id="c7i" colspan="1">
                <div name="delete_entity.c7" id="combobox7i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c7'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c8" class="form_label" align="center">
                C8:
            </td>
            <td id="c8i" colspan="1">
                <div name="delete_entity.c8" id="combobox8i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c8'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c9" class="form_label" align="center">
                C9:
            </td>
            <td id="c9i" colspan="1">
                <div name="delete_entity.c9" id="combobox9i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c9'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c10" class="form_label" align="center">
                C10:
            </td>
            <td id="c10i" colspan="1">
                <div name="delete_entity.c10" id="combobox10i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c10'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c11" class="form_label" align="center">
                C11:
            </td>
            <td id="c11i" colspan="1">
                <div name="delete_entity.c11" id="combobox11i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c11'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c12" class="form_label" align="center">
                C12:
            </td>
            <td id="c12i" colspan="1">
                <div name="delete_entity.c12" id="combobox12i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c12'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c13" class="form_label" align="center">
                C13:
            </td>
            <td id="c13i" colspan="1">
                <div name="delete_entity.c13" id="combobox13i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c13'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c14" class="form_label" align="center">
                C14:
            </td>
            <td id="c14i" colspan="1">
                <div name="delete_entity.c14" id="combobox14i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c14'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c15" class="form_label" align="center">
                C15:
            </td>
            <td id="c15i" colspan="1">
                <div name="delete_entity.c15" id="combobox15i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c15'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>

        </tr>
        <tr>
            <td id="c16" class="form_label" align="center">
                C16:
            </td>
            <td id="c16i" colspan="1">
                <div name="delete_entity.c16" id="combobox16i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c16'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c17" class="form_label" align="center">
                C17:
            </td>
            <td id="c17i" colspan="1">
                <div name="delete_entity.c17" id="combobox17i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c17'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c18" class="form_label" align="center">
                C18:
            </td>
            <td id="c18i" colspan="1">
                <div name="delete_entity.c18" id="combobox18i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c18'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>

        </tr>
        <tr>
            <td id="c19" class="form_label" align="center">
                C19:
            </td>
            <td id="c19i" colspan="1">
                <div name="delete_entity.c19" id="combobox19i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c19'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c20" class="form_label" align="center">
                C20:
            </td>
            <td id="c20i" colspan="1">
                <div name="delete_entity.c20" id="combobox20i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c20'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c21" class="form_label" align="center">
                C21:
            </td>
            <td id="c21i" colspan="1">
                <div name="delete_entity.c21" id="combobox21i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns" value="<b:write property='entity/c21'/>">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c22" class="form_label" align="center">
                C22:
            </td>
            <td id="c22i" colspan="1">
                <div name="delete_entity.c22" id="combobox22i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c22'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c23" class="form_label" align="center">
                C23:
            </td>
            <td id="c23i" colspan="1">
                <div name="delete_entity.c23" id="combobox23i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c23'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c24" class="form_label" align="center">
                C24:
            </td>
            <td id="c24i" colspan="1">
                <div name="delete_entity.c24" id="combobox24i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c24'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c25" class="form_label" align="center">
                C25:
            </td>
            <td id="c25i" colspan="1">
                <div name="delete_entity.c25" id="combobox25i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c25'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c26" class="form_label" align="center">
                C26:
            </td>
            <td id="c26i" colspan="1">
                <div name="delete_entity.c26" id="combobox26i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c26'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c27" class="form_label" align="center">
                C27:
            </td>
            <td id="c27i" colspan="1">
                <div name="delete_entity.c27" id="combobox27i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c27'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c28" class="form_label" align="center">
                C28:
            </td>
            <td id="c28i" colspan="1">
                <div name="delete_entity.c28" id="combobox28i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c28'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c29" class="form_label" align="center">
                C29:
            </td>
            <td id="c29i" colspan="1">
                <div name="delete_entity.c29" id="combobox29i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c29'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c30" class="form_label" align="center">
                C30:
            </td>
            <td id="c30i" colspan="1">
                <div name="delete_entity.c30" id="combobox30i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c30'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c31" class="form_label" align="center">
                C31:
            </td>
            <td id="c31i" colspan="1">
                <div name="delete_entity.c31" id="combobox31i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c31'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c32" class="form_label" align="center">
                C32:
            </td>
            <td id="c32i" colspan="1">
                <div name="delete_entity.c32" id="combobox32i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c32'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c33" class="form_label" align="center">
                C33:
            </td>
            <td id="c33i" colspan="1">
                <div name="delete_entity.c33" id="combobox33i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c33'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c34" class="form_label" align="center">
                C34:
            </td>
            <td id="c34i" colspan="1">
                <div name="delete_entity.c34" id="combobox34i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c34'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c35" class="form_label" align="center">
                C35:
            </td>
            <td id="c35i" colspan="1">
                <div name="delete_entity.c35" id="combobox35i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c35'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c36" class="form_label" align="center">
                C36:
            </td>
            <td id="c36i" colspan="1">
                <div name="delete_entity.c36" id="combobox36i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c36'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c37" class="form_label" align="center">
                C37:
            </td>
            <td id="c37i" colspan="1">
                <div name="delete_entity.c37" id="combobox37i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c37'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c38" class="form_label" align="center">
                C38:
            </td>
            <td id="c38i" colspan="1">
                <div name="delete_entity.c38" id="combobox38i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c38'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c39" class="form_label" align="center">
                C39:
            </td>
            <td id="c39i" colspan="1">
                <div name="delete_entity.c39" id="combobox39i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c39'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c40" class="form_label" align="center">
                C40:
            </td>
            <td id="c40i" colspan="1">
                <div name="delete_entity.c40" id="combobox40i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c40'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c41" class="form_label" align="center">
                C41:
            </td>
            <td id="c41i" colspan="1">
                <div name="delete_entity.c41" id="combobox41i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c41'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c42" class="form_label" align="center">
                C42:
            </td>
            <td id="c42i" colspan="1">
                <div name="delete_entity.c42" id="combobox42i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c42'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c43" class="form_label" align="center">
                C43:
            </td>
            <td id="c43i" colspan="1">
                <div name="delete_entity.c43" id="combobox43i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c43'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c44" class="form_label" align="center">
                C44:
            </td>
            <td id="c44i" colspan="1">
                <div name="delete_entity.c44" id="combobox44i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c44'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c45" class="form_label" align="center">
                C45:
            </td>
            <td id="c45i" colspan="1">
                <div name="delete_entity.c45" id="combobox45i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c45'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c46" class="form_label" align="center">
                C46:
            </td>
            <td id="c46i" colspan="1">
                <div name="delete_entity.c46" id="combobox46i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c46'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c47" class="form_label" align="center">
                C47:
            </td>
            <td id="c47i" colspan="1">
                <div name="delete_entity.c47" id="combobox47i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c47'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c48" class="form_label" align="center">
                C48:
            </td>
            <td id="c48i" colspan="1">
                <div name="delete_entity.c48" id="combobox48i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c48'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c49" class="form_label" align="center">
                C49:
            </td>
            <td id="c49i" colspan="1">
                <div name="delete_entity.c49" id="combobox49i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c49'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c50" class="form_label" align="center">
                C50:
            </td>
            <td id="c50i" colspan="1">
                <div name="delete_entity.c50" id="combobox50i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c50'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c51" class="form_label" align="center">
                C51:
            </td>
            <td id="c51i" colspan="1">
                <div name="delete_entity.c51" id="combobox51i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c51'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>

        </tr>
        <tr>
            <td id="c52" class="form_label" align="center">
                C52:
            </td>
            <td id="c52i" colspan="1">
                <div name="delete_entity.c52" id="combobox52i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c52'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c53" class="form_label" align="center">
                C53:
            </td>
            <td id="c53i" colspan="1">
                <div name="delete_entity.c53" id="combobox53i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c53'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c54" class="form_label" align="center">
                C54:
            </td>
            <td id="c54i" colspan="1">
                <div name="delete_entity.c54" id="combobox54i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c54'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c55" class="form_label" align="center">
                C55:
            </td>
            <td id="c55i" colspan="1">
                <div name="delete_entity.c55" id="combobox55i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c55'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c56" class="form_label" align="center">
                C56:
            </td>
            <td id="c56i" colspan="1">
                <div name="delete_entity.c56" id="combobox56i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c56'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c57" class="form_label" align="center">
                C57:
            </td>
            <td id="c57i" colspan="1">
                <div name="delete_entity.c57" id="combobox57i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c57'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="c58" class="form_label" align="center">
                C58:
            </td>
            <td id="c58i" colspan="1">
                <div name="delete_entity.c58" id="combobox58i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c58'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c59" class="form_label" align="center">
                C59:
            </td>
            <td id="c59i" colspan="1">
                <div name="delete_entity.c59" id="combobox59i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c59'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c60" class="form_label" align="center">
                C60:
            </td>
            <td id="c60i" colspan="1">
                <div name="delete_entity.c60" id="combobox60i" class="nui-combobox" style="width:100px;"
                     popupWidth="150" textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"
                     value="<b:write property='entity/c60'/>">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
    <!-- 人员及原因信息 -->
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">

        <tr>
            <td class="form_label" align="center">
                发起人:
            </td>
            <td colspan="2">
                <input id="creator" class="nui-textbox" value="<b:write property='entity/creator'/>"
                       name="delete_entity.creator"/>
            </td>
            <td class="form_label" align="center">
                发起日期:
            </td>
            <td colspan="2">
                <input id="datetime" dateFormat="yyyy-MM-dd HH:mm:ss" value="<b:write property='entity/datetime'/>"
                       style="width: 100%" class="nui-textbox"
                       name="delete_entity.datetime"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                新增原因:
            </td>
            <td colspan="5">
                <input class="nui-textarea" required="true" value="<b:write property='entity/reason'/>"
                       requiredErrorText="请输入新增原因" style="width: 100%"
                       name="delete_entity.reason"/>
            </td>
        </tr>
        <tr id="spyjId">
            <td class="form_label"  align="center">
                审批意见:
            </td>
            <td colspan="3">
                <input id="spyj" required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width: 100%" name="spyj"/>
            </td>
            <td class="form_label"  align="center">
                常用意见:
            </td>
            <td class="form_label"  align="center">
                <input class="nui-dictcombobox"  onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ"  />
            </td>
        </tr>
    </table>
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table" id="personTable">
        <tr id="jhryTr">
            <td class="form_label">
                校核人员:
            </td>
<!--             <td colspan="5"> -->
<!--                 <input class="nui-combobox" dataField="resultList.EmployeeSource" onvaluechanged="onchangePerson" -->
<!--                        id="jhry" name="jhry" textField="empname" style="width:50%" -->
<!--                        url="" required="true" -->
<!--                        requiredErrorText="请选择校核人员" valueField="empid"/> -->
<!--             </td> -->
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
        </tr>
        <tr id="ccryTr">
            <td class="form_label">
                抄送人员:
            </td>
            <td colspan="5">
                <input property="editor" id="ccry" name="ccry" class="nui-textboxlist"
                       dataField="list" style="width:250px"
                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
                       valueField="empcode" textField="empcodename" searchField="keyword"
                />

            </td>
        </tr>
    </table>
</div>

<div id="btn" class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
    <table width="100%">
        <tr>
            <td style="text-align:center;" colspan="4">
                <a class="nui-button" id="btnSubmit">
                    提交
                </a>
                <span style="display:inline-block;width:25px;">
                            </span>

                <a class="nui-button" onclick="onBack()" id="btnBack">
                    退回
                </a>
                <a class="nui-button" onclick="onDelete()" id="btnDelete">
                    作废
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

<script type="text/javascript">
    nui.parse();
    var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
    var jdCombox = nui.get("jd");
    var jzCombox = nui.get("jz");
    
    var nowActivity = "";
//审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   
    $(function () {
        jdCombox.setValue(nui.get("jdid").getValue());
        jdCombox.doValueChanged();
        getNowWorkItem();
        hideLC();
        labelModel("creator");
        labelModel("datetime");
    });


    function reloadJz(e) {
        var jdid = jdCombox.getValue();
        jzCombox.setValue("");
        var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
        jzCombox.setUrl(url);
        jzCombox.setValue(nui.get("jzid").getValue());
    }


    function hideLC() {
        
        var jdid = nui.get("jd").getValue();
        var jzid = nui.get("jz").getValue();
        var parms = "{baseid:" + jdid + ",crewid:" + jzid + "}";
        var urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getBaseCircle.biz.ext";
        $.ajax({
            url: urlStr,
            type: 'POST',
            cache: false,
            data: parms,
            contentType: 'text/json',
            success: function (data) {
                var returnJson = nui.decode(data);
                if (returnJson.data.sucess) {
                    var start = returnJson.data.start;
                    var end = returnJson.data.end;
                    for (var i = 1; i < parseInt(start); i++) {
                        $('#c' + i).hide();
                        $('#c' + i + "i").hide();
                    }
                    for (var i = parseInt(end) + 8; i <= 60; i++) {
                        $('#c' + i).hide();
                        $('#c' + i + "i").hide();
                    }
                    if (jdid == "86") {
                        for (var i = parseInt(start); i <= parseInt(end) + 7; i++) {
                            nui.get('combobox'+i+'i').setAjaxType("POST"); nui.get('combobox'+i+'i').load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=taishanbase");
                        }
                    } else {
                        for (var i = parseInt(start); i <= parseInt(end) + 7; i++) {
                            nui.get('combobox'+i+'i').setAjaxType("POST"); nui.get('combobox'+i+'i').load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=otherbases");
                        }
                    }

                }
            }
        });

    }

    //提交（申请界面的提交）
    function onOk() {
        
        var form = new nui.Form("#dataform1");

        var urlStr = "com.cgn.itmp.basecommon.Common.updateEntity.biz.ext";
        form.validate();


        if (form.isValid() == false) return;

        var data = form.getData(false, true);
        data.entityType = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit";


        var json = nui.encode(data);

        nui.get("#btnSubmit").setEnabled(false);
        nui.get("#btnDelete").setEnabled(false);
        $.ajax({
            url: urlStr,
            type: 'POST',
            cache: false,
            data: json,
            contentType: 'text/json',
            success: function (data) {
                var returnJson = nui.decode(data);
                if (returnJson.exception == null) {
                    onCancel();
                } else {
                    nui.alert("提交失败", "系统提示", function (action) {
                        if (action == "ok" || action == "close") {
                            onCancel();
                        }
                    });
                }
            },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(false);
	           		 				nui.get("#btnDelete").setEnabled(false);
							});
						}
        });

    }

    //提交（审核界面的提交）
    function onOk2() {
        var form = new nui.Form("#dataform1");
        ;
        var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.finshWork.biz.ext";
        form.validate();
        if (form.isValid() == false) return;
        var data = form.getData(false, true);
        var json = nui.encode(data);

        nui.get("#btnSubmit").setEnabled(false);
        nui.get("#btnBack").setEnabled(false);
        $.ajax({
            url: urlStr,
            type: 'POST',
            data: json,
            cache: false,
            contentType: 'text/json',
            success: function (text) {
                var returnJson = nui.decode(text);
                if (returnJson.exception == null) {
                    doWriteBackRealData();
                    onCancel();
                } else {
                    nui.alert("提交失败", "系统提示", function (action) {
                        if (action == "ok" || action == "close") {
                            onCancel();
                        }
                    });
                }
            },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(false);
	           		 				nui.get("#btnBack").setEnabled(false);
							});
						}
        });
    }

    /**
     * 回写真实表数据
     */
    function doWriteBackRealData() {

        var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.writeBackRealData.biz.ext";

        var json = "{sourceEntity:'com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit'," +
            "targetEntity:'com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container'," +
            "processInstId:'" + nui.get("processInstId").getValue() + "'}";

        nui.get("#btnSubmit").setEnabled(false);
        nui.get("#btnBack").setEnabled(false);
        
        $.ajax({
            url: urlStr,
            type: 'POST',
            data: json,
            cache: false,
            contentType: 'text/json',
            success: function (text) {
                var returnJson = nui.decode(text);
                if (returnJson.exception == null) {
                    onCancel();
                } else {
                    nui.alert("提交失败", "系统提示", function (action) {
                        if (action == "ok" || action == "close") {
                            onCancel();
                        }
                    });
                }
            }
        });
    }


    //回退操作
    function onBack() {


        var form = new nui.Form("#dataform1");
        var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
        form.validate();


        if (form.isValid() == false) return;

        var data = form.getData(false, true);
        var json = nui.encode(data);

        nui.get("#btnSubmit").setEnabled(false);
        nui.get("#btnBack").setEnabled(false);
        $.ajax({
            url: urlStr,
            type: 'POST',
            data: json,
            cache: false,
            contentType: 'text/json',
            success: function (text) {
                var returnJson = nui.decode(text);
                if (returnJson.exception == null) {
                    onCancel();
                } else {
                    nui.alert("回退操作失败", "系统提示", function (action) {
                        if (action == "ok" || action == "close") {
                            onCancel();
                        } else {
                            nui.alert("回退操作失败", "系统提示", function (action) {
                                if (action == "ok" || action == "close") {
                                    onCancel();
                                }
                            });
                        }
                    });
                }
            }
        });
    }

    function doHideControl() {
        var form = new nui.Form("#dataform1");
        var fields = form.getFields();
        var param ='<%=param %>' ;
        if(param){
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if('spyj' != c.name && 'cyyj' != c.name  && 'jhry' != c.name && 'ccry' != c.name){
                    if (c.setReadOnly) c.setReadOnly(true);     //只读
                    if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                    if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
                }
            }

        }
    }

    //流程作废
    function onDelete(){
        nui.confirm("确定要作废流程？","提示",
            function(action){
                if(action=="ok"){
                    nui.get("#btnSubmit").setEnabled(false);
                    nui.get("#btnDelete").setEnabled(false);
                    var json = {};
                    json.processInstId = nui.getbyName('processInstId').getValue();
                    json.workItemId = nui.getbyName('workItemId').getValue();
                    json.entityType = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit";
                    var jsondata = nui.encode(json);
                    $.ajax({
                        url:"com.cgn.itmp.basecommon.WorkFlowCommon.wsterminateProcess.biz.ext",
                        type:'POST',
                        data:jsondata,
                        cache:false,
                        contentType:'text/json',
                        success:function(data){
                            var message = "流程作废成功";
                            nui.alert(message,"成功",function(){
                                onCancel();
                            });
                        }
                    });
                }
            });
    }

    //设置常用意见
    function setcyyj() {
        nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
    }

    function getNowWorkItem() {
        
        var editable = <%=param%>;
        if(!editable){
            nui.get("btnSubmit").hide();
            nui.get("btnBack").hide();
            nui.get("btnDelete").hide();
            $('#personTable').hide();
            $("#spyjId").hide();
            doHideControl();
        }


        //var json = "{workItemId:'" + nui.get("workItemId").getValue() + "'}";
        //var urlStr = 'com.cgn.components.bps.api.webservice.BpsClient.getActiviCfg.biz.ext';
        var json = "{currentActInstId:'" + nui.get("actInstId").getValue() + "'}";
        var urlStr = 'com.cgn.itmp.basecommon.WorkFlowCommon.getActiviInfo.biz.ext';

        $.ajax({
            url: urlStr,  //获取当前的活动节点
            type: 'POST',
            data: json,
            cache: false,
            contentType: 'text/json',
            success: function (text) {
                //nowActivity = text.config.activityId;
                nowActivity = text.data.BPSWorkItemExpand[0].workItemName;
                if (nowActivity == '申请' ) {  //如果是申请节点
                    nui.get("btnBack").hide();
                    $("#spyjId").hide();
                    nui.get("jhry").on("validation", function (e) {
                        if (e.isValid) {
                            var sendee = e.value;
                            if (sendee == "" || sendee == null || sendee == undefined) {
                                e.errorText = "请选择校核人员";
                                e.isValid = false;
                            }
                        }
                    });

                    nui.get("btnSubmit").on("click", function (e) {
                        onOk();
                    });
                    if( editable && nui.get("creator").getValue() != '<%=username%>'){
                        nui.get("btnSubmit").hide();
                        nui.get("btnDelete").hide();
                        $('#personTable').hide();
                        doHideControl();
                    }
                } else if (nowActivity == '审批') { //如果是审核节点
                    //$('#personTable').hide();
                    $("#jhryTr").hide();
                    nui.get("btnDelete").hide();
                    nui.get("spyj").on("validation", function (e) {
                        if (e.isValid) {
                            var spyj = e.value;
                            if (spyj == "" || spyj == null || spyj == undefined) {
                                e.errorText = "请输入审批意见";
                                e.isValid = false;
                            }
                        }
                    });

                    nui.get("btnSubmit").on("click", function (e) {
                        onOk2();
                    });
                    doHideControl();
                }


            }
        });
    }

    function labelModel(column) {
        var c = nui.get(column);
        if (c.setReadOnly) c.setReadOnly(true);     //只读
        if (c.setIsValid) c.setIsValid(true);      //去除错误提示
        if (c.addCls) c.addCls("asLabel");          //增加asLabel外观

    }

    function onJhryValidation(e){
        if(isadmin != 'true'){ //如果不是管理员
            var sendee = e.value;
            if(sendee == "" || sendee == null || sendee == undefined ){
                e.errorText = "请选择校核人员";
                e.isValid = false;
            }
        }
    }

    //取消
    function onCancel() {
        if (self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();
        self.parent.location.reload();

        return;
    }
</script>
</body>
</html>
