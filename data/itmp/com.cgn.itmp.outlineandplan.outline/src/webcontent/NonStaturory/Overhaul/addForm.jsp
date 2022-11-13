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
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/fontstyle.css"/>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />
         <style>
           ul,li{list-style:none;}
             
             ul li{float:left;margin:3px;}
           {overflow:hidden;}
           </style>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="overhauldataform" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tgglgfffddxtm.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
            <input class="nui-hidden" name="tgglgfffddxtm.id"/>
            <input id='orderno' class="nui-hidden" name="tgglgfffddxtm.orderno"/>
            <input id="mapnoid" class="nui-hidden" name="tgglgfffddxtm.mapnoid"/>
                 <input  class="nui-hidden" name="tgglgfffddxtm.processInstId"/>
               <input id="edition" class="nui-hidden" readonly="readonly" name="tgglgfffddxtm.edition"/>
               <input  class="nui-hidden" id="finishFirstActivityId" name="tgglgfffddxtm.finishFirstActivityId"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                	<td class="form_label"  align="center">
                        基地:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox"  dataField="jsonObject" id="jd"
                      name="tgglgfffddxtm.base" onvaluechanged="reloadJz"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id"/>
                    </td>
                     <td class="form_label" align="center">
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" dataField="jsonObject" id="jz" textField="name" 
                      url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext"
                      name="tgglgfffddxtm.crew"  valueField="id"/>
                    </td>
                    <td class="form_label"  align="center">
                        项目类型:
                    </td>
                    <td colspan="1">
                        <input id="protype" class="nui-textbox"  readonly="readonly" name="tgglgfffddxtm.protype"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label" align="center">
                        部件:
                    </td>
                    <td colspan="1">
                        <input id="parts" class="nui-textbox" onvalidation="hasIllegalChar(e,1000,true,true)" required="true" requiredErrorText="请输入部件" name="tgglgfffddxtm.parts"/>
                    </td>
                    <td class="form_label" align="center">
                        项号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  onvalidation="hasIllegalChar(e,256,false,true)" name="tgglgfffddxtm.itemno"/>
                    </td>
                    <td class="form_label" align="center">
                        项目来源:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)" name="tgglgfffddxtm.prosource"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label" align="center">
                        所在系统:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)" name="tgglgfffddxtm.insystem"/>
                    </td>
                    <td class="form_label" align="center">
                        设备名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)" name="tgglgfffddxtm.equipment"/>
                    </td>
                    <td class="form_label" align="center">
                        功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)" name="tgglgfffddxtm.seat"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label" align="center">
                        图号:
                    </td>
                    <td colspan="1">
                        <input id="btnEdit1" class="nui-buttonedit" readonly="readonly" readonly="readonly" onclick="onButtonEdit(this,'1');" name="tgglgfffddxtm.mapno"/>
                    </td>
                    <td class="form_label" align="center">
                        检查内容:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,1000,false,true)" name="tgglgfffddxtm.inspectionscope"/>
                    </td>
                    <td class="form_label" align="center">
                        接近方式:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,1000,false,true)" name="tgglgfffddxtm.approachmode"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label" align="center">
                        检查方法:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,true,true)" required="true" requiredErrorText="请输入检查方法" name="tgglgfffddxtm.method"/>
                    </td>
                    <td class="form_label" align="center">
                        执行单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)" name="tgglgfffddxtm.executionunit"/>
                    </td>
                    <td class="form_label" align="center">
                        检查周期（RSEM):
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)" name="tgglgfffddxtm.rsemcycle"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label" align="center">
                        检查周期(SAP):
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)" name="tgglgfffddxtm.sapcycle"/>
                    </td>
                    <td class="form_label" align="center">
                        维护项目:
                    </td>
                    <td colspan="1">
                        <input id="detailed" class="nui-textbox"  onvalidation="hasIllegalChar(e,500,false,true)"  name="tgglgfffddxtm.detailed"/>
                    </td>
                    <td class="form_label" align="center">
                        专用检查计划:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" required="true" requiredErrorText="请选择专用检查计划" dictTypeId="option" name="tgglgfffddxtm.inspectplan"/>
                    </td>
                </tr>
                </table>
              
              <!-- C1-C60 -->
                <table id="circle" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                 						<tr>	
						<td id="c1" class="form_label" align="center">
	                        C1:
	                    </td>
	                    <td id="c1i" colspan="1">
	                        <div name="tgglgfffddxtm.c1" id="combobox1i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c2" class="form_label" align="center">
	                        C2:
	                    </td>
	                    <td id="c2i" colspan="1">
	                        <div name="tgglgfffddxtm.c2" id="combobox2i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c3" class="form_label" align="center">
	                        C3:
	                    </td>
	                    <td id="c3i" colspan="1">
	                        <div name="tgglgfffddxtm.c3" id="combobox3i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
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
	                        <div name="tgglgfffddxtm.c4" id="combobox4i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c5" class="form_label" align="center">
	                        C5:
	                    </td>
	                    <td id="c5i" colspan="1">
	                        <div name="tgglgfffddxtm.c5" id="combobox5i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c6" class="form_label" align="center">
                        C6:
	                    </td>
	                    <td id="c6i" colspan="1">
	                        <div name="tgglgfffddxtm.c6" id="combobox6i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c7" id="combobox7i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c8" class="form_label" align="center">
                        C8:
	                    </td>
	                    <td id="c8i" colspan="1">
	                        <div name="tgglgfffddxtm.c8" id="combobox8i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c9" class="form_label" align="center">
	                        C9:
	                    </td>
	                    <td id="c9i" colspan="1">
	                        <div name="tgglgfffddxtm.c9" id="combobox9i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c10" id="combobox10i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c11" class="form_label" align="center">
	                        C11:
	                    </td>
	                    <td id="c11i" colspan="1">
	                        <div name="tgglgfffddxtm.c11" id="combobox11i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c12" class="form_label" align="center">
                        C12:
	                    </td>
	                    <td id="c12i" colspan="1">
	                        <div name="tgglgfffddxtm.c12" id="combobox12i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
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
	                       <div name="tgglgfffddxtm.c13" id="combobox13i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c14" class="form_label" align="center">
                        C14:
	                    </td>
	                    <td id="c14i" colspan="1">
	                        <div name="tgglgfffddxtm.c14" id="combobox14i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c15" class="form_label" align="center">
	                        C15:
	                    </td>
	                    <td id="c15i" colspan="1">
	                        <div name="tgglgfffddxtm.c15" id="combobox15i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c16" id="combobox16i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c17" class="form_label" align="center">
	                        C17:
	                    </td>
	                    <td id="c17i" colspan="1">
	                        <div name="tgglgfffddxtm.c17" id="combobox17i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                	<td id="c18" class="form_label" align="center">
	                     C18:
	                    </td>
	                    <td id="c18i" colspan="1">
	                        <div name="tgglgfffddxtm.c18" id="combobox18i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
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
	                        <div name="tgglgfffddxtm.c19" id="combobox19i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c20" class="form_label" align="center">
                       C20:
	                    </td>
	                    <td id="c20i" colspan="1">
	                        <div name="tgglgfffddxtm.c20" id="combobox20i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c21" class="form_label" align="center">
	                       C21:
	                    </td>
	                    <td id="c21i" colspan="1">
	                        <div name="tgglgfffddxtm.c21" id="combobox21i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c22" id="combobox22i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c23" class="form_label" align="center">
	                        C23:
	                    </td>
	                    <td id="c23i" colspan="1">
	                        <div name="tgglgfffddxtm.c23" id="combobox23i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c24" class="form_label" align="center">
                        C24:
	                    </td>
	                    <td id="c24i" colspan="1">
	                        <div name="tgglgfffddxtm.c24" id="combobox24i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
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
	                        <div name="tgglgfffddxtm.c25" id="combobox25i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c26" class="form_label" align="center">
                        C26:
	                    </td>
	                    <td id="c26i" colspan="1">
	                        <div name="tgglgfffddxtm.c26" id="combobox26i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c27" class="form_label" align="center">
	                        C27:
	                    </td>
	                    <td id="c27i" colspan="1">
	                        <div name="tgglgfffddxtm.c27" id="combobox27i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c28" id="combobox28i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c29" class="form_label" align="center">
	                        C29:
	                    </td>
	                    <td id="c29i" colspan="1">
	                        <div name="tgglgfffddxtm.c29" id="combobox29i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c30" class="form_label" align="center">
                        C30:
	                    </td>
	                    <td id="c30i" colspan="1">
	                        <div name="tgglgfffddxtm.c30" id="combobox30i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c31" id="combobox31i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c32" class="form_label" align="center">
                        C32:
	                    </td>
	                    <td id="c32i" colspan="1">
	                        <div name="tgglgfffddxtm.c32" id="combobox32i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c33" class="form_label" align="center">
	                        C33:
	                    </td>
	                    <td id="c33i" colspan="1">
	                        <div name="tgglgfffddxtm.c33" id="combobox33i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                       <div name="tgglgfffddxtm.c34" id="combobox34i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c35" class="form_label" align="center">
	                        C35:
	                    </td>
	                    <td id="c35i" colspan="1">
	                        <div name="tgglgfffddxtm.c35" id="combobox35i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                     <td id="c36" class="form_label" align="center">
                        C36:
	                    </td>
	                    <td id="c36i" colspan="1">
	                        <div name="tgglgfffddxtm.c36" id="combobox36i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c37" id="combobox37i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c38" class="form_label" align="center">
                        C38:
	                    </td>
	                    <td id="c38i" colspan="1">
	                        <div name="tgglgfffddxtm.c38" id="combobox38i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c39" class="form_label" align="center">
	                        C39:
	                    </td>
	                    <td id="c39i" colspan="1">
	                        <div name="tgglgfffddxtm.c39" id="combobox39i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c40" id="combobox40i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c41" class="form_label" align="center">
	                        C41:
	                    </td>
	                    <td id="c41i" colspan="1">
	                        <div name="tgglgfffddxtm.c41" id="combobox41i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c42" class="form_label" align="center">
                        C42:
	                    </td>
	                    <td id="c42i" colspan="1">
	                        <div name="tgglgfffddxtm.c42" id="combobox42i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c43" id="combobox43i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c44" class="form_label" align="center">
                        C44:
	                    </td>
	                    <td id="c44i" colspan="1">
	                        <div name="tgglgfffddxtm.c44" id="combobox44i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c45" class="form_label" align="center">
	                        C45:
	                    </td>
	                    <td id="c45i" colspan="1">
	                        <div name="tgglgfffddxtm.c45" id="combobox45i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c46" id="combobox46i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c47" class="form_label" align="center">
	                        C47:
	                    </td>
	                    <td id="c47i" colspan="1">
	                        <div name="tgglgfffddxtm.c47" id="combobox47i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c48" class="form_label" align="center">
                        C48:
	                    </td>
	                    <td id="c48i" colspan="1">
	                        <div name="tgglgfffddxtm.c48" id="combobox48i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c49" id="combobox49i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c50" class="form_label" align="center">
                        C50:
	                    </td>
	                    <td id="c50i" colspan="1">
	                        <div name="tgglgfffddxtm.c50" id="combobox50i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c51" class="form_label" align="center">
	                        C51:
	                    </td>
	                    <td id="c51i" colspan="1">
	                        <div name="tgglgfffddxtm.c51" id="combobox51i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                       <div name="tgglgfffddxtm.c52" id="combobox52i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c53" class="form_label" align="center">
	                        C53:
	                    </td>
	                    <td id="c53i" colspan="1">
	                        <div name="tgglgfffddxtm.c53" id="combobox53i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c54" class="form_label" align="center">
                        C54:
	                    </td>
	                    <td id="c54i" colspan="1">
	                        <div name="tgglgfffddxtm.c54" id="combobox54i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c55" id="combobox55i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c56" class="form_label" align="center">
                        C56:
	                    </td>
	                    <td id="c56i" colspan="1">
	                        <div name="tgglgfffddxtm.c56" id="combobox56i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c57" class="form_label" align="center">
	                        C57:
	                    </td>
	                    <td id="c57i" colspan="1">
	                        <div name="tgglgfffddxtm.c57" id="combobox57i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
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
	                        <div name="tgglgfffddxtm.c58" id="combobox58i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c59" class="form_label" align="center">
	                        C59:
	                    </td>
	                    <td id="c59i" colspan="1">
	                        <div name="tgglgfffddxtm.c59" id="combobox59i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         
							         <div header="状态" field="name"></div>
							     </div>
							</div>
	                    </td>
	                    <td id="c60" class="form_label" align="center">
                        C60:
	                    </td>
	                    <td id="c60i" colspan="1">
	                        <div name="tgglgfffddxtm.c60" id="combobox60i" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
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
                        <input style="width: 100%" onvalidation="hasIllegalChar(e,4000,false,true)" class="nui-textarea" name="tgglgfffddxtm.remark"/>
                    </td>
                </tr>
              	<tr id="fq" style="display: none">
              		<td class="form_label"  align="center">
                        发起人:
                    </td>
                    <td colspan="2">
                        <input id="creator" onvalidation="hasIllegalChar(e,32,false,true)"  class="nui-textbox" name="tgglgfffddxtm.creator"/>
                    </td>
                    <td class="form_label"  align="center">
                        发起日期:
                    </td>
                    <td colspan="2">
                        <input id="datetime" style="width: 100%"class="nui-textbox" name="tgglgfffddxtm.datetime"/>
                    </td>   
              	</tr>
              	<tr>
                    <td class="form_label"  align="center">
                        新增原因:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,true,true)" required="true" requiredErrorText="请输入新增原因" style="width: 100%" name="tgglgfffddxtm.reason"/>
                    </td>
                </tr>
             <tr id="jhryTr">
				<td class="form_label">校核人员</td>
				 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
