<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page import="java.util.*" %>
<%@ page import="commonj.sdo.DataObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%


    Map<String, DataObject> parms = (Map<String, DataObject>) request.getAttribute("record");
    DataObject dataParms = parms.get("dataParms");
    DataObject editdataParms = parms.get("editdataParms");
    System.out.print(dataParms.get("id"));

%>
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-23 15:24:56
- Description:
    --%>
<head>
    <title>
        专用检查计划录入
    </title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/coframe/tools/widget/jquery.ui.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css"/>
</head>
<body>
<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
<input name="pageType" class="nui-hidden"/>
<div id="dataform1" style="padding-top:5px;">
    <!-- hidden域 -->
    <input class="nui-hidden" name="tcgncgdtyrc.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
    <input class="nui-hidden" name="tcgncgdtyrc.uuid"/>
    <table id="hfid" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
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
                <input class="nui-combobox" dataField="jsonObject" id="jdid"
                       name="tcgncgdtyrc.jd" onvaluechanged="reloadJz"
                       value="<%=dataParms.get("jd")==null?"":dataParms.get("jd") %>"
                       textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"
                       valueField="id"/>
            </td>
            <td>
            </td>
            <td class="form_label" align="center">
                机组:
            </td>
            <td colspan="1">
                <input class="nui-combobox" dataField="jsonObject" id="jzid" textField="name"
                       url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext"
                       name="tcgncgdtyrc.jz" value="<%=dataParms.get("jz")==null?"":dataParms.get("jz") %>"
                       valueField="id"/>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                类型:
            </td>
            <td colspan="1">
                <input class="nui-dictcombobox" id="type"
                       value="<%=dataParms.get("type")==null?"":dataParms.get("type") %>" dictTypeId="CGDRC"
                       name="tcgncgdtyrc.type"/>
            </td>
            <td>
            </td>


            <td class="form_label" align="center">
                检查项目名称:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="checkprojectname"
                       value="<%=dataParms.get("checkprojectname")==null?"":dataParms.get("checkprojectname") %>"
                       readonly="readonly" name="tcgncgdtyrc.checkprojectname"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox"
                       value="<%=editdataParms.get("checkprojectname")==null?"":editdataParms.get("checkprojectname") %>"
                       name="tcgn.checkprojectname"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                维护项目:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="rwqd" value="<%=dataParms.get("rwqd")==null?"":dataParms.get("rwqd") %>"
                       readonly="readonly" name="tcgncgdtyrc.rwqd"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("rwqd")==null?"":editdataParms.get("rwqd") %>"
                       name="tcgn.rwqd"/>
            </td>
            <td class="form_label" align="center">
                管类:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="gl" value="<%=dataParms.get("gl")==null?"":dataParms.get("gl") %>"
                       readonly="readonly" name="tcgncgdtyrc.gl"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("gl")==null?"":editdataParms.get("gl") %>"
                       name="tcgn.gl"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                系统:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="xt" value="<%=dataParms.get("xt")==null?"":dataParms.get("xt") %>"
                       readonly="readonly" name="tcgncgdtyrc.xt"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("xt")==null?"":editdataParms.get("xt") %>"
                       name="tcgn.xt"/>
            </td>
            <td class="form_label" align="center">
                管线号:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="gxh" value="<%=dataParms.get("gxh")==null?"":dataParms.get("gxh") %>"
                       readonly="readonly" name="tcgncgdtyrc.gxh"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("gxh")==null?"":editdataParms.get("gxh") %>"
                       name="tcgn.gxh"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                主要设备:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="zysb" value="<%=dataParms.get("zysb")==null?"":dataParms.get("zysb") %>"
                       readonly="readonly" name="tcgncgdtyrc.zysb"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("zysb")==null?"":editdataParms.get("zysb") %>"
                       name="tcgn.zysb"/>
            </td>
            <td class="form_label" align="center">
                材质:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="cz" value="<%=dataParms.get("cz")==null?"":dataParms.get("cz") %>"
                       readonly="readonly" name="tcgncgdtyrc.cz"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("cz")==null?"":editdataParms.get("cz") %>"
                       name="tcgn.cz"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                公称直径(mm):
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="gczj" value="<%=dataParms.get("gczj")==null?"":dataParms.get("gczj") %>"
                       readonly="readonly" name="tcgncgdtyrc.gczj"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("gczj")==null?"":editdataParms.get("gczj") %>"
                       name="tcgn.gczj"/>
            </td>
            <td class="form_label" align="center">
                外径(mm):
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="wj" readonly="readonly"
                       value="<%=dataParms.get("wj")==null?"":dataParms.get("wj") %>" name="tcgncgdtyrc.wj"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("wj")==null?"":editdataParms.get("wj") %>"
                       name="tcgn.wj"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                名义壁厚(mm):
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="mybh" value="<%=dataParms.get("mybh")==null?"":dataParms.get("mybh") %>"
                       name="tcgncgdtyrc.mybh"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("mybh")==null?"":editdataParms.get("mybh") %>"
                       name="tcgn.mybh"/>
            </td>
            <td class="form_label" align="center">
                进口:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="jk" value="<%=dataParms.get("jk")==null?"":dataParms.get("jk") %>"
                       name="tcgncgdtyrc.jk"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("jk")==null?"":editdataParms.get("jk") %>"
                       name="tcgn.jk"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                出口:
            </td>
            <td colspan="1">
                <input class="nui-textbox" id="ck" value="<%=dataParms.get("ck")==null?"":dataParms.get("ck") %>"
                       name="tcgncgdtyrc.ck"/>
            </td>
            <td colspan="1">
                <input class="nui-textbox" value="<%=editdataParms.get("ck")==null?"":editdataParms.get("ck") %>"
                       name="tcgn.ck"/>
            </td>
            <td class="form_label" align="center">
                流程图/等轴图号:
            </td>
            <td colspan="1">
                <input class="nui-textarea" id="lct" value="<%=dataParms.get("lct")==null?"":dataParms.get("lct") %>"
                       style="width: 100%" name="tcgncgdtyrc.lct"/>
            </td>
            <td colspan="1">
                <input class="nui-textarea" style="width: 100%"
                       value="<%=editdataParms.get("lct")==null?"":editdataParms.get("lct") %>" name="tcgn.lct"/>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                检查部位/检查内容:
            </td>
            <td colspan="1">
                <input class="nui-textarea" id="jcbw" value="<%=dataParms.get("jcbw")==null?"":dataParms.get("jcbw") %>"
                       readonly="readonly" style="width: 100%" name="tcgncgdtyrc.jcbw"/>
            </td>
            <td colspan="1">
                <input class="nui-textarea" style="width: 100%"
                       value="<%=editdataParms.get("jcbw")==null?"":editdataParms.get("jcbw") %>" name="tcgn.jcbw"/>
            </td>
            <td class="form_label" align="center">
                备注:
            </td>
            <td colspan="1">
                <input class="nui-textarea" id="bz" readonly="readonly"
                       value="<%=dataParms.get("bz")==null?"":dataParms.get("bz") %>" style="width: 100%"
                       name="tcgncgdtyrc.bz"/>
            </td>
            <td colspan="1">
                <input class="nui-textarea" value="<%=editdataParms.get("bz")==null?"":editdataParms.get("bz") %>"
                       style="width: 100%" name="tcgn.bz"/>
            </td>
        </tr>
    </table>
    <table id="nd" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td id="n1991" class="form_label" align="center">
                1991:
            </td>
            <td id="n1991i" colspan="1">
                <input id="n1991" value="<%=dataParms.get("n1991")==null?"":dataParms.get("n1991") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c1991"/>
            </td>
            <td id="n1991ii" colspan="1">
                <input id="combobox1991i" value="<%=editdataParms.get("n1991")==null?"":editdataParms.get("n1991") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n1992" class="form_label" align="center">
                1992:
            </td>
            <td id="n1992i" colspan="1">
                <input id="n1992" value="<%=dataParms.get("n1992")==null?"":dataParms.get("n1992") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c1992"/>
            </td>
            <td id="n1992ii" colspan="1">
                <input id="combobox1992i" value="<%=editdataParms.get("n1992")==null?"":editdataParms.get("n1992") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n1993" class="form_label" align="center">
                1993:
            </td>
            <td id="n1993i" colspan="1">
                <input id="n1993" value="<%=dataParms.get("n1993")==null?"":dataParms.get("n1993") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c1993"/>
            </td>
            <td id="n1993ii" colspan="1">
                <input id="combobox1993i" value="<%=editdataParms.get("n1993")==null?"":editdataParms.get("n1993") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n1994" class="form_label" align="center">
                1994:
            </td>
            <td id="n1994i" colspan="1">
                <input id="n1994" value="<%=dataParms.get("n1994")==null?"":dataParms.get("n1994") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c1994"/>
            </td>
            <td id="n1994ii" colspan="1">
                <input id="combobox1994i" value="<%=editdataParms.get("n1994")==null?"":editdataParms.get("n1994") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n1995" class="form_label" align="center">
                1995:
            </td>
            <td id="n1995i" colspan="1">
                <input id="n1995" value="<%=dataParms.get("n1995")==null?"":dataParms.get("n1995") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c1995"/>
            </td>
            <td id="n1995ii" colspan="1">
                <input id="combobox1995i" value="<%=editdataParms.get("n1995")==null?"":editdataParms.get("n1995") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n1996" class="form_label" align="center">
                1996:
            </td>
            <td id="n1996i" colspan="1">
                <input id="n1996" value="<%=dataParms.get("n1996")==null?"":dataParms.get("n1996") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c1996"/>
            </td>
            <td id="n1996ii" colspan="1">
                <input id="combobox1996i" value="<%=editdataParms.get("n1996")==null?"":editdataParms.get("n1996") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n1997" class="form_label" align="center">
                1997:
            </td>
            <td id="n1997i" colspan="1">
                <input id="n1997" value="<%=dataParms.get("n1997")==null?"":dataParms.get("n1997") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c1997"/>
            </td>
            <td id="n1997ii" colspan="1">
                <input id="combobox1997i" value="<%=editdataParms.get("n1997")==null?"":editdataParms.get("n1997") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n1998" class="form_label" align="center">
                1998:
            </td>
            <td id="n1998i" colspan="1">
                <input id="n1998" value="<%=dataParms.get("n1998")==null?"":dataParms.get("n1998") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c1998"/>
            </td>
            <td id="n1998ii" colspan="1">
                <input id="combobox1998i" value="<%=editdataParms.get("n1998")==null?"":editdataParms.get("n1998") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n1999" class="form_label" align="center">
                1999:
            </td>
            <td id="n1999i" colspan="1">
                <input id="n1999" value="<%=dataParms.get("n1999")==null?"":dataParms.get("n1999") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c1999"/>
            </td>
            <td id="n1999ii" colspan="1">
                <input id="combobox1999i" value="<%=editdataParms.get("n1999")==null?"":editdataParms.get("n1999") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2000" class="form_label" align="center">
                2000:
            </td>
            <td id="n2000i" colspan="1">
                <input id="n2000" value="<%=dataParms.get("n2000")==null?"":dataParms.get("n2000") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2000"/>
            </td>
            <td id="n2000ii" colspan="1">
                <input id="combobox2000i" value="<%=editdataParms.get("n2000")==null?"":editdataParms.get("n2000") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2001" class="form_label" align="center">
                2001:
            </td>
            <td id="n2001i" colspan="1">
                <input id="n2001" value="<%=dataParms.get("n2001")==null?"":dataParms.get("n2001") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2001"/>
            </td>
            <td id="n2001ii" colspan="1">
                <input id="combobox2001i" value="<%=editdataParms.get("n2001")==null?"":editdataParms.get("n2001") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2002" class="form_label" align="center">
                2002:
            </td>
            <td id="n2002i" colspan="1">
                <input id="n2002" value="<%=dataParms.get("n2002")==null?"":dataParms.get("n2002") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2002"/>
            </td>
            <td id="n2002ii" colspan="1">
                <input id="combobox2002i" value="<%=editdataParms.get("n2002")==null?"":editdataParms.get("n2002") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2003" class="form_label" align="center">
                2003:
            </td>
            <td id="n2003i" colspan="1">
                <input id="n2003" value="<%=dataParms.get("n2003")==null?"":dataParms.get("n2003") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2003"/>
            </td>
            <td id="n2003ii" colspan="1">
                <input id="combobox2003i" value="<%=editdataParms.get("n2003")==null?"":editdataParms.get("n2003") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2004" class="form_label" align="center">
                2004:
            </td>
            <td id="n2004i" colspan="1">
                <input id="n2004" value="<%=dataParms.get("n2004")==null?"":dataParms.get("n2004") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2004"/>
            </td>
            <td id="n2004ii" colspan="1">
                <input id="combobox2004i" value="<%=editdataParms.get("n2004")==null?"":editdataParms.get("n2004") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2005" class="form_label" align="center">
                2005:
            </td>
            <td id="n2005i" colspan="1">
                <input id="n2005" value="<%=dataParms.get("n2005")==null?"":dataParms.get("n2005") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2005"/>
            </td>
            <td id="n2005ii" colspan="1">
                <input id="combobox2005i" value="<%=editdataParms.get("n2005")==null?"":editdataParms.get("n2005") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2006" class="form_label" align="center">
                2006:
            </td>
            <td id="n2006i" colspan="1">
                <input id="n2006" value="<%=dataParms.get("n2006")==null?"":dataParms.get("n2006") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2006"/>
            </td>
            <td id="n2006ii" colspan="1">
                <input id="combobox2006i" value="<%=editdataParms.get("n2006")==null?"":editdataParms.get("n2006") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2007" class="form_label" align="center">
                2007:
            </td>
            <td id="n2007i" colspan="1">
                <input id="n2007" value="<%=dataParms.get("n2007")==null?"":dataParms.get("n2007") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2007"/>
            </td>
            <td id="n2007ii" colspan="1">
                <input id="combobox2007i" value="<%=editdataParms.get("n2007")==null?"":editdataParms.get("n2007") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2008" class="form_label" align="center">
                2008:
            </td>
            <td id="n2008i" colspan="1">
                <input id="n2008" value="<%=dataParms.get("n2008")==null?"":dataParms.get("n2008") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2008"/>
            </td>
            <td id="n2008ii" colspan="1">
                <input id="combobox2008i" value="<%=editdataParms.get("n2008")==null?"":editdataParms.get("n2008") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2009" class="form_label" align="center">
                2009:
            </td>
            <td id="n2009i" colspan="1">
                <input id="n2009" value="<%=dataParms.get("n2009")==null?"":dataParms.get("n2009") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2009"/>
            </td>
            <td id="n2009ii" colspan="1">
                <input id="combobox2009i" value="<%=editdataParms.get("n2009")==null?"":editdataParms.get("n2009") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2010" class="form_label" align="center">
                2010:
            </td>
            <td id="n2010i" colspan="1">
                <input id="n2010" value="<%=dataParms.get("n2010")==null?"":dataParms.get("n2010") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2010"/>
            </td>
            <td id="n2010ii" colspan="1">
                <input id="combobox2010i" value="<%=editdataParms.get("n2010")==null?"":editdataParms.get("n2010") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2011" class="form_label" align="center">
                2011:
            </td>
            <td id="n2011i" colspan="1">
                <input id="n2011" value="<%=dataParms.get("n2011")==null?"":dataParms.get("n2011") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2011"/>
            </td>
            <td id="n2011ii" colspan="1">
                <input id="combobox2011i" value="<%=editdataParms.get("n2011")==null?"":editdataParms.get("n2011") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2012" class="form_label" align="center">
                2012:
            </td>
            <td id="n2012i" colspan="1">
                <input id="n2012" value="<%=dataParms.get("n2012")==null?"":dataParms.get("n2012") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2012"/>
            </td>
            <td id="n2012ii" colspan="1">
                <input id="combobox2012i" value="<%=editdataParms.get("n2012")==null?"":editdataParms.get("n2012") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2013" class="form_label" align="center">
                2013:
            </td>
            <td id="n2013i" colspan="1">
                <input id="n2013" value="<%=dataParms.get("n2013")==null?"":dataParms.get("n2013") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2013"/>
            </td>
            <td id="n2013ii" colspan="1">
                <input id="combobox2013i" value="<%=editdataParms.get("n2013")==null?"":editdataParms.get("n2013") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2014" class="form_label" align="center">
                2014:
            </td>
            <td id="n2014i" colspan="1">
                <input id="n2014" value="<%=dataParms.get("n2014")==null?"":dataParms.get("n2014") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2014"/>
            </td>
            <td id="n2014ii" colspan="1">
                <input id="combobox2014i" value="<%=editdataParms.get("n2014")==null?"":editdataParms.get("n2014") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2015" class="form_label" align="center">
                2015:
            </td>
            <td id="n2015i" colspan="1">
                <input id="n2015" value="<%=dataParms.get("n2015")==null?"":dataParms.get("n2015") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2015"/>
            </td>
            <td id="n2015ii" colspan="1">
                <input id="combobox2015i" value="<%=editdataParms.get("n2015")==null?"":editdataParms.get("n2015") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2016" class="form_label" align="center">
                2016:
            </td>
            <td id="n2016i" colspan="1">
                <input id="n2016" value="<%=dataParms.get("n2016")==null?"":dataParms.get("n2016") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2016"/>
            </td>
            <td id="n2016ii" colspan="1">
                <input id="combobox2016i" value="<%=editdataParms.get("n2016")==null?"":editdataParms.get("n2016") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2017" class="form_label" align="center">
                2017:
            </td>
            <td id="n2017i" colspan="1">
                <input id="n2017" value="<%=dataParms.get("n2017")==null?"":dataParms.get("n2017") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2017"/>
            </td>
            <td id="n2017ii" colspan="1">
                <input id="combobox2017i" value="<%=editdataParms.get("n2017")==null?"":editdataParms.get("n2017") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2018" class="form_label" align="center">
                2018:
            </td>
            <td id="n2018i" colspan="1">
                <input id="n2018" value="<%=dataParms.get("n2018")==null?"":dataParms.get("n2018") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2018"/>
            </td>
            <td id="n2018ii" colspan="1">
                <input id="combobox2018i" value="<%=editdataParms.get("n2018")==null?"":editdataParms.get("n2018") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2019" class="form_label" align="center">
                2019:
            </td>
            <td id="n2019i" colspan="1">
                <input id="n2019" value="<%=dataParms.get("n2019")==null?"":dataParms.get("n2019") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2019"/>
            </td>
            <td id="n2019ii" colspan="1">
                <input id="combobox2019i" value="<%=editdataParms.get("n2019")==null?"":editdataParms.get("n2019") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2020" class="form_label" align="center">
                2020:
            </td>
            <td id="n2020i" colspan="1">
                <input id="n2020" value="<%=dataParms.get("n2020")==null?"":dataParms.get("n2020") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2020"/>
            </td>
            <td id="n2020ii" colspan="1">
                <input id="combobox2020i" value="<%=editdataParms.get("n2020")==null?"":editdataParms.get("n2020") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2021" class="form_label" align="center">
                2021:
            </td>
            <td id="n2021i" colspan="1">
                <input id="n2021" value="<%=dataParms.get("n2021")==null?"":dataParms.get("n2021") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2021"/>
            </td>
            <td id="n2021ii" colspan="1">
                <input id="combobox2021i" value="<%=editdataParms.get("n2021")==null?"":editdataParms.get("n2021") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2022" class="form_label" align="center">
                2022:
            </td>
            <td id="n2022i" colspan="1">
                <input id="n2022" value="<%=dataParms.get("n2022")==null?"":dataParms.get("n2022") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2022"/>
            </td>
            <td id="n2022ii" colspan="1">
                <input id="combobox2022i" value="<%=editdataParms.get("n2022")==null?"":editdataParms.get("n2022") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2023" class="form_label" align="center">
                2023:
            </td>
            <td id="n2023i" colspan="1">
                <input id="n2023" value="<%=dataParms.get("n2023")==null?"":dataParms.get("n2023") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2023"/>
            </td>
            <td id="n2023ii" colspan="1">
                <input id="combobox2023i" value="<%=editdataParms.get("n2023")==null?"":editdataParms.get("n2023") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2024" class="form_label" align="center">
                2024:
            </td>
            <td id="n2024i" colspan="1">
                <input id="n2024" value="<%=dataParms.get("n2024")==null?"":dataParms.get("n2024") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2024"/>
            </td>
            <td id="n2024ii" colspan="1">
                <input id="combobox2024i" value="<%=editdataParms.get("n2024")==null?"":editdataParms.get("n2024") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2025" class="form_label" align="center">
                2025:
            </td>
            <td id="n2025i" colspan="1">
                <input id="n2025" value="<%=dataParms.get("n2025")==null?"":dataParms.get("n2025") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2025"/>
            </td>
            <td id="n2025ii" colspan="1">
                <input id="combobox2025i" value="<%=editdataParms.get("n2025")==null?"":editdataParms.get("n2025") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2026" class="form_label" align="center">
                2026:
            </td>
            <td id="n2026i" colspan="1">
                <input id="n2026" value="<%=dataParms.get("n2026")==null?"":dataParms.get("n2026") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2026"/>
            </td>
            <td id="n2026ii" colspan="1">
                <input id="combobox2026i" value="<%=editdataParms.get("n2026")==null?"":editdataParms.get("n2026") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2027" class="form_label" align="center">
                2027:
            </td>
            <td id="n2027i" colspan="1">
                <input id="n2027" value="<%=dataParms.get("n2027")==null?"":dataParms.get("n2027") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2027"/>
            </td>
            <td id="n2027ii" colspan="1">
                <input id="combobox2027i" value="<%=editdataParms.get("n2027")==null?"":editdataParms.get("n2027") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2028" class="form_label" align="center">
                2028:
            </td>
            <td id="n2028i" colspan="1">
                <input id="n2028" value="<%=dataParms.get("n2028")==null?"":dataParms.get("n2028") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2028"/>
            </td>
            <td id="n2028ii" colspan="1">
                <input id="combobox2028i" value="<%=editdataParms.get("n2028")==null?"":editdataParms.get("n2028") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2029" class="form_label" align="center">
                2029:
            </td>
            <td id="n2029i" colspan="1">
                <input id="n2029" value="<%=dataParms.get("n2029")==null?"":dataParms.get("n2029") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2029"/>
            </td>
            <td id="n2029ii" colspan="1">
                <input id="combobox2029i" value="<%=editdataParms.get("n2029")==null?"":editdataParms.get("n2029") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2030" class="form_label" align="center">
                2030:
            </td>
            <td id="n2030i" colspan="1">
                <input id="n2030" value="<%=dataParms.get("n2030")==null?"":dataParms.get("n2030") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2030"/>
            </td>
            <td id="n2030ii" colspan="1">
                <input id="combobox2030i" value="<%=editdataParms.get("n2030")==null?"":editdataParms.get("n2030") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2031" class="form_label" align="center">
                2031:
            </td>
            <td id="n2031i" colspan="1">
                <input id="n2031" value="<%=dataParms.get("n2031")==null?"":dataParms.get("n2031") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2031"/>
            </td>
            <td id="n2031ii" colspan="1">
                <input id="combobox2031i" value="<%=editdataParms.get("n2031")==null?"":editdataParms.get("n2031") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2032" class="form_label" align="center">
                2032:
            </td>
            <td id="n2032i" colspan="1">
                <input id="n2032" value="<%=dataParms.get("n2032")==null?"":dataParms.get("n2032") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2032"/>
            </td>
            <td id="n2032ii" colspan="1">
                <input id="combobox2032i" value="<%=editdataParms.get("n2032")==null?"":editdataParms.get("n2032") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2033" class="form_label" align="center">
                2033:
            </td>
            <td id="n2033i" colspan="1">
                <input id="n2033" value="<%=dataParms.get("n2033")==null?"":dataParms.get("n2033") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2033"/>
            </td>
            <td id="n2033ii" colspan="1">
                <input id="combobox2033i" value="<%=editdataParms.get("n2033")==null?"":editdataParms.get("n2033") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2034" class="form_label" align="center">
                2034:
            </td>
            <td id="n2034i" colspan="1">
                <input id="n2034" value="<%=dataParms.get("n2034")==null?"":dataParms.get("n2034") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2034"/>
            </td>
            <td id="n2034ii" colspan="1">
                <input id="combobox2034i" value="<%=editdataParms.get("n2034")==null?"":editdataParms.get("n2034") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2035" class="form_label" align="center">
                2035:
            </td>
            <td id="n2035i" colspan="1">
                <input id="n2035" value="<%=dataParms.get("n2035")==null?"":dataParms.get("n2035") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2035"/>
            </td>
            <td id="n2035ii" colspan="1">
                <input id="combobox2035i" value="<%=editdataParms.get("n2035")==null?"":editdataParms.get("n2035") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2036" class="form_label" align="center">
                2036:
            </td>
            <td id="n2036i" colspan="1">
                <input id="n2036" value="<%=dataParms.get("n2036")==null?"":dataParms.get("n2036") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2036"/>
            </td>
            <td id="n2036ii" colspan="1">
                <input id="combobox2036i" value="<%=editdataParms.get("n2036")==null?"":editdataParms.get("n2036") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2037" class="form_label" align="center">
                2037:
            </td>
            <td id="n2037i" colspan="1">
                <input id="n2037" value="<%=dataParms.get("n2037")==null?"":dataParms.get("n2037") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2037"/>
            </td>
            <td id="n2037ii" colspan="1">
                <input id="combobox2037i" value="<%=editdataParms.get("n2037")==null?"":editdataParms.get("n2037") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2038" class="form_label" align="center">
                2038:
            </td>
            <td id="n2038i" colspan="1">
                <input id="n2038" value="<%=dataParms.get("n2038")==null?"":dataParms.get("n2038") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2038"/>
            </td>
            <td id="n2038ii" colspan="1">
                <input id="combobox2038i" value="<%=editdataParms.get("n2038")==null?"":editdataParms.get("n2038") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2039" class="form_label" align="center">
                2039:
            </td>
            <td id="n2039i" colspan="1">
                <input id="n2039" value="<%=dataParms.get("n2039")==null?"":dataParms.get("n2039") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2039"/>
            </td>
            <td id="n2039ii" colspan="1">
                <input id="combobox2039i" value="<%=editdataParms.get("n2039")==null?"":editdataParms.get("n2039") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2040" class="form_label" align="center">
                2040:
            </td>
            <td id="n2040i" colspan="1">
                <input id="n2040" value="<%=dataParms.get("n2040")==null?"":dataParms.get("n2040") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2040"/>
            </td>
            <td id="n2040ii" colspan="1">
                <input id="combobox2040i" value="<%=editdataParms.get("n2040")==null?"":editdataParms.get("n2040") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2041" class="form_label" align="center">
                2041:
            </td>
            <td id="n2041i" colspan="1">
                <input id="n2041" value="<%=dataParms.get("n2041")==null?"":dataParms.get("n2041") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2041"/>
            </td>
            <td id="n2041ii" colspan="1">
                <input id="combobox2041i" value="<%=editdataParms.get("n2041")==null?"":editdataParms.get("n2041") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2042" class="form_label" align="center">
                2042:
            </td>
            <td id="n2042i" colspan="1">
                <input id="n2042" value="<%=dataParms.get("n2042")==null?"":dataParms.get("n2042") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2042"/>
            </td>
            <td id="n2042ii" colspan="1">
                <input id="combobox2042i" value="<%=editdataParms.get("n2042")==null?"":editdataParms.get("n2042") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2043" class="form_label" align="center">
                2043:
            </td>
            <td id="n2043i" colspan="1">
                <input id="n2043" value="<%=dataParms.get("n2043")==null?"":dataParms.get("n2043") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2043"/>
            </td>
            <td id="n2043ii" colspan="1">
                <input id="combobox2043i" value="<%=editdataParms.get("n2043")==null?"":editdataParms.get("n2043") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2044" class="form_label" align="center">
                2044:
            </td>
            <td id="n2044i" colspan="1">
                <input id="n2044" value="<%=dataParms.get("n2044")==null?"":dataParms.get("n2044") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2044"/>
            </td>
            <td id="n2044ii" colspan="1">
                <input id="combobox2044i" value="<%=editdataParms.get("n2044")==null?"":editdataParms.get("n2044") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2045" class="form_label" align="center">
                2045:
            </td>
            <td id="n2045i" colspan="1">
                <input id="n2045" value="<%=dataParms.get("n2045")==null?"":dataParms.get("n2045") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2045"/>
            </td>
            <td id="n2045ii" colspan="1">
                <input id="combobox2045i" value="<%=editdataParms.get("n2045")==null?"":editdataParms.get("n2045") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2046" class="form_label" align="center">
                2046:
            </td>
            <td id="n2046i" colspan="1">
                <input id="n2046" value="<%=dataParms.get("n2046")==null?"":dataParms.get("n2046") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2046"/>
            </td>
            <td id="n2046ii" colspan="1">
                <input id="combobox2046i" value="<%=editdataParms.get("n2046")==null?"":editdataParms.get("n2046") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2047" class="form_label" align="center">
                2047:
            </td>
            <td id="n2047i" colspan="1">
                <input id="n2047" value="<%=dataParms.get("n2047")==null?"":dataParms.get("n2047") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2047"/>
            </td>
            <td id="n2047ii" colspan="1">
                <input id="combobox2047i" value="<%=editdataParms.get("n2047")==null?"":editdataParms.get("n2047") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2048" class="form_label" align="center">
                2048:
            </td>
            <td id="n2048i" colspan="1">
                <input id="n2048" value="<%=dataParms.get("n2048")==null?"":dataParms.get("n2048") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2048"/>
            </td>
            <td id="n2048ii" colspan="1">
                <input id="combobox2048i" value="<%=editdataParms.get("n2048")==null?"":editdataParms.get("n2048") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2049" class="form_label" align="center">
                2049:
            </td>
            <td id="n2049i" colspan="1">
                <input id="n2049" value="<%=dataParms.get("n2049")==null?"":dataParms.get("n2049") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2049"/>
            </td>
            <td id="n2049ii" colspan="1">
                <input id="combobox2049i" value="<%=editdataParms.get("n2049")==null?"":editdataParms.get("n2049") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2050" class="form_label" align="center">
                2050:
            </td>
            <td id="n2050i" colspan="1">
                <input id="n2050" value="<%=dataParms.get("n2050")==null?"":dataParms.get("n2050") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2050"/>
            </td>
            <td id="n2050ii" colspan="1">
                <input id="combobox2050i" value="<%=editdataParms.get("n2050")==null?"":editdataParms.get("n2050") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2051" class="form_label" align="center">
                2051:
            </td>
            <td id="n2051i" colspan="1">
                <input id="n2051" value="<%=dataParms.get("n2051")==null?"":dataParms.get("n2051") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2051"/>
            </td>
            <td id="n2051ii" colspan="1">
                <input id="combobox2051i" value="<%=editdataParms.get("n2051")==null?"":editdataParms.get("n2051") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2052" class="form_label" align="center">
                2052:
            </td>
            <td id="n2052i" colspan="1">
                <input id="n2052" value="<%=dataParms.get("n2052")==null?"":dataParms.get("n2052") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2052"/>
            </td>
            <td id="n2052ii" colspan="1">
                <input id="combobox2052i" value="<%=editdataParms.get("n2052")==null?"":editdataParms.get("n2052") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2053" class="form_label" align="center">
                2053:
            </td>
            <td id="n2053i" colspan="1">
                <input id="n2053" value="<%=dataParms.get("n2053")==null?"":dataParms.get("n2053") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2053"/>
            </td>
            <td id="n2053ii" colspan="1">
                <input id="combobox2053i" value="<%=editdataParms.get("n2053")==null?"":editdataParms.get("n2053") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2054" class="form_label" align="center">
                2054:
            </td>
            <td id="n2054i" colspan="1">
                <input id="n2054" value="<%=dataParms.get("n2054")==null?"":dataParms.get("n2054") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2054"/>
            </td>
            <td id="n2054ii" colspan="1">
                <input id="combobox2054i" value="<%=editdataParms.get("n2054")==null?"":editdataParms.get("n2054") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2055" class="form_label" align="center">
                2055:
            </td>
            <td id="n2055i" colspan="1">
                <input id="n2055" value="<%=dataParms.get("n2055")==null?"":dataParms.get("n2055") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2055"/>
            </td>
            <td id="n2055ii" colspan="1">
                <input id="combobox2055i" value="<%=editdataParms.get("n2055")==null?"":editdataParms.get("n2055") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2056" class="form_label" align="center">
                2056:
            </td>
            <td id="n2056i" colspan="1">
                <input id="n2056" value="<%=dataParms.get("n2056")==null?"":dataParms.get("n2056") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2056"/>
            </td>
            <td id="n2056ii" colspan="1">
                <input id="combobox2056i" value="<%=editdataParms.get("n2056")==null?"":editdataParms.get("n2056") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2057" class="form_label" align="center">
                2057:
            </td>
            <td id="n2057i" colspan="1">
                <input id="n2057" value="<%=dataParms.get("n2057")==null?"":dataParms.get("n2057") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2057"/>
            </td>
            <td id="n2057ii" colspan="1">
                <input id="combobox2057i" value="<%=editdataParms.get("n2057")==null?"":editdataParms.get("n2057") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2058" class="form_label" align="center">
                2058:
            </td>
            <td id="n2058i" colspan="1">
                <input id="n2058" value="<%=dataParms.get("n2058")==null?"":dataParms.get("n2058") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2058"/>
            </td>
            <td id="n2058ii" colspan="1">
                <input id="combobox2058i" value="<%=editdataParms.get("n2058")==null?"":editdataParms.get("n2058") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2059" class="form_label" align="center">
                2059:
            </td>
            <td id="n2059i" colspan="1">
                <input id="n2059" value="<%=dataParms.get("n2059")==null?"":dataParms.get("n2059") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2059"/>
            </td>
            <td id="n2059ii" colspan="1">
                <input id="combobox2059i" value="<%=editdataParms.get("n2059")==null?"":editdataParms.get("n2059") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2060" class="form_label" align="center">
                2060:
            </td>
            <td id="n2060i" colspan="1">
                <input id="n2060" value="<%=dataParms.get("n2060")==null?"":dataParms.get("n2060") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2060"/>
            </td>
            <td id="n2060ii" colspan="1">
                <input id="combobox2060i" value="<%=editdataParms.get("n2060")==null?"":editdataParms.get("n2060") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2061" class="form_label" align="center">
                2061:
            </td>
            <td id="n2061i" colspan="1">
                <input id="n2061" value="<%=dataParms.get("n2061")==null?"":dataParms.get("n2061") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2061"/>
            </td>
            <td id="n2061ii" colspan="1">
                <input id="combobox2061i" value="<%=editdataParms.get("n2061")==null?"":editdataParms.get("n2061") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2062" class="form_label" align="center">
                2062:
            </td>
            <td id="n2062i" colspan="1">
                <input id="n2062" value="<%=dataParms.get("n2062")==null?"":dataParms.get("n2062") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2062"/>
            </td>
            <td id="n2062ii" colspan="1">
                <input id="combobox2062i" value="<%=editdataParms.get("n2062")==null?"":editdataParms.get("n2062") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2063" class="form_label" align="center">
                2063:
            </td>
            <td id="n2063i" colspan="1">
                <input id="n2063" value="<%=dataParms.get("n2063")==null?"":dataParms.get("n2063") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2063"/>
            </td>
            <td id="n2063ii" colspan="1">
                <input id="combobox2063i" value="<%=editdataParms.get("n2063")==null?"":editdataParms.get("n2063") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2064" class="form_label" align="center">
                2064:
            </td>
            <td id="n2064i" colspan="1">
                <input id="n2064" value="<%=dataParms.get("n2064")==null?"":dataParms.get("n2064") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2064"/>
            </td>
            <td id="n2064ii" colspan="1">
                <input id="combobox2064i" value="<%=editdataParms.get("n2064")==null?"":editdataParms.get("n2064") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2065" class="form_label" align="center">
                2065:
            </td>
            <td id="n2065i" colspan="1">
                <input id="n2065" value="<%=dataParms.get("n2065")==null?"":dataParms.get("n2065") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2065"/>
            </td>
            <td id="n2065ii" colspan="1">
                <input id="combobox2065i" value="<%=editdataParms.get("n2065")==null?"":editdataParms.get("n2065") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2066" class="form_label" align="center">
                2066:
            </td>
            <td id="n2066i" colspan="1">
                <input id="n2066" value="<%=dataParms.get("n2066")==null?"":dataParms.get("n2066") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2066"/>
            </td>
            <td id="n2066ii" colspan="1">
                <input id="combobox2066i" value="<%=editdataParms.get("n2066")==null?"":editdataParms.get("n2066") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2067" class="form_label" align="center">
                2067:
            </td>
            <td id="n2067i" colspan="1">
                <input id="n2067" value="<%=dataParms.get("n2067")==null?"":dataParms.get("n2067") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2067"/>
            </td>
            <td id="n2067ii" colspan="1">
                <input id="combobox2067i" value="<%=editdataParms.get("n2067")==null?"":editdataParms.get("n2067") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2068" class="form_label" align="center">
                2068:
            </td>
            <td id="n2068i" colspan="1">
                <input id="n2068" value="<%=dataParms.get("n2068")==null?"":dataParms.get("n2068") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2068"/>
            </td>
            <td id="n2068ii" colspan="1">
                <input id="combobox2068i" value="<%=editdataParms.get("n2068")==null?"":editdataParms.get("n2068") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2069" class="form_label" align="center">
                2069:
            </td>
            <td id="n2069i" colspan="1">
                <input id="n2069" value="<%=dataParms.get("n2069")==null?"":dataParms.get("n2069") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2069"/>
            </td>
            <td id="n2069ii" colspan="1">
                <input id="combobox2069i" value="<%=editdataParms.get("n2069")==null?"":editdataParms.get("n2069") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2070" class="form_label" align="center">
                2070:
            </td>
            <td id="n2070i" colspan="1">
                <input id="n2070" value="<%=dataParms.get("n2070")==null?"":dataParms.get("n2070") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2070"/>
            </td>
            <td id="n2070ii" colspan="1">
                <input id="combobox2070i" value="<%=editdataParms.get("n2070")==null?"":editdataParms.get("n2070") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2071" class="form_label" align="center">
                2071:
            </td>
            <td id="n2071i" colspan="1">
                <input id="n2071" value="<%=dataParms.get("n2071")==null?"":dataParms.get("n2071") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2071"/>
            </td>
            <td id="n2071ii" colspan="1">
                <input id="combobox2071i" value="<%=editdataParms.get("n2071")==null?"":editdataParms.get("n2071") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2072" class="form_label" align="center">
                2072:
            </td>
            <td id="n2072i" colspan="1">
                <input id="n2072" value="<%=dataParms.get("n2072")==null?"":dataParms.get("n2072") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2072"/>
            </td>
            <td id="n2072ii" colspan="1">
                <input id="combobox2072i" value="<%=editdataParms.get("n2072")==null?"":editdataParms.get("n2072") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2073" class="form_label" align="center">
                2073:
            </td>
            <td id="n2073i" colspan="1">
                <input id="n2073" value="<%=dataParms.get("n2073")==null?"":dataParms.get("n2073") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2073"/>
            </td>
            <td id="n2073ii" colspan="1">
                <input id="combobox2073i" value="<%=editdataParms.get("n2073")==null?"":editdataParms.get("n2073") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2074" class="form_label" align="center">
                2074:
            </td>
            <td id="n2074i" colspan="1">
                <input id="n2074" value="<%=dataParms.get("n2074")==null?"":dataParms.get("n2074") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2074"/>
            </td>
            <td id="n2074ii" colspan="1">
                <input id="combobox2074i" value="<%=editdataParms.get("n2074")==null?"":editdataParms.get("n2074") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2075" class="form_label" align="center">
                2075:
            </td>
            <td id="n2075i" colspan="1">
                <input id="n2075" value="<%=dataParms.get("n2075")==null?"":dataParms.get("n2075") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2075"/>
            </td>
            <td id="n2075ii" colspan="1">
                <input id="combobox2075i" value="<%=editdataParms.get("n2075")==null?"":editdataParms.get("n2075") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2076" class="form_label" align="center">
                2076:
            </td>
            <td id="n2076i" colspan="1">
                <input id="n2076" value="<%=dataParms.get("n2076")==null?"":dataParms.get("n2076") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2076"/>
            </td>
            <td id="n2076ii" colspan="1">
                <input id="combobox2076i" value="<%=editdataParms.get("n2076")==null?"":editdataParms.get("n2076") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2077" class="form_label" align="center">
                2077:
            </td>
            <td id="n2077i" colspan="1">
                <input id="n2077" value="<%=dataParms.get("n2077")==null?"":dataParms.get("n2077") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2077"/>
            </td>
            <td id="n2077ii" colspan="1">
                <input id="combobox2077i" value="<%=editdataParms.get("n2077")==null?"":editdataParms.get("n2077") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2078" class="form_label" align="center">
                2078:
            </td>
            <td id="n2078i" colspan="1">
                <input id="n2078" value="<%=dataParms.get("n2078")==null?"":dataParms.get("n2078") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2078"/>
            </td>
            <td id="n2078ii" colspan="1">
                <input id="combobox2078i" value="<%=editdataParms.get("n2078")==null?"":editdataParms.get("n2078") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2079" class="form_label" align="center">
                2079:
            </td>
            <td id="n2079i" colspan="1">
                <input id="n2079" value="<%=dataParms.get("n2079")==null?"":dataParms.get("n2079") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2079"/>
            </td>
            <td id="n2079ii" colspan="1">
                <input id="combobox2079i" value="<%=editdataParms.get("n2079")==null?"":editdataParms.get("n2079") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2080" class="form_label" align="center">
                2080:
            </td>
            <td id="n2080i" colspan="1">
                <input id="n2080" value="<%=dataParms.get("n2080")==null?"":dataParms.get("n2080") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2080"/>
            </td>
            <td id="n2080ii" colspan="1">
                <input id="combobox2080i" value="<%=editdataParms.get("n2080")==null?"":editdataParms.get("n2080") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2081" class="form_label" align="center">
                2081:
            </td>
            <td id="n2081i" colspan="1">
                <input id="n2081" value="<%=dataParms.get("n2081")==null?"":dataParms.get("n2081") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2081"/>
            </td>
            <td id="n2081ii" colspan="1">
                <input id="combobox2081i" value="<%=editdataParms.get("n2081")==null?"":editdataParms.get("n2081") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2082" class="form_label" align="center">
                2082:
            </td>
            <td id="n2082i" colspan="1">
                <input id="n2082" value="<%=dataParms.get("n2082")==null?"":dataParms.get("n2082") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2082"/>
            </td>
            <td id="n2082ii" colspan="1">
                <input id="combobox2082i" value="<%=editdataParms.get("n2082")==null?"":editdataParms.get("n2082") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2083" class="form_label" align="center">
                2083:
            </td>
            <td id="n2083i" colspan="1">
                <input id="n2083" value="<%=dataParms.get("n2083")==null?"":dataParms.get("n2083") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2083"/>
            </td>
            <td id="n2083ii" colspan="1">
                <input id="combobox2083i" value="<%=editdataParms.get("n2083")==null?"":editdataParms.get("n2083") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2084" class="form_label" align="center">
                2084:
            </td>
            <td id="n2084i" colspan="1">
                <input id="n2084" value="<%=dataParms.get("n2084")==null?"":dataParms.get("n2084") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2084"/>
            </td>
            <td id="n2084ii" colspan="1">
                <input id="combobox2084i" value="<%=editdataParms.get("n2084")==null?"":editdataParms.get("n2084") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2085" class="form_label" align="center">
                2085:
            </td>
            <td id="n2085i" colspan="1">
                <input id="n2085" value="<%=dataParms.get("n2085")==null?"":dataParms.get("n2085") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2085"/>
            </td>
            <td id="n2085ii" colspan="1">
                <input id="combobox2085i" value="<%=editdataParms.get("n2085")==null?"":editdataParms.get("n2085") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2086" class="form_label" align="center">
                2086:
            </td>
            <td id="n2086i" colspan="1">
                <input id="n2086" value="<%=dataParms.get("n2086")==null?"":dataParms.get("n2086") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2086"/>
            </td>
            <td id="n2086ii" colspan="1">
                <input id="combobox2086i" value="<%=editdataParms.get("n2086")==null?"":editdataParms.get("n2086") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2087" class="form_label" align="center">
                2087:
            </td>
            <td id="n2087i" colspan="1">
                <input id="n2087" value="<%=dataParms.get("n2087")==null?"":dataParms.get("n2087") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2087"/>
            </td>
            <td id="n2087ii" colspan="1">
                <input id="combobox2087i" value="<%=editdataParms.get("n2087")==null?"":editdataParms.get("n2087") %>"
                       class="nui-textbox"/>
            </td>
            <td id="n2088" class="form_label" align="center">
                2088:
            </td>
            <td id="n2088i" colspan="1">
                <input id="n2088" value="<%=dataParms.get("n2088")==null?"":dataParms.get("n2088") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2088"/>
            </td>
            <td id="n2088ii" colspan="1">
                <input id="combobox2088i" value="<%=editdataParms.get("n2088")==null?"":editdataParms.get("n2088") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
        <tr>
            <td id="n2089" class="form_label" align="center">
                2089:
            </td>
            <td id="n2089i" colspan="1">
                <input id="n2089" value="<%=dataParms.get("n2089")==null?"":dataParms.get("n2089") %>"
                       class="nui-textbox" name="tcgncgdtyrc.c2089"/>
            </td>
            <td id="n2089ii" colspan="1">
                <input id="combobox2089i" value="<%=editdataParms.get("n2089")==null?"":editdataParms.get("n2089") %>"
                       class="nui-textbox"/>
            </td>
        </tr>
    </table>
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr>
            <td class="form_label" align="center">
                发起人:
            </td>
            <td colspan="2">
                <%=editdataParms.get("creator")==null?"":editdataParms.get("creator") %>
                <%--<input id="creator" value="<%=editdataParms.get("creator")==null?"":editdataParms.get("creator") %>"--%>
                       <%--class="nui-textbox"/>--%>
            </td>

            <td class="form_label" align="center">
                发起时间:
            </td>
            <td colspan="2">
                <%=editdataParms.get("datetime")==null?"":editdataParms.get("datetime") %>
                <%--<input id="datetime" value="<%=editdataParms.get("datetime")==null?"":editdataParms.get("datetime") %>"--%>
                       <%--class="nui-textbox"/>--%>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="center">
                发起原因:
            </td>
            <td colspan="5">
                <input id="reason" value="<%=editdataParms.get("reason")==null?"":editdataParms.get("reason") %>"
                       class="nui-textarea" required="true" requiredErrorText="请输入修改原因" style="width: 100%"
                       name="tcgncgdtyrc.reason"/>
            </td>
        </tr>
    </table>
