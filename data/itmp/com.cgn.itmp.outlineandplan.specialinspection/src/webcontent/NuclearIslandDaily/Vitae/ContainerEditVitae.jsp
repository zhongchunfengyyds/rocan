<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page import="java.util.*" %>
<%@ page import="commonj.sdo.DataObject" %>


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
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
       
 <script type="text/javascript" src="<%= request.getContextPath() %>/coframe/tools/widget/jquery.ui.min.js"></script>
        
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
        <input class="nui-hidden" name="tdggltzyjcjhrcrq.uuid"/>
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
                        <input class="nui-combobox" value="<%=dataParms.get("base")==null?"":dataParms.get("base") %>" dataField="jsonObject" id="jd"
                      name="tdggltzyjcjhrcrq.base" onvaluechanged="reloadJz"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id"/>
                    </td>
                    <td>
                    </td>
                     <td class="form_label" align="center" >
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" value="<%=dataParms.get("crew")==null?"":dataParms.get("crew") %>"dataField="jsonObject" id="jzid" textField="name" 
                      url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext"
                      name="tdggltzyjcjhrcrq.crew"  valueField="id"/>
                    </td>   
                    <td>
                    </td>
         		</tr>  
         		<tr>
                   <td class="form_label"   align="center">
                        类型:
                    </td>
                      <td colspan="1">
                        <input class="nui-dictcombobox" id="type" value="<%=dataParms.get("type")==null?"":dataParms.get("type") %>"  dictTypeId="ZYJCJH"    name="tdggltzyjcjhrcrq.type"/>
                    </td>
                      <td>
                    </td>
                  
                   
                    <td class="form_label"   align="center">
                        维护项目:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="tasklist"readonly="readonly"value="<%=dataParms.get("tasklist")==null?"":dataParms.get("tasklist") %>" name="tdggltzyjcjhrcrq.tasklist"/>
                    </td>
                     <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("tasklist")==null?"":editdataParms.get("tasklist") %>" name="tdgg.tasklist"/>
                    </td>
                 </tr>
                <tr>
                    <td class="form_label"   align="center">
                        检查部位名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="checkprojectname"readonly="readonly" value="<%=dataParms.get("checkprojectname")==null?"":dataParms.get("checkprojectname") %>"name="tdggltzyjcjhrcrq.checkprojectname"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<%=editdataParms.get("checkprojectname")==null?"":editdataParms.get("checkprojectname") %>"name="tdgg.checkprojectname"/>
                    </td>
                    <td class="form_label"   align="center">
                        项号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="itemnumber"readonly="readonly"value="<%=dataParms.get("itemnumber")==null?"":dataParms.get("itemnumber") %>" name="tdggltzyjcjhrcrq.itemnumber"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("itemnumber")==null?"":editdataParms.get("itemnumber") %>" name="tdgg.itemnumber"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label"   align="center">
                        功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="gnwz"readonly="readonly" value="<%=dataParms.get("gnwz")==null?"":dataParms.get("gnwz") %>"name="tdggltzyjcjhrcrq.gnwz"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("gnwz")==null?"":editdataParms.get("gnwz") %>" name="tdgg.gnwz"/>
                    </td>
                    <td class="form_label"   align="center">
                        设备名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="sbname"readonly="readonly"value="<%=dataParms.get("sbname")==null?"":dataParms.get("sbname") %>" name="tdggltzyjcjhrcrq.sbname"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("sbname")==null?"":editdataParms.get("sbname") %>" name="tdgg.sbname"/>
                    </td>
                 </tr>
                <tr>
                    <td class="form_label"   align="center">
                        管壳侧:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="gkc"readonly="readonly" value="<%=dataParms.get("gkc")==null?"":dataParms.get("gkc") %>"name="tdggltzyjcjhrcrq.gkc"/>
                    </td>
                     <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("gkc")==null?"":editdataParms.get("gkc") %>" name="tdgg.gkc"/>
                    </td>
                    
                    <td class="form_label"   align="center">
                        设备图号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="sbnumber"value="<%=dataParms.get("sbnumber")==null?"":dataParms.get("sbnumber") %>"readonly="readonly" name="tdggltzyjcjhrcrq.sbnumber"/>
                    </td>
                     <td colspan="1">
                        <input class="nui-textbox" value="<%=editdataParms.get("sbnumber")==null?"":editdataParms.get("sbnumber") %>"name="tdgg.sbnumber"/>
                    </td>
                     </tr>
                <tr>
                    <td class="form_label"   align="center">
                        检查方法:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="jcmethod"readonly="readonly"value="<%=dataParms.get("jcmethod")==null?"":dataParms.get("jcmethod") %>" name="tdggltzyjcjhrcrq.jcmethod"/>
                    </td>
                     <td colspan="1">
                        <input class="nui-textbox"value="<%=editdataParms.get("jcmethod")==null?"":editdataParms.get("jcmethod") %>" name="tdgg.jcmethod"/>
                    </td>
                    <td class="form_label"   align="center">
                        检查程序:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="jcprocedure"readonly="readonly" value="<%=dataParms.get("jcprocedure")==null?"":dataParms.get("jcprocedure") %>"name="tdggltzyjcjhrcrq.jcprocedure"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<%=editdataParms.get("jcprocedure")==null?"":editdataParms.get("jcprocedure") %>"name="tdgg.jcprocedure"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label"   align="center">
                        专用工具:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"id="zytool"readonly="readonly"value="<%=dataParms.get("zytool")==null?"":dataParms.get("zytool") %>" name="tdggltzyjcjhrcrq.zytool"/>
                    </td>
                <td colspan="1">
                        <input class="nui-textbox" value="<%=editdataParms.get("zytool")==null?"":editdataParms.get("zytool") %>"name="tdgg.zytool"/>
                    </td>
                    <td class="form_label"   align="center">
                        被检部位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea"id="jcbw"readonly="readonly"  style="width: 100%" value="<%=dataParms.get("jcbw")==null?"":dataParms.get("jcbw") %>"name="tdggltzyjcjhrcrq.jcbw"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea"  style="width: 100%" value="<%=editdataParms.get("jcbw")==null?"":editdataParms.get("jcbw") %>"name="tdgg.jcbw"/>
                    </td>
                 </tr>
                <tr>
                    <td class="form_label"   align="center">
                        接近方式:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea"id="jjmode"readonly="readonly" value="<%=dataParms.get("jjmode")==null?"":dataParms.get("jjmode") %>" style="width: 100%" name="tdggltzyjcjhrcrq.jjmode"/>
                    </td>
                  <td colspan="1">
                        <input class="nui-textarea"value="<%=editdataParms.get("jjmode")==null?"":editdataParms.get("jjmode") %>"  style="width: 100%" name="tdgg.jjmode"/>
                    </td>
                    
                    <td class="form_label"   align="center">
                        备注:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" id="remarks"readonly="readonly" style="width: 100%" value="<%=dataParms.get("remarks")==null?"":dataParms.get("remarks") %>"name="tdggltzyjcjhrcrq.remarks"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea"  value="<%=editdataParms.get("remarks")==null?"":editdataParms.get("remarks") %>"style="width: 100%" name="tdgg.remarks"/>
                    </td>
                </tr>
                </table>
          <table id="nd" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
             	<tr>
					<td id="c1991" class="form_label"  align="center">
						   1991:
					</td>
					<td id="c1991i" colspan="1">
						<input id="c1991" value="<%=dataParms.get("c1991")==null?"":dataParms.get("c1991") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c1991"/>
					</td>
					<td id="c1991ii" colspan="1">
						<input id="combobox1991i"	value="<%=editdataParms.get("c1991")==null?"":editdataParms.get("c1991") %>"	class="nui-textbox"/>
					</td>
					<td id="c1992" class="form_label"  align="center">
						1992:
					</td>
					<td id="c1992i" colspan="1">
						<input id="c1992" value="<%=dataParms.get("c1992")==null?"":dataParms.get("c1992") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c1992"/>
					</td>
					<td id="c1992ii" colspan="1">
						<input id="combobox1992i"	value="<%=editdataParms.get("c1992")==null?"":editdataParms.get("c1992") %>"	class="nui-textbox"/>
					</td>
				</tr>
             <tr>
				<td id="c1993" class="form_label"  align="center">
					   1993:
				</td>
				<td id="c1993i" colspan="1">
					<input id="c1993" value="<%=dataParms.get("c1993")==null?"":dataParms.get("c1993") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c1993"/>
				</td>
				<td id="c1993ii" colspan="1">
					<input id="combobox1993i"	value="<%=editdataParms.get("c1993")==null?"":editdataParms.get("c1993") %>"	class="nui-textbox"/>
				</td>
				<td id="c1994" class="form_label"  align="center">
					1994:
				</td>
				<td id="c1994i" colspan="1">
					<input id="c1994" value="<%=dataParms.get("c1994")==null?"":dataParms.get("c1994") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c1994"/>
				</td>
				<td id="c1994ii" colspan="1">
					<input id="combobox1994i"	value="<%=editdataParms.get("c1994")==null?"":editdataParms.get("c1994") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c1995" class="form_label"  align="center">
					   1995:
				</td>
				<td id="c1995i" colspan="1">
					<input id="c1995" value="<%=dataParms.get("c1995")==null?"":dataParms.get("c1995") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c1995"/>
				</td>
				<td id="c1995ii" colspan="1">
					<input id="combobox1995i"	value="<%=editdataParms.get("c1995")==null?"":editdataParms.get("c1995") %>"	class="nui-textbox"/>
				</td>
				<td id="c1996" class="form_label"  align="center">
					1996:
				</td>
				<td id="c1996i" colspan="1">
					<input id="c1996" value="<%=dataParms.get("c1996")==null?"":dataParms.get("c1996") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c1996"/>
				</td>
				<td id="c1996ii" colspan="1">
					<input id="combobox1996i"	value="<%=editdataParms.get("c1996")==null?"":editdataParms.get("c1996") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c1997" class="form_label"  align="center">
					   1997:
				</td>
				<td id="c1997i" colspan="1">
					<input id="c1997" value="<%=dataParms.get("c1997")==null?"":dataParms.get("c1997") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c1997"/>
				</td>
				<td id="c1997ii" colspan="1">
					<input id="combobox1997i"	value="<%=editdataParms.get("c1997")==null?"":editdataParms.get("c1997") %>"	class="nui-textbox"/>
				</td>
				<td id="c1998" class="form_label"  align="center">
					1998:
				</td>
				<td id="c1998i" colspan="1">
					<input id="c1998" value="<%=dataParms.get("c1998")==null?"":dataParms.get("c1998") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c1998"/>
				</td>
				<td id="c1998ii" colspan="1">
					<input id="combobox1998i"	value="<%=editdataParms.get("c1998")==null?"":editdataParms.get("c1998") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c1999" class="form_label"  align="center">
					   1999:
				</td>
				<td id="c1999i" colspan="1">
					<input id="c1999" value="<%=dataParms.get("c1999")==null?"":dataParms.get("c1999") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c1999"/>
				</td>
				<td id="c1999ii" colspan="1">
					<input id="combobox1999i"	value="<%=editdataParms.get("c1999")==null?"":editdataParms.get("c1999") %>"	class="nui-textbox"/>
				</td>
				<td id="c2000" class="form_label"  align="center">
					2000:
				</td>
				<td id="c2000i" colspan="1">
					<input id="c2000" value="<%=dataParms.get("c2000")==null?"":dataParms.get("c2000") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2000"/>
				</td>
				<td id="c2000ii" colspan="1">
					<input id="combobox2000i"	value="<%=editdataParms.get("c2000")==null?"":editdataParms.get("c2000") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2001" class="form_label"  align="center">
					   2001:
				</td>
				<td id="c2001i" colspan="1">
					<input id="c2001" value="<%=dataParms.get("c2001")==null?"":dataParms.get("c2001") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2001"/>
				</td>
				<td id="c2001ii" colspan="1">
					<input id="combobox2001i"	value="<%=editdataParms.get("c2001")==null?"":editdataParms.get("c2001") %>"	class="nui-textbox"/>
				</td>
				<td id="c2002" class="form_label"  align="center">
					2002:
				</td>
				<td id="c2002i" colspan="1">
					<input id="c2002" value="<%=dataParms.get("c2002")==null?"":dataParms.get("c2002") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2002"/>
				</td>
				<td id="c2002ii" colspan="1">
					<input id="combobox2002i"	value="<%=editdataParms.get("c2002")==null?"":editdataParms.get("c2002") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2003" class="form_label"  align="center">
					   2003:
				</td>
				<td id="c2003i" colspan="1">
					<input id="c2003" value="<%=dataParms.get("c2003")==null?"":dataParms.get("c2003") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2003"/>
				</td>
				<td id="c2003ii" colspan="1">
					<input id="combobox2003i"	value="<%=editdataParms.get("c2003")==null?"":editdataParms.get("c2003") %>"	class="nui-textbox"/>
				</td>
				<td id="c2004" class="form_label"  align="center">
					2004:
				</td>
				<td id="c2004i" colspan="1">
					<input id="c2004" value="<%=dataParms.get("c2004")==null?"":dataParms.get("c2004") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2004"/>
				</td>
				<td id="c2004ii" colspan="1">
					<input id="combobox2004i"	value="<%=editdataParms.get("c2004")==null?"":editdataParms.get("c2004") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2005" class="form_label"  align="center">
					   2005:
				</td>
				<td id="c2005i" colspan="1">
					<input id="c2005" value="<%=dataParms.get("c2005")==null?"":dataParms.get("c2005") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2005"/>
				</td>
				<td id="c2005ii" colspan="1">
					<input id="combobox2005i"	value="<%=editdataParms.get("c2005")==null?"":editdataParms.get("c2005") %>"	class="nui-textbox"/>
				</td>
				<td id="c2006" class="form_label"  align="center">
					2006:
				</td>
				<td id="c2006i" colspan="1">
					<input id="c2006" value="<%=dataParms.get("c2006")==null?"":dataParms.get("c2006") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2006"/>
				</td>
				<td id="c2006ii" colspan="1">
					<input id="combobox2006i"	value="<%=editdataParms.get("c2006")==null?"":editdataParms.get("c2006") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2007" class="form_label"  align="center">
					   2007:
				</td>
				<td id="c2007i" colspan="1">
					<input id="c2007" value="<%=dataParms.get("c2007")==null?"":dataParms.get("c2007") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2007"/>
				</td>
				<td id="c2007ii" colspan="1">
					<input id="combobox2007i"	value="<%=editdataParms.get("c2007")==null?"":editdataParms.get("c2007") %>"	class="nui-textbox"/>
				</td>
				<td id="c2008" class="form_label"  align="center">
					2008:
				</td>
				<td id="c2008i" colspan="1">
					<input id="c2008" value="<%=dataParms.get("c2008")==null?"":dataParms.get("c2008") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2008"/>
				</td>
				<td id="c2008ii" colspan="1">
					<input id="combobox2008i"	value="<%=editdataParms.get("c2008")==null?"":editdataParms.get("c2008") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2009" class="form_label"  align="center">
					   2009:
				</td>
				<td id="c2009i" colspan="1">
					<input id="c2009" value="<%=dataParms.get("c2009")==null?"":dataParms.get("c2009") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2009"/>
				</td>
				<td id="c2009ii" colspan="1">
					<input id="combobox2009i"	value="<%=editdataParms.get("c2009")==null?"":editdataParms.get("c2009") %>"	class="nui-textbox"/>
				</td>
				<td id="c2010" class="form_label"  align="center">
					2010:
				</td>
				<td id="c2010i" colspan="1">
					<input id="c2010" value="<%=dataParms.get("c2010")==null?"":dataParms.get("c2010") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2010"/>
				</td>
				<td id="c2010ii" colspan="1">
					<input id="combobox2010i"	value="<%=editdataParms.get("c2010")==null?"":editdataParms.get("c2010") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2011" class="form_label"  align="center">
					   2011:
				</td>
				<td id="c2011i" colspan="1">
					<input id="c2011" value="<%=dataParms.get("c2011")==null?"":dataParms.get("c2011") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2011"/>
				</td>
				<td id="c2011ii" colspan="1">
					<input id="combobox2011i"	value="<%=editdataParms.get("c2011")==null?"":editdataParms.get("c2011") %>"	class="nui-textbox"/>
				</td>
				<td id="c2012" class="form_label"  align="center">
					2012:
				</td>
				<td id="c2012i" colspan="1">
					<input id="c2012" value="<%=dataParms.get("c2012")==null?"":dataParms.get("c2012") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2012"/>
				</td>
				<td id="c2012ii" colspan="1">
					<input id="combobox2012i"	value="<%=editdataParms.get("c2012")==null?"":editdataParms.get("c2012") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2013" class="form_label"  align="center">
					   2013:
				</td>
				<td id="c2013i" colspan="1">
					<input id="c2013" value="<%=dataParms.get("c2013")==null?"":dataParms.get("c2013") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2013"/>
				</td>
				<td id="c2013ii" colspan="1">
					<input id="combobox2013i"	value="<%=editdataParms.get("c2013")==null?"":editdataParms.get("c2013") %>"	class="nui-textbox"/>
				</td>
				<td id="c2014" class="form_label"  align="center">
					2014:
				</td>
				<td id="c2014i" colspan="1">
					<input id="c2014" value="<%=dataParms.get("c2014")==null?"":dataParms.get("c2014") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2014"/>
				</td>
				<td id="c2014ii" colspan="1">
					<input id="combobox2014i"	value="<%=editdataParms.get("c2014")==null?"":editdataParms.get("c2014") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2015" class="form_label"  align="center">
					   2015:
				</td>
				<td id="c2015i" colspan="1">
					<input id="c2015" value="<%=dataParms.get("c2015")==null?"":dataParms.get("c2015") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2015"/>
				</td>
				<td id="c2015ii" colspan="1">
					<input id="combobox2015i"	value="<%=editdataParms.get("c2015")==null?"":editdataParms.get("c2015") %>"	class="nui-textbox"/>
				</td>
				<td id="c2016" class="form_label"  align="center">
					2016:
				</td>
				<td id="c2016i" colspan="1">
					<input id="c2016" value="<%=dataParms.get("c2016")==null?"":dataParms.get("c2016") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2016"/>
				</td>
				<td id="c2016ii" colspan="1">
					<input id="combobox2016i"	value="<%=editdataParms.get("c2016")==null?"":editdataParms.get("c2016") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2017" class="form_label"  align="center">
					   2017:
				</td>
				<td id="c2017i" colspan="1">
					<input id="c2017" value="<%=dataParms.get("c2017")==null?"":dataParms.get("c2017") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2017"/>
				</td>
				<td id="c2017ii" colspan="1">
					<input id="combobox2017i"	value="<%=editdataParms.get("c2017")==null?"":editdataParms.get("c2017") %>"	class="nui-textbox"/>
				</td>
				<td id="c2018" class="form_label"  align="center">
					2018:
				</td>
				<td id="c2018i" colspan="1">
					<input id="c2018" value="<%=dataParms.get("c2018")==null?"":dataParms.get("c2018") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2018"/>
				</td>
				<td id="c2018ii" colspan="1">
					<input id="combobox2018i"	value="<%=editdataParms.get("c2018")==null?"":editdataParms.get("c2018") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2019" class="form_label"  align="center">
					   2019:
				</td>
				<td id="c2019i" colspan="1">
					<input id="c2019" value="<%=dataParms.get("c2019")==null?"":dataParms.get("c2019") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2019"/>
				</td>
				<td id="c2019ii" colspan="1">
					<input id="combobox2019i"	value="<%=editdataParms.get("c2019")==null?"":editdataParms.get("c2019") %>"	class="nui-textbox"/>
				</td>
				<td id="c2020" class="form_label"  align="center">
					2020:
				</td>
				<td id="c2020i" colspan="1">
					<input id="c2020" value="<%=dataParms.get("c2020")==null?"":dataParms.get("c2020") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2020"/>
				</td>
				<td id="c2020ii" colspan="1">
					<input id="combobox2020i"	value="<%=editdataParms.get("c2020")==null?"":editdataParms.get("c2020") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2021" class="form_label"  align="center">
					   2021:
				</td>
				<td id="c2021i" colspan="1">
					<input id="c2021" value="<%=dataParms.get("c2021")==null?"":dataParms.get("c2021") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2021"/>
				</td>
				<td id="c2021ii" colspan="1">
					<input id="combobox2021i"	value="<%=editdataParms.get("c2021")==null?"":editdataParms.get("c2021") %>"	class="nui-textbox"/>
				</td>
				<td id="c2022" class="form_label"  align="center">
					2022:
				</td>
				<td id="c2022i" colspan="1">
					<input id="c2022" value="<%=dataParms.get("c2022")==null?"":dataParms.get("c2022") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2022"/>
				</td>
				<td id="c2022ii" colspan="1">
					<input id="combobox2022i"	value="<%=editdataParms.get("c2022")==null?"":editdataParms.get("c2022") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2023" class="form_label"  align="center">
					   2023:
				</td>
				<td id="c2023i" colspan="1">
					<input id="c2023" value="<%=dataParms.get("c2023")==null?"":dataParms.get("c2023") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2023"/>
				</td>
				<td id="c2023ii" colspan="1">
					<input id="combobox2023i"	value="<%=editdataParms.get("c2023")==null?"":editdataParms.get("c2023") %>"	class="nui-textbox"/>
				</td>
				<td id="c2024" class="form_label"  align="center">
					2024:
				</td>
				<td id="c2024i" colspan="1">
					<input id="c2024" value="<%=dataParms.get("c2024")==null?"":dataParms.get("c2024") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2024"/>
				</td>
				<td id="c2024ii" colspan="1">
					<input id="combobox2024i"	value="<%=editdataParms.get("c2024")==null?"":editdataParms.get("c2024") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2025" class="form_label"  align="center">
					   2025:
				</td>
				<td id="c2025i" colspan="1">
					<input id="c2025" value="<%=dataParms.get("c2025")==null?"":dataParms.get("c2025") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2025"/>
				</td>
				<td id="c2025ii" colspan="1">
					<input id="combobox2025i"	value="<%=editdataParms.get("c2025")==null?"":editdataParms.get("c2025") %>"	class="nui-textbox"/>
				</td>
				<td id="c2026" class="form_label"  align="center">
					2026:
				</td>
				<td id="c2026i" colspan="1">
					<input id="c2026" value="<%=dataParms.get("c2026")==null?"":dataParms.get("c2026") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2026"/>
				</td>
				<td id="c2026ii" colspan="1">
					<input id="combobox2026i"	value="<%=editdataParms.get("c2026")==null?"":editdataParms.get("c2026") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2027" class="form_label"  align="center">
					   2027:
				</td>
				<td id="c2027i" colspan="1">
					<input id="c2027" value="<%=dataParms.get("c2027")==null?"":dataParms.get("c2027") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2027"/>
				</td>
				<td id="c2027ii" colspan="1">
					<input id="combobox2027i"	value="<%=editdataParms.get("c2027")==null?"":editdataParms.get("c2027") %>"	class="nui-textbox"/>
				</td>
				<td id="c2028" class="form_label"  align="center">
					2028:
				</td>
				<td id="c2028i" colspan="1">
					<input id="c2028" value="<%=dataParms.get("c2028")==null?"":dataParms.get("c2028") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2028"/>
				</td>
				<td id="c2028ii" colspan="1">
					<input id="combobox2028i"	value="<%=editdataParms.get("c2028")==null?"":editdataParms.get("c2028") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2029" class="form_label"  align="center">
					   2029:
				</td>
				<td id="c2029i" colspan="1">
					<input id="c2029" value="<%=dataParms.get("c2029")==null?"":dataParms.get("c2029") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2029"/>
				</td>
				<td id="c2029ii" colspan="1">
					<input id="combobox2029i"	value="<%=editdataParms.get("c2029")==null?"":editdataParms.get("c2029") %>"	class="nui-textbox"/>
				</td>
				<td id="c2030" class="form_label"  align="center">
					2030:
				</td>
				<td id="c2030i" colspan="1">
					<input id="c2030" value="<%=dataParms.get("c2030")==null?"":dataParms.get("c2030") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2030"/>
				</td>
				<td id="c2030ii" colspan="1">
					<input id="combobox2030i"	value="<%=editdataParms.get("c2030")==null?"":editdataParms.get("c2030") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2031" class="form_label"  align="center">
					   2031:
				</td>
				<td id="c2031i" colspan="1">
					<input id="c2031" value="<%=dataParms.get("c2031")==null?"":dataParms.get("c2031") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2031"/>
				</td>
				<td id="c2031ii" colspan="1">
					<input id="combobox2031i"	value="<%=editdataParms.get("c2031")==null?"":editdataParms.get("c2031") %>"	class="nui-textbox"/>
				</td>
				<td id="c2032" class="form_label"  align="center">
					2032:
				</td>
				<td id="c2032i" colspan="1">
					<input id="c2032" value="<%=dataParms.get("c2032")==null?"":dataParms.get("c2032") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2032"/>
				</td>
				<td id="c2032ii" colspan="1">
					<input id="combobox2032i"	value="<%=editdataParms.get("c2032")==null?"":editdataParms.get("c2032") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2033" class="form_label"  align="center">
					   2033:
				</td>
				<td id="c2033i" colspan="1">
					<input id="c2033" value="<%=dataParms.get("c2033")==null?"":dataParms.get("c2033") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2033"/>
				</td>
				<td id="c2033ii" colspan="1">
					<input id="combobox2033i"	value="<%=editdataParms.get("c2033")==null?"":editdataParms.get("c2033") %>"	class="nui-textbox"/>
				</td>
				<td id="c2034" class="form_label"  align="center">
					2034:
				</td>
				<td id="c2034i" colspan="1">
					<input id="c2034" value="<%=dataParms.get("c2034")==null?"":dataParms.get("c2034") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2034"/>
				</td>
				<td id="c2034ii" colspan="1">
					<input id="combobox2034i"	value="<%=editdataParms.get("c2034")==null?"":editdataParms.get("c2034") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2035" class="form_label"  align="center">
					   2035:
				</td>
				<td id="c2035i" colspan="1">
					<input id="c2035" value="<%=dataParms.get("c2035")==null?"":dataParms.get("c2035") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2035"/>
				</td>
				<td id="c2035ii" colspan="1">
					<input id="combobox2035i"	value="<%=editdataParms.get("c2035")==null?"":editdataParms.get("c2035") %>"	class="nui-textbox"/>
				</td>
				<td id="c2036" class="form_label"  align="center">
					2036:
				</td>
				<td id="c2036i" colspan="1">
					<input id="c2036" value="<%=dataParms.get("c2036")==null?"":dataParms.get("c2036") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2036"/>
				</td>
				<td id="c2036ii" colspan="1">
					<input id="combobox2036i"	value="<%=editdataParms.get("c2036")==null?"":editdataParms.get("c2036") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2037" class="form_label"  align="center">
					   2037:
				</td>
				<td id="c2037i" colspan="1">
					<input id="c2037" value="<%=dataParms.get("c2037")==null?"":dataParms.get("c2037") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2037"/>
				</td>
				<td id="c2037ii" colspan="1">
					<input id="combobox2037i"	value="<%=editdataParms.get("c2037")==null?"":editdataParms.get("c2037") %>"	class="nui-textbox"/>
				</td>
				<td id="c2038" class="form_label"  align="center">
					2038:
				</td>
				<td id="c2038i" colspan="1">
					<input id="c2038" value="<%=dataParms.get("c2038")==null?"":dataParms.get("c2038") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2038"/>
				</td>
				<td id="c2038ii" colspan="1">
					<input id="combobox2038i"	value="<%=editdataParms.get("c2038")==null?"":editdataParms.get("c2038") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2039" class="form_label"  align="center">
					   2039:
				</td>
				<td id="c2039i" colspan="1">
					<input id="c2039" value="<%=dataParms.get("c2039")==null?"":dataParms.get("c2039") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2039"/>
				</td>
				<td id="c2039ii" colspan="1">
					<input id="combobox2039i"	value="<%=editdataParms.get("c2039")==null?"":editdataParms.get("c2039") %>"	class="nui-textbox"/>
				</td>
				<td id="c2040" class="form_label"  align="center">
					2040:
				</td>
				<td id="c2040i" colspan="1">
					<input id="c2040" value="<%=dataParms.get("c2040")==null?"":dataParms.get("c2040") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2040"/>
				</td>
				<td id="c2040ii" colspan="1">
					<input id="combobox2040i"	value="<%=editdataParms.get("c2040")==null?"":editdataParms.get("c2040") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2041" class="form_label"  align="center">
					   2041:
				</td>
				<td id="c2041i" colspan="1">
					<input id="c2041" value="<%=dataParms.get("c2041")==null?"":dataParms.get("c2041") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2041"/>
				</td>
				<td id="c2041ii" colspan="1">
					<input id="combobox2041i"	value="<%=editdataParms.get("c2041")==null?"":editdataParms.get("c2041") %>"	class="nui-textbox"/>
				</td>
				<td id="c2042" class="form_label"  align="center">
					2042:
				</td>
				<td id="c2042i" colspan="1">
					<input id="c2042" value="<%=dataParms.get("c2042")==null?"":dataParms.get("c2042") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2042"/>
				</td>
				<td id="c2042ii" colspan="1">
					<input id="combobox2042i"	value="<%=editdataParms.get("c2042")==null?"":editdataParms.get("c2042") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2043" class="form_label"  align="center">
					   2043:
				</td>
				<td id="c2043i" colspan="1">
					<input id="c2043" value="<%=dataParms.get("c2043")==null?"":dataParms.get("c2043") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2043"/>
				</td>
				<td id="c2043ii" colspan="1">
					<input id="combobox2043i"	value="<%=editdataParms.get("c2043")==null?"":editdataParms.get("c2043") %>"	class="nui-textbox"/>
				</td>
				<td id="c2044" class="form_label"  align="center">
					2044:
				</td>
				<td id="c2044i" colspan="1">
					<input id="c2044" value="<%=dataParms.get("c2044")==null?"":dataParms.get("c2044") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2044"/>
				</td>
				<td id="c2044ii" colspan="1">
					<input id="combobox2044i"	value="<%=editdataParms.get("c2044")==null?"":editdataParms.get("c2044") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2045" class="form_label"  align="center">
					   2045:
				</td>
				<td id="c2045i" colspan="1">
					<input id="c2045" value="<%=dataParms.get("c2045")==null?"":dataParms.get("c2045") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2045"/>
				</td>
				<td id="c2045ii" colspan="1">
					<input id="combobox2045i"	value="<%=editdataParms.get("c2045")==null?"":editdataParms.get("c2045") %>"	class="nui-textbox"/>
				</td>
				<td id="c2046" class="form_label"  align="center">
					2046:
				</td>
				<td id="c2046i" colspan="1">
					<input id="c2046" value="<%=dataParms.get("c2046")==null?"":dataParms.get("c2046") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2046"/>
				</td>
				<td id="c2046ii" colspan="1">
					<input id="combobox2046i"	value="<%=editdataParms.get("c2046")==null?"":editdataParms.get("c2046") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2047" class="form_label"  align="center">
					   2047:
				</td>
				<td id="c2047i" colspan="1">
					<input id="c2047" value="<%=dataParms.get("c2047")==null?"":dataParms.get("c2047") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2047"/>
				</td>
				<td id="c2047ii" colspan="1">
					<input id="combobox2047i"	value="<%=editdataParms.get("c2047")==null?"":editdataParms.get("c2047") %>"	class="nui-textbox"/>
				</td>
				<td id="c2048" class="form_label"  align="center">
					2048:
				</td>
				<td id="c2048i" colspan="1">
					<input id="c2048" value="<%=dataParms.get("c2048")==null?"":dataParms.get("c2048") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2048"/>
				</td>
				<td id="c2048ii" colspan="1">
					<input id="combobox2048i"	value="<%=editdataParms.get("c2048")==null?"":editdataParms.get("c2048") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2049" class="form_label"  align="center">
					   2049:
				</td>
				<td id="c2049i" colspan="1">
					<input id="c2049" value="<%=dataParms.get("c2049")==null?"":dataParms.get("c2049") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2049"/>
				</td>
				<td id="c2049ii" colspan="1">
					<input id="combobox2049i"	value="<%=editdataParms.get("c2049")==null?"":editdataParms.get("c2049") %>"	class="nui-textbox"/>
				</td>
				<td id="c2050" class="form_label"  align="center">
					2050:
				</td>
				<td id="c2050i" colspan="1">
					<input id="c2050" value="<%=dataParms.get("c2050")==null?"":dataParms.get("c2050") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2050"/>
				</td>
				<td id="c2050ii" colspan="1">
					<input id="combobox2050i"	value="<%=editdataParms.get("c2050")==null?"":editdataParms.get("c2050") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2051" class="form_label"  align="center">
					   2051:
				</td>
				<td id="c2051i" colspan="1">
					<input id="c2051" value="<%=dataParms.get("c2051")==null?"":dataParms.get("c2051") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2051"/>
				</td>
				<td id="c2051ii" colspan="1">
					<input id="combobox2051i"	value="<%=editdataParms.get("c2051")==null?"":editdataParms.get("c2051") %>"	class="nui-textbox"/>
				</td>
				<td id="c2052" class="form_label"  align="center">
					2052:
				</td>
				<td id="c2052i" colspan="1">
					<input id="c2052" value="<%=dataParms.get("c2052")==null?"":dataParms.get("c2052") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2052"/>
				</td>
				<td id="c2052ii" colspan="1">
					<input id="combobox2052i"	value="<%=editdataParms.get("c2052")==null?"":editdataParms.get("c2052") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2053" class="form_label"  align="center">
					   2053:
				</td>
				<td id="c2053i" colspan="1">
					<input id="c2053" value="<%=dataParms.get("c2053")==null?"":dataParms.get("c2053") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2053"/>
				</td>
				<td id="c2053ii" colspan="1">
					<input id="combobox2053i"	value="<%=editdataParms.get("c2053")==null?"":editdataParms.get("c2053") %>"	class="nui-textbox"/>
				</td>
				<td id="c2054" class="form_label"  align="center">
					2054:
				</td>
				<td id="c2054i" colspan="1">
					<input id="c2054" value="<%=dataParms.get("c2054")==null?"":dataParms.get("c2054") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2054"/>
				</td>
				<td id="c2054ii" colspan="1">
					<input id="combobox2054i"	value="<%=editdataParms.get("c2054")==null?"":editdataParms.get("c2054") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2055" class="form_label"  align="center">
					   2055:
				</td>
				<td id="c2055i" colspan="1">
					<input id="c2055" value="<%=dataParms.get("c2055")==null?"":dataParms.get("c2055") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2055"/>
				</td>
				<td id="c2055ii" colspan="1">
					<input id="combobox2055i"	value="<%=editdataParms.get("c2055")==null?"":editdataParms.get("c2055") %>"	class="nui-textbox"/>
				</td>
				<td id="c2056" class="form_label"  align="center">
					2056:
				</td>
				<td id="c2056i" colspan="1">
					<input id="c2056" value="<%=dataParms.get("c2056")==null?"":dataParms.get("c2056") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2056"/>
				</td>
				<td id="c2056ii" colspan="1">
					<input id="combobox2056i"	value="<%=editdataParms.get("c2056")==null?"":editdataParms.get("c2056") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2057" class="form_label"  align="center">
					   2057:
				</td>
				<td id="c2057i" colspan="1">
					<input id="c2057" value="<%=dataParms.get("c2057")==null?"":dataParms.get("c2057") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2057"/>
				</td>
				<td id="c2057ii" colspan="1">
					<input id="combobox2057i"	value="<%=editdataParms.get("c2057")==null?"":editdataParms.get("c2057") %>"	class="nui-textbox"/>
				</td>
				<td id="c2058" class="form_label"  align="center">
					2058:
				</td>
				<td id="c2058i" colspan="1">
					<input id="c2058" value="<%=dataParms.get("c2058")==null?"":dataParms.get("c2058") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2058"/>
				</td>
				<td id="c2058ii" colspan="1">
					<input id="combobox2058i"	value="<%=editdataParms.get("c2058")==null?"":editdataParms.get("c2058") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2059" class="form_label"  align="center">
					   2059:
				</td>
				<td id="c2059i" colspan="1">
					<input id="c2059" value="<%=dataParms.get("c2059")==null?"":dataParms.get("c2059") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2059"/>
				</td>
				<td id="c2059ii" colspan="1">
					<input id="combobox2059i"	value="<%=editdataParms.get("c2059")==null?"":editdataParms.get("c2059") %>"	class="nui-textbox"/>
				</td>
				<td id="c2060" class="form_label"  align="center">
					2060:
				</td>
				<td id="c2060i" colspan="1">
					<input id="c2060" value="<%=dataParms.get("c2060")==null?"":dataParms.get("c2060") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2060"/>
				</td>
				<td id="c2060ii" colspan="1">
					<input id="combobox2060i"	value="<%=editdataParms.get("c2060")==null?"":editdataParms.get("c2060") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2061" class="form_label"  align="center">
					   2061:
				</td>
				<td id="c2061i" colspan="1">
					<input id="c2061" value="<%=dataParms.get("c2061")==null?"":dataParms.get("c2061") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2061"/>
				</td>
				<td id="c2061ii" colspan="1">
					<input id="combobox2061i"	value="<%=editdataParms.get("c2061")==null?"":editdataParms.get("c2061") %>"	class="nui-textbox"/>
				</td>
				<td id="c2062" class="form_label"  align="center">
					2062:
				</td>
				<td id="c2062i" colspan="1">
					<input id="c2062" value="<%=dataParms.get("c2062")==null?"":dataParms.get("c2062") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2062"/>
				</td>
				<td id="c2062ii" colspan="1">
					<input id="combobox2062i"	value="<%=editdataParms.get("c2062")==null?"":editdataParms.get("c2062") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2063" class="form_label"  align="center">
					   2063:
				</td>
				<td id="c2063i" colspan="1">
					<input id="c2063" value="<%=dataParms.get("c2063")==null?"":dataParms.get("c2063") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2063"/>
				</td>
				<td id="c2063ii" colspan="1">
					<input id="combobox2063i"	value="<%=editdataParms.get("c2063")==null?"":editdataParms.get("c2063") %>"	class="nui-textbox"/>
				</td>
				<td id="c2064" class="form_label"  align="center">
					2064:
				</td>
				<td id="c2064i" colspan="1">
					<input id="c2064" value="<%=dataParms.get("c2064")==null?"":dataParms.get("c2064") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2064"/>
				</td>
				<td id="c2064ii" colspan="1">
					<input id="combobox2064i"	value="<%=editdataParms.get("c2064")==null?"":editdataParms.get("c2064") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2065" class="form_label"  align="center">
					   2065:
				</td>
				<td id="c2065i" colspan="1">
					<input id="c2065" value="<%=dataParms.get("c2065")==null?"":dataParms.get("c2065") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2065"/>
				</td>
				<td id="c2065ii" colspan="1">
					<input id="combobox2065i"	value="<%=editdataParms.get("c2065")==null?"":editdataParms.get("c2065") %>"	class="nui-textbox"/>
				</td>
				<td id="c2066" class="form_label"  align="center">
					2066:
				</td>
				<td id="c2066i" colspan="1">
					<input id="c2066" value="<%=dataParms.get("c2066")==null?"":dataParms.get("c2066") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2066"/>
				</td>
				<td id="c2066ii" colspan="1">
					<input id="combobox2066i"	value="<%=editdataParms.get("c2066")==null?"":editdataParms.get("c2066") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2067" class="form_label"  align="center">
					   2067:
				</td>
				<td id="c2067i" colspan="1">
					<input id="c2067" value="<%=dataParms.get("c2067")==null?"":dataParms.get("c2067") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2067"/>
				</td>
				<td id="c2067ii" colspan="1">
					<input id="combobox2067i"	value="<%=editdataParms.get("c2067")==null?"":editdataParms.get("c2067") %>"	class="nui-textbox"/>
				</td>
				<td id="c2068" class="form_label"  align="center">
					2068:
				</td>
				<td id="c2068i" colspan="1">
					<input id="c2068" value="<%=dataParms.get("c2068")==null?"":dataParms.get("c2068") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2068"/>
				</td>
				<td id="c2068ii" colspan="1">
					<input id="combobox2068i"	value="<%=editdataParms.get("c2068")==null?"":editdataParms.get("c2068") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2069" class="form_label"  align="center">
					   2069:
				</td>
				<td id="c2069i" colspan="1">
					<input id="c2069" value="<%=dataParms.get("c2069")==null?"":dataParms.get("c2069") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2069"/>
				</td>
				<td id="c2069ii" colspan="1">
					<input id="combobox2069i"	value="<%=editdataParms.get("c2069")==null?"":editdataParms.get("c2069") %>"	class="nui-textbox"/>
				</td>
				<td id="c2070" class="form_label"  align="center">
					2070:
				</td>
				<td id="c2070i" colspan="1">
					<input id="c2070" value="<%=dataParms.get("c2070")==null?"":dataParms.get("c2070") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2070"/>
				</td>
				<td id="c2070ii" colspan="1">
					<input id="combobox2070i"	value="<%=editdataParms.get("c2070")==null?"":editdataParms.get("c2070") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2071" class="form_label"  align="center">
					   2071:
				</td>
				<td id="c2071i" colspan="1">
					<input id="c2071" value="<%=dataParms.get("c2071")==null?"":dataParms.get("c2071") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2071"/>
				</td>
				<td id="c2071ii" colspan="1">
					<input id="combobox2071i"	value="<%=editdataParms.get("c2071")==null?"":editdataParms.get("c2071") %>"	class="nui-textbox"/>
				</td>
				<td id="c2072" class="form_label"  align="center">
					2072:
				</td>
				<td id="c2072i" colspan="1">
					<input id="c2072" value="<%=dataParms.get("c2072")==null?"":dataParms.get("c2072") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2072"/>
				</td>
				<td id="c2072ii" colspan="1">
					<input id="combobox2072i"	value="<%=editdataParms.get("c2072")==null?"":editdataParms.get("c2072") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2073" class="form_label"  align="center">
					   2073:
				</td>
				<td id="c2073i" colspan="1">
					<input id="c2073" value="<%=dataParms.get("c2073")==null?"":dataParms.get("c2073") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2073"/>
				</td>
				<td id="c2073ii" colspan="1">
					<input id="combobox2073i"	value="<%=editdataParms.get("c2073")==null?"":editdataParms.get("c2073") %>"	class="nui-textbox"/>
				</td>
				<td id="c2074" class="form_label"  align="center">
					2074:
				</td>
				<td id="c2074i" colspan="1">
					<input id="c2074" value="<%=dataParms.get("c2074")==null?"":dataParms.get("c2074") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2074"/>
				</td>
				<td id="c2074ii" colspan="1">
					<input id="combobox2074i"	value="<%=editdataParms.get("c2074")==null?"":editdataParms.get("c2074") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2075" class="form_label"  align="center">
					   2075:
				</td>
				<td id="c2075i" colspan="1">
					<input id="c2075" value="<%=dataParms.get("c2075")==null?"":dataParms.get("c2075") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2075"/>
				</td>
				<td id="c2075ii" colspan="1">
					<input id="combobox2075i"	value="<%=editdataParms.get("c2075")==null?"":editdataParms.get("c2075") %>"	class="nui-textbox"/>
				</td>
				<td id="c2076" class="form_label"  align="center">
					2076:
				</td>
				<td id="c2076i" colspan="1">
					<input id="c2076" value="<%=dataParms.get("c2076")==null?"":dataParms.get("c2076") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2076"/>
				</td>
				<td id="c2076ii" colspan="1">
					<input id="combobox2076i"	value="<%=editdataParms.get("c2076")==null?"":editdataParms.get("c2076") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2077" class="form_label"  align="center">
					   2077:
				</td>
				<td id="c2077i" colspan="1">
					<input id="c2077" value="<%=dataParms.get("c2077")==null?"":dataParms.get("c2077") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2077"/>
				</td>
				<td id="c2077ii" colspan="1">
					<input id="combobox2077i"	value="<%=editdataParms.get("c2077")==null?"":editdataParms.get("c2077") %>"	class="nui-textbox"/>
				</td>
				<td id="c2078" class="form_label"  align="center">
					2078:
				</td>
				<td id="c2078i" colspan="1">
					<input id="c2078" value="<%=dataParms.get("c2078")==null?"":dataParms.get("c2078") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2078"/>
				</td>
				<td id="c2078ii" colspan="1">
					<input id="combobox2078i"	value="<%=editdataParms.get("c2078")==null?"":editdataParms.get("c2078") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2079" class="form_label"  align="center">
					   2079:
				</td>
				<td id="c2079i" colspan="1">
					<input id="c2079" value="<%=dataParms.get("c2079")==null?"":dataParms.get("c2079") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2079"/>
				</td>
				<td id="c2079ii" colspan="1">
					<input id="combobox2079i"	value="<%=editdataParms.get("c2079")==null?"":editdataParms.get("c2079") %>"	class="nui-textbox"/>
				</td>
				<td id="c2080" class="form_label"  align="center">
					2080:
				</td>
				<td id="c2080i" colspan="1">
					<input id="c2080" value="<%=dataParms.get("c2080")==null?"":dataParms.get("c2080") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2080"/>
				</td>
				<td id="c2080ii" colspan="1">
					<input id="combobox2080i"	value="<%=editdataParms.get("c2080")==null?"":editdataParms.get("c2080") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2081" class="form_label"  align="center">
					   2081:
				</td>
				<td id="c2081i" colspan="1">
					<input id="c2081" value="<%=dataParms.get("c2081")==null?"":dataParms.get("c2081") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2081"/>
				</td>
				<td id="c2081ii" colspan="1">
					<input id="combobox2081i"	value="<%=editdataParms.get("c2081")==null?"":editdataParms.get("c2081") %>"	class="nui-textbox"/>
				</td>
				<td id="c2082" class="form_label"  align="center">
					2082:
				</td>
				<td id="c2082i" colspan="1">
					<input id="c2082" value="<%=dataParms.get("c2082")==null?"":dataParms.get("c2082") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2082"/>
				</td>
				<td id="c2082ii" colspan="1">
					<input id="combobox2082i"	value="<%=editdataParms.get("c2082")==null?"":editdataParms.get("c2082") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2083" class="form_label"  align="center">
					   2083:
				</td>
				<td id="c2083i" colspan="1">
					<input id="c2083" value="<%=dataParms.get("c2083")==null?"":dataParms.get("c2083") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2083"/>
				</td>
				<td id="c2083ii" colspan="1">
					<input id="combobox2083i"	value="<%=editdataParms.get("c2083")==null?"":editdataParms.get("c2083") %>"	class="nui-textbox"/>
				</td>
				<td id="c2084" class="form_label"  align="center">
					2084:
				</td>
				<td id="c2084i" colspan="1">
					<input id="c2084" value="<%=dataParms.get("c2084")==null?"":dataParms.get("c2084") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2084"/>
				</td>
				<td id="c2084ii" colspan="1">
					<input id="combobox2084i"	value="<%=editdataParms.get("c2084")==null?"":editdataParms.get("c2084") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2085" class="form_label"  align="center">
					   2085:
				</td>
				<td id="c2085i" colspan="1">
					<input id="c2085" value="<%=dataParms.get("c2085")==null?"":dataParms.get("c2085") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2085"/>
				</td>
				<td id="c2085ii" colspan="1">
					<input id="combobox2085i"	value="<%=editdataParms.get("c2085")==null?"":editdataParms.get("c2085") %>"	class="nui-textbox"/>
				</td>
				<td id="c2086" class="form_label"  align="center">
					2086:
				</td>
				<td id="c2086i" colspan="1">
					<input id="c2086" value="<%=dataParms.get("c2086")==null?"":dataParms.get("c2086") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2086"/>
				</td>
				<td id="c2086ii" colspan="1">
					<input id="combobox2086i"	value="<%=editdataParms.get("c2086")==null?"":editdataParms.get("c2086") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2087" class="form_label"  align="center">
					   2087:
				</td>
				<td id="c2087i" colspan="1">
					<input id="c2087" value="<%=dataParms.get("c2087")==null?"":dataParms.get("c2087") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2087"/>
				</td>
				<td id="c2087ii" colspan="1">
					<input id="combobox2087i"	value="<%=editdataParms.get("c2087")==null?"":editdataParms.get("c2087") %>"	class="nui-textbox"/>
				</td>
				<td id="c2088" class="form_label"  align="center">
					2088:
				</td>
				<td id="c2088i" colspan="1">
					<input id="c2088" value="<%=dataParms.get("c2088")==null?"":dataParms.get("c2088") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2088"/>
				</td>
				<td id="c2088ii" colspan="1">
					<input id="combobox2088i"	value="<%=editdataParms.get("c2088")==null?"":editdataParms.get("c2088") %>"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="c2089" class="form_label"  align="center">
					   2089:
				</td>
				<td id="c2089i" colspan="1">
					<input id="c2089" value="<%=dataParms.get("c2089")==null?"":dataParms.get("c2089") %>" class="nui-textbox" name="tdggltzyjcjhrcrq.c2089"/>
				</td>
				<td id="c2089ii" colspan="1">
					<input id="combobox2089i"	value="<%=editdataParms.get("c2089")==null?"":editdataParms.get("c2089") %>"	class="nui-textbox"/>
				</td>
			</tr>
             </table>
                     <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table"> 
                     <tr>
                       <td class="form_label" align="center">
                        发起人:
                    </td>
                    <td colspan="2">
                        <input id="creator" value="<%=editdataParms.get("creator")==null?"":editdataParms.get("creator") %>" class="nui-textbox"  />
                    </td>
                
                    <td class="form_label" align="center">
                        发起时间:
                    </td>
                    <td colspan="2">
                        <input id="datetime" value="<%=editdataParms.get("datetime")==null?"":editdataParms.get("datetime") %>" class="nui-textbox"  />
                    </td>
                      </tr>
                <tr>
                    <td class="form_label"  align="center">
                        发起原因:
                    </td>
                    <td colspan="6">
                        <input id="reason" value="<%=editdataParms.get("reason")==null?"":editdataParms.get("reason") %>" class="nui-textarea" required="true" requiredErrorText="请输入修改原因" style="width: 100%" name="tdggltzyjcjhrcrq.reason"/>
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
	            
	         
	            var jdid = '<%= dataParms.get("base")%>';
				var jzid = '<%= dataParms.get("crew")%>';
				var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
	   			nui.get("jzid").setUrl(url);
                var parms = "{baseid:"+jdid+",crewid:"+jzid+",type:n}";
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
				                        	$('#c'+i).hide();
				                        	$('#c'+i+"i").hide();
				                        	$('#c'+i+"ii").hide();
				                        }
										for(var i = parseInt(end)+11;i <= 2089 ;i++){
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
