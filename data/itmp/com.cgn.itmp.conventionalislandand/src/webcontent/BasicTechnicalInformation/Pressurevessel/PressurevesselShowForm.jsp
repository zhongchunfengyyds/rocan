<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		<script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
		</script>
		<link type="text/css" href="<%=request.getContextPath()%>/css/themes/table.css" rel="stylesheet" />
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
			<input class="nui-hidden" name="pressurevessel.uuid"/>
			<input class="nui-hidden" name="pressurevessel.longitudinalwelds" id="pressurevessel.longitudinalwelds" />
			<input class="nui-hidden" name="pressurevessel.shellgirthwelds" id="pressurevessel.shellgirthwelds" />
			<input class="nui-hidden" name="pressurevessel.connectingpipes" id="pressurevessel.connectingpipes" />
			<input class="nui-hidden" name="pressurevessel.safetyvalves" id="pressurevessel.safetyvalves" />
			<input class="nui-hidden" name="pressurevessel.pressuregauges" id="pressurevessel.pressuregauges" />
			<input class="nui-hidden" name="pressurevessel.levelgauges" id="pressurevessel.levelgauges" />
			<input class="nui-hidden" name="pressurevessel.temperatureinstruments" id="pressurevessel.temperatureinstruments" />
			<input class="nui-hidden" name="pressurevessel.rupturediscs" id="pressurevessel.rupturediscs" />
			<input class="nui-hidden" name="pressurevessel.supplementaryinfos" id="pressurevessel.supplementaryinfos" />
			<input class="nui-hidden" name="pressurevessel.equipmenthistoryinfos" id="pressurevessel.equipmenthistoryinfos" />
			
			 <input class="nui-hidden" name="pressurevessel.uuid"/>
                 
                 <input class="nui-hidden" id="equipmentdrawnumberfileid" name="pressurevessel.equipmentdrawnumberfileid"/>
			<fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
				<legend>
					<a id="jbxx" onclick="jbxx()">-基本信息</a>
				</legend>
				<div id="form0">
					<table style="width:100%;height:95%;table-layout:fixed;" class="nui-form-table">
						<tr>
							<td class="form_label" style="width:80px">
								电站:
							</td>
							<td colspan="1"  style="width:160px" >
								<input id="jd" class="nui-combobox" name="pressurevessel.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"
								 textField="name"  emptyText="请选择电站" requiredErrorText="电站不能为空" readonly="readonly" dataField="jsonObject"
								 id="jd" valueField="id" onvaluechanged="reloadJz" style="width: 100%" />
							</td>
							<td class="form_label"  style="width:80px">
								机组:
							</td>
							<td colspan="1" style="width:160px">
								<input class="nui-combobox" name="pressurevessel.jz" emptyText="请选择机组" emptyText="请选择机组" 
								 requiredErrorText="机组不能为空" dataField="jsonObject" id="jz" textField="name" url="" valueField="id" style="width: 100%" readonly="readonly" />
							</td>
							<td class="form_label"  style="width:90px">
								系统:
							</td>
							<td colspan="1" style="width:160px">
								<input id="system"  emptyText="请选择系统" requiredErrorText="系统不能为空" 
								class="nui-dictcombobox" dictTypeId="YLRQXT" style="width:100%" readonly="readonly" name="pressurevessel.system" />
							</td>
							<td class="form_label" rowspan="3"  style="width:70px">
								设备图:
							</td>
							<td colspan="1" rowspan="3" >
								<table style="height:100px;width: 100%" align="left">
									<tr>

										<td class="form_label"  style="width:80px">
											上传图纸:
										</td>
										<td colspan="1" id="fileHref" >
										
										</td>
										<td colspan="1" style="display: none">
											 <div style="display: flex;">
											<input class="nui-textbox" style="width:100%" readonly="readonly" requiredErrorText="设备图不能为空" id="equipmentdrawnumbername" name="pressurevessel.equipmentdrawnumber" />
											<form id="uploadform" enctype="multipart/form-data">
												<input id="equipmentdrawnumber" class="" style="width:100%;display:none" type="file" name="pressurevessel.equipmentdrawnumber" accept="*" onchange="fileSub(this)"> 
											</form>
											
											</div>
										</td>
									</tr>
									<tr>

										<td class="form_label">
											图号:
										</td>
										<td colspan="1">
											<input class="nui-textbox" style="width: 100%" readonly="readonly" name="pressurevessel.drawingnumber" />
										</td>
									</tr>
									<tr>

										<td class="form_label">
											版本:
										</td>
										<td colspan="1">
											<input class="nui-textbox" style="width: 100%" readonly="readonly" name="pressurevessel.equipmentdrawversion" />
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
								<input class="nui-textbox" id="ssbbh"  emptyText="请输入设备编号" requiredErrorText="设备编号不能为空" style="width:100%" readonly="readonly"
								 name="pressurevessel.equipmentnumber" />
							</td>
							<td class="form_label">
								设备名称:
							</td>
							<td colspan="1">
								<input class="nui-textbox"  emptyText="请输入设备名称" requiredErrorText="设备名称不能为空" style="width:100%" readonly="readonly"
								 name="pressurevessel.equipmentname" style="width:100%" />
							</td>
							<td class="form_label">
								版本号:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.versionnumber"  emptyText="请输入版本号"
								 requiredErrorText="版本号不能为空" style="width:100%" readonly="readonly" />
							</td>
						</tr>
						<tr>
							<td class="form_label">
								容器类别:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.containercategories"  emptyText="请输入容器类别"
								 requiredErrorText="容器类别不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label">
								容器品种:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.containervariety"  emptyText="请输入容器品种"
								 requiredErrorText="容器品种不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label">
								所在车间分厂:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.workshopbranch"  emptyText="请输入所在车间分厂"
								 requiredErrorText="所在车间分厂不能为空" style="width:100%" readonly="readonly" />
							</td>
						</tr>
					</table>
				</div>
			</fieldset>
			<fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
				<legend>
					<a id="jsxx" onclick="jsxx()">-技术信息</a>
				</legend>
				<div id="form1">
					<table style="width:100%;height:95%;table-layout:fixed;" class="nui-form-table">
						<tr>
							<td class="form_label" colspan="2" style="width:140px;">
								容器内径:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.containerinnerdiameter"  emptyText="请输入容器内径"
								 requiredErrorText="容器内径不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2"  style="width:140px;">
								容器容积:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.containervolume"  emptyText="请输入容器容积"
								 requiredErrorText="容器容积不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2"  style="width:140px;">
								容器高(长):
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.containerheight"  emptyText="请输入容器高(长)"
								 requiredErrorText="容器高(长)不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2"  style="width:140px;">
								结构型式:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.structuretype"  emptyText="请输入结构型式"
								 requiredErrorText="结构型式不能为空" style="width:100%" readonly="readonly" />
							</td>
						</tr>
						<tr>
							<td class="form_label" colspan="2" >
								封头型式:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.headtype"  emptyText="请输入封头型式" requiredErrorText="封头型式不能为空"
								 style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2">
								支座型式:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.supportform"  emptyText="请输入支座型式"
								 requiredErrorText="支座型式不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2">
								壳体重量:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.shellweight" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2">
								内件重量:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.innerweight" style="width:100%" readonly="readonly" />
							</td>
						</tr>
						<tr>
							<td class="form_label" colspan="2">
								充装重量:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.fillingweight" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2">
								有无保温绝热:
							</td>
							<td colspan="1">
								<input class="nui-combobox" name="pressurevessel.whetherthermalinsulation"  valueField="id"
								 textField="text" data="[{id:'是',text:'是'},{id:'否',text:'否'}]" emptyText="请选择有无保温绝热" requiredErrorText="有无保温绝热不能为空"
								 style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2">
								工作压力(完程):
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.finishedworkingpressure" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2">
								工作压力(管程):
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.tubeprocessworkingpressure" style="width:100%" readonly="readonly" />
							</td>
						</tr>
						<tr>
							<td class="form_label" colspan="2">
								氧舱测氧方法:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.oxygenmeasurementmethod" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2">
								罐车牌号:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.tanknumber" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2">
								罐车结构型式:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.tankerstructure" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2">
								罐车底盘号码:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.tankcarchassisnumber" style="width:100%" readonly="readonly" />
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
								<input class="nui-textbox" name="pressurevessel.bodymaterialcylinder"  emptyText="请输入筒体"
								 requiredErrorText="筒体不能为空" style="width:100%" readonly="readonly" />
							</td>

							<td class="form_label" rowspan="4">
								主体厚度(mm):
							</td>
							<td class="form_label">
								筒体:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.bodythicknesscylinder"  emptyText="请输入筒体"
								 requiredErrorText="筒体不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" rowspan="4">
								工作介质:
							</td>
							<td class="form_label">
								壳程:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.workingmediumshell"  emptyText="请输入壳程"
								 requiredErrorText="壳程不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" rowspan="4">
								设计压力(Mpa):
							</td>
							<td class="form_label">
								壳程:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.designpressureshellside"  emptyText="请输入壳程"
								 requiredErrorText="壳程不能为空" style="width:100%" readonly="readonly" />
							</td>

						</tr>


						<tr>
							<td class="form_label">
								封头:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.bodymaterialhead"  emptyText="请输入封头"
								 requiredErrorText="封头不能为空" style="width:100%" readonly="readonly" />
							</td>

							<td class="form_label">
								封头:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.bodythicknesshead"  emptyText="请输入封头"
								 requiredErrorText="封头不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label">
								管程:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.workingmediumtube"  emptyText="请输入管程"
								 requiredErrorText="管程不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label">
								管程:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.designpressuretube"  emptyText="请输入管程"
								 requiredErrorText="管程不能为空" style="width:100%" readonly="readonly" />
							</td>
						</tr>
						<tr>
							<td class="form_label">
								内衬:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.bodymateriallining" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label">
								内衬:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.bodythicknesslining" style="width:100%" readonly="readonly" />
							</td>

							<td class="form_label">
								夹套:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.workingmediumjacket" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label">
								夹套:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.designpressurejacket" style="width:100%" readonly="readonly" />
							</td>
						</tr>
						<tr>
							<td class="form_label">
								夹套:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.bodymaterialjacket" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label">
								夹套:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.bodythicknessjacket" style="width:100%" readonly="readonly" />
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
								<input class="nui-textbox" name="pressurevessel.designtemperatureshellside"  emptyText="请输入壳程"
								 requiredErrorText="壳程不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" rowspan="3">
								工作温度(℃):
							</td>
							<td class="form_label">
								壳程:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.worktemperatureshellside"  emptyText="请输入壳程"
								 requiredErrorText="壳程不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" rowspan="3">
								腐蚀裕量:
							</td>
							<td class="form_label">
								筒体:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.corrosionmargincylinder"  emptyText="请输入筒体"
								 requiredErrorText="筒体不能为空" style="width:100%" readonly="readonly" />
							</td>
						</tr>
						<tr>
							<td class="form_label">
								管程:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.designtemperaturetube"  emptyText="请输入管程"
								 requiredErrorText="管程不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label">
								管程:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.worktemperaturetube"  emptyText="请输入管程"
								 requiredErrorText="管程不能为空" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label">
								封头:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.corrosionmarginhead"  emptyText="请输入封头"
								 requiredErrorText="封头不能为空" style="width:100%" readonly="readonly" />
							</td>
						</tr>
						<tr>
							<td class="form_label">
								夹套:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.designtemperaturejacket" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label">
								夹套:
							</td>
							<td colspan="1">
								<input class="nui-textbox" name="pressurevessel.worktemperaturejacket" style="width:100%" readonly="readonly" />
							</td>
							<td class="form_label" colspan="2">
							</td>
						</tr>
						<input class="nui-hidden" name="pressurevessel.isdel" value="0" />
						<input class="nui-hidden" name="pressurevessel.createtime"/>
					</table>
				</div>
			</fieldset>
		</div>

		<!-- <fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;"> -->
			<legend>
				<a id="bwxx" onclick="bwxx()">-部位信息</a>
			</legend>
			<!-- 从表的修改 -->
			<div id="form3">
			<div title="壳体纵焊缝">
				<div class="nui-toolbar" style="border-bottom:0;padding:0px;">
					<table style="width:100%;">
						<tr>
							<td style="width:10%;">
								壳体纵焊缝
							</td>
							<td>
								<a class="nui-button " style="display:none" onclick="gridAddRow('grid_0')" tooltip="增加">
									增加&nbsp;
								</a>
								<a class="nui-button " style="display:none"  onclick="gridRemoveRow('grid_0')" tooltip="删除">
									删除&nbsp;
								</a>
							</td>
						</tr>
					</table>
				</div>
				<div id="grid_0" class="nui-datagrid" style="width:100%;height:150px;" showPager="false" sortMode="client" 
				 dataField="pressurevessel.longitudinalwelds" allowCellEdit="false" allowCellSelect="false" multiSelect="true"
				 editNextOnEnterKey="true" oncellvalidation="onCellValidation">
					<div property="columns">
						<div type="indexcolumn" width="5" width="5">
						</div>
						
						<div field="slweldnumber" allowSort="true" align="left" headerAlign="center" width="">
							壳体纵焊缝编号
							<input class="nui-textbox" name="slweldnumber" property="editor" />
						</div>
						<div field="slweldparameters" allowSort="true" align="left" headerAlign="center" width="">
							壳体纵焊缝特性参数
							<input class="nui-textbox" name="slweldparameters" property="editor" />
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
							<td>
								<a class="nui-button " style="display:none" onclick="gridAddRow('grid_1')" tooltip="增加">
									增加&nbsp;
								</a>
								<a class="nui-button " style="display:none" onclick="gridRemoveRow('grid_1')" tooltip="删除">
									删除&nbsp;
								</a>
							</td>
						</tr>
					</table>
				</div>
				<div id="grid_1" class="nui-datagrid" style="width:100%;height:150px;" showPager="false" sortMode="client" 
				 dataField="pressurevessel.shellgirthwelds" allowCellEdit="false" allowCellSelect="false" multiSelect="true"
				 editNextOnEnterKey="true"  oncellvalidation="onCellValidation">

					<div property="columns">
						<div type="indexcolumn" width="5" width="5">
						</div>
						<div field="sgweldnumber" allowSort="true" align="left" headerAlign="center" width="">
							壳体环焊缝编号
							<input class="nui-textbox" enabled="true" name="sgweldnumber" property="editor" required="false" visible="true" />
						</div>
						<div field="srweldparameters" allowSort="true" align="left" headerAlign="center" width="">
							壳体环焊缝特性参数
							<input class="nui-textbox" enabled="true" name="srweldparameters" property="editor" required="false" visible="true" />
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
							<td>
								<a class="nui-button " style="display:none" onclick="gridAddRow('grid_2')" tooltip="增加">
									增加&nbsp;
								</a>
								<a class="nui-button " style="display:none"  onclick="gridRemoveRow('grid_2')" tooltip="删除">
									删除&nbsp;
								</a>
							</td>
						</tr>
					</table>
				</div>
				<div id="grid_2" class="nui-datagrid" style="width:100%;height:150px;" showPager="false" sortMode="client"
				 dataField="pressurevessel.connectingpipes" allowCellEdit="false" allowCellSelect="false" multiSelect="true"
				 editNextOnEnterKey="true"  oncellvalidation="onCellValidation">

					<div property="columns">
						<div type="indexcolumn" width="5">
						</div>
						<div field="connectpipenumber" allowSort="true" align="left" headerAlign="center" width="">
							连接管道编号
							<input class="nui-textbox" enabled="true" name="connectpipenumber" property="editor" required="false" visible="true" />
						</div>
						<div field="connectpipeparameter" allowSort="true" align="left" headerAlign="center" width="">
							连接管道特性参数
							<input class="nui-textbox" enabled="true" name="connectpipeparameter" property="editor" required="false" visible="true" />
						</div>
					</div>
				</div>
			</div>
