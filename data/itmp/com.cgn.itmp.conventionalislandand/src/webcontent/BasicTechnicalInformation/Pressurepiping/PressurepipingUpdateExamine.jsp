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
       <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script> <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
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
                <input class="nui-hidden" name="pressurepiping.pipenumber" id="pressurepiping.pipenumber"/>
                <input class="nui-hidden" id="flowchartfileid" name="pressurepiping.flowchartfileid"/>
            <input class="nui-hidden" id="equiaxialgraphfileid" name="pressurepiping.equiaxialgraphfileid"/>
            <input class="nui-hidden" id="fildid" name="pressurepiping.equipmenthistoryinfos.fildid"/>
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
                         <input class="nui-combobox" readonly="readonly" name="pressurepiping.jz" required="true" requiredErrorText="机组不能为空" 
                        dataField="jsonObject" id="jz" textField="name" url="" valueField="id" style="width: 100%"/>
                        </td>
                    
                        <td class="form_label">
                            系统:
                        </td>
                        <td colspan="1">
                            <input id="system" required="true" emptyText="请选择系统" requiredErrorText="系统不能为空" class="nui-dictcombobox" dictTypeId="YLGDXT" style="width:100%" name="pressurepiping.system"/>
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
					    	<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
                         <div style="display: flex;">
											<input class="nui-textbox" style="width:100%" required="true" requiredErrorText="流程图不能为空" id="flowchartname" name="pressurepiping.flowchart" />
											<form id="uploadform" enctype="multipart/form-data">
												<input id="flowchart" class="" style="width:70px" type="file" name="pressurepiping.flowchart" accept="*" onchange="fileSub(this)"> 
											</form>
											</div>
                        
                        </td>
                        </tr>
                    <tr>
                   		 <td class="form_label">
                            管道编号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" id="gdbh" required="true" emptyText="请输入管道编号" requiredErrorText="管道编号不能为空" style="width: 100%" name="pressurepiping.pipenumber"/>
                        </td>
                        <td class="form_label">
                            管道名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" required="true" emptyText="请输入管道名称" requiredErrorText="管道名称不能为空" style="width: 100%" name="pressurepiping.pipename"/>
                        </td>
                        <td class="form_label">
                            FAC定级:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" required="true" emptyText="请输入FAC定级" requiredErrorText="FAC定级不能为空" style="width: 100%" name="pressurepiping.faclevel"/>
                        </td>
                        <td class="form_label">
                            管道GC级别:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" required="true" emptyText="请输入管道GC级别"  requiredErrorText="管道GC级别不能为空" style="width: 100%" name="pressurepiping.pipegclevel"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            公称直径:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.nominaldiameter"/>
                        </td>
                        <td class="form_label">
                            外径mm:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.externaldiameter"/>
                        </td>
                        <td class="form_label">
                            壁厚mm:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.wallthickness"/>
                        </td>
                        <td class="form_label">
                            版本号:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" required="true" emptyText="请输入版本号" requiredErrorText="版本号不能为空" style="width: 100%" name="pressurepiping.versionnumber"/>
                        </td>
                         <td class="form_label" rowspan="2">
                        
                        图号:
                        </td>
                        <td colspan="2" rowspan="2">
                        
                        <input class="nui-textbox" emptyText="请输入流程图图号"  required="true" requiredErrorText="图号不能为空"  style="width: 100%" name="pressurepiping.flowchartno"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            管道起点:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.pipelinestartingpoint"/>
                        </td>
                        <td class="form_label">
                            管道终点:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.pipelineendingpoint"/>
                        </td>
                        <td class="form_label">
                            设计压力MPa:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.designpressure"/>
                        </td>
                        <td class="form_label">
                            工作压力MPa:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.workpressure"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            设计温度:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.designtemperature"/>
                        </td>
                        <td class="form_label">
                            工作温度:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.worktemperature"/>
                        </td>
                        <td class="form_label">
                            输送介质:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.conveyingmedium"/>
                        </td>
                        <td class="form_label">
                            管道材质:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.pipematerial"/>
                        </td>
                         <td class="form_label" rowspan="2">
                        
                         版本:
                        </td>
                        <td colspan="2" rowspan="2">
                        
                        <input class="nui-textbox" emptyText="请输入流程图版本"  style="width: 100%" required="true" requiredErrorText="版本不能为空" name="pressurepiping.flowchartversion"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            管道材质编码:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.pipematerialcode"/>
                        </td>
                        <td class="form_label">
                            管道上主设备:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.pipemainequipment"/>
                        </td>
                        <td class="form_label">
                            管道功能:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.pipefunction"/>
                        </td>
                        <td class="form_label">
                            流速度kg/s:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.flowspeed"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            材料含Cr%:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.materialscontainingcr"/>
                        </td>
                        <td class="form_label">
                            化学PH(25%):
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.chemicalph"/>
                        </td>
                        <td class="form_label">
                            焊口数量:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.weldingjointsnumber"/>
                        </td>
                        <td class="form_label">
                            三通数量:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.threewayquantity"/>
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
					    <div id="progress2" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
					         <div style="display: flex;">
								<input class="nui-textbox" style="width:100%"  required="true" requiredErrorText="等轴图不能为空" id="equiaxialgraphname" name="pressurepiping.equiaxialgraph" />
										<form id="uploadform1" enctype="multipart/form-data">
											<input id="equiaxialgraph" class="" style="width:70px" type="file" name="pressurepiping.equiaxialgraph" accept="*" onchange="fileSub1(this)"> 
										</form>
							</div>
                    	</td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            大小头数量:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.bigandsmallheadsnumber"/>
                        </td>
                        <td class="form_label">
                            弯头数量:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.elbownumber"/>
                        </td>
                        <td class="form_label">
                            管道长度:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.pipelinelength"/>
                        </td>
                        <td class="form_label">
                            有无保温:
                        </td>
                        <td colspan="1">
                            <input class="nui-dictcombobox" dictTypeId="option"  style="width: 100%" name="pressurepiping.heatpreservation"/>
                        </td>
                        
                    </tr>
                    <tr>
                        <td class="form_label">
                            阀门情况:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.valvecondition"/>
                        </td>
                        <td class="form_label">
                            孔板情况:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.orificecondition"/>
                        </td>
                        <td class="form_label">
                            RCM内容:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.rcmcontent"/>
                        </td>
                        <td class="form_label">
                            RCM推荐周期:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.rcmrecommendedperiod"/>
                        </td>
                        <td class="form_label" rowspan="2">
					             图号:
					                  </td>
					                  <td colspan="2" rowspan="2">
				                             <input class="nui-textbox" emptyText="请输入等轴图图号" required="true" requiredErrorText="图号不能为空" style="width: 100%" name="pressurepiping.equiaxialgraphno"/>
                    				  </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            安全状况等级:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.safetylevel"/>
                        </td>
                        <td class="form_label">
                            设计单位:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.designunit"/>
                        </td>
                        <td class="form_label">
                            安装单位:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.installationunit"/>
                        </td>
                        <td class="form_label">
                            安装竣工日期:
                        </td>
                        <td colspan="1">
                         <input id="date1" style="width: 100%" class="nui-datepicker" name="pressurepiping.installationcompletiondate" format="yyyy-MM-dd"/>
                           <!--  <input class="nui-textbox" style="width: 100%" name="pressurepiping.installationcompletiondate"/> -->
                        </td>
                        
                    </tr>
                    <tr>
                        <td class="form_label">
                            检验机构:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.inspectioninstitution"/>
                        </td>
                        <td class="form_label">
                            检验日期:
                        </td>
                        <td colspan="1">
                        	<input id="date2" style="width: 100%" class="nui-datepicker" name="pressurepiping.inspectiondate" format="yyyy-MM-dd"/>
                           <!--  <input class="nui-textbox" style="width: 100%" name="pressurepiping.inspectiondate"/> -->
                        </td>
                        <td class="form_label">
                            投运日期:
                        </td>
                        <td colspan="1">
                        <input id="date3" style="width: 100%" class="nui-datepicker" name="pressurepiping.commissioningdate" format="yyyy-MM-dd"/>
                            <!-- <input class="nui-textbox" style="width: 100%" name="pressurepiping.commissioningdate"/> -->
                        </td>
                        <td class="form_label">
                            运行时间:
                        </td>
                        <td colspan="1">
                        	<input id="date4" style="width: 100%" class="nui-datepicker" name="pressurepiping.runningtime" format="yyyy-MM-dd"/>
                           <!--  <input class="nui-textbox" style="width: 100%" name="pressurepiping.runningtime"/> -->
                        </td>
                        <td class="form_label" rowspan="2">
					            版本:
					                  </td>
					                  <td colspan="2" rowspan="2">
				                           <input class="nui-textbox" emptyText="请输入等轴图版本" required="true" requiredErrorText="版本号不能为空" style="width: 100%" name="pressurepiping.equiaxialgraphversion"/>
                    				  </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            使用单位:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.useunit"/>
                        </td>
                        <td class="form_label">
                            主要问题:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.mainproblems"/>
                        </td>
                        <td class="form_label">
                            重要管道:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.importantpipeline"/>
                        </td>
                        <td class="form_label">
                            管道铺设方式:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.pipelinelayingmethod"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            检验结论:
                        </td>
                        <td colspan="3">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.testconclusion"/>
                        </td>
                        <td class="form_label">
                            备注:
                        </td>
                        <td colspan="3">
                            <input class="nui-textbox" style="width: 100%" name="pressurepiping.remarks"/>
                        </td>
                            <input class="nui-hidden" name="pressurepiping.isdel" value="0"/>
                    </tr>
                </table>
            </div>
            </div>
        </fieldset>
        
        <!-- 从表的修改 -->
        <!-- <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;"> -->
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
                    <!-- <div class="nui-fit"> -->
                    <div id="grid_0" class="nui-datagrid" style="width:100%;height:150px;"  sortField="pipesegmentno"
                            sortOrder="asc" showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" allowCellValid="true"
					oncellvalidation="onCellValidation">
                        <div property="columns">
                             <div type="indexcolumn"></div>
                             <div type="checkcolumn">
                            </div>
                            <div field="jd" allowSort="true" align="left" headerAlign="center" width="" visible="false">
                                    基地         		<input class="nui-textbox" id="jd0" enabled="true" name="jd" property="editor"  visible="false"/>
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
                   <!--  </fieldset> -->
                   	 
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
                                    <a class="nui-button " id="add1" onclick="gridAddRow('grid_1')"  tooltip="增加">
                                       		 增加&nbsp;
                                    </a>
                                    <a class="nui-button " id="del1" onclick="gridRemoveRow('grid_1')"  tooltip="删除">
                                        		删除&nbsp;
                                    </a>
                                </td>
                                <td style="width:10%;">
                                    	管道化学成分信息
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
                   
                    <div id="grid_1" class="nui-datagrid" style="width:50%;height:150px;float:left"  sortField="weldnumber"
                            sortOrder="asc" showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" oncellvalidation="onCellValidation">
                        <div property="columns">
                            <div type="checkcolumn">
                            </div>
                            <div field="jd" allowSort="true" align="left" headerAlign="center" width="" visible="false">
                                    基地         		<input class="nui-textbox" id="jd1" enabled="true" name="jd" property="editor"  />
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
              
                    <div id="grid_2" class="nui-datagrid" style="width:50%;height:150px;float:left" showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" oncellvalidation="onCellValidation">
                        <div property="columns">
                            <div type="checkcolumn">
                            </div>
                            <div field="jd" allowSort="true" align="left" headerAlign="center" width=""  visible="false">
                                    基地         		<input class="nui-textbox" id="jd2" enabled="true" name="jd" property="editor" />
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
	 				
 				<!-- <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;"> -->
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
                    <div id="grid_3" class="nui-datagrid" style="width:100%;height:150px;" showPager="false" sortMode="client" allowCellEdit="true" allowCellSelect="true" multiSelect="true" editNextOnEnterKey="true" onCellBeginEdit="onCellBeginEdit">
                        <div property="columns">
                            <div type="checkcolumn">
                            </div>
                            <div field="jd" allowSort="true" align="left" headerAlign="center" width="" visible="false">
                                    基地         		<input class="nui-textbox" id="jd3" enabled="true" name="jd" property="editor"  />
                            </div>
                            <div field="jz" allowSort="true" align="left" headerAlign="center" width="" visible="false">
                                     机组			<input property="editor" id="jz3" class="nui-textbox" name="jz" style="width:100%;" />
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
           <!--  </fieldset> -->
            
            
            <table id="form_sh">
            </tr>
                <tr class="changeReasons_yy" style="display: none;">
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textarea" id="changereaso" style="width:100%"
				required="true" requiredErrorText="请输入名称"
					name="pressurepiping.changeReason" /></td>
			</tr>
                <tr class="changeReasons" style="display: none;">
			<td class="form_label">校核人员</td>
					 <td colspan="3">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
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
	                    <a class="nui-button"  onclick="onDelete()" id="btnDelete">
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
            var flowchartfileid="";
            var equiaxialgraphfileid="";
            var fildid="";
            var processInstId =nui.get("processInstId").getValue();
            var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
            
			if(isadmin == "true"){
							$(".changeReasons").hide();
						}else{
							$(".changeReasons").show();
						}
						$(".changeReasons").show();
						
			$(".changeReasons_yy").show();
			
			getPressurepipingmodif();
			var pressure;
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
                   	
					nui.get("changereaso").setValue(text.pressurepiping.changeReasons);
