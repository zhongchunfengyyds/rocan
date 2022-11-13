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

%>
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-23 15:35:22
- Description:
    --%>
<head>
    <title>
        专用检查计划rq录入
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
    <input class="nui-hidden" name="preData.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
    <input class="nui-hidden" name="preData.uuid"/>
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td class="form_label" align="center">
                字段
            </td>
            <td class="form_label" align="center">
                原值
            </td>
            <td class="form_label" align="center">
                修改为
            </td>
            <td class="form_label" align="center">
                字段
            </td>
            <td class="form_label" align="center">
                原值
            </td>
            <td class="form_label" align="center">
                修改为
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                基地:
            </td>
            <td colspan="1">
                <input class="nui-combobox" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"
                       textField="name" onvaluechanged="reloadJz" readonly="readonly" dataField="jsonObject" id="jd"
                       name="preData.base" valueField="id"/>
            </td>
            <td>
            </td>
            <td class="form_label" align="center">
                机组:
            </td>
            <td colspan="1">
                <input class="nui-combobox" dataField="jsonObject" id="jzid" textField="name"
                       url="" name="preData.crew" valueField="id"/>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                类型:
            </td>
            <td colspan="1">
                <input class="nui-dictcombobox" id="type" dictTypeId="ZYJCJH" name="preData.type"/>
            </td>
            <td>
            </td>

            <td class="form_label" align="center">
                维护项目:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="tasklist" readonly="readonly" name="preData.tasklist"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="nextData.tasklist"/>
            </td>
        </tr>
        <tr>
        	<td class="form_label" align="center">
                项目来源:
            </td>
            <td colspan="1">
                <input id="protype" class="nui-dictcombobox"  readonly="readonly" required="true" dictTypeId="protype" name="preData.zytool"/>
            </td>
            <td colspan="1">
            </td>
            <td class="form_label" align="center">
                检查部位名称:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="checkprojectname" readonly="readonly"
                       name="preData.checkprojectname"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox"   onvalidation="hasIllegalChar(e,1000,false,true)" name="nextData.checkprojectname"/>
            </td>
        </tr>
        <tr>
        	<td class="form_label" align="center">
                项号:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="itemnumber" readonly="readonly" name="preData.itemnumber"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,1000,false,true)" name="nextData.itemnumber"/>
            </td>
            <td class="form_label" align="center">
                功能位置:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="gnwz" readonly="readonly" name="preData.gnwz"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox"onvalidation="hasIllegalChar(e,1000,false,true)"  name="nextData.gnwz"/>
            </td>
            
        </tr>
        <tr>
        	<td class="form_label" align="center">
                设备名称:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="sbname" readonly="readonly" name="preData.sbname"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="nextData.sbname"/>
            </td>
            <td class="form_label" align="center">
                管壳侧:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="gkc" readonly="readonly" name="preData.gkc"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="nextData.gkc"/>
            </td>

            
        </tr>
        <tr>
        	<td class="form_label" align="center">
                设备图号:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="sbnumber" readonly="readonly" name="preData.sbnumber"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,1000,false,true)" name="nextData.sbnumber"/>
            </td>
            <td class="form_label" align="center">
                检查方法:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="jcmethod" readonly="readonly" name="preData.jcmethod"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox"  onvalidation="hasIllegalChar(e,1000,false,true)" name="nextData.jcmethod"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                检查程序:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="jcprocedure" readonly="readonly" name="preData.jcprocedure"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" onvalidation="hasIllegalChar(e,1000,false,true)" name="nextData.jcprocedure"/>
            </td>
            <td class="form_label" align="center">
                被检部位:
            </td>
            <td colspan="1">
                <input class="nui-textarea" id="jcbw" readonly="readonly" style="width: 100%"
                       name="preData.jcbw"/>
            </td>
            <td colspan="1">
                <input class="nui-textarea" onvalidation="hasIllegalChar(e,1000,false,true)" style="width: 100%" name="nextData.jcbw"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                接近方式:
            </td>
            <td colspan="1">
                <input class="nui-textarea" id="jjmode" readonly="readonly" style="width: 100%"
                       name="preData.jjmode"/>
            </td>
            <td colspan="1">
                <input class="nui-textarea"  onvalidation="hasIllegalChar(e,500,false,true)" style="width: 100%" name="nextData.jjmode"/>
            </td>

            <td class="form_label" align="center">
                备注:
            </td>
            <td colspan="1">
                <input class="nui-textarea" id="remarks" readonly="readonly" style="width: 100%"
                       name="preData.remarks"/>
            </td>
            <td colspan="1">
                <input class="nui-textarea"  onvalidation="hasIllegalChar(e,500,false,true)" style="width: 100%" name="nextData.remarks"/>
            </td>
        </tr>
    </table>
    <table id="nd" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td id="c1991" class="form_label" align="center">
                1991:
            </td>
            <td id="c1991i" colspan="1">
                <input id="c1991" class="nui-textbox" name="preData.c1991"/>
            </td>
            <td id="c1991ii" colspan="1">
                <div name="nextData.c1991" id="combobox1991i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c1992" class="form_label" align="center">
                1992:
            </td>
            <td id="c1992i" colspan="1">
                <input id="c1992" class="nui-textbox" name="preData.c1992"/>
            </td>
            <td id="c1992ii" colspan="1">
                <div name="nextData.c1992" id="combobox1992i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c1993" class="form_label" align="center">
                1993:
            </td>
            <td id="c1993i" colspan="1">
                <input id="c1993" class="nui-textbox" name="preData.c1993"/>
            </td>
            <td id="c1993ii" colspan="1">
                <div name="nextData.c1993" id="combobox1993i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c1994" class="form_label" align="center">
                1994:
            </td>
            <td id="c1994i" colspan="1">
                <input id="c1994" class="nui-textbox" name="preData.c1994"/>
            </td>
            <td id="c1994ii" colspan="1">
                <div name="nextData.c1994" id="combobox1994i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c1995" class="form_label" align="center">
                1995:
            </td>
            <td id="c1995i" colspan="1">
                <input id="c1995" class="nui-textbox" name="preData.c1995"/>
            </td>
            <td id="c1995ii" colspan="1">
                <div name="nextData.c1995" id="combobox1995i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c1996" class="form_label" align="center">
                1996:
            </td>
            <td id="c1996i" colspan="1">
                <input id="c1996" class="nui-textbox" name="preData.c1996"/>
            </td>
            <td id="c1996ii" colspan="1">
                <div name="nextData.c1996" id="combobox1996i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c1997" class="form_label" align="center">
                1997:
            </td>
            <td id="c1997i" colspan="1">
                <input id="c1997" class="nui-textbox" name="preData.c1997"/>
            </td>
            <td id="c1997ii" colspan="1">
                <div name="nextData.c1997" id="combobox1997i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c1998" class="form_label" align="center">
                1998:
            </td>
            <td id="c1998i" colspan="1">
                <input id="c1998" class="nui-textbox" name="preData.c1998"/>
            </td>
            <td id="c1998ii" colspan="1">
                <div name="nextData.c1998" id="combobox1998i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c1999" class="form_label" align="center">
                1999:
            </td>
            <td id="c1999i" colspan="1">
                <input id="c1999" class="nui-textbox" name="preData.c1999"/>
            </td>
            <td id="c1999ii" colspan="1">
                <div name="nextData.c1999" id="combobox1999i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2000" class="form_label" align="center">
                2000:
            </td>
            <td id="c2000i" colspan="1">
                <input id="c2000" class="nui-textbox" name="preData.c2000"/>
            </td>
            <td id="c2000ii" colspan="1">
                <div name="nextData.c2000" id="combobox2000i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2001" class="form_label" align="center">
                2001:
            </td>
            <td id="c2001i" colspan="1">
                <input id="c2001" class="nui-textbox" name="preData.c2001"/>
            </td>
            <td id="c2001ii" colspan="1">
                <div name="nextData.c2001" id="combobox2001i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2002" class="form_label" align="center">
                2002:
            </td>
            <td id="c2002i" colspan="1">
                <input id="c2002" class="nui-textbox" name="preData.c2002"/>
            </td>
            <td id="c2002ii" colspan="1">
                <div name="nextData.c2002" id="combobox2002i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2003" class="form_label" align="center">
                2003:
            </td>
            <td id="c2003i" colspan="1">
                <input id="c2003" class="nui-textbox" name="preData.c2003"/>
            </td>
            <td id="c2003ii" colspan="1">
                <div name="nextData.c2003" id="combobox2003i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2004" class="form_label" align="center">
                2004:
            </td>
            <td id="c2004i" colspan="1">
                <input id="c2004" class="nui-textbox" name="preData.c2004"/>
            </td>
            <td id="c2004ii" colspan="1">
                <div name="nextData.c2004" id="combobox2004i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2005" class="form_label" align="center">
                2005:
            </td>
            <td id="c2005i" colspan="1">
                <input id="c2005" class="nui-textbox" name="preData.c2005"/>
            </td>
            <td id="c2005ii" colspan="1">
                <div name="nextData.c2005" id="combobox2005i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2006" class="form_label" align="center">
                2006:
            </td>
            <td id="c2006i" colspan="1">
                <input id="c2006" class="nui-textbox" name="preData.c2006"/>
            </td>
            <td id="c2006ii" colspan="1">
                <div name="nextData.c2006" id="combobox2006i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2007" class="form_label" align="center">
                2007:
            </td>
            <td id="c2007i" colspan="1">
                <input id="c2007" class="nui-textbox" name="preData.c2007"/>
            </td>
            <td id="c2007ii" colspan="1">
                <div name="nextData.c2007" id="combobox2007i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2008" class="form_label" align="center">
                2008:
            </td>
            <td id="c2008i" colspan="1">
                <input id="c2008" class="nui-textbox" name="preData.c2008"/>
            </td>
            <td id="c2008ii" colspan="1">
                <div name="nextData.c2008" id="combobox2008i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2009" class="form_label" align="center">
                2009:
            </td>
            <td id="c2009i" colspan="1">
                <input id="c2009" class="nui-textbox" name="preData.c2009"/>
            </td>
            <td id="c2009ii" colspan="1">
                <div name="nextData.c2009" id="combobox2009i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2010" class="form_label" align="center">
                2010:
            </td>
            <td id="c2010i" colspan="1">
                <input id="c2010" class="nui-textbox" name="preData.c2010"/>
            </td>
            <td id="c2010ii" colspan="1">
                <div name="nextData.c2010" id="combobox2010i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2011" class="form_label" align="center">
                2011:
            </td>
            <td id="c2011i" colspan="1">
                <input id="c2011" class="nui-textbox" name="preData.c2011"/>
            </td>
            <td id="c2011ii" colspan="1">
                <div name="nextData.c2011" id="combobox2011i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2012" class="form_label" align="center">
                2012:
            </td>
            <td id="c2012i" colspan="1">
                <input id="c2012" class="nui-textbox" name="preData.c2012"/>
            </td>
            <td id="c2012ii" colspan="1">
                <div name="nextData.c2012" id="combobox2012i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2013" class="form_label" align="center">
                2013:
            </td>
            <td id="c2013i" colspan="1">
                <input id="c2013" class="nui-textbox" name="preData.c2013"/>
            </td>
            <td id="c2013ii" colspan="1">
                <div name="nextData.c2013" id="combobox2013i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2014" class="form_label" align="center">
                2014:
            </td>
            <td id="c2014i" colspan="1">
                <input id="c2014" class="nui-textbox" name="preData.c2014"/>
            </td>
            <td id="c2014ii" colspan="1">
                <div name="nextData.c2014" id="combobox2014i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2015" class="form_label" align="center">
                2015:
            </td>
            <td id="c2015i" colspan="1">
                <input id="c2015" class="nui-textbox" name="preData.c2015"/>
            </td>
            <td id="c2015ii" colspan="1">
                <div name="nextData.c2015" id="combobox2015i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2016" class="form_label" align="center">
                2016:
            </td>
            <td id="c2016i" colspan="1">
                <input id="c2016" class="nui-textbox" name="preData.c2016"/>
            </td>
            <td id="c2016ii" colspan="1">
                <div name="nextData.c2016" id="combobox2016i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2017" class="form_label" align="center">
                2017:
            </td>
            <td id="c2017i" colspan="1">
                <input id="c2017" class="nui-textbox" name="preData.c2017"/>
            </td>
            <td id="c2017ii" colspan="1">
                <div name="nextData.c2017" id="combobox2017i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2018" class="form_label" align="center">
                2018:
            </td>
            <td id="c2018i" colspan="1">
                <input id="c2018" class="nui-textbox" name="preData.c2018"/>
            </td>
            <td id="c2018ii" colspan="1">
                <div name="nextData.c2018" id="combobox2018i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2019" class="form_label" align="center">
                2019:
            </td>
            <td id="c2019i" colspan="1">
                <input id="c2019" class="nui-textbox" name="preData.c2019"/>
            </td>
            <td id="c2019ii" colspan="1">
                <div name="nextData.c2019" id="combobox2019i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2020" class="form_label" align="center">
                2020:
            </td>
            <td id="c2020i" colspan="1">
                <input id="c2020" class="nui-textbox" name="preData.c2020"/>
            </td>
            <td id="c2020ii" colspan="1">
                <div name="nextData.c2020" id="combobox2020i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2021" class="form_label" align="center">
                2021:
            </td>
            <td id="c2021i" colspan="1">
                <input id="c2021" class="nui-textbox" name="preData.c2021"/>
            </td>
            <td id="c2021ii" colspan="1">
                <div name="nextData.c2021" id="combobox2021i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2022" class="form_label" align="center">
                2022:
            </td>
            <td id="c2022i" colspan="1">
                <input id="c2022" class="nui-textbox" name="preData.c2022"/>
            </td>
            <td id="c2022ii" colspan="1">
                <div name="nextData.c2022" id="combobox2022i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2023" class="form_label" align="center">
                2023:
            </td>
            <td id="c2023i" colspan="1">
                <input id="c2023" class="nui-textbox" name="preData.c2023"/>
            </td>
            <td id="c2023ii" colspan="1">
                <div name="nextData.c2023" id="combobox2023i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2024" class="form_label" align="center">
                2024:
            </td>
            <td id="c2024i" colspan="1">
                <input id="c2024" class="nui-textbox" name="preData.c2024"/>
            </td>
            <td id="c2024ii" colspan="1">
                <div name="nextData.c2024" id="combobox2024i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2025" class="form_label" align="center">
                2025:
            </td>
            <td id="c2025i" colspan="1">
                <input id="c2025" class="nui-textbox" name="preData.c2025"/>
            </td>
            <td id="c2025ii" colspan="1">
                <div name="nextData.c2025" id="combobox2025i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2026" class="form_label" align="center">
                2026:
            </td>
            <td id="c2026i" colspan="1">
                <input id="c2026" class="nui-textbox" name="preData.c2026"/>
            </td>
            <td id="c2026ii" colspan="1">
                <div name="nextData.c2026" id="combobox2026i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2027" class="form_label" align="center">
                2027:
            </td>
            <td id="c2027i" colspan="1">
                <input id="c2027" class="nui-textbox" name="preData.c2027"/>
            </td>
            <td id="c2027ii" colspan="1">
                <div name="nextData.c2027" id="combobox2027i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2028" class="form_label" align="center">
                2028:
            </td>
            <td id="c2028i" colspan="1">
                <input id="c2028" class="nui-textbox" name="preData.c2028"/>
            </td>
            <td id="c2028ii" colspan="1">
                <div name="nextData.c2028" id="combobox2028i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2029" class="form_label" align="center">
                2029:
            </td>
            <td id="c2029i" colspan="1">
                <input id="c2029" class="nui-textbox" name="preData.c2029"/>
            </td>
            <td id="c2029ii" colspan="1">
                <div name="nextData.c2029" id="combobox2029i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2030" class="form_label" align="center">
                2030:
            </td>
            <td id="c2030i" colspan="1">
                <input id="c2030" class="nui-textbox" name="preData.c2030"/>
            </td>
            <td id="c2030ii" colspan="1">
                <div name="nextData.c2030" id="combobox2030i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2031" class="form_label" align="center">
                2031:
            </td>
            <td id="c2031i" colspan="1">
                <input id="c2031" class="nui-textbox" name="preData.c2031"/>
            </td>
            <td id="c2031ii" colspan="1">
                <div name="nextData.c2031" id="combobox2031i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2032" class="form_label" align="center">
                2032:
            </td>
            <td id="c2032i" colspan="1">
                <input id="c2032" class="nui-textbox" name="preData.c2032"/>
            </td>
            <td id="c2032ii" colspan="1">
                <div name="nextData.c2032" id="combobox2032i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2033" class="form_label" align="center">
                2033:
            </td>
            <td id="c2033i" colspan="1">
                <input id="c2033" class="nui-textbox" name="preData.c2033"/>
            </td>
            <td id="c2033ii" colspan="1">
                <div name="nextData.c2033" id="combobox2033i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2034" class="form_label" align="center">
                2034:
            </td>
            <td id="c2034i" colspan="1">
                <input id="c2034" class="nui-textbox" name="preData.c2034"/>
            </td>
            <td id="c2034ii" colspan="1">
                <div name="nextData.c2034" id="combobox2034i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2035" class="form_label" align="center">
                2035:
            </td>
            <td id="c2035i" colspan="1">
                <input id="c2035" class="nui-textbox" name="preData.c2035"/>
            </td>
            <td id="c2035ii" colspan="1">
                <div name="nextData.c2035" id="combobox2035i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2036" class="form_label" align="center">
                2036:
            </td>
            <td id="c2036i" colspan="1">
                <input id="c2036" class="nui-textbox" name="preData.c2036"/>
            </td>
            <td id="c2036ii" colspan="1">
                <div name="nextData.c2036" id="combobox2036i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2037" class="form_label" align="center">
                2037:
            </td>
            <td id="c2037i" colspan="1">
                <input id="c2037" class="nui-textbox" name="preData.c2037"/>
            </td>
            <td id="c2037ii" colspan="1">
                <div name="nextData.c2037" id="combobox2037i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2038" class="form_label" align="center">
                2038:
            </td>
            <td id="c2038i" colspan="1">
                <input id="c2038" class="nui-textbox" name="preData.c2038"/>
            </td>
            <td id="c2038ii" colspan="1">
                <div name="nextData.c2038" id="combobox2038i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2039" class="form_label" align="center">
                2039:
            </td>
            <td id="c2039i" colspan="1">
                <input id="c2039" class="nui-textbox" name="preData.c2039"/>
            </td>
            <td id="c2039ii" colspan="1">
                <div name="nextData.c2039" id="combobox2039i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2040" class="form_label" align="center">
                2040:
            </td>
            <td id="c2040i" colspan="1">
                <input id="c2040" class="nui-textbox" name="preData.c2040"/>
            </td>
            <td id="c2040ii" colspan="1">
                <div name="nextData.c2040" id="combobox2040i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2041" class="form_label" align="center">
                2041:
            </td>
            <td id="c2041i" colspan="1">
                <input id="c2041" class="nui-textbox" name="preData.c2041"/>
            </td>
            <td id="c2041ii" colspan="1">
                <div name="nextData.c2041" id="combobox2041i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2042" class="form_label" align="center">
                2042:
            </td>
            <td id="c2042i" colspan="1">
                <input id="c2042" class="nui-textbox" name="preData.c2042"/>
            </td>
            <td id="c2042ii" colspan="1">
                <div name="nextData.c2042" id="combobox2042i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2043" class="form_label" align="center">
                2043:
            </td>
            <td id="c2043i" colspan="1">
                <input id="c2043" class="nui-textbox" name="preData.c2043"/>
            </td>
            <td id="c2043ii" colspan="1">
                <div name="nextData.c2043" id="combobox2043i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2044" class="form_label" align="center">
                2044:
            </td>
            <td id="c2044i" colspan="1">
                <input id="c2044" class="nui-textbox" name="preData.c2044"/>
            </td>
            <td id="c2044ii" colspan="1">
                <div name="nextData.c2044" id="combobox2044i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2045" class="form_label" align="center">
                2045:
            </td>
            <td id="c2045i" colspan="1">
                <input id="c2045" class="nui-textbox" name="preData.c2045"/>
            </td>
            <td id="c2045ii" colspan="1">
                <div name="nextData.c2045" id="combobox2045i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2046" class="form_label" align="center">
                2046:
            </td>
            <td id="c2046i" colspan="1">
                <input id="c2046" class="nui-textbox" name="preData.c2046"/>
            </td>
            <td id="c2046ii" colspan="1">
                <div name="nextData.c2046" id="combobox2046i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2047" class="form_label" align="center">
                2047:
            </td>
            <td id="c2047i" colspan="1">
                <input id="c2047" class="nui-textbox" name="preData.c2047"/>
            </td>
            <td id="c2047ii" colspan="1">
                <div name="nextData.c2047" id="combobox2047i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2048" class="form_label" align="center">
                2048:
            </td>
            <td id="c2048i" colspan="1">
                <input id="c2048" class="nui-textbox" name="preData.c2048"/>
            </td>
            <td id="c2048ii" colspan="1">
                <div name="nextData.c2048" id="combobox2048i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2049" class="form_label" align="center">
                2049:
            </td>
            <td id="c2049i" colspan="1">
                <input id="c2049" class="nui-textbox" name="preData.c2049"/>
            </td>
            <td id="c2049ii" colspan="1">
                <div name="nextData.c2049" id="combobox2049i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2050" class="form_label" align="center">
                2050:
            </td>
            <td id="c2050i" colspan="1">
                <input id="c2050" class="nui-textbox" name="preData.c2050"/>
            </td>
            <td id="c2050ii" colspan="1">
                <div name="nextData.c2050" id="combobox2050i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2051" class="form_label" align="center">
                2051:
            </td>
            <td id="c2051i" colspan="1">
                <input id="c2051" class="nui-textbox" name="preData.c2051"/>
            </td>
            <td id="c2051ii" colspan="1">
                <div name="nextData.c2051" id="combobox2051i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2052" class="form_label" align="center">
                2052:
            </td>
            <td id="c2052i" colspan="1">
                <input id="c2052" class="nui-textbox" name="preData.c2052"/>
            </td>
            <td id="c2052ii" colspan="1">
                <div name="nextData.c2052" id="combobox2052i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2053" class="form_label" align="center">
                2053:
            </td>
            <td id="c2053i" colspan="1">
                <input id="c2053" class="nui-textbox" name="preData.c2053"/>
            </td>
            <td id="c2053ii" colspan="1">
                <div name="nextData.c2053" id="combobox2053i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2054" class="form_label" align="center">
                2054:
            </td>
            <td id="c2054i" colspan="1">
                <input id="c2054" class="nui-textbox" name="preData.c2054"/>
            </td>
            <td id="c2054ii" colspan="1">
                <div name="nextData.c2054" id="combobox2054i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2055" class="form_label" align="center">
                2055:
            </td>
            <td id="c2055i" colspan="1">
                <input id="c2055" class="nui-textbox" name="preData.c2055"/>
            </td>
            <td id="c2055ii" colspan="1">
                <div name="nextData.c2055" id="combobox2055i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2056" class="form_label" align="center">
                2056:
            </td>
            <td id="c2056i" colspan="1">
                <input id="c2056" class="nui-textbox" name="preData.c2056"/>
            </td>
            <td id="c2056ii" colspan="1">
                <div name="nextData.c2056" id="combobox2056i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2057" class="form_label" align="center">
                2057:
            </td>
            <td id="c2057i" colspan="1">
                <input id="c2057" class="nui-textbox" name="preData.c2057"/>
            </td>
            <td id="c2057ii" colspan="1">
                <div name="nextData.c2057" id="combobox2057i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2058" class="form_label" align="center">
                2058:
            </td>
            <td id="c2058i" colspan="1">
                <input id="c2058" class="nui-textbox" name="preData.c2058"/>
            </td>
            <td id="c2058ii" colspan="1">
                <div name="nextData.c2058" id="combobox2058i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2059" class="form_label" align="center">
                2059:
            </td>
            <td id="c2059i" colspan="1">
                <input id="c2059" class="nui-textbox" name="preData.c2059"/>
            </td>
            <td id="c2059ii" colspan="1">
                <div name="nextData.c2059" id="combobox2059i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2060" class="form_label" align="center">
                2060:
            </td>
            <td id="c2060i" colspan="1">
                <input id="c2060" class="nui-textbox" name="preData.c2060"/>
            </td>
            <td id="c2060ii" colspan="1">
                <div name="nextData.c2060" id="combobox2060i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2061" class="form_label" align="center">
                2061:
            </td>
            <td id="c2061i" colspan="1">
                <input id="c2061" class="nui-textbox" name="preData.c2061"/>
            </td>
            <td id="c2061ii" colspan="1">
                <div name="nextData.c2061" id="combobox2061i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2062" class="form_label" align="center">
                2062:
            </td>
            <td id="c2062i" colspan="1">
                <input id="c2062" class="nui-textbox" name="preData.c2062"/>
            </td>
            <td id="c2062ii" colspan="1">
                <div name="nextData.c2062" id="combobox2062i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2063" class="form_label" align="center">
                2063:
            </td>
            <td id="c2063i" colspan="1">
                <input id="c2063" class="nui-textbox" name="preData.c2063"/>
            </td>
            <td id="c2063ii" colspan="1">
                <div name="nextData.c2063" id="combobox2063i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2064" class="form_label" align="center">
                2064:
            </td>
            <td id="c2064i" colspan="1">
                <input id="c2064" class="nui-textbox" name="preData.c2064"/>
            </td>
            <td id="c2064ii" colspan="1">
                <div name="nextData.c2064" id="combobox2064i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2065" class="form_label" align="center">
                2065:
            </td>
            <td id="c2065i" colspan="1">
                <input id="c2065" class="nui-textbox" name="preData.c2065"/>
            </td>
            <td id="c2065ii" colspan="1">
                <div name="nextData.c2065" id="combobox2065i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2066" class="form_label" align="center">
                2066:
            </td>
            <td id="c2066i" colspan="1">
                <input id="c2066" class="nui-textbox" name="preData.c2066"/>
            </td>
            <td id="c2066ii" colspan="1">
                <div name="nextData.c2066" id="combobox2066i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2067" class="form_label" align="center">
                2067:
            </td>
            <td id="c2067i" colspan="1">
                <input id="c2067" class="nui-textbox" name="preData.c2067"/>
            </td>
            <td id="c2067ii" colspan="1">
                <div name="nextData.c2067" id="combobox2067i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2068" class="form_label" align="center">
                2068:
            </td>
            <td id="c2068i" colspan="1">
                <input id="c2068" class="nui-textbox" name="preData.c2068"/>
            </td>
            <td id="c2068ii" colspan="1">
                <div name="nextData.c2068" id="combobox2068i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2069" class="form_label" align="center">
                2069:
            </td>
            <td id="c2069i" colspan="1">
                <input id="c2069" class="nui-textbox" name="preData.c2069"/>
            </td>
            <td id="c2069ii" colspan="1">
                <div name="nextData.c2069" id="combobox2069i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2070" class="form_label" align="center">
                2070:
            </td>
            <td id="c2070i" colspan="1">
                <input id="c2070" class="nui-textbox" name="preData.c2070"/>
            </td>
            <td id="c2070ii" colspan="1">
                <div name="nextData.c2070" id="combobox2070i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2071" class="form_label" align="center">
                2071:
            </td>
            <td id="c2071i" colspan="1">
                <input id="c2071" class="nui-textbox" name="preData.c2071"/>
            </td>
            <td id="c2071ii" colspan="1">
                <div name="nextData.c2071" id="combobox2071i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2072" class="form_label" align="center">
                2072:
            </td>
            <td id="c2072i" colspan="1">
                <input id="c2072" class="nui-textbox" name="preData.c2072"/>
            </td>
            <td id="c2072ii" colspan="1">
                <div name="nextData.c2072" id="combobox2072i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2073" class="form_label" align="center">
                2073:
            </td>
            <td id="c2073i" colspan="1">
                <input id="c2073" class="nui-textbox" name="preData.c2073"/>
            </td>
            <td id="c2073ii" colspan="1">
                <div name="nextData.c2073" id="combobox2073i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2074" class="form_label" align="center">
                2074:
            </td>
            <td id="c2074i" colspan="1">
                <input id="c2074" class="nui-textbox" name="preData.c2074"/>
            </td>
            <td id="c2074ii" colspan="1">
                <div name="nextData.c2074" id="combobox2074i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2075" class="form_label" align="center">
                2075:
            </td>
            <td id="c2075i" colspan="1">
                <input id="c2075" class="nui-textbox" name="preData.c2075"/>
            </td>
            <td id="c2075ii" colspan="1">
                <div name="nextData.c2075" id="combobox2075i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2076" class="form_label" align="center">
                2076:
            </td>
            <td id="c2076i" colspan="1">
                <input id="c2076" class="nui-textbox" name="preData.c2076"/>
            </td>
            <td id="c2076ii" colspan="1">
                <div name="nextData.c2076" id="combobox2076i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2077" class="form_label" align="center">
                2077:
            </td>
            <td id="c2077i" colspan="1">
                <input id="c2077" class="nui-textbox" name="preData.c2077"/>
            </td>
            <td id="c2077ii" colspan="1">
                <div name="nextData.c2077" id="combobox2077i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2078" class="form_label" align="center">
                2078:
            </td>
            <td id="c2078i" colspan="1">
                <input id="c2078" class="nui-textbox" name="preData.c2078"/>
            </td>
            <td id="c2078ii" colspan="1">
                <div name="nextData.c2078" id="combobox2078i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2079" class="form_label" align="center">
                2079:
            </td>
            <td id="c2079i" colspan="1">
                <input id="c2079" class="nui-textbox" name="preData.c2079"/>
            </td>
            <td id="c2079ii" colspan="1">
                <div name="nextData.c2079" id="combobox2079i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2080" class="form_label" align="center">
                2080:
            </td>
            <td id="c2080i" colspan="1">
                <input id="c2080" class="nui-textbox" name="preData.c2080"/>
            </td>
            <td id="c2080ii" colspan="1">
                <div name="nextData.c2080" id="combobox2080i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2081" class="form_label" align="center">
                2081:
            </td>
            <td id="c2081i" colspan="1">
                <input id="c2081" class="nui-textbox" name="preData.c2081"/>
            </td>
            <td id="c2081ii" colspan="1">
                <div name="nextData.c2081" id="combobox2081i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2082" class="form_label" align="center">
                2082:
            </td>
            <td id="c2082i" colspan="1">
                <input id="c2082" class="nui-textbox" name="preData.c2082"/>
            </td>
            <td id="c2082ii" colspan="1">
                <div name="nextData.c2082" id="combobox2082i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2083" class="form_label" align="center">
                2083:
            </td>
            <td id="c2083i" colspan="1">
                <input id="c2083" class="nui-textbox" name="preData.c2083"/>
            </td>
            <td id="c2083ii" colspan="1">
                <div name="nextData.c2083" id="combobox2083i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2084" class="form_label" align="center">
                2084:
            </td>
            <td id="c2084i" colspan="1">
                <input id="c2084" class="nui-textbox" name="preData.c2084"/>
            </td>
            <td id="c2084ii" colspan="1">
                <div name="nextData.c2084" id="combobox2084i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2085" class="form_label" align="center">
                2085:
            </td>
            <td id="c2085i" colspan="1">
                <input id="c2085" class="nui-textbox" name="preData.c2085"/>
            </td>
            <td id="c2085ii" colspan="1">
                <div name="nextData.c2085" id="combobox2085i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2086" class="form_label" align="center">
                2086:
            </td>
            <td id="c2086i" colspan="1">
                <input id="c2086" class="nui-textbox" name="preData.c2086"/>
            </td>
            <td id="c2086ii" colspan="1">
                <div name="nextData.c2086" id="combobox2086i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2087" class="form_label" align="center">
                2087:
            </td>
            <td id="c2087i" colspan="1">
                <input id="c2087" class="nui-textbox" name="preData.c2087"/>
            </td>
            <td id="c2087ii" colspan="1">
                <div name="nextData.c2087" id="combobox2087i" class="nui-combobox" style="width:125px;" popupWidth="200"
                     textField="name" valueField="id"
                     url="" multiSelect="true"
                     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                    <div property="columns">

                        <div header="状态" field="name"></div>
                    </div>
                </div>
            </td>
            <td id="c2088" class="form_label" align="center">
                2088:
            </td>
            <td id="c2088i" colspan="1">
                <input id="c2088" class="nui-textbox" name="preData.c2088"/>
            </td>
            <td id="c2088ii" colspan="1">
                <div name="nextData.c2088" id="combobox2088i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td id="c2089" class="form_label" align="center">
                2089:
            </td>
            <td id="c2089i" colspan="1">
                <input id="c2089" class="nui-textbox" name="preData.c2089"/>
            </td>
            <td id="c2089ii" colspan="1">
                <div name="nextData.c2089" id="combobox2089i" class="nui-combobox" style="width:125px;" popupWidth="200"
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
            <td class="form_label"  align="center">
                修改人:
            </td>
            <td colspan="2">
                <input id="creator" name="nextData.creator" class="nui-textbox" value="<%=username %>"/>
            </td>
            <td class="form_label"  align="center">
                修改日期:
            </td>
            <td colspan="2">
                <input id="datetime"  name="nextData.datetime" style="width: 100%" class="nui-textbox" value="<%=dataTime %>"/>
            </td>
        </tr>
    </table>

