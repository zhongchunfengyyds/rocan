<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.IUserObject"%>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	IUserObject cu = CommonUtil.getUserObject();
	String username = cu.getUserRealName();
%>
<html>
<%--
- Author(s): jirukang
- Date: 2019-11-12 15:13:55
- Description:压力容器基本信息录入
    --%>
    <head>
        <title>
            压力容器录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script> 
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript">
        </script>
        <link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
        <style type="text/css">
			 .mini-grid-table tr:first-child td{
					height: 0;
				}
				</style>
    </head>
    <body>
       
            <div id="dataform1" style="padding-top:5px;">
                <!-- hidden域 -->
                  <input class="nui-hidden" id="editable" value="<b:write property='editable'/>" />
                 <input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
				<input class="nui-hidden" name="jhry" id="jhry"/>
				<input class="nui-hidden" name="ccry" id="ccry"/>
		    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
		    	<div id="form_1">
		    	<input class="nui-hidden" name="pressurevessel.uuid"/>
                <input class="nui-hidden" name="pressurevessel.longitudinalwelds" id="pressurevessel.longitudinalwelds"/>
                <input class="nui-hidden" name="pressurevessel.shellgirthwelds" id="pressurevessel.shellgirthwelds"/>
                <input class="nui-hidden" name="pressurevessel.connectingpipes" id="pressurevessel.connectingpipes"/>
                <input class="nui-hidden" name="pressurevessel.safetyvalves" id="pressurevessel.safetyvalves"/>
                <input class="nui-hidden" name="pressurevessel.pressuregauges" id="pressurevessel.pressuregauges"/>
                <input class="nui-hidden" name="pressurevessel.levelgauges" id="pressurevessel.levelgauges"/>
                <input class="nui-hidden" name="pressurevessel.temperatureinstruments" id="pressurevessel.temperatureinstruments"/>
                <input class="nui-hidden" name="pressurevessel.rupturediscs" id="pressurevessel.rupturediscs"/>
                <input class="nui-hidden" name="pressurevessel.supplementaryinfos" id="pressurevessel.supplementaryinfos"/>
                <input class="nui-hidden" name="pressurevessel.equipmenthistoryinfos" id="pressurevessel.equipmenthistoryinfos"/>
                <input class="nui-hidden" name="pressurevessel.equipmentnumber" id="pressurevessel.equipmentnumber"/>
                
                 <input class="nui-hidden" id="equipmentdrawnumberfileid" name="pressurevessel.equipmentdrawnumberfileid"/>
                 
                 <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
		           <legend>
		                <a id="jbxx" onclick="jbxx()">-基本信息</a>
		            </legend>
		            <div id="form0">
                <table style="width:100%;height:95%;table-layout:fixed;" class="nui-form-table">
                    <tr>
                        <td class="form_label">
                            电站:
                        </td>
                        <td colspan="1">
                         <input id="jd" class="nui-combobox" name="pressurevessel.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly"  required="true" emptyText="请选择电站" requiredErrorText="电站不能为空" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" style="width: 100%"/>
                        </td>
                        <td class="form_label">
                            机组:
                        </td>
                        <td colspan="1">
                         <input class="nui-combobox" name="pressurevessel.jz" emptyText="请选择机组" emptyText="请选择机组" required="true" requiredErrorText="机组不能为空" 
                        dataField="jsonObject" id="jz" textField="name" url="" valueField="id" style="width: 100%"/>
                        </td>
                        <td class="form_label">
                            系统:
                        </td>
                        <td colspan="1">
                         <input id="system" required="true" emptyText="请选择系统" requiredErrorText="系统不能为空" class="nui-dictcombobox" dictTypeId="YLRQXT" style="width:100%" name="pressurevessel.system"/>
                        </td>
                    <td class="form_label" rowspan="3">
                             设备图:
                        </td>
                        <td colspan="1" rowspan="3">
                        	<table style="height:100px;width: 100%" align="left">
                        		<tr>
                        			
                        			 <td class="form_label">
					             上传图纸:
					                  </td>
					                  <td colspan="1" id="fileHref" style="display: none">
					                  
					                  </td>
					                  <td colspan="1" id="sbt">
					                  <div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
					                   <div style="display: flex;">
											<input class="nui-textbox" style="width:100%" id="equipmentdrawnumbername" name="pressurevessel.equipmentdrawnumber" />
											<form id="uploadform" enctype="multipart/form-data">
												<input id="equipmentdrawnumber" class="" style="width:100%" type="file" name="pressurevessel.equipmentdrawnumber" accept="*" onchange="fileSub(this)"> 
											</form>
											</div>
                    				  </td>
                        		</tr>
                        		<tr>
                        			
                        			 <td class="form_label">
					             图号:
					                  </td>
					                  <td colspan="1">
				                            <input class="nui-textbox" style="width: 100%" name="pressurevessel.drawingnumber"/>
                    				  </td>
                        		</tr><tr>
                        			
                        			 <td class="form_label">
					            版本:
					                  </td>
					                  <td colspan="1">
				                           <input class="nui-textbox"  style="width: 100%"  name="pressurevessel.equipmentdrawversion"/>
                    				  </td>
                        		</tr>
                        	</table>
                        </td>
                       </tr>
                        <tr>
                        <td class="form_label">
                            设备编号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" id="ssbbh" onvalidation="hasIllegalChar(e,255,true,true)" required="true" emptyText="请输入设备编号" requiredErrorText="设备编号不能为空" style="width:100%"  name="pressurevessel.equipmentnumber" style="width:100%"/>
                        </td>
                        <td class="form_label">
                            设备名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" required="true" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入设备名称" requiredErrorText="设备名称不能为空" style="width:100%" name="pressurevessel.equipmentname" style="width:100%"/>
                        </td>
                        <td class="form_label">
                            版本号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.versionnumber" required="true" emptyText="请输入版本号" requiredErrorText="版本号不能为空" style="width:100%"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            容器类别:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.containercategories" required="true" emptyText="请输入容器类别" requiredErrorText="容器类别不能为空"  style="width:100%"/>
                        </td>
                        <td class="form_label">
                            容器品种:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.containervariety" required="true" emptyText="请输入容器品种" requiredErrorText="容器品种不能为空"  style="width:100%" />
                        </td>
                        <td class="form_label">
                            所在车间分厂:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.workshopbranch" required="true" emptyText="请输入所在车间分厂" requiredErrorText="所在车间分厂不能为空"  style="width:100%"/>
                        </td>
                    </tr>
                    </table>
                    </div>
                    </div>
             </fieldset>
             <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
           <legend>
                <a id="jsxx" onclick="jsxx()">-技术信息</a>
            </legend>
            <div id="form1">
            	<table style="width:100%;height:95%;table-layout:fixed;" class="nui-form-table">
                    <tr>
                        <td class="form_label" colspan="2">
                            容器内径:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.containerinnerdiameter" required="true" emptyText="请输入容器内径" requiredErrorText="容器内径不能为空"  style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                            容器容积:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.containervolume" required="true" emptyText="请输入容器容积" requiredErrorText="容器容积不能为空"  style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                            容器高(长):
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.containerheight" required="true" emptyText="请输入容器高(长)" requiredErrorText="容器高(长)不能为空"  style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                            结构型式:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.structuretype" required="true" emptyText="请输入结构型式" requiredErrorText="结构型式不能为空"  style="width:100%"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label" colspan="2">
                            封头型式:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.headtype" required="true" emptyText="请输入封头型式" requiredErrorText="封头型式不能为空"  style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                            支座型式:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.supportform" required="true" emptyText="请输入支座型式" requiredErrorText="支座型式不能为空"  style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                            壳体重量:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pressurevessel.shellweight" style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                            内件重量:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pressurevessel.innerweight" style="width:100%"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label" colspan="2">
                            充装重量:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pressurevessel.fillingweight" style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                            有无保温绝热:
                        </td>
                        <td colspan="1">
                            <input class="nui-combobox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.whetherthermalinsulation" required="true" valueField="id" textField="text" data="[{id:'是',text:'是'},{id:'否',text:'否'}]" emptyText="请选择有无保温绝热" requiredErrorText="有无保温绝热不能为空"  style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                            工作压力(完程):
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.finishedworkingpressure" style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                            工作压力(管程):
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.tubeprocessworkingpressure" style="width:100%"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label" colspan="2">
                            氧舱测氧方法:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.oxygenmeasurementmethod" style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                            罐车牌号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.tanknumber" style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                            罐车结构型式:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.tankerstructure" style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                            罐车底盘号码:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.tankcarchassisnumber" style="width:100%"/>
                        </td>
                    </tr>
                    <tr>
                    	<td class="form_label" rowspan="4">
                            主体材质:
                        </td>
                        <td class="form_label">
                            筒体:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.bodymaterialcylinder" required="true" emptyText="请输入筒体" requiredErrorText="筒体不能为空"  style="width:100%"/>
                        </td>
                        
		              <td class="form_label" rowspan="4">
		                            主体厚度(mm):
                        </td>
                      <td class="form_label">
                            筒体:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.bodythicknesscylinder" required="true"  emptyText="请输入筒体" requiredErrorText="筒体不能为空"  style="width:100%"/>
                        </td>  
                     <td class="form_label" rowspan="4">
		                            工作介质:
                        </td>
                        <td class="form_label">
                            壳程:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.workingmediumshell" required="true" emptyText="请输入壳程" requiredErrorText="壳程不能为空"  style="width:100%"/>
                        </td>
                        <td class="form_label" rowspan="4">
		               设计压力(Mpa):
                        </td>
                        <td class="form_label">
                            壳程:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.designpressureshellside" required="true" emptyText="请输入壳程" requiredErrorText="壳程不能为空"  style="width:100%"/>
                        </td>
                        
                    </tr>
                    
                    
                    <tr>
                     <td class="form_label">
                            封头:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.bodymaterialhead" required="true" emptyText="请输入封头" requiredErrorText="封头不能为空"  style="width:100%"/>
                        </td>
                        
                        <td class="form_label">
                            封头:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.bodythicknesshead" required="true" emptyText="请输入封头" requiredErrorText="封头不能为空"  style="width:100%"/>
                        </td>
             <td class="form_label">
                            管程:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.workingmediumtube" required="true" emptyText="请输入管程" requiredErrorText="管程不能为空"  style="width:100%"/>
                        </td>           
              <td class="form_label">
                            管程:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.designpressuretube" required="true" emptyText="请输入管程" requiredErrorText="管程不能为空"  style="width:100%"/>
                        </td>           
                    </tr>
                    <tr>
                    <td class="form_label">
                            内衬:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pressurevessel.bodymateriallining" style="width:100%"/>
                        </td>
              <td class="form_label">
                           内衬:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pressurevessel.bodythicknesslining" style="width:100%"/>
                        </td>          
                        
                        <td class="form_label">
                            夹套:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pressurevessel.workingmediumjacket" style="width:100%"/>
                        </td>
                        <td class="form_label">
                           夹套:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pressurevessel.designpressurejacket" style="width:100%"/>
                        </td>
                    </tr>
                    <tr>
                    <td class="form_label">
                            夹套:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pressurevessel.bodymaterialjacket" style="width:100%"/>
                        </td>
                        <td class="form_label">
                            夹套:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pressurevessel.bodythicknessjacket" style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="5">
                        </td>
                      </tr>
                    <tr>
	                     <td class="form_label" rowspan="3">
	                            设计温度(℃):
	                        </td>
                        <td class="form_label">
                            壳程:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.designtemperatureshellside" required="true" emptyText="请输入壳程" requiredErrorText="壳程不能为空"  style="width:100%"/>
                        </td>
                    <td class="form_label" rowspan="3">
	                           工作温度(℃):
	                        </td>
                        <td class="form_label">
                            壳程:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.worktemperatureshellside" required="true" emptyText="请输入壳程" requiredErrorText="壳程不能为空"  style="width:100%"/>
                        </td>
                       <td class="form_label" rowspan="3">
	                           腐蚀裕量:
	                        </td>  
                        <td class="form_label">
                            筒体:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.corrosionmargincylinder" required="true" emptyText="请输入筒体" requiredErrorText="筒体不能为空"  style="width:100%"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            管程:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.designtemperaturetube" required="true" emptyText="请输入管程" requiredErrorText="管程不能为空"  style="width:100%"/>
                        </td>
                        <td class="form_label">
                            管程:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.worktemperaturetube" required="true" emptyText="请输入管程" requiredErrorText="管程不能为空"  style="width:100%"/>
                        </td>
                        <td class="form_label">
                           封头:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" name="pressurevessel.corrosionmarginhead" required="true" emptyText="请输入封头" requiredErrorText="封头不能为空"  style="width:100%"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            夹套:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pressurevessel.designtemperaturejacket" style="width:100%"/>
                        </td>
                        <td class="form_label">
                            夹套:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pressurevessel.worktemperaturejacket" style="width:100%"/>
                        </td>
                        <td class="form_label" colspan="2">
                        </td>
                        </tr>
                    <input class="nui-hidden" name="pressurevessel.isdel" value="0"/>
                </table>
                </div>
                 </fieldset>
            </div>
       
    <!-- <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;"> -->
		           <legend>
		                <a id="bwxx" onclick="bwxx()">-部位信息</a>
		            </legend>
        
       <div id="form3">
        <!-- 从表的修改 -->
        		<div title="壳体纵焊缝">
        			<div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:10%;" >
                                    壳体纵焊缝
                                </td>
                                <td >
                                    <a class="nui-button " id="add0" onclick="gridAddRow('grid_0')"  tooltip="增加">
                                       		 增加&nbsp;
                                    </a>
                                    <a class="nui-button " id="del0" onclick="gridRemoveRow('grid_0')"  tooltip="删除">
                                        		删除&nbsp;
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    
                    <div id="grid_0" class="nui-datagrid" style="width:100%;height:150px;" sortField="slweldnumber" sortOrder="asc" showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" allowCellValid="true" oncellvalidation="onCellValidation">
                        <div property="columns">
                             <div type="indexcolumn"></div>
                             <div type="checkcolumn">
                            </div>
                             <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                            <div field="slweldnumber" allowSort="true" align="left" headerAlign="center" width="">
                                壳体纵焊缝编号
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="slweldnumber" property="editor"/>
                            </div>
                            <div field="slweldparameters" allowSort="true" align="left" headerAlign="center" width="">
                                壳体纵焊缝特性参数
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="slweldparameters" property="editor"/>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div title="壳体环焊缝">
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:10%;">
                                    壳体环焊缝
                                </td>
                                <td >
                                    <a class="nui-button " id="add1" onclick="gridAddRow('grid_1')"  tooltip="增加">
                                       		 增加&nbsp;
                                    </a>
                                    <a class="nui-button " id="del1" onclick="gridRemoveRow('grid_1')"  tooltip="删除">
                                        		删除&nbsp;
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="grid_1" class="nui-datagrid" style="width:100%;height:150px;" sortField="sgweldnumber" sortOrder="asc" showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" allowCellValid="true" oncellvalidation="onCellValidation">
                        <div property="columns">
                             <div type="indexcolumn"></div>
                             <div type="checkcolumn">
                            </div>
                             <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                            <div field="sgweldnumber" allowSort="true" align="left" headerAlign="center" width="">
                                壳体环焊缝编号
                                <input class="nui-textbox" enabled="true" onvalidation="hasIllegalChar(e,255,false,true)" name="sgweldnumber" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="srweldparameters" allowSort="true" align="left" headerAlign="center" width="">
                                壳体环焊缝特性参数
                                <input class="nui-textbox" enabled="true" onvalidation="hasIllegalChar(e,255,false,true)" name="srweldparameters" property="editor" required="false" visible="true"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div title="连接管道">
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:10%;">
                                    连接管道
                                </td>
                                <td >
                                    <a class="nui-button " id="add2" onclick="gridAddRow('grid_2')"  tooltip="增加">
                                       		 增加&nbsp;
                                    </a>
                                    <a class="nui-button " id="del2" onclick="gridRemoveRow('grid_2')"  tooltip="删除">
                                        		删除&nbsp;
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="grid_2" class="nui-datagrid" style="width:100%;height:150px;" sortField="connectpipenumber" sortOrder="asc" showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" allowCellValid="true" oncellvalidation="onCellValidation">
                        <div property="columns">
                             <div type="indexcolumn"></div>
                             <div type="checkcolumn">
                            </div>
                             <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                            <div field="connectpipenumber" allowSort="true" align="left" headerAlign="center" width="">
                                连接管道编号
                                <input class="nui-textbox" enabled="true" onvalidation="hasIllegalChar(e,255,false,true)" name="connectpipenumber" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="connectpipeparameter" allowSort="true" align="left" headerAlign="center" width="">
                                连接管道特性参数
                                <input class="nui-textbox" enabled="true" onvalidation="hasIllegalChar(e,255,false,true)" name="connectpipeparameter" property="editor" required="false" visible="true"/>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
         <!--      </fieldset>
           	 <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;"> -->
		           <legend>
		                 <a id="aqfjjyb" onclick="aqfjjyb()">-安全附件及仪表</a>
		            </legend>
           		
           		 <div id="form4">
                <div title="安全阀">
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:10%;">
                                    安全阀 
                                </td>
                                <td >
                                    <a class="nui-button " id="add3" onclick="gridAddRow('grid_3')"  tooltip="增加">
                                       		 增加&nbsp;
                                    </a>
                                    <a class="nui-button " id="del3" onclick="gridRemoveRow('grid_3')"  tooltip="删除">
                                        		删除&nbsp;
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="grid_3" class="nui-datagrid" style="width:100%;height:150px;" sortField="svnumber" sortOrder="asc" showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" allowCellValid="true" oncellvalidation="onCellValidation">
                        <div property="columns">
                             <div type="indexcolumn"></div>
                             <div type="checkcolumn">
                            </div>
                             <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                            <div field="svnumber" allowSort="true" align="left" headerAlign="center" width="">
                                安全阀编号
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="svnumber" property="editor"/>
                            </div>
                            <div field="svmodel" allowSort="true" align="left" headerAlign="center" width="">
                                安全阀型号
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="svmodel" property="editor"/>
                            </div>
                            <div field="svinstallationlocation" allowSort="true" align="left" headerAlign="center" width="">
                                安全阀安装位置
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="svinstallationlocation" property="editor"/>
                            </div>
                            <div field="svsettingpressure" allowSort="true" align="left" headerAlign="center" width="">
                                安全阀整定压力
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="svsettingpressure" property="editor"/>
                            </div>
                            <div field="svnominalpressure" allowSort="true" align="left" headerAlign="center" width="">
                                安全阀公称压力
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="svnominalpressure" property="editor"/>
                            </div>
                            <div field="svopeningpressure" allowSort="true" align="left" headerAlign="center" width="">
                                安全阀开启压力
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="svopeningpressure" property="editor"/>
                            </div>
                            <div field="svsealingpressure" allowSort="true" align="left" headerAlign="center" width="">
                                安全阀密封压力
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="svsealingpressure" property="editor"/>
                            </div>
                            <div field="svnominaldiameter" allowSort="true" align="left" headerAlign="center" width="">
                                安全阀公称通径
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="svnominaldiameter" property="editor"/>
                            </div>
                            <div field="svquantity" allowSort="true" align="left" headerAlign="center" width="">
                                安全阀数量
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="svquantity" property="editor"/>
                            </div>
                            <div field="svmanufacturer" allowSort="true" align="left" headerAlign="center" width="">
                                安全阀制造厂家
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="svmanufacturer" property="editor"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div title="压力表">
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:10%;">
                                    压力表
                                </td>
                                <td >
                                   <a class="nui-button " id="add4" onclick="gridAddRow('grid_4')"  tooltip="增加">
                                       		 增加&nbsp;
                                    </a>
                                    <a class="nui-button " id="del4" onclick="gridRemoveRow('grid_4')"  tooltip="删除">
                                        		删除&nbsp;
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="grid_4" class="nui-datagrid" style="width:100%;height:150px;" sortField="pgnumber" sortOrder="asc" showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" allowCellValid="true" oncellvalidation="onCellValidation">
                        <div property="columns">
                             <div type="indexcolumn"></div>
                             <div type="checkcolumn">
                            </div>
                             <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                            <div field="pgnumber" allowSort="true" align="left" headerAlign="center" width="">
                                压力表编号
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pgnumber" property="editor"/>
                            </div>
                            <div field="pgmodel" allowSort="true" align="left" headerAlign="center" width="">
                                压力表型号
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pgmodel" property="editor"/>
                            </div>
                            <div field="pggerange" allowSort="true" align="left" headerAlign="center" width="">
                                压力表量程
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pggerange" property="editor"/>
                            </div>
                            <div field="pginstallationlocation" allowSort="true" align="left" headerAlign="center" width="">
                                压力表安装位置
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pginstallationlocation" property="editor"/>
                            </div>
                            <div field="pgaccuracy" allowSort="true" align="left" headerAlign="center" width="">
                                压力表精度(误差)
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pgaccuracy" property="editor"/>
                            </div>
                            <div field="pgquantity" allowSort="true" align="left" headerAlign="center" width="">
                                压力表数量
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pgquantity" property="editor"/>
                            </div>
                            <div field="pgmanufacturer" allowSort="true" align="left" headerAlign="center" width="">
                                压力表制造厂家
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="pgmanufacturer" property="editor"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div title="液位计">
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:10%;">
                                    液位计
                                </td>
                                <td >
                                    <a class="nui-button " id="add5" onclick="gridAddRow('grid_5')"  tooltip="增加">
                                       		 增加&nbsp;
                                    </a>
                                    <a class="nui-button " id="del5" onclick="gridRemoveRow('grid_5')"  tooltip="删除">
                                        		删除&nbsp;
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="grid_5" class="nui-datagrid" style="width:100%;height:150px;" sortField="lgnumber" sortOrder="asc"  showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" allowCellValid="true" oncellvalidation="onCellValidation">
                        <div property="columns">
                             <div type="indexcolumn"></div>
                             <div type="checkcolumn">
                            </div>
                             <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                            <div field="lgnumber" allowSort="true" align="left" headerAlign="center" width="">
                                液位计编号
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="lgnumber" property="editor"/>
                            </div>
                            <div field="lgmodel" allowSort="true" align="left" headerAlign="center" width="">
                                液位计型号
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="lgmodel" property="editor"/>
                            </div>
                            <div field="lggerange" allowSort="true" align="left" headerAlign="center" width="">
                                液位计量程
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="lggerange" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="lginstallationlocation" allowSort="true" align="left" headerAlign="center" width="">
                                液位计安装位置
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="lginstallationlocation" property="editor"/>
                            </div>
                            <div field="lgaccuracy" allowSort="true" align="left" headerAlign="center" width="">
                                液位计精度(误差)
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="lgaccuracy" property="editor"/>
                            </div>
                            <div field="lgquantity" allowSort="true" align="left" headerAlign="center" width="">
                                液位计数量
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="lgquantity" property="editor"/>
                            </div>
                            <div field="lgmanufacturer" allowSort="true" align="left" headerAlign="center" width="">
                                液位计制造厂家
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="lgmanufacturer" property="editor"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div title="测温仪表">
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:10%;">
                                     测温仪表
                                </td>
                                <td >
                                   <a class="nui-button " id="add6"onclick="gridAddRow('grid_6')"  tooltip="增加">
                                       		 增加&nbsp;
                                    </a>
                                    <a class="nui-button " id="del6" onclick="gridRemoveRow('grid_6')"  tooltip="删除">
                                        		删除&nbsp;
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="grid_6" class="nui-datagrid" style="width:100%;height:150px;" sortField="tinumber" sortOrder="asc"  showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" allowCellValid="true" oncellvalidation="onCellValidation">
                        <div property="columns">
                             <div type="indexcolumn"></div>
                             <div type="checkcolumn">
                            </div>
                             <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                            <div field="tinumber" allowSort="true" align="left" headerAlign="center" width="">
                                测温仪表编号
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="tinumber" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="timodel" allowSort="true" align="left" headerAlign="center" width="">
                                测温仪表型号
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="timodel" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="tigerange" allowSort="true" align="left" headerAlign="center" width="">
                                测温仪表量程
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="tigerange" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="tiinstallationlocation" allowSort="true" align="left" headerAlign="center" width="">
                                测温仪表安装位置
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="tiinstallationlocation" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="tiaccuracy" allowSort="true" align="left" headerAlign="center" width="">
                                测温仪表精度(误差)
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="tiaccuracy" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="tiquantity" allowSort="true" align="left" headerAlign="center" width="">
                                测温仪表数量
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="tiquantity" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="timanufacturer" allowSort="true" align="left" headerAlign="center" width="">
                                测温仪表制造厂家
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="timanufacturer" property="editor" required="false" visible="true"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div title="爆破片">
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:10%;">
                                    爆破片
                                </td>
                                <td >
                                    <a class="nui-button " id="add7" onclick="gridAddRow('grid_7')"  tooltip="增加">
                                       		 增加&nbsp;
                                    </a>
                                    <a class="nui-button " id="del7" onclick="gridRemoveRow('grid_7')"  tooltip="删除">
                                        		删除&nbsp;
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="grid_7" class="nui-datagrid" style="width:100%;height:150px;" sortField="rdnumber" sortOrder="asc" showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" allowCellValid="true" oncellvalidation="onCellValidation">
                        <div property="columns">
                             <div type="indexcolumn"></div>
                             <div type="checkcolumn">
                            </div>
                           	 <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        	</div>
                            <div field="rdnumber" allowSort="true" align="left" headerAlign="center" width="">
                                爆破片编号
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="rdnumber" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="rdmodel" allowSort="true" align="left" headerAlign="center" width="">
                                爆破片型号
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="rdmodel" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="rdgerange" allowSort="true" align="left" headerAlign="center" width="">
                                爆破片量程
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="rdgerange" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="rdinstallationlocation" allowSort="true" align="left" headerAlign="center" width="">
                                爆破片安装位置
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="rdinstallationlocation" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="rdaccuracy" allowSort="true" align="left" headerAlign="center" width="">
                                爆破片精度(误差)
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="rdaccuracy" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="rdquantity" allowSort="true" align="left" headerAlign="center" width="">
                                爆破片数量
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="rdquantity" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="rdmanufacturer" allowSort="true" align="left" headerAlign="center" width="">
                                爆破片制造厂家
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="rdmanufacturer" property="editor" required="false" visible="true"/>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
  			<!-- 	</fieldset>               -->
             <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
		           <legend>
		                <a id="fzxx" onclick="fzxx()">-辅助信息</a>
		            </legend>
		            <div id="form2">
                <table style="width:100%;height:95%;table-layout:fixed;" class="nui-form-table">
                <input class="nui-hidden" name="uuid"/>
                    <tr>
                        <td class="form_label">
                            注册登记机构:
                        </td>
                        <td colspan="1">
                        	<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="registrationauthority" style="width:100%" />
                        </td>
                        <td class="form_label">
                            注册登记日期:
                        </td>
                        <td colspan="1">
                         <input class="nui-datepicker" onvalidation="hasIllegalChar(e,255,false,true)" format="yyyy-MM-dd" name="registrationdate" style="width:100%" />
                        </td>
                        <td class="form_label">
                            设备注册代码:
                        </td>
                        <td colspan="1">
							<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="deviceregistrationcode" style="width:100%" />
                        </td>
                    	<td class="form_label">
                              注册登记人员:
                        </td>
                    	<td colspan="1">
                    		<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="registrant" style="width:100%" />
                    	</td>
        		</tr>
        		
        		<tr>
                        <td class="form_label">
                          使用单位:
                        </td>
                        <td colspan="1">
                        	<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="useunit" style="width:100%" />
                        </td>
                        <td class="form_label">
                             使用单位组织机构代码:
                        </td>
                        <td colspan="1">
                         <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="useorganizationcode" style="width:100%" />
                        </td>
                        <td class="form_label">
                            使用单位地址:
                        </td>
                        <td colspan="1">
							<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="useunitaddress" style="width:100%" />
                        </td>
                    	<td class="form_label">
                               邮政编码:
                        </td>
                    	<td colspan="1">
                    		<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="postalcode" style="width:100%" />
                    	</td>
        		</tr>
        		<tr>
                        <td class="form_label">
                           安全管理部门:
                        </td>
                        <td colspan="1">
                        	<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="safetymanagementdepartment" style="width:100%" />
                        </td>
                        <td class="form_label">
                            安全管理人员:
                        </td>
                        <td colspan="1">
                         <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="securitymanager" style="width:100%" />
                        </td>
                        <td class="form_label">
                              联系电话:
                        </td>
                        <td colspan="1">
							<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="contactnumber" style="width:100%" />
                        </td>
                    	<td class="form_label">
                                使用登记证编号:
                        </td>
                    	<td colspan="1">
                    		<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="useregistrationnumber" style="width:100%" />
                    	</td>
        		</tr>
        		<tr>
                        <td class="form_label">
                           出厂编号:
                        </td>
                        <td colspan="1">
                        	<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="serialnumber" style="width:100%" />
                        </td>
                        <td class="form_label">
                           更新日期:
                        </td>
                        <td colspan="1">
                         <input class="nui-datepicker" format="yyyy-MM-dd" name="updatedateday" style="width:100%" />
                        </td>
                        <td class="form_label">
                              产权单位及代码:
                        </td>
                        <td colspan="1">
							<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="propertyunitandcode" style="width:100%" />
                        </td>
                    	<td class="form_label">
                                 制造国:
                        </td>
                    	<td colspan="1">
                    		<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="manufacturecountry" style="width:100%" />
                    	</td>
        		</tr>
        		<tr>
                        <td class="form_label">
                           制造日期:
                        </td>
                        <td colspan="1">
                        	<input class="nui-datepicker" format="yyyy-MM-dd" name="manufacturedate" style="width:100%" />
                        </td>
                        <td class="form_label">
                           设计单位及代码:
                        </td>
                        <td colspan="1">
                         <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="designunitandcode" style="width:100%" />
                        </td>
                        <td class="form_label">
                              设计日期:
                        </td>
                        <td colspan="1">
							<input class="nui-datepicker" format="yyyy-MM-dd" name="designdate" style="width:100%" />
                        </td>
                    	<td class="form_label">
                               设计规范:
                        </td>
                    	<td colspan="1">
                    		<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="designspecification" style="width:100%" />
                    	</td>
        		</tr>
        		<tr>
                        <td class="form_label">
                               制造单位以及代码:
                        </td>
                        <td colspan="1">
                        	<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="manufacturingunitandcode" style="width:100%" />
                        </td>
                        <td class="form_label">
                             承担单位组织机构代码:
                        </td>
                        <td colspan="1">
                         <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="undertakingorganizationcode" style="width:100%" />
                        </td>
                        <td class="form_label">
                              制造规范:
                        </td>
                        <td colspan="1">
							<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="manufacturingspecification" style="width:100%" />
                        </td>
                    	<td class="form_label">
                               安装单位及代码:
                        </td>
                    	<td colspan="1">
                    		<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="installationunitandcode" style="width:100%" />
                    	</td>
        		</tr>
        		<tr>
                        <td class="form_label">
                               安装日期:
                        </td>
                        <td colspan="1">
                        	<input class="nui-datepicker" format="yyyy-MM-dd" name="installationdate" style="width:100%" />
                        </td>
                        <td class="form_label">
                             投用日期:
                        </td>
                        <td colspan="1">
                         <input class="nui-datepicker" format="yyyy-MM-dd" name="usedate" style="width:100%" />
                        </td>
                        <td class="form_label">
                              监督单位及代码:
                        </td>
                        <td colspan="1">
							<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="supervisoryunitandcode" style="width:100%" />
                        </td>
                    	<td class="form_label">
                               检验单位:
                        </td>
                    	<td colspan="1">
                    		<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="inspectionentity" style="width:100%" />
                    	</td>
        		</tr>
        		<tr>
                        <td class="form_label">
                               检验单位代码:
                        </td>
                        <td colspan="1">
                        	<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="inspectionunitcode" style="width:100%" />
                        </td>
                        <td class="form_label">
                             检验日期:
                        </td>
                        <td colspan="1">
                         <input class="nui-datepicker" format="yyyy-MM-dd" name="inspectiondate" style="width:100%" />
                        </td>
                        <td class="form_label">
                              检验类别:
                        </td>
                        <td colspan="1">
							<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="identifycategory" style="width:100%" />
                        </td>
                    	<td class="form_label">
                                主要问题:
                        </td>
                    	<td colspan="1">
                    		<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="mainproblem" style="width:100%" />
                    	</td>
        		</tr>
        		<tr>
                        <td class="form_label">
                               检验结论:
                        </td>
                        <td colspan="1">
                        	<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="testresults" style="width:100%" />
                        </td>
                        <td class="form_label">
                              报告书编号:
                        </td>
                        <td colspan="1">
                         <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="reportnumber" style="width:100%" />
                        </td>
                        <td class="form_label">
                              下次检验日期:
                        </td>
                        <td colspan="1">
							<input class="nui-datepicker" format="yyyy-MM-dd" name="nextinspectiondate" style="width:100%" />
                        </td>
                    	<td class="form_label">
                                事故类别:
                        </td>
                    	<td colspan="1">
                    		<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="accidentcategory" style="width:100%" />
                    	</td>
        		</tr>
        		<tr>
                        <td class="form_label">
                                事故发生日期:
                        </td>
                        <td colspan="1">
                        	<input class="nui-datepicker" format="yyyy-MM-dd" name="accidentdate" style="width:100%" />
                        </td>
                        <td class="form_label">
                              事故处理:
                        </td>
                        <td colspan="1">
                         <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="accidenthandling" style="width:100%" />
                        </td>
                        <td class="form_label">
                              设备变更方式:
                        </td>
                        <td colspan="1">
							<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="devicechangemethod" style="width:100%" />
                        </td>
                    	<td class="form_label">
                               设备变更项目:
                        </td>
                    	<td colspan="1">
                    		<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="equipmentchangeproject" style="width:100%" />
                    	</td>
        		</tr>
        		<tr>
                        <td class="form_label">
                                 设备变更日期:
                        </td>
                        <td colspan="1">
                        	<input class="nui-datepicker" format="yyyy-MM-dd" name="equipmentchangedate" style="width:100%" />
                        </td>
                        <td class="form_label">
                             变更承担单位:
                        </td>
                        <td colspan="1">
                         <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="changecommitmentunit" style="width:100%" />
                        </td>
        		</tr>
        		
        	</table>
        	</div>
        	</fieldset>
        	<!-- 	 <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;"> -->
		           <legend>
		                <a id="sbls" onclick="sbls()">-设备历史信息</a>
		            </legend>
        	 
        	 
        	<div title="设备历史信息" id="form5">
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:10%;">
                                   		 设备历史信息
                                </td>
                                <td >
                                   <a class="nui-button " id="add8" onclick="gridAddRow('grid_8')"  tooltip="增加">
                                       		 增加&nbsp;
                                    </a>
                                    <a class="nui-button " id="del8" onclick="gridRemoveRow('grid_8')"  tooltip="删除">
                                        		删除&nbsp;
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="grid_8" class="nui-datagrid" style="width:100%;height:150px;" sortField="enteringtime" sortOrder="desc" showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" onCellBeginEdit="onCellBeginEdit">
                        <div property="columns">
                             <div type="indexcolumn"></div>
                             <div type="checkcolumn">
                            </div>
                            <div field="deviceversion" allowSort="true" align="left" headerAlign="center" width="">
                                设备版本
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="deviceversion" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="commissiontime" allowSort="true" align="left" headerAlign="center" width="" dateFormat="yyyy-MM-dd">
                                投运时间				<input property="editor" class="nui-datepicker" name="commissiontime" style="width:100%;"/>
                            </div>
                            <div field="freezereplacetime" allowSort="true" align="left" headerAlign="center" width="" dateFormat="yyyy-MM-dd">
                                冻结/更换时间	<input property="editor" class="mini-datepicker" name="freezereplacetime" style="width:100%;"/>
                            </div>
                            <div field="freezereplacereason" allowSort="true" align="left" headerAlign="center" width="">
                                冻结/更换原因
                                <input class="nui-textbox" enabled="true" name="freezereplacereason" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="enteringperson" allowSort="true" align="left" headerAlign="center" width="">
                                录入人
                                <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" enabled="true" name="enteringperson" property="editor" required="false" visible="true"/>
                            </div>
                            <div field="enteringtime" allowSort="true" align="left" headerAlign="center" width=""  dateFormat="yyyy-MM-dd">
                                录入时间
                                <input property="editor" class="mini-datepicker" name="enteringtime" style="width:100%;"/>
                            </div>
                            <div field="fj" allowSort="true" align="left" headerAlign="center" width=""  renderer="setFile">
                                附件				 <input type="file" id="fj" name="file" multiple onchange="uploadFile(event,id)" /> 	
                               <!--  <input class="nui-textbox" enabled="true" name="fj" property="editor" required="false" visible="true"/> -->
                            </div>
                            <div field="operating" allowSort="true" align="left" headerAlign="center" width="">
                                操作
                                <input class="nui-textbox" enabled="true" name="operating" property="editor" required="false" visible="true"/>
                            </div>
                        </div>
                    </div>
                </div>
           <!--  </fieldset> -->
            <table id="form_sh">
	             <tr class="changeReasons" style="display: none;">
				<td class="form_label">校核人员</td>
						 <td colspan="3">
	                        <input  class="nui-buttonedit" onvalidation="hasIllegalChar(e,4000,true,true)" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
	                    </td>
					</tr>
					<tr  class="changeReasons">
					<td class="form_label" colspan="1"
						style="width: 16% !important; text-align: center">选择抄送人员:</td>
					<td colspan="3"><input property="editor" name="ccry" id="ccry" multi="true"
						name="copyperson" class="nui-textboxlist" dataField="list"
						style="width: 100%; height: 100%;"
						url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
						valueField="empcode" textField="empcodename" ScrollBar="Vertical"
						searchField="keyword" /></td>
				</tr>
			</table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
	                    <a class="nui-button" id="btnSubmit" onclick="onSubmit()">
	                        提交
	                    </a>
	                    <span style="display:inline-block;width:25px;">
		                            </span>
	                    <a class="nui-button"  onclick="onDelete()" id="btnSave">
	                   	作废
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
           var equipmentdrawnumberfileid="";
           var processInstId =nui.get("processInstId").getValue();
            var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
            if(isadmin == "true"){
            		
							$(".changeReasons").hide();
						}else{
							$(".changeReasons").show();
						}
            getTs();
			var pressurevessel;
			function getTs(){
				var form = new nui.Form("#form_1");//将普通form转为nui的form
				var json=nui.encode({processInstId:processInstId,entityType:"com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif"});
				$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",//该方法可复用
				type : 'POST',
				data : json,
				async :false,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
				
					pressurevessel=text.data;
				}
			});
			}
			getPressurevessel();
			function getPressurevessel(){
				var form = new nui.Form("#form_1");//将普通form转为nui的form
				var form1 = new nui.Form("#form1");
				var form2 = new nui.Form("#form2");
				
				var json=nui.encode({processInstId:processInstId,pressurevessel:pressurevessel});
				$.ajax({
				url : "com.cgn.itmp.conventionalislandand.pressurevesselbiz.getPressurevesselWork.biz.ext",//该方法可复用
				type : 'POST',
				data : json,
				async :false,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
				 var jdid = text.pressurevessel.jd;
					nui.get('jz').setAjaxType("POST");
					nui.get('jz').load("com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="+ jdid);
				  var grid0Data = text.pressurevessel.longitudinalwelds;
					nui.get("grid_0").setData(grid0Data);
					 var grid1Data = text.pressurevessel.shellgirthwelds;
					nui.get("grid_1").setData(grid1Data);
					 var grid2Data = text.pressurevessel.connectingpipes;
					nui.get("grid_2").setData(grid2Data);
					 var grid3Data = text.pressurevessel.safetyvalves;
					nui.get("grid_3").setData(grid3Data);
					 var grid4Data = text.pressurevessel.pressuregauges;
					nui.get("grid_4").setData(grid4Data);
					 var grid5Data = text.pressurevessel.levelgauges;
					nui.get("grid_5").setData(grid5Data);
					 var grid6Data = text.pressurevessel.temperatureinstruments;
					nui.get("grid_6").setData(grid6Data);
					 var grid7Data = text.pressurevessel.rupturediscs;
					nui.get("grid_7").setData(grid7Data);
					 var grid8Data = text.pressurevessel.equipmenthistoryinfos;
					nui.get("grid_8").setData(grid8Data);
					
						obj = nui.decode(text);
						form.setData(obj);
						form.setChanged(false);
						form1.setData(obj);
						form1.setChanged(false);
						if(typeof(text.pressurevessel.supplementaryinfos)!="undefined"){
						form2.setData(nui.decode(text.pressurevessel.supplementaryinfos[0]));
						form2.setChanged(false);
						}
// 					nui.get("jhry").setValue(text.pressurevessel.jhry);
// 						nui.get("jhry").setText(text.pressurevessel.jhry);
// 					nui.get("ccry").setValue(text.pressurevessel.ccry);
// 					nui.get("ccry").setText(text.pressurevessel.ccry);
				
					nui.get("grid_0").sortBy("slweldnumber","asc");
					nui.get("grid_1").sortBy("sgweldnumber","asc");
					nui.get("grid_2").sortBy("connectpipenumber","asc");
					nui.get("grid_3").sortBy("svnumber","asc");
					nui.get("grid_4").sortBy("pgnumber","asc");
					nui.get("grid_5").sortBy("lgnumber","asc");
					nui.get("grid_6").sortBy("tinumber","asc");
					nui.get("grid_7").sortBy("rdnumber","asc");
					nui.get("grid_8").sortBy("enteringtime","desc");
					var editable = nui.get('editable').getValue();//已办				
					if(editable=='false'||'<%=username%>'!= text.pressurevessel.applicant){
						readtable();
					}
				}
			});
			}	
			
			
			function readtable(){
				$('#btnSubmit').hide();
		         $('#btnSave').hide();
				$('#add0').hide();
		         $('#del0').hide();
				$('#add1').hide();
		         $('#del1').hide();
				$('#add2').hide();
		         $('#del2').hide();
				$('#add3').hide();
		         $('#del3').hide();
				$('#add4').hide();
		         $('#del4').hide();
				$('#add5').hide();
		         $('#del5').hide();
				$('#add6').hide();
		         $('#del6').hide();
				$('#add7').hide();
		         $('#del7').hide();
				$('#add8').hide();
		         $('#del8').hide();
		         $('.changeReasons').hide();
		         nui.get("grid_0").allowCellEdit=false;
				 nui.get("grid_1").allowCellEdit=false;
				 nui.get("grid_2").allowCellEdit=false;
				 nui.get("grid_3").allowCellEdit=false;
		         nui.get("grid_4").allowCellEdit=false;
				 nui.get("grid_5").allowCellEdit=false;
				 nui.get("grid_6").allowCellEdit=false;
				 nui.get("grid_7").allowCellEdit=false;
				 nui.get("grid_8").allowCellEdit=false;
		         nui.get("grid_0").hideColumn(1);
		         nui.get("grid_1").hideColumn(1);
		         nui.get("grid_2").hideColumn(1);
		         nui.get("grid_3").hideColumn(1);
		         nui.get("grid_4").hideColumn(1);
		         nui.get("grid_5").hideColumn(1);
		         nui.get("grid_6").hideColumn(1);
		         nui.get("grid_7").hideColumn(1);
		         nui.get("grid_8").hideColumn(1);
		    		fileHref();
		    		setEna();
			         labelModel();
		
		}
			//已办只读		
		
		//文本只读模式
		function labelModel(isEdit) {
            var dataform1 = new nui.Form("#dataform1");
            var form_sh = new nui.Form("#form_sh");
            var form1 = new nui.Form("#form1");
            var form2 = new nui.Form("#form2");
            var fields = dataform1.getFields();                
            var fields1 = form_sh.getFields();
            var fields2 = form1.getFields();                
            var fields3 = form2.getFields();
             for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
            for (var i = 0, l = fields1.length; i < l; i++) {
                var s = fields1[i];
                if (s.setReadOnly) s.setReadOnly(true);     //只读
                if (s.setIsValid) s.setIsValid(true);      //去除错误提示
                if (s.addCls) s.addCls("asLabel");          //增加asLabel外观
            }                
            for (var i = 0, l = fields2.length; i < l; i++) {
                var c = fields2[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
            for (var i = 0, l = fields3.length; i < l; i++) {
                var s = fields3[i];
                if (s.setReadOnly) s.setReadOnly(true);     //只读
                if (s.setIsValid) s.setIsValid(true);      //去除错误提示
                if (s.addCls) s.addCls("asLabel");          //增加asLabel外观
            }
        }	
            //设置文件下载
       function setEna(){
       	document.getElementById("fileHref").style.display="";
    		document.getElementById("sbt").style.display="none";
       }  
		function fileHref(){
			 var div = document.getElementById('fileHref');
			var fileRealName = nui.get('equipmentdrawnumbername').value;//eommfile
			var fileId = nui.get('equipmentdrawnumberfileid').value;//eommfileid
			if(fileRealName!=""&&fileId!=""){
		 		div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			}
		}
		
		function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
	         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
	         document.body.appendChild(elemIF);
	         elemIF.style.display = "none";
		}
            
            
            
			var file;
		
			
			
            var tab = nui.get("tab");
            var form = new nui.Form("#dataform1");
            form.setChanged(false);
			
			window.alert=function(){
				return false;
			}
			
			//自定验证-------------------------
			//必填项校验
         function onCellValidation(e) {
//             if (e.field == "slweldnumber"||e.field == "slweldparameters" 
//             ||e.field == "sgweldnumber"||e.field == "srweldparameters" 
//             ||e.field == "connectpipenumber"||e.field == "connectpipeparameter" 
//             ||e.field == "svnumber"||e.field == "svmodel" 
//             ||e.field == "pgnumber"||e.field == "pgmodel" 
//             ||e.field == "lgnumber"||e.field == "lgmodel" 
//             ||e.field == "tinumber"||e.field == "timodel" 
//             ||e.field == "rdnumber"||e.field == "rdmodel" 
//             ) {
//                if (e.value == null || e.value == "") {
//                     e.isValid = false;
//                     e.errorText = "必填字段不能为空";
//                 }
//             }
            
//             if(e.value != null && e.value != ""){
// 	         if(hasIllegalCharNew(e.value)){
// 	         	var newData = cleanData(this.data,e.field,e.row._id);
// 				this.setData(newData);	         
// 	         	nui.alert("含有非法字符,请检查输入的内容");
// 	    		return;
// 	         }
//             }
        }
			 function onCellBeginEdit(e) {
                    	
                        var field = e.field, value = e.value;
                        
                        if (field == "fj") {
                           file = e;
                        }
                    }
                    
                    //预览页面附件显示
                 function setFile(e) {
                     var fileRealName = e.record.fj;
                     
                     var fileId = e.record.fildid;
                     if (fileRealName == null || fileRealName == 'null') {
                         return "";
                     }
                     var html = '<a href="com.cgn.itmp.basecommon.fileDownload.flow?fileId='+fileId+'" >' + fileRealName + '</a>';
                     return html;
                 }
                 //上传成功时，回写附件的name、id
                    function onUploadSuccess(e) {
                    
                 		fileName = e.file.name;
                 		filePath = nui.decode(e.serverData).ret.filePath;
                 		var json = {};
                 		json.filename = fileName;
                 		json.filepath = filePath;
                 		json = nui.encode(json);
                 		$.ajax({
                            url: "com.cgn.itmp.basecommon.FileComp.addFile.biz.ext",
                            type: 'POST',
                            data: json,
                            cache: false,
                            contentType: 'text/json',
                            success: function (text) {
                            	file.record.fildid = text.fileid;
                            }
                        });
                    }
                     //选择文件
		function onfileselect(e) {
			startUpload(e);
		}
		//上传
		function startUpload(e) {
			var fileupload = e.sender;
			fileupload.startUpload();
		}
// 		//上传成功时，回写附件的name、id
		function onUploadSuccess1(e) {
			var appIconName = e.file.name;
			var appIconPath = nui.decode(e.serverData).ret.filePath;
			if(e.sender.id=="fileName1"){
				nui.get("fpath1").setValue(appIconPath);
				nui.get("fname1").setValue(appIconName);
				nui.get("fpath").setValue(appIconPath);
			}
		}
			//自定结束标志-------------------------------------------
            function onOk(finishFirstActivityId){
                saveData(finishFirstActivityId);
            }

            function gridAddRow(datagrid){
                var grid = nui.get(datagrid);
                grid.addRow({});
            }

            function gridRemoveRow(datagrid) {
                var grid = nui.get(datagrid);
                var rows = grid.getSelecteds();
                if (rows.length > 0) {
                    grid.removeRows(rows, true);
                }
            }

            function setGridData(datagrid,dataid){
                var grid = nui.get(datagrid);
                var grid_data = grid.getData();
                nui.get(dataid).setValue(grid_data);
            }
			
			 function onSubmit(){
            	var grid0 = nui.get("grid_0");
            	 var grid1 = nui.get("grid_1");
            	 var grid2 = nui.get("grid_2");
            	 var grid3 = nui.get("grid_3");
            	 var grid4 = nui.get("grid_4");
            	 var grid5 = nui.get("grid_5");
            	 var grid6 = nui.get("grid_6");
            	 var grid7 = nui.get("grid_7");
            	 var grid8 = nui.get("grid_8");
            	 var gd0columns=grid0.data;
            	 var gd1columns=grid1.data;
            	 var gd2columns=grid2.data;
            	 var gd3columns=grid3.data;
            	 var gd4columns=grid4.data;
            	 var gd5columns=grid5.data;
            	 var gd6columns=grid6.data;
            	 var gd7columns=grid7.data;
            	 var gd8columns=grid8.data;
            	 if(gd0columns.length>0){
            	  for (var i = 0; i < gd0columns.length; i++) {
            	  		if(typeof(gd0columns[i].slweldnumber)=="undefined"||gd0columns[i].slweldnumber==""){
            	  			nui.showTips({content: '壳体纵焊缝编号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd0columns[i].slweldparameters)=="undefined"||gd0columns[i].slweldparameters==""){
            	  			nui.showTips({content: '壳体纵焊缝特性参数不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
					}
				} 
				if(gd1columns.length>0){
            	  for (var i = 0; i < gd1columns.length; i++) {
            	  		if(typeof(gd1columns[i].sgweldnumber)=="undefined"||gd1columns[i].sgweldnumber==""){
            	  			nui.showTips({content: '壳体环焊缝编号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd1columns[i].srweldparameters)=="undefined"||gd1columns[i].srweldparameters==""){
            	  			nui.showTips({content: '壳体环焊缝特性参数不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
					}
				} 
				if(gd2columns.length>0){
            	  for (var i = 0; i < gd2columns.length; i++) {
            	  		if(typeof(gd2columns[i].connectpipenumber)=="undefined"||gd2columns[i].connectpipenumber==""){
            	  			nui.showTips({content: '连接管道编号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd2columns[i].connectpipeparameter)=="undefined"||gd2columns[i].connectpipeparameter==""){
            	  			nui.showTips({content: '连接管道特性参数不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
					}
				} 
				if(gd3columns.length>0){
            	  for (var i = 0; i < gd3columns.length; i++) {
            	  		if(typeof(gd3columns[i].svnumber)=="undefined"||gd3columns[i].svnumber==""){
            	  			nui.showTips({content: '安全阀编号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd3columns[i].svmodel)=="undefined"||gd3columns[i].svmodel==""){
            	  			nui.showTips({content: '安全阀型号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
					}
				}
				if(gd4columns.length>0){
            	  for (var i = 0; i < gd4columns.length; i++) {
            	  		if(typeof(gd4columns[i].pgnumber)=="undefined"||gd4columns[i].pgnumber==""){
            	  			nui.showTips({content: '压力表编号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd4columns[i].pgmodel)=="undefined"||gd4columns[i].pgmodel==""){
            	  			nui.showTips({content: '压力表型号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
					}
				}
				if(gd5columns.length>0){
            	  for (var i = 0; i < gd5columns.length; i++) {
            	  		if(typeof(gd5columns[i].lgnumber)=="undefined"||gd5columns[i].lgnumber==""){
            	  			nui.showTips({content: '液位计编号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd5columns[i].lgmodel)=="undefined"||gd5columns[i].lgmodel==""){
            	  			nui.showTips({content: '液位计型号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
					}
				}
				if(gd6columns.length>0){
            	  for (var i = 0; i < gd6columns.length; i++) {
            	  		if(typeof(gd6columns[i].tinumber)=="undefined"||gd6columns[i].tinumber==""){
            	  			nui.showTips({content: '测温仪表编号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd6columns[i].timodel)=="undefined"||gd6columns[i].timodel==""){
            	  			nui.showTips({content: '测温仪表型号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
					}
				}
				if(gd7columns.length>0){
            	  for (var i = 0; i < gd7columns.length; i++) {
            	  		if(typeof(gd7columns[i].rdnumber)=="undefined"||gd7columns[i].rdnumber==""){
            	  			nui.showTips({content: '爆破片编号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd7columns[i].rdmodel)=="undefined"||gd7columns[i].rdmodel==""){
            	  			nui.showTips({content: '爆破片型号不能为空!',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
					}
				}
              var urlStr = "com.cgn.itmp.conventionalislandand.pressurevesselbiz.updateEntity.biz.ext";
                form.validate();
                if(form.isValid()==false){
                nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
                return;
                 }
                   var form_sh = new nui.Form("#form_sh");
                form_sh.setChanged(false);
                form_sh.validate();
	            if(form_sh.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
                
                setGridData("grid_0","pressurevessel.longitudinalwelds");
                setGridData("grid_1","pressurevessel.shellgirthwelds");
                setGridData("grid_2","pressurevessel.connectingpipes");
                setGridData("grid_3","pressurevessel.safetyvalves");
                setGridData("grid_4","pressurevessel.pressuregauges");
                setGridData("grid_5","pressurevessel.levelgauges");
                setGridData("grid_6","pressurevessel.temperatureinstruments");
                setGridData("grid_7","pressurevessel.rupturediscs");
                setGridData("grid_8","pressurevessel.equipmenthistoryinfos");
                var form2 = new nui.Form("#form2");
            	form2.setChanged(false);
                
                var data = form.getData(false,true);
                 data.pressurevessel.jhry=  nui.get("jhry").text;
				data.pressurevessel.ccry = nui.get("ccry").value;
				
				data.pressurevessel.equipmentdrawnumber = nui.get("equipmentdrawnumbername").value;
				if(equipmentdrawnumberfileid==""){
				}else{
				data.pressurevessel.equipmentdrawnumberfileid = equipmentdrawnumberfileid;
				}
                
                 var data1 = form2.getData(false,true);
                 data.pressurevessel.supplementaryinfos=data1;
				data.jhry=nui.get("jhry").text;
				data.ccry = nui.get("ccry").value;
                data.delete_entity = data.pressurevessel;
	            data.entityType = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel_modif";
                 var json = nui.encode(data);
                   nui.get("#btnSubmit").setEnabled(false);
                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                          nui.alert("提交成功", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
                        }else{
                        nui.get("#btnSubmit").setEnabled(true);
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                   onCancel()
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									 nui.get("#btnSubmit").setEnabled(true);
							});
						 }
                        });
                    }
			
			//作废
		function onDelete(){
       nui.confirm("确定要作废流程？","提示",
          function(action){
             if(action=="ok"){
            nui.get("#btnSubmit").setEnabled(false);
               nui.get("#btnSave").setEnabled(false);
                var json = {};
                ;
                 json.processInstId = nui.getbyName('processInstId').getValue();
		         json.workItemId = nui.getbyName('workItemId').getValue();
				 json.entityType="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.Pressurevessel";
		      var jsondata = nui.encode(json);
		      
		      $.ajax({
                 url:"com.cgn.itmp.basecommon.WorkFlowCommon.wsterminateProcess.biz.ext",
                 type:'POST',
                 data:jsondata,
                 cache:false,
                 contentType:'text/json',
                 success:function(data){
                     var message = "流程作废成功";
                 	 nui.alert(message,"成功",function(action){
	                 if(action == "ok" || action == "close"){
                 			onCancel();
					}
                });
               },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSave").setEnabled(true);
									nui.get("#btnSubmit").setEnabled(true);
							});
						 }
            });
            }
          });
      }
			
       

                    function onReset(){
                        form.reset();
                        form.setChanged(false);
                    }
					function onuploadcomplete(e) {
                        
                    }
//                     function onCancel(){
//                         CloseWindow("cancel");
//                     }
					function onCancel() {
			        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
				    		self.parent.location.reload();
							return;
			        }
                    function CloseWindow(action){

                        if(action=="close"){

                            }else if(window.CloseOwnerWindow)
                            return window.CloseOwnerWindow(action);
                            else
                            return window.close();
                        }
                        
                        function jbxx(){
						var div = $("#form0");
							div.slideToggle(300);
						if($("#jbxx").text()=="-基本信息"){
							$("#jbxx").text("+基本信息");
						}else{
							$("#jbxx").text("-基本信息");
						}
					};
					function jsxx(){
						var div = $("#form1");
						div.slideToggle(300);
						if($("#jsxx").text()=="-技术信息"){
							$("#jsxx").text("+技术信息");
						}else{
							$("#jsxx").text("-技术信息");
						}
					};
					function fzxx(){
						var div = $("#form2");
						div.slideToggle(300);
						if($("#fzxx").text()=="-辅助信息"){
							$("#fzxx").text("+辅助信息");
						}else{
							$("#fzxx").text("-辅助信息");
						}
					};
					
					function sbls(){
						var div = $("#form5");
						div.slideToggle(300);
						if($("#sbls").text()=="-设备历史信息"){
							$("#sbls").text("+设备历史信息");
						}else{
							$("#sbls").text("-设备历史信息");
						}
					}
					function bwxx(){
						var div = $("#form3");
						div.slideToggle(300);
						if($("#bwxx").text()=="-部位信息"){
							$("#bwxx").text("+部位信息");
						}else{
							$("#bwxx").text("-部位信息");
						}
					}
					function aqfjjyb(){
						var div = $("#form4");
						div.slideToggle(300);
						if($("#aqfjjyb").text()=="-安全附件及仪表"){
							$("#aqfjjyb").text("+安全附件及仪表");
						}else{
							$("#aqfjjyb").text("-安全附件及仪表");
						}
					}
					function qbss(){
					var div = $("#form0");
					var div1 = $("#form1");
					var div2= $("#form2");
					var div3 = $("#form3");
					var div4 = $("#form4");
					var div5 = $("#form5");
					div.slideToggle(300);
					div1.slideToggle(300);
					div2.slideToggle(300);
					div3.slideToggle(300);
					div4.slideToggle(300);
					div5.slideToggle(300);	
						if($("#jbxx").text()=="-基本信息"){
							$("#jbxx").text("+基本信息");
						}else{
							$("#jbxx").text("-基本信息");
						}
						if($("#jsxx").text()=="-技术信息"){
							$("#jsxx").text("+技术信息");
						}else{
							$("#jsxx").text("-技术信息");
						}
						if($("#fzxx").text()=="-辅助信息"){
							$("#fzxx").text("+辅助信息");
						}else{
							$("#fzxx").text("-辅助信息");
						}
						if($("#bwxx").text()=="-部位信息"){
							$("#bwxx").text("+部位信息");
						}else{
							$("#bwxx").text("-部位信息");
						}
						if($("#aqfjjyb").text()=="-安全附件及仪表"){
						
							$("#aqfjjyb").text("+安全附件及仪表");
						}else{
							$("#aqfjjyb").text("-安全附件及仪表");
						}
						if($("#sbls").text()=="-设备历史信息"){
							$("#sbls").text("+设备历史信息");
						}else{
							$("#sbls").text("-设备历史信息");
						}
				}
				
				
    	
    	function fileSub(file){
    		var  fv=file.value;
    		if(fv){
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
			$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
   	    		$("#uploadform").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
   		            processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress .progress-item").style.width = percent + "%";
		                }, false);
		            }
		            return xhr;
		        },
					success : function(data) {
					
						if (data.code == 1) {
							nui.get("equipmentdrawnumbername").setValue(data.list[0].name);
							nui.get("equipmentdrawnumberfileid").setValue(data.list[0].uri);
							equipmentdrawnumberfileid = data.list[0].uri;
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} else {
				nui.alert("请上传图片");
				return false;
			}
		} 
                    </script>
                
             <script>
             function uploadFile (e, id) {
                let  xhr = new XMLHttpRequest();
                let  fd = new FormData();
                fd.append('file', e.target.files[0]);
                xhr.open('POST', '/itmp/coframe/framework/dzqm/uploadbd.jsp', true);
                xhr.send(fd);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        let  data = JSON.parse(xhr.responseText);
                        if (data.code == '1') {
                            onUploadSuccess&&onUploadSuccess({
                                file: {
                                    name: data.list[0].name
                                },
                                sender:{
                                    id: id
                                }
                                serverData: JSON.stringify({
                                    ret: {
                                        filePath: data.list[0].uri
                                    }
                                })
                            });
                        } else {
                            nui.alert(data.message);
                        }
                    }
                };
            }
             </script>
             </body>
             
            </html>