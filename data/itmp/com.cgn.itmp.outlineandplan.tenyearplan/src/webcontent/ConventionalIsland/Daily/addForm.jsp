<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%


SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String dataTime = df.format(new Date());

IUserObject cu = CommonUtil.getUserObject();
String userid = cu.getUserId();
String username = cu.getUserRealName();
String flag = request.getParameter("flag");
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
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />   
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="overhauldataform" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tdgglsnjhcgdrc.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
            <input class="nui-hidden" name="tdgglsnjhcgdrc.id"/>
            <input id='orderno' class="nui-hidden" name="tdgglsnjhcgdrc.orderno"/>
            <input  class="nui-hidden" name="tdgglsnjhcgdrc.processInstId"/>
               <input id="edition" class="nui-hidden" readonly="readonly" name="tdgglsnjhcgdrc.edition"/>
               <input  class="nui-hidden" id="finishFirstActivityId" name="tdgglsnjhcgdrc.finishFirstActivityId"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                	<td class="form_label"  align="center">
                        基地:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox"  dataField="jsonObject" id="jd"
                      name="tdgglsnjhcgdrc.base" onvaluechanged="reloadJz"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id"/>
                    </td>
                     <td class="form_label" align="center">
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" dataField="jsonObject" id="jz" textField="name" 
                      url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext"
                      name="tdgglsnjhcgdrc.crew"  valueField="id"/>
                    </td>
                    <td class="form_label"  align="center">
                        项目类型:
                    </td>
                    <td colspan="1">
                        <input id="protype" readonly="readonly" class="nui-textbox"  required="true"  requiredErrorText="请输入类型" name="tdgglsnjhcgdrc.protype"/>
                    </td>
                </tr>
                
                
                <tr>
                    <td class="form_label"  align="center">
                       检查分类:
                    </td>
                    <td colspan="1">
                        <input id="parts" class="nui-textbox"  onvalidation="hasIllegalChar(e,1000,true,true)" required="true" requiredErrorText="请输入检查分类" name="tdgglsnjhcgdrc.parts"/>
                    </td>
                    <td class="form_label"  align="center">
                        任务清单:
                    </td>
                    <td colspan="1">
                        <input id="mintenanceproject" class="nui-textbox"   onvalidation="hasIllegalChar(e,100,false,true)" name="tdgglsnjhcgdrc.mintenanceproject"/>
                    </td> 
                     
                    <td class="form_label"  align="center">
                      大纲工单:
                    </td>
                    <td colspan="1">
                        <input id="workorder" class="nui-textbox"  onvalidation="hasIllegalChar(e,100,false,true)" name="tdgglsnjhcgdrc.workorder"/>
                    </td>
                </tr>
                
                <tr>
 					<td class="form_label"  align="center">
                       维护计划:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  onvalidation="hasIllegalChar(e,100,false,true)" name="tdgglsnjhcgdrc.mintenanceplan"/>
                    </td>
                      <td class="form_label"  align="center">
                        维护项目:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="tdgglsnjhcgdrc.detailed"/>
                    </td>  
                     <td class="form_label"  align="center">
                        周期:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)" name="tdgglsnjhcgdrc.period"/>
                    </td>
                </tr>
                
                <tr>
                	<td class="form_label"  align="center">
                         设备名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" name="tdgglsnjhcgdrc.equipment"/>
                    </td>
                    <td class="form_label"  align="center">
                       专用检查计划:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" required="true" requiredErrorText="请选择专用检查计划" dictTypeId="option" name="tdgglsnjhcgdrc.inspectplan"/>
                    </td>
                    <td class="form_label"  align="center">
                        设备编号/功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" name="tdgglsnjhcgdrc.equipmentno"/>
                    </td>
                </tr>
                <tr>
                <td class="form_label"  >
                        检查内容:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,false,true)" required="true" requiredErrorText="请输入检查内容" style="width: 100%" name="tdgglsnjhcgdrc.inspectionscope"/>
                    </td>
                </tr>
                
                
              </table>
             
              <!-- 1991-2089 -->
               <table id="nd" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
             	<tr>
					<td id="n1991" class="form_label"  align="center">
						   1991:
					</td>
					<td id="n1991ii" colspan="1">
						<div name="tdgglsnjhcgdrc.n1991" id="combobox1991i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="n1992" class="form_label"  align="center">
						1992:
					</td>
					<td id="n1992ii" colspan="1">
						<div name="tdgglsnjhcgdrc.n1992" id="combobox1992i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="n1993" class="form_label"  align="center">
					   1993:
					</td>
					<td id="n1993ii" colspan="1">
						<div name="tdgglsnjhcgdrc.n1993" id="combobox1993i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
             <tr>
				
				<td id="n1994" class="form_label"  align="center">
					1994:
				</td>
				<td id="n1994ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n1994" id="combobox1994i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n1995" class="form_label"  align="center">
					   1995:
				</td>
				<td id="n1995ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n1995" id="combobox1995i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n1996" class="form_label"  align="center">
					1996:
				</td>
				<td id="n1996ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n1996" id="combobox1996i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n1997" class="form_label"  align="center">
					   1997:
				</td>
				<td id="n1997ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n1997" id="combobox1997i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n1998" class="form_label"  align="center">
					1998:
				</td>
				<td id="n1998ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n1998" id="combobox1998i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n1999" class="form_label"  align="center">
					   1999:
				</td>
				<td id="n1999ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n1999" id="combobox1999i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2000" class="form_label"  align="center">
					2000:
				</td>
				<td id="n2000ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2000" id="combobox2000i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2001" class="form_label"  align="center">
					   2001:
				</td>
				<td id="n2001ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2001" id="combobox2001i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2002" class="form_label"  align="center">
					2002:
				</td>
				<td id="n2002ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2002" id="combobox2002i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2003" class="form_label"  align="center">
					   2003:
				</td>
				<td id="n2003ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2003" id="combobox2003i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2004" class="form_label"  align="center">
					2004:
				</td>
				<td id="n2004ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2004" id="combobox2004i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2005" class="form_label"  align="center">
					   2005:
				</td>
				<td id="n2005ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2005" id="combobox2005i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2006" class="form_label"  align="center">
					2006:
				</td>
				<td id="n2006ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2006" id="combobox2006i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2007" class="form_label"  align="center">
					   2007:
				</td>
				<td id="n2007ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2007" id="combobox2007i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2008" class="form_label"  align="center">
					2008:
				</td>
				<td id="n2008ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2008" id="combobox2008i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2009" class="form_label"  align="center">
					   2009:
				</td>
				<td id="n2009ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2009" id="combobox2009i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2010" class="form_label"  align="center">
					2010:
				</td>
				<td id="n2010ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2010" id="combobox2010i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2011" class="form_label"  align="center">
					   2011:
				</td>
				<td id="n2011ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2011" id="combobox2011i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2012" class="form_label"  align="center">
					2012:
				</td>
				<td id="n2012ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2012" id="combobox2012i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2013" class="form_label"  align="center">
					   2013:
				</td>
				<td id="n2013ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2013" id="combobox2013i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2014" class="form_label"  align="center">
					2014:
				</td>
				<td id="n2014ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2014" id="combobox2014i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2015" class="form_label"  align="center">
					   2015:
				</td>
				<td id="n2015ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2015" id="combobox2015i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2016" class="form_label"  align="center">
					2016:
				</td>
				<td id="n2016ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2016" id="combobox2016i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2017" class="form_label"  align="center">
					   2017:
				</td>
				<td id="n2017ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2017" id="combobox2017i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2018" class="form_label"  align="center">
					2018:
				</td>
				<td id="n2018ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2018" id="combobox2018i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2019" class="form_label"  align="center">
					   2019:
				</td>
				<td id="n2019ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2019" id="combobox2019i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2020" class="form_label"  align="center">
					2020:
				</td>
				<td id="n2020ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2020" id="combobox2020i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2021" class="form_label"  align="center">
					   2021:
				</td>
				<td id="n2021ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2021" id="combobox2021i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2022" class="form_label"  align="center">
					2022:
				</td>
				<td id="n2022ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2022" id="combobox2022i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2023" class="form_label"  align="center">
					   2023:
				</td>
				<td id="n2023ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2023" id="combobox2023i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2024" class="form_label"  align="center">
					2024:
				</td>
				<td id="n2024ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2024" id="combobox2024i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2025" class="form_label"  align="center">
					   2025:
				</td>
				<td id="n2025ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2025" id="combobox2025i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2026" class="form_label"  align="center">
					2026:
				</td>
				<td id="n2026ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2026" id="combobox2026i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2027" class="form_label"  align="center">
					   2027:
				</td>
				<td id="n2027ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2027" id="combobox2027i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2028" class="form_label"  align="center">
					2028:
				</td>
				<td id="n2028ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2028" id="combobox2028i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2029" class="form_label"  align="center">
					   2029:
				</td>
				<td id="n2029ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2029" id="combobox2029i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2030" class="form_label"  align="center">
					2030:
				</td>
				<td id="n2030ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2030" id="combobox2030i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2031" class="form_label"  align="center">
					   2031:
				</td>
				<td id="n2031ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2031" id="combobox2031i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2032" class="form_label"  align="center">
					2032:
				</td>
				<td id="n2032ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2032" id="combobox2032i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2033" class="form_label"  align="center">
					   2033:
				</td>
				<td id="n2033ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2033" id="combobox2033i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2034" class="form_label"  align="center">
					2034:
				</td>
				<td id="n2034ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2034" id="combobox2034i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2035" class="form_label"  align="center">
					   2035:
				</td>
				<td id="n2035ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2035" id="combobox2035i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2036" class="form_label"  align="center">
					2036:
				</td>
				<td id="n2036ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2036" id="combobox2036i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2037" class="form_label"  align="center">
					   2037:
				</td>
				<td id="n2037ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2037" id="combobox2037i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2038" class="form_label"  align="center">
					2038:
				</td>
				<td id="n2038ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2038" id="combobox2038i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2039" class="form_label"  align="center">
					   2039:
				</td>
				<td id="n2039ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2039" id="combobox2039i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2040" class="form_label"  align="center">
					2040:
				</td>
				<td id="n2040ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2040" id="combobox2040i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2041" class="form_label"  align="center">
					   2041:
				</td>
				<td id="n2041ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2041" id="combobox2041i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2042" class="form_label"  align="center">
					2042:
				</td>
				<td id="n2042ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2042" id="combobox2042i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2043" class="form_label"  align="center">
					   2043:
				</td>
				<td id="n2043ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2043" id="combobox2043i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2044" class="form_label"  align="center">
					2044:
				</td>
				<td id="n2044ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2044" id="combobox2044i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2045" class="form_label"  align="center">
					   2045:
				</td>
				<td id="n2045ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2045" id="combobox2045i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2046" class="form_label"  align="center">
					2046:
				</td>
				<td id="n2046ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2046" id="combobox2046i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2047" class="form_label"  align="center">
					   2047:
				</td>
				<td id="n2047ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2047" id="combobox2047i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2048" class="form_label"  align="center">
					2048:
				</td>
				<td id="n2048ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2048" id="combobox2048i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2049" class="form_label"  align="center">
					   2049:
				</td>
				<td id="n2049ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2049" id="combobox2049i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2050" class="form_label"  align="center">
					2050:
				</td>
				<td id="n2050ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2050" id="combobox2050i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2051" class="form_label"  align="center">
					   2051:
				</td>
				<td id="n2051ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2051" id="combobox2051i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2052" class="form_label"  align="center">
					2052:
				</td>
				<td id="n2052ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2052" id="combobox2052i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2053" class="form_label"  align="center">
					   2053:
				</td>
				<td id="n2053ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2053" id="combobox2053i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2054" class="form_label"  align="center">
					2054:
				</td>
				<td id="n2054ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2054" id="combobox2054i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2055" class="form_label"  align="center">
					   2055:
				</td>
				<td id="n2055ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2055" id="combobox2055i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2056" class="form_label"  align="center">
					2056:
				</td>
				<td id="n2056ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2056" id="combobox2056i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2057" class="form_label"  align="center">
					   2057:
				</td>
				<td id="n2057ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2057" id="combobox2057i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2058" class="form_label"  align="center">
					2058:
				</td>
				<td id="n2058ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2058" id="combobox2058i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2059" class="form_label"  align="center">
					   2059:
				</td>
				<td id="n2059ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2059" id="combobox2059i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2060" class="form_label"  align="center">
					2060:
				</td>
				<td id="n2060ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2060" id="combobox2060i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2061" class="form_label"  align="center">
					   2061:
				</td>
				<td id="n2061ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2061" id="combobox2061i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2062" class="form_label"  align="center">
					2062:
				</td>
				<td id="n2062ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2062" id="combobox2062i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2063" class="form_label"  align="center">
					   2063:
				</td>
				<td id="n2063ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2063" id="combobox2063i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2064" class="form_label"  align="center">
					2064:
				</td>
				<td id="n2064ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2064" id="combobox2064i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2065" class="form_label"  align="center">
					   2065:
				</td>
				<td id="n2065ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2065" id="combobox2065i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2066" class="form_label"  align="center">
					2066:
				</td>
				<td id="n2066ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2066" id="combobox2066i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2067" class="form_label"  align="center">
					   2067:
				</td>
				<td id="n2067ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2067" id="combobox2067i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2068" class="form_label"  align="center">
					2068:
				</td>
				<td id="n2068ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2068" id="combobox2068i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2069" class="form_label"  align="center">
					   2069:
				</td>
				<td id="n2069ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2069" id="combobox2069i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2070" class="form_label"  align="center">
					2070:
				</td>
				<td id="n2070ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2070" id="combobox2070i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2071" class="form_label"  align="center">
					   2071:
				</td>
				<td id="n2071ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2071" id="combobox2071i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2072" class="form_label"  align="center">
					2072:
				</td>
				<td id="n2072ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2072" id="combobox2072i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2073" class="form_label"  align="center">
					   2073:
				</td>
				<td id="n2073ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2073" id="combobox2073i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2074" class="form_label"  align="center">
					2074:
				</td>
				<td id="n2074ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2074" id="combobox2074i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2075" class="form_label"  align="center">
					   2075:
				</td>
				<td id="n2075ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2075" id="combobox2075i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2076" class="form_label"  align="center">
					2076:
				</td>
				<td id="n2076ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2076" id="combobox2076i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2077" class="form_label"  align="center">
					   2077:
				</td>
				<td id="n2077ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2077" id="combobox2077i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2078" class="form_label"  align="center">
					2078:
				</td>
				<td id="n2078ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2078" id="combobox2078i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2079" class="form_label"  align="center">
					   2079:
				</td>
				<td id="n2079ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2079" id="combobox2079i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2080" class="form_label"  align="center">
					2080:
				</td>
				<td id="n2080ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2080" id="combobox2080i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2081" class="form_label"  align="center">
					   2081:
				</td>
				<td id="n2081ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2081" id="combobox2081i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2082" class="form_label"  align="center">
					2082:
				</td>
				<td id="n2082ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2082" id="combobox2082i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2083" class="form_label"  align="center">
					   2083:
				</td>
				<td id="n2083ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2083" id="combobox2083i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2084" class="form_label"  align="center">
					2084:
				</td>
				<td id="n2084ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2084" id="combobox2084i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2085" class="form_label"  align="center">
					   2085:
				</td>
				<td id="n2085ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2085" id="combobox2085i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2086" class="form_label"  align="center">
					2086:
				</td>
				<td id="n2086ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2086" id="combobox2086i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2087" class="form_label"  align="center">
					   2087:
				</td>
				<td id="n2087ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2087" id="combobox2087i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2088" class="form_label"  align="center">
					2088:
				</td>
				<td id="n2088ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2088" id="combobox2088i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2089" class="form_label"  align="center">
					   2089:
				</td>
				<td id="n2089ii" colspan="1">
					<div name="tdgglsnjhcgdrc.n2089" id="combobox2089i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
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
                        <input style="width: 100%" onvalidation="hasIllegalChar(e,4000,false,true)" class="nui-textarea" name="tdgglsnjhcgdrc.remark"/>
                    </td>
                </tr>
              	<tr id="fq" style="display: none">
              		<td class="form_label"  align="center">
                        发起人:
                    </td>
                    <td colspan="2">
                        <input id="creator" class="nui-textbox" name="tdgglsnjhcgdrc.creator"/>
                    </td>
                    <td class="form_label"  align="center">
                        发起日期:
                    </td>
                    <td colspan="2">
                        <input id="datetime" style="width: 100%" class="nui-textbox" name="tdgglsnjhcgdrc.datetime"/>
                    </td>   
              	</tr>
              	<tr>
                    <td class="form_label"  align="center">
                        新增原因:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,true,true)" required="true" requiredErrorText="请输入新增原因" style="width: 100%" name="tdgglsnjhcgdrc.reason"/>
                    </td>
                </tr>
                <tr id="jhryTr">
				<td class="form_label">校核人员</td>
				 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
