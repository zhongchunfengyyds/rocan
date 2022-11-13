<!DOCTYPE html>
<%@page import="com.eos.foundation.eoscommon.BusinessDictUtil"%>
<%@page import="com.eos.foundation.eoscommon.ConfigurationUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Erorr</title>
<!--结构样式-->
<link href="<%=request.getContextPath()%>/common/Themes/DefaultTheme/css/Style.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/common/Themes/DefaultTheme/css/Site.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/common/Themes/DefaultTheme/css/jquery/jquery.ui.all.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/mine.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/jud.css"/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/apply.css"" />

<style>
		
		*{
			margin:0;
			padding:0;
			box-sizing:border-box;
		}
					.form-box{
						padding:20px 0;
						background-color:#fff;
					}
					.nav-tabs{
						margin-left:15px;
					}
					.form-demo-nei{
						padding:10px 20px 20px 60px;
						overflow:auto;
					}
	
			.fzf_box{
						overflow:auto;
						margin:100px auto;
						width:750px;
					}
					.fzf_lt{float:left;}
					.fzf_rt{
						float:left;
						margin-left:20px; 
						width:450px;
					}
					.fzf_tit{color:#898989;margin-top:10px;}
					.fzf_tit i{color:#FD6C45;margin-right:10px;font-size: 18px;}
					.fzf_tit2{font-size: 30px;color:#00497F;}
					.fzf_tongzhi{
						margin-top:15px;
					}
					.fzf_tongzhi span{
						display:inline-block;
						width:110px;
						border:1px solid #E6E6E6;
						text-align: center;
						line-height:30px;
						color:#898989;
					}
					.fzf_tongzhi .btn{
						color:#898989;
					}
					.fzf_tongzhi span i{margin-right:4px;}
					.fzf_sea{
						margin-top:25px;
					}
					.fzf_sea .input-group{width:250px;float:left}
					.fzf_sea .input-group-addon{background:#00497F;color:#FFF;border:1px solid #00497F;}
	</style>

<script type="text/javascript">
	function backInFrame(){
		self.parent.location.reload();
	}
</script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="<%= request.getContextPath() %>/scripts/html5shiv.min.js"></script>
  <script src="<%= request.getContextPath() %>/scripts/respond.min.js"></script>
<![endif]-->
<!--皮肤样式-->
</head>
<%

//设置状态码
response.setStatus(HttpServletResponse.SC_OK);
String v=request.getRequestURL().toString();
String m=(String)request.getAttribute("javax.servlet.error.message");
%>
<body>
 <!--*************************当前位置*************************-->
<body>
<div class="bs-docs-section"><div class="form-box"> 
	<div class="form-demo-nei">
        <div class="fzf_box">
            <div class="fzf_lt"><img src="<%= request.getContextPath() %>/css/themes/default/images/apply-error.png"></div>        
            <div class="fzf_rt">
            	<p class="fzf_tit"><i class="fa fa-exclamation-circle"></i>错误代码：<%=m %></p>
            	<p class="fzf_tit2">核小宝正在努力修复！</p>
            	<div class="fzf_tongzhi">
            		<button class="btn btn-second"><i class="fa fa-envelope"></i>通知管理员</button>
            		or
            		<span><i class="fa fa-phone"></i><%=BusinessDictUtil.getDictName("ERROR_CONFIG", "admin_tel") %></span>
            	</div>
                <div class="fzf_sea">
                    <div class="input-group">
            	      <input type="text" class="form-control" placeholder="邮箱" aria-describedby="basic-addon2">
            	      <span class="input-group-btn">
            	        <button class="btn btn-default" type="button">搜索</button>
            	      </span>
                    </div>
                    <button class="btn btn-link" onclick="backInFrame()">返回</button>
            	</div>
            </div>
        </div>
    </div> 
</div>
</div>

</body>

</html>