</div>
<!-- 		</fieldset> -->
<!-- 		<fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;"> -->
			<legend>
				<a id="aqfjjyb" onclick="aqfjjyb()">-安全附件及仪表</a>
			</legend>
			<div title="安全阀">
				<div class="nui-toolbar" style="border-bottom:0;padding:0px;">
					<table style="width:100%;">
						<tr>
							<td style="width:10%;">
								安全阀
							</td>
							<td>
								<a class="nui-button " style="display:none" onclick="gridAddRow('grid_3')" tooltip="增加">
									增加&nbsp;
								</a>
								<a class="nui-button " style="display:none" onclick="gridRemoveRow('grid_3')" tooltip="删除">
									删除&nbsp;
								</a>
							</td>
						</tr>
					</table>
				</div>
				<div id="grid_3" class="nui-datagrid" style="width:100%;height:150px;" showPager="false" sortMode="client" 
				 dataField="pressurevessel.safetyvalves" allowCellEdit="false" allowCellSelect="false" multiSelect="true"
				 editNextOnEnterKey="true"  oncellvalidation="onCellValidation">

					<div property="columns">
						<div type="indexcolumn" width="5">
						</div>
						<div field="svnumber" allowSort="true" align="left" headerAlign="center" width="">
							安全阀编号
							<input class="nui-textbox" name="svnumber" property="editor" />
						</div>
						<div field="svmodel" allowSort="true" align="left" headerAlign="center" width="">
							安全阀型号
							<input class="nui-textbox" name="svmodel" property="editor" />
						</div>
						<div field="svinstallationlocation" allowSort="true" align="left" headerAlign="center" width="">
							安全阀安装位置
							<input class="nui-textbox" name="svinstallationlocation" property="editor" />
						</div>
						<div field="svsettingpressure" allowSort="true" align="left" headerAlign="center" width="">
							安全阀整定压力
							<input class="nui-textbox" name="svsettingpressure" property="editor" />
						</div>
						<div field="svnominalpressure" allowSort="true" align="left" headerAlign="center" width="">
							安全阀公称压力
							<input class="nui-textbox" name="svnominalpressure" property="editor" />
						</div>
						<div field="svopeningpressure" allowSort="true" align="left" headerAlign="center" width="">
							安全阀开启压力
							<input class="nui-textbox" name="svopeningpressure" property="editor" />
						</div>
						<div field="svsealingpressure" allowSort="true" align="left" headerAlign="center" width="">
							安全阀密封压力
							<input class="nui-textbox" name="svsealingpressure" property="editor" />
						</div>
						<div field="svnominaldiameter" allowSort="true" align="left" headerAlign="center" width="">
							安全阀公称通径
							<input class="nui-textbox" name="svnominaldiameter" property="editor" />
						</div>
						<div field="svquantity" allowSort="true" align="left" headerAlign="center" width="">
							安全阀数量
							<input class="nui-textbox" name="svquantity" property="editor" />
						</div>
						<div field="svmanufacturer" allowSort="true" align="left" headerAlign="center" width="">
							安全阀制造厂家
							<input class="nui-textbox" name="svmanufacturer" property="editor" />
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
							<td>
								<a class="nui-button " style="display:none" onclick="gridAddRow('grid_4')" tooltip="增加">
									增加&nbsp;
								</a>
								<a class="nui-button " style="display:none" onclick="gridRemoveRow('grid_4')" tooltip="删除">
									删除&nbsp;
								</a>
							</td>
						</tr>
					</table>
				</div>

				<div id="grid_4" class="nui-datagrid" style="width:100%;height:150px;" showPager="false" sortMode="client" 
				 dataField="pressurevessel.pressuregauges" allowCellEdit="false" allowCellSelect="false" multiSelect="true"
				 editNextOnEnterKey="true"  oncellvalidation="onCellValidation">

					<div property="columns">
						<div type="indexcolumn" width="5">
						</div>
						<div field="pgnumber" allowSort="true" align="left" headerAlign="center" width="">
							压力表编号
							<input class="nui-textbox" name="pgnumber" property="editor" />
						</div>
						<div field="pgmodel" allowSort="true" align="left" headerAlign="center" width="">
							压力表型号
							<input class="nui-textbox" name="pgmodel" property="editor" />
						</div>
						<div field="pggerange" allowSort="true" align="left" headerAlign="center" width="">
							压力表量程
							<input class="nui-textbox" name="pggerange" property="editor" />
						</div>
						<div field="pginstallationlocation" allowSort="true" align="left" headerAlign="center" width="">
							压力表安装位置
							<input class="nui-textbox" name="pginstallationlocation" property="editor" />
						</div>
						<div field="pgaccuracy" allowSort="true" align="left" headerAlign="center" width="">
							压力表精度(误差)
							<input class="nui-textbox" name="pgaccuracy" property="editor" />
						</div>
						<div field="pgquantity" allowSort="true" align="left" headerAlign="center" width="">
							压力表数量
							<input class="nui-textbox" name="pgquantity" property="editor" />
						</div>
						<div field="pgmanufacturer" allowSort="true" align="left" headerAlign="center" width="">
							压力表制造厂家
							<input class="nui-textbox" name="pgmanufacturer" property="editor" />
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
							<td>
								<a class="nui-button " style="display:none" onclick="gridAddRow('grid_5')" tooltip="增加">
									增加&nbsp;
								</a>
								<a class="nui-button " style="display:none" onclick="gridRemoveRow('grid_5')" tooltip="删除">
									删除&nbsp;
								</a>
							</td>
						</tr>
					</table>
				</div>

				<div id="grid_5" class="nui-datagrid" style="width:100%;height:150px;" showPager="false" sortMode="client" 
				 dataField="pressurevessel.levelgauges" allowCellEdit="false" allowCellSelect="false" multiSelect="true"
				 editNextOnEnterKey="true"  oncellvalidation="onCellValidation">

					<div property="columns">
						<div type="indexcolumn" width="5">
						</div>
						<div field="lgnumber" allowSort="true" align="left" headerAlign="center" width="">
							液位计编号
							<input class="nui-textbox" name="lgnumber" property="editor" />
						</div>
						<div field="lgmodel" allowSort="true" align="left" headerAlign="center" width="">
							液位计型号
							<input class="nui-textbox" name="lgmodel" property="editor" />
						</div>
						<div field="lggerange" allowSort="true" align="left" headerAlign="center" width="">
							液位计量程
							<input class="nui-textbox" enabled="true" name="lggerange" property="editor" required="false" visible="true" />
						</div>
						<div field="lginstallationlocation" allowSort="true" align="left" headerAlign="center" width="">
							液位计安装位置
							<input class="nui-textbox" name="lginstallationlocation" property="editor" />
						</div>
						<div field="lgaccuracy" allowSort="true" align="left" headerAlign="center" width="">
							液位计精度(误差)
							<input class="nui-textbox" name="lgaccuracy" property="editor" />
						</div>
						<div field="lgquantity" allowSort="true" align="left" headerAlign="center" width="">
							液位计数量
							<input class="nui-textbox" name="lgquantity" property="editor" />
						</div>
						<div field="lgmanufacturer" allowSort="true" align="left" headerAlign="center" width="">
							液位计制造厂家
							<input class="nui-textbox" name="lgmanufacturer" property="editor" />
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
							<td>
								<a class="nui-button " style="display:none" onclick="gridAddRow('grid_6')" tooltip="增加">
									增加&nbsp;
								</a>
								<a class="nui-button " style="display:none" onclick="gridRemoveRow('grid_6')" tooltip="删除">
									删除&nbsp;
								</a>
							</td>
						</tr>
					</table>
				</div>
				<div id="grid_6" class="nui-datagrid" style="width:100%;height:150px;" showPager="false" sortMode="client"
				 dataField="pressurevessel.temperatureinstruments" allowCellEdit="false" allowCellSelect="false" multiSelect="true"
				 editNextOnEnterKey="true"  oncellvalidation="onCellValidation">

					<div property="columns">
						<div type="indexcolumn" width="5">
						</div>
						<div field="tinumber" allowSort="true" align="left" headerAlign="center" width="">
							测温仪表编号
							<input class="nui-textbox" enabled="true" name="tinumber" property="editor" required="false" visible="true" />
						</div>
						<div field="timodel" allowSort="true" align="left" headerAlign="center" width="">
							测温仪表型号
							<input class="nui-textbox" enabled="true" name="timodel" property="editor" required="false" visible="true" />
						</div>
						<div field="tigerange" allowSort="true" align="left" headerAlign="center" width="">
							测温仪表量程
							<input class="nui-textbox" enabled="true" name="tigerange" property="editor" required="false" visible="true" />
						</div>
						<div field="tiinstallationlocation" allowSort="true" align="left" headerAlign="center" width="">
							测温仪表安装位置
							<input class="nui-textbox" enabled="true" name="tiinstallationlocation" property="editor" required="false"
							 visible="true" />
						</div>
						<div field="tiaccuracy" allowSort="true" align="left" headerAlign="center" width="">
							测温仪表精度(误差)
							<input class="nui-textbox" enabled="true" name="tiaccuracy" property="editor" required="false" visible="true" />
						</div>
						<div field="tiquantity" allowSort="true" align="left" headerAlign="center" width="">
							测温仪表数量
							<input class="nui-textbox" enabled="true" name="tiquantity" property="editor" required="false" visible="true" />
						</div>
						<div field="timanufacturer" allowSort="true" align="left" headerAlign="center" width="">
							测温仪表制造厂家
							<input class="nui-textbox" enabled="true" name="timanufacturer" property="editor" required="false" visible="true" />
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
							<td>
								<a class="nui-button " style="display:none" onclick="gridAddRow('grid_7')" tooltip="增加">
									增加&nbsp;
								</a>
								<a class="nui-button " style="display:none" onclick="gridRemoveRow('grid_7')" tooltip="删除">
									删除&nbsp;
								</a>
							</td>
						</tr>
					</table>
				</div>
				<div id="grid_7" class="nui-datagrid" style="width:100%;height:150px;" showPager="false" sortMode="client" 
				 dataField="pressurevessel.rupturediscs" allowCellEdit="false" allowCellSelect="false" multiSelect="true"
				 editNextOnEnterKey="true"  oncellvalidation="onCellValidation">
					
					<div property="columns">
						<div type="indexcolumn" width="5">
						</div>
						<div field="rdnumber" allowSort="true" align="left" headerAlign="center" width="">
							爆破片编号
							<input class="nui-textbox" enabled="true" name="rdnumber" property="editor" required="false" visible="true" />
						</div>
						<div field="rdmodel" allowSort="true" align="left" headerAlign="center" width="">
							爆破片型号
							<input class="nui-textbox" enabled="true" name="rdmodel" property="editor" required="false" visible="true" />
						</div>
						<div field="rdgerange" allowSort="true" align="left" headerAlign="center" width="">
							爆破片量程
							<input class="nui-textbox" enabled="true" name="rdgerange" property="editor" required="false" visible="true" />
						</div>
						<div field="rdinstallationlocation" allowSort="true" align="left" headerAlign="center" width="">
							爆破片安装位置
							<input class="nui-textbox" enabled="true" name="rdinstallationlocation" property="editor" required="false"
							 visible="true" />
						</div>
						<div field="rdaccuracy" allowSort="true" align="left" headerAlign="center" width="">
							爆破片精度(误差)
							<input class="nui-textbox" enabled="true" name="rdaccuracy" property="editor" required="false" visible="true" />
						</div>
						<div field="rdquantity" allowSort="true" align="left" headerAlign="center" width="">
							爆破片数量
							<input class="nui-textbox" enabled="true" name="rdquantity" property="editor" required="false" visible="true" />
						</div>
						<div field="rdmanufacturer" allowSort="true" align="left" headerAlign="center" width="">
							爆破片制造厂家
							<input class="nui-textbox" enabled="true" name="rdmanufacturer" property="editor" required="false" visible="true" />
						</div>
					</div>
				</div>
			</div>
