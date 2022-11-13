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
			<input class="nui-hidden" name="tdgglsnjhhddxedit.id" value="<b:write property='entity/id'/>"/>
   			<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>"/> 
            <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>"/>  
             <input class="nui-hidden" name="spyj" value=""/>  
            
            <!-- hidden域 -->
<!--             <input class="nui-hidden" name="tdgglsnjhhddxedit.id"/> -->
             <input id='orderno' class="nui-hidden" name="tdgglsnjhhddxedit.orderno" value="<b:write property='entity/orderno'/>"/>
             
			 <input class="nui-hidden"  name="tdgglsnjhhddxedit.relid" value="<b:write property='entity/relid'/>"/>
			<input class="nui-hidden"  name="tdgglsnjhhddxedit.edition" value="<b:write property='entity/edition'/>"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
               <tr>
                	<td class="form_label"  align="center">
                        基地:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox"  dataField="jsonObject" id="jd"
                      name="tdgglsnjhhddxedit.base" onvaluechanged="reloadJz" value="<b:write property='entity/base'/>"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id"/>
                    </td>
                     <td class="form_label" align="center">
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox"  dataField="jsonObject" id="jz" textField="name" 
                     			 url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=<b:write property='entity/base'/>"
 value="<b:write property='entity/crew'/>"
                      name="tdgglsnjhhddxedit.crew"  valueField="id"/>
                    </td>
                    <td class="form_label"  align="center">
                        项目类型:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" dictTypeId="protype" value="<b:write property='entity/protype'/>" name="tdgglsnjhhddxedit.protype"/>
                    </td>
                </tr>
                
                
                <tr>
                    <td class="form_label"  align="center">
                       设备/系统:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/parts'/>" name="tdgglsnjhhddxedit.parts"/>
                    </td>
 					<td class="form_label"  align="center">
                        项号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/itemno'/>" name="tdgglsnjhhddxedit.itemno"/>
                    </td>
                    <td class="form_label"  align="center">
                        任务清单:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/mintenanceproject'/>" name="delete_entity.mintenanceproject"/>
                    </td>  
                    
                </tr>
                
                <tr>
                    <td class="form_label"  align="center">
                       大纲工单:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  value="<b:write property='entity/workorder'/>" name="delete_entity.workorder"/>
                    </td>
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
                        <input class="nui-textbox" value="<b:write property='entity/detailed'/>" name="tdgglsnjhhddxedit.detailed"/>
                    </td>   
                </tr>
                
                <tr>
                    <td class="form_label"  align="center">
                        检查周期:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/period'/>" name="tdgglsnjhhddxedit.period"/>
                    </td>
                    <td class="form_label"  align="center">
                        功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" value="<b:write property='entity/site'/>" name="tdgglsnjhhddxedit.site"/>
                    </td>
                </tr>
                
                <tr>
                <td class="form_label"  >
                        检查项目描述:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea" value="<b:write property='entity/inspectionscope'/>" style="width: 100%" name="tdgglsnjhhddxedit.inspectionscope"/>
                    </td>
                </tr>
                
                
              </table>
              
              <table id="nd"  style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
 					<tr>
					<td id="n1991" class="form_label"  align="center">
						   1991:
					</td>
					<td id="n1991i" colspan="1">
						<input id="n1991" value="<b:write property='entity/n1991'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n1991"/>
					</td>
					<td id="n1992" class="form_label"  align="center">
						1992:
					</td>
					<td id="n1992i" colspan="1">
						<input id="n1992" value="<b:write property='entity/n1992'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n1992"/>
					</td>
					<td id="n1993" class="form_label"  align="center">
					   1993:
					</td>
					<td id="n1993i" colspan="1">
						<input id="n1993" value="<b:write property='entity/n1993'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n1993"/>
					</td>
				</tr>
             <tr>
				<td id="n1994" class="form_label"  align="center">
					1994:
				</td>
				<td id="n1994i" colspan="1">
					<input id="n1994" value="<b:write property='entity/n1994'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n1994"/>
				</td>
				<td id="n1995" class="form_label"  align="center">
					   1995:
				</td>
				<td id="n1995i" colspan="1">
					<input id="n1995" value="<b:write property='entity/n1995'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n1995"/>
				</td>
				<td id="n1996" class="form_label"  align="center">
					1996:
				</td>
				<td id="n1996i" colspan="1">
					<input id="n1996" value="<b:write property='entity/n1996'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n1996"/>
				</td>
			</tr>
			<tr>
				<td id="n1997" class="form_label"  align="center">
					   1997:
				</td>
				<td id="n1997i" colspan="1">
					<input id="n1997" value="<b:write property='entity/n1997'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n1997"/>
				</td>
				<td id="n1998" class="form_label"  align="center">
					1998:
				</td>
				<td id="n1998i" colspan="1">
					<input id="n1998" value="<b:write property='entity/n1998'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n1998"/>
				</td>
				<td id="n1999" class="form_label"  align="center">
					   1999:
				</td>
				<td id="n1999i" colspan="1">
					<input id="n1999" value="<b:write property='entity/n1999'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n1999"/>
				</td>
			</tr>
			<tr>
				<td id="n2000" class="form_label"  align="center">
					2000:
				</td>
				<td id="n2000i" colspan="1">
					<input id="n2000" value="<b:write property='entity/n2000'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2000"/>
				</td>
				<td id="n2001" class="form_label"  align="center">
					   2001:
				</td>
				<td id="n2001i" colspan="1">
					<input id="n2001" value="<b:write property='entity/n2001'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2001"/>
				</td>
				<td id="n2002" class="form_label"  align="center">
					2002:
				</td>
				<td id="n2002i" colspan="1">
					<input id="n2002" value="<b:write property='entity/n2002'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2002"/>
				</td>
			</tr>
			<tr>
				<td id="n2003" class="form_label"  align="center">
					   2003:
				</td>
				<td id="n2003i" colspan="1">
					<input id="n2003" value="<b:write property='entity/n2003'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2003"/>
				</td>
				<td id="n2004" class="form_label"  align="center">
					2004:
				</td>
				<td id="n2004i" colspan="1">
					<input id="n2004" value="<b:write property='entity/n2004'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2004"/>
				</td>
				<td id="n2005" class="form_label"  align="center">
					   2005:
				</td>
				<td id="n2005i" colspan="1">
					<input id="n2005" value="<b:write property='entity/n2005'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2005"/>
				</td>
			</tr>
			<tr>
				<td id="n2006" class="form_label"  align="center">
					2006:
				</td>
				<td id="n2006i" colspan="1">
					<input id="n2006" value="<b:write property='entity/n2006'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2006"/>
				</td>
				<td id="n2007" class="form_label"  align="center">
					   2007:
				</td>
				<td id="n2007i" colspan="1">
					<input id="n2007" value="<b:write property='entity/n2007'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2007"/>
				</td>
				<td id="n2008" class="form_label"  align="center">
					2008:
				</td>
				<td id="n2008i" colspan="1">
					<input id="n2008" value="<b:write property='entity/n2008'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2008"/>
				</td>
			</tr>
			<tr>
				<td id="n2009" class="form_label"  align="center">
					   2009:
				</td>
				<td id="n2009i" colspan="1">
					<input id="n2009" value="<b:write property='entity/n2009'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2009"/>
				</td>
				<td id="n2010" class="form_label"  align="center">
					2010:
				</td>
				<td id="n2010i" colspan="1">
					<input id="n2010" value="<b:write property='entity/n2010'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2010"/>
				</td>
				<td id="n2011" class="form_label"  align="center">
					   2011:
				</td>
				<td id="n2011i" colspan="1">
					<input id="n2011" value="<b:write property='entity/n2011'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2011"/>
				</td>
			</tr>
			<tr>
				<td id="n2012" class="form_label"  align="center">
					2012:
				</td>
				<td id="n2012i" colspan="1">
					<input id="n2012" value="<b:write property='entity/n2012'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2012"/>
				</td>
				<td id="n2013" class="form_label"  align="center">
					   2013:
				</td>
				<td id="n2013i" colspan="1">
					<input id="n2013" value="<b:write property='entity/n2013'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2013"/>
				</td>
				<td id="n2014" class="form_label"  align="center">
					2014:
				</td>
				<td id="n2014i" colspan="1">
					<input id="n2014" value="<b:write property='entity/n2014'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2014"/>
				</td>
			</tr>
			<tr>
				<td id="n2015" class="form_label"  align="center">
					   2015:
				</td>
				<td id="n2015i" colspan="1">
					<input id="n2015" value="<b:write property='entity/n2015'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2015"/>
				</td>
				<td id="n2016" class="form_label"  align="center">
					2016:
				</td>
				<td id="n2016i" colspan="1">
					<input id="n2016" value="<b:write property='entity/n2016'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2016"/>
				</td>
				<td id="n2017" class="form_label"  align="center">
					   2017:
				</td>
				<td id="n2017i" colspan="1">
					<input id="n2017" value="<b:write property='entity/n2017'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2017"/>
				</td>
			</tr>
			<tr>
				<td id="n2018" class="form_label"  align="center">
					2018:
				</td>
				<td id="n2018i" colspan="1">
					<input id="n2018" value="<b:write property='entity/n2018'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2018"/>
				</td>
				<td id="n2019" class="form_label"  align="center">
					   2019:
				</td>
				<td id="n2019i" colspan="1">
					<input id="n2019" value="<b:write property='entity/n2019'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2019"/>
				</td>
				<td id="n2020" class="form_label"  align="center">
					2020:
				</td>
				<td id="n2020i" colspan="1">
					<input id="n2020" value="<b:write property='entity/n2020'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2020"/>
				</td>
			</tr>
			<tr>
				<td id="n2021" class="form_label"  align="center">
					   2021:
				</td>
				<td id="n2021i" colspan="1">
					<input id="n2021" value="<b:write property='entity/n2021'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2021"/>
				</td>
				<td id="n2022" class="form_label"  align="center">
					2022:
				</td>
				<td id="n2022i" colspan="1">
					<input id="n2022" value="<b:write property='entity/n2022'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2022"/>
				</td>
				<td id="n2023" class="form_label"  align="center">
					   2023:
				</td>
				<td id="n2023i" colspan="1">
					<input id="n2023" value="<b:write property='entity/n2023'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2023"/>
				</td>
			</tr>
			<tr>
				<td id="n2024" class="form_label"  align="center">
					2024:
				</td>
				<td id="n2024i" colspan="1">
					<input id="n2024" value="<b:write property='entity/n2024'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2024"/>
				</td>
				<td id="n2025" class="form_label"  align="center">
					   2025:
				</td>
				<td id="n2025i" colspan="1">
					<input id="n2025" value="<b:write property='entity/n2025'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2025"/>
				</td>
				<td id="n2026" class="form_label"  align="center">
					2026:
				</td>
				<td id="n2026i" colspan="1">
					<input id="n2026" value="<b:write property='entity/n2026'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2026"/>
				</td>
			</tr>
			<tr>
				<td id="n2027" class="form_label"  align="center">
					   2027:
				</td>
				<td id="n2027i" colspan="1">
					<input id="n2027" value="<b:write property='entity/n2027'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2027"/>
				</td>
				<td id="n2028" class="form_label"  align="center">
					2028:
				</td>
				<td id="n2028i" colspan="1">
					<input id="n2028" value="<b:write property='entity/n2028'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2028"/>
				</td>
				<td id="n2029" class="form_label"  align="center">
					   2029:
				</td>
				<td id="n2029i" colspan="1">
					<input id="n2029" value="<b:write property='entity/n2029'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2029"/>
				</td>
			</tr>
			<tr>
				<td id="n2030" class="form_label"  align="center">
					2030:
				</td>
				<td id="n2030i" colspan="1">
					<input id="n2030" value="<b:write property='entity/n2030'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2030"/>
				</td>
				<td id="n2031" class="form_label"  align="center">
					   2031:
				</td>
				<td id="n2031i" colspan="1">
					<input id="n2031" value="<b:write property='entity/n2031'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2031"/>
				</td>
				<td id="n2032" class="form_label"  align="center">
					2032:
				</td>
				<td id="n2032i" colspan="1">
					<input id="n2032" value="<b:write property='entity/n2032'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2032"/>
				</td>
			</tr>
			<tr>
				<td id="n2033" class="form_label"  align="center">
					   2033:
				</td>
				<td id="n2033i" colspan="1">
					<input id="n2033" value="<b:write property='entity/n2033'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2033"/>
				</td>
				<td id="n2034" class="form_label"  align="center">
					2034:
				</td>
				<td id="n2034i" colspan="1">
					<input id="n2034" value="<b:write property='entity/n2034'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2034"/>
				</td>
				<td id="n2035" class="form_label"  align="center">
					   2035:
				</td>
				<td id="n2035i" colspan="1">
					<input id="n2035" value="<b:write property='entity/n2035'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2035"/>
				</td>
			</tr>
			<tr>
				<td id="n2036" class="form_label"  align="center">
					2036:
				</td>
				<td id="n2036i" colspan="1">
					<input id="n2036" value="<b:write property='entity/n2036'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2036"/>
				</td>
				<td id="n2037" class="form_label"  align="center">
					   2037:
				</td>
				<td id="n2037i" colspan="1">
					<input id="n2037" value="<b:write property='entity/n2037'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2037"/>
				</td>
				<td id="n2038" class="form_label"  align="center">
					2038:
				</td>
				<td id="n2038i" colspan="1">
					<input id="n2038" value="<b:write property='entity/n2038'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2038"/>
				</td>
			</tr>
			<tr>
				<td id="n2039" class="form_label"  align="center">
					   2039:
				</td>
				<td id="n2039i" colspan="1">
					<input id="n2039" value="<b:write property='entity/n2039'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2039"/>
				</td>
				<td id="n2040" class="form_label"  align="center">
					2040:
				</td>
				<td id="n2040i" colspan="1">
					<input id="n2040" value="<b:write property='entity/n2040'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2040"/>
				</td>
				<td id="n2041" class="form_label"  align="center">
					   2041:
				</td>
				<td id="n2041i" colspan="1">
					<input id="n2041" value="<b:write property='entity/n2041'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2041"/>
				</td>
			</tr>
			<tr>
				<td id="n2042" class="form_label"  align="center">
					2042:
				</td>
				<td id="n2042i" colspan="1">
					<input id="n2042" value="<b:write property='entity/n2042'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2042"/>
				</td>
				<td id="n2043" class="form_label"  align="center">
					   2043:
				</td>
				<td id="n2043i" colspan="1">
					<input id="n2043" value="<b:write property='entity/n2043'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2043"/>
				</td>
				<td id="n2044" class="form_label"  align="center">
					2044:
				</td>
				<td id="n2044i" colspan="1">
					<input id="n2044" value="<b:write property='entity/n2044'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2044"/>
				</td>
			</tr>
			<tr>
				<td id="n2045" class="form_label"  align="center">
					   2045:
				</td>
				<td id="n2045i" colspan="1">
					<input id="n2045" value="<b:write property='entity/n2045'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2045"/>
				</td>
				<td id="n2046" class="form_label"  align="center">
					2046:
				</td>
				<td id="n2046i" colspan="1">
					<input id="n2046" value="<b:write property='entity/n2046'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2046"/>
				</td>
				<td id="n2047" class="form_label"  align="center">
					   2047:
				</td>
				<td id="n2047i" colspan="1">
					<input id="n2047" value="<b:write property='entity/n2047'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2047"/>
				</td>
			</tr>
			<tr>
				<td id="n2048" class="form_label"  align="center">
					2048:
				</td>
				<td id="n2048i" colspan="1">
					<input id="n2048" value="<b:write property='entity/n2048'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2048"/>
				</td>
				<td id="n2049" class="form_label"  align="center">
					   2049:
				</td>
				<td id="n2049i" colspan="1">
					<input id="n2049" value="<b:write property='entity/n2049'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2049"/>
				</td>
				<td id="n2050" class="form_label"  align="center">
					2050:
				</td>
				<td id="n2050i" colspan="1">
					<input id="n2050" value="<b:write property='entity/n2050'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2050"/>
				</td>
			</tr>
			<tr>
				<td id="n2051" class="form_label"  align="center">
					   2051:
				</td>
				<td id="n2051i" colspan="1">
					<input id="n2051" value="<b:write property='entity/n2051'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2051"/>
				</td>
				<td id="n2052" class="form_label"  align="center">
					2052:
				</td>
				<td id="n2052i" colspan="1">
					<input id="n2052" value="<b:write property='entity/n2052'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2052"/>
				</td>
				<td id="n2053" class="form_label"  align="center">
					   2053:
				</td>
				<td id="n2053i" colspan="1">
					<input id="n2053" value="<b:write property='entity/n2053'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2053"/>
				</td>
			</tr>
			<tr>
				<td id="n2054" class="form_label"  align="center">
					2054:
				</td>
				<td id="n2054i" colspan="1">
					<input id="n2054" value="<b:write property='entity/n2054'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2054"/>
				</td>
				<td id="n2055" class="form_label"  align="center">
					   2055:
				</td>
				<td id="n2055i" colspan="1">
					<input id="n2055" value="<b:write property='entity/n2055'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2055"/>
				</td>
				<td id="n2056" class="form_label"  align="center">
					2056:
				</td>
				<td id="n2056i" colspan="1">
					<input id="n2056" value="<b:write property='entity/n2056'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2056"/>
				</td>
			</tr>
			<tr>
				<td id="n2057" class="form_label"  align="center">
					   2057:
				</td>
				<td id="n2057i" colspan="1">
					<input id="n2057" value="<b:write property='entity/n2057'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2057"/>
				</td>
				<td id="n2058" class="form_label"  align="center">
					2058:
				</td>
				<td id="n2058i" colspan="1">
					<input id="n2058" value="<b:write property='entity/n2058'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2058"/>
				</td>
				<td id="n2059" class="form_label"  align="center">
					   2059:
				</td>
				<td id="n2059i" colspan="1">
					<input id="n2059" value="<b:write property='entity/n2059'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2059"/>
				</td>
			</tr>
			<tr>
				<td id="n2060" class="form_label"  align="center">
					2060:
				</td>
				<td id="n2060i" colspan="1">
					<input id="n2060" value="<b:write property='entity/n2060'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2060"/>
				</td>
				<td id="n2061" class="form_label"  align="center">
					   2061:
				</td>
				<td id="n2061i" colspan="1">
					<input id="n2061" value="<b:write property='entity/n2061'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2061"/>
				</td>
				<td id="n2062" class="form_label"  align="center">
					2062:
				</td>
				<td id="n2062i" colspan="1">
					<input id="n2062" value="<b:write property='entity/n2062'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2062"/>
				</td>
			</tr>
			<tr>
				<td id="n2063" class="form_label"  align="center">
					   2063:
				</td>
				<td id="n2063i" colspan="1">
					<input id="n2063" value="<b:write property='entity/n2063'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2063"/>
				</td>
				<td id="n2064" class="form_label"  align="center">
					2064:
				</td>
				<td id="n2064i" colspan="1">
					<input id="n2064" value="<b:write property='entity/n2064'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2064"/>
				</td>
				<td id="n2065" class="form_label"  align="center">
					   2065:
				</td>
				<td id="n2065i" colspan="1">
					<input id="n2065" value="<b:write property='entity/n2065'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2065"/>
				</td>
			</tr>
			<tr>
				<td id="n2066" class="form_label"  align="center">
					2066:
				</td>
				<td id="n2066i" colspan="1">
					<input id="n2066" value="<b:write property='entity/n2066'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2066"/>
				</td>
				<td id="n2067" class="form_label"  align="center">
					   2067:
				</td>
				<td id="n2067i" colspan="1">
					<input id="n2067" value="<b:write property='entity/n2067'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2067"/>
				</td>
				<td id="n2068" class="form_label"  align="center">
					2068:
				</td>
				<td id="n2068i" colspan="1">
					<input id="n2068" value="<b:write property='entity/n2068'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2068"/>
				</td>
			</tr>
			<tr>
				<td id="n2069" class="form_label"  align="center">
					   2069:
				</td>
				<td id="n2069i" colspan="1">
					<input id="n2069" value="<b:write property='entity/n2069'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2069"/>
				</td>
				<td id="n2070" class="form_label"  align="center">
					2070:
				</td>
				<td id="n2070i" colspan="1">
					<input id="n2070" value="<b:write property='entity/n2070'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2070"/>
				</td>
				<td id="n2071" class="form_label"  align="center">
					   2071:
				</td>
				<td id="n2071i" colspan="1">
					<input id="n2071" value="<b:write property='entity/n2071'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2071"/>
				</td>
			</tr>
			<tr>
				<td id="n2072" class="form_label"  align="center">
					2072:
				</td>
				<td id="n2072i" colspan="1">
					<input id="n2072" value="<b:write property='entity/n2072'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2072"/>
				</td>
				<td id="n2073" class="form_label"  align="center">
					   2073:
				</td>
				<td id="n2073i" colspan="1">
					<input id="n2073" value="<b:write property='entity/n2073'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2073"/>
				</td>
				<td id="n2074" class="form_label"  align="center">
					2074:
				</td>
				<td id="n2074i" colspan="1">
					<input id="n2074" value="<b:write property='entity/n2074'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2074"/>
				</td>
			</tr>
			<tr>
				<td id="n2075" class="form_label"  align="center">
					   2075:
				</td>
				<td id="n2075i" colspan="1">
					<input id="n2075" value="<b:write property='entity/n2075'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2075"/>
				</td>
				<td id="n2076" class="form_label"  align="center">
					2076:
				</td>
				<td id="n2076i" colspan="1">
					<input id="n2076" value="<b:write property='entity/n2076'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2076"/>
				</td>
				<td id="n2077" class="form_label"  align="center">
					   2077:
				</td>
				<td id="n2077i" colspan="1">
					<input id="n2077" value="<b:write property='entity/n2077'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2077"/>
				</td>
			</tr>
			<tr>
				<td id="n2078" class="form_label"  align="center">
					2078:
				</td>
				<td id="n2078i" colspan="1">
					<input id="n2078" value="<b:write property='entity/n2078'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2078"/>
				</td>
				<td id="n2079" class="form_label"  align="center">
					   2079:
				</td>
				<td id="n2079i" colspan="1">
					<input id="n2079" value="<b:write property='entity/n2079'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2079"/>
				</td>
				<td id="n2080" class="form_label"  align="center">
					2080:
				</td>
				<td id="n2080i" colspan="1">
					<input id="n2080" value="<b:write property='entity/n2080'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2080"/>
				</td>
			</tr>
			<tr>
				<td id="n2081" class="form_label"  align="center">
					   2081:
				</td>
				<td id="n2081i" colspan="1">
					<input id="n2081" value="<b:write property='entity/n2081'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2081"/>
				</td>
				<td id="n2082" class="form_label"  align="center">
					2082:
				</td>
				<td id="n2082i" colspan="1">
					<input id="n2082" value="<b:write property='entity/n2082'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2082"/>
				</td>
				<td id="n2083" class="form_label"  align="center">
					   2083:
				</td>
				<td id="n2083i" colspan="1">
					<input id="n2083" value="<b:write property='entity/n2083'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2083"/>
				</td>
			</tr>
			<tr>
				<td id="n2084" class="form_label"  align="center">
					2084:
				</td>
				<td id="n2084i" colspan="1">
					<input id="n2084" value="<b:write property='entity/n2084'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2084"/>
				</td>
				<td id="n2085" class="form_label"  align="center">
					   2085:
				</td>
				<td id="n2085i" colspan="1">
					<input id="n2085" value="<b:write property='entity/n2085'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2085"/>
				</td>
				<td id="n2086" class="form_label"  align="center">
					2086:
				</td>
				<td id="n2086i" colspan="1">
					<input id="n2086" value="<b:write property='entity/n2086'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2086"/>
				</td>
			</tr>
			<tr>
				<td id="n2087" class="form_label"  align="center">
					   2087:
				</td>
				<td id="n2087i" colspan="1">
					<input id="n2087" value="<b:write property='entity/n2087'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2087"/>
				</td>
				<td id="n2088" class="form_label"  align="center">
					2088:
				</td>
				<td id="n2088i" colspan="1">
					<input id="n2088" value="<b:write property='entity/n2088'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2088"/>
				</td>
				<td id="n2089" class="form_label"  align="center">
					   2089:
				</td>
				<td id="n2089i" colspan="1">
					<input id="n2089" value="<b:write property='entity/n2089'/>" class="nui-textbox" name="tdgglsnjhhddxedit.n2089"/>
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
                        <input style="width: 100%" class="nui-textarea" name="tdgglsnjhhddxedit.remark"  value="<b:write property='entity/remark'/>" />
                    </td>
                </tr>
              	<tr>
              		<td class="form_label"  align="center">
                        发起人:
                    </td>
                    <td colspan="2">
                        <input id="creator" class="nui-textbox" name="tdgglsnjhhddxedit.creator"  value="<b:write property='entity/creator'/>" />
                    </td>
                    <td class="form_label"  align="center">
                        发起日期:
                    </td>
                    <td colspan="2">
                        <input id="datetime" dateFormat="yyyy-MM-dd HH:mm:ss" style="width: 100%" class="nui-textbox" name="tdgglsnjhhddxedit.datetime"  value="<b:write property='entity/datetime'/>" />
                    </td>   
              	</tr>
              	<tr>
                    <td class="form_label"  align="center">
                        新增原因:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea"  style="width: 100%" name="tdgglsnjhhddxedit.reason"  value="<b:write property='entity/reason'/>" />
                    </td>
                </tr>
                
          		<tr id = "spyjId">
                    <td class="form_label"  align="center">
                        审批意见:
                    </td>
                 <td colspan="4">
                        <input id="spyj"  required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width: 70%" name="spyj"/>
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
                            
                   <a class="nui-button" onclick="onBack()" id="btnBack">
                                退回
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
         
        <script type="text/javascript">
            nui.parse();
            $(function() {
            	var form = new nui.Form("overhauldataform");
            	var fields = form.getFields();
            	var param = '<%=param %>';
            	   if(param == 'false'){
            	nui.get("btnSubmit").hide();
	    		nui.get("btnBack").hide();
	    		$('#spyjId').hide();
            }
        		for (var i = 0, l = fields.length; i < l; i++) {
		        	var c = fields[i];
		        	if('spyj' != c.name && 'cyyj' != c.name && 'ccry' != c.name){
		        		if (c.setReadOnly) c.setReadOnly(true);     //只读
		                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
		                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
		        	}
            	}
            	var jdid = nui.get("jd").getValue();
            	var jzid = nui.get("jz").getValue();
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
	                        	$('#n'+i).hide();
	                        	$('#n'+i+"i").hide();
	                        }
							for(var i = parseInt(end)+11;i <= 2089 ;i++){
	                        	$('#n'+i).hide();
	                        	$('#n'+i+"i").hide();
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
	            var jsondata = nui.encode({"processInstId":data.processInstId,"entityType":"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaulEdit.NuclearIslandEdit","workItemId":data.workItemId,"data":data.tdgglsnjhhddxedit,"spyj":data.spyj,"entity":"com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity","ident":"十年计划(核岛)_日常"});
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
	                            nui.alert("已同步更新计划", "系统提示", function(action){
	                                if(action == "ok" || action == "close"){
	                                    onCancel();
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
							});	}
	                        });
            }
		//回退至第一环节
    	function onBack(){
    		var form = new nui.Form("#overhauldataform");;
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
							});	}
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
