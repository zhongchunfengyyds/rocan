<!DOCTYPE html>

<%@page import="com.eos.system.utility.StringUtil"%>
<%@page import="com.eos.access.http.security.config.HttpSecurityConfig"%>
<%@ taglib uri="http://eos.primeton.com/tags/html" prefix="h"%>
<%@include file="/common/skins/skin0/component.jsp"%>
<%@page pageEncoding="UTF-8"%>
<html>
<!-- 
  - Author(s): littlebear
  - Date: 2019年8月19日 17:28:49
  - Description:
-->
<head>
<title>用户登录</title>
<%
   String contextPath=request.getContextPath();
   String url = null;
   HttpSecurityConfig securityConfig = new HttpSecurityConfig();
   boolean isOpenSecurity = securityConfig.isOpenSecurity();
   if(isOpenSecurity){
   		boolean isAllInHttps = securityConfig.isAllInHttps();
   		if(!isAllInHttps){
   			String ip = securityConfig.getHost();
   			String https_port = securityConfig.getHttps_port();
   			url = "https://" + ip + ":" + https_port + contextPath + "/coframe/auth/login/com.cgn.components.coframe.auth.login.login.flow";
   		}else{
   			url = "com.cgn.components.coframe.auth.login.login.flow"; 
   		}
   }else{
   		url = "com.cgn.components.coframe.auth.login.login.flow";
   }
%>
<script type="text/javascript" src="<%=contextPath%>/common/nui/nui.js"></script>
<link rel="stylesheet" type="text/css" href="<%=contextPath%>/coframe/auth/login/css/ui-button.css" />
<link rel="stylesheet" href="<%=contextPath%>/css/themes/default/css/cuc.css" />
<link rel="stylesheet" href="<%=contextPath%>/css/themes/default/css/font-awesome.min.css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<script type="text/javascript">
	"use strict";
    if(top!=window){
        top.location.reload(); 
    }
</script>

<style>
html,body{
	height: 100%;
}
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
@media screen and (min-width: 1920px){
    html{
        font-size: 24px;
    }
}
@media screen and (max-width: 1920px){
    html{
        font-size: 20px;
    }
}
@media screen and (max-width: 1600px){
    html{
        font-size: 16px;
    }
}
@media screen and (max-width: 1400px){
    html{
        font-size: 13px;
    }
}
.bs-docs-section{
	width:100%;
	height:100%;
	position: fixed;
	background: url("<%=contextPath%>/img/login/001.gif") no-repeat center  90%; 
	background-size: 100% 100%;
}
.userlogin .modal-body{
    position: absolute;
    left: 50%;
    top: 55%;
    transform: translate(-50%,-50%);
    border: 1px solid #224e84;
    border-radius:20px; 
    width: 30rem;
    background-color:#fff;
    height: 20rem;
    box-shadow: 0 0 35px #fff;
}
.main .form-group {
    margin-top: 0.7rem;
    margin-bottom: 0.7rem;
}
.userlogin .modal-body form{
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
    width: 100%;
    height: 100%;
    
}
.userlogin .subtitle{
	width: 100%;
	height:20%;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 4rem;
	color:#ffffff;
	font-weight: bold;
	border-radius: 20px 20px 0 0!important;
}
.userlogin .subtitle span:nth-child(1){
	font-size: 1.8rem;
	color: #fff;
}
.userlogin .subtitle span:nth-child(2){
	font-size: 4rem;
	text-shadow: 0rem 0rem .5rem #ffffff;
}
.userlogin .main{
	width: 75%;
    height: 50%;
    position: absolute;
    left: 50%;
    top: 48%;
    transform: translate(-50%,-50%);
}
.mini-textbox {
    width: 78%;
}
.userlogin .form-group{
	height: auto;
}
.userlogin .main .form-group > input{
	border: none;
	width: 100%;
	height: 60%;
	padding: 5px;
	border-radius:5px !important;
}
.userlogin .main input:hover{
/* 	box-shadow:0 0 15px #195da5; */
}
.vCode_container{
	display: flex;
	align-items: center;
	justify-content: center;
}
.vCode{
	width: 73% !important;
	height:1.7rem;
	border:1px solid #224e84;
	padding: 5px;
/* 	border-radius:5px !important; */
}
.mini-errorIcon {
    top:0.2rem;
    right:9px;
 }
 label{
 	margin-bottom:0px;
 }
