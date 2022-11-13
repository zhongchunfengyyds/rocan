<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

 String param = request.getParameter("editable");
 
  %>
<html>
<%--
- Author(s): Sun
- Date: 2019-01-14 14:44:16
- Description:
    --%>
    <head>
        <title>
            大修执行条目录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>  
         <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />          
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
          
        <div id="overhauldataform" style="padding-top:5px;">
			<input class="nui-hidden" name="tdgglentryedit.id" value="<b:write property='entity/id'/>"/>
   			<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>"/> 
            <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>"/>  
             <input class="nui-hidden" name="spyj" value=""/>  
            
            <!-- hidden域 -->
<!--             <input class="nui-hidden" name="tdgglentryedit.id"/> -->
             <input id='orderno' class="nui-hidden" name="tdgglentryedit.orderno"  value="<b:write property='entity/orderno'/>"/>
             
             <input id="mapnoid" class="nui-hidden" name="tdgglentryedit.mapnoid" value="<b:write property='entity/mapnoid'/>"/>
             <input id="programid" class="nui-hidden" name="tdgglentryedit.programid" value="<b:write property='entity/programid'/>"/>
             <input id="toolid" class="nui-hidden" name="tdgglentryedit.toolid" value="<b:write property='entity/toolid'/>"/>
             <input id="textprogramid" class="nui-hidden" name="tdgglentryedit.textprogramid" value="<b:write property='entity/textprogramid'/>"/>
			 <input class="nui-hidden"  name="tdgglentryedit.relid" value="<b:write property='entity/relid'/>"/>
			 <input id="edition" class="nui-hidden" name="tdgglentryedit.edition" value="<b:write property='entity/edition'/>"/>

            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                	<td class="form_label"  align="center">
                        基地:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox"  dataField="jsonObject" id="jd"
                      name="tdgglentryedit.base" onvaluechanged="reloadJz" value="<b:write property='entity/base'/>"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"  valueField="id"/>
                    </td>
                     <td class="form_label" align="center">
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" dataField="jsonObject" value="<b:write property='entity/crew'/>" id="jz" textField="name" 
                      			 url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=<b:write property='entity/base'/>"
 name="tdgglentryedit.crew"  valueField="id"/>
                    </td>
                    <td class="form_label"  align="center">
                        项目类型:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  requiredErrorText="请输入类型" name="tdgglentryedit.protype" value="<b:write property='entity/protype'/>"/>
                    </td>
                </tr>
                
                
                <tr>
                    <td class="form_label"  align="center">
                        部件:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  requiredErrorText="请输入部件"  value="<b:write property='entity/parts'/>" name="tdgglentryedit.parts"/>
                    </td>
                    <td class="form_label"  align="center">
                        模板:
                    </td>
                    <td colspan="1">
                        <input id="template"  requiredErrorText="请选择模板" value="<b:write property='entity/template'/>" onvaluechanged="setHidden" class="nui-dictcombobox" name="tdgglentryedit.template" dictTypeId="template"/>
                    </td>
                    <td class="form_label"  align="center">
                        参考图号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdgglentryedit.referencefigureno"  value="<b:write property='entity/referencefigureno'/>" />
                    </td>
                </tr>
                
                <tr>
                    <td class="form_label"  align="center">
                        项号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  value="<b:write property='entity/itemno'/>" requiredErrorText="请输入项号" name="tdgglentryedit.itemno"/>
                    </td>
                    <td class="form_label"  align="center">
                        维护项目:
                    </td>
                    <td colspan="1">
                        <input id="detailed" class="nui-textbox"  value="<b:write property='entity/detailed'/>" requiredErrorText="请输入维护项目" name="tdgglentryedit.detailed"/>
                    </td>      
                </tr>
                
                <tr>
                <td class="form_label"  >
                        检查内容/检查范围:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea" style="width: 100%" name="tdgglentryedit.inspectionscope"  value="<b:write property='entity/inspectionscope'/>" />
                    </td>
                </tr>
                
                <tr>
                    <td class="form_label"  >
                        流程图号/参考设备图/等轴图号:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea" style="width: 100%" name="tdgglentryedit.mapno"  value="<b:write property='entity/mapno'/>" />
                    </td>
                </tr>
              </table>
              
              <!-- 在役检查 -->
            <table id="zytab" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
            	<tr>
	                <td class="form_label"  align="center">
	                    被检部位:
	                </td>
	                <td colspan="5">
	      	     <input class="nui-textarea" style="width: 90%" name="tdgglentryedit.detectedsite"  value="<b:write property='entity/detectedsite'/>" />
	                </td>
            	</tr>
            	<tr>
                	<td class="form_label"  align="center">
                        数量:
                    </td>
                    <td colspan="1">
                       <input class="nui-textbox"   name="tdgglentryedit.number"  value="<b:write property='entity/number'/>" />
                    </td>
                    <td class="form_label"  align="center">
                        接近方式:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdgglentryedit.approachmode"  value="<b:write property='entity/approachmode'/>" />
                    </td>
                    <td class="form_label"  align="center">
                        检查方法:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdgglentryedit.method"  value="<b:write property='entity/method'/>" />
                    </td>
                </tr>
                <tr>
                    <td class="form_label"  align="center">
                        参考程序:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdgglentryedit.program"  value="<b:write property='entity/program'/>" />
                    </td>
                    <td class="form_label"  align="center">
                专用工具:
            		</td>
            		<td colspan="1">
                		<input class="nui-textbox" name="tdgglentryedit.tool"  value="<b:write property='entity/tool'/>" />
	            	</td>
	                <td class="form_label"  align="center">
		                专用检查计划:
		            </td>
		            <td colspan="1">
		                <input id="option" class="nui-dictcombobox" name="tdgglentryedit.inspectplan" dictTypeId="option"  value="<b:write property='entity/inspectplan'/>" />
		            </td>
                </tr>
            </table>
              
              
              <!-- 水压试验-->   
             <table id="sytab" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
             	<tr>
                 	<td class="form_label"  align="center">
                        工作介质:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdgglentryedit.medium"  value="<b:write property='entity/medium'/>" />
                    </td>
                    <td class="form_label"  align="center">
                    试验部位:
                </td>
                <td colspan="1">
                    <input id="site" class="nui-dictcombobox" name="tdgglentryedit.site" dictTypeId="site"  value="<b:write property='entity/site'/>" />
                </td>
                 <td class="form_label"  align="center">
                    试验程序:
                </td>
                <td colspan="1">
                    <input class="nui-textbox" name="tdgglentryedit.testprocedure" value="<b:write property='entity/testprocedure'/>" />
                </td>
             	</tr>
            <tr>
            <td class="form_label"  align="center">
                        运行压力（Bar）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdgglentryedit.operatingpressure"  value="<b:write property='entity/operatingpressure'/>" />
                    </td>
                    <td class="form_label"  align="center">
                        设计压力（Bar):
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdgglentryedit.designpressure"  value="<b:write property='entity/designpressure'/>" />
                    </td>
            <td class="form_label"  align="center">
                    试验压力（Bar）:
                </td>
                <td colspan="1">
                    <input class="nui-textbox" name="tdgglentryedit.testpressure"  value="<b:write property='entity/testpressure'/>" />
                </td>
                
                
            </tr>
            <tr>
            <td class="form_label"  align="center">
                    首次水压试验时间:
                </td>
                <td colspan="1">
                    <input class="nui-textbox" name="tdgglentryedit.firsttesttime"  value="<b:write property='entity/firsttesttime'/>" />
                </td>
                <td class="form_label"  align="center">
                    前次试验日期:
                </td>
                <td colspan="1">
                    <input class="nui-textbox" name="tdgglentryedit.beforetesttime"  value="<b:write property='entity/beforetesttime'/>" />
                </td>
               <td class="form_label"  align="center">
                    下次试验最晚日期:
                </td>
                <td colspan="1">
                    <input class="nui-textbox" name="tdgglentryedit.nexttesttime"  value="<b:write property='entity/nexttesttime'/>" />
                </td> 
            </tr>
             
             </table>
              
              <!-- C1-C60 -->
                <table id="circle"  style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
 					<tr>	
						<td id="c1" class="form_label" align="center">
	                        C1:
	                    </td>
	                    <td id="c1i" colspan="1">
	                    	<input class="nui-textbox" name="tdgglentryedit.c1"  value="<b:write property='entity/c1'/>" />
	                    </td>
	                    <td id="c2" class="form_label" align="center">
	                        C2:
	                    </td>
	                    <td id="c2i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c2"  value="<b:write property='entity/c2'/>" />
	                    </td>
	                    <td id="c3" class="form_label" align="center">
	                        C3:
	                    </td>
	                    <td id="c3i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c3"  value="<b:write property='entity/c3'/>" />
	                    </td>
                 	</tr>
                 	<tr>
	                    <td id="c4" class="form_label" align="center">
	                        C4:
	                    </td>
	                    <td id="c4i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c4"  value="<b:write property='entity/c4'/>" />
	                    </td>
	                    <td id="c5" class="form_label" align="center">
	                        C5:
	                    </td>
	                    <td id="c5i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c5"  value="<b:write property='entity/c5'/>" />
	                    </td>
	                    <td id="c6" class="form_label" align="center">
                        C6:
	                    </td>
	                    <td id="c6i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c6"  value="<b:write property='entity/c6'/>" />
	                    </td>
                	</tr>
                	<tr>
                		<td id="c7" class="form_label" align="center">
                        C7:
	                    </td>
	                    <td id="c7i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c7"  value="<b:write property='entity/c7'/>" />
	                    </td>
	                    <td id="c8" class="form_label" align="center">
                        C8:
	                    </td>
	                    <td id="c8i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c8"  value="<b:write property='entity/c8'/>" />
	                    </td>
	                    <td id="c9" class="form_label" align="center">
	                        C9:
	                    </td>
	                    <td id="c9i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c9"  value="<b:write property='entity/c9'/>" />
	                    </td>
                	</tr>
                	<tr>
                		<td id="c10" class="form_label" align="center">
                        C10:
	                    </td>
	                    <td id="c10i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c10"  value="<b:write property='entity/c10'/>" />
	                    </td>
	                    <td id="c11" class="form_label" align="center">
	                        C11:
	                    </td>
	                    <td id="c11i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c11"  value="<b:write property='entity/c11'/>" />
	                    </td>
	                    <td id="c12" class="form_label" align="center">
                        C12:
	                    </td>
	                    <td id="c12i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c12"  value="<b:write property='entity/c12'/>" />
	                    </td>
                	</tr>
                	<tr>
	                    <td id="c13" class="form_label" align="center">
                        C13:
	                    </td>
	                    <td id="c13i" colspan="1">
	                       <input class="nui-textbox" name="tdgglentryedit.c13"  value="<b:write property='entity/c13'/>" />
	                    </td>
	                    <td id="c14" class="form_label" align="center">
                        C14:
	                    </td>
	                    <td id="c14i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c14"  value="<b:write property='entity/c14'/>" />
	                    </td>
	                    <td id="c15" class="form_label" align="center">
	                        C15:
	                    </td>
	                    <td id="c15i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c15"  value="<b:write property='entity/c15'/>" />
	                    </td>
                	</tr>
                	<tr>
                		<td id="c16" class="form_label" align="center">
                        C16:
	                    </td>
	                    <td id="c16i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c16"  value="<b:write property='entity/c16'/>" />
	                    </td>
	                    <td id="c17" class="form_label" align="center">
	                        C17:
	                    </td>
	                    <td id="c17i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c17"  value="<b:write property='entity/c17'/>" />
	                    </td>
	                	<td id="c18" class="form_label" align="center">
	                     C18:
	                    </td>
	                    <td id="c18i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c18"  value="<b:write property='entity/c18'/>" />
	                    </td>
                	</tr>
                	<tr>
                		<td id="c19" class="form_label" align="center">
                      C19:
	                    </td>
	                    <td id="c19i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c19"  value="<b:write property='entity/c19'/>" />
	                    </td>
	                    <td id="c20" class="form_label" align="center">
                       C20:
	                    </td>
	                    <td id="c20i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c20"  value="<b:write property='entity/c20'/>" />
	                    </td>
	                    <td id="c21" class="form_label" align="center">
	                       C21:
	                    </td>
	                    <td id="c21i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c21"  value="<b:write property='entity/c21'/>" />
	                    </td>
                	</tr>
                	<tr>
	                	<td id="c22" class="form_label" align="center">
	                        C22:
	                    </td>
	                    <td id="c22i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c22"  value="<b:write property='entity/c22'/>" />
	                    </td>
	                    <td id="c23" class="form_label" align="center">
	                        C23:
	                    </td>
	                    <td id="c23i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c23"  value="<b:write property='entity/c23'/>" />
	                    </td>
	                    <td id="c24" class="form_label" align="center">
                        C24:
	                    </td>
	                    <td id="c24i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c24"  value="<b:write property='entity/c24'/>" />
	                    </td>
                	</tr>
                	<tr>
                		<td id="c25" class="form_label" align="center">
                        C25:
	                    </td>
	                    <td id="c25i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c25"  value="<b:write property='entity/c25'/>" />
	                    </td>
	                    <td id="c26" class="form_label" align="center">
                        C26:
	                    </td>
	                    <td id="c26i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c26"  value="<b:write property='entity/c26'/>" />
	                    </td>
	                    <td id="c27" class="form_label" align="center">
	                        C27:
	                    </td>
	                    <td id="c27i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c27"  value="<b:write property='entity/c27'/>" />
	                    </td>
                	</tr>
                	<tr>
	                	<td id="c28" class="form_label" align="center">
	                        C28:
	                    </td>
	                    <td id="c28i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c28"  value="<b:write property='entity/c28'/>" />
	                    </td>
	                    <td id="c29" class="form_label" align="center">
	                        C29:
	                    </td>
	                    <td id="c29i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c29"  value="<b:write property='entity/c29'/>" />
	                    </td>
	                    <td id="c30" class="form_label" align="center">
                        C30:
	                    </td>
	                    <td id="c30i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c30"  value="<b:write property='entity/c30'/>" />
	                    </td>
                	</tr>
                	<tr>
                		<td id="c31" class="form_label" align="center">
                        C31:
	                    </td>
	                    <td id="c31i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c31"  value="<b:write property='entity/c31'/>" />
	                    </td>
	                    <td id="c32" class="form_label" align="center">
                        C32:
	                    </td>
	                    <td id="c32i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c32"  value="<b:write property='entity/c32'/>" />
	                    </td>
	                    <td id="c33" class="form_label" align="center">
	                        C33:
	                    </td>
	                    <td id="c33i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c33"  value="<b:write property='entity/c33'/>" />
	                    </td>
                	</tr>
                	<tr>
	                	<td id="c34" class="form_label" align="center">
	                        C34:
	                    </td>
	                    <td id="c34i" colspan="1">
	                       <input class="nui-textbox" name="tdgglentryedit.c34"  value="<b:write property='entity/c34'/>" />
	                    </td>
	                    <td id="c35" class="form_label" align="center">
	                        C35:
	                    </td>
	                    <td id="c35i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c35"  value="<b:write property='entity/c35'/>" />
	                    </td>
	                     <td id="c36" class="form_label" align="center">
                        C36:
	                    </td>
	                    <td id="c36i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c36"  value="<b:write property='entity/c36'/>" />
	                    </td>
                	</tr>
                	<tr>
	                	<td id="c37" class="form_label" align="center">
	                        C37:
	                    </td>
	                    <td id="c37i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c37"  value="<b:write property='entity/c37'/>" />
	                    </td>
	                    <td id="c38" class="form_label" align="center">
                        C38:
	                    </td>
	                    <td id="c38i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c38"  value="<b:write property='entity/c38'/>" />
	                    </td>
	                    <td id="c39" class="form_label" align="center">
	                        C39:
	                    </td>
	                    <td id="c39i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c39"  value="<b:write property='entity/c39'/>" />
	                    </td>
                	</tr>
                	<tr>
                		<td id="c40" class="form_label" align="center">
                        C40:
	                    </td>
	                    <td id="c40i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c40"  value="<b:write property='entity/c40'/>" />
	                    </td>
	                    <td id="c41" class="form_label" align="center">
	                        C41:
	                    </td>
	                    <td id="c41i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c41"  value="<b:write property='entity/c41'/>" />
	                    </td>
	                    <td id="c42" class="form_label" align="center">
                        C42:
	                    </td>
	                    <td id="c42i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c42"  value="<b:write property='entity/c42'/>" />
	                    </td>
                	</tr>
                	<tr>
	                	<td id="c43" class="form_label" align="center">
	                        C43:
	                    </td>
	                    <td id="c43i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c43"  value="<b:write property='entity/c43'/>" />
	                    </td>
	                    <td id="c44" class="form_label" align="center">
                        C44:
	                    </td>
	                    <td id="c44i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c44"  value="<b:write property='entity/c44'/>" />
	                    </td>
	                    <td id="c45" class="form_label" align="center">
	                        C45:
	                    </td>
	                    <td id="c45i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c45"  value="<b:write property='entity/c45'/>" />
	                    </td>
                	</tr>
                	<tr>
	                	<td id="c46" class="form_label" align="center">
	                        C46:
	                    </td>
	                    <td id="c46i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c46"  value="<b:write property='entity/c46'/>" />
	                    </td>
	                    <td id="c47" class="form_label" align="center">
	                        C47:
	                    </td>
	                    <td id="c47i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c47"  value="<b:write property='entity/c47'/>" />
	                    </td>
	                    <td id="c48" class="form_label" align="center">
                        C48:
	                    </td>
	                    <td id="c48i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c48"  value="<b:write property='entity/c48'/>" />
	                    </td>
                	</tr>
                	<tr>
	                	<td id="c49" class="form_label" align="center">
	                        C49:
	                    </td>
	                    <td id="c49i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c49"  value="<b:write property='entity/c49'/>" />
	                    </td>
	                    <td id="c50" class="form_label" align="center">
                        C50:
	                    </td>
	                    <td id="c50i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c50"  value="<b:write property='entity/c50'/>" />
	                    </td>
	                    <td id="c51" class="form_label" align="center">
	                        C51:
	                    </td>
	                    <td id="c51i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c51"  value="<b:write property='entity/c51'/>" />
	                    </td>
                	</tr>
                	<tr>
	                	<td id="c52" class="form_label" align="center">
	                        C52:
	                    </td>
	                    <td id="c52i" colspan="1">
	                       <input class="nui-textbox" name="tdgglentryedit.c52"  value="<b:write property='entity/c52'/>" />
	                    </td>
	                    <td id="c53" class="form_label" align="center">
	                        C53:
	                    </td>
	                    <td id="c53i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c53"  value="<b:write property='entity/c53'/>" />
	                    </td>
	                    <td id="c54" class="form_label" align="center">
                        C54:
	                    </td>
	                    <td id="c54i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c54"  value="<b:write property='entity/c54'/>" />
	                    </td>
                	</tr>
                	<tr>
                		<td id="c55" class="form_label" align="center">
                        C55:
	                    </td>
	                    <td id="c55i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c55"  value="<b:write property='entity/c55'/>" />
	                    </td>
	                    <td id="c56" class="form_label" align="center">
                        C56:
	                    </td>
	                    <td id="c56i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c56"  value="<b:write property='entity/c56'/>" />
	                    </td>
	                    <td id="c57" class="form_label" align="center">
	                        C57:
	                    </td>
	                    <td id="c57i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c57"  value="<b:write property='entity/c57'/>" />
	                    </td>
                	</tr>
                	<tr>
	                	<td id="c58" class="form_label" align="center">
	                        C58:
	                    </td>
	                    <td id="c58i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c58"  value="<b:write property='entity/c58'/>" />
	                    </td>
	                    <td id="c59" class="form_label" align="center">
	                        C59:
	                    </td>
	                    <td id="c59i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c59"  value="<b:write property='entity/c59'/>" />
	                    </td>
	                    <td id="c60" class="form_label" align="center">
                        C60:
	                    </td>
	                    <td id="c60i" colspan="1">
	                        <input class="nui-textbox" name="tdgglentryedit.c60"  value="<b:write property='entity/c60'/>" />
	                    </td>
                	</tr>
                 </table>
              
              <!-- 人员及原因信息 -->
              <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
              <tr>
                    <td class="form_label"  align="center">
                        备注:
                    </td>
                    <td colspan="5">
                        <input style="width: 100%" class="nui-textarea" name="tdgglentryedit.remark"  value="<b:write property='entity/remark'/>" />
                    </td>
                </tr>
              	<tr>
              		<td class="form_label"  align="center">
                        发起人:
                    </td>
                    <td colspan="2">
                        <input id="creator" class="nui-textbox" name="tdgglentryedit.creator"  value="<b:write property='entity/creator'/>" />
                    </td>
                    <td class="form_label"  align="center">
                        发起日期:
                    </td>
                    <td colspan="2">
                        <input id="datetime" dateFormat="yyyy-MM-dd HH:mm:ss" style="width: 100%" class="nui-textbox" name="tdgglentryedit.datetime"  value="<b:write property='entity/datetime'/>" />
                    </td>   
              	</tr>
              	<tr>
                    <td class="form_label"  align="center">
                        新增原因:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea" style="width: 100%" name="tdgglentryedit.reason"  value="<b:write property='entity/reason'/>" />
                    </td>
                </tr>
                
          		<tr id="spyjId">
                    <td class="form_label"  align="center">
                        审批意见:
                    </td>
                  <td colspan="4">
                        <input id="spyj" required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width: 100%" name="spyj"/>
                    </td>
                      <td class="form_label"  align="center">
                        常用意见:<input class="nui-dictcombobox"  onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ"  />
                    </td>
                </tr>
                	<tr id="ccryId">
					<td class="form_label" style="width: 10%">抄送人员</td>
				<td colspan="5">
					<input   property="editor" id="ccry"  name="ccry"  class="nui-textboxlist" dataField="list"  style="width:50%;" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
			</tr>
              </table>
        </div>
        <div id="btn" class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" onclick="onOk()" id="btnSubmit">
                                同意
                            </a>
                           <span style="display:inline-block;width:25px;">
                            </span>
                            
                   <a class="nui-button"  onclick="onBack()" id="btnBack">
                                退回
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
            var param = '<%=param %>';
            if(param == 'false'){
            	nui.get("btnSubmit").hide();
	    		nui.get("btnBack").hide();
	    		$('#spyjId').hide();
	    		$('#ccryId').hide();
            }
            var jdid = nui.get("jd").getValue();
            	var jzid = nui.get("jz").getValue();
            $(function() {
            	var form = new nui.Form("overhauldataform");
            	var fields = form.getFields();
            	
        		for (var i = 0, l = fields.length; i < l; i++) {
		        	var c = fields[i];
		        	if('spyj' != c.name && 'cyyj' != c.name && 'ccry' != c.name){
		        		if (c.setReadOnly) c.setReadOnly(true);     //只读
		                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
		                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
		        	}
            	}
				var template = nui.get("template").getValue();
				if(template == 'zy'){
	           		$('#sytab').hide();
	           		$('#zytab').show();
	           	}else if(template == 'sy'){
	           		$('#zytab').hide();
	           		$('#sytab').show();
	           	}
	           	
	           	var parms = "{baseid:"+jdid+",crewid:"+jzid+"}";
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
	                        for(var i = 1;i < parseInt(start);i++){
	                        	$('#c'+i).hide();
	                        	$('#c'+i+"i").hide();
	                        }
							for(var i = parseInt(end)+8;i <= 60 ;i++){
	                        	$('#c'+i).hide();
	                        	$('#c'+i+"i").hide();
	                        }
                    	}
                    }
                });
            });
            
             //设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
            //结束工作项
            function onOk() {
                var form = new nui.Form("#overhauldataform");;
	    		var urlStr = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.addProjectInfoMation.biz.ext";
	    		form.validate();
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	            var jsondata = nui.encode({"processInstId":data.processInstId,"entityType":"com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit","workItemId":data.workItemId,"data":data.tdgglentryedit,"spyj":data.spyj,"entity":"com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity","ident":"规范法定大纲_大修"});
	            nui.get("#btnSubmit").setEnabled(false);
	            nui.get("#btnBack").setEnabled(false);
	    		$.ajax({
	                    url:urlStr,
	                    type:'POST',
	                    data:jsondata,
	                    cache:false,
	                    contentType:'text/json',
	                    success:function(text){
	                        var returnJson = nui.decode(text);
	                        if(returnJson.exception == null){
	                        	if(data.tdgglentryedit.detailed == null || data.tdgglentryedit.detailed == ''){
	                        		onCancel("saveFailed");	
	                        	}
		                		var json = {};
		                		json.fieldName = "detailed";
		                		json.fieldValue = data.tdgglentryedit.detailed;
		                		json.entity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity";
		                		json.base = jdid;
		                		json.crew = jzid;
		                		json = nui.encode(json);
	                        	$.ajax({
								    url:"com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getInforMation.biz.ext",
								    type:'POST',
								    cache:false,
								    data:json,
								    contentType:'text/json',
								    success:function(data){
								    	 if(data.record != null && data.record[0]){
								    	 	nui.alert("已同步更新十年计划", "系统提示", function(action){
				                                if(action == "ok" || action == "close"){
				                                    onCancel("saveFailed");
				                                }
			                                });
								    	 }else{
								    	 	onCancel("saveFailed");	
								    	 }
							   		}
								});
	                        }else{
	                            nui.alert("提交失败", "系统提示", function(action){
	                                if(action == "ok" || action == "close"){
	                                    onCancel("saveFailed");
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
		//回退至第一环节
    	function onBack(){
    		var form = new nui.Form("#overhauldataform");
    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
    		form.validate();
    		
    		
            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
   
            var data = form.getData(false,true);
            var json = nui.encode(data);
            
            nui.get("#btnSubmit").setEnabled(false);
            nui.get("#btnBack").setEnabled(false);
            
    		$.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                            onCancel();
                        }else{
                            nui.alert("回退操作失败", "系统提示", function(action){
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
					function setHidden(){
	           	//模板类型变更显示隐藏
	           	var templateCombox = nui.get("template");
	           	var templetid = templateCombox.getValue();
	           	if(templetid == 'zy'){
	           		$('#sytab').hide();
	           		$('#zytab').show();
	           	}else if(templetid == 'sy'){
	           		$('#zytab').hide();
	           		$('#sytab').show();
	           	}
			}
			
</script>

    </body>
</html>