<table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">

    <tr>
        <td class="form_label"  align="center">
            修改原因:
        </td>
        <td colspan="5">
            <input id="reason" required="true"   onvalidation="hasIllegalChar(e,1000,true,true)" name="nextData.xgyy" requiredErrorText="请输入修改原因" class="nui-textarea" style="width: 100%;"/>
        </td>
    </tr>
</table>
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table" id="personTable">
        <tr>
            <td class="form_label">校核人员</td>
<!--             <td colspan="5"> -->
<!--                 <input class="nui-combobox" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"id="jhry"  name="jhry"  textField="empname" style="width:50%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<!--             </td> -->
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
        </tr>
        <tr>
            <td class="form_label">抄送人员</td>
            <td colspan="5">
                <input property="editor" id="ccry" multi="false" name="ccry" class="nui-textboxlist" dataField="list"
                       style="width:300px"
                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
                       valueField="empcode"  textField="empcodename" searchField="keyword"/>
            </td>

        </tr>

    </table>

</div>
<div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
    <table width="100%">
        <tr>
            <td style="text-align:center;" colspan="4">
                <a class="nui-button btn btn-default btn-xs" id="btnSubmit" onclick="onOk('manualActivity')">
                    <i class="fa fa-check"></i>提交
                </a>
                <span style="display:inline-block;width:25px;">
                              </span>
                <a class="nui-button btn btn-default btn-xs" id="btnSave" onclick="onOk('')">
                    <i class="fa fa-check"></i>保存至草稿
                </a>
                <span style="display:inline-block;width:25px;">
                            </span>
                <a class="nui-button btn btn-default btn-xs" onclick="onCancel()">
                    <i class="fa fa-times"></i>关闭
                </a>
            </td>
        </tr>
    </table>
