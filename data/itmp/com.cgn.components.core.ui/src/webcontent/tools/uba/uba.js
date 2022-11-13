var jup = {};

jup.uba = {
    Login: function (url, userId, sysCode, projectCode, onOff) {
        /// <summary>
        /// 记录登录日志
        /// </summary>
        ///<param name="url">UBA链接</param>
        ///<param name="userId">员工号</param>
        ///<param name="sysCode">系统代码</param>
        ///<param name="projectCode">子系统代码</param>
        ///<param name="onOff">开关</param>
        if (onOff.toLowerCase() === "off") {
            return;
        }
        if(onOff.toLowerCase()==="on"){
	        $.ajax({
	            url: url + "Services/UBALogServer.asmx/SaveRequestLoginLog",
	            dataType: "jsonp",
	            jsonp: "jsonpcallback",
	            data: { userId: userId, sysCode: sysCode, screenWidth: screen.width, screenHeight: screen.height, projectCode: projectCode }
	        });
        }
    },
    Menu: function (url, userId, sysCode, menuName, projectCode, onOff) {
        /// <summary>
        /// 记录菜单日志
        /// </summary>
        ///<param name="url">UBA链接</param>
        ///<param name="u.serId">员工号</param>
        ///<param name="sysCode">系统代码</param>
        ///<param name="menuName">菜单名称</param>
        ///<param name="projectCode">子系统代码</param>
        ///<param name="onOff">开关</param>
        if (onOff.toLowerCase() === "off") {
            return;
        }
//        if(onOff.toLowerCase()==="on"){
//	        nui.ajax({
//	            url: "com.cgn.itmp.basecommon.Common.SaveMenu.biz.ext",
//	            dataType: "json",
//	            type:"post",
//	            data: { "operateDesc": menuName,"url":window.document.URL,"userId":userId }
//	        });
//        }
//        if(onOff.toLowerCase()==="on"){
//	        $.ajax({
//	            url: url + "Services/UBALogServer.asmx/SaveMenuLog",
//	            dataType: "jsonp",
//	            jsonp: "jsonpcallback",
//	            data: { userId: userId, sysCode: sysCode, menuName: menuName, projectCode: projectCode }
//	        });
//        }
    },
    
    
    
    Page: function (url,referUrl, userId, sysCode, pageName, onOff) {
        /// <summary>
        /// 记录菜单日志
        /// </summary>
        ///<param name="url">UBA链接</param>
        ///<param name="u.serId">员工号</param>
        ///<param name="sysCode">系统代码</param>
        ///<param name="menuName">页面名称</param>
        ///<param name="projectCode">子系统代码</param>
        ///<param name="onOff">开关</param>
        if (onOff.toLowerCase() === "off") {
            return;
        }if(onOff.toLowerCase()==="on"){
	        nui.ajax({
	            url: "com.cgn.components.coframe.tools.UBAManager.SavePage.biz.ext",
	            dataType: "json",
	            type:"post",
	            data: { "operateDesc": pageName,"url":url,"referUrl":referUrl }
	        });
        }
    }
};

//更新访问次数
$(function () {
    var href = window.location.href;
    var title = document.title;
    var url = "/Training/Customized/GetPlanCommon.ashx";
    var parm = "action=UpdateNum&&url=" + href + "&&tit=" + title;
    return;
    //getAjax(url, parm, function (rs) {
    

    //});
    var start;
    var end;
    var duration = 0;
    start = new Date();
        $(window).bind('beforeunload', function(e) {
            end = new Date();//用户退出时间
            duration = end.getTime() - start.getTime();
            duration = duration/1000;//取的是秒
            //alert(duration);
            $.ajax({
                type: 'POST',
                async: false,//这块至关重要，用$post默认是true
                url: url,
                data: {second: duration, action: "Statistics", U:href },
                error:function(rs){
                    
                }
            });
        });
});
