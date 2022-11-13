<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

 String param = request.getParameter("editable");
 IUserObject cu = CommonUtil.getUserObject();
String username = cu.getUserRealName();
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
<div class="nui-hidden" name="entityType"  id="entityType"></div>
   <input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>"/> 
            <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>"/>  
             <input class="nui-hidden" name="spyj" value=""/>  
                  <input class="nui-hidden" name="delete_entity.processInstId" value="<b:write property='processInstId'/>"/> 
            
            <!-- hidden域 -->
             <input class="nui-hidden" name="delete_entity.id" value="<b:write property='entity/id'/>"/> 
             <input id='orderno' class="nui-hidden" name="delete_entity.orderno" value="<b:write property='entity/orderno'/>"/>
               <input class="nui-hidden"  name="delete_entity.edition" value="<b:write property='entity/edition'/>"/>
			 <input class="nui-hidden"  name="delete_entity.relid" value="<b:write property='entity/relid'/>"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                	<td class="form_label"  align="center">
                        基地:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" readonly="readonly" dataField="jsonObject" id="jd"
                      name="delete_entity.base" onvaluechanged="reloadJz" value="<b:write property='entity/base'/>"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id"/>
                    </td>
                     <td class="form_label" align="center">
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" readonly="readonly" dataField="jsonObject" id="jz" textField="name" 
                     			 url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=<b:write property='entity/base'/>"
    value="<b:write property='entity/crew'/>"
                      name="delete_entity.crew"  valueField="id"/>
                    </td>
                    <td class="form_label"  align="center">
                        项目类型:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" value="<b:write property='entity/protype'/>"  name="delete_entity.protype"/>
                    </td>
                </tr>
                
                
                <tr>
                    <td class="form_label"  align="center">
                        检查分类:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" value="<b:write property='entity/parts'/>" name="delete_entity.parts"/>
                    </td>
                    <td class="form_label"  align="center">
                        任务清单:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/mintenanceproject'/>" name="delete_entity.mintenanceproject"/>
                    </td>
                    
                    <td class="form_label"  align="center">
                       大纲工单:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  value="<b:write property='entity/workorder'/>" name="delete_entity.workorder"/>
                    </td>
                </tr>
                
                <tr>
 					<td class="form_label"  align="center">
                       维护计划:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/mintenanceplan'/>" name="delete_entity.mintenanceplan"/>
                    </td>
                    <td class="form_label"  align="center">
                        维护项目:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/detailed'/>" name="delete_entity.detailed"/>
                    </td>   
                       
                    <td class="form_label"  align="center">
                        检查周期:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/period'/>" name="delete_entity.period"/>
                    </td>
                </tr>
                
                <tr>
                	
                	<td class="form_label"  align="center">
                         设备名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/equipment'/>" name="delete_entity.equipment"/>
                    </td>
                    <td class="form_label"  align="center">
                       专用检查计划:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" value="<b:write property='entity/inspectplan'/>" dictTypeId="option" name="delete_entity.inspectplan"/>
                    </td>
                    <td class="form_label"  align="center">
                        设备编号/功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/equipmentno'/>" name="delete_entity.equipmentno"/>
                    </td>
                </tr>
                <tr>
                <td class="form_label"  >
                        检查内容:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea" value="<b:write property='entity/inspectionscope'/>" style="width: 100%" name="delete_entity.inspectionscope"/>
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
	                        <div name="delete_entity.c1" id="combobox1i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c1'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    
	                    <td id="c2" class="form_label" align="center">
	                        C2:
	                    </td>
	                         <td id="c2i" colspan="1">
	                        <div name="delete_entity.c2" id="combobox2i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"   value="<b:write property='entity/c2'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    
	                    <td id="c3" class="form_label" align="center">
	                        C3:
	                    </td>
	                         <td id="c3i" colspan="1">
	                        <div name="delete_entity.c3" id="combobox3i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c3'/>" >     
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
	                        <div name="delete_entity.c4" id="combobox4i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c4'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c5" class="form_label" align="center">
	                        C5:
	                    </td>
	                          <td id="c5i" colspan="1">
	                        <div name="delete_entity.c5" id="combobox5i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c5'/>" >     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c6" class="form_label" align="center">
                        C6:
	                    </td>
	                          <td id="c6i" colspan="1">
	                        <div name="delete_entity.c6" id="combobox6i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c6'/>">     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c7" id="combobox7i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c7'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c8" class="form_label" align="center">
                        C8:
	                    </td>
	                        <td id="c8i" colspan="1">
	                        <div name="delete_entity.c8" id="combobox8i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c8'/>" >     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c9" class="form_label" align="center">
	                        C9:
	                    </td>
	                         <td id="c9i" colspan="1">
	                        <div name="delete_entity.c9" id="combobox9i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c9'/>">     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c10" id="combobox10i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c10'/>" >     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c11" class="form_label" align="center">
	                        C11:
	                    </td>
	                          <td id="c11i" colspan="1">
	                        <div name="delete_entity.c11" id="combobox11i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c11'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c12" class="form_label" align="center">
                        C12:
	                    </td>
	                         <td id="c12i" colspan="1">
	                        <div name="delete_entity.c12" id="combobox12i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c12'/>">     
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
	                        <div name="delete_entity.c13" id="combobox13i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c13'/>" >     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c14" class="form_label" align="center">
                        C14:
	                    </td>
	                   <td id="c14i" colspan="1">
	                        <div name="delete_entity.c14" id="combobox14i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c14'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                      	<td id="c15" class="form_label" align="center">
                      C15:
	                    </td>
	                         <td id="c15i" colspan="1">
	                        <div name="delete_entity.c15" id="combobox15i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c15'/>">     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c16" id="combobox16i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c16'/>" >     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c17" class="form_label" align="center">
	                        C17:
	                    </td>
	                         <td id="c17i" colspan="1">
	                        <div name="delete_entity.c17" id="combobox17i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c17'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                         	<td id="c18" class="form_label" align="center">
                      C18:
	                    </td>
	                	       <td id="c18i" colspan="1">
	                        <div name="delete_entity.c18" id="combobox18i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c18'/>">     
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
	                        <div name="delete_entity.c19" id="combobox19i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c19'/>">     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c20" class="form_label" align="center">
                       C20:
	                    </td>
	                         <td id="c20i" colspan="1">
	                        <div name="delete_entity.c20" id="combobox20i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c20'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c21" class="form_label" align="center">
	                       C21:
	                    </td>
	                          <td id="c21i" colspan="1">
	                        <div name="delete_entity.c21" id="combobox21i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns" value="<b:write property='entity/c21'/>">
							         
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
	                        <div name="delete_entity.c22" id="combobox22i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c22'/>">     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c23" class="form_label" align="center">
	                        C23:
	                    </td>
	                        <td id="c23i" colspan="1">
	                        <div name="delete_entity.c23" id="combobox23i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c23'/>" >     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c24" class="form_label" align="center">
                        C24:
	                    </td>
	                          <td id="c24i" colspan="1">
	                        <div name="delete_entity.c24" id="combobox24i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"   value="<b:write property='entity/c24'/>">     
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
	                        <div name="delete_entity.c25" id="combobox25i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c25'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c26" class="form_label" align="center">
                        C26:
	                    </td>
	                         <td id="c26i" colspan="1">
	                        <div name="delete_entity.c26" id="combobox26i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c26'/>" >     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c27" class="form_label" align="center">
	                        C27:
	                    </td>
	                          <td id="c27i" colspan="1">
	                        <div name="delete_entity.c27" id="combobox27i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c27'/>" >     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c28" id="combobox28i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c28'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c29" class="form_label" align="center">
	                        C29:
	                    </td>
	                       <td id="c29i" colspan="1">
	                        <div name="delete_entity.c29" id="combobox29i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c29'/>" >     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c30" class="form_label" align="center">
                        C30:
	                    </td>
	                          <td id="c30i" colspan="1">
	                        <div name="delete_entity.c30" id="combobox30i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c30'/>">     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c31" id="combobox31i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c31'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c32" class="form_label" align="center">
                        C32:
	                    </td>
	                        <td id="c32i" colspan="1">
	                        <div name="delete_entity.c32" id="combobox32i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c32'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c33" class="form_label" align="center">
	                        C33:
	                    </td>
	                       <td id="c33i" colspan="1">
	                        <div name="delete_entity.c33" id="combobox33i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c33'/>">     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c34" id="combobox34i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c34'/>" >     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c35" class="form_label" align="center">
	                        C35:
	                    </td>
	                        <td id="c35i" colspan="1">
	                        <div name="delete_entity.c35" id="combobox35i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c35'/>" >     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                     <td id="c36" class="form_label" align="center">
                        C36:
	                    </td>
	                         <td id="c36i" colspan="1">
	                        <div name="delete_entity.c36" id="combobox36i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c36'/>" >     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c37" id="combobox37i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c37'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c38" class="form_label" align="center">
                        C38:
	                    </td>
	                         <td id="c38i" colspan="1">
	                        <div name="delete_entity.c38" id="combobox38i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c38'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c39" class="form_label" align="center">
	                        C39:
	                    </td>
	                          <td id="c39i" colspan="1">
	                        <div name="delete_entity.c39" id="combobox39i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c39'/>" >     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c40" id="combobox40i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c40'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c41" class="form_label" align="center">
	                        C41:
	                    </td>
	                         <td id="c41i" colspan="1">
	                        <div name="delete_entity.c41" id="combobox41i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c41'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c42" class="form_label" align="center">
                        C42:
	                    </td>
	                         <td id="c42i" colspan="1">
	                        <div name="delete_entity.c42" id="combobox42i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c42'/>" >     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c43" id="combobox43i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c43'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c44" class="form_label" align="center">
                        C44:
	                    </td>
	                         <td id="c44i" colspan="1">
	                        <div name="delete_entity.c44" id="combobox44i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c44'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c45" class="form_label" align="center">
	                        C45:
	                    </td>
	                         <td id="c45i" colspan="1">
	                        <div name="delete_entity.c45" id="combobox45i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c45'/>">     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c46" id="combobox46i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c46'/>" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c47" class="form_label" align="center">
	                        C47:
	                    </td>
	                         <td id="c47i" colspan="1">
	                        <div name="delete_entity.c47" id="combobox47i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c47'/>" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c48" class="form_label" align="center">
                        C48:
	                    </td>
	                         <td id="c48i" colspan="1">
	                        <div name="delete_entity.c48" id="combobox48i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c48'/>">     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c49" id="combobox49i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c49'/>">     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c50" class="form_label" align="center">
                        C50:
	                    </td>
	                          <td id="c50i" colspan="1">
	                        <div name="delete_entity.c50" id="combobox50i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c50'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                        <td id="c51" class="form_label" align="center">
	                        C51:
	                    </td>
	                         <td id="c51i" colspan="1">
	                        <div name="delete_entity.c51" id="combobox51i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c51'/>">     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c52" id="combobox52i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"   value="<b:write property='entity/c52'/>">     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c53" class="form_label" align="center">
	                        C53:
	                    </td>
	                          <td id="c53i" colspan="1">
	                        <div name="delete_entity.c53" id="combobox53i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c53'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c54" class="form_label" align="center">
                        C54:
	                    </td>
	                          <td id="c54i" colspan="1">
	                        <div name="delete_entity.c54" id="combobox54i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c54'/>" >     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c55" id="combobox55i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c55'/>">     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c56" class="form_label" align="center">
                        C56:
	                    </td>
	                         <td id="c56i" colspan="1">
	                        <div name="delete_entity.c56" id="combobox56i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c56'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c57" class="form_label" align="center">
	                        C57:
	                    </td>
	                        <td id="c57i" colspan="1">
	                        <div name="delete_entity.c57" id="combobox57i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c57'/>" >     
							     <div property="columns" >
							         
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
	                        <div name="delete_entity.c58" id="combobox58i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/c58'/>" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c59" class="form_label" align="center">
	                        C59:
	                    </td>
	                          <td id="c59i" colspan="1">
	                        <div name="delete_entity.c59" id="combobox59i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c59'/>" >     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c60" class="form_label" align="center">
                        C60:
	                    </td>
	                         <td id="c60i" colspan="1">
	                        <div name="delete_entity.c60" id="combobox60i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" value="<b:write property='entity/c60'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
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
                        <input style="width: 100%" class="nui-textarea" name="delete_entity.remark"  value="<b:write property='entity/remark'/>" />
                    </td>
                </tr>
              	<tr>
              		<td class="form_label"  align="center">
                        发起人:
                    </td>
                    <td colspan="2">
                        <input id="creator" readonly="true" class="nui-textbox" name="delete_entity.creator"  value="<b:write property='entity/creator'/>" />
                    </td>
                    <td class="form_label"  align="center">
                        发起日期:
                    </td>
                    <td colspan="2">
                        <input id="datetime" readonly="true" dateFormat="yyyy-MM-dd HH:mm:ss" style="width: 100%" class="nui-textbox" name="delete_entity.datetime"  value="<b:write property='entity/datetime'/>" />
                    </td>   
              	</tr>
              	<tr>
                    <td class="form_label"  align="center">
                        新增原因:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea" required="true" requiredErrorText="请输入新增原因" style="width: 100%" name="delete_entity.reason"  value="<b:write property='entity/reason'/>" />
                    </td>
                </tr>
                
               <tr id="czry">
        	    <td class="form_label">
                        校核人员:
                    </td>
                     <td colspan="1">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
