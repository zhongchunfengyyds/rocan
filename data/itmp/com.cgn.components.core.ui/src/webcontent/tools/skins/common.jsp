<%@ include file="/coframe/tools/lang.jsp"%>

<%
	String skin="skin1";
	String contextPath=request.getContextPath();
%>

<link id="css_skin" rel="stylesheet" type="text/css" href="<%=contextPath%>/coframe/tools/skins/<%=skin %>/css/style.css"/>
<link id="css_icon" rel="stylesheet" type="text/css" href="<%=contextPath%>/coframe/tools/icons/icon.css"/>
<script type="text/javascript" src="<%=contextPath%>/common/nui/nui.js"></script>
<%-- <script type="text/javascript" src="<%=contextPath%>/scripts/jquery.min.js"></script> --%>
<script type="text/javascript" src="<%=contextPath%>/coframe/tools/uba/uba.js"></script>
<script type="text/javascript" src="<%=contextPath%>/common/nui/locale/<%=lang%>.js"></script>

<script src="<%=contextPath%>/scripts/cuc.min.js"></script>


<link rel="stylesheet" type="text/css" href="<%=contextPath%>/css/themes/cuc/mine.css"/>
<link rel="stylesheet" type="text/css" href="<%=contextPath%>/css/themes/cuc/skin.css"/>
<link rel="stylesheet" type="text/css" href="<%=contextPath%>/css/themes/cuc/jud.css"/>

<link rel="stylesheet" href="<%=contextPath%>/css/themes/default/css/cuc.css" />

<link rel="stylesheet" href="<%=contextPath%>/css/themes/default/css/apply.css" />
<link rel="stylesheet" type="text/css" href="<%=contextPath%>/css/themes/cuc/detailbox.css"/>
<script type="text/javascript">
var mini_debugger = false;
 var ubaParames = {
            serviceUrl:'<%=com.eos.foundation.eoscommon.ConfigurationUtil.getUserConfigSingleValue("uba", "service","ubaService") %>',
            userId:"<%=com.eos.data.datacontext.DataContextManager.current().getMUODataContext().get("userObject/userId") %>",
            c:'<%=com.eos.foundation.eoscommon.ConfigurationUtil.getUserConfigSingleValue("uba", "security","StatSysId") %>',
            onOff:'<%=com.eos.foundation.eoscommon.ConfigurationUtil.getUserConfigSingleValue("uba", "security","UBAOnOff") %>'
        };
function createUBAFrameDocument(){
	try
	{
       var pagename="";
       if(document.title){
       	pagename=document.title;
       }else{
       pagename=window.location.pathname;
       }
//        jup.uba.Page(window.location.href,window.document.referrer,ubaParames.userId,ubaParames.sysCode,pagename,ubaParames.onOff);
	}catch(e){}
}

if(document.addEventListener){
 window.addEventListener('load',createUBAFrameDocument,false);
 }else{ 
 window.attachEvent('onload',createUBAFrameDocument);
 } 
 
//IE8
if (!Array.prototype.forEach) {
		  
		   Array.prototype.forEach = function(callback/*, thisArg*/) {
		     var T, k;
		     if (this == null) {
		       throw new TypeError('this is null or not defined');
		     }
		     var O = Object(this);
		     var len = O.length >>> 0;
		     if (typeof callback !== 'function') {
		       throw new TypeError(callback + ' is not a function');
		     }
		     if (arguments.length > 1) {
		       T = arguments[1];
		     }
		     k = 0;
		     while (k < len) {
		       var kValue;
		       if (k in O) {
		         kValue = O[k];
		         callback.call(T, kValue, k, O);
		       }
		       k++;
		     }
		   };
		 }
</script>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<style>
	<%-- .mini-popupedit .mini-buttonedit-icon {
    	background: url(<%=contextPath%>/common/nui/themes/default/images/buttonedit/icon2.gif) no-repeat 3px 1px !important;
	} --%>
</style>