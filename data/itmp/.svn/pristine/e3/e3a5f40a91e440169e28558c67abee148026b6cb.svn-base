<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dataTime = df.format(new Date());
    IUserObject cu = CommonUtil.getUserObject();
    String userid = cu.getUserId();
    String username = cu.getUserRealName();
    String type = request.getParameter("type");
%>
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-23 15:32:43
- Description:
    --%>
<head>
    <title>
        专用检查计划crg录入
    </title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
    </script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css"/>
</head>
<body>
<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
<input name="pageType" class="nui-hidden"/>
<div id="dataform1" style="padding-top:5px;">
    <!-- hidden域 -->
    <input class="nui-hidden" name="data.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
    <input class="nui-hidden" name="data.uuid"/>
    <input class="nui-hidden" name="data.entity" value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit"/>
    <input class="nui-hidden" name="data.entitytype" value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube"/>
    
    <input id='orderno' class="nui-hidden" name="data.orderno"/>
    <!-- hidden域 流程对应信息 -->
    <input class="nui-hidden" name="data.processDefName" value="com.cgn.itmp.outlineandplan.specialinspection.OverhaulCRGAdd"/>
    <input class="nui-hidden" name="data.processInstName" value="专用检查计划(核岛部件)_大修执行条目_新增热传管"/>
    <input class="nui-hidden" name="data.processInstDesc" value="专用检查计划(核岛部件)_大修执行条目_新增热传管"/>
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td class="form_label" align="center">
                基地:
            </td>
            <td colspan="1">
                <input class="nui-combobox" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"
                       textField="name" onvaluechanged="reloadJz" dataField="jsonObject" id="jd" name="data.base"
                       valueField="id"/>
            </td>

            <td class="form_label" align="center">
                机组:
            </td>
            <td colspan="1">
                <input class="nui-combobox" dataField="jsonObject" id="jz" textField="name"
                       url="" name="data.crew" valueField="id"/>
            </td>
            <td class="form_label" align="center">
                类型:
            </td>
            <td colspan="1">
                <input class="nui-dictcombobox" id="type" value="<%=type %>" dictTypeId="ZYJCJH" name="data.type"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                维护项目:
            </td>
            <td colspan="1">
                <input class="nui-textbox" required="true"  onvalidation="hasIllegalChar(e,500,true,true)" requiredErrorText="请输入维护项目" name="data.tasklist"/>
            </td>
			<td class="form_label" align="center">
                项目来源:
            </td>
            <td colspan="1">
                <input id="protype" class="nui-dictcombobox"  readonly="readonly" required="true" dictTypeId="protype" name="data.system"/>
            </td>
            <td class="form_label" align="center">
                检查项目名称:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="checkprojectname" readonly="readonly" required="true"
                       requiredErrorText="请输入检查项目名称" name="data.checkprojectname"/>
            </td>
            
        </tr>
        <tr>
            <td class="form_label" align="center">
                项号:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)"  name="data.itemnumber"/>
            </td>
            <td class="form_label" align="center">
                设备名称:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="data.sbname"/>
            </td>

            <td class="form_label" align="center">
                设备编号:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="data.sbnumber"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                列:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="data.columnsint"/>
            </td>

            <td class="form_label" align="center">
                行:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="data.row"/>
            </td>
            <td class="form_label" align="center">
                检查类型:
            </td>
            <td colspan="1">
                <input class="nui-dictcombobox"  dictTypeId="JCLX" name="data.checktype"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                检查方法:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,true,true)" required="true" requiredErrorText="请输入检查方法" name="data.jcmethod"/>
            </td>
            <td class="form_label" align="center">
                检查程序:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="data.jcprocedure"/>
            </td>

            <td class="form_label" align="center">
                检查周期:
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="data.jccycle"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                备注:
            </td>
            <td colspan="5">
                <input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,false,true)" style="width: 100%" name="data.remarks"/>
            </td>
        </tr>
    </table>
    <table id="circle" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td id="c1" class="form_label" align="center">
                C1:
            </td>
            <td id="c1i" colspan="1">
                <div name="data.c1" id="combobox1i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2" class="form_label" align="center">
                C2:
            </td>
            <td id="c2i" colspan="1">
                <div name="data.c2" id="combobox2i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c3" class="form_label" align="center">
                C3:
            </td>
            <td id="c3i" colspan="1">
                <div name="data.c3" id="combobox3i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c4" id="combobox4i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c5" class="form_label" align="center">
                C5:
            </td>
            <td id="c5i" colspan="1">
                <div name="data.c5" id="combobox5i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c6" class="form_label" align="center">
                C6:
            </td>
            <td id="c6i" colspan="1">
                <div name="data.c6" id="combobox6i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c7" id="combobox7i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c8" class="form_label" align="center">
                C8:
            </td>
            <td id="c8i" colspan="1">
                <div name="data.c8" id="combobox8i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c9" class="form_label" align="center">
                C9:
            </td>
            <td id="c9i" colspan="1">
                <div name="data.c9" id="combobox9i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c10" id="combobox10i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c11" class="form_label" align="center">
                C11:
            </td>
            <td id="c11i" colspan="1">
                <div name="data.c11" id="combobox11i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c12" class="form_label" align="center">
                C12:
            </td>
            <td id="c12i" colspan="1">
                <div name="data.c12" id="combobox12i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c13" id="combobox13i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c14" class="form_label" align="center">
                C14:
            </td>
            <td id="c14i" colspan="1">
                <div name="data.c14" id="combobox14i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c15" class="form_label" align="center">
                C15:
            </td>
            <td id="c15i" colspan="1">
                <div name="data.c15" id="combobox15i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c16" id="combobox16i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c17" class="form_label" align="center">
                C17:
            </td>
            <td id="c17i" colspan="1">
                <div name="data.c17" id="combobox17i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c18" class="form_label" align="center">
                C18:
            </td>
            <td id="c18i" colspan="1">
                <div name="data.c18" id="combobox18i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c19" id="combobox19i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c20" class="form_label" align="center">
                C20:
            </td>
            <td id="c20i" colspan="1">
                <div name="data.c20" id="combobox20i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c21" class="form_label" align="center">
                C21:
            </td>
            <td id="c21i" colspan="1">
                <div name="data.c21" id="combobox21i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

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
                <div name="data.c22" id="combobox22i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c23" class="form_label" align="center">
                C23:
            </td>
            <td id="c23i" colspan="1">
                <div name="data.c23" id="combobox23i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c24" class="form_label" align="center">
                C24:
            </td>
            <td id="c24i" colspan="1">
                <div name="data.c24" id="combobox24i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c25" id="combobox25i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c26" class="form_label" align="center">
                C26:
            </td>
            <td id="c26i" colspan="1">
                <div name="data.c26" id="combobox26i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c27" class="form_label" align="center">
                C27:
            </td>
            <td id="c27i" colspan="1">
                <div name="data.c27" id="combobox27i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c28" id="combobox28i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c29" class="form_label" align="center">
                C29:
            </td>
            <td id="c29i" colspan="1">
                <div name="data.c29" id="combobox29i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c30" class="form_label" align="center">
                C30:
            </td>
            <td id="c30i" colspan="1">
                <div name="data.c30" id="combobox30i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c31" id="combobox31i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c32" class="form_label" align="center">
                C32:
            </td>
            <td id="c32i" colspan="1">
                <div name="data.c32" id="combobox32i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c33" class="form_label" align="center">
                C33:
            </td>
            <td id="c33i" colspan="1">
                <div name="data.c33" id="combobox33i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c34" id="combobox34i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c35" class="form_label" align="center">
                C35:
            </td>
            <td id="c35i" colspan="1">
                <div name="data.c35" id="combobox35i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c36" class="form_label" align="center">
                C36:
            </td>
            <td id="c36i" colspan="1">
                <div name="data.c36" id="combobox36i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c37" id="combobox37i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c38" class="form_label" align="center">
                C38:
            </td>
            <td id="c38i" colspan="1">
                <div name="data.c38" id="combobox38i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c39" class="form_label" align="center">
                C39:
            </td>
            <td id="c39i" colspan="1">
                <div name="data.c39" id="combobox39i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c40" id="combobox40i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c41" class="form_label" align="center">
                C41:
            </td>
            <td id="c41i" colspan="1">
                <div name="data.c41" id="combobox41i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c42" class="form_label" align="center">
                C42:
            </td>
            <td id="c42i" colspan="1">
                <div name="data.c42" id="combobox42i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c43" id="combobox43i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c44" class="form_label" align="center">
                C44:
            </td>
            <td id="c44i" colspan="1">
                <div name="data.c44" id="combobox44i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c45" class="form_label" align="center">
                C45:
            </td>
            <td id="c45i" colspan="1">
                <div name="data.c45" id="combobox45i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c46" id="combobox46i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c47" class="form_label" align="center">
                C47:
            </td>
            <td id="c47i" colspan="1">
                <div name="data.c47" id="combobox47i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c48" class="form_label" align="center">
                C48:
            </td>
            <td id="c48i" colspan="1">
                <div name="data.c48" id="combobox48i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c49" id="combobox49i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c50" class="form_label" align="center">
                C50:
            </td>
            <td id="c50i" colspan="1">
                <div name="data.c50" id="combobox50i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c51" class="form_label" align="center">
                C51:
            </td>
            <td id="c51i" colspan="1">
                <div name="data.c51" id="combobox51i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c52" id="combobox52i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c53" class="form_label" align="center">
                C53:
            </td>
            <td id="c53i" colspan="1">
                <div name="data.c53" id="combobox53i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c54" class="form_label" align="center">
                C54:
            </td>
            <td id="c54i" colspan="1">
                <div name="data.c54" id="combobox54i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c55" id="combobox55i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c56" class="form_label" align="center">
                C56:
            </td>
            <td id="c56i" colspan="1">
                <div name="data.c56" id="combobox56i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c57" class="form_label" align="center">
                C57:
            </td>
            <td id="c57i" colspan="1">
                <div name="data.c57" id="combobox57i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <div name="data.c58" id="combobox58i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c59" class="form_label" align="center">
                C59:
            </td>
            <td id="c59i" colspan="1">
                <div name="data.c59" id="combobox59i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c60" class="form_label" align="center">
                C60:
            </td>
            <td id="c60i" colspan="1">
                <div name="data.c60" id="combobox60i" class="nui-combobox" style="width:100px;" popupWidth="150"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
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
                <input id="creator" class="nui-textbox" name="data.creator"/>
            </td>
            <td class="form_label" align="center">
                发起日期:
            </td>
            <td colspan="2">
                <input id="datetime" dateFormat="yyyy-MM-dd HH:mm:ss" style="width: 100%" class="nui-textbox"
                       name="data.datetime"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                新增原因:
            </td>
            <td colspan="5">
                <input class="nui-textarea" onvalidation="hasIllegalChar(e,1000,true,true)" required="true" requiredErrorText="请输入新增原因" style="width: 100%"
                       name="data.reason"/>
            </td>
        </tr>
    </table>
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table" id="personTable">
        <tr>
            <td class="form_label">
                校核人员:
            </td>
