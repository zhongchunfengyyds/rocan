<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): Administrator
  - Date: 2019-12-17 19:15:09
  - Description:
-->
<head>
<title>焊接质量计划</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    
    <%
		 String qualityid= request.getParameter("id"); //展示页面
		 %>
   <style type="text/css">
   *{
		 	margin:0;
		 	padding:0;
		 }
		 body td{
		 	font-size:28px!important;
		 	padding:20px;
		 }
		 input{
		 	height:100%;
		 }
		 .mini-required .mini-textbox-border, .mini-required .mini-buttonedit-border,.mini-buttonedit-border{
		 	height:100%;
		 }
		 .mini-buttonedit-input,.mini-textbox-input,.mini-textbox,.mini-textbox-border {
		 	height:40px!important;
		 	font-size:28px!important;
		 	border: none!important;
		 }
.mini-buttonedit-border {
    background: white;
    border: none!important;
    }
    .mini-textbox-border {
    border: none!important;
}
.mini-button-text {
    line-height: 26px;
    font-size: 24px;
    }
   </style>
</head>
<body>
	
	<div id="dataform1" style="padding-top:5px;">
		<table style="width:95%;height:100%;table-layout:fixed;" class="nui-form-table">
			<tr>
				<td class="form_label">焊接质量计划编号</td>
				<td id="number"></td>
			</tr>
			<tr>
				<td class="form_label">WA编号</td>
				<td id="wanumber"></td>
			</tr>
			<tr>
				<td class="form_label">制造级别</td>
				<td id="level"></td>
			</tr>
			<tr>
				<td class="form_label">主票号</td>
				<td id="ticketnumber"></td>
			</tr>
			<tr>
				<td class="form_label">功能位置</td>
				<td id="position"></td>
			</tr>
			<tr>
				<td class="form_label">打印日期</td>
				<td id="printDate"></td>
			</tr>
		</table>
	</div>
	<script type="text/javascript">
    	nui.parse();
    	var printDate = <%= request.getParameter("d")%>;
    	   setFormData();
                //页面间传输json数据
            function setFormData(){
                var json = nui.encode({id:'<%=qualityid %>',type:"quality"});
                $.ajax({
                    url:"com.cgn.itmp.weldingmanagement.welderbiz.QRwelder.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
	                    if(text.data != null){
	                    	$("#number").append(text.data.qualitynumber);
	                    	$("#level").append(text.data.level);
	                    	$("#wanumber").append(text.data.wanumber);
	                    	$("#ticketnumber").append(text.data.ticketnumber);
	                    	$("#position").append(text.data.position);
	                    	$("#printDate").append(formatDate(printDate.toString()));
	                    }
                    }
                });
             }
             
             function formatDate(date){
             	return date.substr(0,4)+"-"+date.substr(4,2)+"-"+date.substr(6,2);
             }
    	
    </script>
</body>
</html>