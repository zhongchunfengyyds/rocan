<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html>
<html>
<!-- 
  - Author(s): dafu
  - Date: 2017-04-26 10:48:47
  - Description:
-->
<head>
<title>Title</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    
</head>
<body>
	<div id="imageBox" style="width: 130px;height: 60px;margin:0 auto">
	</div>


	<script type="text/javascript">
    	nui.parse();
    		
    		//显示图片预览
    	function SetData(str){
        		 var div = document.getElementById('imageBox');
        		 div.innerHTML ='<img id=imghead>';
                 var img = document.getElementById('imghead');
                 img.width  =125;
                 img.height =50;
                 img.src ="<%=request.getContextPath()%>/coframe/tools/preview.jsp?remoteFile="+str; 
    	}
    	
    </script>
</body>
</html>