<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page import="java.util.*" %>
<%@ page import="commonj.sdo.DataObject" %>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%


    DataObject dataParms = (DataObject)request.getAttribute("oldEntity");//业务表原值
    DataObject editdataParms = (DataObject)request.getAttribute("entity");//修改后的值
%>
<html>
<style type="text/css">
    .asLabel .mini-textbox-border,
    .asLabel .mini-textbox-input,
    .asLabel .mini-buttonedit-border,
    .asLabel .mini-buttonedit-input,
    .asLabel .mini-textboxlist-border
    {
        border:0;background:none;cursor:default;
    }
    .asLabel .mini-buttonedit-button,
    .asLabel .mini-textboxlist-close
    {
        display:none;
    }
    .asLabel .mini-textboxlist-item
    {
        padding-right:8px;
    }


</style>
<%--
- Author(s): Administrator
- Date: 2019-01-23 15:24:56
- Description:
    --%>
<head>
    <title>
        专用检查计划录入
    </title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
    </script>

    <script type="text/javascript" src="<%= request.getContextPath() %>/coframe/tools/widget/jquery.ui.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
</head>
<body>
<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
<input name="pageType" class="nui-hidden"/>
<div id="dataform1" style="padding-top:5px;">
    <!-- hidden域 -->
    <input class="nui-hidden" name="nextData.processInstId" value="<b:write property='processInstId'/>"/>
    <input class="nui-hidden" name="nextData.uuid" value="<b:write property='entity/uuid'/>"/>
    <input class="nui-hidden" name="editable" value="<b:write property='editable'/>" id="editable"/>
    <input class="nui-hidden" name="nextData.relid" value="<b:write property='entity/relid'/>"/>
    <input class="nui-hidden" name="nextData.base" value="<b:write property='oldEntity/base'/>"/>
    <input class="nui-hidden" name="nextData.crew" value="<b:write property='oldEntity/crew'/>"/>
    <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>" id="workItemId"/>
    <input id="backid" class="nui-hidden" value="manualActivity" name="backid"/>
    <input class="nui-hidden" id="processInstId" name="processInstId" value="<b:write property='processInstId'/>"/>

    <table id="hfid" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td class="form_label"  align="center">
                字段
            </td>
            <td class="form_label"  align="center">
                原值
            </td>
            <td class="form_label"  align="center">
                修改为
            </td>
            <td class="form_label"  align="center">
                字段
            </td>
            <td class="form_label"  align="center">
                原值
            </td>
            <td class="form_label"  align="center">
                修改为
            </td>
        </tr>

        <tr>
            <td class="form_label"   align="center">
                基地:
            </td>
            <td colspan="1">
                <input class="nui-combobox" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"
                       textField="name"  onvaluechanged="reloadJz"  value="<%=dataParms.get("base")==null?"":dataParms.get("base") %>"    dataField="jsonObject" id="jdid" name="preData.base" valueField="id"/>
            </td>
            <td>
            </td>
            <td class="form_label"   align="center">
                机组:
            </td>
            <td colspan="1">
                <input class="nui-combobox"value="<%=dataParms.get("crew")==null?"":dataParms.get("crew") %>" dataField="jsonObject" id="jzid" textField="name"
                       url="" name="preData.crew"  valueField="id"/>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="form_label"   align="center">
                类型:
            </td>
            <td colspan="1">
                <input class="nui-dictcombobox" id="type"   dictTypeId="ZYJCJH"  value="<%=dataParms.get("type")==null?"":dataParms.get("type") %>"  name="preData.type"/>
            </td>
            <td>
            </td>

            <td class="form_label" align="center">
                维护项目:
            </td>
            <td colspan="1">
                <input class="nui-textbox"id="tasklist"readonly="readonly" value="<%=dataParms.get("tasklist")==null?"":dataParms.get("tasklist") %>"name="preData.tasklist"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<%=editdataParms.get("tasklist")==null?"":editdataParms.get("tasklist") %>" name="nextData.tasklist"/>
            </td>

        </tr>
        <tr>
            <td class="form_label" align="center">
                项目来源:
            </td>
            <td colspan="1">
                <input  id="system" class="nui-dictcombobox" dictTypeId="protype" readonly="readonly"
                        value="<%=dataParms.get("system")==null?"":dataParms.get("system") %>" name="preData.system"/>
            </td>
            <td colspan="1">

            </td>

            <td class="form_label" align="center">
                检查项目名称:
            </td>
            <td colspan="1">
                <input class="nui-textbox"id="checkprojectname"readonly="readonly"value="<%=dataParms.get("checkprojectname")==null?"":dataParms.get("checkprojectname") %>" name="preData.checkprojectname"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("checkprojectname")==null?"":editdataParms.get("checkprojectname") %>"name="nextData.checkprojectname"/>
            </td>

        </tr>
        <tr>
            <td class="form_label" align="center">
                项号:
            </td>
            <td colspan="1">
                <input class="nui-textbox"id="itemnumber"value="<%=dataParms.get("itemnumber")==null?"":dataParms.get("itemnumber") %>"readonly="readonly" name="preData.itemnumber"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<%=editdataParms.get("itemnumber")==null?"":editdataParms.get("itemnumber") %>" name="nextData.itemnumber"/>
            </td>

            <td class="form_label" align="center">
                设备名称:
            </td>
            <td colspan="1">
                <input class="nui-textbox"id="sbname"value="<%=dataParms.get("sbname")==null?"":dataParms.get("sbname") %>"readonly="readonly" name="preData.sbname"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<%=editdataParms.get("sbname")==null?"":editdataParms.get("sbname") %>" name="nextData.sbname"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                设备编号:
            </td>
            <td colspan="1">
                <input class="nui-textbox"id="sbnumber"readonly="readonly" value="<%=dataParms.get("sbnumber")==null?"":dataParms.get("sbnumber") %>"name="preData.sbnumber"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<%=editdataParms.get("sbnumber")==null?"":editdataParms.get("sbnumber") %>" name="nextData.sbnumber"/>
            </td>
            <td class="form_label" align="center">
                列:
            </td>
            <td colspan="1">
                <input class="nui-textbox"id="columnsint"readonly="readonly" value="<%=dataParms.get("columnsint")==null?"":dataParms.get("columnsint") %>"name="preData.columnsint"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<%=editdataParms.get("columnsint")==null?"":editdataParms.get("columnsint") %>" name="nextData.columnsint"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                行:
            </td>
            <td colspan="1">
                <input class="nui-textbox"id="row"readonly="readonly"value="<%=dataParms.get("row")==null?"":dataParms.get("row") %>" name="preData.row"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<%=editdataParms.get("row")==null?"":editdataParms.get("row") %>" name="nextData.row"/>
            </td>
            <td class="form_label" align="center">
                检查类型:
            </td>
            <td colspan="1">
                <input class="nui-dictcombobox" dictTypeId="JCLX" id="checktype"readonly="readonly"value="<%=dataParms.get("checktype")==null?"":dataParms.get("checktype") %>" name="preData.checktype"/>
            </td>
            <td colspan="1">
                <input class="nui-dictcombobox" dictTypeId="JCLX" value="<%=editdataParms.get("checktype")==null?"":editdataParms.get("checktype") %>"name="nextData.checktype"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                检查方法:
            </td>
            <td colspan="1">
                <input class="nui-textbox"id="jcmethod"readonly="readonly" value="<%=dataParms.get("jcmethod")==null?"":dataParms.get("jcmethod") %>"name="preData.jcmethod"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<%=editdataParms.get("jcmethod")==null?"":editdataParms.get("jcmethod") %>" name="nextData.jcmethod"/>
            </td>
            <td class="form_label" align="center">
                检查程序:
            </td>
            <td colspan="1">
                <input class="nui-textbox"id="jcprocedure"readonly="readonly"value="<%=dataParms.get("jcprocedure")==null?"":dataParms.get("jcprocedure") %>" name="preData.jcprocedure"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("jcprocedure")==null?"":editdataParms.get("jcprocedure") %>"name="nextData.jcprocedure"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                检查周期:
            </td>
            <td colspan="1">
                <input class="nui-textbox"id="jccycle"readonly="readonly" value="<%=dataParms.get("jccycle")==null?"":dataParms.get("jccycle") %>"name="preData.jccycle"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox"value="<%=editdataParms.get("jccycle")==null?"":editdataParms.get("jccycle") %>" name="nextData.jccycle"/>
            </td>
            <td class="form_label" align="center">
                备注:
            </td>
            <td colspan="1">
                <input class="nui-textarea"id="remarks"readonly="readonly" value="<%=dataParms.get("remarks")==null?"":dataParms.get("remarks") %>"style="width: 100%" name="preData.remarks"/>
            </td>
            <td colspan="1">
                <input class="nui-textarea" value="<%=editdataParms.get("remarks")==null?"":editdataParms.get("remarks") %>"style="width: 100%" name="nextData.remarks"/>
            </td>
        </tr>
    </table>
    <table id="nd" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td id="n1991" class="form_label"  align="center">
                1991:
            </td>
            <td id="n1991i" colspan="1">
                <input id="n1991" value="<%=dataParms.get("c1991")==null?"":dataParms.get("c1991") %>" class="nui-textbox" name="preData.c1991"/>
            </td>
            <td id="n1991ii" colspan="1">
                <input id="combobox1991i"	value="<%=editdataParms.get("c1991")==null?"":editdataParms.get("c1991") %>" name="nextData.c1991"	class="nui-textbox"/>
            </td>
            <td id="n1992" class="form_label"  align="center">
                1992:
            </td>
            <td id="n1992i" colspan="1">
                <input id="n1992" value="<%=dataParms.get("c1992")==null?"":dataParms.get("c1992") %>" class="nui-textbox" name="preData.c1992"/>
            </td>
            <td id="n1992ii" colspan="1">
                <input id="combobox1992i"	value="<%=editdataParms.get("c1992")==null?"":editdataParms.get("c1992") %>" name="nextData.c1992"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n1993" class="form_label"  align="center">
                1993:
            </td>
            <td id="n1993i" colspan="1">
                <input id="n1993" value="<%=dataParms.get("c1993")==null?"":dataParms.get("c1993") %>" class="nui-textbox" name="preData.c1993"/>
            </td>
            <td id="n1993ii" colspan="1">
                <input id="combobox1993i"	value="<%=editdataParms.get("c1993")==null?"":editdataParms.get("c1993") %>" name="nextData.c1993"	class="nui-textbox"/>
            </td>
            <td id="n1994" class="form_label"  align="center">
                1994:
            </td>
            <td id="n1994i" colspan="1">
                <input id="n1994" value="<%=dataParms.get("c1994")==null?"":dataParms.get("c1994") %>" class="nui-textbox" name="preData.c1994"/>
            </td>
            <td id="n1994ii" colspan="1">
                <input id="combobox1994i"	value="<%=editdataParms.get("c1994")==null?"":editdataParms.get("c1994") %>" name="nextData.c1994"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n1995" class="form_label"  align="center">
                1995:
            </td>
            <td id="n1995i" colspan="1">
                <input id="n1995" value="<%=dataParms.get("c1995")==null?"":dataParms.get("c1995") %>" class="nui-textbox" name="preData.c1995"/>
            </td>
            <td id="n1995ii" colspan="1">
                <input id="combobox1995i"	value="<%=editdataParms.get("c1995")==null?"":editdataParms.get("c1995") %>" name="nextData.c1995"	class="nui-textbox"/>
            </td>
            <td id="n1996" class="form_label"  align="center">
                1996:
            </td>
            <td id="n1996i" colspan="1">
                <input id="n1996" value="<%=dataParms.get("c1996")==null?"":dataParms.get("c1996") %>" class="nui-textbox" name="preData.c1996"/>
            </td>
            <td id="n1996ii" colspan="1">
                <input id="combobox1996i"	value="<%=editdataParms.get("c1996")==null?"":editdataParms.get("c1996") %>" name="nextData.c1996"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n1997" class="form_label"  align="center">
                1997:
            </td>
            <td id="n1997i" colspan="1">
                <input id="n1997" value="<%=dataParms.get("c1997")==null?"":dataParms.get("c1997") %>" class="nui-textbox" name="preData.c1997"/>
            </td>
            <td id="n1997ii" colspan="1">
                <input id="combobox1997i"	value="<%=editdataParms.get("c1997")==null?"":editdataParms.get("c1997") %>" name="nextData.c1997"	class="nui-textbox"/>
            </td>
            <td id="n1998" class="form_label"  align="center">
                1998:
            </td>
            <td id="n1998i" colspan="1">
                <input id="n1998" value="<%=dataParms.get("c1998")==null?"":dataParms.get("c1998") %>" class="nui-textbox" name="preData.c1998"/>
            </td>
            <td id="n1998ii" colspan="1">
                <input id="combobox1998i"	value="<%=editdataParms.get("c1998")==null?"":editdataParms.get("c1998") %>" name="nextData.c1998"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n1999" class="form_label"  align="center">
                1999:
            </td>
            <td id="n1999i" colspan="1">
                <input id="n1999" value="<%=dataParms.get("c1999")==null?"":dataParms.get("c1999") %>" class="nui-textbox" name="preData.c1999"/>
            </td>
            <td id="n1999ii" colspan="1">
                <input id="combobox1999i"	value="<%=editdataParms.get("c1999")==null?"":editdataParms.get("c1999") %>" name="nextData.c1999"	class="nui-textbox"/>
            </td>
            <td id="n2000" class="form_label"  align="center">
                2000:
            </td>
            <td id="n2000i" colspan="1">
                <input id="n2000" value="<%=dataParms.get("c2000")==null?"":dataParms.get("c2000") %>" class="nui-textbox" name="preData.c2000"/>
            </td>
            <td id="n2000ii" colspan="1">
                <input id="combobox2000i"	value="<%=editdataParms.get("c2000")==null?"":editdataParms.get("c2000") %>" name="nextData.c2000"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2001" class="form_label"  align="center">
                2001:
            </td>
            <td id="n2001i" colspan="1">
                <input id="n2001" value="<%=dataParms.get("c2001")==null?"":dataParms.get("c2001") %>" class="nui-textbox" name="preData.c2001"/>
            </td>
            <td id="n2001ii" colspan="1">
                <input id="combobox2001i"	value="<%=editdataParms.get("c2001")==null?"":editdataParms.get("c2001") %>" name="nextData.c2001"	class="nui-textbox"/>
            </td>
            <td id="n2002" class="form_label"  align="center">
                2002:
            </td>
            <td id="n2002i" colspan="1">
                <input id="n2002" value="<%=dataParms.get("c2002")==null?"":dataParms.get("c2002") %>" class="nui-textbox" name="preData.c2002"/>
            </td>
            <td id="n2002ii" colspan="1">
                <input id="combobox2002i"	value="<%=editdataParms.get("c2002")==null?"":editdataParms.get("c2002") %>" name="nextData.c2002"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2003" class="form_label"  align="center">
                2003:
            </td>
            <td id="n2003i" colspan="1">
                <input id="n2003" value="<%=dataParms.get("c2003")==null?"":dataParms.get("c2003") %>" class="nui-textbox" name="preData.c2003"/>
            </td>
            <td id="n2003ii" colspan="1">
                <input id="combobox2003i"	value="<%=editdataParms.get("c2003")==null?"":editdataParms.get("c2003") %>" name="nextData.c2003"	class="nui-textbox"/>
            </td>
            <td id="n2004" class="form_label"  align="center">
                2004:
            </td>
            <td id="n2004i" colspan="1">
                <input id="n2004" value="<%=dataParms.get("c2004")==null?"":dataParms.get("c2004") %>" class="nui-textbox" name="preData.c2004"/>
            </td>
            <td id="n2004ii" colspan="1">
                <input id="combobox2004i"	value="<%=editdataParms.get("c2004")==null?"":editdataParms.get("c2004") %>" name="nextData.c2004"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2005" class="form_label"  align="center">
                2005:
            </td>
            <td id="n2005i" colspan="1">
                <input id="n2005" value="<%=dataParms.get("c2005")==null?"":dataParms.get("c2005") %>" class="nui-textbox" name="preData.c2005"/>
            </td>
            <td id="n2005ii" colspan="1">
                <input id="combobox2005i"	value="<%=editdataParms.get("c2005")==null?"":editdataParms.get("c2005") %>" name="nextData.c2005"	class="nui-textbox"/>
            </td>
            <td id="n2006" class="form_label"  align="center">
                2006:
            </td>
            <td id="n2006i" colspan="1">
                <input id="n2006" value="<%=dataParms.get("c2006")==null?"":dataParms.get("c2006") %>" class="nui-textbox" name="preData.c2006"/>
            </td>
            <td id="n2006ii" colspan="1">
                <input id="combobox2006i"	value="<%=editdataParms.get("c2006")==null?"":editdataParms.get("c2006") %>" name="nextData.c2006"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2007" class="form_label"  align="center">
                2007:
            </td>
            <td id="n2007i" colspan="1">
                <input id="n2007" value="<%=dataParms.get("c2007")==null?"":dataParms.get("c2007") %>" class="nui-textbox" name="preData.c2007"/>
            </td>
            <td id="n2007ii" colspan="1">
                <input id="combobox2007i"	value="<%=editdataParms.get("c2007")==null?"":editdataParms.get("c2007") %>" name="nextData.c2007"	class="nui-textbox"/>
            </td>
            <td id="n2008" class="form_label"  align="center">
                2008:
            </td>
            <td id="n2008i" colspan="1">
                <input id="n2008" value="<%=dataParms.get("c2008")==null?"":dataParms.get("c2008") %>" class="nui-textbox" name="preData.c2008"/>
            </td>
            <td id="n2008ii" colspan="1">
                <input id="combobox2008i"	value="<%=editdataParms.get("c2008")==null?"":editdataParms.get("c2008") %>" name="nextData.c2008"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2009" class="form_label"  align="center">
                2009:
            </td>
            <td id="n2009i" colspan="1">
                <input id="n2009" value="<%=dataParms.get("c2009")==null?"":dataParms.get("c2009") %>" class="nui-textbox" name="preData.c2009"/>
            </td>
            <td id="n2009ii" colspan="1">
                <input id="combobox2009i"	value="<%=editdataParms.get("c2009")==null?"":editdataParms.get("c2009") %>" name="nextData.c2009"	class="nui-textbox"/>
            </td>
            <td id="n2010" class="form_label"  align="center">
                2010:
            </td>
            <td id="n2010i" colspan="1">
                <input id="n2010" value="<%=dataParms.get("c2010")==null?"":dataParms.get("c2010") %>" class="nui-textbox" name="preData.c2010"/>
            </td>
            <td id="n2010ii" colspan="1">
                <input id="combobox2010i"	value="<%=editdataParms.get("c2010")==null?"":editdataParms.get("c2010") %>" name="nextData.c2010"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2011" class="form_label"  align="center">
                2011:
            </td>
            <td id="n2011i" colspan="1">
                <input id="n2011" value="<%=dataParms.get("c2011")==null?"":dataParms.get("c2011") %>" class="nui-textbox" name="preData.c2011"/>
            </td>
            <td id="n2011ii" colspan="1">
                <input id="combobox2011i"	value="<%=editdataParms.get("c2011")==null?"":editdataParms.get("c2011") %>" name="nextData.c2011"	class="nui-textbox"/>
            </td>
            <td id="n2012" class="form_label"  align="center">
                2012:
            </td>
            <td id="n2012i" colspan="1">
                <input id="n2012" value="<%=dataParms.get("c2012")==null?"":dataParms.get("c2012") %>" class="nui-textbox" name="preData.c2012"/>
            </td>
            <td id="n2012ii" colspan="1">
                <input id="combobox2012i"	value="<%=editdataParms.get("c2012")==null?"":editdataParms.get("c2012") %>" name="nextData.c2012"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2013" class="form_label"  align="center">
                2013:
            </td>
            <td id="n2013i" colspan="1">
                <input id="n2013" value="<%=dataParms.get("c2013")==null?"":dataParms.get("c2013") %>" class="nui-textbox" name="preData.c2013"/>
            </td>
            <td id="n2013ii" colspan="1">
                <input id="combobox2013i"	value="<%=editdataParms.get("c2013")==null?"":editdataParms.get("c2013") %>" name="nextData.c2013"	class="nui-textbox"/>
            </td>
            <td id="n2014" class="form_label"  align="center">
                2014:
            </td>
            <td id="n2014i" colspan="1">
                <input id="n2014" value="<%=dataParms.get("c2014")==null?"":dataParms.get("c2014") %>" class="nui-textbox" name="preData.c2014"/>
            </td>
            <td id="n2014ii" colspan="1">
                <input id="combobox2014i"	value="<%=editdataParms.get("c2014")==null?"":editdataParms.get("c2014") %>" name="nextData.c2014"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2015" class="form_label"  align="center">
                2015:
            </td>
            <td id="n2015i" colspan="1">
                <input id="n2015" value="<%=dataParms.get("c2015")==null?"":dataParms.get("c2015") %>" class="nui-textbox" name="preData.c2015"/>
            </td>
            <td id="n2015ii" colspan="1">
                <input id="combobox2015i"	value="<%=editdataParms.get("c2015")==null?"":editdataParms.get("c2015") %>" name="nextData.c2015"	class="nui-textbox"/>
            </td>
            <td id="n2016" class="form_label"  align="center">
                2016:
            </td>
            <td id="n2016i" colspan="1">
                <input id="n2016" value="<%=dataParms.get("c2016")==null?"":dataParms.get("c2016") %>" class="nui-textbox" name="preData.c2016"/>
            </td>
            <td id="n2016ii" colspan="1">
                <input id="combobox2016i"	value="<%=editdataParms.get("c2016")==null?"":editdataParms.get("c2016") %>" name="nextData.c2016"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2017" class="form_label"  align="center">
                2017:
            </td>
            <td id="n2017i" colspan="1">
                <input id="n2017" value="<%=dataParms.get("c2017")==null?"":dataParms.get("c2017") %>" class="nui-textbox" name="preData.c2017"/>
            </td>
            <td id="n2017ii" colspan="1">
                <input id="combobox2017i"	value="<%=editdataParms.get("c2017")==null?"":editdataParms.get("c2017") %>" name="nextData.c2017"	 class="nui-textbox"/>
            </td>
            <td id="n2018" class="form_label"  align="center">
                2018:
            </td>
            <td id="n2018i" colspan="1">
                <input id="n2018" value="<%=dataParms.get("c2018")==null?"":dataParms.get("c2018") %>" class="nui-textbox" name="preData.c2018"/>
            </td>
            <td id="n2018ii" colspan="1">
                <input id="combobox2018i"	value="<%=editdataParms.get("c2018")==null?"":editdataParms.get("c2018") %>" name="nextData.c2018"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2019" class="form_label"  align="center">
                2019:
            </td>
            <td id="n2019i" colspan="1">
                <input id="n2019" value="<%=dataParms.get("c2019")==null?"":dataParms.get("c2019") %>" class="nui-textbox" name="preData.c2019"/>
            </td>
            <td id="n2019ii" colspan="1">
                <input id="combobox2019i"	value="<%=editdataParms.get("c2019")==null?"":editdataParms.get("c2019") %>" name="nextData.c2019"	class="nui-textbox"/>
            </td>
            <td id="n2020" class="form_label"  align="center">
                2020:
            </td>
            <td id="n2020i" colspan="1">
                <input id="n2020" value="<%=dataParms.get("c2020")==null?"":dataParms.get("c2020") %>" class="nui-textbox" name="preData.c2020"/>
            </td>
            <td id="n2020ii" colspan="1">
                <input id="combobox2020i"	value="<%=editdataParms.get("c2020")==null?"":editdataParms.get("c2020") %>" name="nextData.c2020"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2021" class="form_label"  align="center">
                2021:
            </td>
            <td id="n2021i" colspan="1">
                <input id="n2021" value="<%=dataParms.get("c2021")==null?"":dataParms.get("c2021") %>" class="nui-textbox" name="preData.c2021"/>
            </td>
            <td id="n2021ii" colspan="1">
                <input id="combobox2021i"	value="<%=editdataParms.get("c2021")==null?"":editdataParms.get("c2021") %>" name="nextData.c2021"	class="nui-textbox"/>
            </td>
            <td id="n2022" class="form_label"  align="center">
                2022:
            </td>
            <td id="n2022i" colspan="1">
                <input id="n2022" value="<%=dataParms.get("c2022")==null?"":dataParms.get("c2022") %>" class="nui-textbox" name="preData.c2022"/>
            </td>
            <td id="n2022ii" colspan="1">
                <input id="combobox2022i"	value="<%=editdataParms.get("c2022")==null?"":editdataParms.get("c2022") %>" name="nextData.c2022"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2023" class="form_label"  align="center">
                2023:
            </td>
            <td id="n2023i" colspan="1">
                <input id="n2023" value="<%=dataParms.get("c2023")==null?"":dataParms.get("c2023") %>" class="nui-textbox" name="preData.c2023"/>
            </td>
            <td id="n2023ii" colspan="1">
                <input id="combobox2023i"	value="<%=editdataParms.get("c2023")==null?"":editdataParms.get("c2023") %>" name="nextData.c2023"	class="nui-textbox"/>
            </td>
            <td id="n2024" class="form_label"  align="center">
                2024:
            </td>
            <td id="n2024i" colspan="1">
                <input id="n2024" value="<%=dataParms.get("c2024")==null?"":dataParms.get("c2024") %>" class="nui-textbox" name="preData.c2024"/>
            </td>
            <td id="n2024ii" colspan="1">
                <input id="combobox2024i"	value="<%=editdataParms.get("c2024")==null?"":editdataParms.get("c2024") %>" name="nextData.c2024"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2025" class="form_label"  align="center">
                2025:
            </td>
            <td id="n2025i" colspan="1">
                <input id="n2025" value="<%=dataParms.get("c2025")==null?"":dataParms.get("c2025") %>" class="nui-textbox" name="preData.c2025"/>
            </td>
            <td id="n2025ii" colspan="1">
                <input id="combobox2025i"	value="<%=editdataParms.get("c2025")==null?"":editdataParms.get("c2025") %>" name="nextData.c2025"	class="nui-textbox"/>
            </td>
            <td id="n2026" class="form_label"  align="center">
                2026:
            </td>
            <td id="n2026i" colspan="1">
                <input id="n2026" value="<%=dataParms.get("c2026")==null?"":dataParms.get("c2026") %>" class="nui-textbox" name="preData.c2026"/>
            </td>
            <td id="n2026ii" colspan="1">
                <input id="combobox2026i"	value="<%=editdataParms.get("c2026")==null?"":editdataParms.get("c2026") %>" name="nextData.c2026"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2027" class="form_label"  align="center">
                2027:
            </td>
            <td id="n2027i" colspan="1">
                <input id="n2027" value="<%=dataParms.get("c2027")==null?"":dataParms.get("c2027") %>" class="nui-textbox" name="preData.c2027"/>
            </td>
            <td id="n2027ii" colspan="1">
                <input id="combobox2027i"	value="<%=editdataParms.get("c2027")==null?"":editdataParms.get("c2027") %>" name="nextData.c2027"	class="nui-textbox"/>
            </td>
            <td id="n2028" class="form_label"  align="center">
                2028:
            </td>
            <td id="n2028i" colspan="1">
                <input id="n2028" value="<%=dataParms.get("c2028")==null?"":dataParms.get("c2028") %>" class="nui-textbox" name="preData.c2028"/>
            </td>
            <td id="n2028ii" colspan="1">
                <input id="combobox2028i"	value="<%=editdataParms.get("c2028")==null?"":editdataParms.get("c2028") %>" name="nextData.c2028"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2029" class="form_label"  align="center">
                2029:
            </td>
            <td id="n2029i" colspan="1">
                <input id="n2029" value="<%=dataParms.get("c2029")==null?"":dataParms.get("c2029") %>" class="nui-textbox" name="preData.c2029"/>
            </td>
            <td id="n2029ii" colspan="1">
                <input id="combobox2029i"	value="<%=editdataParms.get("c2029")==null?"":editdataParms.get("c2029") %>" name="nextData.c2029"	class="nui-textbox"/>
            </td>
            <td id="n2030" class="form_label"  align="center">
                2030:
            </td>
            <td id="n2030i" colspan="1">
                <input id="n2030" value="<%=dataParms.get("c2030")==null?"":dataParms.get("c2030") %>" class="nui-textbox" name="preData.c2030"/>
            </td>
            <td id="n2030ii" colspan="1">
                <input id="combobox2030i"	value="<%=editdataParms.get("c2030")==null?"":editdataParms.get("c2030") %>" name="nextData.c2030"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2031" class="form_label"  align="center">
                2031:
            </td>
            <td id="n2031i" colspan="1">
                <input id="n2031" value="<%=dataParms.get("c2031")==null?"":dataParms.get("c2031") %>" class="nui-textbox" name="preData.c2031"/>
            </td>
            <td id="n2031ii" colspan="1">
                <input id="combobox2031i"	value="<%=editdataParms.get("c2031")==null?"":editdataParms.get("c2031") %>" name="nextData.c2031"	class="nui-textbox"/>
            </td>
            <td id="n2032" class="form_label"  align="center">
                2032:
            </td>
            <td id="n2032i" colspan="1">
                <input id="n2032" value="<%=dataParms.get("c2032")==null?"":dataParms.get("c2032") %>" class="nui-textbox" name="preData.c2032"/>
            </td>
            <td id="n2032ii" colspan="1">
                <input id="combobox2032i"	value="<%=editdataParms.get("c2032")==null?"":editdataParms.get("c2032") %>" name="nextData.c2032"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2033" class="form_label"  align="center">
                2033:
            </td>
            <td id="n2033i" colspan="1">
                <input id="n2033" value="<%=dataParms.get("c2033")==null?"":dataParms.get("c2033") %>" class="nui-textbox" name="preData.c2033"/>
            </td>
            <td id="n2033ii" colspan="1">
                <input id="combobox2033i"	value="<%=editdataParms.get("c2033")==null?"":editdataParms.get("c2033") %>" name="nextData.c2033"	class="nui-textbox"/>
            </td>
            <td id="n2034" class="form_label"  align="center">
                2034:
            </td>
            <td id="n2034i" colspan="1">
                <input id="n2034" value="<%=dataParms.get("c2034")==null?"":dataParms.get("c2034") %>" class="nui-textbox" name="preData.c2034"/>
            </td>
            <td id="n2034ii" colspan="1">
                <input id="combobox2034i"	value="<%=editdataParms.get("c2034")==null?"":editdataParms.get("c2034") %>" name="nextData.c2034"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2035" class="form_label"  align="center">
                2035:
            </td>
            <td id="n2035i" colspan="1">
                <input id="n2035" value="<%=dataParms.get("c2035")==null?"":dataParms.get("c2035") %>" class="nui-textbox" name="preData.c2035"/>
            </td>
            <td id="n2035ii" colspan="1">
                <input id="combobox2035i"	value="<%=editdataParms.get("c2035")==null?"":editdataParms.get("c2035") %>" name="nextData.c2035"	class="nui-textbox"/>
            </td>
            <td id="n2036" class="form_label"  align="center">
                2036:
            </td>
            <td id="n2036i" colspan="1">
                <input id="n2036" value="<%=dataParms.get("c2036")==null?"":dataParms.get("c2036") %>" class="nui-textbox" name="preData.c2036"/>
            </td>
            <td id="n2036ii" colspan="1">
                <input id="combobox2036i"	value="<%=editdataParms.get("c2036")==null?"":editdataParms.get("c2036") %>" name="nextData.c2036"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2037" class="form_label"  align="center">
                2037:
            </td>
            <td id="n2037i" colspan="1">
                <input id="n2037" value="<%=dataParms.get("c2037")==null?"":dataParms.get("c2037") %>" class="nui-textbox" name="preData.c2037"/>
            </td>
            <td id="n2037ii" colspan="1">
                <input id="combobox2037i"	value="<%=editdataParms.get("c2037")==null?"":editdataParms.get("c2037") %>" name="nextData.c2037"	class="nui-textbox"/>
            </td>
            <td id="n2038" class="form_label"  align="center">
                2038:
            </td>
            <td id="n2038i" colspan="1">
                <input id="n2038" value="<%=dataParms.get("c2038")==null?"":dataParms.get("c2038") %>" class="nui-textbox" name="preData.c2038"/>
            </td>
            <td id="n2038ii" colspan="1">
                <input id="combobox2038i"	value="<%=editdataParms.get("c2038")==null?"":editdataParms.get("c2038") %>" name="nextData.c2038"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2039" class="form_label"  align="center">
                2039:
            </td>
            <td id="n2039i" colspan="1">
                <input id="n2039" value="<%=dataParms.get("c2039")==null?"":dataParms.get("c2039") %>" class="nui-textbox" name="preData.c2039"/>
            </td>
            <td id="n2039ii" colspan="1">
                <input id="combobox2039i"	value="<%=editdataParms.get("c2039")==null?"":editdataParms.get("c2039") %>" name="nextData.c2039"	class="nui-textbox"/>
            </td>
            <td id="n2040" class="form_label"  align="center">
                2040:
            </td>
            <td id="n2040i" colspan="1">
                <input id="n2040" value="<%=dataParms.get("c2040")==null?"":dataParms.get("c2040") %>" class="nui-textbox" name="preData.c2040"/>
            </td>
            <td id="n2040ii" colspan="1">
                <input id="combobox2040i"	value="<%=editdataParms.get("c2040")==null?"":editdataParms.get("c2040") %>" name="nextData.c2040"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2041" class="form_label"  align="center">
                2041:
            </td>
            <td id="n2041i" colspan="1">
                <input id="n2041" value="<%=dataParms.get("c2041")==null?"":dataParms.get("c2041") %>" class="nui-textbox" name="preData.c2041"/>
            </td>
            <td id="n2041ii" colspan="1">
                <input id="combobox2041i"	value="<%=editdataParms.get("c2041")==null?"":editdataParms.get("c2041") %>" name="nextData.c2041"	class="nui-textbox"/>
            </td>
            <td id="n2042" class="form_label"  align="center">
                2042:
            </td>
            <td id="n2042i" colspan="1">
                <input id="n2042" value="<%=dataParms.get("c2042")==null?"":dataParms.get("c2042") %>" class="nui-textbox" name="preData.c2042"/>
            </td>
            <td id="n2042ii" colspan="1">
                <input id="combobox2042i"	value="<%=editdataParms.get("c2042")==null?"":editdataParms.get("c2042") %>" name="nextData.c2042"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2043" class="form_label"  align="center">
                2043:
            </td>
            <td id="n2043i" colspan="1">
                <input id="n2043" value="<%=dataParms.get("c2043")==null?"":dataParms.get("c2043") %>" class="nui-textbox" name="preData.c2043"/>
            </td>
            <td id="n2043ii" colspan="1">
                <input id="combobox2043i"	value="<%=editdataParms.get("c2043")==null?"":editdataParms.get("c2043") %>" name="nextData.c2043"	class="nui-textbox"/>
            </td>
            <td id="n2044" class="form_label"  align="center">
                2044:
            </td>
            <td id="n2044i" colspan="1">
                <input id="n2044" value="<%=dataParms.get("c2044")==null?"":dataParms.get("c2044") %>" class="nui-textbox" name="preData.c2044"/>
            </td>
            <td id="n2044ii" colspan="1">
                <input id="combobox2044i"	value="<%=editdataParms.get("c2044")==null?"":editdataParms.get("c2044") %>" name="nextData.c2044"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2045" class="form_label"  align="center">
                2045:
            </td>
            <td id="n2045i" colspan="1">
                <input id="n2045" value="<%=dataParms.get("c2045")==null?"":dataParms.get("c2045") %>" class="nui-textbox" name="preData.c2045"/>
            </td>
            <td id="n2045ii" colspan="1">
                <input id="combobox2045i"	value="<%=editdataParms.get("c2045")==null?"":editdataParms.get("c2045") %>" name="nextData.c2045"	class="nui-textbox"/>
            </td>
            <td id="n2046" class="form_label"  align="center">
                2046:
            </td>
            <td id="n2046i" colspan="1">
                <input id="n2046" value="<%=dataParms.get("c2046")==null?"":dataParms.get("c2046") %>" class="nui-textbox" name="preData.c2046"/>
            </td>
            <td id="n2046ii" colspan="1">
                <input id="combobox2046i"	value="<%=editdataParms.get("c2046")==null?"":editdataParms.get("c2046") %>" name="nextData.c2046"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2047" class="form_label"  align="center">
                2047:
            </td>
            <td id="n2047i" colspan="1">
                <input id="n2047" value="<%=dataParms.get("c2047")==null?"":dataParms.get("c2047") %>" class="nui-textbox" name="preData.c2047"/>
            </td>
            <td id="n2047ii" colspan="1">
                <input id="combobox2047i"	value="<%=editdataParms.get("c2047")==null?"":editdataParms.get("c2047") %>" name="nextData.c2047"	class="nui-textbox"/>
            </td>
            <td id="n2048" class="form_label"  align="center">
                2048:
            </td>
            <td id="n2048i" colspan="1">
                <input id="n2048" value="<%=dataParms.get("c2048")==null?"":dataParms.get("c2048") %>" class="nui-textbox" name="preData.c2048"/>
            </td>
            <td id="n2048ii" colspan="1">
                <input id="combobox2048i"	value="<%=editdataParms.get("c2048")==null?"":editdataParms.get("c2048") %>" name="nextData.c2048"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2049" class="form_label"  align="center">
                2049:
            </td>
            <td id="n2049i" colspan="1">
                <input id="n2049" value="<%=dataParms.get("c2049")==null?"":dataParms.get("c2049") %>" class="nui-textbox" name="preData.c2049"/>
            </td>
            <td id="n2049ii" colspan="1">
                <input id="combobox2049i"	value="<%=editdataParms.get("c2049")==null?"":editdataParms.get("c2049") %>" name="nextData.c2049"	class="nui-textbox"/>
            </td>
            <td id="n2050" class="form_label"  align="center">
                2050:
            </td>
            <td id="n2050i" colspan="1">
                <input id="n2050" value="<%=dataParms.get("c2050")==null?"":dataParms.get("c2050") %>" class="nui-textbox" name="preData.c2050"/>
            </td>
            <td id="n2050ii" colspan="1">
                <input id="combobox2050i"	value="<%=editdataParms.get("c2050")==null?"":editdataParms.get("c2050") %>" name="nextData.c2050"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2051" class="form_label"  align="center">
                2051:
            </td>
            <td id="n2051i" colspan="1">
                <input id="n2051" value="<%=dataParms.get("c2051")==null?"":dataParms.get("c2051") %>" class="nui-textbox" name="preData.c2051"/>
            </td>
            <td id="n2051ii" colspan="1">
                <input id="combobox2051i"	value="<%=editdataParms.get("c2051")==null?"":editdataParms.get("c2051") %>" name="nextData.c2051"	class="nui-textbox"/>
            </td>
            <td id="n2052" class="form_label"  align="center">
                2052:
            </td>
            <td id="n2052i" colspan="1">
                <input id="n2052" value="<%=dataParms.get("c2052")==null?"":dataParms.get("c2052") %>" class="nui-textbox" name="preData.c2052"/>
            </td>
            <td id="n2052ii" colspan="1">
                <input id="combobox2052i"	value="<%=editdataParms.get("c2052")==null?"":editdataParms.get("c2052") %>" name="nextData.c2052"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2053" class="form_label"  align="center">
                2053:
            </td>
            <td id="n2053i" colspan="1">
                <input id="n2053" value="<%=dataParms.get("c2053")==null?"":dataParms.get("c2053") %>" class="nui-textbox" name="preData.c2053"/>
            </td>
            <td id="n2053ii" colspan="1">
                <input id="combobox2053i"	value="<%=editdataParms.get("c2053")==null?"":editdataParms.get("c2053") %>" name="nextData.c2053"	class="nui-textbox"/>
            </td>
            <td id="n2054" class="form_label"  align="center">
                2054:
            </td>
            <td id="n2054i" colspan="1">
                <input id="n2054" value="<%=dataParms.get("c2054")==null?"":dataParms.get("c2054") %>" class="nui-textbox" name="preData.c2054"/>
            </td>
            <td id="n2054ii" colspan="1">
                <input id="combobox2054i"	value="<%=editdataParms.get("c2054")==null?"":editdataParms.get("c2054") %>" name="nextData.c2054"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2055" class="form_label"  align="center">
                2055:
            </td>
            <td id="n2055i" colspan="1">
                <input id="n2055" value="<%=dataParms.get("c2055")==null?"":dataParms.get("c2055") %>" class="nui-textbox" name="preData.c2055"/>
            </td>
            <td id="n2055ii" colspan="1">
                <input id="combobox2055i"	value="<%=editdataParms.get("c2055")==null?"":editdataParms.get("c2055") %>" name="nextData.c2055"	class="nui-textbox"/>
            </td>
            <td id="n2056" class="form_label"  align="center">
                2056:
            </td>
            <td id="n2056i" colspan="1">
                <input id="n2056" value="<%=dataParms.get("c2056")==null?"":dataParms.get("c2056") %>" class="nui-textbox" name="preData.c2056"/>
            </td>
            <td id="n2056ii" colspan="1">
                <input id="combobox2056i"	value="<%=editdataParms.get("c2056")==null?"":editdataParms.get("c2056") %>" name="nextData.c2056"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2057" class="form_label"  align="center">
                2057:
            </td>
            <td id="n2057i" colspan="1">
                <input id="n2057" value="<%=dataParms.get("c2057")==null?"":dataParms.get("c2057") %>" class="nui-textbox" name="preData.c2057"/>
            </td>
            <td id="n2057ii" colspan="1">
                <input id="combobox2057i"	value="<%=editdataParms.get("c2057")==null?"":editdataParms.get("c2057") %>" name="nextData.c2057"	class="nui-textbox"/>
            </td>
            <td id="n2058" class="form_label"  align="center">
                2058:
            </td>
            <td id="n2058i" colspan="1">
                <input id="n2058" value="<%=dataParms.get("c2058")==null?"":dataParms.get("c2058") %>" class="nui-textbox" name="preData.c2058"/>
            </td>
            <td id="n2058ii" colspan="1">
                <input id="combobox2058i"	value="<%=editdataParms.get("c2058")==null?"":editdataParms.get("c2058") %>" name="nextData.c2058"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2059" class="form_label"  align="center">
                2059:
            </td>
            <td id="n2059i" colspan="1">
                <input id="n2059" value="<%=dataParms.get("c2059")==null?"":dataParms.get("c2059") %>" class="nui-textbox" name="preData.c2059"/>
            </td>
            <td id="n2059ii" colspan="1">
                <input id="combobox2059i"	value="<%=editdataParms.get("c2059")==null?"":editdataParms.get("c2059") %>" name="nextData.c2059"	class="nui-textbox"/>
            </td>
            <td id="n2060" class="form_label"  align="center">
                2060:
            </td>
            <td id="n2060i" colspan="1">
                <input id="n2060" value="<%=dataParms.get("c2060")==null?"":dataParms.get("c2060") %>" class="nui-textbox" name="preData.c2060"/>
            </td>
            <td id="n2060ii" colspan="1">
                <input id="combobox2060i"	value="<%=editdataParms.get("c2060")==null?"":editdataParms.get("c2060") %>" name="nextData.c2060"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2061" class="form_label"  align="center">
                2061:
            </td>
            <td id="n2061i" colspan="1">
                <input id="n2061" value="<%=dataParms.get("c2061")==null?"":dataParms.get("c2061") %>" class="nui-textbox" name="preData.c2061"/>
            </td>
            <td id="n2061ii" colspan="1">
                <input id="combobox2061i"	value="<%=editdataParms.get("c2061")==null?"":editdataParms.get("c2061") %>" name="nextData.c2061"	class="nui-textbox"/>
            </td>
            <td id="n2062" class="form_label"  align="center">
                2062:
            </td>
            <td id="n2062i" colspan="1">
                <input id="n2062" value="<%=dataParms.get("c2062")==null?"":dataParms.get("c2062") %>" class="nui-textbox" name="preData.c2062"/>
            </td>
            <td id="n2062ii" colspan="1">
                <input id="combobox2062i"	value="<%=editdataParms.get("c2062")==null?"":editdataParms.get("c2062") %>" name="nextData.c2062"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2063" class="form_label"  align="center">
                2063:
            </td>
            <td id="n2063i" colspan="1">
                <input id="n2063" value="<%=dataParms.get("c2063")==null?"":dataParms.get("c2063") %>" class="nui-textbox" name="preData.c2063"/>
            </td>
            <td id="n2063ii" colspan="1">
                <input id="combobox2063i"	value="<%=editdataParms.get("c2063")==null?"":editdataParms.get("c2063") %>" name="nextData.c2063"	class="nui-textbox"/>
            </td>
            <td id="n2064" class="form_label"  align="center">
                2064:
            </td>
            <td id="n2064i" colspan="1">
                <input id="n2064" value="<%=dataParms.get("c2064")==null?"":dataParms.get("c2064") %>" class="nui-textbox" name="preData.c2064"/>
            </td>
            <td id="n2064ii" colspan="1">
                <input id="combobox2064i"	value="<%=editdataParms.get("c2064")==null?"":editdataParms.get("c2064") %>" name="nextData.c2064"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2065" class="form_label"  align="center">
                2065:
            </td>
            <td id="n2065i" colspan="1">
                <input id="n2065" value="<%=dataParms.get("c2065")==null?"":dataParms.get("c2065") %>" class="nui-textbox" name="preData.c2065"/>
            </td>
            <td id="n2065ii" colspan="1">
                <input id="combobox2065i"	value="<%=editdataParms.get("c2065")==null?"":editdataParms.get("c2065") %>" name="nextData.c2065"	class="nui-textbox"/>
            </td>
            <td id="n2066" class="form_label"  align="center">
                2066:
            </td>
            <td id="n2066i" colspan="1">
                <input id="n2066" value="<%=dataParms.get("c2066")==null?"":dataParms.get("c2066") %>" class="nui-textbox" name="preData.c2066"/>
            </td>
            <td id="n2066ii" colspan="1">
                <input id="combobox2066i"	value="<%=editdataParms.get("c2066")==null?"":editdataParms.get("c2066") %>" name="nextData.c2066"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2067" class="form_label"  align="center">
                2067:
            </td>
            <td id="n2067i" colspan="1">
                <input id="n2067" value="<%=dataParms.get("c2067")==null?"":dataParms.get("c2067") %>" class="nui-textbox" name="preData.c2067"/>
            </td>
            <td id="n2067ii" colspan="1">
                <input id="combobox2067i"	value="<%=editdataParms.get("c2067")==null?"":editdataParms.get("c2067") %>" name="nextData.c2067"	class="nui-textbox"/>
            </td>
            <td id="n2068" class="form_label"  align="center">
                2068:
            </td>
            <td id="n2068i" colspan="1">
                <input id="n2068" value="<%=dataParms.get("c2068")==null?"":dataParms.get("c2068") %>" class="nui-textbox" name="preData.c2068"/>
            </td>
            <td id="n2068ii" colspan="1">
                <input id="combobox2068i"	value="<%=editdataParms.get("c2068")==null?"":editdataParms.get("c2068") %>" name="nextData.c2068"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2069" class="form_label"  align="center">
                2069:
            </td>
            <td id="n2069i" colspan="1">
                <input id="n2069" value="<%=dataParms.get("c2069")==null?"":dataParms.get("c2069") %>" class="nui-textbox" name="preData.c2069"/>
            </td>
            <td id="n2069ii" colspan="1">
                <input id="combobox2069i"	value="<%=editdataParms.get("c2069")==null?"":editdataParms.get("c2069") %>" name="nextData.c2069"	class="nui-textbox"/>
            </td>
            <td id="n2070" class="form_label"  align="center">
                2070:
            </td>
            <td id="n2070i" colspan="1">
                <input id="n2070" value="<%=dataParms.get("c2070")==null?"":dataParms.get("c2070") %>" class="nui-textbox" name="preData.c2070"/>
            </td>
            <td id="n2070ii" colspan="1">
                <input id="combobox2070i"	value="<%=editdataParms.get("c2070")==null?"":editdataParms.get("c2070") %>" name="nextData.c2070"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2071" class="form_label"  align="center">
                2071:
            </td>
            <td id="n2071i" colspan="1">
                <input id="n2071" value="<%=dataParms.get("c2071")==null?"":dataParms.get("c2071") %>" class="nui-textbox" name="preData.c2071"/>
            </td>
            <td id="n2071ii" colspan="1">
                <input id="combobox2071i"	value="<%=editdataParms.get("c2071")==null?"":editdataParms.get("c2071") %>" name="nextData.c2071"	class="nui-textbox"/>
            </td>
            <td id="n2072" class="form_label"  align="center">
                2072:
            </td>
            <td id="n2072i" colspan="1">
                <input id="n2072" value="<%=dataParms.get("c2072")==null?"":dataParms.get("c2072") %>" class="nui-textbox" name="preData.c2072"/>
            </td>
            <td id="n2072ii" colspan="1">
                <input id="combobox2072i"	value="<%=editdataParms.get("c2072")==null?"":editdataParms.get("c2072") %>" name="nextData.c2072"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2073" class="form_label"  align="center">
                2073:
            </td>
            <td id="n2073i" colspan="1">
                <input id="n2073" value="<%=dataParms.get("c2073")==null?"":dataParms.get("c2073") %>" class="nui-textbox" name="preData.c2073"/>
            </td>
            <td id="n2073ii" colspan="1">
                <input id="combobox2073i"	value="<%=editdataParms.get("c2073")==null?"":editdataParms.get("c2073") %>" name="nextData.c2073"	class="nui-textbox"/>
            </td>
            <td id="n2074" class="form_label"  align="center">
                2074:
            </td>
            <td id="n2074i" colspan="1">
                <input id="n2074" value="<%=dataParms.get("c2074")==null?"":dataParms.get("c2074") %>" class="nui-textbox" name="preData.c2074"/>
            </td>
            <td id="n2074ii" colspan="1">
                <input id="combobox2074i"	value="<%=editdataParms.get("c2074")==null?"":editdataParms.get("c2074") %>" name="nextData.c2074"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2075" class="form_label"  align="center">
                2075:
            </td>
            <td id="n2075i" colspan="1">
                <input id="n2075" value="<%=dataParms.get("c2075")==null?"":dataParms.get("c2075") %>" class="nui-textbox" name="preData.c2075"/>
            </td>
            <td id="n2075ii" colspan="1">
                <input id="combobox2075i"	value="<%=editdataParms.get("c2075")==null?"":editdataParms.get("c2075") %>" name="nextData.c2075"	class="nui-textbox"/>
            </td>
            <td id="n2076" class="form_label"  align="center">
                2076:
            </td>
            <td id="n2076i" colspan="1">
                <input id="n2076" value="<%=dataParms.get("c2076")==null?"":dataParms.get("c2076") %>" class="nui-textbox" name="preData.c2076"/>
            </td>
            <td id="n2076ii" colspan="1">
                <input id="combobox2076i"	value="<%=editdataParms.get("c2076")==null?"":editdataParms.get("c2076") %>" name="nextData.c2076"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2077" class="form_label"  align="center">
                2077:
            </td>
            <td id="n2077i" colspan="1">
                <input id="n2077" value="<%=dataParms.get("c2077")==null?"":dataParms.get("c2077") %>" class="nui-textbox" name="preData.c2077"/>
            </td>
            <td id="n2077ii" colspan="1">
                <input id="combobox2077i"	value="<%=editdataParms.get("c2077")==null?"":editdataParms.get("c2077") %>" name="nextData.c2077"	class="nui-textbox"/>
            </td>
            <td id="n2078" class="form_label"  align="center">
                2078:
            </td>
            <td id="n2078i" colspan="1">
                <input id="n2078" value="<%=dataParms.get("c2078")==null?"":dataParms.get("c2078") %>" class="nui-textbox" name="preData.c2078"/>
            </td>
            <td id="n2078ii" colspan="1">
                <input id="combobox2078i"	value="<%=editdataParms.get("c2078")==null?"":editdataParms.get("c2078") %>" name="nextData.c2078"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2079" class="form_label"  align="center">
                2079:
            </td>
            <td id="n2079i" colspan="1">
                <input id="n2079" value="<%=dataParms.get("c2079")==null?"":dataParms.get("c2079") %>" class="nui-textbox" name="preData.c2079"/>
            </td>
            <td id="n2079ii" colspan="1">
                <input id="combobox2079i"	value="<%=editdataParms.get("c2079")==null?"":editdataParms.get("c2079") %>" name="nextData.c2079"	class="nui-textbox"/>
            </td>
            <td id="n2080" class="form_label"  align="center">
                2080:
            </td>
            <td id="n2080i" colspan="1">
                <input id="n2080" value="<%=dataParms.get("c2080")==null?"":dataParms.get("c2080") %>" class="nui-textbox" name="preData.c2080"/>
            </td>
            <td id="n2080ii" colspan="1">
                <input id="combobox2080i"	value="<%=editdataParms.get("c2080")==null?"":editdataParms.get("c2080") %>" name="nextData.c2080"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2081" class="form_label"  align="center">
                2081:
            </td>
            <td id="n2081i" colspan="1">
                <input id="n2081" value="<%=dataParms.get("c2081")==null?"":dataParms.get("c2081") %>" class="nui-textbox" name="preData.c2081"/>
            </td>
            <td id="n2081ii" colspan="1">
                <input id="combobox2081i"	value="<%=editdataParms.get("c2081")==null?"":editdataParms.get("c2081") %>" name="nextData.c2081"	class="nui-textbox"/>
            </td>
            <td id="n2082" class="form_label"  align="center">
                2082:
            </td>
            <td id="n2082i" colspan="1">
                <input id="n2082" value="<%=dataParms.get("c2082")==null?"":dataParms.get("c2082") %>" class="nui-textbox" name="preData.c2082"/>
            </td>
            <td id="n2082ii" colspan="1">
                <input id="combobox2082i"	value="<%=editdataParms.get("c2082")==null?"":editdataParms.get("c2082") %>" name="nextData.c2082"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2083" class="form_label"  align="center">
                2083:
            </td>
            <td id="n2083i" colspan="1">
                <input id="n2083" value="<%=dataParms.get("c2083")==null?"":dataParms.get("c2083") %>" class="nui-textbox" name="preData.c2083"/>
            </td>
            <td id="n2083ii" colspan="1">
                <input id="combobox2083i"	value="<%=editdataParms.get("c2083")==null?"":editdataParms.get("c2083") %>" name="nextData.c2083"	class="nui-textbox"/>
            </td>
            <td id="n2084" class="form_label"  align="center">
                2084:
            </td>
            <td id="n2084i" colspan="1">
                <input id="n2084" value="<%=dataParms.get("c2084")==null?"":dataParms.get("c2084") %>" class="nui-textbox" name="preData.c2084"/>
            </td>
            <td id="n2084ii" colspan="1">
                <input id="combobox2084i"	value="<%=editdataParms.get("c2084")==null?"":editdataParms.get("c2084") %>" name="nextData.c2084"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2085" class="form_label"  align="center">
                2085:
            </td>
            <td id="n2085i" colspan="1">
                <input id="n2085" value="<%=dataParms.get("c2085")==null?"":dataParms.get("c2085") %>" class="nui-textbox" name="preData.c2085"/>
            </td>
            <td id="n2085ii" colspan="1">
                <input id="combobox2085i"	value="<%=editdataParms.get("c2085")==null?"":editdataParms.get("c2085") %>" name="nextData.c2085"	class="nui-textbox"/>
            </td>
            <td id="n2086" class="form_label"  align="center">
                2086:
            </td>
            <td id="n2086i" colspan="1">
                <input id="n2086" value="<%=dataParms.get("c2086")==null?"":dataParms.get("c2086") %>" class="nui-textbox" name="preData.c2086"/>
            </td>
            <td id="n2086ii" colspan="1">
                <input id="combobox2086i"	value="<%=editdataParms.get("c2086")==null?"":editdataParms.get("c2086") %>" name="nextData.c2086"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2087" class="form_label"  align="center">
                2087:
            </td>
            <td id="n2087i" colspan="1">
                <input id="n2087" value="<%=dataParms.get("c2087")==null?"":dataParms.get("c2087") %>" class="nui-textbox" name="preData.c2087"/>
            </td>
            <td id="n2087ii" colspan="1">
                <input id="combobox2087i"	value="<%=editdataParms.get("c2087")==null?"":editdataParms.get("c2087") %>" name="nextData.c2087"	class="nui-textbox"/>
            </td>
            <td id="n2088" class="form_label"  align="center">
                2088:
            </td>
            <td id="n2088i" colspan="1">
                <input id="n2088" value="<%=dataParms.get("c2088")==null?"":dataParms.get("c2088") %>" class="nui-textbox" name="preData.c2088"/>
            </td>
            <td id="n2088ii" colspan="1">
                <input id="combobox2088i"	value="<%=editdataParms.get("c2088")==null?"":editdataParms.get("c2088") %>" name="nextData.c2088"	class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2089" class="form_label"  align="center">
                2089:
            </td>
            <td id="n2089i" colspan="1">
                <input id="n2089" value="<%=dataParms.get("c2089")==null?"":dataParms.get("c2089") %>" class="nui-textbox" name="preData.c2089"/>
            </td>
            <td id="n2089ii" colspan="1">
                <input id="combobox2089i"	value="<%=editdataParms.get("c2089")==null?"":editdataParms.get("c2089") %>" name="nextData.c2089"	class="nui-textbox"/>
            </td>
        </tr>
    </table>
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td class="form_label"  align="center">
                修改人:
            </td>
            <td colspan="2">
                <input id="creator" value="<%=editdataParms.get("creator")==null?"":editdataParms.get("creator") %>" class="nui-textbox" name="nextData.creator"/>
            </td>
            <td class="form_label"  align="center">
                修改日期:
            </td>
            <td colspan="2">
                <input id="datetime" style="width: 100%" value="<%=editdataParms.get("datetime")==null?"":editdataParms.get("datetime") %>" class="nui-textbox" name="nextData.datetime"/>
            </td>
        </tr>
        <tr>
            <td class="form_label"  align="center">
                修改原因:
            </td>
            <td colspan="5">
                <input id="reason" value="<%=editdataParms.get("xgyy")==null?"":editdataParms.get("xgyy") %>"  required="true" requiredErrorText="请输入修改原因" class="nui-textarea" style="width: 100%;" name="nextData.xgyy"/>
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
        <tr id = "ccryTr">
            <td class="form_label" >
                抄送人员:
            </td>
            <td colspan="5">
                <input property="editor" id="ccry" name="ccry" class="nui-textboxlist"
                       dataField="list"  style="width:250px"
                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
                       valueField="empcode"  textField="empcodename" searchField="keyword" />

            </td>
        </tr>
    </table>

    <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
        <table width="100%">
            <tr>
                <td style="text-align:center;" colspan="4">
                    <a class="nui-button"  onclick="onSubmit()" id="btnSubmit" >
                        同意
                    </a>
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <a class="nui-button"  onclick="onBack()" id="btnBack" name="hiddenButton" >
                        驳回
                    </a>
                    <span style="display:inline-block;width:25px;">
                            </span>

                    <a class="nui-button"  onclick="onCancel()">
                        关闭
                    </a>
                </td>
            </tr>
        </table>

    </div>

