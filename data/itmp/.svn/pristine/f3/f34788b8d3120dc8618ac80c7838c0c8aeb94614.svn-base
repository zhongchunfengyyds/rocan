<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): xuzhikang
  - Date: 2019-02-19 16:46:51
  - Description:
-->
<head>
<title>multiUpload</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>  
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/multiupload.js"></script>  
    <link href="<%= request.getContextPath() %>/js/multiupload.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        html, body
        {
            height: 100%;
            width: 100%;
            padding: 0;
            margin: 0;
            overflow: hidden;
        }
    </style>
</head>
<body>
		
		<div class="mini-panel" style="width: 100%; height: 100%" showfooter="true" bodystyle="padding:0" borderStyle="border:0"
        showheader="false">
        
        <div id="multiupload1" class="uc-multiupload" style="width: 100%; height: 100%" 
            flashurl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf"
            uploadurl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.uploadFile.biz.ext" _autoupload="true" borderstyle="border:0" >
        </div>

        <div property="footer" style="padding:8px; text-align: center">
            <a class="mini-button" onclick="onOk" style="width: 80px" >确定</a>
            <a class="mini-button" onclick="onCancel" style="width: 80px; margin-left: 50px"
                >关闭</a>
        </div>

    </div>

	<script type="text/javascript">
    	nui.parse();
    </script>
</body>
</html>