// 					nui.get("jhry").setValue(text.pressurepiping.jhry);
// 					nui.get("jhry").setText(text.pressurepiping.jhry);
// 					nui.get("ccry").setValue(text.pressurepiping.ccry);
// 					nui.get("ccry").setText(text.pressurepiping.ccry);

					nui.get("grid_0").sortBy("pipesegmentno","asc");
					nui.get("grid_1").sortBy("weldnumber","asc");
					nui.get("grid_2").sortBy("element","asc");
					nui.get("grid_3").sortBy("deviceversion","asc");
					
				}
			});
			}	
			//已办只读		
		  var editable = nui.get('editable').getValue();//已办
		if(editable=='false'){
			$('#btnSubmit').hide();
	         $('#btnDelete').hide();
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
	         $('.changeReasons').hide();
	         nui.get("grid_0").allowCellEdit=false;
			 nui.get("grid_1").allowCellEdit=false;
			 nui.get("grid_2").allowCellEdit=false;
			 nui.get("grid_3").allowCellEdit=false;
	         nui.get("grid_0").hideColumn(1);
	         nui.get("grid_1").hideColumn(1);
	         nui.get("grid_2").hideColumn(1);
	         nui.get("grid_3").hideColumn(1);
	    		fileHref();
	    		fileHref1();
	    		setEna();
		         labelModel();
		}
		//文本只读模式
		function labelModel(isEdit) {
            var form = new nui.Form("#dataform1");
            var form1 = new nui.Form("#form_sh");
            var fields = form.getFields();                
            var fields1 = form1.getFields();                
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
            	var form = new nui.Form("#dataform1");
                form.setChanged(false);
                
            	 var grid0 = nui.get("grid_0");
            	 var grid1 = nui.get("grid_1");
            	 var grid2 = nui.get("grid_2");
            	 var gd0columns=grid0.data;
            	 var gd1columns=grid1.data;
            	 var gd2columns=grid2.data;
            	 if(gd0columns.length>0){
            	  for (var i = 0; i < gd0columns.length; i++) {
            	  		if(typeof(gd0columns[i].pipesegmentno)=="undefined"||gd0columns[i].pipesegmentno==""){
            	  			nui.showTips({content: '管段编号不能为空',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd0columns[i].pipefittingpositionno)=="undefined"||gd0columns[i].pipefittingpositionno==""){
            	  			nui.showTips({content: '管段位置号不能为空',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd0columns[i].pipetype)=="undefined"||gd0columns[i].pipetype==""){
            	  			nui.showTips({content: '管件类型不能为空',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd0columns[i].fittingnumber)=="undefined"||gd0columns[i].fittingnumber==""){
            	  			nui.showTips({content: '管件编号不能为空',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
					}
				}
				if(gd1columns.length>0){
            	  for (var i = 0; i < gd1columns.length; i++) {
            	  		if(typeof(gd1columns[i].weldnumber)=="undefined"||gd1columns[i].weldnumber==""){
            	  			nui.showTips({content: '焊缝编号不能为空',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd1columns[i].characteristicparameter)=="undefined"||gd1columns[i].characteristicparameter==""){
            	  			nui.showTips({content: '特性参数不能为空',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
					}
				} 
				if(gd2columns.length>0){
            	  for (var i = 0; i < gd2columns.length; i++) {
            	  		if(typeof(gd2columns[i].element)=="undefined"||gd2columns[i].element==""){
            	  			nui.showTips({content: '元素不能为空',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
            	  		if(typeof(gd2columns[i].contents)=="undefined"||gd2columns[i].contents==""){
            	  			 nui.showTips({content: '含量不能为空',state: 'warning',x: 'center', y: 'center'});
            	  			return;	
            	  		}
					}
				}
				var form_sh = new nui.Form("#form_sh");
                form_sh.setChanged(false);
                form_sh.validate();
	            if(form_sh.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
                
                var urlStr = "com.cgn.itmp.conventionalislandand.pressurepipingbiz.updateEntityByMof.biz.ext";
	    		form.validate();
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            setGridData("grid_0","pressurepiping.waterpipefittinginfos");
                setGridData("grid_1","pressurepiping.pipeweldinformations");
                setGridData("grid_2","pressurepiping.pipelinechemicalinfos");
                setGridData("grid_3","pressurepiping.equipmenthistoryinfos");
	            var data = form.getData(false,true);
                data.pressurepiping.jhry=nui.get("jhry").text;
				data.pressurepiping.ccry = nui.get("ccry").value;
				data.pressurepiping.changeReasons=nui.get("changereaso").value;
				
				data.pressurepiping.flowchart = nui.get("flowchartname").value;
				if(flowchartfileid==""){
				}else{
				data.pressurepiping.flowchartfileid = flowchartfileid;
				}
				data.pressurepiping.equiaxialgraph = nui.get("equiaxialgraphname").value;
				if(equiaxialgraphfileid==""){
				}else{
				data.pressurepiping.equiaxialgraphfileid = equiaxialgraphfileid;
				}
				 data.jhry=nui.get("jhry").text;
				data.ccry = nui.get("ccry").value;
                data.delete_entity = data.pressurepiping;
	            data.entityType = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping_modif";
					   
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
                                    onCancel();
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

                    function onReset(){
                        form.reset();
                        form.setChanged(false);
                    }

//                     function onCancel(){
//                         CloseWindow("cancel");
//                     }
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
					
	function fileSub(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
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
							nui.get("flowchartname").setValue(data.list[0].name);
							nui.get("flowchartfileid").setValue(data.list[0].uri);
							flowchartfileid = data.list[0].uri;
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
		function fileSub1(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress2").css('display','');
			document.querySelector("#progress2 .progress-item").style.width = "0%";
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
   	    		$("#uploadform1").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
   		            processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress2', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress2 .progress-item").style.width = percent + "%";
		                }, false);
		            }
		            return xhr;
		        },
					success : function(data) {
						if (data.code == 1) {
							nui.get("equiaxialgraphname").setValue(data.list[0].name);
							nui.get("equiaxialgraphfileid").setValue(data.list[0].uri);
							equiaxialgraphfileid = data.list[0].uri;
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
		function onDelete(){
       nui.confirm("确定要作废流程？","提示",
          function(action){
             if(action=="ok"){
            nui.get("#btnSubmit").setEnabled(false);
               nui.get("#btnDelete").setEnabled(false);
                var json = {};
                 ;
                 json.processInstId = nui.getbyName('processInstId').getValue();
		         json.workItemId = nui.getbyName('workItemId').getValue();
				 json.entityType="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurepiping.Pressurepiping";
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
							  nui.get("#btnSubmit").setEnabled(true);
               nui.get("#btnDelete").setEnabled(true);
							});
						 }
            });
            }
          });
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
