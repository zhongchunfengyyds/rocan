<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    int processInstId=Integer.parseInt(request.getParameter("processInstId"));
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
        overflow: hidden;
    }
</style>
<body>
<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
<input name="pageType" class="nui-hidden"/>
<div id="dataform1" style="padding-top:5px;">
    <!-- hidden域 -->
    <input class="nui-hidden" name="delete_entity.uuid" value="<b:write property='entity/uuid'/>"/>
    <input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
    <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>" id="workItemId">
    <input class="nui-hidden" name="actInstId" value="<b:write property='actInstId'/>" id="actInstId"/>
    <input class="nui-hidden" name="jdid" value="<b:write property='entity/base'/>" id="jdid" />
    <input class="nui-hidden" name="jzid" value="<b:write property='entity/crew'/>" id="jzid"/>
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td class="form_label"   align="center">
                基地:
            </td>
            <td colspan="1">
                <input class="nui-combobox" readonly="readonly" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"
                       textField="name"  onvaluechanged="reloadJz"  value="<b:write property='entity/base'/>"   readonly="readonly" dataField="jsonObject" id="jd" name="delete_entity.base" valueField="id"/>
            </td>

            <td class="form_label"   align="center">
                机组:
            </td>
            <td colspan="1">
                <input class="nui-combobox" readonly="readonly" dataField="jsonObject" id="jz" textField="name"
                       url="" name="delete_entity.crew"  valueField="id" value="<b:write property='entity/crew'/>"/>
            </td>

            <td class="form_label" align="center">
                类型:
            </td>
            <td colspan="1">
                <input class="nui-dictcombobox" readonly="readonly" id="type" dictTypeId="ZYJCJH" value="FM" value="<b:write property='entity/type'/>" name="delete_entity.type"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                维护项目:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/tasklist'/>" name="delete_entity.tasklist"/>
            </td>
            <td class="form_label"   align="center">
                项目来源:
            </td>
            <td colspan="1">
                <input class="nui-dictcombobox"  readonly="readonly" required="true" dictTypeId="protype" value="<b:write property='entity/system'/>" name="delete_entity.system"/>
            </td>
            <td class="form_label" align="center">
                检查项目名称:
            </td>
            <td colspan="1">
                <input class="nui-textbox" readonly="readonly" required="true"value="<b:write property='entity/checkprojectname'/>" requiredErrorText="请输入检查项目名称" name="delete_entity.checkprojectname"/>
            </td>

        </tr>
        <tr>
            <td class="form_label" align="center">
                项号:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/itemnumber'/>" name="delete_entity.itemnumber"/>
            </td>

            <td class="form_label"   align="center">
                设备/部件:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/equipment'/>" name="delete_entity.equipment"/>
            </td>

            <td class="form_label"   align="center">
                功能位置:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/gnwz'/>" name="delete_entity.gnwz"/>
            </td>
        </tr>
        <tr>
            <td class="form_label"   align="center">
                检查部位:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/jcbw'/>" name="delete_entity.jcbw"/>
            </td>


            <td class="form_label"   align="center">
                管线号:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/gxnumber'/>" name="delete_entity.gxnumber"/>
            </td>
            <td class="form_label"   align="center">
                房间号:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/roomnumber'/>" name="delete_entity.roomnumber"/>
            </td>
        </tr>
        <tr>
            <td class="form_label"   align="center">
                接近方式:
            </td>
            <td colspan="5">
                <input class="nui-textarea"value="<b:write property='entity/jjmode'/>" style="width: 100%" name="delete_entity.jjmode"/>
            </td>
        </tr>
        <tr>

            <td class="form_label"   align="center">
                等轴图号:
            </td>
            <td colspan="5">
                <input class="nui-textarea" style="width: 100%"value="<b:write property='entity/ckt_dzhnumber'/>" name="delete_entity.ckt_dzhnumber"/>
            </td>
        </tr>
        <tr>


            <td class="form_label"   align="center">
                检查方法:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/jcmethod'/>" name="delete_entity.jcmethod"/>
            </td>
            <td class="form_label"   align="center">
                检查程序:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/jcprocedure'/>" name="delete_entity.jcprocedure"/>
            </td>

            <td class="form_label"   align="center">
                规范周期:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/gfcycle'/>" name="delete_entity.gfcycle"/>
            </td>
        </tr>
        <tr>
            <td class="form_label"   align="center">
                PM周期:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/pmcycle'/>" name="delete_entity.pmcycle"/>
            </td>

            <td class="form_label"   align="center">
                PM编码:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/pmcode'/>" name="delete_entity.pmcode"/>
            </td>

            <td class="form_label"   align="center">
                执行单位:
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<b:write property='entity/zxunit'/>" name="delete_entity.zxunit"/>
            </td>
        </tr>
        <tr>
            <td class="form_label"   align="center">
                备注:
            </td>
            <td colspan="5">
                <input class="nui-textarea" value="<b:write property='entity/remarks'/>" style="width: 100%" name="delete_entity.remarks"/>
            </td>
        </tr>
    </table>
    <table id="circle" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">

        <tr>
            <td id="n1991" class="form_label" align="center">
                1991:
            </td>
            <td id="n1991ii" colspan="1">
                <div name="delete_entity.c1991" id="combobox1991i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c1991'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n1992" class="form_label" align="center">
                1992:
            </td>
            <td id="n1992ii" colspan="1">
                <div name="delete_entity.c1992" id="combobox1992i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c1992'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n1993" class="form_label" align="center">
                1993:
            </td>
            <td id="n1993ii" colspan="1">
                <div name="delete_entity.c1993" id="combobox1993i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c1993'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n1994" class="form_label" align="center">
                1994:
            </td>
            <td id="n1994ii" colspan="1">
                <div name="delete_entity.c1994" id="combobox1994i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c1994'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n1995" class="form_label" align="center">
                1995:
            </td>
            <td id="n1995ii" colspan="1">
                <div name="delete_entity.c1995" id="combobox1995i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c1995'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n1996" class="form_label" align="center">
                1996:
            </td>
            <td id="n1996ii" colspan="1">
                <div name="delete_entity.c1996" id="combobox1996i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c1996'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n1997" class="form_label" align="center">
                1997:
            </td>
            <td id="n1997ii" colspan="1">
                <div name="delete_entity.c1997" id="combobox1997i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c1997'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n1998" class="form_label" align="center">
                1998:
            </td>
            <td id="n1998ii" colspan="1">
                <div name="delete_entity.c1998" id="combobox1998i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c1998'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n1999" class="form_label" align="center">
                1999:
            </td>
            <td id="n1999ii" colspan="1">
                <div name="delete_entity.c1999" id="combobox1999i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c1999'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2000" class="form_label" align="center">
                2000:
            </td>
            <td id="n2000ii" colspan="1">
                <div name="delete_entity.c2000" id="combobox2000i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2000'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2001" class="form_label" align="center">
                2001:
            </td>
            <td id="n2001ii" colspan="1">
                <div name="delete_entity.c2001" id="combobox2001i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2001'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2002" class="form_label" align="center">
                2002:
            </td>
            <td id="n2002ii" colspan="1">
                <div name="delete_entity.c2002" id="combobox2002i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2002'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2003" class="form_label" align="center">
                2003:
            </td>
            <td id="n2003ii" colspan="1">
                <div name="delete_entity.c2003" id="combobox2003i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2003'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2004" class="form_label" align="center">
                2004:
            </td>
            <td id="n2004ii" colspan="1">
                <div name="delete_entity.c2004" id="combobox2004i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2004'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2005" class="form_label" align="center">
                2005:
            </td>
            <td id="n2005ii" colspan="1">
                <div name="delete_entity.c2005" id="combobox2005i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2005'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2006" class="form_label" align="center">
                2006:
            </td>
            <td id="n2006ii" colspan="1">
                <div name="delete_entity.c2006" id="combobox2006i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2006'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2007" class="form_label" align="center">
                2007:
            </td>
            <td id="n2007ii" colspan="1">
                <div name="delete_entity.c2007" id="combobox2007i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2007'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2008" class="form_label" align="center">
                2008:
            </td>
            <td id="n2008ii" colspan="1">
                <div name="delete_entity.c2008" id="combobox2008i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2008'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2009" class="form_label" align="center">
                2009:
            </td>
            <td id="n2009ii" colspan="1">
                <div name="delete_entity.c2009" id="combobox2009i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2009'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2010" class="form_label" align="center">
                2010:
            </td>
            <td id="n2010ii" colspan="1">
                <div name="delete_entity.c2010" id="combobox2010i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2010'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2011" class="form_label" align="center">
                2011:
            </td>
            <td id="n2011ii" colspan="1">
                <div name="delete_entity.c2011" id="combobox2011i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2011'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2012" class="form_label" align="center">
                2012:
            </td>
            <td id="n2012ii" colspan="1">
                <div name="delete_entity.c2012" id="combobox2012i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2012'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2013" class="form_label" align="center">
                2013:
            </td>
            <td id="n2013ii" colspan="1">
                <div name="delete_entity.c2013" id="combobox2013i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2013'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2014" class="form_label" align="center">
                2014:
            </td>
            <td id="n2014ii" colspan="1">
                <div name="delete_entity.c2014" id="combobox2014i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2014'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2015" class="form_label" align="center">
                2015:
            </td>
            <td id="n2015ii" colspan="1">
                <div name="delete_entity.c2015" id="combobox2015i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2015'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2016" class="form_label" align="center">
                2016:
            </td>
            <td id="n2016ii" colspan="1">
                <div name="delete_entity.c2016" id="combobox2016i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2016'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2017" class="form_label" align="center">
                2017:
            </td>
            <td id="n2017ii" colspan="1">
                <div name="delete_entity.c2017" id="combobox2017i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2017'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2018" class="form_label" align="center">
                2018:
            </td>
            <td id="n2018ii" colspan="1">
                <div name="delete_entity.c2018" id="combobox2018i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2018'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2019" class="form_label" align="center">
                2019:
            </td>
            <td id="n2019ii" colspan="1">
                <div name="delete_entity.c2019" id="combobox2019i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2019'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2020" class="form_label" align="center">
                2020:
            </td>
            <td id="n2020ii" colspan="1">
                <div name="delete_entity.c2020" id="combobox2020i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2020'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2021" class="form_label" align="center">
                2021:
            </td>
            <td id="n2021ii" colspan="1">
                <div name="delete_entity.c2021" id="combobox2021i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2021'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2022" class="form_label" align="center">
                2022:
            </td>
            <td id="n2022ii" colspan="1">
                <div name="delete_entity.c2022" id="combobox2022i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2022'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2023" class="form_label" align="center">
                2023:
            </td>
            <td id="n2023ii" colspan="1">
                <div name="delete_entity.c2023" id="combobox2023i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2023'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2024" class="form_label" align="center">
                2024:
            </td>
            <td id="n2024ii" colspan="1">
                <div name="delete_entity.c2024" id="combobox2024i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2024'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2025" class="form_label" align="center">
                2025:
            </td>
            <td id="n2025ii" colspan="1">
                <div name="delete_entity.c2025" id="combobox2025i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2025'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2026" class="form_label" align="center">
                2026:
            </td>
            <td id="n2026ii" colspan="1">
                <div name="delete_entity.c2026" id="combobox2026i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2026'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2027" class="form_label" align="center">
                2027:
            </td>
            <td id="n2027ii" colspan="1">
                <div name="delete_entity.c2027" id="combobox2027i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2027'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2028" class="form_label" align="center">
                2028:
            </td>
            <td id="n2028ii" colspan="1">
                <div name="delete_entity.c2028" id="combobox2028i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2028'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2029" class="form_label" align="center">
                2029:
            </td>
            <td id="n2029ii" colspan="1">
                <div name="delete_entity.c2029" id="combobox2029i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2029'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2030" class="form_label" align="center">
                2030:
            </td>
            <td id="n2030ii" colspan="1">
                <div name="delete_entity.c2030" id="combobox2030i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2030'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2031" class="form_label" align="center">
                2031:
            </td>
            <td id="n2031ii" colspan="1">
                <div name="delete_entity.c2031" id="combobox2031i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2031'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2032" class="form_label" align="center">
                2032:
            </td>
            <td id="n2032ii" colspan="1">
                <div name="delete_entity.c2032" id="combobox2032i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2032'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2033" class="form_label" align="center">
                2033:
            </td>
            <td id="n2033ii" colspan="1">
                <div name="delete_entity.c2033" id="combobox2033i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2033'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2034" class="form_label" align="center">
                2034:
            </td>
            <td id="n2034ii" colspan="1">
                <div name="delete_entity.c2034" id="combobox2034i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2034'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2035" class="form_label" align="center">
                2035:
            </td>
            <td id="n2035ii" colspan="1">
                <div name="delete_entity.c2035" id="combobox2035i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2035'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2036" class="form_label" align="center">
                2036:
            </td>
            <td id="n2036ii" colspan="1">
                <div name="delete_entity.c2036" id="combobox2036i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2036'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2037" class="form_label" align="center">
                2037:
            </td>
            <td id="n2037ii" colspan="1">
                <div name="delete_entity.c2037" id="combobox2037i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2037'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2038" class="form_label" align="center">
                2038:
            </td>
            <td id="n2038ii" colspan="1">
                <div name="delete_entity.c2038" id="combobox2038i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2038'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2039" class="form_label" align="center">
                2039:
            </td>
            <td id="n2039ii" colspan="1">
                <div name="delete_entity.c2039" id="combobox2039i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2039'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2040" class="form_label" align="center">
                2040:
            </td>
            <td id="n2040ii" colspan="1">
                <div name="delete_entity.c2040" id="combobox2040i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2040'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2041" class="form_label" align="center">
                2041:
            </td>
            <td id="n2041ii" colspan="1">
                <div name="delete_entity.c2041" id="combobox2041i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2041'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2042" class="form_label" align="center">
                2042:
            </td>
            <td id="n2042ii" colspan="1">
                <div name="delete_entity.c2042" id="combobox2042i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2042'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2043" class="form_label" align="center">
                2043:
            </td>
            <td id="n2043ii" colspan="1">
                <div name="delete_entity.c2043" id="combobox2043i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2043'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2044" class="form_label" align="center">
                2044:
            </td>
            <td id="n2044ii" colspan="1">
                <div name="delete_entity.c2044" id="combobox2044i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2044'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2045" class="form_label" align="center">
                2045:
            </td>
            <td id="n2045ii" colspan="1">
                <div name="delete_entity.c2045" id="combobox2045i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2045'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2046" class="form_label" align="center">
                2046:
            </td>
            <td id="n2046ii" colspan="1">
                <div name="delete_entity.c2046" id="combobox2046i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2046'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2047" class="form_label" align="center">
                2047:
            </td>
            <td id="n2047ii" colspan="1">
                <div name="delete_entity.c2047" id="combobox2047i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2047'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2048" class="form_label" align="center">
                2048:
            </td>
            <td id="n2048ii" colspan="1">
                <div name="delete_entity.c2048" id="combobox2048i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2048'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2049" class="form_label" align="center">
                2049:
            </td>
            <td id="n2049ii" colspan="1">
                <div name="delete_entity.c2049" id="combobox2049i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2049'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2050" class="form_label" align="center">
                2050:
            </td>
            <td id="n2050ii" colspan="1">
                <div name="delete_entity.c2050" id="combobox2050i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2050'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2051" class="form_label" align="center">
                2051:
            </td>
            <td id="n2051ii" colspan="1">
                <div name="delete_entity.c2051" id="combobox2051i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2051'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2052" class="form_label" align="center">
                2052:
            </td>
            <td id="n2052ii" colspan="1">
                <div name="delete_entity.c2052" id="combobox2052i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2052'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2053" class="form_label" align="center">
                2053:
            </td>
            <td id="n2053ii" colspan="1">
                <div name="delete_entity.c2053" id="combobox2053i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2053'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2054" class="form_label" align="center">
                2054:
            </td>
            <td id="n2054ii" colspan="1">
                <div name="delete_entity.c2054" id="combobox2054i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2054'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2055" class="form_label" align="center">
                2055:
            </td>
            <td id="n2055ii" colspan="1">
                <div name="delete_entity.c2055" id="combobox2055i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2055'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2056" class="form_label" align="center">
                2056:
            </td>
            <td id="n2056ii" colspan="1">
                <div name="delete_entity.c2056" id="combobox2056i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2056'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2057" class="form_label" align="center">
                2057:
            </td>
            <td id="n2057ii" colspan="1">
                <div name="delete_entity.c2057" id="combobox2057i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2057'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2058" class="form_label" align="center">
                2058:
            </td>
            <td id="n2058ii" colspan="1">
                <div name="delete_entity.c2058" id="combobox2058i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2058'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2059" class="form_label" align="center">
                2059:
            </td>
            <td id="n2059ii" colspan="1">
                <div name="delete_entity.c2059" id="combobox2059i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2059'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2060" class="form_label" align="center">
                2060:
            </td>
            <td id="n2060ii" colspan="1">
                <div name="delete_entity.c2060" id="combobox2060i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2060'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2061" class="form_label" align="center">
                2061:
            </td>
            <td id="n2061ii" colspan="1">
                <div name="delete_entity.c2061" id="combobox2061i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2061'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2062" class="form_label" align="center">
                2062:
            </td>
            <td id="n2062ii" colspan="1">
                <div name="delete_entity.c2062" id="combobox2062i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2062'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2063" class="form_label" align="center">
                2063:
            </td>
            <td id="n2063ii" colspan="1">
                <div name="delete_entity.c2063" id="combobox2063i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2063'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2064" class="form_label" align="center">
                2064:
            </td>
            <td id="n2064ii" colspan="1">
                <div name="delete_entity.c2064" id="combobox2064i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2064'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2065" class="form_label" align="center">
                2065:
            </td>
            <td id="n2065ii" colspan="1">
                <div name="delete_entity.c2065" id="combobox2065i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2065'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2066" class="form_label" align="center">
                2066:
            </td>
            <td id="n2066ii" colspan="1">
                <div name="delete_entity.c2066" id="combobox2066i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2066'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2067" class="form_label" align="center">
                2067:
            </td>
            <td id="n2067ii" colspan="1">
                <div name="delete_entity.c2067" id="combobox2067i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2067'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2068" class="form_label" align="center">
                2068:
            </td>
            <td id="n2068ii" colspan="1">
                <div name="delete_entity.c2068" id="combobox2068i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2068'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2069" class="form_label" align="center">
                2069:
            </td>
            <td id="n2069ii" colspan="1">
                <div name="delete_entity.c2069" id="combobox2069i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2069'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2070" class="form_label" align="center">
                2070:
            </td>
            <td id="n2070ii" colspan="1">
                <div name="delete_entity.c2070" id="combobox2070i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2070'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2071" class="form_label" align="center">
                2071:
            </td>
            <td id="n2071ii" colspan="1">
                <div name="delete_entity.c2071" id="combobox2071i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2071'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2072" class="form_label" align="center">
                2072:
            </td>
            <td id="n2072ii" colspan="1">
                <div name="delete_entity.c2072" id="combobox2072i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2072'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2073" class="form_label" align="center">
                2073:
            </td>
            <td id="n2073ii" colspan="1">
                <div name="delete_entity.c2073" id="combobox2073i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2073'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2074" class="form_label" align="center">
                2074:
            </td>
            <td id="n2074ii" colspan="1">
                <div name="delete_entity.c2074" id="combobox2074i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2074'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2075" class="form_label" align="center">
                2075:
            </td>
            <td id="n2075ii" colspan="1">
                <div name="delete_entity.c2075" id="combobox2075i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2075'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2076" class="form_label" align="center">
                2076:
            </td>
            <td id="n2076ii" colspan="1">
                <div name="delete_entity.c2076" id="combobox2076i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2076'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2077" class="form_label" align="center">
                2077:
            </td>
            <td id="n2077ii" colspan="1">
                <div name="delete_entity.c2077" id="combobox2077i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2077'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2078" class="form_label" align="center">
                2078:
            </td>
            <td id="n2078ii" colspan="1">
                <div name="delete_entity.c2078" id="combobox2078i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2078'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2079" class="form_label" align="center">
                2079:
            </td>
            <td id="n2079ii" colspan="1">
                <div name="delete_entity.c2079" id="combobox2079i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2079'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2080" class="form_label" align="center">
                2080:
            </td>
            <td id="n2080ii" colspan="1">
                <div name="delete_entity.c2080" id="combobox2080i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2080'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2081" class="form_label" align="center">
                2081:
            </td>
            <td id="n2081ii" colspan="1">
                <div name="delete_entity.c2081" id="combobox2081i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2081'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2082" class="form_label" align="center">
                2082:
            </td>
            <td id="n2082ii" colspan="1">
                <div name="delete_entity.c2082" id="combobox2082i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2082'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2083" class="form_label" align="center">
                2083:
            </td>
            <td id="n2083ii" colspan="1">
                <div name="delete_entity.c2083" id="combobox2083i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2083'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2084" class="form_label" align="center">
                2084:
            </td>
            <td id="n2084ii" colspan="1">
                <div name="delete_entity.c2084" id="combobox2084i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2084'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2085" class="form_label" align="center">
                2085:
            </td>
            <td id="n2085ii" colspan="1">
                <div name="delete_entity.c2085" id="combobox2085i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2085'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2086" class="form_label" align="center">
                2086:
            </td>
            <td id="n2086ii" colspan="1">
                <div name="delete_entity.c2086" id="combobox2086i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2086'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td id="n2087" class="form_label" align="center">
                2087:
            </td>
            <td id="n2087ii" colspan="1">
                <div name="delete_entity.c2087" id="combobox2087i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2087'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2088" class="form_label" align="center">
                2088:
            </td>
            <td id="n2088ii" colspan="1">
                <div name="delete_entity.c2088" id="combobox2088i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2088'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="n2089" class="form_label" align="center">
                2089:
            </td>
            <td id="n2089ii" colspan="1">
                <div name="delete_entity.c2089" id="combobox2089i" class="nui-combobox" style="width:125px;"  popupWidth="200" textField="name" valueField="id"
                     url=""  multiSelect="true"  value="<b:write property='entity/c2089'/>"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >
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
                <input id="creator" class="nui-textbox"  value="<b:write property='entity/creator'/>" name="delete_entity.creator"/>
            </td>
            <td class="form_label" align="center">
                发起日期:
            </td>
            <td colspan="2">
                <input id="datetime" dateFormat="yyyy-MM-dd HH:mm:ss" value="<b:write property='entity/datetime'/>" style="width: 100%" class="nui-textbox"
                       name="delete_entity.datetime"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                新增原因:
            </td>
            <td colspan="5">
                <input class="nui-textarea" required="true" value="<b:write property='entity/reason'/>" requiredErrorText="请输入新增原因" style="width: 100%"
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
                <span style="display:inline-block;width:25px;"></span>
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
        hideNF();
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

    function hideNF() {
        var jdid = nui.get("jd").getValue();
        var jzid = nui.get("jz").getValue();
        var parms = "{baseid:" + jdid + ",crewid:" + jzid + ",type:n}";
        var urlStr = "com.cgn.itmp.basecommon.Common.getBaseCircle.biz.ext";
        $.ajax({
            url: urlStr,
            type: 'POST',
            data: parms,
            cache: false,
            contentType: 'text/json',
            success: function (data) {
                var returnJson = nui.decode(data);
                if (returnJson.data.sucess) {
                    var start = returnJson.data.start;
                    var end = returnJson.data.end;
                    for (var i = 1991; i < parseInt(start); i++) {
                        $('#n' + i).hide();
                        $('#n' + i + "ii").hide();
                    }
                    for (var i = parseInt(end) + 11; i <= 2089; i++) {
                        $('#n' + i).hide();
                        $('#n' + i + "ii").hide();
                    }
	if (jdid == "86") {
                        for (var i = parseInt(start); i <= parseInt(end) + 10; i++) {
                            nui.get('combobox'+i+'i').setAjaxType("POST"); nui.get('combobox'+i+'i').load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=taishanbase");
                        }
                    } else {
                        for (var i = parseInt(start); i <= parseInt(end) + 10; i++) {
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
        data.entityType = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit";
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

        var json = "{sourceEntity:'com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit'," +
            "targetEntity:'com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Valve'," +
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
                    json.entityType = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit";
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
        if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();
        self.parent.location.reload();

        return;
    }
</script>
</body>
</html>