<!-- 				 <td colspan="5"> -->
<!--                         <input class="nui-combobox" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"id="jhry"  name="jhry"  textField="empname" style="width: 100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<!--                     </td> -->
<!-- 				<td class="form_label" style="width: 40%"> -->
<!-- 					<input  required="true" property="editor" id="jhry"  name="jhry"  requiredErrorText="请输入校核人员"  class="nui-textboxlist" dataField="list" required="true" style="width:250px"  -->
<!-- 					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  /> -->
<!-- 				</td> -->
			
			</tr>
			     <tr id="ccryTr">
				<td class="form_label">抄送人员</td>
				<td colspan="5">
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list"  style="width: 100%"
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
	
			</tr>
              </table>
        </div>
        <div id="btn" class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
					    <a class="nui-button"  id="btnSubmit" onclick="onOk('manualActivity')">
					                                提交
					                            </a>
					        <span style="display:inline-block;width:25px;">
					          </span>
					                            
					                   <a class="nui-button" id="btnSave" onclick="onOk('')">
					                                保存至草稿
					                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button btn btn-default btn-xs" onclick="onCancel()">
                                <i class="fa fa-times"></i>关闭
                            </a>
                        </td>
                    </tr>
                </table>
         </div>
        <script type="text/javascript">
        	$('input[name="tdgglsnjhcgdrc.c1"]').attr('dictTypeId','taishanbase');
            nui.parse();

            //审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   
              var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
			   var flag = '<%=flag %>';

            if(isadmin=="true" || flag == "1"){
            	$("#jhryTr").hide();
            	$("#ccryTr").hide();
            	nui.get("btnSave").hide();
				if(flag == "1"){
            	$('#fq').show();
            }
            } 
            

            $('#parts').attr('title',"若需生成新的树节点，可修改本字段，否则请勿修改");

           
            //基地机组赋值
        	var jzid = parent.nui.get("jzid").getValue();
        	var jdid = parent.nui.get("jdid").getValue();
        	nui.get("jd").setValue(jdid);
        	nui.get('jz').setAjaxType("POST");
        	nui.get('jz').load( "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid);
        	nui.get("jz").setValue(jzid);
        	//只读
        	labelModel("jz");
        	labelModel("jd");
        	labelModel("creator");
        	labelModel("datetime");
        	
            $(function() {
				nui.get("creator").setValue('<%=username %>');
				var parms = "{baseid:"+jdid+",crewid:"+jzid+",type:n}";
				var urlStr = "com.cgn.itmp.basecommon.Common.getBaseCircle.biz.ext";
				$.ajax({
                    url:urlStr,
                    type:'POST',
                    data:parms,
                    cache:false,
                    contentType:'text/json',
                    success:function(data){
                    	var returnJson = nui.decode(data);
                    	if(returnJson.data.sucess){
                    		var start = returnJson.data.start;
	                        var end = returnJson.data.end;
	                        for(var i = 1991;i < parseInt(start);i++){
	                        	$('#n'+i).hide();
	                        	$('#n'+i+"ii").hide();
	                        }
							for(var i = parseInt(end)+8;i <= 2089 ;i++){
	                        	$('#n'+i).hide();
	                        	$('#n'+i+"ii").hide();
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
            
            
             function reloadJz(e) {
             		var jdid = jdCombox.getValue();
			       jzCombox.setValue("");
				   var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
				   jzCombox.setUrl(url);   
		        }
            function saveData(finishFirstActivityId){
               nui.get("datetime").setValue(nui.formatDate (new Date() , "yyyy-MM-dd HH:mm:ss" ));
                var form = new nui.Form("#overhauldataform");
                nui.get('finishFirstActivityId').setValue(finishFirstActivityId);
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.addInfoMationData.biz.ext";
				if(finishFirstActivityId != ""){
					form.validate();
					if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
				}
					   nui.get("#btnSubmit").setEnabled(false);
	            nui.get("#btnSave").setEnabled(false);
                var data = form.getData(false,true);
                var jhry = nui.get("jhry").getValue();
                var ccry = nui.get("ccry").getValue();
                var jsondata = nui.encode({"processDefName":"com.cgn.itmp.outlineandplan.tenyearplan.addSnjhCgdRczxtm","processInstName":"十年计划(常规岛及BOP)_日常执行条目_新增","processInstDesc":"十年计划(常规岛及BOP)_日常_新增","parms":data.tdgglsnjhcgdrc,"jhry":jhry,"ccry":ccry,"isadmin":isadmin,"entity":"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity","middleEntity":"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit","flag":"1"});
                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:jsondata,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
	                	if("1" == text.result){
	                	 var message = "提交成功";
                	   if(finishFirstActivityId == ''){
			            	message = "保存成功，请在我的草稿中尽快处理该流程，否则影响数据操作！";
			            }
						            
                    nui.alert(message, "提交提示", function(action){
                        if(action == "ok" || action == "close"){
                            CloseWindow("saveSuccess");
                        }
                    });
	                	}else{
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    CloseWindow("saveFailed");
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(true);
									nui.get("#btnSave").setEnabled(true);
							});
						 }
	                   
                        });
                    }

                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
                        nui.get('protype').setValue(infos.protype);
                        nui.get('parts').setValue(infos.parts);
                        nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                        var json = infos.record;
                        nui.get('edition').setValue(json.tdgglsnjhcgdrc.edition);
                        if (infos.pageType == "view") {
                            var form = new nui.Form("#overhauldataform");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            nui.get('datetime').setValue(nui.formatDate ( json.tdgglsnjhcgdrc.datetime , "yyyy-MM-dd HH:mm:ss" ));
							var fields = form.getFields();                
				            for (var i = 0, l = fields.length; i < l; i++) {
				                var c = fields[i];
				                if (c.setReadOnly) c.setEnabled(false);     //只读
				                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
				                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
				            }
				            $('#btn').hide();
                        }else{
                        	nui.get('orderno').setValue(json.tdgglsnjhcgdrc.orderno);
                        }
                    }

                    //关闭窗口
                    function CloseWindow(action) {
                        if (action == "close" && form.isChanged()) {
                            if (confirm("数据被修改了，是否先保存至草稿？")) {
                                saveData('');
                            }
                        }
                        if (window.CloseOwnerWindow)
                        return window.CloseOwnerWindow(action);
                        else window.close();
                    }

                    //确定保存或更新
                    function onOk(finishFirstActivityId) {
                        saveData(finishFirstActivityId);
                    }

                    //取消
                    function onCancel() {
                        CloseWindow("cancel");
                    }
                    function onCloseClick(e) {
					    var obj = e.sender;
					    obj.setText("");
					    obj.setValue("");
					}
					function labelModel(column) {
		                var c = nui.get(column);   
		                if (c.setReadOnly) c.setReadOnly(true);     //只读
		                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
		                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
		
		       	 	}
                </script>
            </body>
        </html>
