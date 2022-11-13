<!DOCTYPE html>

<%@page import="java.util.Date"%>
<%@page import="com.cgn.itmp.basecommon.CommonUtil"%>
<%@page import="com.eos.data.datacontext.IUserObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<%
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String dataTime = df.format(new Date());
	IUserObject cu = CommonUtil.getUserObject();
	String userid = cu.getUserId();
	String username = cu.getUserRealName();
%>
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-14 10:51:27
- Description:
    --%>
<head>
<title>审查记录</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
<script src="<%=request.getContextPath()%>/common/common.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>

</head>
<body style="background-color: #f1f1f1; height: 100%">
	<div class="bs-docs-section" style="width: 100%; height: 100%;">
		<div class="nui-panel read" title="待审列表" style="width: 100%; height: 50%"
			buttons="collapse" showToolbar="true">
			<div style="width: 100%; height: 13%;">
				<div id="form1" class="nui-form" align="center" style="height: 100%">
					<!-- 数据实体的名称 -->
					<!--                 <input class="nui-hidden" name="welder/_entity" value="com.cgn.itmp.weldingmanagement.Welder.Welderall"> -->
					<input class="nui-hidden" name="processInstId"
						value="<b:write property='processInstId'/>" id="processInstId" />
					<input class="nui-hidden" name="jhry" id="jhry"
						value="<b:write property='jhry'/>" /> <input class="nui-hidden"
						name="ccry" id="ccry" value="<b:write property='ccry'/>" /> <input
						class="nui-hidden" id="workItemId" name="workItemId"
						value="<b:write property='workItemId'/>" /> <input
						class="nui-hidden" id="modelFlag" name="modelFlag"
						value="<b:write property='modelFlag'/>" /> <input
						class="nui-hidden" id="editable" name="editable"
						value="<b:write property='editable'/>" /> <input
						class="nui-hidden" id="actInstId" name="actInstId"
						value="<b:write property='actInstId'/>" />
					<!-- 排序字段 -->
					<table id="table1" class="table" style="height: 100%">
						<input class="nui-hidden" id="uuid" name="uuid" value="" />
						<input class="nui-hidden" id="applicant" name="applicant" value="" />
						<input class="nui-hidden" id="record_person" name="" value="" />

						<tr>

							<td colspan="1" style="width: 6%">员工名称:</td>
							<td colspan="1" style="width: 10%"><input
								class="nui-textbox" style="width: 100%" name="name" id="name" />
							</td>
							<td colspan="1" style="width: 6%">员工号:</td>
							<td colspan="1" style="width: 10%"><input
								class="nui-textbox" name="empnumber" style="width: 100%"
								id="empnumber" /></td>
							<td colspan="1" style="width: 7%">工作类别:</td>
							<td colspan="1" style="width: 10%"><input
								class="nui-textbox" name="job" style="width: 100%" id="job" /></td>
							<td colspan="1" style="width: 7%">所属公司:</td>
							<td colspan="1" style="width: 10%"><input
								class="nui-textbox" name="company" style="width: 100%"
								id="company" /></td>
							<td colspan="1" style="width: 7%">大修轮次:</td>
							<td colspan="1" style="width: 10%">
								<div id="combobox1" name="rounds" property="editor"
									popupWidth="100%" class="nui-combobox" style="width: 50%;"
									popupWidth="150" textField="name" valueField="id" url=""
									onvaluechanged="getalltime" multiSelect="false" valueField="id"
									textField="name" dataField="jsonObject">
							</td>
							<td><button
									class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="chaxun()">查询</button></td>
							<td><button
									class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="chaxunqingdan()">导入查询清单</button></td>
							<td><button
									class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="qingkong()">清空</button></td>

						</tr>
					</table>
				</div>
			</div>
			<div class="nui-fit read" style="width: 100%; height: 33%;">
				<div id="datagrid1" dataField="data" class="nui-datagrid"
					style="width: 100%; height: 100%;"
					url="com.cgn.itmp.dailyandoverhaul.authorization.Common.checkqueryAll.biz.ext"
					pageSize="20" sizeList="[20,100,1000]" showPager="fales" multiSelect="true"
					allowSortColumn="false">
					<div property="columns">
						<div type="indexcolumn"></div>
						<div type="checkcolumn"></div>
						<div field="name" headerAlign="center" allowSort="true">姓名
						</div>
						<div field="company" headerAlign="center" allowSort="true">
							所属公司</div>
						<div field="employeenumber" headerAlign="center" allowSort="true">
							员工号</div>
						<div field="code" headerAlign="center" allowSort="true">
							焊工代码</div>
						<div field="special" headerAlign="center" allowSort="true">
							特种作业名称</div>
						<div field="job" headerAlign="center" allowSort="true">
							作业类别</div>
						<div field="authority" headerAlign="center" allowSort="true">
							发证机关</div>
						<div field="items" headerAlign="center" allowSort="true"
							renderer="dicCZXM">操作项目</div>
						<div field="operatingnumber" headerAlign="center" allowSort="true">
							操作证编号</div>
						<div field="validity" headerAlign="center" allowSort="true"
							dateFormat="yyyy-MM-dd">证件有效期</div>
						<div field="review" headerAlign="center" allowSort="true"
							dateFormat="yyyy-MM-dd">复审日期</div>
						<div field="initial" headerAlign="center" allowSort="true"
							dateFormat="yyyy-MM-dd">初领日期</div>
						<div field="status" headerAlign="center" allowSort="true"
							renderer="dicWSZT">状态</div>
						<div field="remarks" headerAlign="center" allowSort="true">
							备注</div>
						<div field="uuid" headerAlign="center" allowSort="true"
							visible="false">uuid</div>

					</div>
				</div>
			</div>
		</div>

		<!--footer-->
		<div class="nui-panel down" title="已选列表" style="width: 100%; height: 100%;"
			buttons="collapse" showToolbar="true">
			<div id="form2" class="nui-form" align="center">
				<div class="nui-toolbar" style="border-bottom: 0; padding: 0px;">
					<table style="width: 100%;">
						<tr>

							<td style="height: 13%;">
								<button class="mini-button btn btn-default btn-xs btn-submit"
									id="addrow" type="button" onclick="tankuang()">添加</button>
								<button class="mini-button btn btn-default btn-xs btn-submit"
									id="deleterow" type="button" onclick="shanchu()">删除</button>
								<button class="mini-button btn btn-default btn-xs btn-submit"
									id="qingkongrow" type="button" onclick="qingkong()">

									清空</button>
							</td>
							<td class="form_label jh" style="text-align: right;">校核人员:</td>
							<td colspan="3" class="jh"><input class="nui-buttonedit"
								readonly="readonly" onclick="onButtonSelectPerson" id="jhry"
								name="jhry" textField="empname" style="width: 100%" url=""
								required="true" requiredErrorText="请选择校核人员" valueField="empid" />
							</td>

							<td class="form_label cc" colspan="1" style="text-align: right;">选择抄送人员:</td>
							<td colspan="3" class="cc"><input property="editor"
								id="ccry" multi="true" name="copyperson" class="nui-textboxlist"
								dataField="list"
								url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
								valueField="empcode" textField="empcodename"
								ScrollBar="Vertical" searchField="keyword" /></td>
							<td>
								<button style="float: right"
									class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="onCancel()">关闭</button>
								<button style="float: right; margin: 0 8px;" id="btnDelete"
									class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="onDelete()">作废</button>

								<button style="float: right" id="btnSubmit"
									class="mini-button btn btn-default btn-xs btn-submit"
									type="button" onclick="onSubmit()">提交</button>
							</td>
						</tr>
					</table>
				</div>
			</div>

			<div class="nui-fit down" style="width: 100%; height: 40%;">
				<div id="datagrid2" dataField="machines" class="nui-datagrid"
					style="width: 100%; height: 100%;" showPager="false"
					showPageIndex="false" onselectionchanged="ceshi"
					allowCellEdit="true" allowCellSelect="true" multiSelect="true"
					editNextOnEnterKey="true">

					<div property="columns">
						<div type="indexcolumn"></div>
						<div type="checkcolumn"></div>

						<div field="name" name="name" headerAlign="center"
							allowSort="true">姓名</div>
						<div field="operatingnumber" name="operatingnumber"
							headerAlign="center" allowSort="true">操作证编号</div>

						<div field="job" name="job" headerAlign="center" allowSort="true">
							作业类别</div>
						<div field="authority" name="authority" headerAlign="center"
							allowSort="true">发证机关</div>
						<div field="items" name="items" headerAlign="center"
							allowSort="true" renderer="dicCZXM">操作项目</div>
						<div field="initial" name="initial" headerAlign="center"
							allowSort="true" dateFormat="yyyy-MM-dd">初领日期</div>
						<div field="validity" name="validity" headerAlign="center"
							allowSort="true" dateFormat="yyyy-MM-dd">证件有效期</div>
						<div field="review" name="review" headerAlign="center"
							allowSort="true" dateFormat="yyyy-MM-dd">复审日期</div>
						<div field="reviewresult" name="reviewresult" headerAlign="center"
							allowSort="true">
							结果
							                            <input class="nui-textbox" enabled="true" name="reviewresult" property="editor" required="false" visible="true"/>
						</div>
						<div field="reviewremarks" name="reviewremarks"
							headerAlign="center" allowSort="true">
							备注
							                            <input class="nui-textbox" enabled="true" name="reviewremarks" property="editor" required="false" visible="true"/>
						</div>
						<div field="cernumber" allowSort="true" align="left"
							headerAlign="center" width="">证书编号</div>
						<div field="projcode" allowSort="true" align="left"
							headerAlign="center" width="">项目代号</div>
						<div field="validdate" allowSort="true" align="left"
							headerAlign="center" width="" dateFormat="yyyy-MM-dd">有效时间

						</div>
						<div field="office" allowSort="true" align="left"
							headerAlign="center" width="">发证机关</div>
						<div field="recordresult" name="recordresult" headerAlign="center"
							allowSort="true">
							结果
							                            <input class="nui-textbox" enabled="true" name="recordresult" property="editor" required="false" visible="true"/>
						</div>
						<div field="recordremarks" name="recordremarks"
							headerAlign="center" allowSort="true">
							备注
							                            <input class="nui-textbox" enabled="true" name="recordremarks" property="editor" required="false" visible="true"/>
						</div>
						<div field="uuid" headerAlign="center" allowSort="false" visible="false">
                            uuid
                        </div>
                        <div field="puuid" headerAlign="center" allowSort="false" visible="false">
                            puuid
                        </div>
					</div>
				</div>
				
			</div>
				
			
							
			
		</div>
	</div>
	<script type="text/javascript">
    		nui.parse();
            var grid = nui.get("datagrid1");
            var grid2 = nui.get("datagrid2");
            var jdid="";
            var title="";
            var starttime;
            var endtime;
            var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
           
			var processInstId =nui.get("processInstId").getValue();
			var modelFlag=nui.get("modelFlag").getValue();
            //保存值
            var zhi;
            //判断是否是修改
            var panduan;
