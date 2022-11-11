<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): 尹恒
  - Date: 2016-09-04 13:57:07
  - Description:
-->
<script>
</script>
<head>
<title>请假发起</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/common/ajaxfileupload/css/ajaxfileupload.css">
</head>
<script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
<body>

<%--<div class="nui-fit"  style="padding-left:0px;">--%>
<input id="leave.alAdjunct" name="leave.alAdjunct" class="nui-hidden" style=""/>
<div id="UPLOAD_ATT_LEAVE_AL_ADJUNCT" style="width:100%;"></div>
<script type="text/javascript" src="<%=request.getContextPath()%>/common/ajaxfileupload/ajaxfileupload.js"></script>
<script>
	nui.parse();
	var sf;
	window.onload=function() {
		sf = new AjaxFileUpload({
			valueTo: 'leave.alAdjunct',
			renderTo: 'UPLOAD_ATT_LEAVE_AL_ADJUNCT',
			valid_extensions:['txt'],
			title: "",
			disabled:false
		});
	}
</script>
</body>
</html>