<!-- 				 <td colspan="5"> -->
<!--                         <input class="nui-combobox" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<!--                     </td> -->
<!-- 				<td class="form_label" style="width: 40%">  -->
<!-- 					<input  required="true" property="editor" id="jhry"  name="jhry"  class="nui-textboxlist" dataField="list"  requiredErrorText="请输入校核人员"  required="true" style="width:250px"  -->
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
					    <a class="nui-button" id="btnSubmit" onclick="onOk('manualActivity')">
					                                提交
					                            </a>
					        <span style="display:inline-block;width:25px;">
					          </span>
					                            
					                   <a class="nui-button"  id="btnSave" onclick="onOk('')">
					                                保存至草稿
					                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button btn btn-default btn-xs" style="padding: 0px;" onclick="onCancel()">
                                关闭
                            </a>
                        </td>
                    </tr>
                </table>
         </div>
        <script type="text/javascript">
        	$('input[name="tgglgfffddxtm.c1"]').attr('dictTypeId','taishanbase');
            nui.parse();

            var flag = '<%=flag %>';
              var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
            if(isadmin=="true" || flag == "1"){
            	$("#jhryTr").hide();
            	$("#ccryTr").hide();
            	nui.get("btnSave").hide();
				if(flag == "1"){$('#fq').show();}
            } 
            //审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   

            nui.MessageBox.buttonText ={
			    ok: "是",
			    cancel : "否"
			};
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
				var parms = "{baseid:"+jdid+",crewid:"+jzid+"}";
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
				};
					   nui.get("#btnSubmit").setEnabled(false);
	            nui.get("#btnSave").setEnabled(false);
                var data = form.getData(false,true);
                var jhry = nui.get("jhry").getValue();
                var ccry = nui.get("ccry").getValue();
                var jsondata = nui.encode({"processDefName":"com.cgn.itmp.outlineandplan.outline.addGfffdDxzxtm","processInstName":"规范非法定总纲_大修执行条目_新增","processInstDesc":"规范非法定总纲_大修执行条目_新增","parms":data.tgglgfffddxtm,"jhry":jhry,"ccry":ccry,"isadmin":isadmin,"entity":"com.cgn.itmp.outlineandplan.outline.NonStaturoryOverhaul.OverhaulEntity","middleEntity":"com.cgn.itmp.outlineandplan.outline.common.NonStaturory.NonStaturoryEdit","flag":"1"});
                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:jsondata,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
	                	if("1" == text.result){
	                		if("" != finishFirstActivityId){
	                		nui.confirm("条目已新增并提交成功，请确定是否同步变更十年计划","系统提示",
			                    function(action){
			                        if(action=="ok"){
			                        	var detailed = nui.get("detailed").getValue();
				                		var json = {};
				                		json.fieldName = "detailed";
				                		json.fieldValue = detailed;
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
													var url = '/itmp/tenyearplan/NuclearIsland/Overhaul/index.jsp?detailed='+encodeURI(JSON.parse(JSON.stringify(detailed)),"utf-8");
										    	 if(null != data &&  data.record!=null){
												     addTab(url);
												     CloseWindow("saveFailed");
										    	 }else{
										    	 	nui.confirm("无对应十年计划条目，请选中条目后新增","系统提示",
								                    function(action){
								                        if(action=="ok"){
								                        	addTab(url);
								                        }
								                        CloseWindow("saveFailed");
							                        });
										    	 }
									   		}
										}); 
			                        }else{
			                        	CloseWindow("saveFailed");
			                        }
	                        });
	                        }else{
			                        nui.alert("保存成功，请在我的草稿中尽快处理该流程，否则影响数据操作！", "提交提示", function(action){
			                        if(action == "ok" || action == "close"){
			                            CloseWindow("saveSuccess");
			                        }
			                    });
			                        }
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


function addTab(url) {
			     var tabs = parent.parent.nui.get("mainTabs");
			     var tab = { title: "十年计划大修执行条目", url: url, showCloseButton: true };
			     tab = tabs.addTab(tab);            
			     tabs.activeTab(tab);
			}
                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        var json = infos.record;
                        nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                        nui.getbyName("pageType").setValue(infos.pageType);
                        nui.get('protype').setValue(infos.protype);
                        nui.get('parts').setValue(infos.parts);
                        nui.get('edition').setValue(json.tgglgfffddxtm.edition);
                        if (infos.pageType == "view") {
                            var form = new nui.Form("#overhauldataform");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            nui.get('btnEdit1').setText(json.tgglgfffddxtm.mapno);
                            nui.get('datetime').setValue(nui.formatDate ( json.tgglgfffddxtm.datetime , "yyyy-MM-dd HH:mm:ss" ));
							var fields = form.getFields();                
				            for (var i = 0, l = fields.length; i < l; i++) {
				                var c = fields[i];
				                if (c.setReadOnly) c.setEnabled(false);     //只读
				                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
				                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
				            }
				            $('#btn').hide();
                        }else{
                        	nui.get('orderno').setValue(json.tgglgfffddxtm.orderno);
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
