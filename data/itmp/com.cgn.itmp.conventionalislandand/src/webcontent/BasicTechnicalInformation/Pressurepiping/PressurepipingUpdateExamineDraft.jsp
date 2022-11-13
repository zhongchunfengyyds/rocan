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
- Date: 2019-11-06 16:03:26
- Description:压力管道基本信息录入
    --%>
    <head>
        <title>
            压力管道基本信息录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
         <style type="text/css">
			 .mini-grid-table tr:first-child td{
					height: 0;
				}
	     </style>
    </head>
    <body>
        <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
            <legend>
                <a id="scbt1" onclick="ceshi1()">-压力管道基本信息</a>
            </legend>
            
            <div id="dataform1" style="padding-top:5px;">
                <!-- hidden域 -->
                 <input class="nui-hidden" id="editable" value="<b:write property='editable'/>" />
                 <input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
		<input class="nui-hidden" name="jhry" id="jhry"/>
		<input class="nui-hidden" name="ccry" id="ccry"/>
    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
    	<div id="form1">
    			<input class="nui-hidden" name="pressurepiping.uuid"/>
                <input class="nui-hidden" name="pressurepiping.waterpipefittinginfos" id="pressurepiping.waterpipefittinginfos"/>
                <input class="nui-hidden" name="pressurepiping.pipeweldinformations" id="pressurepiping.pipeweldinformations"/>
                <input class="nui-hidden" name="pressurepiping.pipelinechemicalinfos" id="pressurepiping.pipelinechemicalinfos"/>
                <input class="nui-hidden" name="pressurepiping.equipmenthistoryinfos" id="pressurepiping.equipmenthistoryinfos"/>
                <input class="nui-hidden" name="pressurepiping.pipenumber" id="pressurepiping.pipenumber"/>
                <input class="nui-hidden" id="flowchartfileid" name="pressurepiping.flowchartfileid"/>
            <input class="nui-hidden" id="equiaxialgraphfileid" name="pressurepiping.equiaxialgraphfileid"/>
				
                <table style="width:100%;height:95%;table-layout:fixed;" class="nui-form-table">
                    <tr>
                        <td class="form_label">
                            电站:
                        </td>
                        <td colspan="1">
                         <input id="jd" class="nui-combobox" name="pressurepiping.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" style="width: 100%"/>
                        </td>
                        <td class="form_label">
                            机组:
                        </td>
                        <td colspan="1">
                         <input class="nui-combobox" name="pressurepiping.jz" readonly="readonly"
                        dataField="jsonObject" id="jz" textField="name" url="" valueField="id" style="width: 100%"/>
                        </td>
                    
                        <td class="form_label">
                            系统:
                        </td>
                        <td colspan="1">
                            <input id="system" readonly="readonly" emptyText="请选择系统" requiredErrorText="系统不能为空" 
                            class="nui-dictcombobox" dictTypeId="YLGDXT" style="width:100%" name="pressurepiping.system"/>
                        </td>
                        <td class="form_label">
                            管类:
                        </td>
                        <td colspan="1">
                             <input class="nui-dictcombobox" required="true" emptyText="请选择管类" requiredErrorText="系统不能为空" dictTypeId="YLGL" name="pressurepiping.tubetype" style="width: 100%"/>
                        </td>
                    
                         <td class="form_label" style="width:80px" rowspan="6">
                            流程图:
                        </td>
                        
                         <td class="form_label" style="width:60px" rowspan="2">
					             上传图纸:
					    </td>
					    <td colspan="2" id="fileHref" rowspan="2" style="display: none">
					    	</td>
					    	<td colspan="2" rowspan="2" id="lct">
                         	<div style="display: flex;">
											<input class="nui-textbox" readonly="readonly" style="width:100%" required="true" requiredErrorText="流程图不能为空" id="flowchartname" name="pressurepiping.flowchart" />
											<form id="uploadform" enctype="multipart/form-data">
												<input id="flowchart" class="" style="width:70px;display: none" type="file" name="pressurepiping.flowchart" accept="*" onchange="fileSub(this)"> 
											</form>
											</div>
                        
                        		</td>
                        </tr>
                    <tr>
                   		 <td class="form_label">
                            管道编号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" id="gdbh" required="true" emptyText="请输入管道编号" requiredErrorText="管道编号不能为空" style="width: 100%" name="pressurepiping.pipenumber"/>
                        </td>
                        <td class="form_label">
                            管道名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" required="true" emptyText="请输入管道名称" requiredErrorText="管道名称不能为空" style="width: 100%" name="pressurepiping.pipename"/>
                        </td>
                        <td class="form_label">
                            FAC定级:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" required="true" emptyText="请输入FAC定级" requiredErrorText="FAC定级不能为空" style="width: 100%" name="pressurepiping.faclevel"/>
                        </td>
                        <td class="form_label">
                            管道GC级别:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" required="true" emptyText="请输入管道GC级别"  requiredErrorText="管道GC级别不能为空" style="width: 100%" name="pressurepiping.pipegclevel"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            公称直径:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.nominaldiameter"/>
                        </td>
                        <td class="form_label">
                            外径mm:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.externaldiameter"/>
                        </td>
                        <td class="form_label">
                            壁厚mm:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.wallthickness"/>
                        </td>
                        <td class="form_label">
                            版本号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" required="true" emptyText="请输入版本号" requiredErrorText="版本号不能为空" style="width: 100%" name="pressurepiping.versionnumber"/>
                        </td>
                        <td class="form_label" rowspan="2">
                        
                        图号:
                        </td>
                        <td colspan="2" rowspan="2">
                        
                        <input class="nui-textbox"  readonly="readonly" emptyText="请输入流程图图号"  required="true" requiredErrorText="图号不能为空"  style="width: 100%" name="pressurepiping.flowchartno"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            管道起点:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.pipelinestartingpoint"/>
                        </td>
                        <td class="form_label">
                            管道终点:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.pipelineendingpoint"/>
                        </td>
                        <td class="form_label">
                            设计压力MPa:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.designpressure"/>
                        </td>
                        <td class="form_label">
                            工作压力MPa:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.workpressure"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            设计温度:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.designtemperature"/>
                        </td>
                        <td class="form_label">
                            工作温度:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.worktemperature"/>
                        </td>
                        <td class="form_label">
                            输送介质:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.conveyingmedium"/>
                        </td>
                        <td class="form_label">
                            管道材质:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.pipematerial"/>
                        </td>
                         <td class="form_label" rowspan="2">
                        
                         版本:
                        </td>
                        <td colspan="2" rowspan="2">
                        
                        <input class="nui-textbox" readonly="readonly" emptyText="请输入流程图版本"  style="width: 100%" required="true" requiredErrorText="版本不能为空" name="pressurepiping.flowchartversion"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            管道材质编码:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.pipematerialcode"/>
                        </td>
                        <td class="form_label">
                            管道上主设备:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.pipemainequipment"/>
                        </td>
                        <td class="form_label">
                            管道功能:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.pipefunction"/>
                        </td>
                        <td class="form_label">
                            流速度kg/s:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.flowspeed"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            材料含Cr%:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.materialscontainingcr"/>
                        </td>
                        <td class="form_label">
                            化学PH(25%):
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.chemicalph"/>
                        </td>
                        <td class="form_label">
                            焊口数量:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.weldingjointsnumber"/>
                        </td>
                        <td class="form_label">
                            三通数量:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.threewayquantity"/>
                        </td>
                        <td class="form_label" rowspan="6">
                            等轴图:
                        </td>
                        
                        <td class="form_label" rowspan="2">
					             上传图纸:
					    </td>
					    <td colspan="2" rowspan="2" id="fileHref1" style="display: none ">
					     
					     </td>
					    <td colspan="2" rowspan="2" id="dzt">
					         <div style="display: flex;">
								<input class="nui-textbox" style="width:100%" readonly="readonly" required="true" requiredErrorText="等轴图不能为空" id="equiaxialgraphname" name="pressurepiping.equiaxialgraph" />
										<form id="uploadform1" enctype="multipart/form-data">
											<input id="equiaxialgraph" class="" style="width:70px;display:none" type="file" name="pressurepiping.equiaxialgraph" accept="*" onchange="fileSub1(this)"> 
										</form>
							</div>
                    	</td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            大小头数量:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.bigandsmallheadsnumber"/>
                        </td>
                        <td class="form_label">
                            弯头数量:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.elbownumber"/>
                        </td>
                        <td class="form_label">
                            管道长度:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.pipelinelength"/>
                        </td>
                        <td class="form_label">
                            有无保温:
                        </td>
                        <td colspan="1">
                            <input class="nui-dictcombobox" dictTypeId="option"  readonly="readonly" style="width: 100%" name="pressurepiping.heatpreservation"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            阀门情况:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.valvecondition"/>
                        </td>
                        <td class="form_label">
                            孔板情况:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.orificecondition"/>
                        </td>
                        <td class="form_label">
                            RCM内容:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.rcmcontent"/>
                        </td>
                        <td class="form_label">
                            RCM推荐周期:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.rcmrecommendedperiod"/>
                        </td>
                         <td class="form_label" rowspan="2">
					             图号:
					                  </td>
					                  <td colspan="2" rowspan="2">
				                             <input class="nui-textbox" readonly="readonly" emptyText="请输入等轴图图号" required="true" requiredErrorText="图号不能为空" style="width: 100%" name="pressurepiping.equiaxialgraphno"/>
                    				  </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            安全状况等级:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.safetylevel"/>
                        </td>
                        <td class="form_label">
                            设计单位:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.designunit"/>
                        </td>
                        <td class="form_label">
                            安装单位:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.installationunit"/>
                        </td>
                        <td class="form_label">
                            安装竣工日期:
                        </td>
                        <td colspan="1">
                         <input id="date1" style="width: 100%" readonly="readonly"  class="nui-datepicker" name="pressurepiping.installationcompletiondate"/>
                           <!--  <input class="nui-textbox" style="width: 100%" name="pressurepiping.installationcompletiondate"/> -->
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            检验机构:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.inspectioninstitution"/>
                        </td>
                        <td class="form_label">
                            检验日期:
                        </td>
                        <td colspan="1">
                        	<input id="date2" readonly="readonly" style="width: 100%" class="nui-datepicker" name="pressurepiping.inspectiondate"/>
                           <!--  <input class="nui-textbox" style="width: 100%" name="pressurepiping.inspectiondate"/> -->
                        </td>
                        <td class="form_label">
                            投运日期:
                        </td>
                        <td colspan="1">
                        <input id="date3" readonly="readonly" style="width: 100%" class="nui-datepicker" name="pressurepiping.commissioningdate"/>
                            <!-- <input class="nui-textbox" style="width: 100%" name="pressurepiping.commissioningdate"/> -->
                        </td>
                        <td class="form_label">
                            运行时间:
                        </td>
                        <td colspan="1">
                        	<input id="date4" readonly="readonly" style="width: 100%" class="nui-datepicker" name="pressurepiping.runningtime"/>
                           <!--  <input class="nui-textbox" style="width: 100%" name="pressurepiping.runningtime"/> -->
                        </td>
                        <td class="form_label" rowspan="2">
					            版本:
					                  </td>
					                  <td colspan="2" rowspan="2">
				                           <input class="nui-textbox" readonly="readonly" emptyText="请输入等轴图版本" required="true" requiredErrorText="版本号不能为空" style="width: 100%" name="pressurepiping.equiaxialgraphversion"/>
                    				  </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            使用单位:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.useunit"/>
                        </td>
                        <td class="form_label">
                            主要问题:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.mainproblems"/>
                        </td>
                        <td class="form_label">
                            重要管道:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.importantpipeline"/>
                        </td>
                        <td class="form_label">
                            管道铺设方式:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.pipelinelayingmethod"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            检验结论:
                        </td>
                        <td colspan="3">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.testconclusion"/>
                        </td>
                        <td class="form_label">
                            备注:
                        </td>
                        <td colspan="3">
                            <input class="nui-textbox" readonly="readonly" style="width: 100%" name="pressurepiping.remarks"/>
                        </td>
                            <input class="nui-hidden" name="pressurepiping.isdel" value="0"/>
                    </tr>
                </table>
            </div>
            </div>
        </fieldset>
        
        <!-- 从表的修改 -->
        <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
            <legend>
                <a id="qsgj" onclick="qsgj()">-汽水管件信息</a>
            </legend>
            
                <div title="汽水管件信息" id="form_qsgjxx">
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:10%;" >
                                   汽水管件信息
                                </td>
                                <td >
                                </td>
                            </tr>
                        </table>
                    </div>
                    <!-- <div class="nui-fit"> -->
                    <div id="grid_0" class="nui-datagrid" style="width:100%;height:150px;" sortField="pipesegmentno"
                            sortOrder="asc" showPager="false" sortMode="client" allowCellEdit="false" allowCellSelect="false" multiSelect="true" editNextOnEnterKey="true" allowCellValid="true"
					oncellvalidation="onCellValidation">
                        <div property="columns">
                             <div type="indexcolumn"></div>
                             <div field="jd" allowSort="true" align="left" headerAlign="center" width="" visible="false">
                                    基地         		<input class="nui-textbox" id="jd0" enabled="true" name="jd" property="editor"  />
                            </div>
                            <div field="jz" allowSort="true" align="left" headerAlign="center" width="" visible="false">
                                     机组			<input property="editor" id="jz0" class="nui-textbox" name="jz" style="width:100%;" />
                            </div>
                            <div field="pipesegmentno" allowSort="true" align="left" headerAlign="center" width="">
                                管段编号
                                <input class="nui-textbox" required="true" requiredErrorText="管段编号不能为空" name="pipesegmentno" property="editor"/>
                            </div>
                            <div field="pipefittingpositionno" allowSort="true" align="left" headerAlign="center" width="">
                                管件位置号
                                <input class="nui-textbox" required="true"  requiredErrorText="管件位置号不能为空" name="pipefittingpositionno" property="editor"/>
                            </div>
                            <div field="pipetype" allowSort="true" align="left" headerAlign="center" width="">
                                管件类型
                                <input class="nui-textbox" required="true" requiredErrorText="管件类型不能为空" name="pipetype" property="editor"/>
                            </div>
                            <div field="fittingnumber" allowSort="true" align="left" headerAlign="center" width="">
                                管件编号
                                <input class="nui-textbox" required="true" requiredErrorText="管件编号不能为空" name="fittingnumber" property="editor"/>
                            </div>
                            <div field="pipeouterdiameter" allowSort="true" align="left" headerAlign="center" width="">
                                管件外径mm
                                <input class="nui-textbox" name="pipeouterdiameter" property="editor"/>
                            </div>
                            <div field="pipewallthickness" allowSort="true" align="left" headerAlign="center" width="">
                                管件壁厚mm
                                <input class="nui-textbox" name="pipewallthickness" property="editor"/>
                            </div>
                            <div field="pipelength" allowSort="true" align="left" headerAlign="center" width="">
                                管件长度mm
                                <input class="nui-textbox" name="pipelength" property="editor"/>
                            </div>
                            <div field="pipematerial" allowSort="true" align="left" headerAlign="center" width="">
                                管件材质
                                <input class="nui-textbox" name="pipematerial" property="editor"/>
                            </div>
                            <div field="materialstandard" allowSort="true" align="left" headerAlign="center" width="">
                                材质标准
                                <input class="nui-textbox" name="materialstandard" property="editor"/>
                            </div>
                            <div field="dimensionaltolerance" allowSort="true" align="left" headerAlign="center" width="">
                                尺寸公差
                                <input class="nui-textbox" name="dimensionaltolerance" property="editor"/>
                            </div>
                            <div field="manufacturingform" allowSort="true" align="left" headerAlign="center" width="">
                                制造形式
                                <input class="nui-textbox" name="manufacturingform" property="editor"/>
                            </div>
                            <div field="elbowradius" allowSort="true" align="left" headerAlign="center" width="">
                                弯头半径
                                <input class="nui-textbox" name="elbowradius" property="editor"/>
                            </div>
                            <div field="elbowangle" allowSort="true" align="left" headerAlign="center" width="">
                                弯头角度
                                <input class="nui-textbox" name="elbowangle" property="editor"/>
                            </div>
                            <div field="branchangle" allowSort="true" align="left" headerAlign="center" width="">
                                支管角度
                                <input class="nui-textbox" name="branchangle" property="editor"/>
                            </div>
                            <div field="branchpipenumber" allowSort="true" align="left" headerAlign="center" width="">
                                支管管道号
                                <input class="nui-textbox" name="branchpipenumber" property="editor"/>
                            </div>
                            <div field="furnacelotnumber" allowSort="true" align="left" headerAlign="center" width="">
                                炉批号
                                <input class="nui-textbox" name="furnacelotnumber" property="editor"/>
                            </div>
                            <div field="materialcontainscr" allowSort="true" align="left" headerAlign="center" width="">
                                材料含Cr%
                                <input class="nui-textbox" name="materialcontainscr" property="editor"/>
                            </div>
                            <div field="remarks" allowSort="true" align="left" headerAlign="center" width="">
                                备注
                                <input class="nui-textbox" name="remarks" property="editor"/>
                            </div>
                        </div>
                    </div>
                    </div>
                    </fieldset>
                   	 
 				<fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
            <legend>
               <a id="qt" onclick="qt()">-其他信息</a>
            </legend>
                   	
                   <div id="other"> 
                    <div>
                        <table style="width:100%;">
                            <tr>
                                <td style="width:10%;">
                                   		管道焊缝信息
                                </td>
                                <td >
                                </td>
                                <td style="width:10%;">
                                    	管道化学成分信息
                                </td>
                                <td >
                                
                                </td>
                            </tr>
                        </table>
                    </div>
                   
                    <div id="grid_1" class="nui-datagrid" style="width:50%;height:150px;float:left" sortField="weldnumber"
                            sortOrder="asc"showPager="false" sortMode="client" allowCellEdit="false" allowCellSelect="false" multiSelect="true" editNextOnEnterKey="true" oncellvalidation="onCellValidation">
                        <div property="columns">
                         <div type="indexcolumn">
                            </div>
                            <div field="jd" allowSort="true" align="left" headerAlign="center" width="" visible="false">
                                    基地         		<input class="nui-textbox" id="jd1" enabled="true" name="jd" property="editor" />
                            </div>
                            <div field="jz" allowSort="true" align="left" headerAlign="center" width="" visible="false">
                                     机组			<input property="editor" id="jz1" class="nui-textbox" name="jz" style="width:100%;" />
                            </div>
                            <div field="weldnumber" allowSort="true" align="left" headerAlign="center" width="">
                                焊缝编号
                                <input class="nui-textbox" enabled="true" name="weldnumber" property="editor" requiredErrorText="焊缝编号不能为空" required="true" visible="true"/>
                            </div>
                            <div field="characteristicparameter" allowSort="true" align="left" headerAlign="center" width="">
                                特性参数
                                <input class="nui-textbox" enabled="true" name="characteristicparameter" requiredErrorText="特性参数不能为空" property="editor" required="true" visible="true"/>
                            </div>
                        </div>
                    </div>
              
                    <div id="grid_2" class="nui-datagrid" style="width:50%;height:150px;float:left" showPager="false" sortMode="client" allowCellEdit="false" allowCellSelect="false" multiSelect="true" editNextOnEnterKey="true" oncellvalidation="onCellValidation">
                        <div property="columns">
                            <div type="indexcolumn">
                            </div>
                            <div field="jd" allowSort="true" align="left" headerAlign="center" width="" visible="false">
                                    基地         		<input class="nui-textbox" id="jd2" enabled="true" name="jd" property="editor"  />
                            </div>
                            <div field="jz" allowSort="true" align="left" headerAlign="center" width="" visible="false">
                                     机组			<input property="editor" id="jz2" class="nui-textbox" name="jz" style="width:100%;" />
                            </div>
                            <div field="element" allowSort="true" align="left" headerAlign="center" width="">
                                元素
                                <input class="nui-textbox" enabled="true" name="element" property="editor" requiredErrorText="元素不能为空" required="true" visible="true"/>
                            </div>
                            <div field="contents" allowSort="true" align="left" headerAlign="center" width="">
                                含量
                                <input class="nui-textbox" enabled="true" name="contents" property="editor" requiredErrorText="含量不能为空" required="true" visible="true"/>
                            </div>
                        </div>
                    </div>
 			</div>
 		</fieldset>		
	 				
 				<fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
            <legend>
                <a id="sbls" onclick="sbls()">-设备历史信息</a>
            </legend>
                <div title="设备历史信息" id="form_sbls">
                    <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:10%;">
                                    设备历史信息
                                </td>
                                <td >
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="grid_3" class="nui-datagrid" style="width:100%;height:150px;" showPager="false" sortMode="client" allowCellEdit="false" allowCellSelect="false" multiSelect="true" editNextOnEnterKey="true" onCellBeginEdit="onCellBeginEdit">
                        <div property="columns">
                            <div type="indexcolumn">
                            </div>
                            <div field="jd" allowSort="true" align="left" headerAlign="center" width="" visible="false">
                                    基地         		<input class="nui-textbox" id="jd3" enabled="true" name="jd" property="editor"  />
                            </div>
                            <div field="jz" allowSort="true" align="left" headerAlign="center" width=""  visible="false">
                                     机组			<input property="editor" id="jz3" class="nui-textbox" name="jz" style="width:100%;"/>
                            </div>
                            <div field="deviceversion" allowSort="true" align="left" headerAlign="center" width="">
                                设备版本
                                <input class="nui-textbox" enabled="true" name="deviceversion" property="editor" required="false" visible="true"/>
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
                                <input class="nui-textbox" enabled="true" name="enteringperson" property="editor" required="false" visible="true"/>
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
            </fieldset>
            
            <div  style="padding-top:5px;" id="baseInfoForm">
      <!-- hidden域 -->
      <fieldset id="personInfo" style="width:95%;">
        <legend><span>审批信息</span></legend>
     <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
    
                 <tr id="spyjId">
                 
                    <td class="form_label"  style="width: 10%">
                        审批意见:
                    </td>
                  <td colspan="3">
                        <input id="spyj"  required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width:100%" name="spyj"/>
                    </td>
                      <td colspan="2" class="form_label" >
                        常用意见:<input class="nui-dictcombobox" onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ" style="width:80%"  />
                    </td>
                </tr>
    
           	<tr id="sqrTr">
                <td class="form_label"  style="width: 10%">
                    申请人:
                </td>
                <td colspan="1">
                    <input id="sqr" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqr" value="<b:write property='personInfo/sqr'/>" />
    	  			
                </td>
                <td class="form_label"  style="width: 10%">
                    申请时间:
                </td>
                 <td colspan="1">
                        <input id="sqsj" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqsj" value="<b:write property='personInfo/sqsj'/>" />
                    </td>
           	</tr>
        <tr id="ccryTr">
           <td class="form_label" style="width: 10%">抄送人员:</td>
				<td colspan="5">
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list" style="width:55%" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
        </tr>
    </table>
    </fieldset>
    </div>
            
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                    <a class="nui-button" id="btnSubmit" onclick="onSubmit()">
                        同意
                    </a>
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <a class="nui-button"  onclick="btnBack()" id="btnBack">
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
            
            //上传附件禁用
            nui.get("#flowchartname").setEnabled(false);
            nui.get("#equiaxialgraphname").setEnabled(false);
            
            document.getElementById("uploadform").style.display="none";
            document.getElementById("uploadform1").style.display="none";
            var processInstId =nui.get("processInstId").getValue();
            var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
            $(".changeReasons").show();
           /*  if(isadmin == "true"){
							$(".changeReasons").hide();
						}else{
							$(".changeReasons").show();
						} */
			 
			getPressurepipingmodif();
			var pressure;
			/*  var pipenumber1; */
			 var relationid;
			function getPressurepipingmodif(){
				var form = new nui.Form("#form1");//将普通form转为nui的form
				var json=nui.encode({processInstId:processInstId,entityType:"com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif"});
				$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",//该方法可复用
				type : 'POST',
				data : json,
				async :false,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					pressure=text.data;
					relationid=pressure.relationid;
				}
			});
			}
			getPressurepiping();
			function getPressurepiping(){
				var form = new nui.Form("#form1");//将普通form转为nui的form
				var json=nui.encode({processInstId:processInstId,pressurepiping:pressure});
				$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.pressurepiping_modifbiz.getPressurepipingmodfWork.biz.ext",//该方法可复用
				type : 'POST',
				data : json,
				async :false,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
				  var jdid = text.pressurepiping.jd;
					nui.get('jz').setAjaxType("POST");
					nui.get('jz').load("com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="+ jdid);
					
				 var grid0Data = text.pressurepiping.waterpipefittinginfos;
					nui.get("grid_0").setData(grid0Data);
					 var grid1Data = text.pressurepiping.pipeweldinformations;
					nui.get("grid_1").setData(grid1Data);
					 var grid2Data = text.pressurepiping.pipelinechemicalinfos;
					nui.get("grid_2").setData(grid2Data);
					 var grid3Data = text.pressurepiping.equipmenthistoryinfos;
					nui.get("grid_3").setData(grid3Data);
					obj = nui.decode(text);
                        form.setData(obj);
                        form.setChanged(false);
					/* $(".emp-name").html(text.pressurepiping.jhry);
					$(".emp-name1").html(text.pressurepiping.ccry); */
					nui.get("sqr").setValue(text.pressurepiping.applicant);
					nui.get("sqsj").setValue(text.pressurepiping.applicanttime.split(".")[0]);
					
					nui.get("grid_0").sortBy("pipesegmentno","asc");
					nui.get("grid_1").sortBy("weldnumber","asc");
					nui.get("grid_2").sortBy("element","asc");
					nui.get("grid_3").sortBy("deviceversion","asc");
				}
			});
			}
			
			//已办只读
			var editable = nui.get('editable').getValue();//已办
			if(editable == 'false'){
		    		nui.get("btnSubmit").hide();
		    		nui.get("btnBack").hide();
		    		fileHref();
		    		fileHref1();
		    		setEna();
		    		labelModel();
		    		labelModelBaseInfoForm();
		    		$(".changeReasons").show();
			}
			//文本只读模式
		function labelModel(isEdit) {
            var form = new nui.Form("#dataform1");
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
        }
        //审批信息禁用
		function labelModelBaseInfoForm() {
			$("#spyjId").hide();
			$("#ccryTr").hide();
			var form = new nui.Form("#baseInfoForm");
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
		}
			  //设置文件下载
       function setEna(){
       	document.getElementById("fileHref").style.display="";
    		document.getElementById("lct").style.display="none";
    		document.getElementById("fileHref1").style.display="";
    		document.getElementById("dzt").style.display="none";
       }  
		function fileHref(){
			 var div = document.getElementById('fileHref');
			var fileRealName = nui.get('flowchartname').value;//eommfile
			var fileId = nui.get('flowchartfileid').value;//eommfileid
			if(fileRealName!=""&&fileId!=""){
		 		div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			}
		}
		function fileHref1(){
			 var div = document.getElementById('fileHref1');
			var fileRealName = nui.get('equiaxialgraphname').value;//eommfile
			var fileId = nui.get('equiaxialgraphfileid').value;//eommfileid
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
        function btnBack(){
	      
          	var form = new nui.Form("#dataform1");;
    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
    		form.validate();
    		
    		
            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
   
            var data = form.getData(false,true);
            data.processInstId=processInstId;
            data.backid="manualActivity";
            data.spyj=nui.get('spyj').value;
            var json = nui.encode(data);
            
            nui.get("btnBack").setEnabled(false);
            nui.get("btnSubmit").setEnabled(false);
            
    		$.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        
                        if(returnJson.exception == null){
                        nui.alert("驳回成功", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                            		onCancel();
                                }
                                });
                        }else{
                        nui.get("#btnBack").setEnabled(true);
									nui.get("#btnSubmit").setEnabled(true);
                            nui.alert("驳回失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnBack").setEnabled(true);
									nui.get("#btnSubmit").setEnabled(true);
							});
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
			}else {
				nui.get("fpath2").setValue(appIconPath);
				nui.get("fname2").setValue(appIconName);
				nui.get("fpath").setValue(appIconPath);
			}
		}
                    
                     function onCellBeginEdit(e) {
                    	
                        var field = e.field, value = e.value;
                        
                        if (field == "fj") {
                           file = e;
                        }
                    }
                    
                    window.alert=function(){
				return false;
			}
        		//必填项校验
         function onCellValidation(e) {
            if (e.field == "pipesegmentno"||e.field == "pipefittingpositionno" 
            ||e.field == "pipetype"||e.field == "fittingnumber"
            ||e.field == "weldnumber"||e.field == "characteristicparameter"
            ||e.field == "element"||e.field == "contents"
            ) {
               if (e.value == null || e.value == "") {
                    e.isValid = false;
                    e.errorText = "字段不能为空";
                }
            }
            if(e.value != null && e.value != ""){
	         if(hasIllegalCharNew(e.value)){
	         	var newData = cleanData(this.data,e.field,e.row._id);
				this.setData(newData);	         
	         	nui.alert("含有非法字符,请检查输入的内容");
	    		return;
	         }
            }
        }
        	
        
            var tab = nui.get("tab");
            var form = new nui.Form("#dataform1");
            form.setChanged(false);

            function onOk(){
                saveData();
            }

            function gridAddRow(datagrid){
                var grid = nui.get(datagrid);
                var newRow={};
                grid.addRow(newRow);
                grid.validateRow(newRow);   //加入新行，马上验证新行
            }

            function gridRemoveRow(datagrid) {
                var grid = nui.get(datagrid);
                var rows = grid.getSelecteds();
                if (rows.length > 0) {
                    grid.removeRows(rows, true);
                }else{
                	nui.alert("请选择一条记录");
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
            	 var gd0columns=grid0.data;
            	 var gd1columns=grid1.data;
            	 var gd2columns=grid2.data;
            	 if(gd0columns.length>0){
            	  for (var i = 0; i < gd0columns.length; i++) {
            	  		if(typeof(gd0columns[i].pipesegmentno)=="undefined"||gd0columns[i].pipesegmentno==""){
            	  			nui.alert("管段编号不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd0columns[i].pipefittingpositionno)=="undefined"||gd0columns[i].pipefittingpositionno==""){
            	  			nui.alert("管段位置号不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd0columns[i].pipetype)=="undefined"||gd0columns[i].pipetype==""){
            	  			nui.alert("管件类型不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd0columns[i].fittingnumber)=="undefined"||gd0columns[i].fittingnumber==""){
            	  			nui.alert("管件编号不能为空!");
            	  			return;	
            	  		}
					}
				} 
				if(gd1columns.length>0){
            	  for (var i = 0; i < gd1columns.length; i++) {
            	  		if(typeof(gd1columns[i].weldnumber)=="undefined"||gd1columns[i].weldnumber==""){
            	  			nui.alert("焊缝编号不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd1columns[i].characteristicparameter)=="undefined"||gd1columns[i].characteristicparameter==""){
            	  			nui.alert("特性参数不能为空!");
            	  			return;	
            	  		}
					}
				} 
				if(gd2columns.length>0){
            	  for (var i = 0; i < gd2columns.length; i++) {
            	  		if(typeof(gd2columns[i].element)=="undefined"||gd2columns[i].element==""){
            	  			nui.alert("元素不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd2columns[i].contents)=="undefined"||gd2columns[i].contents==""){
            	  			nui.alert("含量不能为空!");
            	  			return;	
            	  		}
					}
				} 
                form.validate();
               if(form.isValid()==false){
                nui.alert("表单校验不通过,请确认!");
                 return;
                 }
                 var form_sh = new nui.Form("#personInfo");
                form_sh.setChanged(false);
                form_sh.validate();
	            if(form_sh.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
                
                 
                setGridData("grid_0","pressurepiping.waterpipefittinginfos");
                setGridData("grid_1","pressurepiping.pipeweldinformations");
                setGridData("grid_2","pressurepiping.pipelinechemicalinfos");
                setGridData("grid_3","pressurepiping.equipmenthistoryinfos");
                var data = form.getData(false,true);
                nui.get("#btnSubmit").setEnabled(false);
                nui.get("#btnBack").setEnabled(false);
                var urlStr = "com.cgn.itmp.conventionalislandand.pressurepipingbiz.endupdateworkBoiler.biz.ext";
					var waterlist= data.pressurepiping.waterpipefittinginfos;
					if(typeof(waterlist)!="undefined"){
						for (var i = 0; i < waterlist.length; i++) {
							waterlist[i].uuid="";
						}
					}
					var pipelinelist=data.pressurepiping.pipelinechemicalinfos;
					if(typeof(pipelinelist)!="undefined"){
						for (var i = 0; i < pipelinelist.length; i++) {
							pipelinelist[i].uuid="";
						}
					}
					var pipeweldlist=data.pressurepiping.pipeweldinformations;
					if(typeof(pipeweldlist)!="undefined"){
						for (var i = 0; i < pipeweldlist.length; i++) {
							pipeweldlist[i].uuid="";
						}
					}
					var equipmentlist=data.pressurepiping.equipmenthistoryinfos;   
					if(typeof(equipmentlist)!="undefined"){
						for (var i = 0; i < equipmentlist.length; i++) {
							equipmentlist[i].uuid="";
						}
					} 
               	data.data=data.pressurepiping;
	            data.pressurepiping.isdel="0";
	            data.relationid=relationid;
	             data.spyj=nui.get('spyj').value;
                 data.base=data.pressurepiping.jd;
                 data.crew=data.pressurepiping.jz;
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
                           nui.alert("提交成功", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
                        }else{
                        	 nui.get("#btnSubmit").setEnabled(true);
                			nui.get("#btnBack").setEnabled(true);
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									 nui.get("#btnSubmit").setEnabled(true);
                			nui.get("#btnBack").setEnabled(true);
							});
						 }
                        });
                    }

                    function onReset(){
                        form.reset();
                        form.setChanged(false);
                    }
					
					function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }

			function onCancel() {
	        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
		    		self.parent.location.reload();
					return;
        	}
					function onuploadcomplete(e) {
                        
                    }
                    function CloseWindow(action){

                        if(action=="close"){

                        }else if(window.CloseOwnerWindow)
                            return window.CloseOwnerWindow(action);
                            else
                            return window.close();
                        }
                       
            		function ceshi1(){
						var div = $("#dataform1");
							div.slideToggle(300);
						if($("#scbt1").text()=="-压力管道基本信息"){
							$("#scbt1").text("+压力管道基本信息");
						}else{
							$("#scbt1").text("-压力管道基本信息");
						}
					};
					function qsgj(){
						var div = $("#form_qsgjxx");
						div.slideToggle(300);
						if($("#qsgj").text()=="-汽水管件信息"){
							$("#qsgj").text("+汽水管件信息");
						}else{
							$("#qsgj").text("-汽水管件信息");
						}
					};
					function qt(){
						var div = $("#other");
						div.slideToggle(300);
						 
						if($("#qt").text()=="-其他信息"){
							$("#qt").text("+其他信息");
						}else{
							$("#qt").text("-其他信息");
						}
					};
					
					function sbls(){
						var div = $("#form_sbls");
						div.slideToggle(300);
						if($("#sbls").text()=="-设备历史信息"){
							$("#sbls").text("+设备历史信息");
						}else{
							$("#sbls").text("-设备历史信息");
						}
					};
							
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