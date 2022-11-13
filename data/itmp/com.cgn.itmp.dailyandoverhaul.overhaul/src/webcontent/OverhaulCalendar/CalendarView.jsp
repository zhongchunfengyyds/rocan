<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@include file="/common/common.jsp"%>
<%-- <%String proData = request.getParameter("proData");%> --%>
<%
	String _contextPath = request.getContextPath();
	String visit = request.getParameter("visit");
	Object sessionUserObject = session.getAttribute("userObject");
	IUserObject userObject = null;
	boolean isLogin = false;
	String userid="";
	if(sessionUserObject!=null){
		userObject = (com.eos.data.datacontext.UserObject)sessionUserObject;
	    userid = userObject.getUserId();
		if(userid!=null && userid.trim().length()>0){
			isLogin = true;
		}
		System.out.println(userid);
	}
%>	
<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-08-03 12:26:50
  - Description: 大修日历列表
-->
<head>
<title>大修日历</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<!-- FullCalender -->   
<link href='<%= request.getContextPath() %>/overhaul/OverhaulCalendar/js/fullcalendar.css' rel='stylesheet' />
<link href="<%= request.getContextPath() %>/overhaul/OverhaulCalendar/js/scheduler.min.css" rel="stylesheet">
<link href="<%= request.getContextPath() %>/overhaul/OverhaulCalendar/js/indexrl.css" rel="stylesheet">
<script src='<%= request.getContextPath() %>/overhaul/OverhaulCalendar/js/moment.js'></script>
<script src='<%= request.getContextPath() %>/overhaul/OverhaulCalendar/js/jquery.min.js'></script>
<script src='<%= request.getContextPath() %>/overhaul/OverhaulCalendar/js/fullcalendar.js'></script>
<script src="<%= request.getContextPath() %>/overhaul/OverhaulCalendar/js/scheduler.js"></script>
 <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=_contextPath%>/coframe/tools/widget/jquery.ui.min.js"></script>
	<style>
   .main{width:100%;margin:0 auto;}
	.switch{width:231px;height:44px;border:1px solid #199ed8;border-radius:5px;background:#f1f1f1;}
	.switch li{width:114px;height:42px;line-height:42px;text-align:center;color:#333;border-right:1px solid #fff;float:left;}
	.switch li:last-child{border-right:none;}
	.content{width:100%;border:none!important;padding:2px!important;}
	.fc-icon-left-double-arrow:after{content: "\02039"!important;}
	.fc-icon-right-double-arrow:after{content: "\0203A"!important;} 
	.datuli{width:98%;position:absolute;top:5px;left:5px;margin-bottom:0px;}
	.datuli li{width:76px;height:45px;line-height:45px;text-align:center;font-size:14px;display:inline-block;margin-right:10px;}
	.spa1{background:#99cccc;} 
	.spa2{background:#9999ff;}
	.spa3{background:#cccccc;}
	.spa4{background:#99cc99;}
	.spa5{background:#99ff99;}
	.spa6{background:#cc9999;}
	.spa7{background:#f00;}
	.spa8{background:#00CED1;}
	.edit{width:480px;height:20px;position:absolute;top:58px;left:50%;margin-left:-215px;}
   .edit span{width:35px;height:15px;line-height:15px;text-align:center;color:#fff;border-radius:5px;font-size:12px;display:inline-flex;}
   .edit span.edittype1{background:#83bc15;}  
   .edit span.edittype2{background:#00a1e5;}		
   .edit span.edittype3{background:#ffd600;}
   .edit div{float:left;margin-right:10px;}		
   .fc .fc-toolbar>*>:first-child{margin-top:-20px;}
   .dxtit{font-size:16px;color:#333;position:absolute;top:58px;left:0;text-indent:1em;}
   .fc-toolbar .fc-right{margin-right:30px!important;}
   .tab1,.tab2{height:-webkit-fill-available;}
   .fc-toolbar.fc-header-toolbar{margin-bottom:0px!important;}
   .fc-toolbar.fc-header-toolbar{margin-left:0px!important;}
   .time {
	width: 177px;
	height: 84px;
	z-index: 17;
	color: #555;
	font-size:12px;
	position: absolute;
    top: 0px;
    padding-top: 24px;
}
  .time:hover{display:none;}
  
.uul{background: #fff;padding:7px}
					


/* .fc-scroller{overflow:hidden!important;margin:0 !important;}
.fc-widget-content .fc-scroller-clip{height:322px;overflow:hidden scroll} */
.fc-toolbar h2{float:left;font-size:16px!important;line-height: 29px;}
.fc-state-default{float:left;}
.datuli li{float:left;}
tr,td{height:24px;max-height:24px;}
</style>
	
</head>
<body style="width:99%;height:85%;margin:0 auto;"> 
<input type="hidden" name="jdid" id="jdid"/>
<div class="main">
<div class="content">
  <!-- 日历视图 -->      
        <ul class="datuli" id="ryjd"></ul>
      <div class="content1" >                
                <div class="dxtit"><b>大修日历</b></div>
                <div class="edit" style="display:block;">
		            <div> <span class="edittype1"></span> 已完成的大修</div>
		            <div> <span class="edittype2"></span> 正在进行的大修</div>
		           <div> <span class="edittype3"></span> 正在准备的大修</div>
	            </div> 
	            <div class="testContain" style="position:absolute;top:63px;left:5px;height:70%;"></div>
     </div>  
       
</div>


</div>
    


<script type="text/javascript">
	"use strict";
  
	nui.parse();
	//基地管理
	var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
	var jdArray = getCookie('jdArray');
	var jdManagerArray =[];
	if(isadmin == "true"){
	    jdManagerArray.push("惠州");
		jdManagerArray.push("大亚湾");
		jdManagerArray.push("阳江");
		jdManagerArray.push("防城港");
		jdManagerArray.push("宁德");
		jdManagerArray.push("红沿河");
		jdManagerArray.push("台山");
	}else{
		jdManagerArray=jdArray.split(",");
	}
	 
	var jzManagerArray = [];//机组信息
	$(document).ready(function() {
		var top = 0;
		var a = document.createElement("a");
		a.style.position = "absolute";
		var i = 1;
		if (jdManagerArray.indexOf('惠州') > -1 ) {//惠州
			$("#ryjd").append("<li class='spa8' >惠州</li>");
			jzManagerArray.push('P1');
			jzManagerArray.push('P2');
			jzManagerArray.push('P3');
			jzManagerArray.push('P4');
		}
		if (jdManagerArray.indexOf('阳江') > -1 ) {//阳江
			$("#ryjd").append("<li class='spa5' >阳江</li>");
			jzManagerArray.push('Y1');
			jzManagerArray.push('Y2');
			jzManagerArray.push('Y3');
			jzManagerArray.push('Y4');
			jzManagerArray.push('Y5');
			jzManagerArray.push('Y6');
		}
		if (jdManagerArray.indexOf('宁德') > -1 ) {//宁德
			$("#ryjd").append("<li class='spa3' >宁德</li>");
			jzManagerArray.push('N1');
			jzManagerArray.push('N2');
			jzManagerArray.push('N3');
			jzManagerArray.push('N4');
			jzManagerArray.push('N5');
			jzManagerArray.push('N6');
		}
		if (jdManagerArray.indexOf('台山') > -1 ) {//台山
			$("#ryjd").append("<li class='spa6' >台山</li>");
			jzManagerArray.push('T1');
			jzManagerArray.push('T2');
		}
		if (jdManagerArray.indexOf('大亚湾') > -1 ) {//大亚湾
			$("#ryjd").append("<li class='spa1' >大亚湾</li>");
			jzManagerArray.push('D1');
			jzManagerArray.push('D2');
			jzManagerArray.push('L1');
			jzManagerArray.push('L2');
			jzManagerArray.push('L3');
			jzManagerArray.push('L4');
		}
		if (jdManagerArray.indexOf('防城港') > -1 ) {//防城港
			$("#ryjd").append("<li class='spa4' >防城港</li>");
			jzManagerArray.push('F1');
			jzManagerArray.push('F2');
			jzManagerArray.push('F3');
			jzManagerArray.push('F4');
		}
		if (jdManagerArray.indexOf('红沿河') > -1 ) {//红沿河
			$("#ryjd").append("<li class='spa2' >红沿河</li>");
			jzManagerArray.push('H1');
			jzManagerArray.push('H2');
			jzManagerArray.push('H3');
			jzManagerArray.push('H4');
			jzManagerArray.push('H5');
			jzManagerArray.push('H6');
		}
		rlInfo();

	});
</script>
<script src="<%= request.getContextPath() %>/overhaul/OverhaulCalendar/js/index.js"></script>

</body>

</html>