// 			var formData=fz();
            
 			
 			
//             grid.load(formData);			    
            getReviewrecord();


            chec();
			function getReviewrecord(){
			
			var form = new nui.Form("#form1");//将普通form转为nui的form
			
					entityType="com.cgn.itmp.weldingmanagement.Review.Reviewrecord_mf";
				
				var json=nui.encode({processInstId:processInstId,entityType:entityType});
				$.ajax({
					url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",//可复用
					type : 'POST',
					data : json,
					cache : false,
					contentType : 'text/json',
					success : function(text) {
					
							var data=text.data;
						
						if(data){
							jdid=data.jd;
							nui.get('combobox1').setAjaxType("POST");
							nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+data.jd);
							nui.get("combobox1").setValue(data.overhaul);
							getalltime(nui.get("combobox1"));
							nui.get("uuid").setValue(data.uuid);
							nui.get("record_person").setValue(data.record_person);
							title=data.record_name;
							nui.get("applicant").setValue(data.applicant);
							var formData=fz();
	            			grid.load(formData);
						}
						
						//是否可以编辑
						var editable=nui.get("editable").getValue();
						
						//不是创建人
						 if('<%=username%>'!= nui.getbyName('applicant').getValue()|| editable == 'false') {
								$('#btnSubmit').hide();
								$('#btnDelete').hide();
								$('#qingkongrow').hide();
								$("#addrow").hide();
								$("#deleterow").hide();
								$('#csry').hide();
								$('#form1').hide();
								$('.cc').hide();
								$('.jh').hide();
								$('.read').hide();
								$('.down').css({'height': '100%'});
								if (editable == 'false') {
									$('#btnRevoke').show();
								}
							}

							var json = nui.encode({
								paramdata : data
							});
							$
									.ajax({
										url : "com.cgn.itmp.weldingmanagement.reviewrecordbiz.getReviewrecord.biz.ext",
										type : 'POST',
										data : json,
										cache : false,
										contentType : 'text/json',
										success : function(text) {
											var index = text.data.length;
											var marges = new Array();
											var json = new Array();
											var x = 0;
											//遍历主表
											for (var i = 0; i < index; i++) {

												var index2 = 1;
												if (text.data[i].certificates.length > 0) {
													index2 = text.data[i].certificates.length;
												}
												//添加合并单元格格式
												for (var row = 1; row < 12; row++) {
													var a = {};
													a["rowIndex"] = x;
													a["columnIndex"] = row;
													a["rowSpan"] = index2;
													a["colSpan"] = 1;
													marges.push(a);
												}
												x += index2;

												var b = {};
												b["name"] = text.data[i].name;
												b["operatingnumber"] = text.data[i].operatingnumber;
												b["job"] = text.data[i].job;
												b["authority"] = text.data[i].authority;
												b["items"] = text.data[i].items;
												b["initial"]=nui.formatDate(nui.parseDate(text.data[i].initial),"yyyy-MM-dd");
                								b["validity"]=nui.formatDate(nui.parseDate(text.data[i].validity),"yyyy-MM-dd");
												b["reviewresult"] = text.data[i].reviewresult;
												b["reviewremarks"] = text.data[i].reviewremarks;
												b["puuid"] = text.data[i].uuid;
												//                     			var validity=new Date(text.data[i].validity);
												//                     			if(validity>starttime&&validity>endtime){
												//                     				b["reviewresult"]="合格";
												//                     				b["reviewremarks"]="";
												//                     			}else if(validity>starttime&&validity<endtime){
												//                     				b["reviewresult"]="合格";
												//                     				b["reviewremarks"]="注意到期时间";
												//                     			}else{
												//                     				b["reviewresult"]="不合格";
												//                     				b["reviewremarks"]="";
												//                     			}
												
												b["review"] = text.data[i].review;

												if (text.data[i].certificates.length > 0) {
													//数据处理添加到列表中	
													for (var r = 0; r < index2; r++) {
														var child = $.extend(
																true, {}, b);
														;
														child["cernumber"] = text.data[i].certificates[r].cernumber;
														child["projcode"] = text.data[i].certificates[r].projcode;
														child["recordresult"] = text.data[i].certificates[r].recordresult;
														child["recordremarks"] = text.data[i].certificates[r].recordremarks;
														//                     			var validdate=new Date(text.data[i].certificates[r].validdate);
														//                     			if(validdate>starttime&&validdate>endtime){
														//                     				child["recordresult"]="合格";
														//                     				child["recordremarks"]="";
														//                     			}else if(validity>starttime&&validity<endtime){
														//                     				child["recordresult"]="合格";
														//                     				child["recordremarks"]="注意到期时间";
														//                     			}else{
														//                     				child["recordresult"]="不合格";
														//                     				child["recordremarks"]="";
														//                     			}
														if(text.data[i].certificates[r].validdate!=null&&text.data[i].certificates[r].validdate!=""){
															child["validdate"]=nui.formatDate(nui.parseDate(text.data[i].certificates[r].validdate),"yyyy-MM-dd");
														}
	
														child["office"] = text.data[i].certificates[r].office;
														child["uuid"] = text.data[i].certificates[r].uuid;
														json.push(child);
													}
												} else {
													json.push(b);
												}
											}
											//添加数据
											grid2.setData(json);
											//添加格式
											grid2.mergeCells(marges);
											var formData = fz();
											grid.load(formData);
											$('.down').css({'height': '100%'});
										}
									});
						}
					});

		}

		function onSubmit() {
			var combobox = nui.get("combobox1").text;
			var form = new nui.Form("#form1");
			var urlStr = "";
			form.validate();

			var formdata = form.getData(false, true);
			if (form.isValid() == false) {
				nui.showTips({
					content : '表单校验不通过,请确认',
					state : 'warning',
					x : 'center',
					y : 'center'
				});
				return;
			}
			if(nui.get("jhry").value==""){
						nui.alert("请选择审批人员");
						return;
					}
			var data = grid2.getData();
			var reviewrecord = {
				tcomany : form["company"],
				overhaul : combobox,
				record_name : title.split("核电站")[0]+"核电站"+combobox + "焊工资质审查清单",
				record_person : nui.get("record_person").value,
				copyperson : nui.get("ccry").value,
				review_person : nui.get("jhry").text,
				uuid : nui.get("uuid").getValue(),
			};
			formdata.data = data;
			formdata.obj = reviewrecord;
			formdata.type = "updatemf";
			urlStr = "com.cgn.itmp.weldingmanagement.reviewrecordbiz.updateReviewrecordprocess.biz.ext";

			formdata.jhry = nui.get("jhry").text;
			formdata.ccry = nui.get("ccry").value;
			var json = nui.encode(formdata);
			nui.get("#btnSubmit").setEnabled(false);
			$.ajax({
				url : urlStr,
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var returnJson = nui.decode(text);
					if (returnJson.exception == null) {
						nui.alert("提交成功");
						onCancel();
					} else {
						nui.alert("提交失败", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
								onCancel();
							}
						});
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					nui.alert(jqXHR.responseText, '错误', function(action) {
						nui.get("#btnSubmit").setEnabled(true);
					});
				}
			});
		}

		//页面条件筛选赋值
		function fz() {
			var id = new Array;
			var yicunzai = grid2.data;
			var ids = "";
			for (var index = 0; index < yicunzai.length; index++) {
				id.push(yicunzai[index]["puuid"]);
				ids += yicunzai[index]["puuid"];
				if (index < yicunzai.length - 1) {
					ids += ",";
				}
			}
			var form = new nui.Form("#form1").getData(false, false);
			var name = form["tjname"];
			var job = form["tjjob"];
			var employeenumber = form["tjemplo"];
			var company = form["company"];
			var json = {
				operatingnumber : id,
				name : name,
				job : job,
				employeenumber : employeenumber,
				jd : jdid,
				company : company
			};
			form["parameter/name"] = form["name"];
			form["parameter/empnubmer"] = form["empnubmer"];
			form["parameter/code"] = "Welder";
			form["parameter/jd"] = jdid;
			form["parameter/already"] = ids;
			form["parameter/company"] = form["company"];
			form["parameter/job"] = form["job"];
			return form;
		}

		function chaxun() {
			var a = fz();

			grid.load(a);
		}
		//导入查询清单
		function chaxunqingdan() {
			var data = {};

			data.modelFlag = "4";
			data.jdid = jdid;
			data.jzid = jzid;
			var json = nui.encode(data);
			$
					.ajax({
						url : "com.cgn.itmp.basecommon.Common.queryCountByEntity.biz.ext",
						type : 'POST',
						cache : false,
						data : json,
						contentType : 'text/json',
						success : function(data) {
							var count = data.count;
							if (count > 0) {
								nui.alert("该数据已存在,不能导入", "提示");
							} else {
								nui
										.open({
											showMaxButton : true,
											url : "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
											title : "新增记录",
											width : 600,
											height : 200,
											onload : function() {//弹出页面加载完成
												var iframe = this.getIFrameEl();
												var data = {
													chaxun : "1",
													pageType : "batchAdd",
													tempFileName : "drcxqd.xlsx",
													tempLoadName : "查询清单导入模板",
													entitfName : "com.cgn.itmp.weldingmanagement.Welder.Welder"
												};//传入页面的json数据
												iframe.contentWindow
														.SetData(data);
											},
											ondestroy : function(action) {//弹出页面关闭前
												var iframe = this.getIFrameEl();
												//获取选中、编辑的结果
												var data = iframe.contentWindow
														.GetData();
												chaxunqing(data.success);
												grid.reload();
											}
										});
							}
						}
					});
		}

		//合并单元格的格式
		function bianli(id) {
			//获取条件

			var json = nui.encode({
				operatingnumber : id,
				jd : jdid
			});
			//执行ajax去后台获取数据
			$
					.ajax({
						url : "com.cgn.itmp.weldingmanagement.welderbiz.getshencha.biz.ext",
						type : 'POST',
						data : json,
						cache : false,
						async : false,
						contentType : 'text/json',
						success : function(text) {
							var data = new Array();

							for (var i = 0; i < id.length; i++) {
								data.push(text.data[id[i]]);
							}

							grid.removeRows(data, true);
							var index = data.length;
							var marges = new Array();
							var json = new Array();

							//代表从第几行开始合并
							var x = 0;
							//遍历主表

							for (var i = 0; i < index; i++) {
								var index2 = 1;
								if (data[i].certificates) {
									index2 = data[i].certificates.length;
								}
								//添加合并单元格格式
								for (var row = 1; row < 12; row++) {
									var a = {};
									a["rowIndex"] = x;
									a["columnIndex"] = row;
									a["rowSpan"] = index2;
									a["colSpan"] = 1;
									marges.push(a);
								}
								x += index2;

							}
							//过滤掉已经添加过的数据
							data = huigun(data);

							//数据处理添加到列表中	
							for (var i = 0; i < data.length; i++) {
								var b = {};
								b["name"] = data[i].name;
								b["operatingnumber"] = data[i].operatingnumber;
								b["job"] = data[i].job;
								b["authority"] = data[i].authority;
								b["items"] = data[i].items;
								b["initial"]=nui.formatDate(nui.parseDate(data[i].initial),"yyyy-MM-dd");
                				b["validity"]=nui.formatDate(nui.parseDate(data[i].validity),"yyyy-MM-dd");
								b["review"] = data[i].review;
								b["puuid"] = data[i].uuid;
								var validity = nui.parseDate(data[i].validity);

								if (validity >= endtime) {
									b["reviewresult"] = "合格";
									b["reviewremarks"] = "";
								} else if (validity > starttime
										&& validity < endtime) {
									b["reviewresult"] = "合格";
									b["reviewremarks"] = "注意到期时间";
								} else {
									b["reviewresult"] = "不合格";
									b["reviewremarks"] = "";
								}
								if (data[i].certificates) {

									index2 = data[i].certificates.length;
									for (var r = 0; r < index2; r++) {
										var child = $.extend(true, {}, b);
										;

										child["cernumber"] = data[i].certificates[r].cernumber;
										child["projcode"] = data[i].certificates[r].projcode;
// 										child["validdate"] = data[i].certificates[r].validdate;
										child["office"] = data[i].certificates[r].office;
										child["uuid"] = data[i].certificates[r].uuid;
										
										if(data[i].certificates[r].validdate!=null&&data[i].certificates[r].validdate!=""){
											child["validdate"]=nui.formatDate(nui.parseDate(data[i].certificates[r].validdate),"yyyy-MM-dd");
			                				//自动审查
		                    				var validdate=nui.parseDate(data[i].certificates[r].validdate);
			                    			if(validdate>=endtime){
			                    				child["recordresult"]="合格";
			                    				child["recordremarks"]="";
			                    			}else if(validdate>starttime&&validdate<endtime){
			                    				child["recordresult"]="合格";
			                    				child["recordremarks"]="注意到期时间";
			                    			}else{
			                    				child["recordresult"]="不合格";
			                    				child["recordremarks"]="";
			                    			}
										}
										json.push(child);
									}
								} else {
									json.push(b);
								}

							}
							//添加数据
							grid2.addRows(json);
							//添加格式
							grid2.mergeCells(marges);
						}
					});
		}

		//把已经添加过去的的数据过滤掉
		function huigun(data) {
			var xin = new Array();
			var xy = grid2.getData();
			var cx = data;
			for (var i = 0; i < cx.length; i++) {
				var pd = 0;
				var yi = cx[i].operatingnumber;
				for (var j = 0; j < xy.length; j++) {
					var er = xy[j].operatingnumber;
					if (yi == er) {
						pd = 1;
					}
				}
				if (pd == 0) {
					xin.push(cx[i]);
				}
			}
			return xin;
		}
		//编辑数据回填得方法
		function setData(data) {
			zhi = data;
			panduan = "edit";
			data = nui.clone(data);

			nui.get("tcompany").setValue(data.tcomany);
			nui.get("combobox1").setValue(data.overhaul);
			nui.get("copyperson").setValue(data.copyperson);
			nui.get("review_person").setValue(data.review_person);

			var json = nui.encode({
				reviewrecord : data
			});
			$
					.ajax({
						url : "com.cgn.itmp.weldingmanagement.reviewrecordbiz.getReviewrecord.biz.ext",
						type : 'POST',
						data : json,
						cache : false,
						contentType : 'text/json',
						success : function(text) {

							var index = text.data.length;
							var marges = new Array();
							var json = new Array();
							var x = 0;
							//遍历主表
							for (var i = 0; i < index; i++) {
								var index2 = text.data[i].certificates.length;
								//添加合并单元格格式
								for (var row = 1; row < 12; row++) {
									var a = {};
									a["rowIndex"] = x;
									a["columnIndex"] = row;
									a["rowSpan"] = index2;
									a["colSpan"] = 1;
									marges.push(a);
								}
								x += index2;
								//数据处理添加到列表中	
								for (var r = 0; r < index2; r++) {
									var b = {};
									b["name"] = text.data[i].name;
									b["operatingnumber"] = text.data[i].operatingnumber;
									b["job"] = text.data[i].job;
									b["authority"] = text.data[i].authority;
									b["items"] = text.data[i].items;
									b["initial"] = text.data[i].initial;
									var validity = nui.parseDate(
											text.data[i].validity);
									if (validity > starttime
											&& validity > endtime) {
										b["reviewresult"] = "合格";
										b["reviewremarks"] = "";
									} else if (validity > starttime
											&& validity < endtime) {
										b["reviewresult"] = "合格";
										b["reviewremarks"] = "注意到期时间";
									} else {
										b["reviewresult"] = "不合格";
										b["reviewremarks"] = "";
									}
									b["validity"] = text.data[i].validity;
									b["review"] = text.data[i].review;
									b["cernumber"] = text.data[i].certificates[r].cernumber;
									b["projcode"] = text.data[i].certificates[r].projcode;

									var validdate = nui.parseDate(
											text.data[i].certificates[r].validdate);
									if (validdate > starttime
											&& validdate > endtime) {
										b["recordresult"] = "合格";
										b["recordremarks"] = "";
									} else if (validity > starttime
											&& validity < endtime) {
										b["recordresult"] = "合格";
										b["recordremarks"] = "注意到期时间";
									} else {
										b["recordresult"] = "不合格";
										b["recordremarks"] = "";
									}
									b["validdate"] = text.data[i].certificates[r].validdate;
									b["office"] = text.data[i].certificates[r].office;
									b["uuid"] = text.data[i].certificates[r].uuid;
									json.push(b);
								}
							}
							//添加数据
							grid2.setData(json);
							//添加格式
							grid2.mergeCells(marges);
							var formData = fz();
							grid.load(formData);
						}
					});
		}

		//添加行
		function tankuang() {
			if (nui.get("combobox1").text == "") {
				nui.alert("请填写大修轮次");
				return;
			}
			var array = new Array();
			var id = new Array;
			var rows = grid.getSelecteds();
			var yicunzai = grid2.data;
			grid.removeRows(rows, true);

			var count = "";
			for (var index = 0; index < yicunzai.length; index++) {
				if (count == "") {
					count = yicunzai[index]["puuid"];
					id.push(yicunzai[index]["puuid"]);
				}
				if (count == yicunzai[index]["puuid"]) {
					continue;
				} else {
					count = yicunzai[index]["puuid"];
					id.push(yicunzai[index]["puuid"]);
				}
			}
			for (var index = 0; index < rows.length; index++) {
				id.push(rows[index]["uuid"]);
			}
			bianli(id);
			chaxun();
		}
		//添加查询清单
		function chaxunqing(ids) {
			bianli(ids);
			var formData = fz();
			grid.load(formData);

		}
		//删除
		function shanchu() {

				var tiaojian=new Array;
				var id=new Array;
				var rows = grid2.getSelecteds();
				if(rows.length==0){
					nui.alert("请选择一条数据");
					return;
				}
				for (var i=0;i<rows.length;i++) {
					id[i]=rows[i]["puuid"];
				}
				var rowall=grid2.data;
				
				for(var i=0;i<id.length;i++){
					var remrows=new Array;
					
				    for(var j=0;j<rowall.length;j++){
				        if(rowall[j]["puuid"]!=id[i]){
// 				        	tiaojian.push(rowall[j]);
				        	remrows.push(rowall[j]);
				        }
				    }
				    rowall=remrows;
				}
				tiaojian=rowall;
				
				//删除数据重新编辑格式
				var flag="";
				var pd=0;
				//合并单元格判断值初始行数
				var x=0;
				var marges=new Array();
				var index2=1;
				for(var i=0;i<tiaojian.length;i++){
					if(flag==""){
						flag=tiaojian[i]["puuid"];
// 						index2+=1;
					}else{
						if(flag==tiaojian[i]["puuid"]){
							index2+=1;
							
						}else{
							flag=tiaojian[i]["puuid"];
							
							//添加合并单元格格式
		            		for(var row=1;row<12;row++){
		        				var a={};
		            			a["rowIndex"]=x;
		            			a["columnIndex"]=row;
		            			a["rowSpan"]=index2;
		            			a["colSpan"]=1;
		               			marges.push(a);
		        			}
		            		x+=index2;
		            		index2=1;
						}
					}
					if(i==tiaojian.length-1){
						//添加合并单元格格式
	            		for(var row=1;row<12;row++){
	        				var a={};
	            			a["rowIndex"]=x;
	            			a["columnIndex"]=row;
	            			a["rowSpan"]=index2;
	            			a["colSpan"]=1;
	               			marges.push(a);
	        			}
	            		x+=index2;
					}
					
				}
			//添加数据
			grid2.setData(tiaojian);
			//添加格式
			grid2.mergeCells(marges);
			chaxun();
		}
		//清空
		function qingkong() {
			var data = grid2.getData();
			grid2.removeRows(data, true);
			grid.load(formData);
		}
		//获取大修轮次
		function chec() {
			nui.get('combobox1').setAjaxType("POST");
			nui
					.get('combobox1')
					.load(
							"com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="
									+ jdid);
		}
		//获取大修轮次的开始时间和结束时间
		function getalltime(e) {
			var json = nui.encode({
				xh : e.value
			});
			$
					.ajax({
						url : "com.cgn.itmp.weldingmanagement.reviewrecordbiz.getdaxiutime.biz.ext",
						type : 'POST',
						data : json,
						cache : false,
						contentType : 'text/json',
						success : function(text) {
							var times = text.data;
							starttime = nui.parseDate(times.startTime);
							endtime = nui.parseDate(times.endTime);

						}
					});
		}

		var editRow = null;
		//测试
		function ceshi() {
			var row = grid2.getData();
			grid.beginEditRow(row);
			editRow = row;
		}

		//作废
		function onDelete() {
			nui
					.confirm(
							"确定要作废流程？",
							"提示",
							function(action) {
								if (action == "ok") {
									nui.get("#btnSubmit").setEnabled(false);
									nui.get("#btnDelete").setEnabled(false);
									var json = {};
									json.processInstId = nui.getbyName(
											'processInstId').getValue();
									json.workItemId = nui.getbyName(
											'workItemId').getValue();
									if (modelFlag == "1") {
										json.entityType = "com.cgn.itmp.weldingmanagement.Review.Reviewrecord";
									} else {
										json.entityType = "com.cgn.itmp.weldingmanagement.Review.Reviewrecord_mf";
									}
									var jsondata = nui.encode(json);
									$
											.ajax({
												url : "com.cgn.itmp.basecommon.WorkFlowCommon.wsterminateProcess.biz.ext",
												type : 'POST',
												data : jsondata,
												cache : false,
												contentType : 'text/json',
												success : function(data) {
													var message = "流程作废成功";
													nui.alert(message, "成功",
															function() {
																onCancel();
															});
												}
											});
								}
							});
		}
		function onCancel() {
			if (self.parent.parent.$("li.index&.icon-task"))
				self.parent.parent.$("li.index&.icon-task").remove();
			self.parent.location.reload();

			return;
		}
		function CloseWindow(action) {

			if (action == "close") {

			} else if (window.CloseOwnerWindow)
				return window.CloseOwnerWindow(action);
			else
				return window.close();
		}

		//性别公共代码转换
		function dicCZXM(e) {
			return nui.getDictText("CZXM", e.value);
		}
		//状态
		function dicWSZT(e) {
			return nui.getDictText("WSZT", e.value);
		}
	</script>
</body>
</html>