<!-- 		</fieldset> -->

		<fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;">
			<legend>
				<a id="fzxx" onclick="fzxx()">-辅助信息</a>
			</legend>
			<div id="form2">
			<input class="nui-hidden" name="uuid"/>
				<table style="width:100%;height:95%;table-layout:fixed;" class="nui-form-table">
					<tr>
						<td class="form_label">
							注册登记机构:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="registrationauthority" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							注册登记日期:
						</td>
						<td colspan="1">
							<input class="nui-datepicker" format="yyyy-MM-dd" name="registrationdate" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							设备注册代码:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="deviceregistrationcode" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							注册登记人员:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="registrant" style="width:100%" readonly="readonly" />
						</td>
					</tr>

					<tr>
						<td class="form_label">
							使用单位:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="useunit" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							使用单位组织机构代码:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="useorganizationcode" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							使用单位地址:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="useunitaddress" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							邮政编码:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="postalcode" style="width:100%" readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td class="form_label">
							安全管理部门:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="safetymanagementdepartment" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							安全管理人员:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="securitymanager" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							联系电话:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="contactnumber" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							使用登记证编号:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="useregistrationnumber" style="width:100%" readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td class="form_label">
							出厂编号:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="serialnumber" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							更新日期:
						</td>
						<td colspan="1">
							<input class="nui-datepicker" format="yyyy-MM-dd" name="updatedateday" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							产权单位及代码:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="propertyunitandcode" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							制造国:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="manufacturecountry" style="width:100%" readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td class="form_label">
							制造日期:
						</td>
						<td colspan="1">
							<input class="nui-datepicker" format="yyyy-MM-dd" name="manufacturedate" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							设计单位及代码:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="designunitandcode" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							设计日期:
						</td>
						<td colspan="1">
							<input class="nui-datepicker" format="yyyy-MM-dd" name="designdate" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							设计规范:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="designspecification" style="width:100%" readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td class="form_label">
							制造单位以及代码:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="manufacturingunitandcode" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							承担单位组织机构代码:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="undertakingorganizationcode" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							制造规范:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="manufacturingspecification" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							安装单位及代码:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="installationunitandcode" style="width:100%" readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td class="form_label">
							安装日期:
						</td>
						<td colspan="1">
							<input class="nui-datepicker" format="yyyy-MM-dd" name="installationdate" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							投用日期:
						</td>
						<td colspan="1">
							<input class="nui-datepicker" format="yyyy-MM-dd" name="usedate" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							监督单位及代码:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="supervisoryunitandcode" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							检验单位:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="inspectionentity" style="width:100%" readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td class="form_label">
							检验单位代码:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="inspectionunitcode" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							检验日期:
						</td>
						<td colspan="1">
							<input class="nui-datepicker" format="yyyy-MM-dd" name="inspectiondate" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							检验类别:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="identifycategory" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							主要问题:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="mainproblem" style="width:100%" readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td class="form_label">
							检验结论:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="testresults" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							报告书编号:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="reportnumber" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							下次检验日期:
						</td>
						<td colspan="1">
							<input class="nui-datepicker" format="yyyy-MM-dd" name="nextinspectiondate" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							事故类别:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="accidentcategory" style="width:100%" readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td class="form_label">
							事故发生日期:
						</td>
						<td colspan="1">
							<input class="nui-datepicker" format="yyyy-MM-dd" name="accidentdate" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							事故处理:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="accidenthandling" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							设备变更方式:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="devicechangemethod" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							设备变更项目:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="equipmentchangeproject" style="width:100%" readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td class="form_label">
							设备变更日期:
						</td>
						<td colspan="1">
							<input class="nui-datepicker" format="yyyy-MM-dd" name="equipmentchangedate" style="width:100%" readonly="readonly" />
						</td>
						<td class="form_label">
							变更承担单位:
						</td>
						<td colspan="1">
							<input class="nui-textbox" name="changecommitmentunit" style="width:100%" readonly="readonly" />
						</td>
					</tr>

				</table>
			</div>
		</fieldset>

