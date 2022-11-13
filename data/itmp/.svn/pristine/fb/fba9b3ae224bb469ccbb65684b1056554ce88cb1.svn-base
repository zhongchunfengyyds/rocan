<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@page import="javax.servlet.ServletOutputStream"%>
<%@page import="java.io.*"%>
<%@page import="com.eos.web.taglib.util.*"%>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	//获取标签中使用的国际化资源信息
	//	Object root = com.eos.web.taglib.util.XpathUtil.getDataContextRoot("request", pageContext);
	//	String jsondata = (String) XpathUtil.getObjectByXpath(root,"jsondata");
	String detailed = request.getParameter("detailed");
	UserObject user = (UserObject) request.getSession().getAttribute(
			"userObject");
	String userName = user.getUserRealName();
	String userRoleCodeList = user.getAttributes().get("roleCodeList")
			.toString();
%>
<html>
<%--
- Author(s): Sun
- Date: 2019-01-14 14:44:16
- Description:
    --%>

<head>
<title>大修执行条目查询</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript">
        </script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/themes/cuc/skin.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/common/common.js"></script>
	<style type="text/css">
		.mini-tree-selectedNode{
	background: #0084D2 !important;
    color: #ffffff !important;
}
	</style>
</head>
<body style="width: 98%; height: 98%; margin: 0 auto;">
	<%-- <div class="bs-docs-section">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
					<table cellpadding="0" cellspacing="0"
						class="table Keywordsearchtable" style="height: 100%;">
						<tr class="">
							<td class="form_label">关键字查询:</td>
							<td class="form_label"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td class="form_label"></td>
							<td class="form_label"></td>
						</tr>
					</table>
					<div id="overhaulform" class="nui-form display" align="left"
						style="height: 100%">
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulSearch">
						<!-- 排序字段 -->
						<input class="nui-hidden" name="criteria/_orderby[1]/_property"
							value="orderno"> <input class="nui-hidden"
							name="criteria/_orderby[1]/_sort" value="asc">
					
						
										<input id="parts" style="display: none" class="nui-textbox"
											name="criteria/_expr[4]/parts" /> <input class="nui-hidden"
											name="criteria/_expr[4]/_op" value="="> <input
											id="protype" style="display: none" class="nui-textbox"
											name="criteria/_expr[5]/protype" /> <input class="nui-hidden"
											name="criteria/_expr[5]/_op" value="="> <input
											style="display: none" id='baseid' class="nui-textbox"
											name="criteria/_expr[6]/base" /> <input class="nui-hidden"
											name="criteria/_expr[6]/_op" value="="> <input
											style="display: none" id='crewid' class="nui-textbox"
											name="criteria/_expr[7]/crew" /> <input class="nui-hidden"
											name="criteria/_expr[7]/_op" value="=">
										<table>
											<tr>
												<td class="form_label">项号:</td>
												<td colspan="1"><input class="nui-textbox"
													name="criteria/_expr[1]/itemno" /> <input
													class="nui-hidden" name="criteria/_expr[1]/_op"
													value="like"></td>
												<td class="form_label">检查方法:</td>
												<td colspan="1"><input class="nui-textbox"
													name="criteria/_expr[2]/method" /> <input
													class="nui-hidden" name="criteria/_expr[2]/_op"
													value="like"></td>
												<td class="form_label">维护项目:</td>
												<td colspan="1"><input id="detailed"
													class="nui-textbox" name="criteria/_expr[3]/detailed" /> <input
													class="nui-hidden" name="criteria/_expr[3]/_op"
													value="like"></td>
												<td class="form_label">轮次&状态:</td>
												<td colspan="1" class="col-sm-3 text-left"
													style="padding-left: 0px"><input id="combo1"
													class="nui-combobox" style="width: 50px;" valueField="id"
													required="true" allowInput="true" textField="text"
													pinyinField="tag">
														<div id="combobox2" class="nui-combobox"
															style="width: 100px;" popupWidth="150" textField="name"
															valueField="id" url="" multiSelect="true" showClose="true"
															oncloseclick="onCloseClick" dataField="jsonObject">
															<div property="columns">
																<div header="状态" field="name"></div>
															</div>
														</div>
												</td>
											</tr>
											<tr>
												<td class="form_label"
													style="padding-top: 5px; padding-bottom: 10px;">数据状态:
												</td>
												<td colspan="1" style="padding-top: 5px;"><input
													id="sjzt" class="nui-dictcombobox" dictTypeId="SJZT" /></td>
												<!-- </tr>
	                   <tr> -->
												<!--  <td class="col-sm-12" colspan="12"> -->
												<td style="position: absolute; right: 30px;">
													<div>

														<div style="float: left;">
															C<input class="nui-spinner" id="start" maxValue="60"
																minValue="1" style="width: 70px" name="" />-C<input
																class="nui-spinner" id="end" maxValue="60" minValue="1"
																style="width: 70px" name="" /> <a class="nui-button"
																onclick="search()" id="btnZq"> 修改显示周期 </a>
														</div>
														<ul class="nav navbar-nav navbar-right">
															<li><a href="#" class="dw-toggle "> <span
																	class="fa fa-angle-up fa-angle-down"></span>
															</a></li>
														</ul>
													</div>
												</td>
											</tr>
										</table>
									</div>
									<div property="footer" class="searchfooter" align="center">
										<a class="nui-button" onclick="btnQuery()"> 模糊查询 </a> <a
											class="nui-button" onclick="search()"> 查询 </a> <a
											class="nui-button" onclick="reset()"> 重置 </a>
										<div onclick="showquery()" id="funquery"
											class="fa fa-chevron-down fa-1x">
											&nbsp;<a>显示查询条件</a>
										</div>
									</div>
								</div>
							</div>
							</div>
						</div>

						<script type="text/javascript"
							src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
					</div>
				</div>
			</div> --%>