<!--                      <td colspan="1"> -->
<!--                         <input class="nui-combobox" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson" id="jhry"  name="jhry"  textField="empname" style="width:50%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<!--                     </td> -->
<!--                  <td colspan="2"> -->
                 
<!--                  		<input  required="true" property="editor" id="jhry"  name="jhry"  requiredErrorText="请输入校核人员"  class="nui-textboxlist" dataField="list" required="true" style="width:350px"  -->
<!-- 					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  /> -->
<!--                     </td> -->
  
                    <td class="form_label">
                        抄送人员:
                    </td>
                    <td colspan="3">
    				<input   property="editor" id="ccry"  name="ccry"  class="nui-textboxlist" dataField="list"  style="width:90%"
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />                    </td>
                </tr>
                
              </table>
        </div>
        <div id="btn" class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                 <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" onclick="onSubmit()" id="btnSubmit">
                                	提交
                            </a>     
                             <span style="display:inline-block;width:25px;">
                            </span>
                             <a class="nui-button" onclick="onDelete()" id="btnDelete">
                                	作废
                            </a>     
                             <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button" id="onCancel" onclick="onCancel()"   >
								关闭
                            </a>
                        </td>
                    </tr>
                    
                </table>
         </div>
        <script type="text/javascript">
            nui.parse();

