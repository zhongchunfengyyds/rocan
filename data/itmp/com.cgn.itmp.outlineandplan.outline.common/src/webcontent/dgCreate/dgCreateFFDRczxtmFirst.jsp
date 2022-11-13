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
          
        <div id="deleteForm" style="padding-top:5px;">
<div class="nui-hidden" name="entityType"  id="entityType"></div>
   <input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>"/> 
            <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>"/>  
             <input class="nui-hidden" name="spyj" value=""/>  
                              <input class="nui-hidden" name="delete_entity.processInstId" value="<b:write property='processInstId'/>"/> 
            
            <!-- hidden域 -->
           <input class="nui-hidden" name="delete_entity.id" value="<b:write property='entity/id'/>"/>
             <input id='orderno' class="nui-hidden" name="delete_entity.orderno" value="<b:write property='entity/orderno'/>"/>

             
               
             <input id="mapnoid" class="nui-hidden" name="delete_entity.mapnoid" value="<b:write property='entity/mapnoid'/>"/>
             <input id="programid" class="nui-hidden" name="delete_entity.programid" value="<b:write property='entity/programid'/>"/>
             <input id="toolid" class="nui-hidden" name="delete_entity.toolid" value="<b:write property='entity/toolid'/>"/>
             <input id="textprogramid" class="nui-hidden" name="delete_entity.textprogramid" value="<b:write property='entity/textprogramid'/>"/>
			 <input class="nui-hidden"  name="delete_entity.relid" value="<b:write property='entity/relid'/>"/>
			 <input id="edition" class="nui-hidden" name="delete_entity.edition" value="<b:write property='entity/edition'/>"/>
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
                        <input class="nui-combobox" readonly="readonly" dataField="jsonObject" id="jz" textField="name"  value="<b:write property='entity/crew'/>"
                      url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=<b:write property='entity/base'/>"
                      name="delete_entity.crew"  valueField="id"/>
                    </td>
                    <td class="form_label"  align="center">
                        项目类型:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" value="<b:write property='entity/protype'/>" name="delete_entity.protype"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label" align="center">
                        部件:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" value="<b:write property='entity/parts'/>" name="delete_entity.parts"/>
                    </td>
                    <td class="form_label" align="center">
                        项号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/itemno'/>" name="delete_entity.itemno"/>
                    </td>
                    <td class="form_label" align="center">
                        项目来源:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/prosource'/>" name="delete_entity.prosource"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label" align="center">
                        所在系统:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/insystem'/>" name="delete_entity.insystem"/>
                    </td>
                    <td class="form_label" align="center">
                        设备名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/equipment'/>" name="delete_entity.equipment"/>
                    </td>
                    <td class="form_label" align="center">
                        功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/seat'/>" name="delete_entity.seat"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label" align="center">
                        图号:
                    </td>
                    <td colspan="1">
                    	<input  id="btnEdit1"  class="nui-buttonedit" readonly="readonly" onclick="onButtonEdit(this,'1');" value="<b:write property='entity/mapno'/>" name="delete_entity.mapno"/>
                    </td>
                    <td class="form_label" align="center">
                        检查内容:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/inspectionscope'/>" name="delete_entity.inspectionscope"/>
                    </td>
                    <td class="form_label" align="center">
                        接近方式:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/approachmode'/>" name="delete_entity.approachmode"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label" align="center">
                        检查方法:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/method'/>" name="delete_entity.method"/>
                    </td>
                    <td class="form_label" align="center">
                        执行单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/executionunit'/>" name="delete_entity.executionunit"/>
                    </td>
                    <td class="form_label" align="center">
                        检查周期（RSEM):
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/rsemcycle'/>" name="delete_entity.rsemcycle"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label" align="center">
                        检查周期(SAP):
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/sapcycle'/>" name="delete_entity.sapcycle"/>
                    </td>
                    <td class="form_label" align="center">
                        维护项目:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/detailed'/>"  name="delete_entity.detailed"/>
                    </td>
                    <td class="form_label" align="center">
                        专用检查计划:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" value="<b:write property='entity/inspectplan'/>" dictTypeId="option" name="delete_entity.inspectplan"/>
                    </td>
                </tr>
                </table>
              
              <table id="nd"  style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
 					<tr>	
						<td style="display:none;"   id="n1991" class="form_label" align="center">
	                        1991:
	                    </td>
                       <td style="display:none;"  id="n1991i" colspan="1">
	                        <div name="delete_entity.n1991" id="combobox1991i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n1991'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td style="display:none;"  id="n1992" class="form_label" align="center">
	                        1992:
	                    </td>
                       <td style="display:none;"  id="n1992i" colspan="1">
	                        <div name="delete_entity.n1992" id="combobox1992i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n1992'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n1993" class="form_label" align="center">
	                        1993:
	                    </td>
                       <td style="display:none;"  id="n1993i" colspan="1">
	                        <div name="delete_entity.n1993" id="combobox1993i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n1993'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						</tr>
						<tr>
						<td style="display:none;"  id="n1994" class="form_label" align="center">
	                        1994:
	                    </td>
                       <td style="display:none;"  id="n1994i" colspan="1">
	                        <div name="delete_entity.n1994" id="combobox1994i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n1994'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n1995" class="form_label" align="center">
	                        1995:
	                    </td>
                       <td style="display:none;"  id="n1995i" colspan="1">
	                        <div name="delete_entity.n1995" id="combobox1995i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n1995'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n1996" class="form_label" align="center">
	                        1996:
	                    </td>
                       <td style="display:none;"  id="n1996i" colspan="1">
	                        <div name="delete_entity.n1996" id="combobox1996i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n1996'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						</tr>
						<tr>
						<td style="display:none;"  id="n1997" class="form_label" align="center">
	                        1997:
	                    </td>
                       <td style="display:none;"  id="n1997i" colspan="1">
	                        <div name="delete_entity.n1997" id="combobox1997i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n1997'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n1998" class="form_label" align="center">
	                        1998:
	                    </td>
                       <td style="display:none;"  id="n1998i" colspan="1">
	                        <div name="delete_entity.n1998" id="combobox1998i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n1998'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n1999" class="form_label" align="center">
	                        1999:
	                    </td>
                       <td style="display:none;"  id="n1999i" colspan="1">
	                        <div name="delete_entity.n1999" id="combobox1999i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n1999'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2000" class="form_label" align="center">
	                        2000:
	                    </td>
                       <td style="display:none;"  id="n2000i" colspan="1">
	                        <div name="delete_entity.n2000" id="combobox2000i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2000'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2001" class="form_label" align="center">
	                        2001:
	                    </td>
                       <td style="display:none;"  id="n2001i" colspan="1">
	                        <div name="delete_entity.n2001" id="combobox2001i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2001'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2002" class="form_label" align="center">
	                        2002:
	                    </td>
                       <td style="display:none;"  id="n2002i" colspan="1">
	                        <div name="delete_entity.n2002" id="combobox2002i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2002'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2003" class="form_label" align="center">
	                        2003:
	                    </td>
                       <td style="display:none;"  id="n2003i" colspan="1">
	                        <div name="delete_entity.n2003" id="combobox2003i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2003'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2004" class="form_label" align="center">
	                        2004:
	                    </td>
                       <td style="display:none;"  id="n2004i" colspan="1">
	                        <div name="delete_entity.n2004" id="combobox2004i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2004'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2005" class="form_label" align="center">
	                        2005:
	                    </td>
                       <td style="display:none;"  id="n2005i" colspan="1">
	                        <div name="delete_entity.n2005" id="combobox2005i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2005'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2006" class="form_label" align="center">
	                        2006:
	                    </td>
                       <td style="display:none;"  id="n2006i" colspan="1">
	                        <div name="delete_entity.n2006" id="combobox2006i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2006'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2007" class="form_label" align="center">
	                        2007:
	                    </td>
                       <td style="display:none;"  id="n2007i" colspan="1">
	                        <div name="delete_entity.n2007" id="combobox2007i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2007'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2008" class="form_label" align="center">
	                        2008:
	                    </td>
                       <td style="display:none;"  id="n2008i" colspan="1">
	                        <div name="delete_entity.n2008" id="combobox2008i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2008'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2009" class="form_label" align="center">
	                        2009:
	                    </td>
                       <td style="display:none;"  id="n2009i" colspan="1">
	                        <div name="delete_entity.n2009" id="combobox2009i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2009'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2010" class="form_label" align="center">
	                        2010:
	                    </td>
                       <td style="display:none;"  id="n2010i" colspan="1">
	                        <div name="delete_entity.n2010" id="combobox2010i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2010'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2011" class="form_label" align="center">
	                        2011:
	                    </td>
                       <td style="display:none;"  id="n2011i" colspan="1">
	                        <div name="delete_entity.n2011" id="combobox2011i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2011'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2012" class="form_label" align="center">
	                        2012:
	                    </td>
                       <td style="display:none;"  id="n2012i" colspan="1">
	                        <div name="delete_entity.n2012" id="combobox2012i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2012'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2013" class="form_label" align="center">
	                        2013:
	                    </td>
                       <td style="display:none;"  id="n2013i" colspan="1">
	                        <div name="delete_entity.n2013" id="combobox2013i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2013'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2014" class="form_label" align="center">
	                        2014:
	                    </td>
                       <td style="display:none;"  id="n2014i" colspan="1">
	                        <div name="delete_entity.n2014" id="combobox2014i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2014'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2015" class="form_label" align="center">
	                        2015:
	                    </td>
                       <td style="display:none;"  id="n2015i" colspan="1">
	                        <div name="delete_entity.n2015" id="combobox2015i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2015'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2016" class="form_label" align="center">
	                        2016:
	                    </td>
                       <td style="display:none;"  id="n2016i" colspan="1">
	                        <div name="delete_entity.n2016" id="combobox2016i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2016'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2017" class="form_label" align="center">
	                        2017:
	                    </td>
                       <td style="display:none;"  id="n2017i" colspan="1">
	                        <div name="delete_entity.n2017" id="combobox2017i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2017'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2018" class="form_label" align="center">
	                        2018:
	                    </td>
                       <td style="display:none;"  id="n2018i" colspan="1">
	                        <div name="delete_entity.n2018" id="combobox2018i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2018'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2019" class="form_label" align="center">
	                        2019:
	                    </td>
                       <td style="display:none;"  id="n2019i" colspan="1">
	                        <div name="delete_entity.n2019" id="combobox2019i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2019'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2020" class="form_label" align="center">
	                        2020:
	                    </td>
                       <td style="display:none;"  id="n2020i" colspan="1">
	                        <div name="delete_entity.n2020" id="combobox2020i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2020'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2021" class="form_label" align="center">
	                        2021:
	                    </td>
                       <td style="display:none;"  id="n2021i" colspan="1">
	                        <div name="delete_entity.n2021" id="combobox2021i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2021'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2022" class="form_label" align="center">
	                        2022:
	                    </td>
                       <td style="display:none;"  id="n2022i" colspan="1">
	                        <div name="delete_entity.n2022" id="combobox2022i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2022'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2023" class="form_label" align="center">
	                        2023:
	                    </td>
                       <td style="display:none;"  id="n2023i" colspan="1">
	                        <div name="delete_entity.n2023" id="combobox2023i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2023'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2024" class="form_label" align="center">
	                        2024:
	                    </td>
                       <td style="display:none;"  id="n2024i" colspan="1">
	                        <div name="delete_entity.n2024" id="combobox2024i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2024'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2025" class="form_label" align="center">
	                        2025:
	                    </td>
                       <td style="display:none;"  id="n2025i" colspan="1">
	                        <div name="delete_entity.n2025" id="combobox2025i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2025'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2026" class="form_label" align="center">
	                        2026:
	                    </td>
                       <td style="display:none;"  id="n2026i" colspan="1">
	                        <div name="delete_entity.n2026" id="combobox2026i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2026'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2027" class="form_label" align="center">
	                        2027:
	                    </td>
                       <td style="display:none;"  id="n2027i" colspan="1">
	                        <div name="delete_entity.n2027" id="combobox2027i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2027'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2028" class="form_label" align="center">
	                        2028:
	                    </td>
                       <td style="display:none;"  id="n2028i" colspan="1">
	                        <div name="delete_entity.n2028" id="combobox2028i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2028'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2029" class="form_label" align="center">
	                        2029:
	                    </td>
                       <td style="display:none;"  id="n2029i" colspan="1">
	                        <div name="delete_entity.n2029" id="combobox2029i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2029'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2030" class="form_label" align="center">
	                        2030:
	                    </td>
                       <td style="display:none;"  id="n2030i" colspan="1">
	                        <div name="delete_entity.n2030" id="combobox2030i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2030'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2031" class="form_label" align="center">
	                        2031:
	                    </td>
                       <td style="display:none;"  id="n2031i" colspan="1">
	                        <div name="delete_entity.n2031" id="combobox2031i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2031'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2032" class="form_label" align="center">
	                        2032:
	                    </td>
                       <td style="display:none;"  id="n2032i" colspan="1">
	                        <div name="delete_entity.n2032" id="combobox2032i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2032'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2033" class="form_label" align="center">
	                        2033:
	                    </td>
                       <td style="display:none;"  id="n2033i" colspan="1">
	                        <div name="delete_entity.n2033" id="combobox2033i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2033'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2034" class="form_label" align="center">
	                        2034:
	                    </td>
                       <td style="display:none;"  id="n2034i" colspan="1">
	                        <div name="delete_entity.n2034" id="combobox2034i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2034'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2035" class="form_label" align="center">
	                        2035:
	                    </td>
                       <td style="display:none;"  id="n2035i" colspan="1">
	                        <div name="delete_entity.n2035" id="combobox2035i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2035'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2036" class="form_label" align="center">
	                        2036:
	                    </td>
                       <td style="display:none;"  id="n2036i" colspan="1">
	                        <div name="delete_entity.n2036" id="combobox2036i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2036'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2037" class="form_label" align="center">
	                        2037:
	                    </td>
                       <td style="display:none;"  id="n2037i" colspan="1">
	                        <div name="delete_entity.n2037" id="combobox2037i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2037'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2038" class="form_label" align="center">
	                        2038:
	                    </td>
                       <td style="display:none;"  id="n2038i" colspan="1">
	                        <div name="delete_entity.n2038" id="combobox2038i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2038'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2039" class="form_label" align="center">
	                        2039:
	                    </td>
                       <td style="display:none;"  id="n2039i" colspan="1">
	                        <div name="delete_entity.n2039" id="combobox2039i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2039'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2040" class="form_label" align="center">
	                        2040:
	                    </td>
                       <td style="display:none;"  id="n2040i" colspan="1">
	                        <div name="delete_entity.n2040" id="combobox2040i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2040'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2041" class="form_label" align="center">
	                        2041:
	                    </td>
                       <td style="display:none;"  id="n2041i" colspan="1">
	                        <div name="delete_entity.n2041" id="combobox2041i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2041'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2042" class="form_label" align="center">
	                        2042:
	                    </td>
                       <td style="display:none;"  id="n2042i" colspan="1">
	                        <div name="delete_entity.n2042" id="combobox2042i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2042'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2043" class="form_label" align="center">
	                        2043:
	                    </td>
                       <td style="display:none;"  id="n2043i" colspan="1">
	                        <div name="delete_entity.n2043" id="combobox2043i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2043'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2044" class="form_label" align="center">
	                        2044:
	                    </td>
                       <td style="display:none;"  id="n2044i" colspan="1">
	                        <div name="delete_entity.n2044" id="combobox2044i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2044'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2045" class="form_label" align="center">
	                        2045:
	                    </td>
                       <td style="display:none;"  id="n2045i" colspan="1">
	                        <div name="delete_entity.n2045" id="combobox2045i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2045'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2046" class="form_label" align="center">
	                        2046:
	                    </td>
                       <td style="display:none;"  id="n2046i" colspan="1">
	                        <div name="delete_entity.n2046" id="combobox2046i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2046'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2047" class="form_label" align="center">
	                        2047:
	                    </td>
                       <td style="display:none;"  id="n2047i" colspan="1">
	                        <div name="delete_entity.n2047" id="combobox2047i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2047'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2048" class="form_label" align="center">
	                        2048:
	                    </td>
                       <td style="display:none;"  id="n2048i" colspan="1">
	                        <div name="delete_entity.n2048" id="combobox2048i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2048'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2049" class="form_label" align="center">
	                        2049:
	                    </td>
                       <td style="display:none;"  id="n2049i" colspan="1">
	                        <div name="delete_entity.n2049" id="combobox2049i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2049'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2050" class="form_label" align="center">
	                        2050:
	                    </td>
                       <td style="display:none;"  id="n2050i" colspan="1">
	                        <div name="delete_entity.n2050" id="combobox2050i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2050'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2051" class="form_label" align="center">
	                        2051:
	                    </td>
                       <td style="display:none;"  id="n2051i" colspan="1">
	                        <div name="delete_entity.n2051" id="combobox2051i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2051'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2052" class="form_label" align="center">
	                        2052:
	                    </td>
                       <td style="display:none;"  id="n2052i" colspan="1">
	                        <div name="delete_entity.n2052" id="combobox2052i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2052'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2053" class="form_label" align="center">
	                        2053:
	                    </td>
                       <td style="display:none;"  id="n2053i" colspan="1">
	                        <div name="delete_entity.n2053" id="combobox2053i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2053'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2054" class="form_label" align="center">
	                        2054:
	                    </td>
                       <td style="display:none;"  id="n2054i" colspan="1">
	                        <div name="delete_entity.n2054" id="combobox2054i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2054'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2055" class="form_label" align="center">
	                        2055:
	                    </td>
                       <td style="display:none;"  id="n2055i" colspan="1">
	                        <div name="delete_entity.n2055" id="combobox2055i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2055'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2056" class="form_label" align="center">
	                        2056:
	                    </td>
                       <td style="display:none;"  id="n2056i" colspan="1">
	                        <div name="delete_entity.n2056" id="combobox2056i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2056'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2057" class="form_label" align="center">
	                        2057:
	                    </td>
                       <td style="display:none;"  id="n2057i" colspan="1">
	                        <div name="delete_entity.n2057" id="combobox2057i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2057'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2058" class="form_label" align="center">
	                        2058:
	                    </td>
                       <td style="display:none;"  id="n2058i" colspan="1">
	                        <div name="delete_entity.n2058" id="combobox2058i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2058'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2059" class="form_label" align="center">
	                        2059:
	                    </td>
                       <td style="display:none;"  id="n2059i" colspan="1">
	                        <div name="delete_entity.n2059" id="combobox2059i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2059'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2060" class="form_label" align="center">
	                        2060:
	                    </td>
                       <td style="display:none;"  id="n2060i" colspan="1">
	                        <div name="delete_entity.n2060" id="combobox2060i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2060'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2061" class="form_label" align="center">
	                        2061:
	                    </td>
                       <td style="display:none;"  id="n2061i" colspan="1">
	                        <div name="delete_entity.n2061" id="combobox2061i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2061'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2062" class="form_label" align="center">
	                        2062:
	                    </td>
                       <td style="display:none;"  id="n2062i" colspan="1">
	                        <div name="delete_entity.n2062" id="combobox2062i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2062'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2063" class="form_label" align="center">
	                        2063:
	                    </td>
                       <td style="display:none;"  id="n2063i" colspan="1">
	                        <div name="delete_entity.n2063" id="combobox2063i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2063'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2064" class="form_label" align="center">
	                        2064:
	                    </td>
                       <td style="display:none;"  id="n2064i" colspan="1">
	                        <div name="delete_entity.n2064" id="combobox2064i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2064'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2065" class="form_label" align="center">
	                        2065:
	                    </td>
                       <td style="display:none;"  id="n2065i" colspan="1">
	                        <div name="delete_entity.n2065" id="combobox2065i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2065'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2066" class="form_label" align="center">
	                        2066:
	                    </td>
                       <td style="display:none;"  id="n2066i" colspan="1">
	                        <div name="delete_entity.n2066" id="combobox2066i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2066'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2067" class="form_label" align="center">
	                        2067:
	                    </td>
                       <td style="display:none;"  id="n2067i" colspan="1">
	                        <div name="delete_entity.n2067" id="combobox2067i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2067'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2068" class="form_label" align="center">
	                        2068:
	                    </td>
                       <td style="display:none;"  id="n2068i" colspan="1">
	                        <div name="delete_entity.n2068" id="combobox2068i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2068'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2069" class="form_label" align="center">
	                        2069:
	                    </td>
                       <td style="display:none;"  id="n2069i" colspan="1">
	                        <div name="delete_entity.n2069" id="combobox2069i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2069'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2070" class="form_label" align="center">
	                        2070:
	                    </td>
                       <td style="display:none;"  id="n2070i" colspan="1">
	                        <div name="delete_entity.n2070" id="combobox2070i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2070'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2071" class="form_label" align="center">
	                        2071:
	                    </td>
                       <td style="display:none;"  id="n2071i" colspan="1">
	                        <div name="delete_entity.n2071" id="combobox2071i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2071'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2072" class="form_label" align="center">
	                        2072:
	                    </td>
                       <td style="display:none;"  id="n2072i" colspan="1">
	                        <div name="delete_entity.n2072" id="combobox2072i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2072'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2073" class="form_label" align="center">
	                        2073:
	                    </td>
                       <td style="display:none;"  id="n2073i" colspan="1">
	                        <div name="delete_entity.n2073" id="combobox2073i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2073'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2074" class="form_label" align="center">
	                        2074:
	                    </td>
                       <td style="display:none;"  id="n2074i" colspan="1">
	                        <div name="delete_entity.n2074" id="combobox2074i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2074'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2075" class="form_label" align="center">
	                        2075:
	                    </td>
                       <td style="display:none;"  id="n2075i" colspan="1">
	                        <div name="delete_entity.n2075" id="combobox2075i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2075'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2076" class="form_label" align="center">
	                        2076:
	                    </td>
                       <td style="display:none;"  id="n2076i" colspan="1">
	                        <div name="delete_entity.n2076" id="combobox2076i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2076'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2077" class="form_label" align="center">
	                        2077:
	                    </td>
                       <td style="display:none;"  id="n2077i" colspan="1">
	                        <div name="delete_entity.n2077" id="combobox2077i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2077'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2078" class="form_label" align="center">
	                        2078:
	                    </td>
                       <td style="display:none;"  id="n2078i" colspan="1">
	                        <div name="delete_entity.n2078" id="combobox2078i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2078'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2079" class="form_label" align="center">
	                        2079:
	                    </td>
                       <td style="display:none;"  id="n2079i" colspan="1">
	                        <div name="delete_entity.n2079" id="combobox2079i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2079'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2080" class="form_label" align="center">
	                        2080:
	                    </td>
                       <td style="display:none;"  id="n2080i" colspan="1">
	                        <div name="delete_entity.n2080" id="combobox2080i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2080'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2081" class="form_label" align="center">
	                        2081:
	                    </td>
                       <td style="display:none;"  id="n2081i" colspan="1">
	                        <div name="delete_entity.n2081" id="combobox2081i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2081'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2082" class="form_label" align="center">
	                        2082:
	                    </td>
                       <td style="display:none;"  id="n2082i" colspan="1">
	                        <div name="delete_entity.n2082" id="combobox2082i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2082'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2083" class="form_label" align="center">
	                        2083:
	                    </td>
                       <td style="display:none;"  id="n2083i" colspan="1">
	                        <div name="delete_entity.n2083" id="combobox2083i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2083'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2084" class="form_label" align="center">
	                        2084:
	                    </td>
                       <td style="display:none;"  id="n2084i" colspan="1">
	                        <div name="delete_entity.n2084" id="combobox2084i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2084'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2085" class="form_label" align="center">
	                        2085:
	                    </td>
                       <td style="display:none;"  id="n2085i" colspan="1">
	                        <div name="delete_entity.n2085" id="combobox2085i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2085'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2086" class="form_label" align="center">
	                        2086:
	                    </td>
						
                       <td style="display:none;"  id="n2086i" colspan="1">
	                        <div name="delete_entity.n2086" id="combobox2086i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2086'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
							</tr>
						<tr>
						<td style="display:none;"  id="n2087" class="form_label" align="center">
	                        2087:
	                    </td>
                       <td style="display:none;"  id="n2087i" colspan="1">
	                        <div name="delete_entity.n2087" id="combobox2087i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2087'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2088" class="form_label" align="center">
	                        2088:
	                    </td>
                       <td style="display:none;"  id="n2088i" colspan="1">
	                        <div name="delete_entity.n2088" id="combobox2088i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2088'/>">     
							     <div property="columns" >
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
						<td style="display:none;"  id="n2089" class="form_label" align="center">
	                        2089:
	                    </td>
                       <td style="display:none;"  id="n2089i" colspan="1">
	                        <div name="delete_entity.n2089" id="combobox2089i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  value="<b:write property='entity/n2089'/>">     
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
                        <input id="creator"  readonly="true" class="nui-textbox" name="delete_entity.creator"  value="<b:write property='entity/creator'/>" />
                    </td>
                    <td class="form_label"  align="center">
                        发起日期:
                    </td>
                    <td colspan="2">
                        <input id="datetime"  readonly="true" dateFormat="yyyy-MM-dd HH:mm:ss" style="width: 100%" class="nui-textbox" name="delete_entity.datetime"  value="<b:write property='entity/datetime'/>" />
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
                 