<!-- 		<fieldset style="border:solid 1px #aaa;position:relative;margin:5px 2px 0px 2px;"> -->
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
							<td>
								<a class="nui-button " style="display:none" onclick="gridAddRow('grid_8')" tooltip="增加">
									增加&nbsp;
								</a>
								<a class="nui-button " style="display:none" onclick="gridRemoveRow('grid_8')" tooltip="删除">
									删除&nbsp;
								</a>
							</td>
						</tr>
					</table>
				</div>
				<div id="grid_8" class="nui-datagrid" style="width:100%;height:150px;" sortField="enteringtime" sortOrder="desc" showPager="false" sortMode="client" 
				 dataField="pressurevessel.equipmenthistoryinfos" allowCellEdit="false" allowCellSelect="false" multiSelect="true"
				 editNextOnEnterKey="true"  oncellvalidation="onCellValidation">

					<div property="columns">
						<div type="indexcolumn" width="5">
						</div>
						<div field="deviceversion" allowSort="true" align="left" headerAlign="center" width="">
							设备版本
							<input class="nui-textbox" enabled="true" name="deviceversion" property="editor" required="false" visible="true" />
						</div>
						<div field="commissiontime" allowSort="true" align="left" headerAlign="center" width="" dateFormat="yyyy-MM-dd">
							投运时间 <input property="editor" class="nui-datepicker" name="commissiontime" style="width:100%;" />
						</div>
						<div field="freezereplacetime" allowSort="true" align="left" headerAlign="center" width="" dateFormat="yyyy-MM-dd">
							冻结/更换时间 <input property="editor" class="mini-datepicker" name="freezereplacetime" style="width:100%;" />
						</div>
						<div field="freezereplacereason" allowSort="true" align="left" headerAlign="center" width="">
							冻结/更换原因
							<input class="nui-textbox" enabled="true" name="freezereplacereason" property="editor" required="false" visible="true" />
						</div>
						<div field="enteringperson" allowSort="true" align="left" headerAlign="center" width="">
							录入人
							<input class="nui-textbox" enabled="true" name="enteringperson" property="editor" required="false" visible="true" />
						</div>
						<div field="enteringtime" allowSort="true" align="left" headerAlign="center" width="" dateFormat="yyyy-MM-dd">
							录入时间
							<input property="editor" class="mini-datepicker" name="enteringtime" style="width:100%;" />
						</div>
						<div field="fj" allowSort="true" align="left" headerAlign="center" width="" renderer="setFile">
							附件  <input type="file" id="fj" name="file" multiple onchange="uploadFile(event,id)" /> 
							<!--  <input class="nui-textbox" enabled="true" name="fj" property="editor" required="false" visible="true"/> -->
						</div>
						<div field="operating" allowSort="true" align="left" headerAlign="center" width="">
							操作
							<input class="nui-textbox" enabled="true" name="operating" property="editor" required="false" visible="true" />
						</div>
					</div>
				</div>
			</div>
