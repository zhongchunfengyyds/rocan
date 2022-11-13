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

//int processInstId=Integer.parseInt(request.getParameter("processInstId"));

 %>
<html>
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
<%--
- Author(s): Sun
- Date: 2019-01-14 14:44:16
- Description:
    --%>
    <head>
        <title>
            大修执行条目修改
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
                 <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />
        
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
    </head>
    
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="overhauldataform" style="padding-top:5px;">
            <!-- hidden域 -->
            <input id="id" class="nui-hidden" name="preData.id"/>
            <input id="mapnoid" class="nui-hidden" name="preData.mapnoid"/>
         <input id="programid" class="nui-hidden" name="preData.programid"/>
         <input id="toolid" class="nui-hidden" name="preData.toolid"/>
         <input id="textprogramid" class="nui-hidden" name="preData.textprogramid"/>
         <input id="finishFirstActivityId" class="nui-hidden" name="finishFirstActivityId"/>
         <input id="mapnoidcopy" class="nui-hidden" name="nextData.mapnoid"/>
         <input id="programidcopy" class="nui-hidden" name="nextData.programid"/>
         <input id="toolidcopy" class="nui-hidden" name="nextData.toolid"/>
         <input id="textprogramidcopy" class="nui-hidden" name="nextData.textprogramid"/>
         

         
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
                        <input class="nui-textbox" name="preData.protype"/>
                    </td>
                    <td>
                    </td>
         			<td class="form_label"  align="center">
                        部件:
                    </td>
                    <td>
                        <input class="nui-textbox" name="preData.parts"/>
                    </td>
                    <td>
                    </td>
         		</tr>
         		
         		<tr>
         		<td class="form_label"  align="center">
                        模板:
                    </td>
                    <td>
                        <input id="template" class="nui-dictcombobox" name="preData.template" dictTypeId="template"/>
                    </td>
                    <td>
                    </td>
                    <td class="form_label"  align="center">
                        参考图号:
                    </td>
                    <td>
                        <input id="referencefigureno" class="nui-textbox" name="preData.referencefigureno"/>
                    </td>
                    <td>
                        <input id="btnEdit1" class="nui-buttonedit" name="nextData.referencefigureno" readonly="readonly" onclick="onButtonEdit(this,'1');" />
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
                        <input id="item_no" class="nui-textbox" onvalidation="hasIllegalChar(e,256,false,true)"  name="nextData.itemno"/>
                    </td>
                    <td class="form_label"  align="center">
                        维护项目:
                    </td>
                    <td colspan="1" name="preData.detailed">
                        <input id="olddetailed" class="nui-textbox" name="preData.detailed"/>
                    </td>   
                    <td colspan="1">
                        <input id="detailed" class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)"  name="nextData.detailed"/>
                    </td> 
         		</tr>
         		<tr>
         			<td class="form_label"  >
                        检查内容/检查范围:
                    </td>
                    <td colspan="2">
                        <input id="inspectionscope" class="nui-textarea" style="width: 100%" name="preData.inspectionscope"/>
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" style="width: 100%" onvalidation="hasIllegalChar(e,1000,false,true)"  name="nextData.inspectionscope"/>
                    </td>
         		</tr>
         		         		<tr>
         			<td class="form_label"  >
                        流程图号/参考设备图/等轴图号:
                    </td>
                    <td colspan="2">
                        <input id="mapno" class="nui-textarea" style="width: 100%" name="preData.mapno"/>
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" style="width: 100%" onvalidation="hasIllegalChar(e,4000,false,true)"  name="nextData.mapno"/>
                    </td>
         		</tr>
          </table>
          
           <!-- 在役检查 -->
           <table id="zytab" style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
           <tr>
	                <td class="form_label"  align="center">
	                    被检部位:
	                </td>
	                <td colspan="2">
	                    <input id="detectedsite" class="nui-textarea" style="width: 100%" name="preData.detectedsite"/>
	                </td>
	                <td colspan="3">
                        <input class="nui-textarea" style="width: 100%" onvalidation="hasIllegalChar(e,1000,false,true)" name="nextData.detectedsite"/>
                    </td>
            	</tr>
           		<tr>
                	<td class="form_label"  align="center">
                        数量:
                    </td>
                    <td colspan="1">
                        <input id="number" class="nui-textbox" name="preData.number"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  onvalidation="hasIllegalChar(e,32,false,true)"  name="nextData.number"/>
                    </td>
                    <td class="form_label"  align="center">
                        接近方式:
                    </td>
                    <td colspan="1">
                        <input id="approachmode" class="nui-textbox" name="preData.approachmode"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)"  name="nextData.approachmode"/>
                    </td>
                </tr>
                <tr>
                	<td class="form_label"  align="center">
                        检查方法:
                    </td>
                    <td colspan="1">
                        <input id="method" class="nui-textbox" name="preData.method"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)"  name="nextData.method"/>
                    </td>
                    <td class="form_label"  align="center">
                        参考程序:
                    </td>
                    <td colspan="1">
                        <input id="program" class="nui-textbox" name="preData.program" />
                    </td>
                    <td colspan="1">
                        <input id="btnEdit2" class="nui-buttonedit"  name="nextData.program" readonly="readonly" onclick="onButtonEdit(this,'2');"/>
                    </td>
                </tr>
                <tr>
                	<td class="form_label"  align="center">
                专用工具:
            		</td>
            		<td colspan="1">
                		<input id="tool" class="nui-textbox" name="preData.tool"/>
	            	</td>
	            	<td colspan="1">
                        <input id="btnEdit3" class="nui-buttonedit" readonly="readonly" onclick="onButtonEdit(this,'3');" name="nextData.tool"/>
                    </td>
                    <td class="form_label"  align="center">
		                专用检查计划:
		            </td>
		            <td colspan="1">
		                <input id="inspectplan" class="nui-dictcombobox" name="preData.inspectplan" dictTypeId="option"/>
		            </td>
		            <td colspan="1">
                        <input class="nui-dictcombobox" dictTypeId="option" name="nextData.inspectplan"/>
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
	                        <input id="medium" class="nui-textbox" name="preData.medium"/>
	                    </td>
	                    <td colspan="1">
	                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)"  name="nextData.medium"/>
	                    </td>
	                    <td class="form_label"  align="center">
	                    试验部位:
	                </td>
	                <td colspan="1">
	                    <input id="site" class="nui-dictcombobox" name="preData.site" dictTypeId="site"/>
	                </td>
	                <td colspan="1">
	                    <input id="site" class="nui-dictcombobox" dictTypeId="site" name="nextData.site"/>
	                </td>
           		</tr>
           		<tr>
	           		<td class="form_label"  align="center">
	                    试验程序:
	                </td>
	                <td colspan="1">
	                    <input id="testprocedure" class="nui-textbox" name="preData.testprocedure"/>
	                </td>
	                <td colspan="1">
	                    <input id="btnEdit4" class="nui-buttonedit" readonly="readonly" onclick="onButtonEdit(this,'4');" name="nextData.testprocedure"/>
	                </td>
	                <td class="form_label"  align="center">
                        运行压力（Bar）:
                    </td>
                    <td colspan="1">
                        <input id="operatingpressure" class="nui-textbox" name="preData.operatingpressure"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)"  name="nextData.operatingpressure"/>
                    </td>
           		</tr>
           		<tr>
	           		<td class="form_label"  align="center">
	                        设计压力（Bar):
                    </td>
                    <td colspan="1">
                        <input id="designpressure" class="nui-textbox" name="preData.designpressure"/>
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)"  name="nextData.designpressure"/>
                    </td>
	            	<td class="form_label"  align="center">
	                    试验压力（Bar）:
	                </td>
	                <td colspan="1">
	                    <input id="testpressure" class="nui-textbox" name="preData.testpressure"/>
	                </td>
           			<td colspan="1">
	                    <input class="nui-textbox" onvalidation="hasIllegalChar(e,4000,false,true)"  name="nextData.testpressure"/>
	                </td>
           		</tr>
           		<tr>
	            	<td class="form_label"  align="center">
	                    首次水压试验时间:
	                </td>
	                <td colspan="1">
	                    <input id="firsttesttime" class="nui-textbox" name="preData.firsttesttime"/>
	                </td>
	                <td colspan="1">
	                    <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"  name="nextData.firsttesttime"/>
	                </td>
	                <td class="form_label"  align="center">
	                    前次试验日期:
	                </td>
	                <td colspan="1">
	                    <input id="beforetesttime" class="nui-textbox" name="preData.beforetesttime"/>
	                </td>
	                <td colspan="1">
	                    <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"  name="nextData.beforetesttime"/>
	                </td>
                </tr>
                <tr>
	                <td class="form_label"  align="center">
	                    下次试验最晚日期:
	                </td>
	                <td colspan="1">
	                    <input id="nexttesttime" class="nui-textbox" name="preData.nexttesttime"/>
	                </td> 
	                <td colspan="1">
	                    <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"  name="nextData.nexttesttime"/>
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
						<input id="c1" class="nui-textbox" name="preData.c1"/>
					</td>
					<td id="c1ii" colspan="1">
						<div name="nextData.c1" id="combobox1i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c2" class="form_label"  align="center">
						C2:
					</td>
					<td id="c2i" colspan="1">
						<input id="c2" class="nui-textbox" name="preData.c2"/>
					</td>
					<td id="c2ii" colspan="1">
						<div name="nextData.c2" id="combobox2i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c3" class="form_label"  align="center">
						   C3:
					</td>
					<td id="c3i" colspan="1">
						<input id="c3" class="nui-textbox" name="preData.c3"/>
					</td>
					<td id="c3ii" colspan="1">
						<div name="nextData.c3" id="combobox3i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c4" class="form_label"  align="center">
						C4:
					</td>
					<td id="c4i" colspan="1">
						<input id="c4" class="nui-textbox" name="preData.c4"/>
					</td>
					<td id="c4ii" colspan="1">
						<div name="nextData.c4" id="combobox4i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				
				
				<tr>
					<td id="c5" class="form_label"  align="center">
						   C5:
					</td>
					<td id="c5i" colspan="1">
						<input id="c5" class="nui-textbox" name="preData.c5"/>
					</td>
					<td id="c5ii" colspan="1">
						<div name="nextData.c5" id="combobox5i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c6" class="form_label"  align="center">
						C6:
					</td>
					<td id="c6i" colspan="1">
						<input id="c6" class="nui-textbox" name="preData.c6"/>
					</td>
					<td id="c6ii" colspan="1">
						<div name="nextData.c6" id="combobox6i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c7" class="form_label"  align="center">
						   C7:
					</td>
					<td id="c7i" colspan="1">
						<input id="c7" class="nui-textbox" name="preData.c7"/>
					</td>
					<td id="c7ii" colspan="1">
						<div name="nextData.c7" id="combobox7i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c8" class="form_label"  align="center">
						C8:
					</td>
					<td id="c8i" colspan="1">
						<input id="c8" class="nui-textbox" name="preData.c8"/>
					</td>
					<td id="c8ii" colspan="1">
						<div name="nextData.c8" id="combobox8i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c9" class="form_label"  align="center">
						   C9:
					</td>
					<td id="c9i" colspan="1">
						<input id="c9" class="nui-textbox" name="preData.c9"/>
					</td>
					<td id="c9ii" colspan="1">
						<div name="nextData.c9" id="combobox9i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c10" class="form_label"  align="center">
						C10:
					</td>
					<td id="c10i" colspan="1">
						<input id="c10" class="nui-textbox" name="preData.c10"/>
					</td>
					<td id="c10ii" colspan="1">
						<div name="nextData.c10" id="combobox10i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c11" class="form_label"  align="center">
						   C11:
					</td>
					<td id="c11i" colspan="1">
						<input id="c11" class="nui-textbox" name="preData.c11"/>
					</td>
					<td id="c11ii" colspan="1">
						<div name="nextData.c11" id="combobox11i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c12" class="form_label"  align="center">
						C12:
					</td>
					<td id="c12i" colspan="1">
						<input id="c12" class="nui-textbox" name="preData.c12"/>
					</td>
					<td id="c12ii" colspan="1">
						<div name="nextData.c12" id="combobox12i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c13" class="form_label"  align="center">
						   C13:
					</td>
					<td id="c13i" colspan="1">
						<input id="c13" class="nui-textbox" name="preData.c13"/>
					</td>
					<td id="c13ii" colspan="1">
						<div name="nextData.c13" id="combobox13i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c14" class="form_label"  align="center">
						C14:
					</td>
					<td id="c14i" colspan="1">
						<input id="c14" class="nui-textbox" name="preData.c14"/>
					</td>
					<td id="c14ii" colspan="1">
						<div name="nextData.c14" id="combobox14i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c15" class="form_label"  align="center">
						   C15:
					</td>
					<td id="c15i" colspan="1">
						<input id="c15" class="nui-textbox" name="preData.c15"/>
					</td>
					<td id="c15ii" colspan="1">
						<div name="nextData.c15" id="combobox15i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c16" class="form_label"  align="center">
						C16:
					</td>
					<td id="c16i" colspan="1">
						<input id="c16" class="nui-textbox" name="preData.c16"/>
					</td>
					<td id="c16ii" colspan="1">
						<div name="nextData.c16" id="combobox16i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c17" class="form_label"  align="center">
						   C17:
					</td>
					<td id="c17i" colspan="1">
						<input id="c17" class="nui-textbox" name="preData.c17"/>
					</td>
					<td id="c17ii" colspan="1">
						<div name="nextData.c17" id="combobox17i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c18" class="form_label"  align="center">
						C18:
					</td>
					<td id="c18i" colspan="1">
						<input id="c18" class="nui-textbox" name="preData.c18"/>
					</td>
					<td id="c18ii" colspan="1">
						<div name="nextData.c18" id="combobox18i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c19" class="form_label"  align="center">
						   C19:
					</td>
					<td id="c19i" colspan="1">
						<input id="c19" class="nui-textbox" name="preData.c19"/>
					</td>
					<td id="c19ii" colspan="1">
						<div name="nextData.c19" id="combobox19i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c20" class="form_label"  align="center">
						C20:
					</td>
					<td id="c20i" colspan="1">
						<input id="c20" class="nui-textbox" name="preData.c20"/>
					</td>
					<td id="c20ii" colspan="1">
						<div name="nextData.c20" id="combobox20i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
             	<tr>
					<td id="c21" class="form_label"  align="center">
						   C21:
					</td>
					<td id="c21i" colspan="1">
						<input id="c21" class="nui-textbox" name="preData.c21"/>
					</td>
					<td id="c21ii" colspan="1">
						<div name="nextData.c21" id="combobox21i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c22" class="form_label"  align="center">
						C22:
					</td>
					<td id="c22i" colspan="1">
						<input id="c22" class="nui-textbox" name="preData.c22"/>
					</td>
					<td id="c22ii" colspan="1">
						<div name="nextData.c22" id="combobox22i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c23" class="form_label"  align="center">
						   C23:
					</td>
					<td id="c23i" colspan="1">
						<input id="c23" class="nui-textbox" name="preData.c23"/>
					</td>
					<td id="c23ii" colspan="1">
						<div name="nextData.c23" id="combobox23i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c24" class="form_label"  align="center">
						C24:
					</td>
					<td id="c24i" colspan="1">
						<input id="c24" class="nui-textbox" name="preData.c24"/>
					</td>
					<td id="c24ii" colspan="1">
						<div name="nextData.c24" id="combobox24i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				
				
				<tr>
					<td id="c25" class="form_label"  align="center">
						   C25:
					</td>
					<td id="c25i" colspan="1">
						<input id="c25" class="nui-textbox" name="preData.c25"/>
					</td>
					<td id="c25ii" colspan="1">
						<div name="nextData.c25" id="combobox25i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c26" class="form_label"  align="center">
						C26:
					</td>
					<td id="c26i" colspan="1">
						<input id="c26" class="nui-textbox" name="preData.c26"/>
					</td>
					<td id="c26ii" colspan="1">
						<div name="nextData.c26" id="combobox26i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				
				<tr>
					<td id="c27" class="form_label"  align="center">
						   C27:
					</td>
					<td id="c27i" colspan="1">
						<input id="c27" class="nui-textbox" name="preData.c27"/>
					</td>
					<td id="c27ii" colspan="1">
						<div name="nextData.c27" id="combobox27i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c28" class="form_label"  align="center">
						C28:
					</td>
					<td id="c28i" colspan="1">
						<input id="c28" class="nui-textbox" name="preData.c28"/>
					</td>
					<td id="c28ii" colspan="1">
						<div name="nextData.c28" id="combobox28i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c29" class="form_label"  align="center">
						   C29:
					</td>
					<td id="c29i" colspan="1">
						<input id="c29" class="nui-textbox" name="preData.c29"/>
					</td>
					<td id="c29ii" colspan="1">
						<div name="nextData.c29" id="combobox29i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c30" class="form_label"  align="center">
						C30:
					</td>
					<td id="c30i" colspan="1">
						<input id="c30" class="nui-textbox" name="preData.c30"/>
					</td>
					<td id="c30ii" colspan="1">
						<div name="nextData.c30" id="combobox30i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c31" class="form_label"  align="center">
						   C31:
					</td>
					<td id="c31i" colspan="1">
						<input id="c31" class="nui-textbox" name="preData.c31"/>
					</td>
					<td id="c31ii" colspan="1">
						<div name="nextData.c31" id="combobox31i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c32" class="form_label"  align="center">
						C32:
					</td>
					<td id="c32i" colspan="1">
						<input id="c32" class="nui-textbox" name="preData.c32"/>
					</td>
					<td id="c32ii" colspan="1">
						<div name="nextData.c32" id="combobox32i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c33" class="form_label"  align="center">
						   C33:
					</td>
					<td id="c33i" colspan="1">
						<input id="c33" class="nui-textbox" name="preData.c33"/>
					</td>
					<td id="c33ii" colspan="1">
						<div name="nextData.c33" id="combobox33i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c34" class="form_label"  align="center">
						C34:
					</td>
					<td id="c34i" colspan="1">
						<input id="c34" class="nui-textbox" name="preData.c34"/>
					</td>
					<td id="c34ii" colspan="1">
						<div name="nextData.c34" id="combobox34i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c35" class="form_label"  align="center">
						   C35:
					</td>
					<td id="c35i" colspan="1">
						<input id="c35" class="nui-textbox" name="preData.c35"/>
					</td>
					<td id="c35ii" colspan="1">
						<div name="nextData.c35" id="combobox35i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c36" class="form_label"  align="center">
						C36:
					</td>
					<td id="c36i" colspan="1">
						<input id="c36" class="nui-textbox" name="preData.c36"/>
					</td>
					<td id="c36ii" colspan="1">
						<div name="nextData.c36" id="combobox36i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c37" class="form_label"  align="center">
						   C37:
					</td>
					<td id="c37i" colspan="1">
						<input id="c37" class="nui-textbox" name="preData.c37"/>
					</td>
					<td id="c37ii" colspan="1">
						<div name="nextData.c37" id="combobox37i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c38" class="form_label"  align="center">
						C38:
					</td>
					<td id="c38i" colspan="1">
						<input id="c38" class="nui-textbox" name="preData.c38"/>
					</td>
					<td id="c38ii" colspan="1">
						<div name="nextData.c38" id="combobox38i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c39" class="form_label"  align="center">
						   C39:
					</td>
					<td id="c39i" colspan="1">
						<input id="c39" class="nui-textbox" name="preData.c39"/>
					</td>
					<td id="c39ii" colspan="1">
						<div name="nextData.c39" id="combobox39i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c40" class="form_label"  align="center">
						C40:
					</td>
					<td id="c40i" colspan="1">
						<input id="c40" class="nui-textbox" name="preData.c40"/>
					</td>
					<td id="c40ii" colspan="1">
						<div name="nextData.c40" id="combobox40i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c41" class="form_label"  align="center">
						   C41:
					</td>
					<td id="c41i" colspan="1">
						<input id="c41" class="nui-textbox" name="preData.c41"/>
					</td>
					<td id="c41ii" colspan="1">
						<div name="nextData.c41" id="combobox41i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c42" class="form_label"  align="center">
						C42:
					</td>
					<td id="c42i" colspan="1">
						<input id="c42" class="nui-textbox" name="preData.c42"/>
					</td>
					<td id="c42ii" colspan="1">
						<div name="nextData.c42" id="combobox42i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c43" class="form_label"  align="center">
						   C43:
					</td>
					<td id="c43i" colspan="1">
						<input id="c43" class="nui-textbox" name="preData.c43"/>
					</td>
					<td id="c43ii" colspan="1">
						<div name="nextData.c43" id="combobox43i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c44" class="form_label"  align="center">
						C44:
					</td>
					<td id="c44i" colspan="1">
						<input id="c44" class="nui-textbox" name="preData.c44"/>
					</td>
					<td id="c44ii" colspan="1">
						<div name="nextData.c44" id="combobox44i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c45" class="form_label"  align="center">
						   C45:
					</td>
					<td id="c45i" colspan="1">
						<input id="c45" class="nui-textbox" name="preData.c45"/>
					</td>
					<td id="c45ii" colspan="1">
						<div name="nextData.c45" id="combobox45i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c46" class="form_label"  align="center">
						C46:
					</td>
					<td id="c46i" colspan="1">
						<input id="c46" class="nui-textbox" name="preData.c46"/>
					</td>
					<td id="c46ii" colspan="1">
						<div name="nextData.c46" id="combobox46i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c47" class="form_label"  align="center">
						   C47:
					</td>
					<td id="c47i" colspan="1">
						<input id="c47" class="nui-textbox" name="preData.c47"/>
					</td>
					<td id="c47ii" colspan="1">
						<div name="nextData.c47" id="combobox47i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c48" class="form_label"  align="center">
						C48:
					</td>
					<td id="c48i" colspan="1">
						<input id="c48" class="nui-textbox" name="preData.c48"/>
					</td>
					<td id="c48ii" colspan="1">
						<div name="nextData.c48" id="combobox48i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c49" class="form_label"  align="center">
						   C49:
					</td>
					<td id="c49i" colspan="1">
						<input id="c49" class="nui-textbox" name="preData.c49"/>
					</td>
					<td id="c49ii" colspan="1">
						<div name="nextData.c49" id="combobox49i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c50" class="form_label"  align="center">
						C50:
					</td>
					<td id="c50i" colspan="1">
						<input id="c50" class="nui-textbox" name="preData.c50"/>
					</td>
					<td id="c50ii" colspan="1">
						<div name="nextData.c50" id="combobox50i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c51" class="form_label"  align="center">
						   C51:
					</td>
					<td id="c51i" colspan="1">
						<input id="c51" class="nui-textbox" name="preData.c51"/>
					</td>
					<td id="c51ii" colspan="1">
						<div name="nextData.c51" id="combobox51i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c52" class="form_label"  align="center">
						C52:
					</td>
					<td id="c52i" colspan="1">
						<input id="c52" class="nui-textbox" name="preData.c52"/>
					</td>
					<td id="c52ii" colspan="1">
						<div name="nextData.c52" id="combobox52i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c53" class="form_label"  align="center">
						   C53:
					</td>
					<td id="c53i" colspan="1">
						<input id="c53" class="nui-textbox" name="preData.c53"/>
					</td>
					<td id="c53ii" colspan="1">
						<div name="nextData.c53" id="combobox53i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c54" class="form_label"  align="center">
						C54:
					</td>
					<td id="c54i" colspan="1">
						<input id="c54" class="nui-textbox" name="preData.c54"/>
					</td>
					<td id="c54ii" colspan="1">
						<div name="nextData.c54" id="combobox54i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c55" class="form_label"  align="center">
						   C55:
					</td>
					<td id="c55i" colspan="1">
						<input id="c55" class="nui-textbox" name="preData.c55"/>
					</td>
					<td id="c55ii" colspan="1">
						<div name="nextData.c55" id="combobox55i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c56" class="form_label"  align="center">
						C56:
					</td>
					<td id="c56i" colspan="1">
						<input id="c56" class="nui-textbox" name="preData.c56"/>
					</td>
					<td id="c56ii" colspan="1">
						<div name="nextData.c56" id="combobox56i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c57" class="form_label"  align="center">
						   C57:
					</td>
					<td id="c57i" colspan="1">
						<input id="c57" class="nui-textbox" name="preData.c57"/>
					</td>
					<td id="c57ii" colspan="1">
						<div name="nextData.c57" id="combobox57i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c58" class="form_label"  align="center">
						C58:
					</td>
					<td id="c58i" colspan="1">
						<input id="c58" class="nui-textbox" name="preData.c58"/>
					</td>
					<td id="c58ii" colspan="1">
						<div name="nextData.c58" id="combobox58i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
				</tr>
				<tr>
					<td id="c59" class="form_label"  align="center">
						   C59:
					</td>
					<td id="c59i" colspan="1">
						<input id="c59" class="nui-textbox" name="preData.c59"/>
					</td>
					<td id="c59ii" colspan="1">
						<div name="nextData.c59" id="combobox59i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
							 url=""  multiSelect="true"  
							 showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							 <div property="columns">
								 
								 <div header="状态" field="name"></div>
							 </div>
						</div>
					</td>
					<td id="c60" class="form_label"  align="center">
						C60:
					</td>
					<td id="c60i" colspan="1">
						<input id="c60" class="nui-textbox" name="preData.c60"/>
					</td>
					<td id="c60ii" colspan="1">
						<div name="nextData.c60" id="combobox60i" class="nui-combobox" style="width:100px;"  popupWidth="100" textField="name" valueField="id" 
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
                        <input id="creator" onvalidation="hasIllegalChar(e,32,false,true)"  name="nextData.creator" class="nui-textbox" value="<%=username %>"/>
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
                        <input id="reason" required="true"  onvalidation="hasIllegalChar(e,400,false,true)"  name="nextData.xgyy" requiredErrorText="请输入修改原因" class="nui-textarea" style="width: 100%;"/>
                    </td>
                </tr>
           <tr>
           </table>
           <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table" id="personTable">
				<td class="form_label" >校核人员</td>
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
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list"  style="width:100%" 
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
            //基地机组赋值
			var jdid = getCookie('jdid');
			var jzid = getCookie('jzid');   
			nui.MessageBox.buttonText ={
			    ok: "是",
			    cancel : "否"
			};  
			//审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
          
			var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
			if (isadmin == 'true') { //如果是管理员
		        $('#personTable').hide();
		        nui.get('btnSave').hide();
		    }
            $(function() {
            	$(".mini-buttonedit-input").css('text-align','center');
            	$(".mini-textbox-input").css('text-align','center');

            	var form = new nui.Form("overhauldataform");
            	var fields = form.getFields();  
         	
	            for (var i = 0, l = fields.length; i < l; i++) {
		            if(i<=14){
		            	var c = fields[i];
		                if (c.setReadOnly) c.setReadOnly(true);     //只读
		                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
		                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
		            }else{
		            	if(i>14 && i<=fields.length-4){
		            		if(i%2 == 1 || i == fields.length-4){
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
//             	nui.get('finishFirstActivityId').setValue(finishFirstActivityId);
                form.setChanged(false);
                //编辑
                var urlStr = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.updateInfoMation.biz.ext";
				if(finishFirstActivityId != ""){
					form.validate();
					if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
				}
				 nui.get("#btnSubmit").setEnabled(false);
		 		 nui.get("#btnSave").setEnabled(false);
		 		 
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
            	  var data = form.getData(false,true);
				data.jhry = nui.get('jhry').getValue();
				data.ccry = nui.get('ccry').getValue();
				data.isadmin = isadmin;
				data.processInstName = "规范法定大纲_大修执行条目_修改";
				data.processInstDesc = "规范法定大纲_大修执行条目_修改";
				data.processDefName = "com.cgn.itmp.outlineandplan.outline.editFddgDxzxtm";
				data.middleEntity = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit";
 				data.realEntity = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity";
// 				data.isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
         	
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
                        if("" != finishFirstActivityId){
                		nui.confirm("大纲已修改并提交成功，请确定是否同步变更十年计划","系统提示",
		                    function(action){
		                        if(action=="ok"){
		                        	var detailed = nui.get("detailed").getValue();
		                        	if(detailed == null || detailed == ''){
			                        		detailed = nui.get("olddetailed").getValue();
			                        	}
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
									    success:function(datas){
									    	var url = '/itmp/tenyearplan/NuclearIsland/Overhaul/index.jsp?detailed='+encodeURI(JSON.parse(JSON.stringify(detailed)),"utf-8");
									    	 if(datas.record != null && datas.record[0]){
											     addTab(url);
											     CloseWindow("saveSuccess");
									    	 }else{
									    	 	nui.confirm("无对应十年计划条目，请选中条目后新增","系统提示",
							                    function(action){
							                        if(action=="ok"){
							                        	addTab(url);
							                        }
							                        CloseWindow("saveSuccess");
						                        });
									    	 }
								   		}
									}); 
		                        }else{
		                        	CloseWindow("saveSuccess");
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
                                    //CloseWindow("saveFailed");
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(false);
		 		 					nui.get("#btnSave").setEnabled(false);
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
                        nui.getbyName("pageType").setValue(infos.pageType);
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            var json = infos.record;
							template = json.preData.template;
							//模板类型变更显示隐藏
							if(template == 'zy'){
								$('#sytab').css('display','none');
							}else if(template == 'sy'){
								$('#zytab').css('display','none');
							}
							
                            var form = new nui.Form("#overhauldataform");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            var uuid = json.preData.uuid;
                            if(uuid == undefined)uuid = json.preData.id;
                            nui.get("id").setValue(uuid);
                            nui.get("jdid").setValue(json.preData.base);
                            nui.get("creator").setValue('<%=username %>');
							nui.get("datetime").setValue('<%=dataTime %>');
                            var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + json.preData.base;
				   			nui.get("jzid").setUrl(url);
				   			nui.get("reason").setValue('');
				   			var parms = "{baseid:"+json.preData.base+",crewid:"+json.preData.crew+"}";
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
				                        if(json.preData.base == "86"){
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
                        }
                    }

                    //关闭窗口
                    function CloseWindow(action) {
                        if (action == "close" && form.isChanged()) {
                            if (confirm("数据被修改了，是否先保存至草稿？")) {
                                saveData("");
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
					
					function onButtonEdit(e,type) {
						var btnEdit;
					var btnEditid;
					var url = "";
					if(type == "1"){
						url = "/itmp/outlineCommon/selgridwindow/SelectGridWindow.jsp";
						btnEdit = nui.get('btnEdit1');
						btnEditid = nui.get('mapnoid');
					}else if(type == "2" || type == "4"){
						url = "/itmp/outlineCommon/selgridwindow/SelectProcedureWindow.jsp";
						if(type == '2'){
							btnEdit = nui.get('btnEdit2');
							btnEditid = nui.get('programid');
						}
						if(type == '4'){
							btnEdit = nui.get('btnEdit4');
							btnEditid = nui.get('textprogramid');
						}
					}else if(type == "3"){
						url = "/itmp/outlineCommon/selgridwindow/SelectToolWindow.jsp";
						btnEdit = nui.get('btnEdit3');
						btnEditid = nui.get('toolid');
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
						            	var uuid = '',bh = '',jm = '',xh = '';
						            	for(var i=0;i<data.length;i++){
						            		uuid += data[i].uuid;
						            		if(type == '1'){
						            			bh += data[i].cktlbh;
						            		}else if(type == '2' || type == '4'){
						            			jm += data[i].jm;
						            		}else if(type == '3'){
						            			xh += data[i].istxh;
						            		}
						            		if(i<data.length - 1){
						            			uuid +=',';
						            			if(type == '1'){
						            				bh +=',';
							            		}else if(type == '2' || type == '4'){
							            			jm +=',';
							            		}else if(type == '3'){
							            			xh +=',';
							            		}
						            		} 
						            		
						            	}
						            	if(type == '1')nui.get('mapnoidcopy').setValue(uuid);
						                if(type == '2')nui.get('programidcopy').setValue(uuid);
						                if(type == '3')nui.get('toolidcopy').setValue(uuid);
						                if(type == '4')nui.get('textprogramidcopy').setValue(uuid);
						                if(type == '1'){
						                	btnEdit.setValue(bh);
						                	btnEdit.setText(bh);
						                }else if(type == '2' || type == '4'){
						                	btnEdit.setValue(jm);
						                	btnEdit.setText(jm);
						                }else if(type == '3'){
						                	btnEdit.setValue(xh);
						                	btnEdit.setText(xh);
						                }
						            }
					            }				
					        }
					    });            
					             
					}    
					    
                </script>
            </body>
        </html>