</div>
<script type="text/javascript">
    nui.parse();
    var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
    $(function () {
        $(".mini-buttonedit-input").css('text-align', 'center');
        $("^[name^='tdgg']").css('text-align', 'center');
    });
    if (isadmin == 'true') { //如果是管理员
        $('#personTable').hide();
        nui.get('btnSave').hide();
    }
    //审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   
    $(function () {
        nui.get("creator").setValue('<%=username %>');
        nui.get("datetime").setValue('<%=dataTime %>');
        var form = new nui.Form("dataform1");
        var fields = form.getFields();
        
        for (var i = 0, l = fields.length; i < l; i++) {
            if (i <= 8) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            } else {
                if (i > 8 && i <= fields.length - 4) {
                    if (i % 2 == 0 || i == fields.length - 4) {
                        var c = fields[i];
                        if (c.setReadOnly) c.setReadOnly(true);     //只读
                        if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                        if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
                    }
                }
            }
        }
    });


    //页面间传输json数据
    function setFormData(data) {
        //跨页面传递的数据对象，克隆后才可以安全使用
        var infos = nui.clone(data);
        var jdid = parent.nui.get("jdid").getValue();
        nui.get("jd").setValue(jdid);
        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
        nui.getbyName("pageType").setValue(infos.pageType);
		nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
        //如果是点击编辑类型页面
        if (infos.pageType == "edit") {
            var json = infos.record;

            var form = new nui.Form("#dataform1");//将普通form转为nui的form
            form.setData(json);
            form.setChanged(false);
            nui.get('protype').setValue(json.preData.zytool);
            var uuid = json.preData.uuid;
            if(uuid == undefined)uuid = json.preData.uuid;
            nui.get("jd").setValue(json.preData.base);
            nui.get("creator").setValue('<%=username %>');
            nui.get("datetime").setValue('<%=dataTime %>');
            var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + json.preData.base;
            nui.get("jzid").setUrl(url);
            nui.get("reason").setValue('');
            var parms = "{baseid:"+json.preData.base+",crewid:"+json.preData.crew+",type:n}";
            var urlStr = "com.cgn.itmp.basecommon.Common.getBaseCircle.biz.ext";
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
                        for (var i = 1991; i < parseInt(start); i++) {
                            $('#c' + i).hide();
                            $('#c' + i + "i").hide();
                            $('#c' + i + "ii").hide();
                        }
                        for (var i = parseInt(end) + 11; i <= 2089; i++) {
                            $('#c' + i).hide();
                            $('#c' + i + "i").hide();
                            $('#c' + i + "ii").hide();
                        }
                        if (json.preData.base == "86") {
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

    function saveData(finishFirstActivityId){
        var form = new nui.Form("#dataform1");
        form.setChanged(false);
        //编辑
        var urlStr = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.updateInfoMation.biz.ext";

        if(finishFirstActivityId != ""){
            form.validate();
            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
        }
         nui.get("#btnSubmit").setEnabled(false);
		  nui.get("#btnSave").setEnabled(false);
        var recordData = $("^[name^='nextData.']");
        var isEdit = false;
        if(recordData.length > 0){
            for(var i=0;i<recordData.length;i++){
                var value = recordData[i].value;
                if(value != '' && value != 'undefined'){
                    isEdit = true;
                    break;
                }
            }
        }

        if(!isEdit) {
            nui.alert("您并未修改任何数据！", "提示");
            return;
        }

        var data = form.getData(false,true);
        data.jhry = nui.get('jhry').getValue();
        data.ccry = nui.get('ccry').getValue();
        data.isadmin = isadmin;
        data.processInstName = "专用检查计划(核岛部件)_日常执行条目_修改容器和热交换器";
        data.processInstDesc = "专用检查计划(核岛部件)_日常执行条目_修改容器和热交换器";
        data.processDefName = "com.cgn.itmp.outlineandplan.specialinspection.DailyRQRJHQEdit";
        data.middleEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit";
        data.realEntity = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container";
        data.finishFirstActivityId = finishFirstActivityId;
        var json = nui.encode(data);
        $.ajax({
            url:urlStr,
            type:'POST',
            data:json,
            cache:false,
            contentType:'text/json',
            success:function(text){
                var returnJson = nui.decode(text);
                if(returnJson.exception == null){
                   		 var message = "提交成功";
                	   if(finishFirstActivityId == ''){
			            	message = "保存成功，请在我的草稿中尽快处理该流程，否则影响数据操作！";
			            }
						            
                    nui.alert(message, "提交提示", function(action){
                        if(action == "ok" || action == "close"){
                            CloseWindow("saveSuccess");
                        }
                    });
                }else{
                    nui.alert("保存失败", "系统提示", function(action){
                        if(action == "ok" || action == "close"){
                            //CloseWindow("saveFailed");
                        }
                    });
                }
            },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(true);
									nui.get("#btnSave").setEnabled(true);
							});
						 }
        });
    }

    //确定保存或更新
    function onOk(finishFirstActivityId) {
        saveData(finishFirstActivityId);
    }

    //取消
    function onCancel() {
        CloseWindow("cancel");
    }
</script>
</body>
</html>