//审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   
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
					    json.entityType = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit";
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
				           },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(false);
	           		 				nui.get("#btnDelete").setEnabled(false);
							});
							}
				        });
				        }
		        });
	    	}
	    	
            	//提交，完成当前环节
	    	function onSubmit(){
	    		var form = new nui.Form("#overhauldataform");
	    		var urlStr = "  com.cgn.itmp.basecommon.Common.updateEntity.biz.ext";
	    		form.validate();
	    		
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	            data.entityType = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit";
	            var json = nui.encode(data);
	            
	            nui.get("#btnSubmit").setEnabled(false);
	            nui.get("#btnDelete").setEnabled(false);
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
	           		 				nui.get("#btnDelete").setEnabled(false);
							});
					}
	          });
	    	}
    	
            $(function() {
            	var form = new nui.Form("overhauldataform");
            	var fields = form.getFields();
            	var param = '<%=param %>';
            	if('false' == param || (param == 'true' && '<%=username %>'  != nui.getbyName('delete_entity.creator').getValue() )){
            		for (var i = 0, l = fields.length; i < l; i++) {
			        	var c = fields[i];
		                if (c.setReadOnly) c.setReadOnly(true);     //只读
		                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
		                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
	            	}
	            	
	            	$('#btnSubmit').hide();
	            	$('#btnDelete').hide();
	            	$('#czry').hide();
            	}
            	var jdid = nui.get("jd").getValue();
            	var jzid = nui.get("jz").getValue();
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
	                         if(jdid == "86"){
	                        	for(var i=parseInt(start);i<=parseInt(end)+7;i++){
	                        		nui.get('combobox'+i+'i').setAjaxType("POST");
	                        		nui.get('combobox'+i+'i').load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=taishanbase");
	                        	}
	                        }else{
	                        	for(var i=parseInt(start);i<=parseInt(end)+7;i++){
	                        		nui.get('combobox'+i+'i').setAjaxType("POST");
	                        		nui.get('combobox'+i+'i').load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=otherbases");
	                        	}
	                        }
                    	}
                    }
                });
            });
            
            //取消
        function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }
            
</script>

    </body>
</html>