<!--             <td colspan="5"> -->
<!--                 <input class="nui-combobox" dataField="resultList.EmployeeSource" onvaluechanged="onchangePerson" -->
<!--                        id="jhry" name="data.jhry" textField="empname" style="width:100%" -->
<!--                        url="" required="true" -->
<!--                        requiredErrorText="请选择校核人员" valueField="empid"/> -->
<!--             </td> -->
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
        </tr>
        <tr>
            <td class="form_label">
                抄送人员:
            </td>
            <td colspan="5">
                <input property="editor" id="ccry" name="data.ccry" class="nui-textboxlist"
                       dataField="list" style="width:100%"
                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
                       valueField="empcode" textField="empcodename" searchField="keyword"
                />

            </td>
        </tr>
    </table>
    <div id="btn" class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
        <table width="100%">
            <tr>
                <td style="text-align:center;" colspan="4">
                    <a class="nui-button" id="btnSubmit" onclick="onOk('manualActivity')">提交</a>
                    <span style="display:inline-block;width:25px;"></span>
                    <a id='saveDraftBtn' class="nui-button" onclick="onOk('')">保存至草稿</a>
                    <span style="display:inline-block;width:25px;"></span>
                    <a class="nui-button" onclick="onCancel()">关闭</a>
                </td>
            </tr>
        </table>
    </div>