</div>


<script type="text/javascript">
    nui.parse();

    $(function () {
        var form = new nui.Form("dataform1");
        var fields = form.getFields();
        for (var i = 0, l = fields.length; i < l; i++) {
            var c = fields[i];
            if (c.setReadOnly) c.setEnabled(false);     //只读
            if (c.setIsValid) c.setIsValid(true);      //去除错误提示
            if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
        }


        var jdid = '<%= dataParms.get("jd")%>';
        var jzid = '<%= dataParms.get("jz")%>';
        var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
        nui.get("jzid").setUrl(url);
        var parms = "{baseid:" + jdid + ",crewid:" + jzid + ",type:n}";
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
                        $('#n' + i).hide();
                        $('#n' + i + "i").hide();
                        $('#n' + i + "ii").hide();
                    }
                    for (var i = parseInt(end) + 11; i <= 2089; i++) {
                        $('#n' + i).hide();
                        $('#n' + i + "i").hide();
                        $('#n' + i + "ii").hide();
                    }
                }
            }
        });
    });


    //页面间传输json数据
    function setFormData(data) {
        //跨页面传递的数据对象，克隆后才可以安全使用
        var infos = nui.clone(data);
        nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
        nui.getbyName("pageType").setValue(infos.pageType);
    }

    //关闭窗口
    function CloseWindow(action) {
        if (action == "close" && form.isChanged()) {
            if (confirm("数据被修改了，是否先保存？")) {
                saveData();
            }
        }
        if (window.CloseOwnerWindow)
            return window.CloseOwnerWindow(action);
        else window.close();
    }

    //确定保存或更新
    function onOk() {
        saveData();
    }

    //取消
    function onCancel() {
        CloseWindow("cancel");
    }

</script>
</body>
</html>