<div class="bs-docs-section">
	<div class="search-box">
		<div class="search-container folding-menu" id="queryForm">
			<div style="width: 100%; height: 98%;">
				<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;">
					<tr class="">
							<td class="form_label">关键字查询:</td>
							<td class="form_label"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td colspan="1"
								style="width:22%; border-right: 1px solid #f7f7f9 !important"
								class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()">
										模糊查询 </a> <a id="allQuery" style="display: none"
										class="btn btn-default" onclick="searchs()"> 查询 </a> <a
										class="btn btn-default" onclick="reset()"> 重置 </a>
									<div onclick="showquery()" id="funquery"
										class="fa fa-chevron-down fa-1x">
										&nbsp;<a id="scbt">高级查询</a>
									</div>
								</div>
							</td>
							<td colspan="2"><div style="float: left;">
															显示周期C&nbsp;<input class="nui-spinner" id="start" maxValue="60"
																minValue="1" style="width: 70px" name="" />-C<input
																class="nui-spinner" id="end" maxValue="60" minValue="1"
																style="width: 70px" name="" /><a class="nui-button"
																onclick="searchs()" id="btnZq"> 修改显示周期 </a>
														</div></td>
							<td style="width: 0%; background: #f7f7f9;" class="form_label">
							</td>
						</tr>
						
						
				</table>
				<div id="overhaulform" class="nui-form display" align="center" style="height: 9%">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulSearch">
					<!-- 排序字段 -->
					<input class="nui-hidden" name="criteria/_orderby[1]/_property"
												value="orderno"> <input class="nui-hidden"
												name="criteria/_orderby[1]/_sort" value="asc">
					<input id="parts" style="display: none" class="nui-textbox"
					name="criteria/_expr[4]/parts" /> <input class="nui-hidden"
					name="criteria/_expr[4]/_op" value="="> <input
					id="protype" style="display: none" class="nui-textbox"
					name="criteria/_expr[5]/protype" /> <input class="nui-hidden"
					name="criteria/_expr[5]/_op" value="="> <input
					style="display: none" id='baseid' class="nui-textbox"
					name="criteria/_expr[6]/base" /> <input class="nui-hidden"
					name="criteria/_expr[6]/_op" value="="> <input
					style="display: none" id='crewid' class="nui-textbox"
					name="criteria/_expr[7]/crew" /> <input class="nui-hidden"
					name="criteria/_expr[7]/_op" value="=">
					<table id="table1" class="table" style="height: 100%">
					
						<tr>
							<td class="form_label">项号:</td>
							<td colspan="1"><input class="nui-textbox"
													name="criteria/_expr[1]/itemno" /> <input
													class="nui-hidden" name="criteria/_expr[1]/_op"
													value="like"></td></td>
							<td class="form_label">检查方法:</td>
							<td colspan="1"><input class="nui-textbox"
													name="criteria/_expr[2]/method" /> <input
													class="nui-hidden" name="criteria/_expr[2]/_op"
													value="like"></td>
						</tr>
						<tr>
							<td class="form_label">维护项目:</td>
							<td colspan="1"><input id="detailed"
													class="nui-textbox" name="criteria/_expr[3]/detailed" /> <input
													class="nui-hidden" name="criteria/_expr[3]/_op"
													value="like"></td>
							<td class="form_label">轮次&状态:</td>
							<td colspan="1"><input id="combo1"
													class="nui-combobox" style="width: 40%;" valueField="id"
													required="true" allowInput="true" textField="text"
													pinyinField="tag">
														<div id="combobox2" class="nui-combobox"
															style="width: 50%;" popupWidth="150" textField="name"
															valueField="id" url="" multiSelect="true" showClose="true"
															oncloseclick="onCloseClick" dataField="jsonObject">
															<div property="columns">
																<div header="状态" field="name"></div>
															</div>
														</div></td>
						</tr>
						<tr>
							<td class="form_label">数据状态:</td>
							<td colspan="1"><input id="sjzt" style="width:100%"  class="nui-dictcombobox" dictTypeId="SJZT" /></td>
							
							<td colspan="1">
								<input id="detailed1" class="nui-hidden" name="criteria/_expr[11]/detailed" /> 
								<input class="nui-hidden" name="criteria/_expr[11]/_op" value="=">
							</td>
							
							
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
</div>
			<div region="center" style="width: 100%; height: 90%;"
				showToolbar="false" showFooter="false">
				<div class="nui-toolbar"
					style="border-bottom: 0; padding: 5px 0px; width: 100%;"
					name="ITMP_btn">
					<table style="width: 100%;">
						<tr>
							<td style="width: 77%;"><a id="add"
								class="nui-button btn btn-default btn-xs" onclick="add()"
								name="ITMP_btnAddOne"> 新增
							</a> <a id="update" class="nui-button btn btn-default btn-xs"
								onclick="edit()" name="ITMP_btnEdit"> 修改
							</a> 
							<!-- <button id="addallbut" style="position: relative;" class="btn btn-default"
								onclick="openAllAdd()">
								计划更新
							</button>
							<ul class="add_adds nui-menu" style="left:120px">
								<li onclick="planupdate('1');">计划完成</li>
								<li onclick="planupdate('2');">计划取消</li>
							</ul> -->
							<a id="planupdate" class="nui-menubutton btn btn-default btn-xs"
 								menu="#popupMenu" name="ITMP_btnPlan"> 计划更新
							</a>
								<ul id="popupMenu" class="nui-menu" style="display: none;">
 									<li id="complete" name="ITMP_btnPlanFulfil"
										onclick="planupdate('1');">计划完成</li>
									<li id="cancel" name="ITMP_btnPlanCancel" 
 										onclick="planupdate('2');">计划取消</li>
 								</ul> 
								
								<a id="openrecord" class="nui-button btn btn-default btn-xs"
								onclick="openrecord();" name="ITMP_btnHis"> 变更履历
							</a> <a class="nui-button btn btn-default btn-xs"
								onclick="synchronous" name="ITMP_btnSync"> 同步
							</a> <a class="nui-button btn btn-default btn-xs"
								onclick="batchAdd()" name="ITMP_btnAddBatch">导入
							</a> <a class="nui-button btn btn-default btn-xs" onclick="output()"
								name="ITMP_btnExp">导出
							</a> <a class="nui-button btn btn-default btn-xs" onclick="setDel()"
								name="ITMP_btnDel">删除
							</a> <a class="nui-button btn btn-default btn-xs"
								onclick="recover();" name="ITMP_btnRec"> 回收站
							</a> <a class="nui-button btn btn-default btn-xs"
								onclick="edition();" name="ITMP_btnUp">升版
							</a> <!--                             <ul id="popupMenu" class="nui-menu" style="display:none;"> -->
								<!--                               <li id="complete" onclick="planupdate('complete');">计划完成</li>	         -->
								<!--                               <li id="cancel" onclick="planupdate('cancel');">计划取消</li> -->
								<!--                             </ul> --></td>
							<!--    <td>
                        	C<input class="nui-spinner"  id="start" maxValue="60" value="1" style="width: 50px" name=""/>-C<input class="nui-spinner"  id="end" maxValue="60" value="60" style="width: 50px" name=""/>
							<a class="nui-button" onclick="search()">
				               周期
				            </a>
				         </td> -->
						</tr>
					</table>
				</div>

				<div class="nui-layout" style="width: 100%; height: 98%;">
					<div region="west" width="250" title="大修执行条目">
						<div class="nui-fit">
							<ul id="tree1" expandOnNodeClick="true" class="leftmenu inleftmenu nui-tree"
								resultAsTree="false" style="width: 100%; height: 100%;"
								idField="id" parentField="parentid" dataField="jsondata"
								textField="name" url="">
							</ul>
						</div>
					</div>
					<div title="center" region="center">
						<div class="nui-panel" title="数据列表"
							style="width: 100%; height: 100%;" showToolbar="false"
							showFooter="false">
							<div class="nui-fit">
								<div id="datagrid1" dataField="tdgglentrys" class="nui-datagrid"
									style="width: 100%; height: 100%;"
									url="com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.queryTdgglentrys.biz.ext"
									pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"
									onselectionchanged="selectionChanged" allowSortColumn="false"
									allowAlternating="true">

									<div property="columns">
										<div type="checkcolumn"></div>
										<div field="id" headerAlign="center" Align="center"
											allowSort="true" visible="false">id</div>
										<div field="uuid" headerAlign="center" Align="center"
											allowSort="true" visible="false">uuid</div>
										<div field="processInstId" headerAlign="center" Align="center"
											allowSort="true" visible="false">processInstId</div>
										<div field=processstatus headerAlign="center" Align="center"
											allowSort="true" visible="false">processstatus</div>
										<div field="mapnoid" headerAlign="center" Align="center"
											allowSort="true" visible="false">mapnoid</div>
										<div field="programid" headerAlign="center" Align="center"
											allowSort="true" visible="false">programid</div>
										<div field="toolid" headerAlign="center" Align="center"
											allowSort="true" visible="false">toolid</div>
										<div field="textprogramid" headerAlign="center" Align="center"
											allowSort="true" visible="false">textprogramid</div>
										<div field="ptype" headerAlign="center" Align="center"
											allowSort="true" visible="false">项目类型</div>
										<div field="orderno" headerAlign="center" Align="center"
											allowSort="true" visible="false">序号</div>
										<div field="datetime" headerAlign="center" Align="center"
											visible="false" allowSort="true"
											dateFormat="yyyy-MM-dd HH:mm:ss">日期</div>
										<div field="base" headerAlign="center" Align="center"
											allowSort="true" visible="false">基地</div>
										<div field="crew" headerAlign="center" Align="center"
											allowSort="true" visible="false">机组</div>
										<div field="protype" headerAlign="center" Align="center"
											allowSort="true" visible="false">项目类型</div>
										<div id="parts" visible="false" name="parts" field="parts"
											headerAlign="center" Align="center" allowSort="true">
											部件</div>
										<div field="template" headerAlign="center" Align="center"
											allowSort="true" visible="false">模板</div>
										<div field="referencefigureno" renderer="setmapno"
											headerAlign="center" Align="center" allowSort="true"
											width="65">参考图号</div>
										<div field="itemno" headerAlign="center" allowSort="true"
											width="40">项号</div>
										<div name="detectedsite" field="detectedsite"
											headerAlign="center" allowSort="true" width="65">被检部位</div>
										<div field="inspectionscope" headerAlign="center"
											allowSort="true" width="140">检查内容/检查范围</div>
										<div field="mapno" headerAlign="center" allowSort="true" width="200">
											流程图号/参考设备图/等轴图号</div>
										<div name="number" field="number" headerAlign="center"
											Align="center" allowSort="true" width="40">数量</div>
										<div name="approachmode" field="approachmode"
											headerAlign="center" allowSort="true" width="65">接近方式</div>
										<div name="method" field="method" headerAlign="center"
											Align="center" allowSort="true" width="70">检查方法</div>
										<div name="program" field="program" renderer="setprogram"
											headerAlign="center" Align="center" allowSort="true"
											width="120">参考程序</div>
										<div name="tool" field="tool" renderer="settool"
											headerAlign="center" Align="center" allowSort="true"
											width="120">专用工具</div>
										<div name="medium" field="medium" headerAlign="center"
											Align="center" allowSort="true">工作介质</div>
										<div name="operatingpressure" field="operatingpressure"
											headerAlign="center" Align="center" allowSort="true"  width="120">
											运行压力（Bar）</div>
										<div name="designpressure" field="designpressure"
											headerAlign="center" Align="center" allowSort="true" width="120">
											设计压力（Bar)</div>
										<div name="testpressure" field="testpressure"
											headerAlign="center" Align="center" allowSort="true" width="120">
											试验压力（Bar）</div>
										<div name="site" field="site" renderer="siteRenderer"
											headerAlign="center" Align="center" allowSort="true">
											试验部位</div>
										<div name="firsttesttime" field="firsttesttime"
											headerAlign="center" Align="center" allowSort="true" width="120">
											首次水压试验时间</div>
										<div name="beforetesttime" field="beforetesttime"
											headerAlign="center" Align="center" allowSort="true" width="120">
											前次试验日期</div>
										<div name="nexttesttime" field="nexttesttime"
											headerAlign="center" Align="center" allowSort="true" width="120">
											下次试验最晚日期</div>
										<div name="testprocedure" field="testprocedure"
											renderer="settestprocedure" Align="center"
											headerAlign="center" allowSort="true" width="120">试验程序
										</div>
										<div field="detailed" headerAlign="center" Align="center"
											allowSort="true">维护项目</div>
										<div name="inspectplan" field="inspectplan"
											renderer="lxRenderer" Align="center" headerAlign="center"
											allowSort="true">专用检查计划</div>
										<div name="edition" field="edition" Align="center"
											headerAlign="center" allowSort="true" width="40">版次</div>
										<div field="remark" headerAlign="center" allowSort="true"
											width="120">备注</div>
										<div field="c1" name="c1" headerAlign="center" visible="false"
											Align="center" allowSort="true" width="34">C1</div>
										<div field="c2" name="c2" headerAlign="center" visible="false"
											Align="center" allowSort="true" width="34">C2</div>
										<div field="c3" name="c3" headerAlign="center" visible="false"
											Align="center" allowSort="true" width="34">C3</div>
										<div field="c4" name="c4" headerAlign="center" visible="false"
											Align="center" allowSort="true" width="34">C4</div>
										<div field="c5" name="c5" headerAlign="center" visible="false"
											Align="center" allowSort="true" width="34">C5</div>
										<div field="c6" name="c6" headerAlign="center" visible="false"
											Align="center" allowSort="true" width="34">C6</div>
										<div field="c7" name="c7" headerAlign="center" visible="false"
											Align="center" allowSort="true" width="34">C7</div>
										<div field="c8" name="c8" headerAlign="center" visible="false"
											Align="center" allowSort="true" width="34">C8</div>
										<div field="c9" name="c9" headerAlign="center" visible="false"
											Align="center" allowSort="true" width="34">C9</div>
										<div field="c10" name="c10" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C10</div>
										<div field="c11" name="c11" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C11</div>
										<div field="c12" name="c12" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C12</div>
										<div field="c13" name="c13" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C13</div>
										<div field="c14" name="c14" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C14</div>
										<div field="c15" name="c15" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C15</div>
										<div field="c16" name="c16" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C16</div>
										<div field="c17" name="c17" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C17</div>
										<div field="c18" name="c18" ="center" allowSort="true"
											Align="center" width="34">C18</div>
										<div field="c19" name="c19" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C19</div>
										<div field="c20" name="c20" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C20</div>
										<div field="c21" name="c21" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C21</div>
										<div field="c22" name="c22" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C22</div>
										<div field="c23" name="c23" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C23</div>
										<div field="c24" name="c24" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C24</div>
										<div field="c25" name="c25" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C25</div>
										<div field="c26" name="c26" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C26</div>
										<div field="c27" name="c27" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C27</div>
										<div field="c28" name="c28" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C28</div>
										<div field="c29" name="c29" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C29</div>

										<div field="c30" name="c30" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C30</div>
										<div field="c31" name="c31" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C31</div>
										<div field="c32" name="c32" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C32</div>
										<div field="c33" name="c33" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C33</div>
										<div field="c34" name="c34" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C34</div>
										<div field="c35" name="c35" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C35</div>
										<div field="c36" name="c36" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C36</div>
										<div field="c37" name="c37" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C37</div>
										<div field="c38" name="c38" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C38</div>
										<div field="c39" name="c39" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C39</div>
										<div field="c40" name="c40" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C40</div>
										<div field="c41" name="c41" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C41</div>
										<div field="c42" name="c42" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C42</div>
										<div field="c43" name="c43" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C43</div>
										<div field="c44" name="c44" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C44</div>
										<div field="c45" name="c45" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C45</div>
										<div field="c46" name="c46" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C46</div>
										<div field="c47" name="c47" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C47</div>
										<div field="c48" name="c48" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C48</div>
										<div field="c49" name="c49" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C49</div>
										<div field="c50" name="c50" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C501</div>
										<div field="c51" name="c51" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C51</div>
										<div field="c52" name="c52" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C52</div>
										<div field="c53" name="c53" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C53</div>
										<div field="c54" name="c54" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C54</div>
										<div field="c55" name="c55" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C55</div>
										<div field="c56" name="c56" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C56</div>
										<div field="c57" name="c57" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C57</div>
										<div field="c58" name="c58" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C58</div>
										<div field="c59" name="c59" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C59</div>
										<div field="c60" name="c60" headerAlign="center"
											visible="false" Align="center" allowSort="true" width="34">
											C60</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<script type="text/javascript">