<!--                  		<input  required="true" property="editor" id="jhry"  name="jhry"  class="nui-textboxlist" dataField="list" required="true" requiredErrorText="请输入校核人员" style="width:350px"  -->
<!-- 					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  /> -->
<!--                     </td> -->
  
                    <td class="form_label">
                        抄送人员:
                    </td>
                    <td colspan="3">
    				<input  property="editor" id="ccry"  name="ccry"  class="nui-textboxlist" dataField="list" style="width:90%"
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
                            
                            <a class="nui-button" id="onCancel" onclick="onCancel()"  >
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
   
            	//提交，完成当前环节
	    	function onSubmit(){
	    		var form = new nui.Form("#deleteForm");
	    		var urlStr = "com.cgn.itmp.basecommon.Common.updateEntity.biz.ext";
	    		form.validate();
	    		
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	            data.entityType = "com.cgn.itmp.outlineandplan.outline.common.NonStaturory.NonStaturoryEdit";
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
					    json.entityType = "com.cgn.itmp.outlineandplan.outline.common.NonStaturory.NonStaturoryEdit";
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
	    	   	var jdid = nui.get("jd").getValue();
            	var jzid = nui.get("jz").getValue();
         		//选择项赋值
            	var btnEdit1 =  nui.get('btnEdit1').getValue();
            	if(btnEdit1 != null && btnEdit1 != ''){
            		nui.get('btnEdit1').setText(btnEdit1);
            	}
	    	var combourl = "com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=otherbases";
    	     if(jdid == "86"){
            	combourl="com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=taishanbase";
            }
            
             	var parms = "{baseid:"+jdid+",crewid:"+jzid+",type:n}";
				var urlStr = "com.cgn.itmp.basecommon.Common.getBaseCircle.biz.ext";
				var start = 0;
				var end = 0;
				$.ajax({
                    url:urlStr,
                    type:'POST',
                    cache:false,
                     async:false, 
                    data:parms,
                    contentType:'text/json',
                    success:function(data){
                    	var returnJson = nui.decode(data);
                    	if(returnJson.data.sucess){
	                        start = returnJson.data.start;
	                        end = returnJson.data.end;
	                    
// 	                        for(var i = 1991;i < parseInt(start);i++){
// 	                        	$('#n'+i).hide();
// 	                        	$('#n'+i+"i").hide();
// 	                        }
// 							for(var i = parseInt(end)+11;i <= 2089 ;i++){
// 	                        	$('#n'+i).hide();
// 	                        	$('#n'+i+"i").hide();
// 	                        }
	                        
	                  
                    	}
                    }
                });
                
            for(var i = parseInt(start);i<parseInt(end)+11;i++){
                    	$('#n'+i).show();
                    	$('#n'+i+"i").show();
                    	nui.get('combobox'+i+'i').setAjaxType("POST");
                    	nui.get('combobox'+i+'i').load(combourl);
                    	
                    }
                
            $(function() {
            	var form = new nui.Form("#deleteForm");
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
         
	          
            });
            
            //取消
        function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }
            
            
            function onButtonEdit(e,type) {
		var btnEdit;
		var btnEditid;
		var url = "";
		if(type == "1"){
			url = "/itmp/outlineCommon/selgridwindow/SelectGridWindow.jsp";
			btnEdit = nui.get('btnEdit1');
			btnEditid = nui.get('mapnoid');
		}
		nui.open({showMaxButton : true,
		    url:url,
		    title: "选择列表",
		    width: 650,
		    height: 380,
		    ondestroy: function (action) {
		        if (action == "ok") {
		            var iframe = this.getIFrameEl();
		            var data = iframe.contentWindow.GetData();
		            data = nui.clone(data);    //必须
		            if (data) {
		            	var uuid = '',bh = '';
		            	for(var i=0;i<data.length;i++){
		            		uuid += data[i].uuid;
	            			bh += data[i].cktlbh;
	            			if(i<data.length - 1){
	            				uuid +=',';
	            				bh +=',';
	            			}
		            	}
		            	btnEditid.setValue(uuid);
		                btnEdit.setValue(bh);
	                	btnEdit.setText(bh);
		            }
	            }
	
	        }
	    });            
	             
	}
</script>

    </body>
</html>
