<!-- 任务列表窗口 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/coframe/tools/lang.jsp"%>
<%@ taglib uri="http://eos.primeton.com/tags/html" prefix="h"%>
<%@ taglib uri="http://eos.primeton.com/tags/logic" prefix="l"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ taglib uri="http://eos.primeton.com/tags/eos" prefix="e"%>
<style type="text/css">
	body .mini-labelfield {
	    width: 330px;
	}
</style>
<l:equal property="status" targetValue="0">
			<nav class='navbar navbar-default  patch'>
				<div class='container-fluid'>
					<div class='navbar-header'>
						<button type='button' class='navbar-toggle collapsed'
							data-toggle='collapse'
							data-target='#bs-example-navbar-collapse-1' aria-expanded='false'>
							<span class='sr-only'>Toggle navigation</span> <span
								class='icon-bar'></span> <span class='icon-bar'></span> <span
								class='icon-bar'></span>
						</button>
						<a class='navbar-brand' href='#'><b:message key="next-job" /></a>
					</div>
					<div class='collapse navbar-collapse'
						id='bs-example-navbar-collapse-1'>
						<ul class='nav navbar-nav navbar-right'>
							<li class='folding-toggle'><a href='#'><span
									class='fa fa-angle-up'></span></a></li>
						</ul>
					</div>
				</div>
			</nav>
			<div class='accordion-container folding-menu'
				style='overflow: hidden; display: block'>
				<div id="next" class="table-layout">
					<l:equal property="activiCfg/canChooseNextActivity"
						targetValue="true">
						<div style="overflow:hidden;">
							<div class="lt-input">
								<div class="form-group" style="padding-left: 0px">
									<input id="nextActivityDefName" class="nui-nextactivilistbox"
										name="nextActivityDefName" labelField="true"
										label='<b:message key="next-activity-field"/>' required="true"
										allowInput="false"
										processDefName="<b:write property='processDefId'/>"
										candidatesField="#candidates" errorMode="cgn" />
								</div>
							</div>
							<div class="rt-input">
								<div class="form-group" style="padding-left: 0px">
									<input id="candidates" class="nui-candidatesbox"
										name="nextCandidates" textName="nextCandidateNames"
										label='<b:message key="next-activi-person"/>' labelField="true"
										required="true" allowInput="false" multiSelect="true"
										otherParticipants="${activiCfg.canChangNextActivityParticipant}"
										rootUrl="<%=request.getContextPath()%>"
										errorMode="cgn" />
								</div>
							</div>
					</div>
					</l:equal>
					<l:notEqual property="activiCfg/canChooseNextActivity"
						targetValue="true">
						<div class="form-group" id="nextCandidatesCell" style="padding-left: 0px">
							<input class="nui-cgn-task-candidates form-control" name="taskdealtuser" labelField="true" label='<b:message key="next-activi-person"/>'
								processDefName="<b:write property='processDefId'/>" width="100%"/>
						</div>
					</l:notEqual>
					<div class="form-group" style="padding-left: 0px">
							<input class="nui-npersonpicker form-control"  rootUrl="<%=request.getContextPath()%>" allowchoose="true" id="cc" name="cc" labelField="true" label='<b:message key="cc"/>'
								allowInput="false" width="100%" />
						</div>
						<div class="form-group" style="padding-left: 0px">
							<input class="nui-checkboxlist form-control" id="reminderWay" labelField="true" label='<b:message key="reminder-way"/>'
								name="reminderWay"  value="1"
								data="[{id:1, text:'<b:message key="rw-email"/>'},{id:2, text:'<b:message key="rw-sms"/>'}]" />
						</div>
					</div>
		</l:equal>

		<l:equal property="status" targetValue="2">
			<nav class='navbar navbar-default  patch'>
				<div class='container-fluid'>
					<div class='navbar-header'>
						<button type='button' class='navbar-toggle collapsed'
							data-toggle='collapse'
							data-target='#bs-example-navbar-collapse-1' aria-expanded='false'>
							<span class='sr-only'>Toggle navigation</span> <span
								class='icon-bar'></span> <span class='icon-bar'></span> <span
								class='icon-bar'></span>
						</button>
						<a class='navbar-brand' href='#'><b:message
								key="task-dealt-title" /></a>
					</div>
					<div class='collapse navbar-collapse'
						id='bs-example-navbar-collapse-1'>
						<ul class='nav navbar-nav navbar-right'>
							<li class='folding-toggle'><a href='#'><span
									class='fa fa-angle-up'></span></a></li>
						</ul>
					</div>
				</div>
			</nav>
			<div class='accordion-container folding-menu'
				style='overflow: hidden; display: block'>
				<div id="operation-info" class="table-layout">
					<l:empty property="operationPageUrl">
						<%-- <input class="nui-textbox" label='<b:message key="current-activi"/>' labelField="true" allowInput="false" value="${basic.actDefName}"/> --%>
							<div class="form-group" style="padding-left: 0px">
						<div class="nui-radiobuttonlist" id="operationMode"
							name="operationMode" value="1"
							url="com.cgn.components.coframe.taskcenter.TaskManager.getOperationModes.biz.ext?workItemId=<b:write property='workItemId'/>"
							dataField="list" valueField="dictID" textField="dictName"
							label='<b:message key="transfer-mode"/>' labelField="true"></div>
							</div>
						<!-- 同意 begin -->
						<!-- 同意 可以选择下一环节 -->
						<l:equal property="activiCfg/canChooseNextActivity"
							targetValue="true">
							<div id="divagree" style="overflow:hidden;">
						<div class="lt-input">
							<div class="form-group" style="padding-left: 0px">
								<input id="nextActivityDefName" class="nui-nextactivilistbox"
									name="nextActivityDefName" labelField="true"
									label='<b:message key="next-acitivi"/>' required="true"
									allowInput="false"
									currentActInstId="<b:write property='actInstId'/>"
									candidatesField="#candidates" errorMode="cgn" />
							</div>
							</div>
							<div class="rt-input">
								<div class="form-group" style="padding-left: 0px">
									<input id="candidates" class="nui-candidatesbox"
										name="nextCandidates" textName="nextCandidateNames"
										label='<b:message key="next-activi-person"/>' labelField="true"
										required="true" allowInput="false" multiSelect="true"
										otherParticipants="${activiCfg.canChangNextActivityParticipant}" 
										rootUrl="<%=request.getContextPath()%>"
										errorMode="cgn" />
								</div>
							</div>
							</div>
						</l:equal>
							<!-- 无法选择下一环节 -->
						<l:notEqual property="activiCfg/canChooseNextActivity"
							targetValue="true">
							<!-- 下一环节卫留成结束 -->
							<l:notEqual property="activiCfg/last" targetValue="true">
								<div class="form-group" id="nextCandidatesCell" style="padding-left:0px;">
									<input class="nui-cgn-task-candidates" labelField="true"
										label='<b:message key="task-dealt-user"/>'
										workItemId="<b:write property='workItemId'/>" />
								</div>
							</l:notEqual>
							<!-- 下一环节卫留成结束 -->
							<l:equal property="activiCfg/last" targetValue="true">
								<div class="form-group" id="nextCandidatesCell" style="padding-left:0px;">
									<div class="mini-labelfield mini-textbox-readOnly" style="position: relative;">
									<label class="mini-labelfield-label" style="display: block;"><b:message key="next-activi-person"/></label>
									<span class="mini-textbox-border" style="margin-left: 150px;height: auto;"><b:message key="process-end"/></span>
								</div>
								</div>
							</l:equal>
						</l:notEqual>
						<!-- 同意 end -->
						<div id="divnoagree" style="overflow:hidden;">
							<div class="lt-input">
								<div class="form-group"  style="padding-left: 0px;">
									<select class="nui-backactivilistbox form-control" id="nextActiviId"
										name="nextActiviInstId" label='<b:message key="return-link"/>'
										labelField="true" required="true" visible="true"
										workItemId="<b:write property='workItemId'/>"
										candidatesField="#nextPerson" errorMode="cgn"></select>
								</div>
							</div>
							<div class="lt-input">
								<div class="form-group" style="padding-left: 0px;">
									<input class="nui-textbox form-control" id="nextPerson" labelField="true" label='<b:message key="next-activi-person"/>'
										name="nextCandidates"  allowInput="false" 
										visible="true" errorMode="cgn" />
								</div>
							</div>
						</div>
						<div class="form-group" style="padding-left: 0px">
							<textarea class="nui-textareabox form-control" id="opinions" name="opinions"
								width="100%" required="true" labelField="true" label='<b:message key="task-dealt-decision"/>'
								url="com.cgn.components.coframe.taskcenter.Utils.getOpinionList.biz.ext"
								dataField="list" textField="name" idField="id" parentField="pid"
								buttonText='<b:message key="btn-opinions"/>' errorMode="cgn"></textarea>
						</div>
						<div class="form-group" style="padding-left: 0px">
							<input class="nui-npersonpicker form-control"  rootUrl="<%=request.getContextPath()%>" allowChoose="true" id="cc" name="cc" labelField="true" label='<b:message key="cc"/>'
								allowInput="false" width="100%" />
						</div>
						<div class="form-group" style="padding-left: 0px">
							<input class="nui-checkboxlist form-control" id="reminderWay" labelField="true" label='<b:message key="reminder-way"/>'
								name="reminderWay"  value="1"
								data="[{id:1, text:'<b:message key="rw-email"/>'},{id:2, text:'<b:message key="rw-sms"/>'}]" />
						</div>
					</l:empty>
				</div>
				</div>
		</l:equal>