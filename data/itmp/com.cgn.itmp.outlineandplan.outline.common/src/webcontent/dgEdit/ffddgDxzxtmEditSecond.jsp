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
          <input id="idcopy" class="nui-hidden" name="nextData.processInstId" value="<b:write property='entity/processInstId'/>" />
         
         <input id="mapnoidcopy" class="nui-hidden" name="nextData.mapnoid" value="<b:write property='entity/mapnoid'/>" />
         <input id="idcopy" class="nui-hidden" name="nextData.id" value="<b:write property='entity/id'/>" />
          <input id="relid" class="nui-hidden" name="nextData.relid" value="<b:write property='entity/relid'/>" />
         
         
          	<input class="nui-hidden" name="nextData.processInstId" value="<b:write property='processInstId'/>" id="processInstId"/> 
          	<input class="nui-hidden" name="processInstId" id="processInstId" value="<b:write property='processInstId'/>" /> 
        <input class="nui-hidden" name="workItemId" id="workItemId" value="<b:write property='workItemId'/>"/>  
            <input id="backid" class="nui-hidden"  value="manualActivity" name="backid"/>
            
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
                        <input class="nui-combobox" value="<%=dataParms.get("base")==null?"":dataParms.get("base") %>" dataField="jsonObject" id="jdid"
                      name="preData.base" onvaluechanged="reloadJz"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id"/>
                    </td>
                    <td>
                    </td>
                     <td class="form_label" align="center" >
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" value="<%=dataParms.get("crew")==null?"":dataParms.get("crew") %>" dataField="jsonObject" id="jz" textField="name" 
                      url=""
                      name="preData.crew"  valueField="id"/>
                    </td>
                    <td>
                    </td>
         		</tr>   
         		<tr>
         			<td class="form_label"  align="center">
                        项目类型:
                    </td>
                    <td>
                        <input value="<%=dataParms.get("protype")==null?"":dataParms.get("protype") %>" class="nui-textbox" name="preData.protype"/>
                    </td>
                    <td>
                    </td>
         			<td class="form_label"  align="center">
                        部件:
                    </td>
                    <td>
                        <input value="<%=dataParms.get("parts")==null?"":dataParms.get("parts") %>" class="nui-textbox" name="preData.parts"/>
                    </td>
                    <td>
                    </td>
         		</tr>
         		
         		<tr>
         		<td class="form_label"  align="center">
                        项号:
                    </td>
                    <td colspan="1">
                        <input id="itemno" value="<%=dataParms.get("itemno")==null?"":dataParms.get("itemno") %>" class="nui-textbox" name="preData.itemno"/>
                    </td>
                    <td colspan="1">
                        <input id="item_no" value="<%=editdataParms.get("itemno")==null?"":editdataParms.get("itemno") %>" class="nui-textbox" name="nextData.itemno"/>
                    </td>
                    <td class="form_label"  align="center">
                        项目来源:
                    </td>
                    <td>
                        <input id="prosource" value="<%=dataParms.get("prosource")==null?"":dataParms.get("prosource") %>" class="nui-textbox" name="preData.prosource"/>
                    </td>
                    <td>
                        <input value="<%=editdataParms.get("prosource")==null?"":editdataParms.get("prosource") %>" class="nui-textbox" name="nextData.prosource"/>
                    </td>
         		</tr>
         		<tr>
         		<td class="form_label"  align="center">
                        所在系统:
                    </td>
                    <td colspan="1">
                        <input id="insystem" value="<%=dataParms.get("insystem")==null?"":dataParms.get("insystem") %>" class="nui-textbox" name="preData.insystem"/>
                    </td>
                    <td colspan="1">
                        <input  value="<%=editdataParms.get("insystem")==null?"":editdataParms.get("insystem") %>" class="nui-textbox" name="nextData.insystem"/>
                    </td>
                    <td class="form_label"  align="center">
                        设备名称:
                    </td>
                    <td>
                        <input id="equipment" value="<%=dataParms.get("equipment")==null?"":dataParms.get("equipment") %>" class="nui-textbox" name="preData.equipment"/>
                    </td>
                    <td>
                        <input class="nui-textbox" value="<%=editdataParms.get("equipment")==null?"":editdataParms.get("equipment") %>" name="nextData.equipment"/>
                    </td>
         		</tr>
         		<tr>
         		<td class="form_label"  align="center">
                        功能位置:
                    </td>
                    <td colspan="1">
                        <input id="seat" value="<%=dataParms.get("seat")==null?"":dataParms.get("seat") %>" class="nui-textbox" name="preData.seat"/>
                    </td>
                    <td colspan="1">
                        <input value="<%=editdataParms.get("seat")==null?"":editdataParms.get("seat") %>" class="nui-textbox" name="nextData.seat"/>
                    </td>
                    <td class="form_label"  align="center">
                        图号:
                    </td>
                    <td>
                        <input id="mapno" value="<%=dataParms.get("mapno")==null?"":dataParms.get("mapno") %>" class="nui-textbox" name="preData.mapno"/>
                    </td>
                    <td>
                    	<input id="mapno" value="<%=editdataParms.get("mapno")==null?"":editdataParms.get("mapno") %>" class="nui-textbox" name="nextData.mapno"/>
                    </td>
         		</tr>
         		<tr>
         		<td class="form_label"  align="center">
                        检查内容:
                    </td>
                    <td colspan="1">
                        <input id="inspectionscope" value="<%=dataParms.get("inspectionscope")==null?"":dataParms.get("inspectionscope") %>" class="nui-textbox" name="preData.inspectionscope"/>
                    </td>
                    <td colspan="1">
                        <input value="<%=editdataParms.get("inspectionscope")==null?"":editdataParms.get("inspectionscope") %>" class="nui-textbox" name="nextData.inspectionscope"/>
                    </td>
                    <td class="form_label"  align="center">
                        接近方式:
                    </td>
                    <td>
                        <input id="approachmode" value="<%=dataParms.get("approachmode")==null?"":dataParms.get("approachmode") %>" class="nui-textbox" name="preData.approachmode"/>
                    </td>
                    <td>
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
                         执行单位:
                    </td>
                    <td>
                        <input id="executionunit" value="<%=dataParms.get("executionunit")==null?"":dataParms.get("executionunit") %>" class="nui-textbox" name="preData.executionunit"/>
                    </td>
                    <td>
                        <input value="<%=editdataParms.get("executionunit")==null?"":editdataParms.get("executionunit") %>" class="nui-textbox" name="nextData.executionunit"/>
                    </td>
         		</tr>
         		<tr>
         		<td class="form_label"  align="center">
                        检查周期（RSEM):
                    </td>
                    <td colspan="1">
                        <input id="rsemcycle" value="<%=dataParms.get("rsemcycle")==null?"":dataParms.get("rsemcycle") %>" class="nui-textbox" name="preData.rsemcycle"/>
                    </td>
                    <td colspan="1">
                        <input value="<%=editdataParms.get("rsemcycle")==null?"":editdataParms.get("rsemcycle") %>" class="nui-textbox" name="nextData.rsemcycle"/>
                    </td>
                    <td class="form_label"  align="center">
                         检查周期(SAP):
                    </td>
                    <td>
                        <input id="sapcycle" value="<%=dataParms.get("sapcycle")==null?"":dataParms.get("sapcycle") %>" class="nui-textbox" name="preData.sapcycle"/>
                    </td>
                    <td>
                        <input value="<%=editdataParms.get("sapcycle")==null?"":editdataParms.get("sapcycle") %>" class="nui-textbox" name="nextData.sapcycle"/>
                    </td>
         		</tr>
         		<tr>
                    <td class="form_label"  align="center">
                        维护项目:
                    </td>
                    <td colspan="1"  name="preData.detailed">
                        <input id="olddetailed" value="<%=dataParms.get("detailed")==null?"":dataParms.get("detailed") %>" class="nui-textbox" name="preData.detailed"/>
                    </td>   
                    <td colspan="1">
                        <input id="detailed" value="<%=editdataParms.get("detailed")==null?"":editdataParms.get("detailed") %>" class="nui-textbox" name="nextData.detailed"/>
                    </td> 
                    <td class="form_label"  align="center">
                        专用检查计划:
                    </td>
                    <td colspan="1">
                        <input  id="inspectplan" value="<%=dataParms.get("inspectplan")==null?"":dataParms.get("inspectplan") %>" class="nui-dictcombobox" name="preData.inspectplan" dictTypeId="option"/>
                    </td>
                    <td colspan="1">
                        <input  value="<%=editdataParms.get("inspectplan")==null?"":editdataParms.get("inspectplan") %>" class="nui-dictcombobox" dictTypeId="option" name="nextData.inspectplan"/>
                    </td> 
         		</tr>
          </table>
           
           <!-- C1-C60 -->
             <table id="zq" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
	             <tr>
					<td id="c1" class="form_label"  align="center">
						   C1:
					</td>
					<td id="c1i" colspan="1">
						<input id="c1" value="<%=dataParms.get("c1")==null?"":dataParms.get("c1") %>"  class="nui-textbox" name="preData.c1"/>
					</td>
					<td id="c1ii" colspan="1">
						<input id="combobox1i" value="<%=editdataParms.get("c1")==null?"":editdataParms.get("c1") %>"  class="nui-textbox" name="nextData.c1" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" />
					</td>
					<td id="c2" class="form_label"  align="center">
						C2:
					</td>
					<td id="c2i" colspan="1">
						<input id="c2" value="<%=dataParms.get("c2")==null?"":dataParms.get("c2") %>"  class="nui-textbox" name="preData.c2"/>
					</td>
					<td id="c2ii" colspan="1">
						<input id="combobox2i" value="<%=editdataParms.get("c2")==null?"":editdataParms.get("c2") %>"  class="nui-textbox" textField="name" valueField="id"  name="nextData.c2"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" />
					</td>
				</tr>
				<tr>
					<td id="c3" class="form_label"  align="center">
						   C3:
					</td>
					<td id="c3i" colspan="1">
						<input id="c3" value="<%=dataParms.get("c3")==null?"":dataParms.get("c3") %>"  class="nui-textbox" name="preData.c3"/>
					</td>
					<td id="c3ii" colspan="1">
						<input id="combobox3i" value="<%=editdataParms.get("c3")==null?"":editdataParms.get("c3") %>"  class="nui-textbox"  textField="name" valueField="id"  name="nextData.c3"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c4" class="form_label"  align="center">
						C4:
					</td>
					<td id="c4i" colspan="1">
						<input id="c4" value="<%=dataParms.get("c4")==null?"":dataParms.get("c4") %>"  class="nui-textbox" name="preData.c4"/>
					</td>
					<td id="c4ii" colspan="1">
						<input id="combobox4i"	value="<%=editdataParms.get("c4")==null?"":editdataParms.get("c4") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c4"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				
				
				<tr>
					<td id="c5" class="form_label"  align="center">
						   C5:
					</td>
					<td id="c5i" colspan="1">
						<input id="c5" value="<%=dataParms.get("c5")==null?"":dataParms.get("c5") %>"  class="nui-textbox" name="preData.c5"/>
					</td>
					<td id="c5ii" colspan="1">
						<input id="combobox5i"	value="<%=editdataParms.get("c5")==null?"":editdataParms.get("c5") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c5"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c6" class="form_label"  align="center">
						C6:
					</td>
					<td id="c6i" colspan="1">
						<input id="c6" value="<%=dataParms.get("c6")==null?"":dataParms.get("c6") %>"  class="nui-textbox" name="preData.c6"/>
					</td>
					<td id="c6ii" colspan="1">
						<input id="combobox6i"	value="<%=editdataParms.get("c6")==null?"":editdataParms.get("c6") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c6"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c7" class="form_label"  align="center">
						   C7:
					</td>
					<td id="c7i" colspan="1">
						<input id="c7" value="<%=dataParms.get("c7")==null?"":dataParms.get("c7") %>"  class="nui-textbox" name="preData.c7"/>
					</td>
					<td id="c7ii" colspan="1">
						<input id="combobox7i"	value="<%=editdataParms.get("c7")==null?"":editdataParms.get("c7") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c7"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c8" class="form_label"  align="center">
						C8:
					</td>
					<td id="c8i" colspan="1">
						<input id="c8" value="<%=dataParms.get("c8")==null?"":dataParms.get("c8") %>"  class="nui-textbox" name="preData.c8"/>
					</td>
					<td id="c8ii" colspan="1">
						<input id="combobox8i"	value="<%=editdataParms.get("c8")==null?"":editdataParms.get("c8") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c8"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c9" class="form_label"  align="center">
						   C9:
					</td>
					<td id="c9i" colspan="1">
						<input id="c9" value="<%=dataParms.get("c9")==null?"":dataParms.get("c9") %>" class="nui-textbox" name="preData.c9"/>
					</td>
					<td id="c9ii" colspan="1">
						<input id="combobox9i"	value="<%=editdataParms.get("c9")==null?"":editdataParms.get("c9") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c9"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c10" class="form_label"  align="center">
						C10:
					</td>
					<td id="c10i" colspan="1">
						<input id="c10" value="<%=dataParms.get("c10")==null?"":dataParms.get("c10") %>" class="nui-textbox" name="preData.c10"/>
					</td>
					<td id="c10ii" colspan="1">
						<input id="combobox10i"	value="<%=editdataParms.get("c10")==null?"":editdataParms.get("c10") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c10"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c11" class="form_label"  align="center">
						   C11:
					</td>
					<td id="c11i" colspan="1">
						<input id="c11" value="<%=dataParms.get("c11")==null?"":dataParms.get("c11") %>" class="nui-textbox" name="preData.c11"/>
					</td>
					<td id="c11ii" colspan="1">
						<input id="combobox11i"	value="<%=editdataParms.get("c11")==null?"":editdataParms.get("c11") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c11"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c12" class="form_label"  align="center">
						C12:
					</td>
					<td id="c12i" colspan="1">
						<input id="c12" value="<%=dataParms.get("c12")==null?"":dataParms.get("c12") %>" class="nui-textbox" name="preData.c12"/>
					</td>
					<td id="c12ii" colspan="1">
						<input id="combobox12i"	value="<%=editdataParms.get("c12")==null?"":editdataParms.get("c12") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c12"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c13" class="form_label"  align="center">
						   C13:
					</td>
					<td id="c13i" colspan="1">
						<input id="c13" value="<%=dataParms.get("c13")==null?"":dataParms.get("c13") %>" class="nui-textbox" name="preData.c13"/>
					</td>
					<td id="c13ii" colspan="1">
						<input id="combobox13i"	value="<%=editdataParms.get("c13")==null?"":editdataParms.get("c13") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c13"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c14" class="form_label"  align="center">
						C14:
					</td>
					<td id="c14i" colspan="1">
						<input id="c14" value="<%=dataParms.get("c14")==null?"":dataParms.get("c14") %>" class="nui-textbox" name="preData.c14"/>
					</td>
					<td id="c14ii" colspan="1">
						<input id="combobox14i"	value="<%=editdataParms.get("c14")==null?"":editdataParms.get("c14") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c14"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c15" class="form_label"  align="center">
						   C15:
					</td>
					<td id="c15i" colspan="1">
						<input id="c15" value="<%=dataParms.get("c15")==null?"":dataParms.get("c15") %>" class="nui-textbox" name="preData.c15"/>
					</td>
					<td id="c15ii" colspan="1">
						<input id="combobox15i"	value="<%=editdataParms.get("c15")==null?"":editdataParms.get("c15") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c15"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c16" class="form_label"  align="center">
						C16:
					</td>
					<td id="c16i" colspan="1">
						<input id="c16" value="<%=dataParms.get("c16")==null?"":dataParms.get("c16") %>" class="nui-textbox" name="preData.c16"/>
					</td>
					<td id="c16ii" colspan="1">
						<input id="combobox16i"	value="<%=editdataParms.get("c16")==null?"":editdataParms.get("c16") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c16"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c17" class="form_label"  align="center">
						   C17:
					</td>
					<td id="c17i" colspan="1">
						<input id="c17" value="<%=dataParms.get("c17")==null?"":dataParms.get("c17") %>" class="nui-textbox" name="preData.c17"/>
					</td>
					<td id="c17ii" colspan="1">
						<input id="combobox17i"	value="<%=editdataParms.get("c17")==null?"":editdataParms.get("c17") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c17"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c18" class="form_label"  align="center">
						C18:
					</td>
					<td id="c18i" colspan="1">
						<input id="c18" value="<%=dataParms.get("c18")==null?"":dataParms.get("c18") %>" class="nui-textbox" name="preData.c18"/>
					</td>
					<td id="c18ii" colspan="1">
						<input id="combobox18i"	value="<%=editdataParms.get("c18")==null?"":editdataParms.get("c18") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c18"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c19" class="form_label"  align="center">
						   C19:
					</td>
					<td id="c19i" colspan="1">
						<input id="c19" value="<%=dataParms.get("c19")==null?"":dataParms.get("c19") %>" class="nui-textbox" name="preData.c19"/>
					</td>
					<td id="c19ii" colspan="1">
						<input id="combobox19i"	value="<%=editdataParms.get("c19")==null?"":editdataParms.get("c19") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c19"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c20" class="form_label"  align="center">
						C20:
					</td>
					<td id="c20i" colspan="1">
						<input id="c20" value="<%=dataParms.get("c20")==null?"":dataParms.get("c20") %>" class="nui-textbox" name="preData.c20"/>
					</td>
					<td id="c20ii" colspan="1">
						<input id="combobox20i"	value="<%=editdataParms.get("c20")==null?"":editdataParms.get("c20") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c20"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
             	<tr>
					<td id="c21" class="form_label"  align="center">
						   C21:
					</td>
					<td id="c21i" colspan="1">
						<input id="c21" value="<%=dataParms.get("c21")==null?"":dataParms.get("c21") %>" class="nui-textbox" name="preData.c21"/>
					</td>
					<td id="c21ii" colspan="1">
						<input id="combobox21i"	value="<%=editdataParms.get("c21")==null?"":editdataParms.get("c21") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c21"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c22" class="form_label"  align="center">
						C22:
					</td>
					<td id="c22i" colspan="1">
						<input id="c22" value="<%=dataParms.get("c22")==null?"":dataParms.get("c22") %>" class="nui-textbox" name="preData.c22"/>
					</td>
					<td id="c22ii" colspan="1">
						<input id="combobox22i"	value="<%=editdataParms.get("c22")==null?"":editdataParms.get("c22") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c22"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c23" class="form_label"  align="center">
						   C23:
					</td>
					<td id="c23i" colspan="1">
						<input id="c23" value="<%=dataParms.get("c23")==null?"":dataParms.get("c23") %>" class="nui-textbox" name="preData.c23"/>
					</td>
					<td id="c23ii" colspan="1">
						<input id="combobox23i"	value="<%=editdataParms.get("c23")==null?"":editdataParms.get("c23") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c23"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c24" class="form_label"  align="center">
						C24:
					</td>
					<td id="c24i" colspan="1">
						<input id="c24" value="<%=dataParms.get("c24")==null?"":dataParms.get("c24") %>" class="nui-textbox" name="preData.c24" />
					</td>
					<td id="c24ii" colspan="1">
						<input id="combobox24i"	value="<%=editdataParms.get("c24")==null?"":editdataParms.get("c24") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c24"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				
				
				<tr>
					<td id="c25" class="form_label"  align="center">
						   C25:
					</td>
					<td id="c25i" colspan="1">
						<input id="c25" value="<%=dataParms.get("c25")==null?"":dataParms.get("c25") %>" class="nui-textbox" name="preData.c25"  />
					</td>
					<td id="c25ii" colspan="1">
						<input id="combobox25i"	value="<%=editdataParms.get("c25")==null?"":editdataParms.get("c25") %>"	class="nui-textbox" textField="name" valueField="id" name="nextData.c25"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c26" class="form_label"  align="center">
						C26:
					</td>
					<td id="c26i" colspan="1">
						<input id="c26" value="<%=dataParms.get("c26")==null?"":dataParms.get("c26") %>" class="nui-textbox" name="preData.c26" />
					</td>
					<td id="c26ii" colspan="1">
						<input id="combobox26i"	value="<%=editdataParms.get("c26")==null?"":editdataParms.get("c26") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c26"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				
				<tr>
					<td id="c27" class="form_label"  align="center">
						   C27:
					</td>
					<td id="c27i" colspan="1">
						<input id="c27" value="<%=dataParms.get("c27")==null?"":dataParms.get("c27") %>" class="nui-textbox" name="preData.c27"  />
					</td>
					<td id="c27ii" colspan="1">
						<input id="combobox27i"	value="<%=editdataParms.get("c27")==null?"":editdataParms.get("c27") %>"	class="nui-textbox" textField="name" valueField="id" name="nextData.c27"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c28" class="form_label"  align="center">
						C28:
					</td>
					<td id="c28i" colspan="1">
						<input id="c28" value="<%=dataParms.get("c28")==null?"":dataParms.get("c28") %>" class="nui-textbox" name="preData.c28"  />
					</td>
					<td id="c28ii" colspan="1">
						<input id="combobox28i"	value="<%=editdataParms.get("c28")==null?"":editdataParms.get("c28") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c28"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c29" class="form_label"  align="center">
						   C29:
					</td>
					<td id="c29i" colspan="1">
						<input id="c29" value="<%=dataParms.get("c29")==null?"":dataParms.get("c29") %>" class="nui-textbox" name="preData.c29"  />
					</td>
					<td id="c29ii" colspan="1">
						<input id="combobox29i"	value="<%=editdataParms.get("c29")==null?"":editdataParms.get("c29") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c29"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c30" class="form_label"  align="center">
						C30:
					</td>
					<td id="c30i" colspan="1">
						<input id="c30" value="<%=dataParms.get("c30")==null?"":dataParms.get("c30") %>" class="nui-textbox" name="preData.c30" />
					</td>
					<td id="c30ii" colspan="1">
						<input id="combobox30i"	value="<%=editdataParms.get("c30")==null?"":editdataParms.get("c30") %>"	class="nui-textbox"  textField="name" valueField="id"   name="nextData.c30"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c31" class="form_label"  align="center">
						   C31:
					</td>
					<td id="c31i" colspan="1">
						<input id="c31" value="<%=dataParms.get("c31")==null?"":dataParms.get("c31") %>" class="nui-textbox" name="preData.c31"/>
					</td>
					<td id="c31ii" colspan="1">
						<input id="combobox31i"	value="<%=editdataParms.get("c31")==null?"":editdataParms.get("c31") %>"	class="nui-textbox"  textField="name" valueField="id"  name="nextData.c31"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c32" class="form_label"  align="center">
						C32:
					</td>
					<td id="c32i" colspan="1">
						<input id="c32" value="<%=dataParms.get("c32")==null?"":dataParms.get("c32") %>" class="nui-textbox" name="preData.c32"/>
					</td>
					<td id="c32ii" colspan="1">
						<input id="combobox32i"	value="<%=editdataParms.get("c32")==null?"":editdataParms.get("c32") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c32"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c33" class="form_label"  align="center">
						   C33:
					</td>
					<td id="c33i" colspan="1">
						<input id="c33" value="<%=dataParms.get("c33")==null?"":dataParms.get("c33") %>" class="nui-textbox" name="preData.c33"/>
					</td>
					<td id="c33ii" colspan="1">
						<input id="combobox33i"	value="<%=editdataParms.get("c33")==null?"":editdataParms.get("c33") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c33"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c34" class="form_label"  align="center">
						C34:
					</td>
					<td id="c34i" colspan="1">
						<input id="c34" value="<%=dataParms.get("c34")==null?"":dataParms.get("c34") %>" class="nui-textbox" name="preData.c34"/>
					</td>
					<td id="c34ii" colspan="1">
						<input id="combobox34i"	value="<%=editdataParms.get("c34")==null?"":editdataParms.get("c34") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c34"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c35" class="form_label"  align="center">
						   C35:
					</td>
					<td id="c35i" colspan="1">
						<input id="c35" value="<%=dataParms.get("c35")==null?"":dataParms.get("c35") %>" class="nui-textbox" name="preData.c35"/>
					</td>
					<td id="c35ii" colspan="1">
						<input id="combobox35i"	value="<%=editdataParms.get("c35")==null?"":editdataParms.get("c35") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c35"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c36" class="form_label"  align="center">
						C36:
					</td>
					<td id="c36i" colspan="1">
						<input id="c36" value="<%=dataParms.get("c36")==null?"":dataParms.get("c36") %>" class="nui-textbox" name="preData.c36"/>
					</td>
					<td id="c36ii" colspan="1">
						<input id="combobox36i"	value="<%=editdataParms.get("c36")==null?"":editdataParms.get("c36") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c36"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c37" class="form_label"  align="center">
						   C37:
					</td>
					<td id="c37i" colspan="1">
						<input id="c37" value="<%=dataParms.get("c37")==null?"":dataParms.get("c37") %>" class="nui-textbox" name="preData.c37"/>
					</td>
					<td id="c37ii" colspan="1">
						<input id="combobox37i"	value="<%=editdataParms.get("c37")==null?"":editdataParms.get("c37") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c37"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c38" class="form_label"  align="center">
						C38:
					</td>
					<td id="c38i" colspan="1">
						<input id="c38" value="<%=dataParms.get("c38")==null?"":dataParms.get("c38") %>" class="nui-textbox" name="preData.c38"/>
					</td>
					<td id="c38ii" colspan="1">
						<input id="combobox38i"	value="<%=editdataParms.get("c38")==null?"":editdataParms.get("c38") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c38"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c39" class="form_label"  align="center">
						   C39:
					</td>
					<td id="c39i" colspan="1">
						<input id="c39" value="<%=dataParms.get("c39")==null?"":dataParms.get("c39") %>" class="nui-textbox" name="preData.c39"/>
					</td>
					<td id="c39ii" colspan="1">
						<input id="combobox39i"	value="<%=editdataParms.get("c39")==null?"":editdataParms.get("c39") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c39"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c40" class="form_label"  align="center">
						C40:
					</td>
					<td id="c40i" colspan="1">
						<input id="c40" value="<%=dataParms.get("c40")==null?"":dataParms.get("c40") %>" class="nui-textbox" name="preData.c40"/>
					</td>
					<td id="c40ii" colspan="1">
						<input id="combobox40i"	value="<%=editdataParms.get("c40")==null?"":editdataParms.get("c40") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c40"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c41" class="form_label"  align="center">
						   C41:
					</td>
					<td id="c41i" colspan="1">
						<input id="c41" value="<%=dataParms.get("c41")==null?"":dataParms.get("c41") %>" class="nui-textbox" name="preData.c41"/>
					</td>
					<td id="c41ii" colspan="1">
						<input id="combobox41i"	value="<%=editdataParms.get("c41")==null?"":editdataParms.get("c41") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c41"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c42" class="form_label"  align="center">
						C42:
					</td>
					<td id="c42i" colspan="1">
						<input id="c42" value="<%=dataParms.get("c42")==null?"":dataParms.get("c42") %>" class="nui-textbox" name="preData.c42"/>
					</td>
					<td id="c42ii" colspan="1">
						<input id="combobox42i"	value="<%=editdataParms.get("c42")==null?"":editdataParms.get("c42") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c42"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c43" class="form_label"  align="center">
						   C43:
					</td>
					<td id="c43i" colspan="1">
						<input id="c43" value="<%=dataParms.get("c43")==null?"":dataParms.get("c43") %>" class="nui-textbox" name="preData.c43"/>
					</td>
					<td id="c43ii" colspan="1">
						<input id="combobox43i"	value="<%=editdataParms.get("c43")==null?"":editdataParms.get("c43") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c43"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c44" class="form_label"  align="center">
						C44:
					</td>
					<td id="c44i" colspan="1">
						<input id="c44" value="<%=dataParms.get("c44")==null?"":dataParms.get("c44") %>" class="nui-textbox" name="preData.c44"/>
					</td>
					<td id="c44ii" colspan="1">
						<input id="combobox44i"	value="<%=editdataParms.get("c44")==null?"":editdataParms.get("c44") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c44"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c45" class="form_label"  align="center">
						   C45:
					</td>
					<td id="c45i" colspan="1">
						<input id="c45" value="<%=dataParms.get("c45")==null?"":dataParms.get("c45") %>" class="nui-textbox" name="preData.c45"/>
					</td>
					<td id="c45ii" colspan="1">
						<input id="combobox45i"	value="<%=editdataParms.get("c45")==null?"":editdataParms.get("c45") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c45"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c46" class="form_label"  align="center">
						C46:
					</td>
					<td id="c46i" colspan="1">
						<input id="c46" value="<%=dataParms.get("c46")==null?"":dataParms.get("c46") %>" class="nui-textbox" name="preData.c46"/>
					</td>
					<td id="c46ii" colspan="1">
						<input id="combobox46i"	value="<%=editdataParms.get("c46")==null?"":editdataParms.get("c46") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c46"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c47" class="form_label"  align="center">
						   C47:
					</td>
					<td id="c47i" colspan="1">
						<input id="c47" value="<%=dataParms.get("c47")==null?"":dataParms.get("c47") %>" class="nui-textbox" name="preData.c47"/>
					</td>
					<td id="c47ii" colspan="1">
						<input id="combobox47i"	value="<%=editdataParms.get("c47")==null?"":editdataParms.get("c47") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c47"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c48" class="form_label"  align="center">
						C48:
					</td>
					<td id="c48i" colspan="1">
						<input id="c48" value="<%=dataParms.get("c48")==null?"":dataParms.get("c48") %>" class="nui-textbox" name="preData.c48"/>
					</td>
					<td id="c48ii" colspan="1">
						<input id="combobox48i"	value="<%=editdataParms.get("c48")==null?"":editdataParms.get("c48") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c48"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c49" class="form_label"  align="center">
						   C49:
					</td>
					<td id="c49i" colspan="1">
						<input id="c49" value="<%=dataParms.get("c49")==null?"":dataParms.get("c49") %>" class="nui-textbox" name="preData.c49"/>
					</td>
					<td id="c49ii" colspan="1">
						<input id="combobox49i"	value="<%=editdataParms.get("c49")==null?"":editdataParms.get("c49") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c49"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c50" class="form_label"  align="center">
						C50:
					</td>
					<td id="c50i" colspan="1">
						<input id="c50" value="<%=dataParms.get("c50")==null?"":dataParms.get("c50") %>" class="nui-textbox" name="preData.c50"/>
					</td>
					<td id="c50ii" colspan="1">
						<input id="combobox50i"	value="<%=editdataParms.get("c50")==null?"":editdataParms.get("c50") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c50"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c51" class="form_label"  align="center">
						   C51:
					</td>
					<td id="c51i" colspan="1">
						<input id="c51" value="<%=dataParms.get("c51")==null?"":dataParms.get("c51") %>" class="nui-textbox" name="preData.c51"/>
					</td>
					<td id="c51ii" colspan="1">
						<input id="combobox51i"	value="<%=editdataParms.get("c51")==null?"":editdataParms.get("c51") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c51"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c52"  class="form_label"  align="center">
						C52:
					</td>
					<td id="c52i" colspan="1">
						<input id="c52" value="<%=dataParms.get("c52")==null?"":dataParms.get("c52") %>" class="nui-textbox" name="preData.c52"/>
					</td>
					<td id="c52ii" colspan="1">
						<input id="combobox52i"	value="<%=editdataParms.get("c52")==null?"":editdataParms.get("c52") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c52"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c53" class="form_label"  align="center">
						   C53:
					</td>
					<td id="c53i" colspan="1">
						<input id="c53" value="<%=dataParms.get("c53")==null?"":dataParms.get("c53") %>" class="nui-textbox" name="preData.c53"/>
					</td>
					<td id="c53ii" colspan="1">
						<input id="combobox53i"	value="<%=editdataParms.get("c53")==null?"":editdataParms.get("c53") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c53"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c54" class="form_label"  align="center">
						C54:
					</td>
					<td id="c54i" colspan="1">
						<input id="c54" value="<%=dataParms.get("c54")==null?"":dataParms.get("c54") %>" class="nui-textbox" name="preData.c54"/>
					</td>
					<td id="c54ii" colspan="1">
						<input id="combobox54i"	value="<%=editdataParms.get("c54")==null?"":editdataParms.get("c54") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c54"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c55" class="form_label"  align="center">
						   C55:
					</td>
					<td id="c55i" colspan="1">
						<input id="c55" value="<%=dataParms.get("c55")==null?"":dataParms.get("c55") %>" class="nui-textbox" name="preData.c55"/>
					</td>
					<td id="c55ii" colspan="1">
						<input id="combobox55i"	value="<%=editdataParms.get("c55")==null?"":editdataParms.get("c55") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c55"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c56" class="form_label"  align="center">
						C56:
					</td>
					<td id="c56i" colspan="1">
						<input id="c56" value="<%=dataParms.get("c56")==null?"":dataParms.get("c56") %>" class="nui-textbox" name="preData.c56"/>
					</td>
					<td id="c56ii" colspan="1">
						<input id="combobox56i"	value="<%=editdataParms.get("c56")==null?"":editdataParms.get("c56") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c56"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c57" class="form_label"  align="center">
						   C57:
					</td>
					<td id="c57i" colspan="1">
						<input id="c57" value="<%=dataParms.get("c57")==null?"":dataParms.get("c57") %>" class="nui-textbox" name="preData.c57"/>
					</td>
					<td id="c57ii" colspan="1">
						<input id="combobox57i"	value="<%=editdataParms.get("c57")==null?"":editdataParms.get("c57") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c57"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c58" class="form_label"  align="center">
						C58:
					</td>
					<td id="c58i" colspan="1">
						<input id="c58" value="<%=dataParms.get("c58")==null?"":dataParms.get("c58") %>" class="nui-textbox" name="preData.c58"/>
					</td>
					<td id="c58ii" colspan="1">
						<input id="combobox58i"	value="<%=editdataParms.get("c58")==null?"":editdataParms.get("c58") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c58"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
				</tr>
				<tr>
					<td id="c59" class="form_label"  align="center">
						   C59:
					</td>
					<td id="c59i" colspan="1">
						<input id="c59" value="<%=dataParms.get("c59")==null?"":dataParms.get("c59") %>" class="nui-textbox" name="preData.c59"/>
					</td>
					<td id="c59ii" colspan="1">
						<input id="combobox59i"	value="<%=editdataParms.get("c59")==null?"":editdataParms.get("c59") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c59"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
					</td>
					<td id="c60" class="form_label"  align="center">
						C60:
					</td>
					<td id="c60i" colspan="1">
						<input id="c60" value="<%=dataParms.get("c60")==null?"":dataParms.get("c60") %>" class="nui-textbox" name="preData.c60"/>
					</td>
					<td id="c60ii" colspan="1">
						<input id="combobox60i"	value="<%=editdataParms.get("c60")==null?"":editdataParms.get("c60") %>"	class="nui-textbox"  textField="name" valueField="id" name="nextData.c60"
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"/>
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
                        <input id="xgyy" name="nextData.xgyy" value="<%=editdataParms.get("xgyy")==null?"":editdataParms.get("xgyy") %>"  requiredErrorText="请输入修改原因" class="nui-textarea" style="width: 100%;"/>
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
				var baseid = nui.get('jdid').getValue();
				var crewid = nui.get('jz').getValue();
				var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + baseid;
	   			nui.get("jz").setUrl(url);
				var parms = "{baseid:"+baseid+",crewid:"+crewid+"}";
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
		                        	$('#c'+i+"ii").hide();
		                        }
								for(var i = parseInt(end)+8;i <= 60 ;i++){
		                        	$('#c'+i).hide();
		                        	$('#c'+i+"i").hide();
		                        	$('#c'+i+"ii").hide();
		                        }