</div>
<script type="text/javascript">
    nui.parse();
    var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
    
    if (isadmin == 'true') { //如果是管理员
        $('#personTable').hide();
        nui.get('saveDraftBtn').hide();
    }
    //审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   
    var jzid = parent.nui.get("jzid").getValue();
    var jdid = parent.nui.get("jdid").getValue();
    nui.get("jd").setValue(jdid);
    nui.get('jz').setAjaxType("POST"); nui.get('jz').load("com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid);
    nui.get("jz").setValue(jzid);
    labelModel("jz");
    labelModel("jd");
    labelModel("type");
    labelModel("creator");
    labelModel("datetime");

    function reloadJz(e) {
        var jdid = jdCombox.getValue();
        jzCombox.setValue("");
        var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
        jzCombox.setUrl(url);
    }

    function labelModel(column) {
        var c = nui.get(column);
        if (c.setReadOnly) c.setReadOnly(true);     //只读
        if (c.setIsValid) c.setIsValid(true);      //去除错误提示
        if (c.addCls) c.addCls("asLabel");          //增加asLabel外观

    }

    $(function () {
        nui.get("creator").setValue('<%=username %>');
        nui.get("datetime").setValue('<%=dataTime %>');
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
    });

    function onJhryValidation(e) {
        if (isadmin != 'true') { //如果不是管理员
            var sendee = e.value;
            if (sendee == "" || sendee == null || sendee == undefined) {
                e.errorText = "请选择校核人员";
                e.isValid = false;
            }
        }
    }

    function saveData(nextStep) {

        var form = new nui.Form("#dataform1");
        form.setChanged(false);
        //保存
        var urlStr = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.addZYJC_CGD_Overhaul.biz.ext";
        var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
        //编辑
        if (pageType == "edit") {
            urlStr = "com.cgn.itmp.outlineandplan.specialinspection.tdggltzyjcjhhdcrgbiz.updateTDgglTzyjcjhhdcrg.biz.ext";
        }
        form.validate();
        if (form.isValid() == false) {
            nui.showTips({content: '表单校验不通过,请确认', state: 'warning', x: 'center', y: 'center'});
            return;
        }
        nui.get("#btnSubmit").setEnabled(false);
        nui.get("#saveDraftBtn").setEnabled(false);

        var data = form.getData(false, true);
        data.data['isadmin'] = isadmin;
        if(isadmin == 'true'){
            data.data['entity'] = 'com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube';
        }
        data.data['finishFirstActivityId'] = nextStep;
        var json = nui.encode(data);

        $.ajax({
            url: urlStr,
            type: 'POST',
            data: json,
            cache: false,
            contentType: 'text/json',
            success: function (text) {
                var returnJson = nui.decode(text);
                if (returnJson.exception == null) {
                     var message = "提交成功";
                	   if(nextStep == '' && isadmin != 'true'){
			            	message = "保存成功，请在我的草稿中尽快处理该流程，否则影响数据操作！";
			            }
						            
                    nui.alert(message, "提交提示", function(action){
                        if(action == "ok" || action == "close"){
                            CloseWindow("saveSuccess");
                        }
                    });
                } else {
                    nui.alert("保存失败", "系统提示", function (action) {
                        if (action == "ok" || action == "close") {
                            //CloseWindow("saveFailed");
                        }
                    });
                }
            },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(true);
									nui.get("#saveDraftBtn").setEnabled(true);
							});
						 }
        });
    }

    //页面间传输json数据
    function setFormData(data) {
        //跨页面传递的数据对象，克隆后才可以安全使用
        var infos = nui.clone(data);

        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
        nui.getbyName("pageType").setValue(infos.pageType);
        var json = infos.record;
        nui.get('checkprojectname').setValue(infos.checkprojectname);
		nui.get('protype').setValue(json.data.system);
		nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
        if (infos.pageType == "view") {
            var form = new nui.Form("#dataform1");//将普通form转为nui的form
            form.setData(json);
            form.setChanged(false);

            nui.get('datetime').setValue(nui.formatDate(json.data.datetime, "yyyy-MM-dd HH:mm:ss"));
            var fields = form.getFields();
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setEnabled(false);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
            $("#btnSubmit").hide();
            $("#saveDraftBtn").hide();
            $('#personTable').hide();
        } else {
            nui.get('orderno').setValue(json.data.orderno);
        }
    }

    //关闭窗口
    function CloseWindow(action) {
        if (action == "close" && form.isChanged()) {
            if (confirm("数据被修改了，是否先保存至草稿？")) {
                saveData('');
            }
        }
        if (window.CloseOwnerWindow)
            return window.CloseOwnerWindow(action);
        else window.close();
    }

    function onCloseClick(e) {
        var obj = e.sender;
        obj.setText("");
        obj.setValue("");
    }

    //确定保存或更新
    function onOk(nextStep) {
        saveData(nextStep);
    }

    //取消
    function onCancel() {
        CloseWindow("cancel");
    }
</script>
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
</body>
</html>
