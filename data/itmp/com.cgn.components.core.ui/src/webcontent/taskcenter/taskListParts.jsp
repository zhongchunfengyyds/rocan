<!-- 任务列表窗口 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>


	
<!-- 详细信息 -->
<div id="window" title='<b:message key="detailed-info"/>'
	class="nui-window" showHeader="false" showToolbar="false"
	showFooter="false" showModal="true" showShadow="true"
	showMaxButton="true" maskOnLoad="true" allowResize="true"
	style="width: 100%; height: 100%">
	<iframe id="detailed-frame" frameborder="0" width="100%" height="100%"></iframe>
</div>

<div id="chart-dialog" title='<b:message key="flow-chart"/>'
	class="nui-window" showToolbar="false" showFooter="false"
	showModal="true" showShadow="true" showMaxButton="true"
	maskOnLoad="true" allowResize="true"
	style="width: 1000px; height: 458px">
	<iframe id="chart-frame" frameborder="0" width="100%" height="100%"></iframe>
</div>

<!-- 轨迹日志 -->
<div id="transition-dialog" title='<b:message key="flow-transition"/>'
	class="nui-window" showToolbar="false" showFooter="false"
	showModal="true" showShadow="true" showMaxButton="true"
	maskOnLoad="true" allowResize="true"
	style="width: 500px; height: 300px">
	<div id="transition-list" class="nui-datagrid" height="100%"
		dataField="list"
		url="com.cgn.components.coframe.tasks.TaskManager.getTransitionList.biz.ext">
		<div property="columns"></div>
	</div>
</div>

<!-- 附件列表 -->
<div id="attach-dialog" title='<b:message key="attachment"/>'
	class="nui-window" showToolbar="false" showFooter="false"
	showModal="true" showShadow="true" showMaxButton="true"
	maskOnLoad="true" allowResize="true"
	style="width: 500px; height: 300px">
	<div id="attach-list" class="nui-datagrid" height="100%"
		dataField="list"
		url="com.cgn.components.coframe.tasks.TaskManager.getAttachList.biz.ext">
		<div property="columns"></div>
	</div>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist1.js"></script>