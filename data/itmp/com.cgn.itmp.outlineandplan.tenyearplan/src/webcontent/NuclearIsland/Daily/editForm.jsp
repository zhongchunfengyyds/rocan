<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%


SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String dataTime = df.format(new Date());

IUserObject cu = CommonUtil.getUserObject();
String userid = cu.getUserId();
String username = cu.getUserRealName();

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
            大修执行条目录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript">
        </script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="overhauldataform" style="padding-top:5px;">
            <!-- hidden域 -->
            <input id="id" class="nui-hidden" name="preData.id"/>
            <input id="finishFirstActivityId" class="nui-hidden" name="finishFirstActivityId"/>
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
                        <input class="nui-combobox"  dataField="jsonObject" id="jdid"
                      name="preData.base" onvaluechanged="reloadJz"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id"/>
                    </td>
                    <td>
                    </td>
                     <td class="form_label" align="center" >
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" dataField="jsonObject" id="jzid" textField="name" 
                      url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext"
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
                        <input id="protype" readonly="readonly" class="nui-dictcombobox"  required="true" dictTypeId="protype" requiredErrorText="请选择类型" name="preData.protype"/>
                    </td>
                    <td>
                    </td>
         			<td class="form_label"  align="center">
                        设备/系统:
                    </td>
                    <td>
                        <input class="nui-textbox" name="preData.parts"/>
                    </td>
                    <td>
                    </td>
         		</tr>
         		<tr>
         		<td class="form_label"  align="center">
                        项号:
                    </td>
                    <td colspan="1">
                        <input id="itemno" class="nui-textbox" name="preData.itemno"/>
                    </td>
                    <td colspan="1">
                        <input  class="nui-textbox" onvalidation="hasIllegalChar(e,256,false,true)" name="nextData.itemno"/>
                    </td>
                    <td class="form_label"  align="center">
                      任务清单:
                    </td>
                    <td colspan="1">
                        <input id="mintenanceproject" class="nui-textbox" name="preData.mintenanceproject"/>
                    </td>
                    <td colspan="1">
                        <input  class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" name="nextData.mintenanceproject"/>
                    </td>
                    
         		</tr>
         		
         		<tr>
         		<td class="form_label"  align="center">
                       大纲工单:
                    </td>
                    <td colspan="1">
                        <input id="workorder" class="nui-textbox" name="preData.workorder"/>
                    </td>
                    <td colspan="1">
                        <input  class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" name="nextData.workorder"/>
                    </td>
                    <td class="form_label"  align="center">
                       维护计划:
                    </td>
                    <td colspan="1" name="preData.mintenanceplan">
                        <input id="mintenanceplan" class="nui-textbox" name="preData.mintenanceplan"/>
                    </td>   
                    <td colspan="1">
                        <input id="mintenanceplan" class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" name="nextData.mintenanceplan"/>
                    </td> 
         		</tr>
         		
         		<tr>
         			<td class="form_label"  align="center">
                        维护项目:
                    </td>
                    <td colspan="1" name="preData.detailed">
                        <input id="detailed" class="nui-textbox" name="preData.detailed"/>
                    </td>   
                    <td colspan="1">
                        <input id="detailed" class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)" name="nextData.detailed"/>
                    </td> 
                    <td class="form_label"  align="center">
                          检查周期:
                    </td>
                    <td colspan="1">
                        <input id="period" class="nui-textbox" name="preData.period"/>
                    </td>
                    <td colspan="1">
                        <input id="period" class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)" name="nextData.period"/>
                    </td>
         		</tr>
         		
         		<tr>
                    <td class="form_label"  align="center">
                         功能位置:
                    </td>
                    <td colspan="1" name="preData.site">
                        <input id="site" class="nui-textbox" name="preData.site"/>
                    </td>   
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)" name="nextData.site"/>
                    </td> 
                    <td class="form_label"  align="center">
                    </td>
                    <td colspan="1">
                        
                    </td>   
                    <td colspan="1">
                       
                    </td> 
         		</tr>
         		<tr>
         			<td class="form_label"  >
                        检查项目描述:
                    </td>
                    <td colspan="2">
                        <input id="inspectionscope" class="nui-textarea" style="width: 100%" name="preData.inspectionscope"/>
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" style="width: 100%" onvalidation="hasIllegalChar(e,4000,false,true)" name="nextData.inspectionscope"/>
                    </td>
         		</tr>
         		         		
          </table>
          
           <table id="nd" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
             	<tr>
					<td id="n1991" class="form_label"  align="center">
						   1991:
					</td>
					<td id="n1991i" colspan="1">
						<input id="n1991" class="nui-textbox" name="preData.n1991"/>
					</td>
					<td id="n1991ii" colspan="1">
						<div name="nextData.n1991" id="combobox1991i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
					<td id="n1992i" colspan="1">
						<input id="n1992" class="nui-textbox" name="preData.n1992"/>
					</td>
					<td id="n1992ii" colspan="1">
						<div name="nextData.n1992" id="combobox1992i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
             <tr>
				<td id="n1993" class="form_label"  align="center">
					   1993:
				</td>
				<td id="n1993i" colspan="1">
					<input id="n1993" class="nui-textbox" name="preData.n1993"/>
				</td>
				<td id="n1993ii" colspan="1">
					<div name="nextData.n1993" id="combobox1993i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n1994" class="form_label"  align="center">
					1994:
				</td>
				<td id="n1994i" colspan="1">
					<input id="n1994" class="nui-textbox" name="preData.n1994"/>
				</td>
				<td id="n1994ii" colspan="1">
					<div name="nextData.n1994" id="combobox1994i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n1995" class="form_label"  align="center">
					   1995:
				</td>
				<td id="n1995i" colspan="1">
					<input id="n1995" class="nui-textbox" name="preData.n1995"/>
				</td>
				<td id="n1995ii" colspan="1">
					<div name="nextData.n1995" id="combobox1995i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n1996i" colspan="1">
					<input id="n1996" class="nui-textbox" name="preData.n1996"/>
				</td>
				<td id="n1996ii" colspan="1">
					<div name="nextData.n1996" id="combobox1996i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n1997i" colspan="1">
					<input id="n1997" class="nui-textbox" name="preData.n1997"/>
				</td>
				<td id="n1997ii" colspan="1">
					<div name="nextData.n1997" id="combobox1997i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n1998i" colspan="1">
					<input id="n1998" class="nui-textbox" name="preData.n1998"/>
				</td>
				<td id="n1998ii" colspan="1">
					<div name="nextData.n1998" id="combobox1998i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n1999" class="form_label"  align="center">
					   1999:
				</td>
				<td id="n1999i" colspan="1">
					<input id="n1999" class="nui-textbox" name="preData.n1999"/>
				</td>
				<td id="n1999ii" colspan="1">
					<div name="nextData.n1999" id="combobox1999i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2000" class="form_label"  align="center">
					2000:
				</td>
				<td id="n2000i" colspan="1">
					<input id="n2000" class="nui-textbox" name="preData.n2000"/>
				</td>
				<td id="n2000ii" colspan="1">
					<div name="nextData.n2000" id="combobox2000i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2001" class="form_label"  align="center">
					   2001:
				</td>
				<td id="n2001i" colspan="1">
					<input id="n2001" class="nui-textbox" name="preData.n2001"/>
				</td>
				<td id="n2001ii" colspan="1">
					<div name="nextData.n2001" id="combobox2001i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2002i" colspan="1">
					<input id="n2002" class="nui-textbox" name="preData.n2002"/>
				</td>
				<td id="n2002ii" colspan="1">
					<div name="nextData.n2002" id="combobox2002i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2003i" colspan="1">
					<input id="n2003" class="nui-textbox" name="preData.n2003"/>
				</td>
				<td id="n2003ii" colspan="1">
					<div name="nextData.n2003" id="combobox2003i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2004i" colspan="1">
					<input id="n2004" class="nui-textbox" name="preData.n2004"/>
				</td>
				<td id="n2004ii" colspan="1">
					<div name="nextData.n2004" id="combobox2004i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2005" class="form_label"  align="center">
					   2005:
				</td>
				<td id="n2005i" colspan="1">
					<input id="n2005" class="nui-textbox" name="preData.n2005"/>
				</td>
				<td id="n2005ii" colspan="1">
					<div name="nextData.n2005" id="combobox2005i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2006" class="form_label"  align="center">
					2006:
				</td>
				<td id="n2006i" colspan="1">
					<input id="n2006" class="nui-textbox" name="preData.n2006"/>
				</td>
				<td id="n2006ii" colspan="1">
					<div name="nextData.n2006" id="combobox2006i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2007" class="form_label"  align="center">
					   2007:
				</td>
				<td id="n2007i" colspan="1">
					<input id="n2007" class="nui-textbox" name="preData.n2007"/>
				</td>
				<td id="n2007ii" colspan="1">
					<div name="nextData.n2007" id="combobox2007i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2008i" colspan="1">
					<input id="n2008" class="nui-textbox" name="preData.n2008"/>
				</td>
				<td id="n2008ii" colspan="1">
					<div name="nextData.n2008" id="combobox2008i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2009i" colspan="1">
					<input id="n2009" class="nui-textbox" name="preData.n2009"/>
				</td>
				<td id="n2009ii" colspan="1">
					<div name="nextData.n2009" id="combobox2009i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2010i" colspan="1">
					<input id="n2010" class="nui-textbox" name="preData.n2010"/>
				</td>
				<td id="n2010ii" colspan="1">
					<div name="nextData.n2010" id="combobox2010i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2011" class="form_label"  align="center">
					   2011:
				</td>
				<td id="n2011i" colspan="1">
					<input id="n2011" class="nui-textbox" name="preData.n2011"/>
				</td>
				<td id="n2011ii" colspan="1">
					<div name="nextData.n2011" id="combobox2011i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2012" class="form_label"  align="center">
					2012:
				</td>
				<td id="n2012i" colspan="1">
					<input id="n2012" class="nui-textbox" name="preData.n2012"/>
				</td>
				<td id="n2012ii" colspan="1">
					<div name="nextData.n2012" id="combobox2012i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2013" class="form_label"  align="center">
					   2013:
				</td>
				<td id="n2013i" colspan="1">
					<input id="n2013" class="nui-textbox" name="preData.n2013"/>
				</td>
				<td id="n2013ii" colspan="1">
					<div name="nextData.n2013" id="combobox2013i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2014i" colspan="1">
					<input id="n2014" class="nui-textbox" name="preData.n2014"/>
				</td>
				<td id="n2014ii" colspan="1">
					<div name="nextData.n2014" id="combobox2014i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2015i" colspan="1">
					<input id="n2015" class="nui-textbox" name="preData.n2015"/>
				</td>
				<td id="n2015ii" colspan="1">
					<div name="nextData.n2015" id="combobox2015i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2016i" colspan="1">
					<input id="n2016" class="nui-textbox" name="preData.n2016"/>
				</td>
				<td id="n2016ii" colspan="1">
					<div name="nextData.n2016" id="combobox2016i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2017" class="form_label"  align="center">
					   2017:
				</td>
				<td id="n2017i" colspan="1">
					<input id="n2017" class="nui-textbox" name="preData.n2017"/>
				</td>
				<td id="n2017ii" colspan="1">
					<div name="nextData.n2017" id="combobox2017i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2018" class="form_label"  align="center">
					2018:
				</td>
				<td id="n2018i" colspan="1">
					<input id="n2018" class="nui-textbox" name="preData.n2018"/>
				</td>
				<td id="n2018ii" colspan="1">
					<div name="nextData.n2018" id="combobox2018i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2019" class="form_label"  align="center">
					   2019:
				</td>
				<td id="n2019i" colspan="1">
					<input id="n2019" class="nui-textbox" name="preData.n2019"/>
				</td>
				<td id="n2019ii" colspan="1">
					<div name="nextData.n2019" id="combobox2019i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2020i" colspan="1">
					<input id="n2020" class="nui-textbox" name="preData.n2020"/>
				</td>
				<td id="n2020ii" colspan="1">
					<div name="nextData.n2020" id="combobox2020i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2021i" colspan="1">
					<input id="n2021" class="nui-textbox" name="preData.n2021"/>
				</td>
				<td id="n2021ii" colspan="1">
					<div name="nextData.n2021" id="combobox2021i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2022i" colspan="1">
					<input id="n2022" class="nui-textbox" name="preData.n2022"/>
				</td>
				<td id="n2022ii" colspan="1">
					<div name="nextData.n2022" id="combobox2022i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2023" class="form_label"  align="center">
					   2023:
				</td>
				<td id="n2023i" colspan="1">
					<input id="n2023" class="nui-textbox" name="preData.n2023"/>
				</td>
				<td id="n2023ii" colspan="1">
					<div name="nextData.n2023" id="combobox2023i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2024" class="form_label"  align="center">
					2024:
				</td>
				<td id="n2024i" colspan="1">
					<input id="n2024" class="nui-textbox" name="preData.n2024"/>
				</td>
				<td id="n2024ii" colspan="1">
					<div name="nextData.n2024" id="combobox2024i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2025" class="form_label"  align="center">
					   2025:
				</td>
				<td id="n2025i" colspan="1">
					<input id="n2025" class="nui-textbox" name="preData.n2025"/>
				</td>
				<td id="n2025ii" colspan="1">
					<div name="nextData.n2025" id="combobox2025i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2026i" colspan="1">
					<input id="n2026" class="nui-textbox" name="preData.n2026"/>
				</td>
				<td id="n2026ii" colspan="1">
					<div name="nextData.n2026" id="combobox2026i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2027i" colspan="1">
					<input id="n2027" class="nui-textbox" name="preData.n2027"/>
				</td>
				<td id="n2027ii" colspan="1">
					<div name="nextData.n2027" id="combobox2027i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2028i" colspan="1">
					<input id="n2028" class="nui-textbox" name="preData.n2028"/>
				</td>
				<td id="n2028ii" colspan="1">
					<div name="nextData.n2028" id="combobox2028i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2029" class="form_label"  align="center">
					   2029:
				</td>
				<td id="n2029i" colspan="1">
					<input id="n2029" class="nui-textbox" name="preData.n2029"/>
				</td>
				<td id="n2029ii" colspan="1">
					<div name="nextData.n2029" id="combobox2029i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2030" class="form_label"  align="center">
					2030:
				</td>
				<td id="n2030i" colspan="1">
					<input id="n2030" class="nui-textbox" name="preData.n2030"/>
				</td>
				<td id="n2030ii" colspan="1">
					<div name="nextData.n2030" id="combobox2030i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2031" class="form_label"  align="center">
					   2031:
				</td>
				<td id="n2031i" colspan="1">
					<input id="n2031" class="nui-textbox" name="preData.n2031"/>
				</td>
				<td id="n2031ii" colspan="1">
					<div name="nextData.n2031" id="combobox2031i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2032i" colspan="1">
					<input id="n2032" class="nui-textbox" name="preData.n2032"/>
				</td>
				<td id="n2032ii" colspan="1">
					<div name="nextData.n2032" id="combobox2032i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2033i" colspan="1">
					<input id="n2033" class="nui-textbox" name="preData.n2033"/>
				</td>
				<td id="n2033ii" colspan="1">
					<div name="nextData.n2033" id="combobox2033i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2034i" colspan="1">
					<input id="n2034" class="nui-textbox" name="preData.n2034"/>
				</td>
				<td id="n2034ii" colspan="1">
					<div name="nextData.n2034" id="combobox2034i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2035" class="form_label"  align="center">
					   2035:
				</td>
				<td id="n2035i" colspan="1">
					<input id="n2035" class="nui-textbox" name="preData.n2035"/>
				</td>
				<td id="n2035ii" colspan="1">
					<div name="nextData.n2035" id="combobox2035i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2036" class="form_label"  align="center">
					2036:
				</td>
				<td id="n2036i" colspan="1">
					<input id="n2036" class="nui-textbox" name="preData.n2036"/>
				</td>
				<td id="n2036ii" colspan="1">
					<div name="nextData.n2036" id="combobox2036i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2037" class="form_label"  align="center">
					   2037:
				</td>
				<td id="n2037i" colspan="1">
					<input id="n2037" class="nui-textbox" name="preData.n2037"/>
				</td>
				<td id="n2037ii" colspan="1">
					<div name="nextData.n2037" id="combobox2037i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2038i" colspan="1">
					<input id="n2038" class="nui-textbox" name="preData.n2038"/>
				</td>
				<td id="n2038ii" colspan="1">
					<div name="nextData.n2038" id="combobox2038i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2039i" colspan="1">
					<input id="n2039" class="nui-textbox" name="preData.n2039"/>
				</td>
				<td id="n2039ii" colspan="1">
					<div name="nextData.n2039" id="combobox2039i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2040i" colspan="1">
					<input id="n2040" class="nui-textbox" name="preData.n2040"/>
				</td>
				<td id="n2040ii" colspan="1">
					<div name="nextData.n2040" id="combobox2040i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2041" class="form_label"  align="center">
					   2041:
				</td>
				<td id="n2041i" colspan="1">
					<input id="n2041" class="nui-textbox" name="preData.n2041"/>
				</td>
				<td id="n2041ii" colspan="1">
					<div name="nextData.n2041" id="combobox2041i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2042" class="form_label"  align="center">
					2042:
				</td>
				<td id="n2042i" colspan="1">
					<input id="n2042" class="nui-textbox" name="preData.n2042"/>
				</td>
				<td id="n2042ii" colspan="1">
					<div name="nextData.n2042" id="combobox2042i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2043" class="form_label"  align="center">
					   2043:
				</td>
				<td id="n2043i" colspan="1">
					<input id="n2043" class="nui-textbox" name="preData.n2043"/>
				</td>
				<td id="n2043ii" colspan="1">
					<div name="nextData.n2043" id="combobox2043i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2044i" colspan="1">
					<input id="n2044" class="nui-textbox" name="preData.n2044"/>
				</td>
				<td id="n2044ii" colspan="1">
					<div name="nextData.n2044" id="combobox2044i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2045i" colspan="1">
					<input id="n2045" class="nui-textbox" name="preData.n2045"/>
				</td>
				<td id="n2045ii" colspan="1">
					<div name="nextData.n2045" id="combobox2045i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2046i" colspan="1">
					<input id="n2046" class="nui-textbox" name="preData.n2046"/>
				</td>
				<td id="n2046ii" colspan="1">
					<div name="nextData.n2046" id="combobox2046i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2047" class="form_label"  align="center">
					   2047:
				</td>
				<td id="n2047i" colspan="1">
					<input id="n2047" class="nui-textbox" name="preData.n2047"/>
				</td>
				<td id="n2047ii" colspan="1">
					<div name="nextData.n2047" id="combobox2047i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2048" class="form_label"  align="center">
					2048:
				</td>
				<td id="n2048i" colspan="1">
					<input id="n2048" class="nui-textbox" name="preData.n2048"/>
				</td>
				<td id="n2048ii" colspan="1">
					<div name="nextData.n2048" id="combobox2048i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2049" class="form_label"  align="center">
					   2049:
				</td>
				<td id="n2049i" colspan="1">
					<input id="n2049" class="nui-textbox" name="preData.n2049"/>
				</td>
				<td id="n2049ii" colspan="1">
					<div name="nextData.n2049" id="combobox2049i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2050i" colspan="1">
					<input id="n2050" class="nui-textbox" name="preData.n2050"/>
				</td>
				<td id="n2050ii" colspan="1">
					<div name="nextData.n2050" id="combobox2050i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2051i" colspan="1">
					<input id="n2051" class="nui-textbox" name="preData.n2051"/>
				</td>
				<td id="n2051ii" colspan="1">
					<div name="nextData.n2051" id="combobox2051i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2052i" colspan="1">
					<input id="n2052" class="nui-textbox" name="preData.n2052"/>
				</td>
				<td id="n2052ii" colspan="1">
					<div name="nextData.n2052" id="combobox2052i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2053" class="form_label"  align="center">
					   2053:
				</td>
				<td id="n2053i" colspan="1">
					<input id="n2053" class="nui-textbox" name="preData.n2053"/>
				</td>
				<td id="n2053ii" colspan="1">
					<div name="nextData.n2053" id="combobox2053i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2054" class="form_label"  align="center">
					2054:
				</td>
				<td id="n2054i" colspan="1">
					<input id="n2054" class="nui-textbox" name="preData.n2054"/>
				</td>
				<td id="n2054ii" colspan="1">
					<div name="nextData.n2054" id="combobox2054i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2055" class="form_label"  align="center">
					   2055:
				</td>
				<td id="n2055i" colspan="1">
					<input id="n2055" class="nui-textbox" name="preData.n2055"/>
				</td>
				<td id="n2055ii" colspan="1">
					<div name="nextData.n2055" id="combobox2055i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2056i" colspan="1">
					<input id="n2056" class="nui-textbox" name="preData.n2056"/>
				</td>
				<td id="n2056ii" colspan="1">
					<div name="nextData.n2056" id="combobox2056i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2057i" colspan="1">
					<input id="n2057" class="nui-textbox" name="preData.n2057"/>
				</td>
				<td id="n2057ii" colspan="1">
					<div name="nextData.n2057" id="combobox2057i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2058i" colspan="1">
					<input id="n2058" class="nui-textbox" name="preData.n2058"/>
				</td>
				<td id="n2058ii" colspan="1">
					<div name="nextData.n2058" id="combobox2058i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2059" class="form_label"  align="center">
					   2059:
				</td>
				<td id="n2059i" colspan="1">
					<input id="n2059" class="nui-textbox" name="preData.n2059"/>
				</td>
				<td id="n2059ii" colspan="1">
					<div name="nextData.n2059" id="combobox2059i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2060" class="form_label"  align="center">
					2060:
				</td>
				<td id="n2060i" colspan="1">
					<input id="n2060" class="nui-textbox" name="preData.n2060"/>
				</td>
				<td id="n2060ii" colspan="1">
					<div name="nextData.n2060" id="combobox2060i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2061" class="form_label"  align="center">
					   2061:
				</td>
				<td id="n2061i" colspan="1">
					<input id="n2061" class="nui-textbox" name="preData.n2061"/>
				</td>
				<td id="n2061ii" colspan="1">
					<div name="nextData.n2061" id="combobox2061i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2062i" colspan="1">
					<input id="n2062" class="nui-textbox" name="preData.n2062"/>
				</td>
				<td id="n2062ii" colspan="1">
					<div name="nextData.n2062" id="combobox2062i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2063i" colspan="1">
					<input id="n2063" class="nui-textbox" name="preData.n2063"/>
				</td>
				<td id="n2063ii" colspan="1">
					<div name="nextData.n2063" id="combobox2063i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2064i" colspan="1">
					<input id="n2064" class="nui-textbox" name="preData.n2064"/>
				</td>
				<td id="n2064ii" colspan="1">
					<div name="nextData.n2064" id="combobox2064i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2065" class="form_label"  align="center">
					   2065:
				</td>
				<td id="n2065i" colspan="1">
					<input id="n2065" class="nui-textbox" name="preData.n2065"/>
				</td>
				<td id="n2065ii" colspan="1">
					<div name="nextData.n2065" id="combobox2065i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2066" class="form_label"  align="center">
					2066:
				</td>
				<td id="n2066i" colspan="1">
					<input id="n2066" class="nui-textbox" name="preData.n2066"/>
				</td>
				<td id="n2066ii" colspan="1">
					<div name="nextData.n2066" id="combobox2066i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2067" class="form_label"  align="center">
					   2067:
				</td>
				<td id="n2067i" colspan="1">
					<input id="n2067" class="nui-textbox" name="preData.n2067"/>
				</td>
				<td id="n2067ii" colspan="1">
					<div name="nextData.n2067" id="combobox2067i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2068i" colspan="1">
					<input id="n2068" class="nui-textbox" name="preData.n2068"/>
				</td>
				<td id="n2068ii" colspan="1">
					<div name="nextData.n2068" id="combobox2068i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2069i" colspan="1">
					<input id="n2069" class="nui-textbox" name="preData.n2069"/>
				</td>
				<td id="n2069ii" colspan="1">
					<div name="nextData.n2069" id="combobox2069i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2070i" colspan="1">
					<input id="n2070" class="nui-textbox" name="preData.n2070"/>
				</td>
				<td id="n2070ii" colspan="1">
					<div name="nextData.n2070" id="combobox2070i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2071" class="form_label"  align="center">
					   2071:
				</td>
				<td id="n2071i" colspan="1">
					<input id="n2071" class="nui-textbox" name="preData.n2071"/>
				</td>
				<td id="n2071ii" colspan="1">
					<div name="nextData.n2071" id="combobox2071i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2072" class="form_label"  align="center">
					2072:
				</td>
				<td id="n2072i" colspan="1">
					<input id="n2072" class="nui-textbox" name="preData.n2072"/>
				</td>
				<td id="n2072ii" colspan="1">
					<div name="nextData.n2072" id="combobox2072i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2073" class="form_label"  align="center">
					   2073:
				</td>
				<td id="n2073i" colspan="1">
					<input id="n2073" class="nui-textbox" name="preData.n2073"/>
				</td>
				<td id="n2073ii" colspan="1">
					<div name="nextData.n2073" id="combobox2073i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2074i" colspan="1">
					<input id="n2074" class="nui-textbox" name="preData.n2074"/>
				</td>
				<td id="n2074ii" colspan="1">
					<div name="nextData.n2074" id="combobox2074i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2075i" colspan="1">
					<input id="n2075" class="nui-textbox" name="preData.n2075"/>
				</td>
				<td id="n2075ii" colspan="1">
					<div name="nextData.n2075" id="combobox2075i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2076i" colspan="1">
					<input id="n2076" class="nui-textbox" name="preData.n2076"/>
				</td>
				<td id="n2076ii" colspan="1">
					<div name="nextData.n2076" id="combobox2076i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2077" class="form_label"  align="center">
					   2077:
				</td>
				<td id="n2077i" colspan="1">
					<input id="n2077" class="nui-textbox" name="preData.n2077"/>
				</td>
				<td id="n2077ii" colspan="1">
					<div name="nextData.n2077" id="combobox2077i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2078" class="form_label"  align="center">
					2078:
				</td>
				<td id="n2078i" colspan="1">
					<input id="n2078" class="nui-textbox" name="preData.n2078"/>
				</td>
				<td id="n2078ii" colspan="1">
					<div name="nextData.n2078" id="combobox2078i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2079" class="form_label"  align="center">
					   2079:
				</td>
				<td id="n2079i" colspan="1">
					<input id="n2079" class="nui-textbox" name="preData.n2079"/>
				</td>
				<td id="n2079ii" colspan="1">
					<div name="nextData.n2079" id="combobox2079i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2080i" colspan="1">
					<input id="n2080" class="nui-textbox" name="preData.n2080"/>
				</td>
				<td id="n2080ii" colspan="1">
					<div name="nextData.n2080" id="combobox2080i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2081i" colspan="1">
					<input id="n2081" class="nui-textbox" name="preData.n2081"/>
				</td>
				<td id="n2081ii" colspan="1">
					<div name="nextData.n2081" id="combobox2081i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2082i" colspan="1">
					<input id="n2082" class="nui-textbox" name="preData.n2082"/>
				</td>
				<td id="n2082ii" colspan="1">
					<div name="nextData.n2082" id="combobox2082i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2083" class="form_label"  align="center">
					   2083:
				</td>
				<td id="n2083i" colspan="1">
					<input id="n2083" class="nui-textbox" name="preData.n2083"/>
				</td>
				<td id="n2083ii" colspan="1">
					<div name="nextData.n2083" id="combobox2083i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
				<td id="n2084" class="form_label"  align="center">
					2084:
				</td>
				<td id="n2084i" colspan="1">
					<input id="n2084" class="nui-textbox" name="preData.n2084"/>
				</td>
				<td id="n2084ii" colspan="1">
					<div name="nextData.n2084" id="combobox2084i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2085" class="form_label"  align="center">
					   2085:
				</td>
				<td id="n2085i" colspan="1">
					<input id="n2085" class="nui-textbox" name="preData.n2085"/>
				</td>
				<td id="n2085ii" colspan="1">
					<div name="nextData.n2085" id="combobox2085i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2086i" colspan="1">
					<input id="n2086" class="nui-textbox" name="preData.n2086"/>
				</td>
				<td id="n2086ii" colspan="1">
					<div name="nextData.n2086" id="combobox2086i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2087i" colspan="1">
					<input id="n2087" class="nui-textbox" name="preData.n2087"/>
				</td>
				<td id="n2087ii" colspan="1">
					<div name="nextData.n2087" id="combobox2087i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
				<td id="n2088i" colspan="1">
					<input id="n2088" class="nui-textbox" name="preData.n2088"/>
				</td>
				<td id="n2088ii" colspan="1">
					<div name="nextData.n2088" id="combobox2088i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
						 url=""  multiSelect="true"  
						 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
						 <div property="columns">
							 
							 <div header="状态" field="name"></div>
						 </div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="n2089" class="form_label"  align="center">
					   2089:
				</td>
				<td id="n2089i" colspan="1">
					<input id="n2089" class="nui-textbox" name="preData.n2089"/>
				</td>
				<td id="n2089ii" colspan="1">
					<div name="nextData.n2089" id="combobox2089i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
                    <td colspan="2">
                        <input id="remark" style="width: 100%" class="nui-textarea" name="preData.remark"/>
                    </td>
                    <td colspan="3">
                        <input style="width: 100%" onvalidation="hasIllegalChar(e,4000,false,true)"  class="nui-textarea" name="nextData.remark"/>
                    </td>
                </tr>
              	<tr>
              		<td class="form_label"  align="center">
                        修改人:
                    </td>
                    <td colspan="2">
                        <input id="creator" name="nextData.creator" class="nui-textbox" value="<%=username %>"/>
                    </td>
                    <td class="form_label"  align="center">
                        修改日期:
                    </td>
                    <td colspan="2">
                        <input id="datetime"  name="nextData.datetime" style="width: 100%" class="nui-textbox" value="<%=dataTime %>"/>
                    </td>   
              	</tr>
              	<tr>
                    <td class="form_label"  align="center">
                        修改原因:
                    </td>
                    <td colspan="5">
                        <input id="reason" onvalidation="hasIllegalChar(e,4000,true,true)" required="true"  name="nextData.xgyy" requiredErrorText="请输入修改原因" class="nui-textarea" style="width: 100%;"/>
                    </td>
                </tr>
                </table>
           <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table" id="personTable">
           <tr>
				<td class="form_label">校核人员</td>
				 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