.userlogin .tip{
	height: 10% !important;
	margin-top:1rem;
}
.userlogin .checkbox{
	height: 10% !important;
	margin-left: 25px;
}
.userlogin .checkbox input{
	height: 70% !important;
}
.userlogin .checkbox input:hover{
	box-shadow:none !important;
}
.userlogin .submit button{
	background: #224e84;
	color:#ffffff;
	height: 1.7rem;
}
.userlogin .submit button:hover{
 	box-shadow:0 0 5px #195da5;
	text-shadow: 0rem 0rem .5rem #ffffff;
}
.food{
	position:absolute;
	bottom:0;
	height: 20%;
	width:100%;
	display: flex;
	align-items: center;
	justify-content: center;
}
.food>div{
	height: 100%;
	width:100%;
	position:relative;
	display: flex;
	align-items: center;
	justify-content: center;
}
.food>div>div{
	width:98%;
	margin: 0 1% 0 1%;
}
.food img:hover {
	transform:scale(1.1);
}
.mini-textbox-input{
	width: 100%;
    height:100%;
    font-size: 1rem;
}
.mini-textbox-border{
    width: 98%;
    height:1.7rem;
}
.mini-textbox-border {
    border: solid 1px #195da5;
}
input{  
	background:none;  
	outline:none;  
	border:0px;
}
label{
	font-size: 1rem;
	width:19%;
}
#vCode_container{
	display:inline-block!important;
    width: 79%;
}
#vCode_container img{
	width:4rem;
}
.text_flow{white-space: nowrap; text-overflow:ellipsis; overflow:hidden;}
.bg-blur {
            float: left;
            width: 100%;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            -webkit-filter: blur(15px);
            -moz-filter: blur(15px);
            -o-filter: blur(15px);
            -ms-filter: blur(15px);
            filter: blur(15px);
        }
#error{
	size:12px;
}
</style>

</head>
<%
	String original_url = null;
	Object objAttr = request.getAttribute("original_url");
	if (objAttr != null) {
		original_url = StringUtil.htmlFilter((String) objAttr);
	}
%>
<body >
	<div class="bs-docs-section userlogin" >
		<div id="form1" class="modal-body">
			<form method="post" name="loginForm" onsubmit="return login();" action="<%=url%>">
				<div class="form-group subtitle text_flow" style="height:3.2rem;background:#224e84;"><span class="text_flow">在役检查技术管理平台</span></div>
				<div class="main">
					<input id="original_url" class="nui-hidden" name="original_url" value="<%=original_url%>" /> 
					<input id="decryptpara" class="nui-hidden" name="decryptpara"/>
					<div class="form-group ">
						<label>用户名：</label> 
						<input type="text" class="nui-textbox" placeholder="用户名"  id="userId" style="border:1px solid #224e84;display:inline-block;  height: 100%; padding: 5px; border-radius:5px !important;"
						onenter="keyboardLogin" onvalidation="onCheckUserId" value="${userIddecrypt}" />
					</div>
					<div class="form-group">
						<label>密&nbsp;&nbsp; &nbsp;码：</label> 
						<input id="authpsw" type="password" placeholder="密码" class="nui-password" vtype="minLength:6" style="border: none; height: 100%; padding: 5px; border-radius:5px !important;"
						minLengthErrorText="密码不能少于6个字符" onenter="keyboardLogin" onvalidation="onCheckPassword" autocomplete="off" />
					</div>
					<div class="form-group">
						<label>验证码：</label>
						<div id='vCode_container'></div>
						<script type="text/javascript">
							EOS.use('eos-verifycode',function(){
								var tmpObj=new VerifyCode({
									name:"vCode",
									length:"4",
									type:"number",
									imageHeight:"21",
									hasInput:true,
									className:"vCode"
								});
								tmpObj.init();
							});
						</script>
					</div>
					<div class="tip">
						<i class="ui-icons-big ui-icon-big-login"></i> <span id="error">访问之前需要用户验证，请输入您的凭据。</span>
					</div>
					<div class="checkbox">
						<input type="checkbox" /> <span>记住用户名及密码</span> 
					</div>
					<div class="form-group submit">
						<button type="submit" class="btn btn-default btn-block"  style="font-size: 1rem;line-height: 0.7rem;">登录</button>
					</div>
				</div>
			</form>
		</div>