// 		                        if(baseid == "86"){
// 		                        	for(var i=parseInt(start);i<=parseInt(end)+7;i++){
// 		                        		nui.get('combobox'+i+'i').load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=taishanbase");
// 		                        	}
// 		                        }else{
// 		                        	for(var i=parseInt(start);i<=parseInt(end)+7;i++){
// 		                        		nui.get('combobox'+i+'i').load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=otherbases");
// 		                        	}
// 		                        }
		                        
		                        
	                    	}
	                    }
			     });
			     
			    var form = new nui.Form("overhauldataform");
        		var fields = form.getFields();  
	    		
	            for (var i = 0, l = fields.length; i < l; i++) {
		           		var c = fields[i];
		        	if('spyj' != c.name && 'cyyj' != c.name  && 'ccry' != c.name) {
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
	            var jd = nui.get('jdid').getValue();
	            var jz = nui.get('jz').getValue();
	            data.nextData.base = jd;
	            data.nextData.crew = jz;
	            jsonData.data = data.nextData;
	            jsonData.workItemId =nui.get('workItemId').getValue();
	            jsonData.processInstId = nui.get('processInstId').getValue();
	            jsonData.modelName = '规范非法定总纲_大修';
	            jsonData.middleEntity = 'com.cgn.itmp.outlineandplan.outline.common.NonStaturory.NonStaturoryEdit';
	            jsonData.entityType = "com.cgn.itmp.outlineandplan.outline.NonStaturoryOverhaul.OverhaulEntity";
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