<!-- 		</fieldset> -->
<!-- <table id="form_sh"> -->
<!-- 			<tr class="changeReason_yy" style="display: none;"> -->
<!-- 				<td class="form_label">修改原因:</td> -->
<!-- 				<td colspan="1"><input class="nui-textarea" id="changeReasons" style="width:100%" -->
<!-- 				 requiredErrorText="请输入名称" -->
<!-- 					name="pressurevessel.changeReasons" /></td> -->
<!-- 			</tr> -->
<!-- 			<tr class="changeReasons" style="display: none;"> -->
<!-- 			<td class="form_label">校核人员</td> -->
<!-- 					 <td colspan="3"> -->
<!--                         <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="pressurevessel.jhry"  textField="empname" style="width:100%" url=""   requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<!--                     </td> -->
<!-- 				</tr> -->
<!-- 				<tr  class="changeReasons"> -->
<!-- 				<td class="form_label" colspan="1" -->
<!-- 					style="width: 16% !important; text-align: center">选择抄送人员:</td> -->
<!-- 				<td colspan="3"><input property="editor" name="ccry" id="ccry" multi="true" -->
<!-- 					name="copyperson" class="nui-textboxlist" dataField="list" -->
<!-- 					style="width: 100%; height: 100%;" -->
<!-- 					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext" -->
<!-- 					valueField="empcode" textField="empcodename" ScrollBar="Vertical" -->
<!-- 					searchField="keyword" /></td> -->
<!-- 			</tr> -->
<!-- 			</table> -->
		<div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
			<table width="100%">
					<tr>
                        <td style="text-align: center;" colspan="4"><a
						class="nui-button"  onclick="onCancel()">
							关闭</a>
							</td>
                    </tr>
						<!-- <a class="nui-button" onclick="qbss()">
							全部收缩/展开
						</a> -->
			</table>
		</div>
		</div>
		<script type="text/javascript">
			nui.parse();
			var equipmentdrawnumberfileid="";
			 var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
            
            if(isadmin == "true"){
				$("#btnSave").hide();
				$(".changeReason").hide();
				$(".changeReason_yy").hide();
			}else{
				$("#btnSave").show();
				$(".changeReason").show();
				$(".changeReason_yy").show();
			}
			
			var jdid = getCookie('jdid');
			var jzid = getCookie('jzid');
			nui.get("jd").setValue(jdid);
			nui.get('jz').setAjaxType("POST");
			nui.get('jz').load("com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid);
			nui.get("jz").setValue(jzid);
			var file;
			/* var loaddata2 = [
					{"id":"","name":"请选择.."},
					{"id":"ABP","name":"ABP"},
					{"id":"ACO","name":"ACO"},
					{"id":"ADG","name":"ADG"},
					{"id":"AHP","name":"AHP"},
					{"id":"ARE","name":"ARE"},
					{"id":"ATE","name":"ATE"},
					{"id":"CET","name":"CET"},
					{"id":"CEX","name":"CEX"},
					{"id":"GCT","name":"GCT"},
					{"id":"GPV","name":"GPV"},
					{"id":"GSS","name":"GSS"},
					{"id":"SAR","name":"SAR"},
					{"id":"SAT","name":"SAT"},
					{"id":"SHY","name":"SHY"},
					{"id":"SGZ","name":"SGZ"},
					{"id":"SRI","name":"SRI"},
					{"id":"STR","name":"STR"},
					{"id":"VVP","name":"VVP"}
			];
			nui.get('system').load(loaddata2); */



			var form = new nui.Form("#dataform1");
			var form_fzxx = new nui.Form("#form2");
			var tab = nui.get("tab");
			form.setChanged(false);
			form_fzxx.setChanged(false);
			//自定验证-------------------------
			//必填项校验
			function onCellValidation(e) {
				if (e.field == "slweldnumber" || e.field == "slweldparameters" ||
					e.field == "sgweldnumber" || e.field == "srweldparameters" ||
					e.field == "connectpipenumber" || e.field == "connectpipeparameter" ||
					e.field == "svnumber" || e.field == "svmodel" ||
					e.field == "pgnumber" || e.field == "pgmodel" ||
					e.field == "lgnumber" || e.field == "lgmodel" ||
					e.field == "tinumber" || e.field == "timodel" ||
					e.field == "rdnumber" || e.field == "rdmodel"
				) {
					if (e.value == null || e.value == "") {
						e.isValid = false;
						e.errorText = "必填字段不能为空";
					}
				}
			}

			function onCellBeginEdit(e) {

				var field = e.field,
					value = e.value;

				if (field == "fj") {
					file = e;
				}
			}
			function labelModel() {
		 	var form= new nui.Form("#dataform1");
		 	var form_fzxx = new nui.Form("#form2");
            var fields = form.getFields();   
            var fields1 = form_fzxx.getFields();   
                         
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

			//预览页面附件显示
			function setFile(e) {
				var fileRealName = e.record.fj;

				var fileId = e.record.fildid;
				if (fileRealName == null || fileRealName == 'null') {
					return "";
				}
				var html = '<a href="com.cgn.itmp.basecommon.fileDownload.flow?fileId=' + fileId + '" >' + fileRealName + '</a>';
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
					success: function(text) {
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
				if (e.sender.id == "fileName1") {
					nui.get("fpath1").setValue(appIconPath);
					nui.get("fname1").setValue(appIconName);
					nui.get("fpath").setValue(appIconPath);
				}
			}

			//自定结束标志-------------------------------------------
            function onOk(finishFirstActivityId){
                saveData(finishFirstActivityId);
            }

			function gridAddRow(datagrid) {
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

			function gridReload(datagrid) {
				var grid = nui.get(datagrid);
				grid.reload();
			}

			function setGridData(datagrid, dataid) {
				var grid = nui.get(datagrid);
				var grid_data = grid.getData();
				nui.get(dataid).setValue(grid_data);
			}
// 			var equipmentnumber1="";
			function setData(data) {
			
// 				equipmentnumber1=data.equipmentnumber
				data = nui.clone(data);
		
				var json = nui.encode({
					pressurevessel: data
				});
				$.ajax({
					url: "com.cgn.itmp.conventionalislandand.pressurevesselbiz.getPressurevessel.biz.ext",
					type: 'POST',
					data: json,
					cache: false,
					contentType: 'text/json',
					success: function(text) {
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
						if(typeof(text.pressurevessel.supplementaryinfos)!="undefined"){
						form_fzxx.setData(nui.decode(text.pressurevessel.supplementaryinfos[0]));
						form_fzxx.setChanged(false);
						}
						fileHref();
						//数据表格排序
						nui.get("grid_0").sortBy("slweldnumber","asc");
						nui.get("grid_1").sortBy("sgweldnumber","asc");
						nui.get("grid_2").sortBy("connectpipenumber","asc");
						nui.get("grid_3").sortBy("svnumber","asc");
						nui.get("grid_4").sortBy("pgnumber","asc");
						nui.get("grid_5").sortBy("lgnumber","asc");
						nui.get("grid_6").sortBy("tinumber","asc");
						nui.get("grid_7").sortBy("rdnumber","asc");
						nui.get("grid_8").sortBy("enteringtime","desc");
					}
				});
				if(isadmin == "true"){
                    		$(".changeReason_yy").hide();
								$(".changeReasons").hide();
								$("#btnSave").hide();
						}else{
								$("#btnSave").show();
								$(".changeReasons").show();
								$(".changeReason_yy").show();
							}
							labelModel()
			}
	function fileHref(){
		 var div = document.getElementById('fileHref');
			var fileRealName = nui.get('equipmentdrawnumbername').value;
			var fileId = nui.get('equipmentdrawnumberfileid').value;
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
			function saveData(finishFirstActivityId) {
				
				var grid0 = nui.get("grid_0");
				var grid1 = nui.get("grid_1");
				var grid2 = nui.get("grid_2");
				var grid3 = nui.get("grid_3");
				var grid4 = nui.get("grid_4");
				var grid5 = nui.get("grid_5");
				var grid6 = nui.get("grid_6");
				var grid7 = nui.get("grid_7");
				var grid8 = nui.get("grid_8");
				var gd0columns = grid0.data;
				var gd1columns = grid1.data;
				var gd2columns = grid2.data;
				var gd3columns = grid3.data;
				var gd4columns = grid4.data;
				var gd5columns = grid5.data;
				var gd6columns = grid6.data;
				var gd7columns = grid7.data;
				var gd8columns = grid8.data;

				if(gd0columns.length>0){
            	  for (var i = 0; i < gd0columns.length; i++) {
            	  		if(typeof(gd0columns[i].slweldnumber)=="undefined"||gd0columns[i].slweldnumber==""){
            	  			nui.alert("壳体纵焊缝编号不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd0columns[i].slweldparameters)=="undefined"||gd0columns[i].slweldparameters==""){
            	  			nui.alert("壳体纵焊缝特性参数不能为空!");
            	  			return;	
            	  		}
					}
				} 
				if(gd1columns.length>0){
            	  for (var i = 0; i < gd1columns.length; i++) {
            	  		if(typeof(gd1columns[i].sgweldnumber)=="undefined"||gd1columns[i].sgweldnumber==""){
            	  			nui.alert("壳体环焊缝编号不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd1columns[i].srweldparameters)=="undefined"||gd1columns[i].srweldparameters==""){
            	  			nui.alert("壳体环焊缝特性参数不能为空!");
            	  			return;	
            	  		}
					}
				} 
				if(gd2columns.length>0){
            	  for (var i = 0; i < gd2columns.length; i++) {
            	  		if(typeof(gd2columns[i].connectpipenumber)=="undefined"||gd2columns[i].connectpipenumber==""){
            	  			nui.alert("连接管道编号不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd2columns[i].connectpipeparameter)=="undefined"||gd2columns[i].connectpipeparameter==""){
            	  			nui.alert("连接管道特性参数不能为空!");
            	  			return;	
            	  		}
					}
				} 
				if(gd3columns.length>0){
            	  for (var i = 0; i < gd3columns.length; i++) {
            	  		if(typeof(gd3columns[i].svnumber)=="undefined"||gd3columns[i].svnumber==""){
            	  			nui.alert("安全阀编号不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd3columns[i].svmodel)=="undefined"||gd3columns[i].svmodel==""){
            	  			nui.alert("安全阀型号不能为空!");
            	  			return;	
            	  		}
					}
				}
				if(gd4columns.length>0){
            	  for (var i = 0; i < gd4columns.length; i++) {
            	  		if(typeof(gd4columns[i].pgnumber)=="undefined"||gd4columns[i].pgnumber==""){
            	  			nui.alert("压力表编号不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd4columns[i].pgmodel)=="undefined"||gd4columns[i].pgmodel==""){
            	  			nui.alert("压力表型号不能为空!");
            	  			return;	
            	  		}
					}
				}
				if(gd5columns.length>0){
            	  for (var i = 0; i < gd5columns.length; i++) {
            	  		if(typeof(gd5columns[i].lgnumber)=="undefined"||gd5columns[i].lgnumber==""){
            	  			nui.alert("液位计编号不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd5columns[i].lgmodel)=="undefined"||gd5columns[i].lgmodel==""){
            	  			nui.alert("液位计型号不能为空!");
            	  			return;	
            	  		}
					}
				}
				if(gd6columns.length>0){
            	  for (var i = 0; i < gd6columns.length; i++) {
            	  		if(typeof(gd6columns[i].tinumber)=="undefined"||gd6columns[i].tinumber==""){
            	  			nui.alert("测温仪表编号不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd6columns[i].timodel)=="undefined"||gd6columns[i].timodel==""){
            	  			nui.alert("测温仪表型号不能为空!");
            	  			return;	
            	  		}
					}
				}
				if(gd7columns.length>0){
            	  for (var i = 0; i < gd7columns.length; i++) {
            	  		if(typeof(gd7columns[i].rdnumber)=="undefined"||gd7columns[i].rdnumber==""){
            	  			nui.alert("爆破片编号不能为空!");
            	  			return;	
            	  		}
            	  		if(typeof(gd7columns[i].rdmodel)=="undefined"||gd7columns[i].rdmodel==""){
            	  			nui.alert("爆破片型号不能为空!");
            	  			return;	
            	  		}
					}
				}

				form.validate();
				if (form.isValid() == false){
				nui.alert("表单校验不通过,请确认!");
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
				
				var data = form.getData(false, true);
				 data.pressurevessel.jhry= nui.get("jhry").text;
				data.pressurevessel.ccry = nui.get("ccry").value;
				data.pressurevessel.changeReasons=nui.get("changeReasons").value;
				
				data.pressurevessel.equipmentdrawnumber = nui.get("equipmentdrawnumbername").value;
				if(equipmentdrawnumberfileid==""){
				}else{
				data.pressurevessel.equipmentdrawnumberfileid = equipmentdrawnumberfileid;
				}
				
// 				var equipmentnumberStr=data.pressurevessel.equipmentnumber;
//                 var bool=false;
//                 if(equipmentnumber1!=equipmentnumberStr){
//                  $.ajax({
//                  	async:false,
//                     url:"com.cgn.itmp.conventionalislandand.pressurevesselbiz.getEquipmentNumber.biz.ext",
//                     type:'POST',
//                     data:nui.encode({base:jdid,equipmentnumber:equipmentnumberStr,crew:jzid}),
//                     contentType:'text/json',
//                     success:function(text){
//                         	if(text.flag!=null){
//                         		bool=true;
//                         	}
//                        }
//                  });
//                  }
//                  if(bool){
//                     	nui.alert("设备编号已存在请重新输入！");
//                     	nui.get("ssbbh").setValue("");
//                     	return;
//                        	 }
                       	 
				var data1 = form2.getData(false, true);
				data.pressurevessel.supplementaryinfos = data1;
        	 	delUUID(data);//UUID清除
				
				
                var json = nui.encode(data);
                var allInfo = {};
		        allInfo.data = data.pressurevessel;
		        allInfo.data1 = data.pressurevessel;
		        allInfo.isadmin=isadmin;
		        allInfo.finishFirstActivityId = finishFirstActivityId;
		        allInfo.processInstName = "基础技术信息_压力容器_修改数据";
		        allInfo.processInstDesc = "基础技术信息_压力容器_修改数据";
		        allInfo.processDefName = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.pressurevessel.updatepressurevesselworkflow";
 		        allInfo.jhry =nui.get("jhry").text;
			   	allInfo.ccry = nui.get("ccry").value;
                json = nui.encode(allInfo);
				
				$.ajax({
					url: "com.cgn.itmp.conventionalislandand.pressurevesselbiz.updatePressurevesselWorkflow.biz.ext",
					type: 'POST',
					data: json,
					cache: false,
					contentType: 'text/json',
					success: function(text) {
						var returnJson = nui.decode(text);
						if (returnJson.exception == null) {
							CloseWindow("saveSuccess");
						} else {
							nui.alert("保存失败", "系统提示", function(action) {
								if (action == "ok" || action == "close") {
									//CloseWindow("saveFailed");
								}
							});
						}
					}
				});
			}
			
			function delUUID(data){
			var shellgirthweldslist= data.pressurevessel.shellgirthwelds;
					if(typeof(shellgirthweldslist)!="undefined"){
						for (var i = 0; i < shellgirthweldslist.length; i++) {
							shellgirthweldslist[i].uuid="";
						}
					}
// 2					
					var connectingpipeslist=data.pressurevessel.connectingpipes;
					if(typeof(connectingpipeslist)!="undefined"){
						for (var i = 0; i < connectingpipeslist.length; i++) {
							connectingpipeslist[i].uuid="";
						}
					}
// 	3
					var safetyvalveslist=data.pressurevessel.safetyvalves;
					if(typeof(safetyvalveslist)!="undefined"){
						for (var i = 0; i < safetyvalveslist.length; i++) {
							safetyvalveslist[i].uuid="";
						}
					}
// 4					
					var pressuregaugeslist=data.pressurevessel.pressuregauges;   
					if(typeof(pressuregaugeslist)!="undefined"){
						for (var i = 0; i < pressuregaugeslist.length; i++) {
							pressuregaugeslist[i].uuid="";
						}
					}
					// 5					
					var levelgaugeslist=data.pressurevessel.levelgauges;   
					if(typeof(levelgaugeslist)!="undefined"){
						for (var i = 0; i < levelgaugeslist.length; i++) {
							levelgaugeslist[i].uuid="";
						}
					}// 6					
					var temperatureinstrumentslist=data.pressurevessel.temperatureinstruments;   
					if(typeof(temperatureinstrumentslist)!="undefined"){
						for (var i = 0; i < temperatureinstrumentslist.length; i++) {
							temperatureinstrumentslist[i].uuid="";
						}
					}// 7					
					var rupturediscslist=data.pressurevessel.rupturediscs;   
					if(typeof(rupturediscslist)!="undefined"){
						for (var i = 0; i < rupturediscslist.length; i++) {
							rupturediscslist[i].uuid="";
						}
					}// 8					
					var supplementaryinfos=data.pressurevessel.supplementaryinfos;   
					if(typeof(supplementaryinfos)!="undefined"){
							supplementaryinfos.uuid="";
					}// 9					
					var equipmenthistoryinfoslist=data.pressurevessel.equipmenthistoryinfos;   
					if(typeof(equipmenthistoryinfoslist)!="undefined"){
						for (var i = 0; i < equipmenthistoryinfoslist.length; i++) {
							equipmenthistoryinfoslist[i].uuid="";
						}
					}// 10					
					var longitudinalweldslist=data.pressurevessel.longitudinalwelds;   
					if(typeof(longitudinalweldslist)!="undefined"){
						for (var i = 0; i < longitudinalweldslist.length; i++) {
							longitudinalweldslist[i].uuid="";
						}
					}
			}
			function onReset() {
				form.reset();
				form.setChanged(false);
			}

			function onCancel() {
				CloseWindow("cancel");
			}

			function CloseWindow(action) {

				if (action == "close") {

				} else if (window.CloseOwnerWindow)
					return window.CloseOwnerWindow(action);
				else
					return window.close();
			}

			function jbxx() {
				var div = $("#form0");
				div.slideToggle(300);
				if ($("#jbxx").text() == "-基本信息") {
					$("#jbxx").text("+基本信息");
				} else {
					$("#jbxx").text("-基本信息");
				}
			};

			function jsxx() {
				var div = $("#form1");
				div.slideToggle(300);
				if ($("#jsxx").text() == "-技术信息") {
					$("#jsxx").text("+技术信息");
				} else {
					$("#jsxx").text("-技术信息");
				}
			};

			function fzxx() {
				var div = $("#form2");
				div.slideToggle(300);
				if ($("#fzxx").text() == "-辅助信息") {
					$("#fzxx").text("+辅助信息");
				} else {
					$("#fzxx").text("-辅助信息");
				}
			};

			function sbls() {
				var div = $("#form5");
				div.slideToggle(300);
				if ($("#sbls").text() == "-设备历史信息") {
					$("#sbls").text("+设备历史信息");
				} else {
					$("#sbls").text("-设备历史信息");
				}
			}

			function bwxx() {
				var div = $("#form3");
				div.slideToggle(300);
				if ($("#bwxx").text() == "-部位信息") {
					$("#bwxx").text("+部位信息");
				} else {
					$("#bwxx").text("-部位信息");
				}
			}

			function aqfjjyb() {
				var div = $("#form4");
				div.slideToggle(300);
				if ($("#aqfjjyb").text() == "-安全附件及仪表") {
					$("#aqfjjyb").text("+安全附件及仪表");
				} else {
					$("#aqfjjyb").text("-安全附件及仪表");
				}
			}

			function qbss() {
				var div = $("#form0");
				var div1 = $("#form1");
				var div2 = $("#form2");
				var div3 = $("#form3");
				var div4 = $("#form4");
				var div5 = $("#form5");
				div.slideToggle(300);
				div1.slideToggle(300);
				div2.slideToggle(300);
				div3.slideToggle(300);
				div4.slideToggle(300);
				div5.slideToggle(300);
				if ($("#jbxx").text() == "-基本信息") {
					$("#jbxx").text("+基本信息");
				} else {
					$("#jbxx").text("-基本信息");
				}
				if ($("#jsxx").text() == "-技术信息") {
					$("#jsxx").text("+技术信息");
				} else {
					$("#jsxx").text("-技术信息");
				}
				if ($("#fzxx").text() == "-辅助信息") {
					$("#fzxx").text("+辅助信息");
				} else {
					$("#fzxx").text("-辅助信息");
				}
				if ($("#bwxx").text() == "-部位信息") {
					$("#bwxx").text("+部位信息");
				} else {
					$("#bwxx").text("-部位信息");
				}
				if ($("#aqfjjyb").text() == "-安全附件及仪表") {
					
					$("#aqfjjyb").text("+安全附件及仪表");
				} else {
					$("#aqfjjyb").text("-安全附件及仪表");
				}
				if ($("#sbls").text() == "-设备历史信息") {
					$("#sbls").text("+设备历史信息");
				} else {
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
   	    		$("#uploadform").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
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
		
		
		 $("input[readOnly]").keydown(function(e) {
              e.preventDefault();
         });
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