<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page import="java.util.*" %>
<%@ page import="commonj.sdo.DataObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%


Map<String, DataObject> parms = (Map<String, DataObject>)request.getAttribute("record");
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
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
		<script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
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
            <input class="nui-hidden" name="tcgncgdylgd.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
        <input class="nui-hidden" name="tcgncgdylgd.uuid"/>
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
                          	<td class="form_label"  align="center">
                        基地:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" value="<%=dataParms.get("jd")==null?"":dataParms.get("jd") %>" dataField="jsonObject" id="jdid"
                      name="tcgncgdylgd.jd" onvaluechanged="reloadJz"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id"/>
                    </td>
                    <td>
                    </td>
                     <td class="form_label" align="center" >
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox"value="<%=dataParms.get("jz")==null?"":dataParms.get("jz") %>" dataField="jsonObject" id="jzid" textField="name" 
                      url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext"
                      name="tcgncgdylgd.jz"  valueField="id"/>
                    </td>   
                    <td>
                    </td>
         		</tr>  
         		<tr>
                   <td class="form_label"   align="center">
                        类型:
                    </td>
                      <td colspan="1">
                        <input class="nui-dictcombobox" id="type" value="<%=dataParms.get("type")==null?"":dataParms.get("type") %>"  dictTypeId="CGDRC"    name="tcgncgdylgd.type"/>
                    </td>
                      <td>
                    </td>
                  
                   
                  <td class="form_label"   align="center">
                        检查项目名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"value="<%=dataParms.get("checkprojectname")==null?"":dataParms.get("checkprojectname") %>" id="checkprojectname" readonly="readonly" name="tcgncgdylgd.checkprojectname"/>
                    </td>
                      <td colspan="1">
                        <input class="nui-textbox" value="<%=editdataParms.get("checkprojectname")==null?"":editdataParms.get("checkprojectname") %>"name="tcgn.checkprojectname"/>
                    </td>
                      </tr>
                <tr>
                    <td class="form_label"   align="center">
                        维护项目:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="rwqd" value="<%=dataParms.get("rwqd")==null?"":dataParms.get("rwqd") %>" readonly="readonly" name="tcgncgdylgd.rwqd"/>
                    </td>
                     <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("rwqd")==null?"":editdataParms.get("rwqd") %>" name="tcgn.rwqd"/>
                    </td>
                    <td class="form_label"   align="center">
                        管类:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="gl"  readonly="readonly"value="<%=dataParms.get("gl")==null?"":dataParms.get("gl") %>"name="tcgncgdylgd.gl"/>
                    </td>
                     <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("gl")==null?"":editdataParms.get("gl") %>" name="tcgn.gl"/>
                    </td>
                    </tr>
                <tr>
                    <td class="form_label"   align="center">
                        项目来源:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" dictTypeId="protype" id="xt"  value="<%=dataParms.get("xt")==null?"":dataParms.get("xt") %>"readonly="readonly" name="tcgncgdylgd.xt"/>
                    </td>
                 <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("xt")==null?"":editdataParms.get("xt") %>" name="tcgn.xt"/>
                    </td>
                    <td class="form_label"   align="center">
                        管线号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="gxh"  value="<%=dataParms.get("gxh")==null?"":dataParms.get("gxh") %>"readonly="readonly" name="tcgncgdylgd.gxh"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("gxh")==null?"":editdataParms.get("gxh") %>" name="tcgn.gxh"/>
                    </td>
                      </tr>
                <tr>
                    <td class="form_label"   align="center">
                        材质:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="cz" value="<%=dataParms.get("cz")==null?"":dataParms.get("cz") %>" readonly="readonly" name="tcgncgdylgd.cz"/>
                    </td>
                   <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("cz")==null?"":editdataParms.get("cz") %>" name="tcgn.cz"/>
                    </td>
                   
                      <td class="form_label"   align="center">
                        UT数量:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="utsl" value="<%=dataParms.get("utsl")==null?"":dataParms.get("utsl") %>" name="tcgncgdylgd.utsl"/>
                    </td>
               <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("utsl")==null?"":editdataParms.get("utsl") %>" name="tcgn.utsl"/>
                    </td>
                    </tr>
                <tr>
                    <td class="form_label"   align="center">
                        FAC:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox"id="fac"  dictTypeId="FAC"value="<%=dataParms.get("fac")==null?"":dataParms.get("fac") %>" readonly="readonly"name="tcgncgdylgd.fac"/>
                    </td>
                 <td colspan="1">
                        <input class="nui-dictcombobox" dictTypeId="FAC"value="<%=editdataParms.get("fac")==null?"":editdataParms.get("fac") %>" name="tcgn.fac"/>
                    </td>
                    <td class="form_label"   align="center">
                        测厚部位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="jcbw" value="<%=dataParms.get("jcbw")==null?"":dataParms.get("jcbw") %>" readonly="readonly" name="tcgncgdylgd.jcbw"/>
                    </td>
                     <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("jcbw")==null?"":editdataParms.get("jcbw") %>" name="tcgn.jcbw"/>
                    </td>
                    </tr>
                <tr>
                    <td class="form_label"   align="center">
                        测厚数量:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" id="jcsl"value="<%=dataParms.get("jcsl")==null?"":dataParms.get("jcsl") %>"  readonly="readonly"name="tcgncgdylgd.jcsl"/>
                    </td>
                  <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("jcsl")==null?"":editdataParms.get("jcsl") %>" name="tcgn.jcsl"/>
                    </td>
                    <td class="form_label"   align="center">
                        UT 部位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" id="utbw"value="<%=dataParms.get("utbw")==null?"":dataParms.get("utbw") %>" name="tcgncgdylgd.utbw"/>
                    </td>
                     <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("utbw")==null?"":editdataParms.get("utbw") %>" name="tcgn.utbw"/>
                    </td>
                      </tr>
                <tr>
                   <td class="form_label"   align="center">
                        等轴图号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" id="lct"value="<%=dataParms.get("lct")==null?"":dataParms.get("lct") %>" style="width: 100%" readonly="readonly" name="tcgncgdylgd.lct"/>
                    </td>
                     <td colspan="1">
                        <input class="nui-textarea" value="<%=editdataParms.get("lct")==null?"":editdataParms.get("lct") %>"style="width: 100%" name="tcgn.lct"/>
                    </td>
                   
                    <td class="form_label"   align="center">
                        备注:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea"id="bz"  readonly="readonly"value="<%=dataParms.get("bz")==null?"":dataParms.get("bz") %>" style="width: 100%" name="tcgncgdylgd.bz"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" style="width: 100%"value="<%=editdataParms.get("bz")==null?"":editdataParms.get("bz") %>" name="tcgn.bz"/>
                    </td>
                </tr>
                </table>
          <table id="zq" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
	             <tr>
					<td id="c1" class="form_label"  align="center">
						   C1:
					</td>
					<td id="c1i" colspan="1">
						<input id="c1" value="<%=dataParms.get("c1")==null?"":dataParms.get("c1") %>"  class="nui-textbox" name="tcgncgdylgd.c1"/>
					</td>
					<td id="c1ii" colspan="1">
						<input id="combobox1i" value="<%=editdataParms.get("c1")==null?"":editdataParms.get("c1") %>"  class="nui-textbox"/>
					</td>
					<td id="c2" class="form_label"  align="center">
						C2:
					</td>
					<td id="c2i" colspan="1">
						<input id="c2" value="<%=dataParms.get("c2")==null?"":dataParms.get("c2") %>"  class="nui-textbox" name="tcgncgdylgd.c2"/>
					</td>
					<td id="c2ii" colspan="1">
						<input id="combobox2i" value="<%=editdataParms.get("c2")==null?"":editdataParms.get("c1") %>"  class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c3" class="form_label"  align="center">
						   C3:
					</td>
					<td id="c3i" colspan="1">
						<input id="c3" value="<%=dataParms.get("c3")==null?"":dataParms.get("c3") %>"  class="nui-textbox" name="tcgncgdylgd.c3"/>
					</td>
					<td id="c3ii" colspan="1">
						<input id="combobox3i" value="<%=editdataParms.get("c3")==null?"":editdataParms.get("c3") %>"  class="nui-textbox"/>
					</td>
					<td id="c4" class="form_label"  align="center">
						C4:
					</td>
					<td id="c4i" colspan="1">
						<input id="c4" value="<%=dataParms.get("c4")==null?"":dataParms.get("c4") %>"  class="nui-textbox" name="tcgncgdylgd.c4"/>
					</td>
					<td id="c4ii" colspan="1">
						<input id="combobox4i"	value="<%=editdataParms.get("c4")==null?"":editdataParms.get("c4") %>"	class="nui-textbox"/>
					</td>
				</tr>
				
				
				<tr>
					<td id="c5" class="form_label"  align="center">
						   C5:
					</td>
					<td id="c5i" colspan="1">
						<input id="c5" value="<%=dataParms.get("c5")==null?"":dataParms.get("c5") %>"  class="nui-textbox" name="tcgncgdylgd.c5"/>
					</td>
					<td id="c5ii" colspan="1">
						<input id="combobox5i"	value="<%=editdataParms.get("c5")==null?"":editdataParms.get("c5") %>"	class="nui-textbox"/>
					</td>
					<td id="c6" class="form_label"  align="center">
						C6:
					</td>
					<td id="c6i" colspan="1">
						<input id="c6" value="<%=dataParms.get("c6")==null?"":dataParms.get("c6") %>"  class="nui-textbox" name="tcgncgdylgd.c6"/>
					</td>
					<td id="c6ii" colspan="1">
						<input id="combobox6i"	value="<%=editdataParms.get("c6")==null?"":editdataParms.get("c6") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c7" class="form_label"  align="center">
						   C7:
					</td>
					<td id="c7i" colspan="1">
						<input id="c7" value="<%=dataParms.get("c7")==null?"":dataParms.get("c7") %>"  class="nui-textbox" name="tcgncgdylgd.c7"/>
					</td>
					<td id="c7ii" colspan="1">
						<input id="combobox7i"	value="<%=editdataParms.get("c7")==null?"":editdataParms.get("c7") %>"	class="nui-textbox"/>
					</td>
					<td id="c8" class="form_label"  align="center">
						C8:
					</td>
					<td id="c8i" colspan="1">
						<input id="c8" value="<%=dataParms.get("c8")==null?"":dataParms.get("c8") %>"  class="nui-textbox" name="tcgncgdylgd.c8"/>
					</td>
					<td id="c8ii" colspan="1">
						<input id="combobox8i"	value="<%=editdataParms.get("c8")==null?"":editdataParms.get("c8") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c9" class="form_label"  align="center">
						   C9:
					</td>
					<td id="c9i" colspan="1">
						<input id="c9" value="<%=dataParms.get("c9")==null?"":dataParms.get("c9") %>" class="nui-textbox" name="tcgncgdylgd.c9"/>
					</td>
					<td id="c9ii" colspan="1">
						<input id="combobox9i"	value="<%=editdataParms.get("c9")==null?"":editdataParms.get("c9") %>"	class="nui-textbox"/>
					</td>
					<td id="c10" class="form_label"  align="center">
						C10:
					</td>
					<td id="c10i" colspan="1">
						<input id="c10" value="<%=dataParms.get("c10")==null?"":dataParms.get("c10") %>" class="nui-textbox" name="tcgncgdylgd.c10"/>
					</td>
					<td id="c10ii" colspan="1">
						<input id="combobox10i"	value="<%=editdataParms.get("c10")==null?"":editdataParms.get("c10") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c11" class="form_label"  align="center">
						   C11:
					</td>
					<td id="c11i" colspan="1">
						<input id="c11" value="<%=dataParms.get("c11")==null?"":dataParms.get("c11") %>" class="nui-textbox" name="tcgncgdylgd.c11"/>
					</td>
					<td id="c11ii" colspan="1">
						<input id="combobox11i"	value="<%=editdataParms.get("c11")==null?"":editdataParms.get("c11") %>"	class="nui-textbox"/>
					</td>
					<td id="c12" class="form_label"  align="center">
						C12:
					</td>
					<td id="c12i" colspan="1">
						<input id="c12" value="<%=dataParms.get("c12")==null?"":dataParms.get("c12") %>" class="nui-textbox" name="tcgncgdylgd.c12"/>
					</td>
					<td id="c12ii" colspan="1">
						<input id="combobox12i"	value="<%=editdataParms.get("c12")==null?"":editdataParms.get("c12") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c13" class="form_label"  align="center">
						   C13:
					</td>
					<td id="c13i" colspan="1">
						<input id="c13" value="<%=dataParms.get("c13")==null?"":dataParms.get("c13") %>" class="nui-textbox" name="tcgncgdylgd.c13"/>
					</td>
					<td id="c13ii" colspan="1">
						<input id="combobox13i"	value="<%=editdataParms.get("c13")==null?"":editdataParms.get("c13") %>"	class="nui-textbox"/>
					</td>
					<td id="c14" class="form_label"  align="center">
						C14:
					</td>
					<td id="c14i" colspan="1">
						<input id="c14" value="<%=dataParms.get("c14")==null?"":dataParms.get("c14") %>" class="nui-textbox" name="tcgncgdylgd.c14"/>
					</td>
					<td id="c14ii" colspan="1">
						<input id="combobox14i"	value="<%=editdataParms.get("c14")==null?"":editdataParms.get("c14") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c15" class="form_label"  align="center">
						   C15:
					</td>
					<td id="c15i" colspan="1">
						<input id="c15" value="<%=dataParms.get("c15")==null?"":dataParms.get("c15") %>" class="nui-textbox" name="tcgncgdylgd.c15"/>
					</td>
					<td id="c15ii" colspan="1">
						<input id="combobox15i"	value="<%=editdataParms.get("c15")==null?"":editdataParms.get("c15") %>"	class="nui-textbox"/>
					</td>
					<td id="c16" class="form_label"  align="center">
						C16:
					</td>
					<td id="c16i" colspan="1">
						<input id="c16" value="<%=dataParms.get("c16")==null?"":dataParms.get("c16") %>" class="nui-textbox" name="tcgncgdylgd.c16"/>
					</td>
					<td id="c16ii" colspan="1">
						<input id="combobox16i"	value="<%=editdataParms.get("c16")==null?"":editdataParms.get("c16") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c17" class="form_label"  align="center">
						   C17:
					</td>
					<td id="c17i" colspan="1">
						<input id="c17" value="<%=dataParms.get("c17")==null?"":dataParms.get("c17") %>" class="nui-textbox" name="tcgncgdylgd.c17"/>
					</td>
					<td id="c17ii" colspan="1">
						<input id="combobox17i"	value="<%=editdataParms.get("c17")==null?"":editdataParms.get("c17") %>"	class="nui-textbox"/>
					</td>
					<td id="c18" class="form_label"  align="center">
						C18:
					</td>
					<td id="c18i" colspan="1">
						<input id="c18" value="<%=dataParms.get("c18")==null?"":dataParms.get("c18") %>" class="nui-textbox" name="tcgncgdylgd.c18"/>
					</td>
					<td id="c18ii" colspan="1">
						<input id="combobox18i"	value="<%=editdataParms.get("c18")==null?"":editdataParms.get("c18") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c19" class="form_label"  align="center">
						   C19:
					</td>
					<td id="c19i" colspan="1">
						<input id="c19" value="<%=dataParms.get("c19")==null?"":dataParms.get("c19") %>" class="nui-textbox" name="tcgncgdylgd.c19"/>
					</td>
					<td id="c19ii" colspan="1">
						<input id="combobox19i"	value="<%=editdataParms.get("c19")==null?"":editdataParms.get("c19") %>"	class="nui-textbox"/>
					</td>
					<td id="c20" class="form_label"  align="center">
						C20:
					</td>
					<td id="c20i" colspan="1">
						<input id="c20" value="<%=dataParms.get("c20")==null?"":dataParms.get("c20") %>" class="nui-textbox" name="tcgncgdylgd.c20"/>
					</td>
					<td id="c20ii" colspan="1">
						<input id="combobox20i"	value="<%=editdataParms.get("c20")==null?"":editdataParms.get("c20") %>"	class="nui-textbox"/>
					</td>
				</tr>
             	<tr>
					<td id="c21" class="form_label"  align="center">
						   C21:
					</td>
					<td id="c21i" colspan="1">
						<input id="c21" value="<%=dataParms.get("c21")==null?"":dataParms.get("c21") %>" class="nui-textbox" name="tcgncgdylgd.c21"/>
					</td>
					<td id="c21ii" colspan="1">
						<input id="combobox21i"	value="<%=editdataParms.get("c21")==null?"":editdataParms.get("c21") %>"	class="nui-textbox"/>
					</td>
					<td id="c22" class="form_label"  align="center">
						C22:
					</td>
					<td id="c22i" colspan="1">
						<input id="c22" value="<%=dataParms.get("c22")==null?"":dataParms.get("c22") %>" class="nui-textbox" name="tcgncgdylgd.c22"/>
					</td>
					<td id="c22ii" colspan="1">
						<input id="combobox22i"	value="<%=editdataParms.get("c22")==null?"":editdataParms.get("c22") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c23" class="form_label"  align="center">
						   C23:
					</td>
					<td id="c23i" colspan="1">
						<input id="c23" value="<%=dataParms.get("c23")==null?"":dataParms.get("c23") %>" class="nui-textbox" name="tcgncgdylgd.c23"/>
					</td>
					<td id="c23ii" colspan="1">
						<input id="combobox23i"	value="<%=editdataParms.get("c23")==null?"":editdataParms.get("c23") %>"	class="nui-textbox"/>
					</td>
					<td id="c24" class="form_label"  align="center">
						C24:
					</td>
					<td id="c24i" colspan="1">
						<input id="c24" value="<%=dataParms.get("c24")==null?"":dataParms.get("c24") %>" class="nui-textbox" name="tcgncgdylgd.c24"/>
					</td>
					<td id="c24ii" colspan="1">
						<input id="combobox24i"	value="<%=editdataParms.get("c24")==null?"":editdataParms.get("c24") %>"	class="nui-textbox"/>
					</td>
				</tr>
				
				
				<tr>
					<td id="c25" class="form_label"  align="center">
						   C25:
					</td>
					<td id="c25i" colspan="1">
						<input id="c25" value="<%=dataParms.get("c25")==null?"":dataParms.get("c25") %>" class="nui-textbox" name="tcgncgdylgd.c25"/>
					</td>
					<td id="c25ii" colspan="1">
						<input id="combobox25i"	value="<%=editdataParms.get("c25")==null?"":editdataParms.get("c25") %>"	class="nui-textbox"/>
					</td>
					<td id="c26" class="form_label"  align="center">
						C26:
					</td>
					<td id="c26i" colspan="1">
						<input id="c26" value="<%=dataParms.get("c26")==null?"":dataParms.get("c26") %>" class="nui-textbox" name="tcgncgdylgd.c26"/>
					</td>
					<td id="c26ii" colspan="1">
						<input id="combobox26i"	value="<%=editdataParms.get("c26")==null?"":editdataParms.get("c26") %>"	class="nui-textbox"/>
					</td>
				</tr>
				
				<tr>
					<td id="c27" class="form_label"  align="center">
						   C27:
					</td>
					<td id="c27i" colspan="1">
						<input id="c27" value="<%=dataParms.get("c27")==null?"":dataParms.get("c27") %>" class="nui-textbox" name="tcgncgdylgd.c27"/>
					</td>
					<td id="c27ii" colspan="1">
						<input id="combobox27i"	value="<%=editdataParms.get("c27")==null?"":editdataParms.get("c27") %>"	class="nui-textbox"/>
					</td>
					<td id="c28" class="form_label"  align="center">
						C28:
					</td>
					<td id="c28i" colspan="1">
						<input id="c28" value="<%=dataParms.get("c28")==null?"":dataParms.get("c28") %>" class="nui-textbox" name="tcgncgdylgd.c28"/>
					</td>
					<td id="c28ii" colspan="1">
						<input id="combobox28i"	value="<%=editdataParms.get("c28")==null?"":editdataParms.get("c28") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c29" class="form_label"  align="center">
						   C29:
					</td>
					<td id="c29i" colspan="1">
						<input id="c29" value="<%=dataParms.get("c29")==null?"":dataParms.get("c29") %>" class="nui-textbox" name="tcgncgdylgd.c29"/>
					</td>
					<td id="c29ii" colspan="1">
						<input id="combobox29i"	value="<%=editdataParms.get("c29")==null?"":editdataParms.get("c29") %>"	class="nui-textbox"/>
					</td>
					<td id="c30" class="form_label"  align="center">
						C30:
					</td>
					<td id="c30i" colspan="1">
						<input id="c30" value="<%=dataParms.get("c30")==null?"":dataParms.get("c30") %>" class="nui-textbox" name="tcgncgdylgd.c30"/>
					</td>
					<td id="c30ii" colspan="1">
						<input id="combobox30i"	value="<%=editdataParms.get("c30")==null?"":editdataParms.get("c30") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c31" class="form_label"  align="center">
						   C31:
					</td>
					<td id="c31i" colspan="1">
						<input id="c31" value="<%=dataParms.get("c31")==null?"":dataParms.get("c31") %>" class="nui-textbox" name="tcgncgdylgd.c31"/>
					</td>
					<td id="c31ii" colspan="1">
						<input id="combobox31i"	value="<%=editdataParms.get("c31")==null?"":editdataParms.get("c31") %>"	class="nui-textbox"/>
					</td>
					<td id="c32" class="form_label"  align="center">
						C32:
					</td>
					<td id="c32i" colspan="1">
						<input id="c32" value="<%=dataParms.get("c32")==null?"":dataParms.get("c32") %>" class="nui-textbox" name="tcgncgdylgd.c32"/>
					</td>
					<td id="c32ii" colspan="1">
						<input id="combobox32i"	value="<%=editdataParms.get("c32")==null?"":editdataParms.get("c32") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c33" class="form_label"  align="center">
						   C33:
					</td>
					<td id="c33i" colspan="1">
						<input id="c33" value="<%=dataParms.get("c33")==null?"":dataParms.get("c33") %>" class="nui-textbox" name="tcgncgdylgd.c33"/>
					</td>
					<td id="c33ii" colspan="1">
						<input id="combobox33i"	value="<%=editdataParms.get("c33")==null?"":editdataParms.get("c33") %>"	class="nui-textbox"/>
					</td>
					<td id="c34" class="form_label"  align="center">
						C34:
					</td>
					<td id="c34i" colspan="1">
						<input id="c34" value="<%=dataParms.get("c34")==null?"":dataParms.get("c34") %>" class="nui-textbox" name="tcgncgdylgd.c34"/>
					</td>
					<td id="c34ii" colspan="1">
						<input id="combobox34i"	value="<%=editdataParms.get("c34")==null?"":editdataParms.get("c34") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c35" class="form_label"  align="center">
						   C35:
					</td>
					<td id="c35i" colspan="1">
						<input id="c35" value="<%=dataParms.get("c35")==null?"":dataParms.get("c35") %>" class="nui-textbox" name="tcgncgdylgd.c35"/>
					</td>
					<td id="c35ii" colspan="1">
						<input id="combobox35i"	value="<%=editdataParms.get("c35")==null?"":editdataParms.get("c35") %>"	class="nui-textbox"/>
					</td>
					<td id="c36" class="form_label"  align="center">
						C36:
					</td>
					<td id="c36i" colspan="1">
						<input id="c36" value="<%=dataParms.get("c36")==null?"":dataParms.get("c36") %>" class="nui-textbox" name="tcgncgdylgd.c36"/>
					</td>
					<td id="c36ii" colspan="1">
						<input id="combobox36i"	value="<%=editdataParms.get("c36")==null?"":editdataParms.get("c36") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c37" class="form_label"  align="center">
						   C37:
					</td>
					<td id="c37i" colspan="1">
						<input id="c37" value="<%=dataParms.get("c37")==null?"":dataParms.get("c37") %>" class="nui-textbox" name="tcgncgdylgd.c37"/>
					</td>
					<td id="c37ii" colspan="1">
						<input id="combobox37i"	value="<%=editdataParms.get("c37")==null?"":editdataParms.get("c37") %>"	class="nui-textbox"/>
					</td>
					<td id="c38" class="form_label"  align="center">
						C38:
					</td>
					<td id="c38i" colspan="1">
						<input id="c38" value="<%=dataParms.get("c38")==null?"":dataParms.get("c38") %>" class="nui-textbox" name="tcgncgdylgd.c38"/>
					</td>
					<td id="c38ii" colspan="1">
						<input id="combobox38i"	value="<%=editdataParms.get("c38")==null?"":editdataParms.get("c38") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c39" class="form_label"  align="center">
						   C39:
					</td>
					<td id="c39i" colspan="1">
						<input id="c39" value="<%=dataParms.get("c39")==null?"":dataParms.get("c39") %>" class="nui-textbox" name="tcgncgdylgd.c39"/>
					</td>
					<td id="c39ii" colspan="1">
						<input id="combobox39i"	value="<%=editdataParms.get("c39")==null?"":editdataParms.get("c39") %>"	class="nui-textbox"/>
					</td>
					<td id="c40" class="form_label"  align="center">
						C40:
					</td>
					<td id="c40i" colspan="1">
						<input id="c40" value="<%=dataParms.get("c40")==null?"":dataParms.get("c40") %>" class="nui-textbox" name="tcgncgdylgd.c40"/>
					</td>
					<td id="c40ii" colspan="1">
						<input id="combobox40i"	value="<%=editdataParms.get("c40")==null?"":editdataParms.get("c40") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c41" class="form_label"  align="center">
						   C41:
					</td>
					<td id="c41i" colspan="1">
						<input id="c41" value="<%=dataParms.get("c41")==null?"":dataParms.get("c41") %>" class="nui-textbox" name="tcgncgdylgd.c41"/>
					</td>
					<td id="c41ii" colspan="1">
						<input id="combobox41i"	value="<%=editdataParms.get("c41")==null?"":editdataParms.get("c41") %>"	class="nui-textbox"/>
					</td>
					<td id="c42" class="form_label"  align="center">
						C42:
					</td>
					<td id="c42i" colspan="1">
						<input id="c42" value="<%=dataParms.get("c42")==null?"":dataParms.get("c42") %>" class="nui-textbox" name="tcgncgdylgd.c42"/>
					</td>
					<td id="c42ii" colspan="1">
						<input id="combobox42i"	value="<%=editdataParms.get("c42")==null?"":editdataParms.get("c42") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c43" class="form_label"  align="center">
						   C43:
					</td>
					<td id="c43i" colspan="1">
						<input id="c43" value="<%=dataParms.get("c43")==null?"":dataParms.get("c43") %>" class="nui-textbox" name="tcgncgdylgd.c43"/>
					</td>
					<td id="c43ii" colspan="1">
						<input id="combobox43i"	value="<%=editdataParms.get("c43")==null?"":editdataParms.get("c43") %>"	class="nui-textbox"/>
					</td>
					<td id="c44" class="form_label"  align="center">
						C44:
					</td>
					<td id="c44i" colspan="1">
						<input id="c44" value="<%=dataParms.get("c44")==null?"":dataParms.get("c44") %>" class="nui-textbox" name="tcgncgdylgd.c44"/>
					</td>
					<td id="c44ii" colspan="1">
						<input id="combobox44i"	value="<%=editdataParms.get("c44")==null?"":editdataParms.get("c44") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c45" class="form_label"  align="center">
						   C45:
					</td>
					<td id="c45i" colspan="1">
						<input id="c45" value="<%=dataParms.get("c45")==null?"":dataParms.get("c45") %>" class="nui-textbox" name="tcgncgdylgd.c45"/>
					</td>
					<td id="c45ii" colspan="1">
						<input id="combobox45i"	value="<%=editdataParms.get("c45")==null?"":editdataParms.get("c45") %>"	class="nui-textbox"/>
					</td>
					<td id="c46" class="form_label"  align="center">
						C46:
					</td>
					<td id="c46i" colspan="1">
						<input id="c46" value="<%=dataParms.get("c46")==null?"":dataParms.get("c46") %>" class="nui-textbox" name="tcgncgdylgd.c46"/>
					</td>
					<td id="c46ii" colspan="1">
						<input id="combobox46i"	value="<%=editdataParms.get("c46")==null?"":editdataParms.get("c46") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c47" class="form_label"  align="center">
						   C47:
					</td>
					<td id="c47i" colspan="1">
						<input id="c47" value="<%=dataParms.get("c47")==null?"":dataParms.get("c47") %>" class="nui-textbox" name="tcgncgdylgd.c47"/>
					</td>
					<td id="c47ii" colspan="1">
						<input id="combobox47i"	value="<%=editdataParms.get("c47")==null?"":editdataParms.get("c47") %>"	class="nui-textbox"/>
					</td>
					<td id="c48" class="form_label"  align="center">
						C48:
					</td>
					<td id="c48i" colspan="1">
						<input id="c48" value="<%=dataParms.get("c48")==null?"":dataParms.get("c48") %>" class="nui-textbox" name="tcgncgdylgd.c48"/>
					</td>
					<td id="c48ii" colspan="1">
						<input id="combobox48i"	value="<%=editdataParms.get("c48")==null?"":editdataParms.get("c48") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c49" class="form_label"  align="center">
						   C49:
					</td>
					<td id="c49i" colspan="1">
						<input id="c49" value="<%=dataParms.get("c49")==null?"":dataParms.get("c49") %>" class="nui-textbox" name="tcgncgdylgd.c49"/>
					</td>
					<td id="c49ii" colspan="1">
						<input id="combobox49i"	value="<%=editdataParms.get("c49")==null?"":editdataParms.get("c49") %>"	class="nui-textbox"/>
					</td>
					<td id="c50" class="form_label"  align="center">
						C50:
					</td>
					<td id="c50i" colspan="1">
						<input id="c50" value="<%=dataParms.get("c50")==null?"":dataParms.get("c50") %>" class="nui-textbox" name="tcgncgdylgd.c50"/>
					</td>
					<td id="c50ii" colspan="1">
						<input id="combobox50i"	value="<%=editdataParms.get("c50")==null?"":editdataParms.get("c50") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c51" class="form_label"  align="center">
						   C51:
					</td>
					<td id="c51i" colspan="1">
						<input id="c51" value="<%=dataParms.get("c51")==null?"":dataParms.get("c51") %>" class="nui-textbox" name="tcgncgdylgd.c51"/>
					</td>
					<td id="c51ii" colspan="1">
						<input id="combobox51i"	value="<%=editdataParms.get("c51")==null?"":editdataParms.get("c51") %>"	class="nui-textbox"/>
					</td>
					<td id="c52"  class="form_label"  align="center">
						C52:
					</td>
					<td id="c52i" colspan="1">
						<input id="c52" value="<%=dataParms.get("c52")==null?"":dataParms.get("c52") %>" class="nui-textbox" name="tcgncgdylgd.c52"/>
					</td>
					<td id="c52ii" colspan="1">
						<input id="combobox52i"	value="<%=editdataParms.get("c52")==null?"":editdataParms.get("c52") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c53" class="form_label"  align="center">
						   C53:
					</td>
					<td id="c53i" colspan="1">
						<input id="c53" value="<%=dataParms.get("c53")==null?"":dataParms.get("c53") %>" class="nui-textbox" name="tcgncgdylgd.c53"/>
					</td>
					<td id="c53ii" colspan="1">
						<input id="combobox53i"	value="<%=editdataParms.get("c53")==null?"":editdataParms.get("c53") %>"	class="nui-textbox"/>
					</td>
					<td id="c54" class="form_label"  align="center">
						C54:
					</td>
					<td id="c54i" colspan="1">
						<input id="c54" value="<%=dataParms.get("c54")==null?"":dataParms.get("c54") %>" class="nui-textbox" name="tcgncgdylgd.c54"/>
					</td>
					<td id="c54ii" colspan="1">
						<input id="combobox54i"	value="<%=editdataParms.get("c54")==null?"":editdataParms.get("c54") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c55" class="form_label"  align="center">
						   C55:
					</td>
					<td id="c55i" colspan="1">
						<input id="c55" value="<%=dataParms.get("c55")==null?"":dataParms.get("c55") %>" class="nui-textbox" name="tcgncgdylgd.c55"/>
					</td>
					<td id="c55ii" colspan="1">
						<input id="combobox55i"	value="<%=editdataParms.get("c55")==null?"":editdataParms.get("c55") %>"	class="nui-textbox"/>
					</td>
					<td id="c56" class="form_label"  align="center">
						C56:
					</td>
					<td id="c56i" colspan="1">
						<input id="c56" value="<%=dataParms.get("c56")==null?"":dataParms.get("c56") %>" class="nui-textbox" name="tcgncgdylgd.c56"/>
					</td>
					<td id="c56ii" colspan="1">
						<input id="combobox56i"	value="<%=editdataParms.get("c56")==null?"":editdataParms.get("c56") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c57" class="form_label"  align="center">
						   C57:
					</td>
					<td id="c57i" colspan="1">
						<input id="c57" value="<%=dataParms.get("c57")==null?"":dataParms.get("c57") %>" class="nui-textbox" name="tcgncgdylgd.c57"/>
					</td>
					<td id="c57ii" colspan="1">
						<input id="combobox57i"	value="<%=editdataParms.get("c57")==null?"":editdataParms.get("c57") %>"	class="nui-textbox"/>
					</td>
					<td id="c58" class="form_label"  align="center">
						C58:
					</td>
					<td id="c58i" colspan="1">
						<input id="c58" value="<%=dataParms.get("c58")==null?"":dataParms.get("c58") %>" class="nui-textbox" name="tcgncgdylgd.c58"/>
					</td>
					<td id="c58ii" colspan="1">
						<input id="combobox58i"	value="<%=editdataParms.get("c58")==null?"":editdataParms.get("c58") %>"	class="nui-textbox"/>
					</td>
				</tr>
				<tr>
					<td id="c59" class="form_label"  align="center">
						   C59:
					</td>
					<td id="c59i" colspan="1">
						<input id="c59" value="<%=dataParms.get("c59")==null?"":dataParms.get("c59") %>" class="nui-textbox" name="tcgncgdylgd.c59"/>
					</td>
					<td id="c59ii" colspan="1">
						<input id="combobox59i"	value="<%=editdataParms.get("c59")==null?"":editdataParms.get("c59") %>"	class="nui-textbox"/>
					</td>
					<td id="c60" class="form_label"  align="center">
						C60:
					</td>
					<td id="c60i" colspan="1">
						<input id="c60" value="<%=dataParms.get("c60")==null?"":dataParms.get("c60") %>" class="nui-textbox" name="tcgncgdylgd.c60"/>
					</td>
					<td id="c60ii" colspan="1">
						<input id="combobox60i"	value="<%=editdataParms.get("c60")==null?"":editdataParms.get("c60") %>"	class="nui-textbox"/>
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
                        <%--<input id="creator" value="<%=editdataParms.get("creator")==null?"":editdataParms.get("creator") %>" class="nui-textbox"  />--%>
                    </td>
                
                    <td class="form_label" align="center">
                        发起时间:
                    </td>
                    <td colspan="2">
						<%=editdataParms.get("datetime")==null?"":editdataParms.get("datetime") %>
                        <%--<input id="datetime" value="<%=editdataParms.get("datetime")==null?"":editdataParms.get("datetime") %>" class="nui-textbox"  />--%>
                    </td>
                      </tr>
                <tr>
                    <td class="form_label"  align="center">
                        发起原因:
                    </td>
                    <td colspan="5">
                        <input id="reason" value="<%=editdataParms.get("reason")==null?"":editdataParms.get("reason") %>" class="nui-textarea" required="true" requiredErrorText="请输入修改原因" style="width: 100%" name="tcgncgdylgd.reason"/>
                    </td>
                </tr>
            </table>
            </div>  
        
       
        <script type="text/javascript">
            nui.parse();
             
                   $(function() {
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
                var parms = "{baseid:"+jdid+",crewid:"+jzid+"}";
				var urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getBaseCircle.biz.ext";
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
	                        for(var i = 1;i < parseInt(start);i++){
	                        	$('#c'+i).hide();
	                        	$('#c'+i+"i").hide();
	                        	$('#c'+i+"ii").hide();
	                        }
							for(var i = parseInt(end)+8;i <= 60 ;i++){
	                        	$('#c'+i).hide();
	                        	$('#c'+i+"i").hide();
	                        	$('#c'+i+"ii").hide();
	                        }
                    	}
                    }
                });         
            });
            
            


                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
                        nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
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