<!-- 		<div class="food"> -->
<!-- 			<div> -->
<%-- 				<div><img src="<%=contextPath%>/img/login/roll1.png"/></div> --%>
<%-- 				<div><img src="<%=contextPath%>/img/login/roll2.png"/></div> --%>
<%-- 				<div><img src="<%=contextPath%>/img/login/roll3.png"/></div> --%>
<%-- 				<div><img src="<%=contextPath%>/img/login/roll4.png"/></div> --%>
<%-- 				<div><img src="<%=contextPath%>/img/login/roll5.png"/></div> --%>
<!-- 			</div> -->
<!-- 		</div> -->
	</div>
	<script type="text/javascript">
	"use strict";
     nui.parse();
  
     var form = new nui.Form("#form1");
     
     nui.get("userId").focus();
     
     function onCheckCaptcha() {
     }
     
     function onCheckUserId(e){
       if (e.isValid) {
         if(e.value==""){
           e.errorText = "用户名不能为空";
           e.isValid = false;
         }
       }
     }
     
     function onCheckPassword(e){
       if (e.isValid) {
         if(e.value==""){
           e.errorText = "密码不能为空";
           e.isValid = false;
         }
       }
     }
     <%Object result = request.getAttribute("result");
			if (result != null) {
				Integer resultCode = (Integer) result;
				if (resultCode == 100) {
					out.println("showError('验证码错误！')");
				} else if (resultCode == 0) {
					out.println("showError('用户名或密码错误(密码错误三次将会被锁定)！')");
				} else if (resultCode == -1) {
					out.println("showError('用户不存在！')");
				} else if (resultCode == -2) {
					out.println("showError('用户无权限登录，请联系系统管理员！')");
				} else if (resultCode == 3) {
					out.println("showError('用户已过期！')");
				} else if (resultCode == 4) {
					out.println("showError('用户未到开始使用时间！')");
				} else if (resultCode == 5) {
					out.println("showError('密码已过期！')");
				} else if (resultCode == -3) {
					out.println("showError('查询用户信息失败，请联系系统管理员检查数据库连接！')");
				} else {
					out.println("showError('未知的异常，请联系系统管理员！')");
				}
			}%>
      function showError(msg){
      	 $("#error").html(msg);
      }
      
      //获取键盘 Enter 键事件并响应登录
     function keyboardLogin(e){
       login();
     }
     function login(){
     	var form = new nui.Form("#form1");
     	var vCode = document.getElementsByName("vCode")[0];
        form.validate();
        if (form.isValid() == false) 
        	return false;
        if(vCode&&vCode.value==""){
        	showError('验证码为空！');
        	return false;
        }
        var userstr = nui.get("userId").getValue();
        var pswstr = nui.get("authpsw").getValue();
        var json = nui.encode({"userstr":userstr,"pswstr":pswstr});
        $.ajax({
	    	url: "com.cgn.components.coframe.auth.LoginManager.encrypt.biz.ext",
	    	cache: false,
	    	data: json,
	    	type: 'POST',
	    	contentType:'text/json',
	    	success: function (text) {
	    		nui.get("decryptpara").setValue(text.decryptpara);
	    		document.loginForm.submit();
	    		return false;
            },
            error: function () {
            }
	    });
        return false;
     }
     $(function(){
// 	   var width = $(window).width()-30;
// 	    var height = $(window).height()-30;
// 	    $(".section").css("width",width);
// 	    $(".section").css("height",height);
<%-- 	    $(".section").css("background-image","url(<%=contextPath%>/css/themes/default/images/sign_in/sign-in-bg.jpg)"); --%>
// 	    $(".section").css("background-repeat","no-repeat");
// 	    $(".section").css("background-size","100% 100%");
	   
	  });
</script>
</body>
<%
	request.getSession().invalidate();
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			if (StringUtil.equals("jsessioinid", cookies[i].getName())) {
				cookies[i].setMaxAge(0);
			}
		}
	}
%>
</html>