<!-- 				 <td colspan="5"> -->
<!--                         <input class="nui-combobox" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<!--                     </td> -->
<!-- 				<td colspan="5"> -->
<!-- 					<input  required="true" property="editor" id="jhry"  name="jhry"  class="nui-textboxlist" dataField="list" required="true" requiredErrorText="请输入校核人员" style="width:300px"  -->
<!-- 					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  /> -->
<!-- 				</td> -->
			
			</tr>
			     <tr>
				<td class="form_label">抄送人员</td>
				<td colspan="5">
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list"  style="width: 100%" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
	
			</tr>
			
              </table>
          </div>  
          <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                       	  <a class="nui-button btn btn-default btn-xs" id="btnSubmit" onclick="onOk('manualActivity')">
                                <i class="fa fa-check"></i>提交
                            </a>
                            <span style="display:inline-block;width:25px;">
                              </span>
                            <a class="nui-button btn btn-default btn-xs" id="btnSave" onclick="onOk('')">
                                <i class="fa fa-check"></i>保存至草稿
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
            nui.parse();
            var template;
            var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
			if (isadmin == 'true') { //如果是管理员
		        $('#personTable').hide();
		        nui.get('btnSave').hide();
		    }
		    //审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   
		    var jdid = getCookie('jdid');
			var jzid = getCookie('jzid');
            $(function() {
            	$(".mini-buttonedit-input").css('text-align','center');
            	$(".mini-textbox-input").css('text-align','center');
            	nui.get("creator").setValue('<%=username %>');
				nui.get("datetime").setValue('<%=dataTime %>');
            	var form = new nui.Form("overhauldataform");
            	var fields = form.getFields();  
                         
	            for (var i = 0, l = fields.length; i < l; i++) {
		            if(i<=6){
		            	var c = fields[i];
		                if (c.setReadOnly) c.setReadOnly(true);     //只读
		                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
		                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
		            }else{
		            	if(i>6 && i<=fields.length-4){
		            		if(i%2 == 0 || i == fields.length-4){
		            			var c = fields[i];
				                if (c.setReadOnly) c.setReadOnly(true);     //只读
				                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
				                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
		            		}
		            	}
		            }
	            }
            });
            
            

            function saveData(finishFirstActivityId){
            	var form = new nui.Form("#overhauldataform");
                form.setChanged(false);
                //编辑
                var urlStr = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.updateInfoMation.biz.ext";
				if(finishFirstActivityId != ""){
					form.validate();
					if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
				}
				var recordData = $("^[name^='nextData.']");
				var isEdit = false;
            	if(recordData.length > 0){
            		for(var i=0;i<recordData.length;i++){
            			var value = recordData[i].value;
            			if(value != '' && value != 'undefined'){
            				isEdit = true;
            				break;
            			}
            		}
            	}
            	if(!isEdit) {
            		nui.alert("您并未修改任何数据！", "提示");
            		return;
            	}
        	  	var detailed = nui.get("detailed").getValue();
            	if(detailed != null && detailed != ''){
            		var jsondata = {};
					jsondata.fieldName = 'detailed';
					jsondata.fieldValue = detailed;
					jsondata.base = jdid;
					jsondata.crew = jzid;
					jsondata.entity = 'com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity';
					jsondata = nui.encode(jsondata);
            		$.ajax({
	                    url:"com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getInforMation.biz.ext",
	                    type:'POST',
	                    data:jsondata,
	                    cache:false,
	                    contentType:'text/json',
	                    success:function(data){
		                	if(data.record != null && data.record.length > 0){
		                		var msg = '已有维护项目号' + detailed + ',可修改为' + detailed + '-01形式';
								nui.alert(msg, "系统提示");
		                	}else{
		                		nui.get("#btnSubmit").setEnabled(false);
  						nui.get("#btnSave").setEnabled(false);
  						var data = form.getData(false,true);
						data.jhry = nui.get('jhry').getValue();
						data.ccry = nui.get('ccry').getValue();
						data.isadmin = isadmin;
						data.processInstName = "十年计划(核岛)_日常执行条目_修改";
						data.processInstDesc = "十年计划(核岛)_日常执行条目_修改";
						data.processDefName = "com.cgn.itmp.outlineandplan.tenyearplan.editSnjhHdRczxtm";
						data.middleEntity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaulEdit.NuclearIslandEdit";
						data.realEntity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity";
						data.finishFirstActivityId = finishFirstActivityId;
					    var json = nui.encode(data);
		                $.ajax({
		                    url:urlStr,
		                    type:'POST',
		                    data:json,
		                    cache:false,
		                    contentType:'text/json',
		                    success:function(text){
		                        var returnJson = nui.decode(text);
		                        if(returnJson.exception == null){
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
		                                    //CloseWindow("saveFailed");
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
                        }
                    });
            	}else{
            		nui.get("#btnSubmit").setEnabled(false);
  						nui.get("#btnSave").setEnabled(false);
  						var data = form.getData(false,true);
						data.jhry = nui.get('jhry').getValue();
						data.ccry = nui.get('ccry').getValue();
						data.isadmin = isadmin;
						data.processInstName = "十年计划(核岛)_日常执行条目_修改";
						data.processInstDesc = "十年计划(核岛)_日常执行条目_修改";
						data.processDefName = "com.cgn.itmp.outlineandplan.tenyearplan.editSnjhHdRczxtm";
						data.middleEntity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaulEdit.NuclearIslandEdit";
						data.realEntity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity";
						data.finishFirstActivityId = finishFirstActivityId;
					    var json = nui.encode(data);
		                $.ajax({
		                    url:urlStr,
		                    type:'POST',
		                    data:json,
		                    cache:false,
		                    contentType:'text/json',
		                    success:function(text){
		                        var returnJson = nui.decode(text);
		                        if(returnJson.exception == null){
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
		                                    //CloseWindow("saveFailed");
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
            	
                		
            }

                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            var json = infos.record;
                            var form = new nui.Form("#overhauldataform");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            var uuid = json.preData.uuid;
                            if(uuid == undefined)uuid = json.preData.id;
                            nui.get("id").setValue(uuid);
							nui.get("jdid").setValue(json.preData.base);
                            var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + json.preData.base;
				   			nui.get("jzid").setUrl(url);
				   			nui.get("reason").setValue('');
				   			nui.get("creator").setValue('<%=username %>');
							nui.get("datetime").setValue('<%=dataTime %>');
				   			var parms = "{baseid:"+json.preData.base+",crewid:"+json.preData.crew+",type:n}";
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
				                        if(json.preData.base == "86"){
				                        	for(var i=parseInt(start);i<=parseInt(end)+10;i++){
				                        		nui.get('combobox'+i+'i').setAjaxType("POST");
				                        		nui.get('combobox'+i+'i').load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=taishanbase");
				                        	}
				                        }else{
				                        	for(var i=parseInt(start);i<=parseInt(end)+10;i++){
				                        		nui.get('combobox'+i+'i').setAjaxType("POST");
				                        		nui.get('combobox'+i+'i').load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=otherbases");
				                        	}
				                        }
				                        
				                        
			                    	}
			                    }
			                });
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
                </script>
            </body>
        </html>
