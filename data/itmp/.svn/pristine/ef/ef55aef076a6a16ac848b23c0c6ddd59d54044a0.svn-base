<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.*" %>
<%@ page import="commonj.sdo.DataObject" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

DataObject dataParms = (DataObject)request.getAttribute("oldEntity");//业务表原值
DataObject editdataParms = (DataObject)request.getAttribute("entity");//修改后的值
 %>
<html>

<%--
- Author(s): Sun
- Date: 2019-01-14 14:44:16
- Description:
    --%>
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
    <head>
        <title>
            大修执行条目审批
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        
        </script>
 <script type="text/javascript" src="<%= request.getContextPath() %>/coframe/tools/widget/jquery.ui.min.js"></script>
        
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
         <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />
        <script type="text/javascript" src="/itmp/common/nui/locale/zh_CN.js"></script>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        
        <input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>  

            
        
        <input name="pageType" class="nui-hidden"/>
        <div id="overhauldataform" style="padding-top:5px;">
                     <!-- hidden域 -->
         <input id="mapnoid" class="nui-hidden" name="preData.mapnoid" value="<b:write property='oldEntity/mapnoid'/>" />
         <input id="programid" class="nui-hidden" name="preData.programid" value="<b:write property='oldEntity/programid'/>" />
         <input id="toolid" class="nui-hidden" name="preData.toolid" value="<b:write property='oldEntity/toolid'/>" />
         <input id="textprogramid" class="nui-hidden" name="preData.textprogramid" value="<b:write property='oldEntity/textprogramid'/>" />
          <input id="idcopy" class="nui-hidden" name="nextData.processInstId" value="<b:write property='entity/processInstId'/>" />
         
         <input id="mapnoidcopy" class="nui-hidden" name="nextData.mapnoid" value="<b:write property='entity/mapnoid'/>" />
         <input id="idcopy" class="nui-hidden" name="nextData.id" value="<b:write property='entity/id'/>" />
         <input id="programidcopy" class="nui-hidden" name="nextData.programid" value="<b:write property='entity/programid'/>" />
         <input id="toolidcopy" class="nui-hidden" name="nextData.toolid" value="<b:write property='entity/toolid'/>" />
         <input id="textprogramidcopy" class="nui-hidden" name="nextData.textprogramid" value="<b:write property='entity/textprogramid'/>" />
          <input id="relid" class="nui-hidden" name="nextData.relid" value="<b:write property='entity/relid'/>" />
         
         
          	<input class="nui-hidden" name="nextData.processInstId" value="<b:write property='processInstId'/>" id="processInstId"/> 
            <input id="backid" class="nui-hidden"  value="manualActivity" name="backid"/>
                  	<input class="nui-hidden" name="processInstId" id="processInstId" value="<b:write property='processInstId'/>" /> 
         <input class="nui-hidden" name="workItemId" id="workItemId" value="<b:write property='workItemId'/>"/>  
            
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
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
                        <input class="nui-combobox"  dataField="jsonObject" id="jd"
                      name="preData.base" onvaluechanged="reloadJz"
                      textField="name" value="<%=dataParms.get("base")==null?"":dataParms.get("base") %>" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id"/>
                    </td>
                    <td>
                    </td>
                     <td class="form_label" align="center" >
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" dataField="jsonObject" id="jz" textField="name" 
                      url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext"
                      name="preData.crew" value="<%=dataParms.get("crew")==null?"":dataParms.get("crew") %>" valueField="id"/>
                    </td>   
                    <td>
                    </td>
         		</tr>   
         		<tr>
         			<td class="form_label"  align="center">
                        项目类型:
                    </td>
                    <td>
                        <input class="nui-textbox" value="<%=dataParms.get("protype")==null?"":dataParms.get("protype") %>" name="preData.protype"/>
                    </td>
                    <td>
                    </td>
         			<td class="form_label"  align="center">
                        部件:
                    </td>
                    <td>
                        <input class="nui-textbox" value="<%=dataParms.get("parts")==null?"":dataParms.get("parts") %>" name="preData.parts"/>
                    </td>
                    <td>
                    </td>
         		</tr>
         		
         		<tr>
         		<td class="form_label"  align="center">
                        模板:
                    </td>
                    <td>
                        <input id="template" class="nui-dictcombobox" value="<%=dataParms.get("template")==null?"":dataParms.get("template") %>" name="preData.template" dictTypeId="template"/>
                    </td>
                    <td>
                    </td>
                    <td class="form_label"  align="center">
                        参考图号:
                    </td>
                    <td>
                        <input id="referencefigureno" value="<%=dataParms.get("referencefigureno")==null?"":dataParms.get("referencefigureno") %>" class="nui-textbox" name="preData.referencefigureno"/>
                    </td>
                    <td>
                    	<input id="referencefigureno" value="<%=editdataParms.get("referencefigureno")==null?"":editdataParms.get("referencefigureno") %>" class="nui-textbox" name="nextData.referencefigureno"/>
                    </td>
         		</tr>
         		<tr>
         		<td class="form_label"  align="center">
                        项号:
                    </td>
                    <td colspan="1">
                        <input id="itemno" class="nui-textbox" value="<%=dataParms.get("itemno")==null?"":dataParms.get("itemno") %>" name="preData.itemno"/>
                    </td>
                    <td colspan="1">
                        <input id="item_no" value="<%=editdataParms.get("itemno")==null?"":editdataParms.get("itemno") %>" class="nui-textbox" name="nextData.itemno"/>
                    </td>
                    <td class="form_label"  align="center">
                        维护项目:
                    </td>
                    <td colspan="1" name="preData.detailed">
                        <input id="olddetailed" value="<%=dataParms.get("detailed")==null?"":dataParms.get("detailed") %>" class="nui-textbox" name="preData.detailed"/>
                    </td>   
                    <td colspan="1">
                        <input id="detailed" value="<%=editdataParms.get("detailed")==null?"":editdataParms.get("detailed") %>" class="nui-textbox" name="nextData.detailed"/>
                    </td> 
         		</tr>
         		<tr>
         			<td class="form_label"  >
                        检查内容/检查范围:
                    </td>
                    <td colspan="2">
                        <input id="inspectionscope" value="<%=dataParms.get("inspectionscope")==null?"":dataParms.get("inspectionscope") %>" class="nui-textarea" style="width: 100%" name="preData.inspectionscope"/>
                    </td>
                    <td colspan="3">
                        <input value="<%=editdataParms.get("inspectionscope")==null?"":editdataParms.get("inspectionscope") %>" class="nui-textarea" style="width: 100%" name="nextData.inspectionscope"/>
                    </td>
         		</tr>
         		         		<tr>
         			<td class="form_label"  >
                        流程图号/参考设备图/等轴图号:
                    </td>
                    <td colspan="2">
                        <input id="mapno" class="nui-textarea" value="<%=dataParms.get("mapno")==null?"":dataParms.get("mapno") %>" style="width: 100%" name="preData.mapno"/>
                    </td>
                    <td colspan="3">
                        <input value="<%=editdataParms.get("mapno")==null?"":editdataParms.get("mapno") %>" class="nui-textarea" style="width: 100%" name="nextData.mapno"/>
                    </td>
         		</tr>
          </table>
          
           <!-- 在役检查 -->
           <table id="zytab" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
           <tr id="bjbw">
	                <td class="form_label"  align="center">
	                    被检部位:
	                </td>
	                <td colspan="2">
	                    <input id="detectedsite" class="nui-textarea" value="<%=dataParms.get("detectedsite")==null?"":dataParms.get("detectedsite") %>" style="width: 100%" name="preData.detectedsite"/>
	                </td>
	                <td colspan="3">
                        <input value="<%=editdataParms.get("detectedsite")==null?"":editdataParms.get("detectedsite") %>" class="nui-textarea" style="width: 100%" name="nextData.detectedsite"/>
                    </td>
            	</tr>
           		<tr>
                	<td class="form_label"  align="center">
                        数量:
                    </td>
                    <td colspan="1">
                        <input id="number" value="<%=dataParms.get("number")==null?"":dataParms.get("number") %>" class="nui-textbox" name="preData.number"/>
                    </td>
                    <td colspan="1">
                        <input value="<%=editdataParms.get("number")==null?"":editdataParms.get("number") %>" class="nui-textbox" name="nextData.number"/>
                    </td>
                    <td class="form_label"  align="center">
                        接近方式:
                    </td>
                    <td colspan="1">
                        <input id="approachmode" value="<%=dataParms.get("approachmode")==null?"":dataParms.get("approachmode") %>" class="nui-textbox" name="preData.approachmode"/>
                    </td>
                    <td colspan="1">
                        <input value="<%=editdataParms.get("approachmode")==null?"":editdataParms.get("approachmode") %>" class="nui-textbox" name="nextData.approachmode"/>
                    </td>
                </tr>
                <tr>
                	<td class="form_label"  align="center">
                        检查方法:
                    </td>
                    <td colspan="1">
                        <input id="method" value="<%=dataParms.get("method")==null?"":dataParms.get("method") %>" class="nui-textbox" name="preData.method"/>
                    </td>
                    <td colspan="1">
                        <input value="<%=editdataParms.get("method")==null?"":editdataParms.get("method") %>" class="nui-textbox" name="nextData.method"/>
                    </td>
                    <td class="form_label"  align="center">
                        参考程序:
                    </td>
                    <td colspan="1">
                        <input id="program" value="<%=dataParms.get("program")==null?"":dataParms.get("program") %>" class="nui-textbox" name="preData.program" />
                    </td>
                    <td colspan="1">
                    	<input id="program" value="<%=editdataParms.get("program")==null?"":editdataParms.get("program") %>" class="nui-textbox" name="nextData.program" />
                    </td>
                </tr>
                <tr>
                	<td class="form_label"  align="center">
                专用工具:
            		</td>
            		<td colspan="1">
                		<input id="tool" value="<%=dataParms.get("tool")==null?"":dataParms.get("tool") %>" class="nui-textbox" name="preData.tool"/>
	            	</td>
	            	<td colspan="1">
	            		<input id="tool" value="<%=editdataParms.get("tool")==null?"":editdataParms.get("tool") %>" class="nui-textbox" name="nextData.tool"/>
                    </td>
                    <td class="form_label"  align="center">
		                专用检查计划:
		            </td>
		            <td colspan="1">
		                <input id="inspectplan" value="<%=dataParms.get("inspectplan")==null?"":dataParms.get("inspectplan") %>" class="nui-dictcombobox" name="preData.inspectplan" dictTypeId="option"/>
		            </td>
		            <td colspan="1">
                        <input value="<%=editdataParms.get("inspectplan")==null?"":editdataParms.get("inspectplan") %>" class="nui-dictcombobox" dictTypeId="option" name="nextData.inspectplan"/>
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
	                        <input id="medium" value="<%=dataParms.get("medium")==null?"":dataParms.get("medium") %>" class="nui-textbox" name="preData.medium"/>
	                    </td>
	                    <td colspan="1">
	                        <input value="<%=editdataParms.get("medium")==null?"":editdataParms.get("medium") %>" class="nui-textbox" name="nextData.medium"/>
	                    </td>
	                    <td class="form_label"  align="center">
	                    试验部位:
	                </td>
	                <td colspan="1">
	                    <input id="site" value="<%=dataParms.get("site")==null?"":dataParms.get("site") %>" class="nui-dictcombobox" name="preData.site" dictTypeId="site"/>
	                </td>
	                <td colspan="1">
	                    <input id="site" value="<%=editdataParms.get("site")==null?"":editdataParms.get("site") %>" class="nui-dictcombobox" dictTypeId="site" name="nextData.site"/>
	                </td>
           		</tr>
           		<tr>
	           		<td class="form_label"  align="center">
	                    试验程序:
	                </td>
	                <td colspan="1">
	                    <input id="testprocedure" value="<%=dataParms.get("testprocedure")==null?"":dataParms.get("testprocedure") %>" class="nui-textbox" name="preData.testprocedure"/>
	                </td>
	                <td colspan="1">
	                    <input id="btnEdit4" value="<%=editdataParms.get("testprocedure")==null?"":editdataParms.get("testprocedure") %>" class="nui-buttonedit"  name="nextData.testprocedure"/>
	                </td>
	                <td class="form_label"  align="center">
                        运行压力（Bar）:
                    </td>
                    <td colspan="1">
                        <input id="operatingpressure" value="<%=dataParms.get("operatingpressure")==null?"":dataParms.get("operatingpressure") %>" class="nui-textbox" name="preData.operatingpressure"/>
                    </td>
                    <td colspan="1">
                        <input value="<%=editdataParms.get("operatingpressure")==null?"":editdataParms.get("operatingpressure") %>" class="nui-textbox" name="nextData.operatingpressure"/>
                    </td>
           		</tr>
           		<tr>
	           		<td class="form_label"  align="center">
	                        设计压力（Bar):
                    </td>
                    <td colspan="1">
                        <input id="designpressure" value="<%=dataParms.get("designpressure")==null?"":dataParms.get("designpressure") %>" class="nui-textbox" name="preData.designpressure"/>
                    </td>
                    <td colspan="1">
                        <input value="<%=editdataParms.get("designpressure")==null?"":editdataParms.get("designpressure") %>" class="nui-textbox" name="nextData.designpressure"/>
                    </td>
	            	<td class="form_label"  align="center">
	                    试验压力（Bar）:
	                </td>
	                <td colspan="1">
	                    <input id="testpressure" value="<%=dataParms.get("testpressure")==null?"":dataParms.get("testpressure") %>" class="nui-textbox" name="preData.testpressure"/>
	                </td>
           			<td colspan="1">
	                    <input value="<%=editdataParms.get("testpressure")==null?"":editdataParms.get("testpressure") %>" class="nui-textbox" name="nextData.testpressure"/>
	                </td>
           		</tr>
           		<tr>
	            	<td class="form_label"  align="center">
	                    首次水压试验时间:
	                </td>
	                <td colspan="1">
	                    <input id="firsttesttime" value="<%=dataParms.get("firsttesttime")==null?"":dataParms.get("firsttesttime") %>" class="nui-datepicker" name="preData.firsttesttime"/>
	                </td>
	                <td colspan="1">
	                    <input value="<%=editdataParms.get("firsttesttime")==null?"":editdataParms.get("firsttesttime") %>" class="nui-datepicker" name="nextData.firsttesttime"/>
	                </td>
	                <td class="form_label"  align="center">
	                    前次试验日期:
	                </td>
	                <td colspan="1">
	                    <input id="beforetesttime" value="<%=dataParms.get("beforetesttime")==null?"":dataParms.get("beforetesttime") %>" class="nui-datepicker" name="preData.beforetesttime"/>
	                </td>
	                <td colspan="1">
	                    <input value="<%=editdataParms.get("beforetesttime")==null?"":editdataParms.get("beforetesttime") %>" class="nui-datepicker" name="nextData.beforetesttime"/>
	                </td>
                </tr>
                <tr>
	                <td class="form_label"  align="center">
	                    下次试验最晚日期:
	                </td>
	                <td colspan="1">
	                    <input id="nexttesttime" value="<%=dataParms.get("nexttesttime")==null?"":dataParms.get("nexttesttime") %>" class="nui-datepicker" name="preData.nexttesttime"/>
	                </td> 
	                <td colspan="1">
	                    <input value="<%=editdataParms.get("nexttesttime")==null?"":editdataParms.get("nexttesttime") %>" class="nui-datepicker" name="nextData.nexttesttime"/>
	                </td>
                </tr>
           </table>
           
           <table id="nd" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
             	<tr>
					<td id="n1991" class="form_label"  align="center">
						   1991:
					</td>
					<td id="n1991i" colspan="1">
						<input id="n1991" value="<%=dataParms.get("n1991")==null?"":dataParms.get("n1991") %>" class="nui-textbox" name="preData.n1991"/>
					</td>
					<td id="n1991ii" colspan="1">
						<input id="combobox1991i"	value="<%=editdataParms.get("n1991")==null?"":editdataParms.get("n1991") %>" name="nextData.n1991"	class="nui-textbox"/>
					</td>
					<td id="n1992" class="form_label"  align="center">
						1992:
					</td>
					<td id="n1992i" colspan="1">
						<input id="n1992" value="<%=dataParms.get("n1992")==null?"":dataParms.get("n1992") %>" class="nui-textbox" name="preData.n1992"/>
					</td>
					<td id="n1992ii" colspan="1">
						<input id="combobox1992i"	value="<%=editdataParms.get("n1992")==null?"":editdataParms.get("n1992") %>" name="nextData.n1992"	class="nui-textbox"/>
					</td>
				</tr>
             <tr>
				<td id="n1993" class="form_label"  align="center">
					   1993:
				</td>
				<td id="n1993i" colspan="1">
					<input id="n1993" value="<%=dataParms.get("n1993")==null?"":dataParms.get("n1993") %>" class="nui-textbox" name="preData.n1993"/>
				</td>
				<td id="n1993ii" colspan="1">
					<input id="combobox1993i"	value="<%=editdataParms.get("n1993")==null?"":editdataParms.get("n1993") %>" name="nextData.n1993"	class="nui-textbox"/>
				</td>
				<td id="n1994" class="form_label"  align="center">
					1994:
				</td>
				<td id="n1994i" colspan="1">
					<input id="n1994" value="<%=dataParms.get("n1994")==null?"":dataParms.get("n1994") %>" class="nui-textbox" name="preData.n1994"/>
				</td>
				<td id="n1994ii" colspan="1">
					<input id="combobox1994i"	value="<%=editdataParms.get("n1994")==null?"":editdataParms.get("n1994") %>" name="nextData.n1994"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n1995" class="form_label"  align="center">
					   1995:
				</td>
				<td id="n1995i" colspan="1">
					<input id="n1995" value="<%=dataParms.get("n1995")==null?"":dataParms.get("n1995") %>" class="nui-textbox" name="preData.n1995"/>
				</td>
				<td id="n1995ii" colspan="1">
					<input id="combobox1995i"	value="<%=editdataParms.get("n1995")==null?"":editdataParms.get("n1995") %>" name="nextData.n1995"	class="nui-textbox"/>
				</td>
				<td id="n1996" class="form_label"  align="center">
					1996:
				</td>
				<td id="n1996i" colspan="1">
					<input id="n1996" value="<%=dataParms.get("n1996")==null?"":dataParms.get("n1996") %>" class="nui-textbox" name="preData.n1996"/>
				</td>
				<td id="n1996ii" colspan="1">
					<input id="combobox1996i"	value="<%=editdataParms.get("n1996")==null?"":editdataParms.get("n1996") %>" name="nextData.n1996"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n1997" class="form_label"  align="center">
					   1997:
				</td>
				<td id="n1997i" colspan="1">
					<input id="n1997" value="<%=dataParms.get("n1997")==null?"":dataParms.get("n1997") %>" class="nui-textbox" name="preData.n1997"/>
				</td>
				<td id="n1997ii" colspan="1">
					<input id="combobox1997i"	value="<%=editdataParms.get("n1997")==null?"":editdataParms.get("n1997") %>" name="nextData.n1997"	class="nui-textbox"/>
				</td>
				<td id="n1998" class="form_label"  align="center">
					1998:
				</td>
				<td id="n1998i" colspan="1">
					<input id="n1998" value="<%=dataParms.get("n1998")==null?"":dataParms.get("n1998") %>" class="nui-textbox" name="preData.n1998"/>
				</td>
				<td id="n1998ii" colspan="1">
					<input id="combobox1998i"	value="<%=editdataParms.get("n1998")==null?"":editdataParms.get("n1998") %>" name="nextData.n1998"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n1999" class="form_label"  align="center">
					   1999:
				</td>
				<td id="n1999i" colspan="1">
					<input id="n1999" value="<%=dataParms.get("n1999")==null?"":dataParms.get("n1999") %>" class="nui-textbox" name="preData.n1999"/>
				</td>
				<td id="n1999ii" colspan="1">
					<input id="combobox1999i"	value="<%=editdataParms.get("n1999")==null?"":editdataParms.get("n1999") %>" name="nextData.n1999"	class="nui-textbox"/>
				</td>
				<td id="n2000" class="form_label"  align="center">
					2000:
				</td>
				<td id="n2000i" colspan="1">
					<input id="n2000" value="<%=dataParms.get("n2000")==null?"":dataParms.get("n2000") %>" class="nui-textbox" name="preData.n2000"/>
				</td>
				<td id="n2000ii" colspan="1"> 
					<input id="combobox2000i"	value="<%=editdataParms.get("n2000")==null?"":editdataParms.get("n2000") %>" name="nextData.n2000"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2001" class="form_label"  align="center">
					   2001:
				</td>
				<td id="n2001i" colspan="1">
					<input id="n2001" value="<%=dataParms.get("n2001")==null?"":dataParms.get("n2001") %>" class="nui-textbox" name="preData.n2001"/>
				</td>
				<td id="n2001ii" colspan="1">
					<input id="combobox2001i"	value="<%=editdataParms.get("n2001")==null?"":editdataParms.get("n2001") %>" name="nextData.n2001"	class="nui-textbox"/>
				</td>
				<td id="n2002" class="form_label"  align="center">
					2002:
				</td>
				<td id="n2002i" colspan="1">
					<input id="n2002" value="<%=dataParms.get("n2002")==null?"":dataParms.get("n2002") %>" class="nui-textbox" name="preData.n2002"/>
				</td>
				<td id="n2002ii" colspan="1">
					<input id="combobox2002i"	value="<%=editdataParms.get("n2002")==null?"":editdataParms.get("n2002") %>" name="nextData.n2002"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2003" class="form_label"  align="center">
					   2003:
				</td>
				<td id="n2003i" colspan="1">
					<input id="n2003" value="<%=dataParms.get("n2003")==null?"":dataParms.get("n2003") %>" class="nui-textbox" name="preData.n2003"/>
				</td>
				<td id="n2003ii" colspan="1">
					<input id="combobox2003i"	value="<%=editdataParms.get("n2003")==null?"":editdataParms.get("n2003") %>" name="nextData.n2003"	class="nui-textbox"/>
				</td>
				<td id="n2004" class="form_label"  align="center">
					2004:
				</td>
				<td id="n2004i" colspan="1">
					<input id="n2004" value="<%=dataParms.get("n2004")==null?"":dataParms.get("n2004") %>" class="nui-textbox" name="preData.n2004"/>
				</td>
				<td id="n2004ii" colspan="1">
					<input id="combobox2004i"	value="<%=editdataParms.get("n2004")==null?"":editdataParms.get("n2004") %>" name="nextData.n2004"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2005" class="form_label"  align="center">
					   2005:
				</td>
				<td id="n2005i" colspan="1">
					<input id="n2005" value="<%=dataParms.get("n2005")==null?"":dataParms.get("n2005") %>" class="nui-textbox" name="preData.n2005"/>
				</td>
				<td id="n2005ii" colspan="1">
					<input id="combobox2005i"	value="<%=editdataParms.get("n2005")==null?"":editdataParms.get("n2005") %>" name="nextData.n2005"	class="nui-textbox"/>
				</td>
				<td id="n2006" class="form_label"  align="center">
					2006:
				</td>
				<td id="n2006i" colspan="1">
					<input id="n2006" value="<%=dataParms.get("n2006")==null?"":dataParms.get("n2006") %>" class="nui-textbox" name="preData.n2006"/>
				</td>
				<td id="n2006ii" colspan="1">
					<input id="combobox2006i"	value="<%=editdataParms.get("n2006")==null?"":editdataParms.get("n2006") %>" name="nextData.n2006"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2007" class="form_label"  align="center">
					   2007:
				</td>
				<td id="n2007i" colspan="1">
					<input id="n2007" value="<%=dataParms.get("n2007")==null?"":dataParms.get("n2007") %>" class="nui-textbox" name="preData.n2007"/>
				</td>
				<td id="n2007ii" colspan="1">
					<input id="combobox2007i"	value="<%=editdataParms.get("n2007")==null?"":editdataParms.get("n2007") %>" name="nextData.n2007"	class="nui-textbox"/>
				</td>
				<td id="n2008" class="form_label"  align="center">
					2008:
				</td>
				<td id="n2008i" colspan="1">
					<input id="n2008" value="<%=dataParms.get("n2008")==null?"":dataParms.get("n2008") %>" class="nui-textbox" name="preData.n2008"/>
				</td>
				<td id="n2008ii" colspan="1">
					<input id="combobox2008i"	value="<%=editdataParms.get("n2008")==null?"":editdataParms.get("n2008") %>" name="nextData.n2008"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2009" class="form_label"  align="center">
					   2009:
				</td>
				<td id="n2009i" colspan="1">
					<input id="n2009" value="<%=dataParms.get("n2009")==null?"":dataParms.get("n2009") %>" class="nui-textbox" name="preData.n2009"/>
				</td>
				<td id="n2009ii" colspan="1">
					<input id="combobox2009i"	value="<%=editdataParms.get("n2009")==null?"":editdataParms.get("n2009") %>" name="nextData.n2009"	class="nui-textbox"/>
				</td>
				<td id="n2010" class="form_label"  align="center">
					2010:
				</td>
				<td id="n2010i" colspan="1">
					<input id="n2010" value="<%=dataParms.get("n2010")==null?"":dataParms.get("n2010") %>" class="nui-textbox" name="preData.n2010"/>
				</td>
				<td id="n2010ii" colspan="1">
					<input id="combobox2010i"	value="<%=editdataParms.get("n2010")==null?"":editdataParms.get("n2010") %>" name="nextData.n2010"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2011" class="form_label"  align="center">
					   2011:
				</td>
				<td id="n2011i" colspan="1">
					<input id="n2011" value="<%=dataParms.get("n2011")==null?"":dataParms.get("n2011") %>" class="nui-textbox" name="preData.n2011"/>
				</td>
				<td id="n2011ii" colspan="1">
					<input id="combobox2011i"	value="<%=editdataParms.get("n2011")==null?"":editdataParms.get("n2011") %>" name="nextData.n2011"	class="nui-textbox"/>
				</td>
				<td id="n2012" class="form_label"  align="center">
					2012:
				</td>
				<td id="n2012i" colspan="1">
					<input id="n2012" value="<%=dataParms.get("n2012")==null?"":dataParms.get("n2012") %>" class="nui-textbox" name="preData.n2012"/>
				</td>
				<td id="n2012ii" colspan="1">
					<input id="combobox2012i"	value="<%=editdataParms.get("n2012")==null?"":editdataParms.get("n2012") %>" name="nextData.n2012"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2013" class="form_label"  align="center">
					   2013:
				</td>
				<td id="n2013i" colspan="1">
					<input id="n2013" value="<%=dataParms.get("n2013")==null?"":dataParms.get("n2013") %>" class="nui-textbox" name="preData.n2013"/>
				</td>
				<td id="n2013ii" colspan="1">
					<input id="combobox2013i"	value="<%=editdataParms.get("n2013")==null?"":editdataParms.get("n2013") %>" name="nextData.n2013"	class="nui-textbox"/>
				</td>
				<td id="n2014" class="form_label"  align="center">
					2014:
				</td>
				<td id="n2014i" colspan="1">
					<input id="n2014" value="<%=dataParms.get("n2014")==null?"":dataParms.get("n2014") %>" class="nui-textbox" name="preData.n2014"/>
				</td>
				<td id="n2014ii" colspan="1">
					<input id="combobox2014i"	value="<%=editdataParms.get("n2014")==null?"":editdataParms.get("n2014") %>" name="nextData.n2014"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2015" class="form_label"  align="center">
					   2015:
				</td>
				<td id="n2015i" colspan="1">
					<input id="n2015" value="<%=dataParms.get("n2015")==null?"":dataParms.get("n2015") %>" class="nui-textbox" name="preData.n2015"/>
				</td>
				<td id="n2015ii" colspan="1">
					<input id="combobox2015i"	value="<%=editdataParms.get("n2015")==null?"":editdataParms.get("n2015") %>" name="nextData.n2015"	class="nui-textbox"/>
				</td>
				<td id="n2016" class="form_label"  align="center">
					2016:
				</td>
				<td id="n2016i" colspan="1">
					<input id="n2016" value="<%=dataParms.get("n2016")==null?"":dataParms.get("n2016") %>" class="nui-textbox" name="preData.n2016"/>
				</td>
				<td id="n2016ii" colspan="1">
					<input id="combobox2016i"	value="<%=editdataParms.get("n2016")==null?"":editdataParms.get("n2016") %>" name="nextData.n2016"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2017" class="form_label"  align="center">
					   2017:
				</td>
				<td id="n2017i" colspan="1">
					<input id="n2017" value="<%=dataParms.get("n2017")==null?"":dataParms.get("n2017") %>" class="nui-textbox" name="preData.n2017"/>
				</td>
				<td id="n2017ii" colspan="1">
					<input id="combobox2017i"	value="<%=editdataParms.get("n2017")==null?"":editdataParms.get("n2017") %>" name="nextData.n2017"	 class="nui-textbox"/>
				</td>
				<td id="n2018" class="form_label"  align="center">
					2018:
				</td>
				<td id="n2018i" colspan="1">
					<input id="n2018" value="<%=dataParms.get("n2018")==null?"":dataParms.get("n2018") %>" class="nui-textbox" name="preData.n2018"/>
				</td>
				<td id="n2018ii" colspan="1">
					<input id="combobox2018i"	value="<%=editdataParms.get("n2018")==null?"":editdataParms.get("n2018") %>" name="nextData.n2018"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2019" class="form_label"  align="center">
					   2019:
				</td>
				<td id="n2019i" colspan="1">
					<input id="n2019" value="<%=dataParms.get("n2019")==null?"":dataParms.get("n2019") %>" class="nui-textbox" name="preData.n2019"/>
				</td>
				<td id="n2019ii" colspan="1">
					<input id="combobox2019i"	value="<%=editdataParms.get("n2019")==null?"":editdataParms.get("n2019") %>" name="nextData.n2019"	class="nui-textbox"/>
				</td>
				<td id="n2020" class="form_label"  align="center">
					2020:
				</td>
				<td id="n2020i" colspan="1">
					<input id="n2020" value="<%=dataParms.get("n2020")==null?"":dataParms.get("n2020") %>" class="nui-textbox" name="preData.n2020"/>
				</td>
				<td id="n2020ii" colspan="1">
					<input id="combobox2020i"	value="<%=editdataParms.get("n2020")==null?"":editdataParms.get("n2020") %>" name="nextData.n2020"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2021" class="form_label"  align="center">
					   2021:
				</td>
				<td id="n2021i" colspan="1">
					<input id="n2021" value="<%=dataParms.get("n2021")==null?"":dataParms.get("n2021") %>" class="nui-textbox" name="preData.n2021"/>
				</td>
				<td id="n2021ii" colspan="1">
					<input id="combobox2021i"	value="<%=editdataParms.get("n2021")==null?"":editdataParms.get("n2021") %>" name="nextData.n2021"	class="nui-textbox"/>
				</td>
				<td id="n2022" class="form_label"  align="center">
					2022:
				</td>
				<td id="n2022i" colspan="1">
					<input id="n2022" value="<%=dataParms.get("n2022")==null?"":dataParms.get("n2022") %>" class="nui-textbox" name="preData.n2022"/>
				</td>
				<td id="n2022ii" colspan="1">
					<input id="combobox2022i"	value="<%=editdataParms.get("n2022")==null?"":editdataParms.get("n2022") %>" name="nextData.n2022"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2023" class="form_label"  align="center">
					   2023:
				</td>
				<td id="n2023i" colspan="1">
					<input id="n2023" value="<%=dataParms.get("n2023")==null?"":dataParms.get("n2023") %>" class="nui-textbox" name="preData.n2023"/>
				</td>
				<td id="n2023ii" colspan="1">
					<input id="combobox2023i"	value="<%=editdataParms.get("n2023")==null?"":editdataParms.get("n2023") %>" name="nextData.n2023"	class="nui-textbox"/>
				</td>
				<td id="n2024" class="form_label"  align="center">
					2024:
				</td>
				<td id="n2024i" colspan="1">
					<input id="n2024" value="<%=dataParms.get("n2024")==null?"":dataParms.get("n2024") %>" class="nui-textbox" name="preData.n2024"/>
				</td>
				<td id="n2024ii" colspan="1">
					<input id="combobox2024i"	value="<%=editdataParms.get("n2024")==null?"":editdataParms.get("n2024") %>" name="nextData.n2024"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2025" class="form_label"  align="center">
					   2025:
				</td>
				<td id="n2025i" colspan="1">
					<input id="n2025" value="<%=dataParms.get("n2025")==null?"":dataParms.get("n2025") %>" class="nui-textbox" name="preData.n2025"/>
				</td>
				<td id="n2025ii" colspan="1">
					<input id="combobox2025i"	value="<%=editdataParms.get("n2025")==null?"":editdataParms.get("n2025") %>" name="nextData.n2025"	class="nui-textbox"/>
				</td>
				<td id="n2026" class="form_label"  align="center">
					2026:
				</td>
				<td id="n2026i" colspan="1">
					<input id="n2026" value="<%=dataParms.get("n2026")==null?"":dataParms.get("n2026") %>" class="nui-textbox" name="preData.n2026"/>
				</td>
				<td id="n2026ii" colspan="1">
					<input id="combobox2026i"	value="<%=editdataParms.get("n2026")==null?"":editdataParms.get("n2026") %>" name="nextData.n2026"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2027" class="form_label"  align="center">
					   2027:
				</td>
				<td id="n2027i" colspan="1">
					<input id="n2027" value="<%=dataParms.get("n2027")==null?"":dataParms.get("n2027") %>" class="nui-textbox" name="preData.n2027"/>
				</td>
				<td id="n2027ii" colspan="1">
					<input id="combobox2027i"	value="<%=editdataParms.get("n2027")==null?"":editdataParms.get("n2027") %>" name="nextData.n2027"	class="nui-textbox"/>
				</td>
				<td id="n2028" class="form_label"  align="center">
					2028:
				</td>
				<td id="n2028i" colspan="1">
					<input id="n2028" value="<%=dataParms.get("n2028")==null?"":dataParms.get("n2028") %>" class="nui-textbox" name="preData.n2028"/>
				</td>
				<td id="n2028ii" colspan="1">
					<input id="combobox2028i"	value="<%=editdataParms.get("n2028")==null?"":editdataParms.get("n2028") %>" name="nextData.n2028"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2029" class="form_label"  align="center">
					   2029:
				</td>
				<td id="n2029i" colspan="1">
					<input id="n2029" value="<%=dataParms.get("n2029")==null?"":dataParms.get("n2029") %>" class="nui-textbox" name="preData.n2029"/>
				</td>
				<td id="n2029ii" colspan="1">
					<input id="combobox2029i"	value="<%=editdataParms.get("n2029")==null?"":editdataParms.get("n2029") %>" name="nextData.n2029"	class="nui-textbox"/>
				</td>
				<td id="n2030" class="form_label"  align="center">
					2030:
				</td>
				<td id="n2030i" colspan="1">
					<input id="n2030" value="<%=dataParms.get("n2030")==null?"":dataParms.get("n2030") %>" class="nui-textbox" name="preData.n2030"/>
				</td>
				<td id="n2030ii" colspan="1">
					<input id="combobox2030i"	value="<%=editdataParms.get("n2030")==null?"":editdataParms.get("n2030") %>" name="nextData.n2030"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2031" class="form_label"  align="center">
					   2031:
				</td>
				<td id="n2031i" colspan="1">
					<input id="n2031" value="<%=dataParms.get("n2031")==null?"":dataParms.get("n2031") %>" class="nui-textbox" name="preData.n2031"/>
				</td>
				<td id="n2031ii" colspan="1">
					<input id="combobox2031i"	value="<%=editdataParms.get("n2031")==null?"":editdataParms.get("n2031") %>" name="nextData.n2031"	class="nui-textbox"/>
				</td>
				<td id="n2032" class="form_label"  align="center">
					2032:
				</td>
				<td id="n2032i" colspan="1">
					<input id="n2032" value="<%=dataParms.get("n2032")==null?"":dataParms.get("n2032") %>" class="nui-textbox" name="preData.n2032"/>
				</td>
				<td id="n2032ii" colspan="1">
					<input id="combobox2032i"	value="<%=editdataParms.get("n2032")==null?"":editdataParms.get("n2032") %>" name="nextData.n2032"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2033" class="form_label"  align="center">
					   2033:
				</td>
				<td id="n2033i" colspan="1">
					<input id="n2033" value="<%=dataParms.get("n2033")==null?"":dataParms.get("n2033") %>" class="nui-textbox" name="preData.n2033"/>
				</td>
				<td id="n2033ii" colspan="1">
					<input id="combobox2033i"	value="<%=editdataParms.get("n2033")==null?"":editdataParms.get("n2033") %>" name="nextData.n2033"	class="nui-textbox"/>
				</td>
				<td id="n2034" class="form_label"  align="center">
					2034:
				</td>
				<td id="n2034i" colspan="1">
					<input id="n2034" value="<%=dataParms.get("n2034")==null?"":dataParms.get("n2034") %>" class="nui-textbox" name="preData.n2034"/>
				</td>
				<td id="n2034ii" colspan="1">
					<input id="combobox2034i"	value="<%=editdataParms.get("n2034")==null?"":editdataParms.get("n2034") %>" name="nextData.n2034"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2035" class="form_label"  align="center">
					   2035:
				</td>
				<td id="n2035i" colspan="1">
					<input id="n2035" value="<%=dataParms.get("n2035")==null?"":dataParms.get("n2035") %>" class="nui-textbox" name="preData.n2035"/>
				</td>
				<td id="n2035ii" colspan="1">
					<input id="combobox2035i"	value="<%=editdataParms.get("n2035")==null?"":editdataParms.get("n2035") %>" name="nextData.n2035"	class="nui-textbox"/>
				</td>
				<td id="n2036" class="form_label"  align="center">
					2036:
				</td>
				<td id="n2036i" colspan="1">
					<input id="n2036" value="<%=dataParms.get("n2036")==null?"":dataParms.get("n2036") %>" class="nui-textbox" name="preData.n2036"/>
				</td>
				<td id="n2036ii" colspan="1">
					<input id="combobox2036i"	value="<%=editdataParms.get("n2036")==null?"":editdataParms.get("n2036") %>" name="nextData.n2036"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2037" class="form_label"  align="center">
					   2037:
				</td>
				<td id="n2037i" colspan="1">
					<input id="n2037" value="<%=dataParms.get("n2037")==null?"":dataParms.get("n2037") %>" class="nui-textbox" name="preData.n2037"/>
				</td>
				<td id="n2037ii" colspan="1">
					<input id="combobox2037i"	value="<%=editdataParms.get("n2037")==null?"":editdataParms.get("n2037") %>" name="nextData.n2037"	class="nui-textbox"/>
				</td>
				<td id="n2038" class="form_label"  align="center">
					2038:
				</td>
				<td id="n2038i" colspan="1">
					<input id="n2038" value="<%=dataParms.get("n2038")==null?"":dataParms.get("n2038") %>" class="nui-textbox" name="preData.n2038"/>
				</td>
				<td id="n2038ii" colspan="1">
					<input id="combobox2038i"	value="<%=editdataParms.get("n2038")==null?"":editdataParms.get("n2038") %>" name="nextData.n2038"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2039" class="form_label"  align="center">
					   2039:
				</td>
				<td id="n2039i" colspan="1">
					<input id="n2039" value="<%=dataParms.get("n2039")==null?"":dataParms.get("n2039") %>" class="nui-textbox" name="preData.n2039"/>
				</td>
				<td id="n2039ii" colspan="1">
					<input id="combobox2039i"	value="<%=editdataParms.get("n2039")==null?"":editdataParms.get("n2039") %>" name="nextData.n2039"	class="nui-textbox"/>
				</td>
				<td id="n2040" class="form_label"  align="center">
					2040:
				</td>
				<td id="n2040i" colspan="1">
					<input id="n2040" value="<%=dataParms.get("n2040")==null?"":dataParms.get("n2040") %>" class="nui-textbox" name="preData.n2040"/>
				</td>
				<td id="n2040ii" colspan="1">
					<input id="combobox2040i"	value="<%=editdataParms.get("n2040")==null?"":editdataParms.get("n2040") %>" name="nextData.n2040"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2041" class="form_label"  align="center">
					   2041:
				</td>
				<td id="n2041i" colspan="1">
					<input id="n2041" value="<%=dataParms.get("n2041")==null?"":dataParms.get("n2041") %>" class="nui-textbox" name="preData.n2041"/>
				</td>
				<td id="n2041ii" colspan="1">
					<input id="combobox2041i"	value="<%=editdataParms.get("n2041")==null?"":editdataParms.get("n2041") %>" name="nextData.n2041"	class="nui-textbox"/>
				</td>
				<td id="n2042" class="form_label"  align="center">
					2042:
				</td>
				<td id="n2042i" colspan="1">
					<input id="n2042" value="<%=dataParms.get("n2042")==null?"":dataParms.get("n2042") %>" class="nui-textbox" name="preData.n2042"/>
				</td>
				<td id="n2042ii" colspan="1">
					<input id="combobox2042i"	value="<%=editdataParms.get("n2042")==null?"":editdataParms.get("n2042") %>" name="nextData.n2042"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2043" class="form_label"  align="center">
					   2043:
				</td>
				<td id="n2043i" colspan="1">
					<input id="n2043" value="<%=dataParms.get("n2043")==null?"":dataParms.get("n2043") %>" class="nui-textbox" name="preData.n2043"/>
				</td>
				<td id="n2043ii" colspan="1">
					<input id="combobox2043i"	value="<%=editdataParms.get("n2043")==null?"":editdataParms.get("n2043") %>" name="nextData.n2043"	class="nui-textbox"/>
				</td>
				<td id="n2044" class="form_label"  align="center">
					2044:
				</td>
				<td id="n2044i" colspan="1">
					<input id="n2044" value="<%=dataParms.get("n2044")==null?"":dataParms.get("n2044") %>" class="nui-textbox" name="preData.n2044"/>
				</td>
				<td id="n2044ii" colspan="1">
					<input id="combobox2044i"	value="<%=editdataParms.get("n2044")==null?"":editdataParms.get("n2044") %>" name="nextData.n2044"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2045" class="form_label"  align="center">
					   2045:
				</td>
				<td id="n2045i" colspan="1">
					<input id="n2045" value="<%=dataParms.get("n2045")==null?"":dataParms.get("n2045") %>" class="nui-textbox" name="preData.n2045"/>
				</td>
				<td id="n2045ii" colspan="1">
					<input id="combobox2045i"	value="<%=editdataParms.get("n2045")==null?"":editdataParms.get("n2045") %>" name="nextData.n2045"	class="nui-textbox"/>
				</td>
				<td id="n2046" class="form_label"  align="center">
					2046:
				</td>
				<td id="n2046i" colspan="1">
					<input id="n2046" value="<%=dataParms.get("n2046")==null?"":dataParms.get("n2046") %>" class="nui-textbox" name="preData.n2046"/>
				</td>
				<td id="n2046ii" colspan="1">
					<input id="combobox2046i"	value="<%=editdataParms.get("n2046")==null?"":editdataParms.get("n2046") %>" name="nextData.n2046"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2047" class="form_label"  align="center">
					   2047:
				</td>
				<td id="n2047i" colspan="1">
					<input id="n2047" value="<%=dataParms.get("n2047")==null?"":dataParms.get("n2047") %>" class="nui-textbox" name="preData.n2047"/>
				</td>
				<td id="n2047ii" colspan="1">
					<input id="combobox2047i"	value="<%=editdataParms.get("n2047")==null?"":editdataParms.get("n2047") %>" name="nextData.n2047"	class="nui-textbox"/>
				</td>
				<td id="n2048" class="form_label"  align="center">
					2048:
				</td>
				<td id="n2048i" colspan="1">
					<input id="n2048" value="<%=dataParms.get("n2048")==null?"":dataParms.get("n2048") %>" class="nui-textbox" name="preData.n2048"/>
				</td>
				<td id="n2048ii" colspan="1">
					<input id="combobox2048i"	value="<%=editdataParms.get("n2048")==null?"":editdataParms.get("n2048") %>" name="nextData.n2048"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2049" class="form_label"  align="center">
					   2049:
				</td>
				<td id="n2049i" colspan="1">
					<input id="n2049" value="<%=dataParms.get("n2049")==null?"":dataParms.get("n2049") %>" class="nui-textbox" name="preData.n2049"/>
				</td>
				<td id="n2049ii" colspan="1">
					<input id="combobox2049i"	value="<%=editdataParms.get("n2049")==null?"":editdataParms.get("n2049") %>" name="nextData.n2049"	class="nui-textbox"/>
				</td>
				<td id="n2050" class="form_label"  align="center">
					2050:
				</td>
				<td id="n2050i" colspan="1">
					<input id="n2050" value="<%=dataParms.get("n2050")==null?"":dataParms.get("n2050") %>" class="nui-textbox" name="preData.n2050"/>
				</td>
				<td id="n2050ii" colspan="1">
					<input id="combobox2050i"	value="<%=editdataParms.get("n2050")==null?"":editdataParms.get("n2050") %>" name="nextData.n2050"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2051" class="form_label"  align="center">
					   2051:
				</td>
				<td id="n2051i" colspan="1">
					<input id="n2051" value="<%=dataParms.get("n2051")==null?"":dataParms.get("n2051") %>" class="nui-textbox" name="preData.n2051"/>
				</td>
				<td id="n2051ii" colspan="1">
					<input id="combobox2051i"	value="<%=editdataParms.get("n2051")==null?"":editdataParms.get("n2051") %>" name="nextData.n2051"	class="nui-textbox"/>
				</td>
				<td id="n2052" class="form_label"  align="center">
					2052:
				</td>
				<td id="n2052i" colspan="1">
					<input id="n2052" value="<%=dataParms.get("n2052")==null?"":dataParms.get("n2052") %>" class="nui-textbox" name="preData.n2052"/>
				</td>
				<td id="n2052ii" colspan="1">
					<input id="combobox2052i"	value="<%=editdataParms.get("n2052")==null?"":editdataParms.get("n2052") %>" name="nextData.n2052"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2053" class="form_label"  align="center">
					   2053:
				</td>
				<td id="n2053i" colspan="1">
					<input id="n2053" value="<%=dataParms.get("n2053")==null?"":dataParms.get("n2053") %>" class="nui-textbox" name="preData.n2053"/>
				</td>
				<td id="n2053ii" colspan="1">
					<input id="combobox2053i"	value="<%=editdataParms.get("n2053")==null?"":editdataParms.get("n2053") %>" name="nextData.n2053"	class="nui-textbox"/>
				</td>
				<td id="n2054" class="form_label"  align="center">
					2054:
				</td>
				<td id="n2054i" colspan="1">
					<input id="n2054" value="<%=dataParms.get("n2054")==null?"":dataParms.get("n2054") %>" class="nui-textbox" name="preData.n2054"/>
				</td>
				<td id="n2054ii" colspan="1">
					<input id="combobox2054i"	value="<%=editdataParms.get("n2054")==null?"":editdataParms.get("n2054") %>" name="nextData.n2054"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2055" class="form_label"  align="center">
					   2055:
				</td>
				<td id="n2055i" colspan="1">
					<input id="n2055" value="<%=dataParms.get("n2055")==null?"":dataParms.get("n2055") %>" class="nui-textbox" name="preData.n2055"/>
				</td>
				<td id="n2055ii" colspan="1">
					<input id="combobox2055i"	value="<%=editdataParms.get("n2055")==null?"":editdataParms.get("n2055") %>" name="nextData.n2055"	class="nui-textbox"/>
				</td>
				<td id="n2056" class="form_label"  align="center">
					2056:
				</td>
				<td id="n2056i" colspan="1">
					<input id="n2056" value="<%=dataParms.get("n2056")==null?"":dataParms.get("n2056") %>" class="nui-textbox" name="preData.n2056"/>
				</td>
				<td id="n2056ii" colspan="1">
					<input id="combobox2056i"	value="<%=editdataParms.get("n2056")==null?"":editdataParms.get("n2056") %>" name="nextData.n2056"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2057" class="form_label"  align="center">
					   2057:
				</td>
				<td id="n2057i" colspan="1">
					<input id="n2057" value="<%=dataParms.get("n2057")==null?"":dataParms.get("n2057") %>" class="nui-textbox" name="preData.n2057"/>
				</td>
				<td id="n2057ii" colspan="1">
					<input id="combobox2057i"	value="<%=editdataParms.get("n2057")==null?"":editdataParms.get("n2057") %>" name="nextData.n2057"	class="nui-textbox"/>
				</td>
				<td id="n2058" class="form_label"  align="center">
					2058:
				</td>
				<td id="n2058i" colspan="1">
					<input id="n2058" value="<%=dataParms.get("n2058")==null?"":dataParms.get("n2058") %>" class="nui-textbox" name="preData.n2058"/>
				</td>
				<td id="n2058ii" colspan="1">
					<input id="combobox2058i"	value="<%=editdataParms.get("n2058")==null?"":editdataParms.get("n2058") %>" name="nextData.n2058"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2059" class="form_label"  align="center">
					   2059:
				</td>
				<td id="n2059i" colspan="1">
					<input id="n2059" value="<%=dataParms.get("n2059")==null?"":dataParms.get("n2059") %>" class="nui-textbox" name="preData.n2059"/>
				</td>
				<td id="n2059ii" colspan="1">
					<input id="combobox2059i"	value="<%=editdataParms.get("n2059")==null?"":editdataParms.get("n2059") %>" name="nextData.n2059"	class="nui-textbox"/>
				</td>
				<td id="n2060" class="form_label"  align="center">
					2060:
				</td>
				<td id="n2060i" colspan="1">
					<input id="n2060" value="<%=dataParms.get("n2060")==null?"":dataParms.get("n2060") %>" class="nui-textbox" name="preData.n2060"/>
				</td>
				<td id="n2060ii" colspan="1">
					<input id="combobox2060i"	value="<%=editdataParms.get("n2060")==null?"":editdataParms.get("n2060") %>" name="nextData.n2060"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2061" class="form_label"  align="center">
					   2061:
				</td>
				<td id="n2061i" colspan="1">
					<input id="n2061" value="<%=dataParms.get("n2061")==null?"":dataParms.get("n2061") %>" class="nui-textbox" name="preData.n2061"/>
				</td>
				<td id="n2061ii" colspan="1">
					<input id="combobox2061i"	value="<%=editdataParms.get("n2061")==null?"":editdataParms.get("n2061") %>" name="nextData.n2061"	class="nui-textbox"/>
				</td>
				<td id="n2062" class="form_label"  align="center">
					2062:
				</td>
				<td id="n2062i" colspan="1">
					<input id="n2062" value="<%=dataParms.get("n2062")==null?"":dataParms.get("n2062") %>" class="nui-textbox" name="preData.n2062"/>
				</td>
				<td id="n2062ii" colspan="1">
					<input id="combobox2062i"	value="<%=editdataParms.get("n2062")==null?"":editdataParms.get("n2062") %>" name="nextData.n2062"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2063" class="form_label"  align="center">
					   2063:
				</td>
				<td id="n2063i" colspan="1">
					<input id="n2063" value="<%=dataParms.get("n2063")==null?"":dataParms.get("n2063") %>" class="nui-textbox" name="preData.n2063"/>
				</td>
				<td id="n2063ii" colspan="1">
					<input id="combobox2063i"	value="<%=editdataParms.get("n2063")==null?"":editdataParms.get("n2063") %>" name="nextData.n2063"	class="nui-textbox"/>
				</td>
				<td id="n2064" class="form_label"  align="center">
					2064:
				</td>
				<td id="n2064i" colspan="1">
					<input id="n2064" value="<%=dataParms.get("n2064")==null?"":dataParms.get("n2064") %>" class="nui-textbox" name="preData.n2064"/>
				</td>
				<td id="n2064ii" colspan="1">
					<input id="combobox2064i"	value="<%=editdataParms.get("n2064")==null?"":editdataParms.get("n2064") %>" name="nextData.n2064"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2065" class="form_label"  align="center">
					   2065:
				</td>
				<td id="n2065i" colspan="1">
					<input id="n2065" value="<%=dataParms.get("n2065")==null?"":dataParms.get("n2065") %>" class="nui-textbox" name="preData.n2065"/>
				</td>
				<td id="n2065ii" colspan="1">
					<input id="combobox2065i"	value="<%=editdataParms.get("n2065")==null?"":editdataParms.get("n2065") %>" name="nextData.n2065"	class="nui-textbox"/>
				</td>
				<td id="n2066" class="form_label"  align="center">
					2066:
				</td>
				<td id="n2066i" colspan="1">
					<input id="n2066" value="<%=dataParms.get("n2066")==null?"":dataParms.get("n2066") %>" class="nui-textbox" name="preData.n2066"/>
				</td>
				<td id="n2066ii" colspan="1">
					<input id="combobox2066i"	value="<%=editdataParms.get("n2066")==null?"":editdataParms.get("n2066") %>" name="nextData.n2066"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2067" class="form_label"  align="center">
					   2067:
				</td>
				<td id="n2067i" colspan="1">
					<input id="n2067" value="<%=dataParms.get("n2067")==null?"":dataParms.get("n2067") %>" class="nui-textbox" name="preData.n2067"/>
				</td>
				<td id="n2067ii" colspan="1">
					<input id="combobox2067i"	value="<%=editdataParms.get("n2067")==null?"":editdataParms.get("n2067") %>" name="nextData.n2067"	class="nui-textbox"/>
				</td>
				<td id="n2068" class="form_label"  align="center">
					2068:
				</td>
				<td id="n2068i" colspan="1">
					<input id="n2068" value="<%=dataParms.get("n2068")==null?"":dataParms.get("n2068") %>" class="nui-textbox" name="preData.n2068"/>
				</td>
				<td id="n2068ii" colspan="1">
					<input id="combobox2068i"	value="<%=editdataParms.get("n2068")==null?"":editdataParms.get("n2068") %>" name="nextData.n2068"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2069" class="form_label"  align="center">
					   2069:
				</td>
				<td id="n2069i" colspan="1">
					<input id="n2069" value="<%=dataParms.get("n2069")==null?"":dataParms.get("n2069") %>" class="nui-textbox" name="preData.n2069"/>
				</td>
				<td id="n2069ii" colspan="1">
					<input id="combobox2069i"	value="<%=editdataParms.get("n2069")==null?"":editdataParms.get("n2069") %>" name="nextData.n2069"	class="nui-textbox"/>
				</td>
				<td id="n2070" class="form_label"  align="center">
					2070:
				</td>
				<td id="n2070i" colspan="1">
					<input id="n2070" value="<%=dataParms.get("n2070")==null?"":dataParms.get("n2070") %>" class="nui-textbox" name="preData.n2070"/>
				</td>
				<td id="n2070ii" colspan="1">
					<input id="combobox2070i"	value="<%=editdataParms.get("n2070")==null?"":editdataParms.get("n2070") %>" name="nextData.n2070"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2071" class="form_label"  align="center">
					   2071:
				</td>
				<td id="n2071i" colspan="1">
					<input id="n2071" value="<%=dataParms.get("n2071")==null?"":dataParms.get("n2071") %>" class="nui-textbox" name="preData.n2071"/>
				</td>
				<td id="n2071ii" colspan="1">
					<input id="combobox2071i"	value="<%=editdataParms.get("n2071")==null?"":editdataParms.get("n2071") %>" name="nextData.n2071"	class="nui-textbox"/>
				</td>
				<td id="n2072" class="form_label"  align="center">
					2072:
				</td>
				<td id="n2072i" colspan="1">
					<input id="n2072" value="<%=dataParms.get("n2072")==null?"":dataParms.get("n2072") %>" class="nui-textbox" name="preData.n2072"/>
				</td>
				<td id="n2072ii" colspan="1">
					<input id="combobox2072i"	value="<%=editdataParms.get("n2072")==null?"":editdataParms.get("n2072") %>" name="nextData.n2072"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2073" class="form_label"  align="center">
					   2073:
				</td>
				<td id="n2073i" colspan="1">
					<input id="n2073" value="<%=dataParms.get("n2073")==null?"":dataParms.get("n2073") %>" class="nui-textbox" name="preData.n2073"/>
				</td>
				<td id="n2073ii" colspan="1">
					<input id="combobox2073i"	value="<%=editdataParms.get("n2073")==null?"":editdataParms.get("n2073") %>" name="nextData.n2073"	class="nui-textbox"/>
				</td>
				<td id="n2074" class="form_label"  align="center">
					2074:
				</td>
				<td id="n2074i" colspan="1">
					<input id="n2074" value="<%=dataParms.get("n2074")==null?"":dataParms.get("n2074") %>" class="nui-textbox" name="preData.n2074"/>
				</td>
				<td id="n2074ii" colspan="1">
					<input id="combobox2074i"	value="<%=editdataParms.get("n2074")==null?"":editdataParms.get("n2074") %>" name="nextData.n2074"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2075" class="form_label"  align="center">
					   2075:
				</td>
				<td id="n2075i" colspan="1">
					<input id="n2075" value="<%=dataParms.get("n2075")==null?"":dataParms.get("n2075") %>" class="nui-textbox" name="preData.n2075"/>
				</td>
				<td id="n2075ii" colspan="1">
					<input id="combobox2075i"	value="<%=editdataParms.get("n2075")==null?"":editdataParms.get("n2075") %>" name="nextData.n2075"	class="nui-textbox"/>
				</td>
				<td id="n2076" class="form_label"  align="center">
					2076:
				</td>
				<td id="n2076i" colspan="1">
					<input id="n2076" value="<%=dataParms.get("n2076")==null?"":dataParms.get("n2076") %>" class="nui-textbox" name="preData.n2076"/>
				</td>
				<td id="n2076ii" colspan="1">
					<input id="combobox2076i"	value="<%=editdataParms.get("n2076")==null?"":editdataParms.get("n2076") %>" name="nextData.n2076"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2077" class="form_label"  align="center">
					   2077:
				</td>
				<td id="n2077i" colspan="1">
					<input id="n2077" value="<%=dataParms.get("n2077")==null?"":dataParms.get("n2077") %>" class="nui-textbox" name="preData.n2077"/>
				</td>
				<td id="n2077ii" colspan="1">
					<input id="combobox2077i"	value="<%=editdataParms.get("n2077")==null?"":editdataParms.get("n2077") %>" name="nextData.n2077"	class="nui-textbox"/>
				</td>
				<td id="n2078" class="form_label"  align="center">
					2078:
				</td>
				<td id="n2078i" colspan="1">
					<input id="n2078" value="<%=dataParms.get("n2078")==null?"":dataParms.get("n2078") %>" class="nui-textbox" name="preData.n2078"/>
				</td>
				<td id="n2078ii" colspan="1">
					<input id="combobox2078i"	value="<%=editdataParms.get("n2078")==null?"":editdataParms.get("n2078") %>" name="nextData.n2078"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2079" class="form_label"  align="center">
					   2079:
				</td>
				<td id="n2079i" colspan="1">
					<input id="n2079" value="<%=dataParms.get("n2079")==null?"":dataParms.get("n2079") %>" class="nui-textbox" name="preData.n2079"/>
				</td>
				<td id="n2079ii" colspan="1">
					<input id="combobox2079i"	value="<%=editdataParms.get("n2079")==null?"":editdataParms.get("n2079") %>" name="nextData.n2079"	class="nui-textbox"/>
				</td>
				<td id="n2080" class="form_label"  align="center">
					2080:
				</td>
				<td id="n2080i" colspan="1">
					<input id="n2080" value="<%=dataParms.get("n2080")==null?"":dataParms.get("n2080") %>" class="nui-textbox" name="preData.n2080"/>
				</td>
				<td id="n2080ii" colspan="1">
					<input id="combobox2080i"	value="<%=editdataParms.get("n2080")==null?"":editdataParms.get("n2080") %>" name="nextData.n2080"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2081" class="form_label"  align="center">
					   2081:
				</td>
				<td id="n2081i" colspan="1">
					<input id="n2081" value="<%=dataParms.get("n2081")==null?"":dataParms.get("n2081") %>" class="nui-textbox" name="preData.n2081"/>
				</td>
				<td id="n2081ii" colspan="1">
					<input id="combobox2081i"	value="<%=editdataParms.get("n2081")==null?"":editdataParms.get("n2081") %>" name="nextData.n2081"	class="nui-textbox"/>
				</td>
				<td id="n2082" class="form_label"  align="center">
					2082:
				</td>
				<td id="n2082i" colspan="1">
					<input id="n2082" value="<%=dataParms.get("n2082")==null?"":dataParms.get("n2082") %>" class="nui-textbox" name="preData.n2082"/>
				</td>
				<td id="n2082ii" colspan="1">
					<input id="combobox2082i"	value="<%=editdataParms.get("n2082")==null?"":editdataParms.get("n2082") %>" name="nextData.n2082"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2083" class="form_label"  align="center">
					   2083:
				</td>
				<td id="n2083i" colspan="1">
					<input id="n2083" value="<%=dataParms.get("n2083")==null?"":dataParms.get("n2083") %>" class="nui-textbox" name="preData.n2083"/>
				</td>
				<td id="n2083ii" colspan="1">
					<input id="combobox2083i"	value="<%=editdataParms.get("n2083")==null?"":editdataParms.get("n2083") %>" name="nextData.n2083"	class="nui-textbox"/>
				</td>
				<td id="n2084" class="form_label"  align="center">
					2084:
				</td>
				<td id="n2084i" colspan="1">
					<input id="n2084" value="<%=dataParms.get("n2084")==null?"":dataParms.get("n2084") %>" class="nui-textbox" name="preData.n2084"/>
				</td>
				<td id="n2084ii" colspan="1">
					<input id="combobox2084i"	value="<%=editdataParms.get("n2084")==null?"":editdataParms.get("n2084") %>" name="nextData.n2084"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2085" class="form_label"  align="center">
					   2085:
				</td>
				<td id="n2085i" colspan="1">
					<input id="n2085" value="<%=dataParms.get("n2085")==null?"":dataParms.get("n2085") %>" class="nui-textbox" name="preData.n2085"/>
				</td>
				<td id="n2085ii" colspan="1">
					<input id="combobox2085i"	value="<%=editdataParms.get("n2085")==null?"":editdataParms.get("n2085") %>" name="nextData.n2085"	class="nui-textbox"/>
				</td>
				<td id="n2086" class="form_label"  align="center">
					2086:
				</td>
				<td id="n2086i" colspan="1">
					<input id="n2086" value="<%=dataParms.get("n2086")==null?"":dataParms.get("n2086") %>" class="nui-textbox" name="preData.n2086"/>
				</td>
				<td id="n2086ii" colspan="1">
					<input id="combobox2086i"	value="<%=editdataParms.get("n2086")==null?"":editdataParms.get("n2086") %>" name="nextData.n2086"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2087" class="form_label"  align="center">
					   2087:
				</td>
				<td id="n2087i" colspan="1">
					<input id="n2087" value="<%=dataParms.get("n2087")==null?"":dataParms.get("n2087") %>" class="nui-textbox" name="preData.n2087"/>
				</td>
				<td id="n2087ii" colspan="1">
					<input id="combobox2087i"	value="<%=editdataParms.get("n2087")==null?"":editdataParms.get("n2087") %>" name="nextData.n2087"	class="nui-textbox"/>
				</td>
				<td id="n2088" class="form_label"  align="center">
					2088:
				</td>
				<td id="n2088i" colspan="1">
					<input id="n2088" value="<%=dataParms.get("n2088")==null?"":dataParms.get("n2088") %>" class="nui-textbox" name="preData.n2088"/>
				</td>
				<td id="n2088ii" colspan="1">
					<input id="combobox2088i"	value="<%=editdataParms.get("n2088")==null?"":editdataParms.get("n2088") %>" name="nextData.n2088"	class="nui-textbox"/>
				</td>
			</tr>
			<tr>
				<td id="n2089" class="form_label"  align="center">
					   2089:
				</td>
				<td id="n2089i" colspan="1">
					<input id="n2089" value="<%=dataParms.get("n2089")==null?"":dataParms.get("n2089") %>" class="nui-textbox" name="preData.n2089"/>
				</td>
				<td id="n2089ii" colspan="1">
					<input id="combobox2089i"	value="<%=editdataParms.get("n2089")==null?"":editdataParms.get("n2089") %>" name="nextData.n2089"	class="nui-textbox"/>
				</td>
			</tr>
             </table>
             
             
             <!-- 人员及原因信息 -->
              <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
              <tr>
                    <td class="form_label"  align="center">
                        备注:
                    </td>
                    <td colspan="2">
                        <input id="remark" value="<%=dataParms.get("remark")==null?"":dataParms.get("remark") %>" style="width: 100%" class="nui-textarea" name="preData.remark"/>
                    </td>
                    <td colspan="3">
                        <input value="<%=editdataParms.get("remark")==null?"":editdataParms.get("remark") %>" style="width: 100%" class="nui-textarea" name="nextData.remark"/>
                    </td>
                </tr>
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
                  <td colspan="4">
                        <input id="spyj"  required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width: 100%" name="spyj"/>
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
              
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" iconCls="icon-save" onclick="onSubmit()" id="btnSubmit" >
                              同意
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                           <a class="nui-button" onclick="onBack()" id="btnBack" name="hiddenButton" >
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
            
        	var editable = nui.get('editable').getValue();//已办
	 		var form = new nui.Form("overhauldataform");
        	var fields = form.getFields();  
	    	if(editable == 'false'){//已办不可编辑
	    		nui.get("btnSubmit").hide();
	    		nui.get("btnBack").hide();
	    		$('#spyjId').hide();
	      $('#ccryId').hide();
			}
			
			//设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
            //动态设置隐藏字段
            function setHiddenField(){
	        	var template = nui.get('template').getValue();
				//模板类型变更显示隐藏
				if(template == 'zy'){
					$('#sytab').css('display','none');
					$('#bjbw').show();
				}else if(template == 'sy'){
					$('#zytab').css('display','none');
					$('#bjbw').hide();
				}
				var baseid = nui.get('jd').getValue();
				var crewid = nui.get('jz').getValue();
				var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + baseid;
	   			nui.get("jz").setUrl(url);
				var parms = "{baseid:"+baseid+",crewid:"+crewid+",type:n}";
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
			     
			    var form = new nui.Form("overhauldataform");
        		var fields = form.getFields();  
	    		
	            for (var i = 0, l = fields.length; i < l; i++) {
		           		 var c = fields[i];
		        	if('spyj' != c.name && 'cyyj' != c.name  && 'ccry' != c.name){
		        		if (c.setReadOnly) c.setReadOnly(true);     //只读
		                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
		                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
		        	}
	            }
            }
            $(function() {
            
           		 setHiddenField();
            
            	 $(".mini-buttonedit-input").css('text-align','center');
            	$(".mini-textbox-input").css('text-align','center');
	          });
	           
	           
      //驳回
        function onBack(){
          	 var form = new nui.Form("#overhauldataform");;
    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
    		form.validate();
    		
    		
            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
   
            var data = form.getData(false,true);
            var json = nui.encode(data);
            
            nui.get("btnSubmit").setEnabled(false);
             nui.get("btnBack").setEnabled(false);
            
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
				var form = new nui.Form("#overhauldataform");
	    		
	    		form.validate();
	    		
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	            var urlStr = "  com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.updateRealData.biz.ext";
	            var jsonData = {};
	            var jd = nui.get('jd').getValue();
	            var jz = nui.get('jz').getValue();
	            data.nextData.base = jd;
	            data.nextData.crew = jz;
	            jsonData.data = data.nextData;
	            jsonData.workItemId =nui.get('workItemId').getValue();
	            jsonData.processInstId = nui.get('processInstId').getValue();
	            jsonData.modelName = '规范法定大纲_日常';
	            jsonData.middleEntity = 'com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit';
	            jsonData.entityType = "com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity";
	            jsonData.spyj = nui.get('spyj').getValue();
	            
	            
	            var json = nui.encode(jsonData);
	            
	            
	            nui.get("#btnSubmit").setEnabled(false);
	            nui.get("btnBack").setEnabled(false);
	    		$.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                       	     var detailed = nui.get("detailed").getValue() == '' ? nui.get("olddetailed").getValue() : nui.get("detailed").getValue();
                        	if(detailed == null || detailed == ''){
	                        		onCancel();
                        	}
	                		var json = {};
	                		json.fieldName = "detailed";
	                		json.fieldValue = detailed;
	                		json.entity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity";
	                		json.base = jd;
	                		json.crew = jz;
	                		json = nui.encode(json);
                        	$.ajax({
							    url:"com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getInforMation.biz.ext",
							    type:'POST',
							    cache:false,
							    data:json,
							    contentType:'text/json',
							    success:function(data){
							    	 if(data.record != null && data.record[0]){
							    	 	var detailed = nui.get("detailed").getValue() == '' ? nui.get("olddetailed").getValue() : nui.get("detailed").getValue();
		                        	if(detailed == null || detailed == ''){
			                        		onCancel();
		                        	}
			                		var json = {};
			                		json.fieldName = "detailed";
			                		json.fieldValue = detailed;
			                		json.entity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity";
			                		json.base = jd;
			                		json.crew = jz;
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
					                                    onCancel();
					                                }
				                                });
									    	 }else{
									    	 	onCancel();	
									    	 }
								   		}
									});
							    	 }else{
							    	 	onCancel();	
							    	 }
						   		}
							});
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