</div>


<script type="text/javascript">
    nui.parse();
    var form = new nui.Form("dataform1");
    var editable = nui.get('editable').getValue();//已办
    var fields = form.getFields();
    if(editable == 'false'){//已办不可编辑
        nui.get("btnSubmit").hide();
        nui.get("btnBack").hide();
        $('#spyjId').hide();

    }

    function reloadJz(e) {
        var jdid = nui.get('jdid').getValue();
        var jzid = nui.get("jzid").getValue();
        nui.get('jzid').setValue("");
        var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
        nui.get('jzid').setUrl(url);
        nui.get('jzid').setValue(jzid);
    }


    //设置常用意见
    function setcyyj() {
        nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
    }

    $(function () {
        var baseid = nui.get('jdid').getValue();
        nui.get("jdid").doValueChanged();
        var crewid = nui.get('jzid').getValue();
        nui.get('jzid').setValue(crewid);

       var parms = "{baseid:" + baseid + ",crewid:" + crewid + ",type:n}";
        var urlStr = "com.cgn.itmp.basecommon.Common.getBaseCircle.biz.ext";
        $.ajax({
            url:urlStr,
            type:'POST',
            cache:false,
            data:parms,
            contentType:'text/json',
            success:function(data){
                var returnJson = nui.decode(data);
                if(returnJson.data.sucess){
                    var start = returnJson.data.start;
                    var end = returnJson.data.end;
                    for(var i = 1991;i < parseInt(start);i++){
                        $('#n'+i).hide();
                        $('#n'+i+"i").hide();
                        $('#n'+i+"ii").hide();
                    }
                    for(var i = parseInt(end)+11;i <= 2089 ;i++){
                        $('#n'+i).hide();
                        $('#n'+i+"i").hide();
                        $('#n'+i+"ii").hide();
                    }
                }
            }
        });
    });

    $(function() {
        var form = new nui.Form("dataform1");
        var fields = form.getFields();

        for (var i = 0, l = fields.length; i < l; i++) {
            var c = fields[i];
            if('spyj' != c.name && 'cyyj' != c.name  && 'ccry' != c.name) {
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
        }

        $(".mini-buttonedit-input").css('text-align','center');
        $(".mini-textbox-border-input").css('text-align','center');
    });


    //驳回
    function onBack(){
        var form = new nui.Form("#dataform1");;
        var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
        form.validate();


        if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}

        var data = form.getData(false,true);
        var json = nui.encode(data);
        nui.get("btnBack").setEnabled(false);
        nui.get("btnSubmit").setEnabled(false);

        $.ajax({
            url:urlStr,
            type:'POST',
            data:json,
            cache:false,
            contentType:'text/json',
            success:function(text){
                var returnJson = nui.decode(text);

                if(returnJson.exception == null){
                    nui.alert("驳回成功");
                    onCancel();
                }else{
                    nui.alert("驳回操作失败", "系统提示", function(action){
                        if(action == "ok" || action == "close"){
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

    //提交申请
    function onSubmit(){
        var form = new nui.Form("#dataform1");

        form.validate();

        if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
        var data = form.getData(false,true);
        var urlStr = "  com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.updateRealData2.biz.ext";
        var jsonData = {};
        jsonData.data = data.nextData;
        jsonData.data['type'] = 'CRG';
        jsonData.workItemId =nui.get('workItemId').getValue();
        jsonData.processInstId = nui.get('processInstId').getValue();
        jsonData.modelName = '专用检查计划(核岛)_日常';
        jsonData.middleEntity = 'com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit';
        jsonData.entityType = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Tube";
        jsonData.spyj = nui.get('spyj').getValue();
        jsonData.ccry = nui.get('ccry').getValue();

        var json = nui.encode(jsonData);

        nui.get("btnBack").setEnabled(false);
        nui.get("#btnSubmit").setEnabled(false);
        $.ajax({
            url:urlStr,
            type:'POST',
            data:json,
            cache:false,
            contentType:'text/json',
            success:function(text){
                var returnJson = nui.decode(text);
                if(returnJson.exception == null){
                    nui.alert("提交成功");

                    onCancel();
                }else{
                    nui.alert("提交失败", "系统提示", function(action){
                        if(action == "ok" || action == "close"){
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
    //取消
    function onCancel() {
        if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();
        self.parent.location.reload();

        return;
    }
</script>
</body>
</html>
