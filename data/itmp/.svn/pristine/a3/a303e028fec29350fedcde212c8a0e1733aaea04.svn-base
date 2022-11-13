<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): jirukang
  - Date: 2019-10-23 16:30:05
  - Description:历史编号选择页面
-->
<head>
<title>历史编号选择</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
</head>
<body>
<div>
	<div>
		<table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
			<tr>
				<td class="form_label">
					大修轮次筛选
				</td>
				<td colspan="1">
					<input class="nui-combobox" id="dx" textField="name" url="" valueField="id" dataField='jsonObject' emptyText='请选择...' nullItemText='请选择...'  onvaluechanged="onValueChanged"/>
				</td>
				</tr>
				<tr>
				<td class="form_label">
					历史编号
				</td>
				<td colspan="1">
					<input class="nui-combobox" id="bh" textField="name" url="" valueField="id" dataField='jsonObject' emptyText='请选择...' nullItemText='请选择...'/>
				</td>
			</tr>
		</table>
	
	</div>
	<div  class="nui-toolbar" align="center">
	<a class="nui-button" onclick="CloseWindow('ok')">确认</a>
		<a class="nui-button" onclick="onCancel()">关闭</a>
</div>

</div>
	<script type="text/javascript">
    	nui.parse();
    	var historynum="";
		var bh=nui.get("bh");
		var dx=nui.get("dx");
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		var stencilplate;
    	function onValueChanged(e){
    	   	bh.setValue("");
    	    var overhaulsequence=e.value;
    		bh.setUrl("com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.getHistoryNum.biz.ext?base="+jdid+"&overhaulsequence="+overhaulsequence+"&crew="+jzid+"&stencilplate="+stencilplate);
    	}
    	function getData(){
    		historynum=bh.value;
    		return historynum;
    	}
    	
    	
		//关闭窗口
		function CloseWindow(action) {
		if(action=='cancel'){
			historynum="";
		}
		if(action=='ok'&&bh.value==""){
			nui.alert("请选择历史缺陷编号!");
		return;
		}
			if (window.CloseOwnerWindow)
				return window.CloseOwnerWindow(action);
			else
				window.close();
		}
		//页面间传输json数据,传递模板类型
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);
		stencilplate = infos.stencilplate;
    	var jdid=getCookie('jdid');
    	var jzid=getCookie('jzid');
    	bh.setUrl("com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.getHistoryNum.biz.ext?base="+jdid+"&crew="+jzid+"&stencilplate="+stencilplate);
    	dx.setUrl("com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.getOverhaulByTemplate.biz.ext?base="+jdid+"&crew="+jzid+"&stencilplate="+stencilplate);
    	
    	
		}

		//取消
		function onCancel() {
			CloseWindow("cancel");
		}
    </script>
</body>
</html>