nui.parse();
//按钮权限控制

//高级搜索按钮
function showquery() {
	var div = $("#overhaulform");
	div.slideToggle(500);
	$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
	if($("#scbt").text()=="高级查询"){
		$("#fuzzyQuery").hide();
		$("#allQuery").show();
		$("#scbt").text("隐藏查询条件");
	}else{
		$("#fuzzyQuery").show();
		$("#allQuery").hide();
		$("#scbt").text("高级查询");
	}
};

/*  function showquery() {
			var div = $("#overhaulform");
			div.slideToggle(500);
			$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
		} 
		 */
accessControlButton('<%=userRoleCodeList%>',1);

var type;
var index = 9;
var parms = "";
nui.get("update").disable();
nui.get("add").disable();
var tree = nui.get("tree1");
var grid = nui.get("datagrid1"); 
var start = 1;
var end = 60;
var jdid = getCookie('jdid');
var jzid = getCookie('jzid');
            nui.get('baseid').setValue(jdid);
	            nui.get('crewid').setValue(jzid);
	            
if(jdid != null && jdid != '' && jzid != null && jzid != ''){
	var parms = "{baseid:"+jdid+",crewid:"+jzid+"}";
	
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
	            start = returnJson.data.start;
	            end = returnJson.data.end;
	            nui.get('start').setValue(start);
	            nui.get('end').setValue(end);
	            nui.get('tree1').setUrl("com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.getProtypeAndPartsData.biz.ext?baseid="+jdid+"&crewid="+jzid);
// 	            search();
				for(var i = 1;i <=  60 ;i++){
						var colName = "c"+i;
						grid.hideColumn(colName);
				}
				for(var i = parseInt(start);i <=  parseInt(end) ;i++){
						var colName = "c"+i;
						grid.showColumn(colName);
				}
				var formData = new nui.Form("#overhaulform").getData(false,false);
					//grid.load(formData);
	    	}
	    }
	});
}

				var detailed = '<%=detailed%>';
				if (detailed != 'null' && detailed != null && detailed != '') {
						
					nui.get('detailed1').setValue(detailed.replace(/(^\s*)|(\s*$)/g, ""));
					searchs();
				}
				var combobox2 = nui.get("combobox2");
				if (jdid == "86") {
					combobox2.setAjaxType("POST");
					combobox2
							.load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=taishanbase");
				} else {
					combobox2.setAjaxType("POST");
					combobox2
							.load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=otherbases");
				}

				//combobox2.setValue("P,S");

				var countrys = [];
				for (var i = 1; i <= 60; i++) {
					countrys.push({
						id : 'C' + i,
						text : 'C' + i,
						tag : 'C' + i
					});
				}
				var combo = nui.get("combo1");
				combo.setData(countrys);
				var parts;
				var parentid;
				tree.on("nodeselect",function(e) {
									if (e.isLeaf) {
							
										nui.get('parts').setValue(e.node.name);
										parts=e.node.name;
										parentid = e.node.parentid;
										nui.get('protype').setValue(parentid);
										var jsondata = {};
										jsondata.fieldName = "protype";
										jsondata.fieldValue = parentid;
										jsondata.base = jdid;
										jsondata.crew = jzid;
										jsondata.entity = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity";
										jsondata = nui.encode(jsondata);
										$.ajax({
													url : "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getInforMation.biz.ext",
													type : 'POST',
													data : jsondata,
													cache : false,
													contentType : 'text/json',
													success : function(data) {
									
														var returnJson = nui.decode(data);
														console.log(returnJson.record[0].template);
														if (returnJson != null&& returnJson.record[0]) {
															type = returnJson.record[0].template;
															if ('zy' == returnJson.record[0].template) {
																grid.showColumn('template');
																grid.showColumn('detectedsite');
																grid.showColumn('number');
																grid.showColumn('approachmode');
																grid.showColumn('method');
																grid.showColumn('program');
																grid.showColumn('tool');
																grid.showColumn('inspectplan');
																grid.hideColumn('medium');
																grid.hideColumn('site');
																grid.hideColumn('testprocedure');
																grid.hideColumn('operatingpressure');
																grid.hideColumn('designpressure');
																grid.hideColumn('testpressure');
																grid.hideColumn('firsttesttime');
																grid.hideColumn('beforetesttime');
																grid.hideColumn('nexttesttime');
															} else if ('sy' == returnJson.record[0].template) {
															grid.showColumn('template');
																grid.showColumn('medium');
																grid.showColumn('site');
																grid.showColumn('testprocedure');
																grid.showColumn('operatingpressure');
																grid.showColumn('designpressure');
																grid.showColumn('testpressure');
																grid.showColumn('firsttesttime');
																grid.showColumn('beforetesttime');
																grid.showColumn('nexttesttime');
																grid.hideColumn('detectedsite');
																grid.hideColumn('number');
																grid.hideColumn('approachmode');
																grid.hideColumn('method');
																grid.hideColumn('program');
																grid.hideColumn('tool');
																grid.hideColumn('inspectplan');
															}
														}
													}
												});
									} else {
									
										parts="";
										parentid = e.node.name;
										nui.get('parts').setValue('');
										nui.get('protype')
												.setValue(e.node.name);
										parms = e.node.name;
									}
									searchs();
								});

				$(function() {
					$('#add').attr('title', "请选择插入位置（之后）");
					$('#update').attr('title', "请选择需修改条目");
					$('#planupdate').attr('title', "大修结束后请及时进行计划更新");
					$('#btnZq').attr('title', "请修改要显示的周期范围");

				});

				//新增
				function add() {
					var row = grid.getSelected();
					if (row) {
						nui
								.open({
									showMaxButton : true,
									url : "/itmp/outline/Staturory/Overhaul/addForm.jsp",
									title : "新增记录",
									width : 800,
									height : 400,
									onload : function() {//弹出页面加载完成
										var iframe = this.getIFrameEl();
										var data = {
											pageType : "add",
											record : {
												tdgglentry : row
											},
											parts : row.parts,
											protype : row.protype,
											template : row.template
										};//传入页面的json数据
										iframe.contentWindow.setFormData(data);
									},
									ondestroy : function(action) {//弹出页面关闭前
										grid.reload();
										
									}
								});
					} else {
						nui.alert("请选中插入位置（之后）", "提示");
					}
				}

				//编辑
				function edit() {
					var row = grid.getSelected();
					if (row) {
						var json = {};
						json.datas = row;
						json.entityName = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit";
						json.fieldName = "uuid";
						json.relFieldName = "relid";
						json.reason = "部件";
						json.tsName = "parts";
						json = nui.encode(json);
						$
								.ajax({
									url : "com.cgn.itmp.basecommon.Common.getProcessStatus.biz.ext",
									type : 'POST',
									data : json,
									cache : false,
									contentType : 'text/json',
									success : function(data) {
										var returnJson = nui.decode(data);
										if (returnJson.record != '') {
											nui.alert(returnJson.record, "提示");
										} else {
											nui
													.open({
														showMaxButton : true,
														url : "/itmp/outline/Staturory/Overhaul/editForm.jsp",
														title : "编辑数据",
														width : 800,
														height : 400,
														onload : function() {
															var iframe = this
																	.getIFrameEl();
															var data = {
																pageType : "edit",
																record : {
																	preData : row
																}
															};
															//直接从页面获取，不用去后台获取
															iframe.contentWindow
																	.setFormData(data);
														},
														ondestroy : function(
																action) {
															grid.reload();
														}
													});
										}
									}
								});
					} else {
						nui.alert("请选择需修改条目", "提示");
					}
				}

				//计划更新        
				function planupdate(flag) {
					var processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.outline.gffdDxzxtmPlanComplete'
							: 'com.cgn.itmp.outlineandplan.outline.gffdDxzxtmPlanCancel';
					nui
							.open({
								showMaxButton : true,
								url : encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=id&reason=项号&relFieldName=relid&tsName=itemno&type="
										+ type
										+ "&planFlag="
										+ flag
										+ "&modelFlag="
										+ 1
										+ "&entity=com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity&processName=规范法定大纲_大修执行条目&middleEntity=com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit&processDef="
										+ processDef),
								title : flag == '1' ? '计划完成' : '计划取消',
								width : 1000,
								height : 650,
								onload : function() {//弹出页面加载完成
									var iframe = this.getIFrameEl();
									//var data = {type:type};//传入页面的json数据
									//iframe.contentWindow.setFormData(data);
								},
								ondestroy : function(action) {//弹出页面关闭前
									grid.reload();
									
								}
							});
				}

				//变更履历
				function openrecord() {
					nui
							.open({
								showMaxButton : true,
								url : "/itmp/outline/Staturory/Overhaul/vitaeList.jsp",
								title : "变更履历",
								width : 1000,
								height : 520,
								onload : function() {
									//var iframe = this.getIFrameEl();
									// var data = {pageType:"edit",record:{tdgglentry:row}};
									//直接从页面获取，不用去后台获取
									// iframe.contentWindow.setFormData(data);
								},
								ondestroy : function(action) {
									grid.reload();
								}
							});
				}

				//同步
				function synchronous() {
					var row = grid.getSelected();
					if (row) {
						var jsondata = '{"tdgglentry":' + nui.encode(row) + '}';
						if ('y' == row.inspectplan) {
							var urlStr = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.synchronous.biz.ext";
							$.ajax({
								url : urlStr,
								type : 'POST',
								data : jsondata,
								cache : false,
								contentType : 'text/json',
								success : function(data) {
									var returnJson = nui.decode(data);
									if (returnJson.recordMap.success) {
										nui.alert("同步成功！", "提示", function(e) {
											grid.reload();
// 											
										});
									} else {
										nui.alert("无相关数据或关联周期无状态,同步失败！", "提示");
									}
								}
							});
						} else {
							nui.alert("无专用检查计划,无需同步", "提示");
						}
					} else {
						nui.alert("请选择需要同步的项目", "提示");
					}
				}

				var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
				//删除
				function setDel() {
					var rows = grid.getSelecteds();
					if (rows.length > 0) {
						var json = {};
						json.datas = rows;
						json.entityName = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit";
						json.fieldName = "uuid";
						json.relFieldName = "relid";
						json.reason = "项号";
						json.tsName = "itemno";
						json = nui.encode(json);
						$.ajax({
									url : "com.cgn.itmp.basecommon.Common.getProcessStatus.biz.ext",
									type : 'POST',
									data : json,
									cache : false,
									contentType : 'text/json',
									success : function(data) {
										var returnJson = nui.decode(data);
										if (returnJson.record != '') {
											nui.alert(returnJson.record, "提示");
										} else {
											if (isadmin == 'true') {//管理员直接删除
												nui
														.confirm(
																"确定删除选中记录？",
																"系统提示",
																function(action) {
																	if (action == "ok") {
																		var fieldValue = "";
																		for (var i = 0; i < rows.length; i++) {
																			fieldValue += rows[i].uuid;
																			if (i < rows.length - 1)
																				fieldValue += ",";
																		}
																		var json = {};
																		json.token="<%=TokenUtil.getTokenString(request.getSession())%>"
																		json.fieldName = "id";
																		json.fieldValue = fieldValue;
																		json.upFieldName = "isdelete";
																		json.upFieldValue = "1";
																		json.entity = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity";
																		json = nui
																				.encode(json);
																		var url = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.updataInfoMationByFieldName.biz.ext";
																		grid
																				.loading("正在删除中,请稍等...");
																		$
																				.ajax({
																					url : url,
																					type : 'POST',
																					data : json,
																					cache : false,
																					contentType : 'text/json',
																					success : function(
																							text) {
																						var returnJson = nui
																								.decode(text);
																						if (returnJson.exception == null) {
																							grid
																									.reload();
																							nui
																									.alert(
																											"删除成功",
																											"系统提示",
																											function(
																													action) {
																											});
																						} else {
																							grid
																									.unmask();
																							nui
																									.alert(
																											"删除失败",
																											"系统提示");
																						}
																					}
																				});
																	}
																});
											} else {//非管理员需要走审批流程删除
												nui
														.open({
															showMaxButton : true,
															url : "/itmp/outlineCommon/dgDelete/dgDeleteStart.jsp",
															title : "删除",
															width : 500,
															height : 300,
															onload : function() {
																var iframe = this
																		.getIFrameEl();
																var data = {
																	record : {
																		tdgglentry : rows,
																		processDefName : 'com.cgn.itmp.outlineandplan.outline.common.deleteFDdgDxzxtm',
																		'processInstName' : '规范法定大纲_大修执行条目_删除',
																		'processInstDesc' : '规范法定大纲_大修执行条目_删除',
																		'entityType' : 'com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit',
																		'modelFlag' : '1'
																	}
																};
																//直接从页面获取，不用去后台获取
																iframe.contentWindow
																		.setFormData(data);
															},
															ondestroy : function(
																	action) {
																grid.reload();
																
															}
														});
											}
										}
									}
								});

					} else {
						nui.alert("请至少选中一条记录！");
					}

				}

				//回收站
				function recover() {
					nui
							.open({
								showMaxButton : true,
								url : "/itmp/outline/Staturory/Overhaul/recycleList.jsp",
								title : "回收站查询",
								width : 800,
								height : 400,
								onload : function() {
									//var iframe = this.getIFrameEl();
									// var data = {pageType:"edit",record:{tdgglentry:row}};
									//直接从页面获取，不用去后台获取
									// iframe.contentWindow.setFormData(data);
								},
								ondestroy : function(action) {
									grid.reload();
									
								}
							});
				}

				//升版
				function edition() {
					//判断是否有在升版流程中 的数据，若有，则不能升版
					var data = {};
					var fields = [ 'modelFlag', 'processStatus', 'jdid', 'jzid' ];
					var values = [ '1', '1', jdid, jzid ];
					data.entityType = "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
					data.fields = fields;
					data.values = values;
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
										nui.alert("该基地升版流程正在审批中,不能升版", "提示");
									} else {
										nui
												.open({
													showMaxButton : true,
													url : "/itmp/outlineCommon/dgEdition/edtionStart.jsp?modelFlag=1&entity=com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity&basename=base&crewname=crew&editionname=edition",
													title : "升版",
													width : 500,
													height : 330,
													onload : function() {

													},
													ondestroy : function(action) {
														grid.reload();
													}
												});
									}
								}
							});

				}

				//重新刷新页面
				function refresh() {
					var form = new nui.Form("#overhaulform");
					var json = form.getData(false, false);
					grid.load(json);//grid查询
					nui.get("update").enable();
				}

				//查询
				function searchs() {
					var processStatus = nui.get('sjzt').getValue();
					var zt = "";
					if ("0" == processStatus) {
						zt += '"criteria/_expr[8]/_op":"<>"';
						zt += ',"criteria/_expr[8]/processstatus":"1"';
					} else if ("1" == processStatus) {
						zt += '"criteria/_expr[8]/_op":"="';
						zt += ',"criteria/_expr[8]/processstatus":"1"';
					}
					if (jdid != '' && jzid != '') {
						var start = nui.get('start').getValue();
						var end = nui.get('end').getValue();
						if (start > end) {
							nui.get('start').setValue(end);
							start = end;
						}

						for (var i = 1; i <= 60; i++) {
							var colName = "c" + i;
							grid.hideColumn(colName);
						}

						for (var i = parseInt(start); i <= parseInt(end); i++) {
							var colName = "c" + i;
							grid.showColumn(colName);
						}
						var combo1 = nui.get("combo1").getValue();
						var combobox2 = nui.get("combobox2").getValue();
						var queryJ = "";
						if (combobox2 != null && combobox2 != '') {
							combobox2 = combobox2.split(",");
							for (var i = 0; i < combobox2.length; i++) {
								if (i > 0)
									queryJ += ",";
								var lcValue = combobox2[i];
								if (lcValue == 'P') {
									queryJ += '"criteria/_or[1]/_expr[' + index
											+ ']/_op":"like"';
									queryJ += ',"criteria/_or[1]/_expr['
											+ index + ']/'
											+ combo1.toLowerCase() + '":"'
											+ lcValue + ',"';
									index++;
									queryJ += ",";
									queryJ += '"criteria/_or[1]/_expr[' + index
											+ ']/_op":"="';
									queryJ += ',"criteria/_or[1]/_expr['
											+ index + ']/'
											+ combo1.toLowerCase() + '":"'
											+ lcValue + '"';
									index++;
								} else if (lcValue == 'S') {
									queryJ += '"criteria/_or[1]/_expr[' + index
											+ ']/_op":"like"';
									queryJ += ',"criteria/_or[1]/_expr['
											+ index + ']/'
											+ combo1.toLowerCase() + '":"'
											+ lcValue + ',"';
									index++;
									queryJ += ",";

									queryJ += '"criteria/_or[1]/_expr[' + index
											+ ']/_op":"like"';
									queryJ += ',"criteria/_or[1]/_expr['
											+ index + ']/'
											+ combo1.toLowerCase() + '":",'
											+ lcValue + ',"';
									index++;
									queryJ += ",";

									queryJ += '"criteria/_or[1]/_expr[' + index
											+ ']/_op":"="';
									queryJ += ',"criteria/_or[1]/_expr['
											+ index + ']/'
											+ combo1.toLowerCase() + '":"'
											+ lcValue + '"';
									index++;
								} else {
									queryJ += '"criteria/_or[1]/_expr[' + index
											+ ']/_op":"like"';
									queryJ += ',"criteria/_or[1]/_expr['
											+ index + ']/'
											+ combo1.toLowerCase() + '":"'
											+ lcValue + '"';
									index++;
								}
							}
						}

						var form = new nui.Form("#overhaulform");
						var json = form.getData(false, false);
						var jsonstr = nui.encode(json);
						var str = jsonstr.substr(0, jsonstr.length - 1);
						if (zt != '')
							str += "," + zt;
						if (queryJ != '')
							str += "," + queryJ;
						str = nui.decode(str + "}");
						grid.load(nui.decode(str));//grid查询
					}
				}

				//重置查询条件
				function reset() {
				$("#cond").val('');
					var form = new nui.Form("#overhaulform");//将普通form转为nui的form
					form.reset();
					nui.get('start').setValue(start);
					nui.get('end').setValue(end);
					nui.get('baseid').setValue(jdid);
					nui.get('crewid').setValue(jzid);
					nui.get('parts').setValue(parts);
					nui.get('protype').setValue(parentid);
				}

				//enter键触发查询
				function onKeyEnter(e) {
					searchs();
				}

				//当选择列时
				function selectionChanged() {
					var rows = grid.getSelecteds();
					if (rows.length > 1 || rows.length == 0) {
						nui.get("add").disable();
						nui.get("update").disable();
					} else {
						nui.get("update").enable();
						nui.get("add").enable();
					}
				}

				function onCloseClick(e) {
					var obj = e.sender;
					obj.setText("");
					obj.setValue("");
				}

				//添加超链接
				function setmapno(e) {
					if (e.record.referencefigureno != null) {
						var mapname = e.record.referencefigureno.split(",");
						if (mapname == null || mapname.length == 0) {
							mapname = e.record.referencefigureno.split("，");
						}
						if (mapname != null && mapname.length > 0) {
							var html = "";
							for (var i = 0; i < mapname.length; i++) {
								html += '<a href = "#" onclick ="showdetail(1,\''
										+ mapname[i]
										+ '\')">'
										+ mapname[i]
										+ '</a>';
								if (i < mapname.length - 1)
									html += ',';
							}
							return html;
						}
					}
				}

				function setprogram(e) {
					if (e.record.program != null) {
						var programname = e.record.program.split(",");
						if (programname == null || programname.length == 0) {
							programname = e.record.program.split("，");
						}
						if (programname != null && programname.length > 0) {
							var html = "";
							for (var i = 0; i < programname.length; i++) {
								html += '<a href = "#" onclick ="showdetail(2,\''
										+ programname[i]
										+ '\')">'
										+ programname[i] + '</a>';
								if (i < programname.length - 1)
									html += ',';
							}
							return html;
						}
					}
				}

				function settestprocedure(e) {
					if (e.record.testprocedure != null) {
						var testprocedurename = e.record.testprocedure
								.split(",");
						if (testprocedurename == null
								|| testprocedurename.length == 0) {
							testprocedurename = e.record.testprocedure
									.split("，");
						}
						if (testprocedurename != null
								&& testprocedurename.length > 0) {
							var html = "";
							for (var i = 0; i < testprocedurename.length; i++) {
								html += '<a href = "#" onclick ="showdetail(2,\''
										+ testprocedurename[i]
										+ '\')">'
										+ testprocedurename[i] + '</a>';
								if (i < testprocedurename.length - 1)
									html += ',';
							}
							return html;
						}
					}
				}

				function settool(e) {
					if (e.record.tool != null) {
						var toolname = e.record.tool.split(",");
						if (toolname == null || toolname.length == 0) {
							toolname = e.record.tool.split("，");
						}
						if (toolname != null && toolname.length > 0) {
							var html = "";
							for (var i = 0; i < toolname.length; i++) {
								html += '<a href = "#" onclick ="showdetail(3,\''
										+ toolname[i]
										+ '\')">'
										+ toolname[i]
										+ '</a>';
								if (i < toolname.length - 1)
									html += ',';
							}
							return html;
						}
					}
				}

				function settextprogram(e) {
					if (e.record.testprocedure != null) {
						var testprocedurename = e.record.testprocedure
								.split(",");
						if (testprocedurename == null
								|| testprocedurename.length == 0) {
							testprocedurename = e.record.testprocedure
									.split("，");
						}
						if (testprocedurename != null
								&& testprocedurename.length > 0) {
							var html = "";
							for (var i = 0; i < testprocedurename.length; i++) {
								html += '<a href = "#" onclick ="showdetail(2,\''
										+ testprocedurename[i]
										+ '\')">'
										+ testprocedurename[i] + '</a>';
								if (i < testprocedurename.length - 1)
									html += ',';
							}
							return html;
						}
					}
				}

				function showdetail(type, code) {
					var row = grid.getSelected();
					var url = "";
					var height = "";
					if ("1" == type) {
						url = "/itmp/outlineCommon/selgridwindow/MapnoView.jsp";
						height = 150;
					} else if ("2" == type || "4" == type) {
						url = "/itmp/outlineCommon/selgridwindow/ProgramView.jsp";
						height = 300;
					} else if ("3" == type) {
						url = "/itmp/outlineCommon/selgridwindow/ToolView.jsp";
						height = 150;
					}
					if (row) {
						var parms;
						if ("1" == type) {
							parms = '{"parms":{"uuid":"","name":"'
									+ code
									+ '","entity":"com.cgn.itmp.outlineandplan.base.legendManagement.LEGEND","base":"'
									+ jdid + '","crew":"' + jzid + '"}}';
						} else if ("2" == type) {
							parms = '{"parms":{"uuid":"","name":"'
									+ code
									+ '","entity":"com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM","base":"'
									+ jdid + '","crew":"' + jzid + '"}}';
						} else if ("3" == type) {
							parms = '{"parms":{"uuid":"","name":"'
									+ code
									+ '","entity":"com.cgn.itmp.outlineandplan.base.specialToolManagement.SPECIALTOOL","base":"'
									+ jdid + '","crew":"' + jzid + '"}}';
						} else if ("4" == type) {
							parms = '{"parms":{"uuid":"","name":"'
									+ code
									+ '","entity":"com.cgn.itmp.outlineandplan.base.programManagement.PROGRAM","base":"'
									+ jdid + '","crew":"' + jzid + '"}}';
						}
						var urlStr = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.getViewInforMation.biz.ext";
						$
								.ajax({
									url : urlStr,
									type : 'POST',
									data : parms,
									cache : false,
									contentType : 'text/json',
									success : function(data) {
										var returnJson = nui.decode(data);
										if (returnJson.record[0]) {
											nui
													.open({
														showMaxButton : true,
														url : url,
														title : "数据详情",
														width : 600,
														height : height,
														onload : function() {
															var iframe = this
																	.getIFrameEl();
															var data;
															if ("1" == type) {
																data = {
																	pageType : "edit",
																	record : {
																		tcgndgglcktlgl : returnJson.record[0]
																	}
																};
															} else if ("2" == type
																	|| "4" == type) {
																data = {
																	pageType : "edit",
																	record : {
																		tcgndgglcxgl : returnJson.record[0]
																	}
																};
															} else if ("3" == type) {
																data = {
																	pageType : "edit",
																	record : {
																		tcgndgglzygjqd : returnJson.record[0]
																	}
																};
															}
															//直接从页面获取，不用去后台获取
															iframe.contentWindow
																	.setFormData(data);
														},
														ondestroy : function(
																action) {
															grid.reload();
														}
													});
										} else {
											nui.alert("无关联数据，请新增", "提示");
										}
									}
								});
					}
				}

				function output() {
					var form = new nui.Form("#overhaulform");
					var json = form.getData(false, false);
					var filterField = "processstatus,datetime,uuid,isdelete,reason,orderno,creator,mapnoid,programid,toolid,textprogramid,id,processinstid,jhry,ccry,finishFirstActivityId,processStatus";
					for (var i = 1; i < parseInt(start); i++) {
						if (i <= start)
							filterField += ",";
						var clc = "c" + i;
						filterField += clc;
					}
					for (var k = parseInt(end) + 1; k <= 60; k++) {
						if (k <= 60)
							filterField += ",";
						var clc = "c" + k;
						filterField += clc;
					}
					var defaultCheck;

					var protype = nui.get('protype').getValue();
					var parts = nui.get('parts').getValue();
					if ('' == protype && '' == parts) {
						nui.alert("请定位到树节点再导出", "提示");
						return;
					}
					var row = grid.getRow(0);
					if (row) {
						var template = row.template;
						if ('zy' == template)
							defaultCheck = "itemno,detectedsite,inspectionscope,approachmode,method,program,tool,detailed,remark";
						if ('sy' == template)
							defaultCheck = "medium,operatingpressure,designpressure,testpressure,detailed";
					}
					nui
							.open({
								url : "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
								title : "导出数据",
								width : 600,
								height : 360,
								showMaxButton : true,
								onload : function() {//弹出页面加载完成
									var iframe = this.getIFrameEl();
									var data = {
										entityName : "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulSearch",
										queryParam : json, //查询数据
										queryKey : 'criteria', //查询实体名
										query : [ 'itemno', 'method',
												'detailed', 'parts', 'protype',
												'base', 'crew' ], //按顺序放置
										dicFieds : "inspectplan@option,template@template,site@site",
										expTitle : "规范法定大纲管理大修执行条目",
										order: "orderno@asc",
										jdFieds : "base",
										jzFieds : "crew",
										filterField : [ filterField ],
										defaultCheck : [ defaultCheck ]
									};//传入页面的json数据
									iframe.contentWindow.setFormData(data);
								},
								ondestroy : function(action) {//弹出页面关闭前
									grid.reload();
								}
							});
				}

				//导入
				function batchAdd() {
					var data = {};
					data.modelFlag = "1";
					data.jdid = jdid;
					data.jzid = jzid;
					var json = nui.encode(data);
					$
							.ajax({
								url : "com.cgn.itmp.basecommon.Common.queryCountByModelFlag.biz.ext",
								type : 'POST',
								cache : false,
								data : json,
								contentType : 'text/json',
								success : function(data) {
									var count = data.count;
									if (count > 0) {
										nui.alert("该基地数据已存在,不能导入", "提示");
									} else {
										nui
												.open({
													showMaxButton : true,
													url : "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
													title : "新增记录",
													width : 600,
													height : 300,
													onload : function() {//弹出页面加载完成
														var iframe = this
																.getIFrameEl();
														var data = {
															pageType : "batchAdd",
															tempFileName : "fddgdxzxtm.xlsx",
															tempLoadName : "规范法定大纲管理大修执行条目导入模板",
															entitfName : "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity",
															menuName : "GFFD_DX"
														};//传入页面的json数据
														iframe.contentWindow
																.SetData(data);
													},
													ondestroy : function(action) {//弹出页面关闭前
														grid.reload();
														
													}
												});

									}
								}
							});
				}

				function lxRenderer(e) {
					if (e.record.inspectplan == 'y') {
						return '<a href = "#" onclick ="showdetail1(\''
								+ e.record.detailed + '\')">'
								+ nui.getDictText("option", e.value) + '</a>';
					} else {
						return nui.getDictText("option", e.value);
					}
				}

				//详细信息
				function showdetail1(detailed) {
					var json = {};
					json.fieldValue = detailed;
					json.base = jdid;
					json.crew = jzid;
					json.type = "1";
					json = nui.encode(json);
					$
							.ajax({
								url : "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getJCJHDataByDetailed.biz.ext",
								type : 'POST',
								cache : false,
								data : json,
								contentType : 'text/json',
								success : function(data) {
									if (data.record != null && data.record.flag) {
										var url = '/itmp/specialinspection/NuclearIslandOverhaul/index.jsp?detailed='
												+ encodeURI(JSON.parse(JSON
														.stringify(detailed)));
										addTab(detailed, url);
									}
									if (!data.record || !data.record.flag) {
										nui.alert("无相关数据", "提示");
									}
								}
							});
				}

				function addTab(detailed, url) {
					var tabs = parent.parent.nui.get("mainTabs");
					var tab = {
						title : "大修执行条目",
						url : url,
						showCloseButton : true
					};
					tab = tabs.addTab(tab);
					tabs.activeTab(tab);
				}

				//关键字
				function btnQuery() {
					var wordVal = $("#cond").val();
					if (wordVal == '') {
						searchs();
						return;
					}
					var data = {
						matchFied : "template,referencefigureno,itemno,detectedsite,inspectionscope,mapno,number,approachmode,method,program,tool,medium,operatingpressure,designpressure,testpressure,site,testprocedure,detailed,inspectplan,edition,remark",
						wordVal : wordVal,
						entity : $("input[name='criteria/_entity']").val(),
						entityName : 'criteria',
						jdInfo : 'base@' + getCookie('jdid'),
						jdInfo : 'crew@' + getCookie('jzid'),
						dicFied : "template@template,option@option,site@site"
					};
					var query = nui.decode(getKeyWordQuery(data));
						query["criteria/_and[1]/_expr[2]/protype"]=nui.get("protype").value;
						query["criteria/_and[1]/_expr[2]/_op"]="=";
						query["criteria/_and[1]/_expr[3]/parts"]=nui.get("parts").value;
						query["criteria/_and[1]/_expr[3]/_op"]="=";
					grid.load(query);
				}

				function siteRenderer(e) {
					return nui.getDictText("site", e.value);
				}
				//打开新增按钮
function openAllAdd(){
	$(".add_adds").toggle();
};
document.onclick = function (e) {
    //判断点击的地方是否为“更多”按钮和弹出层是否显示
	    if(!$(e.target).is("#addallbut")&&$(".add_adds").is(":visible")==true){
	        $(".add_adds").toggle();
	    }
 };
			</script>
</body>
</html>
