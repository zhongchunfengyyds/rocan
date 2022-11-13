<%@page import="com.eos.data.datacontext.IUserObject"%>
<%@page import="com.eos.foundation.common.utils.StringUtil"%>
<%@page import="com.eos.foundation.eoscommon.ConfigurationUtil"%>
<%@page import="com.eos.foundation.eoscommon.BusinessDictUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
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
	}
%>

<html>
	<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-07-27 09:12:07
  - Description:
-->
	<head>
		<%-- <title><b:message key="module-name" ignore="true" /></title> --%>
		<title>在役检查技术管理平台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<link rel="shortcut icon" href="favicon.ico" />
		<link rel="stylesheet" type="text/css" href="<%=_contextPath %>/coframe/newui/css/index.css" />
		<style type="text/css">
			.mini-layout-region-body ul li .mini-buttonedit{
				width:60px!important;
			}
			.mini-popup{
				width:58px!important;
			}
			.leftmenu .mini-tree-parentNode{
				display:flex;
			}
			.mini-tree-selectedNode .statistics{
			background-color: #ee6500!important;
			}
			.statistics {
   			 padding: 0 4px 0 0!important;
    		}
		</style>
	</head>
	<body style="overflow: hidden;">
		<div class="nui-layout" style="width: 100%; height: 100%;">
			<div id="header" region="north" style="border: 0" height="55px" showSplit="false" showHeader="false" splitSize="0">
				<div class="navbar-default topmenu" style="display: block;">
					<div style ="height: 100%;width: 170px;float: left;">
						<img style="float: left;width:80%;margin: 3px auto;" src="<%=_contextPath%>/img/title/LOGO.png" />
					</div>
					
					<ul class="nav navbar-nav" id="icontop">
						<li id="home" style="" class="icontop active"><a href="javascript:void(0);" onclick="onMenuClick('首页')"><i class="fa fa-home"></i><span>首页</span></a></li>
						<li style="display: none" class="icontop"><a href="javascript:void(0);" onclick="onMenuClick('大纲与计划管理')"><i class="fa fa-sort-amount-asc"></i><span>大纲与计划管理</span></a></li>
						<li style="display: none" class="icontop"><a href="javascript:void(0);" onclick="onMenuClick('日常与大修管理')"><i class="fa fa-file-text-o"></i><span>日常与大修管理</span></a></li>
						<li style="display: none" class="icontop"><a href="javascript:void(0);" onclick="onMenuClick('核岛役检部件管理')"><i class="fa fa-puzzle-piece"></i><span>核岛役检部件管理</span></a></li>
						<li style="display: none" class="icontop"><a href="javascript:void(0);" onclick="onMenuClick('常规岛及BOP役检部件管理')"><i class="fa fa-navicon "></i><span>常规岛及BOP役检部件管理</span></a></li>
						<li style="display: none" class="icontop"><a href="javascript:void(0);" onclick="onMenuClick('焊接管理')"><i class="fa fa-random"></i><span>焊接管理</span></a></li>
						<li style="display: none" class="icontop"><a href="javascript:void(0);" onclick="onMenuClick('知识库')"><i class="fa fa-database"></i><span>知识库</span></a></li>
						<li style="display: none" class="icontop"><a href="javascript:void(0);" onclick="onMenuClick('系统设置')"><i class="fa  fa-cog"></i><span>系统设置</span></a></li>
					</ul>
					<ul class='nav navbar-nav  jdjz'>
						<li class="user-toggle wresore"  id="jdlabel">
							<span id="jdlabel"> 基地: </span>
							<input class="nui-combobox" dataField="jsonObject" id="jdid" onvaluechanged="reloadPage" textField="name" url=""
							 required="true" requiredErrorText="请选择基地" valueField="id" style="width:62px!important;" />
						</li>
						<li class="user-toggle wresore" id="jzlabel">
							<span> 机组: </span>
							<input class="nui-combobox" dataField="jsonObject" id="jzid" textField="name" url="" required="true"
							 requiredErrorText="请选择机组" onvaluechanged="reloadTab" valueField="id" style="width:50px;" />
						</li>
					</ul>
					<ul class='nav navbar-nav'>
						<li class="user-toggle">
							<span class="fa fa-user-o"></span>
							<b:write property="userObject/userRealName" scope="session" />
							<ul class='dropdown-menu' role='menu' style="margin-right: -10px; margin-top: 0px;background: #fff">
								<li><a id="sa" style="padding:1px 1px;color:#333" href='#'>退出系统</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<!-- 总菜单树 -->
			<div class="leftmenu" region="west" showSplitIcon="true" width="230">
				<div id="leftTree" class="nui-tree" expandOnNodeClick="true" showTreeIcon="true" style="width:100%;height:100%;"
				 onnodeclick="onNodeSelect" textField="menuname" idField="menuid" onbeforeexpand="onBeforeExpand" onnodeselect="onNodeSelect"></div>
			</div>
			<div title="center" region="center" style="border:0;">
				<div id="mainTabs" class="nui-tabs" activeIndex="2" style="width:100%;height:100%;" plain="false" onactivechanged="onTabsActiveChanged"
				 contextMenu="#tabsMenu">
			</div>
			<ul id="tabsMenu" class="nui-contextmenu" onbeforeopen="onBeforeOpen">
				<li onclick="closeTab">关闭标签页</li>
				<li onclick="closeAllBut">关闭其他标签页</li>
				<li onclick="closeAll">关闭所有标签页</li>
				<li onclick="closeAllButFirst">关闭其他[首页除外]</li>
			</ul>
			
		</div>


		<div id="helpViewer" class="nui-window" showModal="false" showMaxButton="true" allowResize="true" allowDrag="false"
		 collapseOnTitleClick="true" iconCls="icon-help" title="帮助" url="../../help/index.jsp" expanded="false" width="550"
		 height="573" headerStyle="background-image:none;background-color:rgb(77, 97, 162);" bodyStyle="background-color: #F00; padding: 0;">
		</div>

		<div id="chart-dialog" title='<b:message key="flow-chart"/>' class="nui-window" allowDrag="true" showToolbar="false"
		 showFooter="false" showModal="true" showShadow="true" showMaxButton="true" maskOnLoad="true" allowResize="true"
		 style="width: 1000px; height: 465px">
			<iframe name="iframe1" id="chart-frame" frameborder="0" width="100%" height="100%"></iframe>
		</div>
	</body>
	<script type="text/javascript">
	var currentMenu;

		"use strict";
		nui.parse();
		var curPointData;
		
 		$.ajax({
 				url: "com.cgn.components.coframe.framework.MenuManager.getModuleMenuList.biz.ext",
 				success: function(data, textStatus) {
 					var myMenu = ['','大纲与计划管理','日常与大修管理','核岛役检部件管理','常规岛及BOP役检部件管理','焊接管理','知识库','系统设置'];
 					var menuData = data.menu.MenuSource;
 					//获取首页的菜单
 					for(var i=0;i<myMenu.length;i++){
 						var syArray = getMenuUrlByName(menuData, myMenu[i]);
 						if(syArray.length>0){
 							$('#icontop li')[i].innerText;
 							var el = $('#icontop li')[i];
 							el.style.display='flex';
 						}
 					}
 				}
 			});



		var tabs = nui.get("mainTabs");
		var tree = mini.get("leftTree");

		var currentTab = null;


		function onBeforeExpand(e) {
			var tree1 = e.sender;
			var nowNode = e.node;
			var level = tree1.getLevel(nowNode);
			var root = tree1.getRootNode();
			tree1.cascadeChild(root, function(node) {
				if (tree1.isExpandedNode(node)) {
					var level2 = tree1.getLevel(node);
					if (node != nowNode && !tree1.isAncestor(node, nowNode) && level == level2) {
						tree1.collapseNode(node, true);
					}
				}
			});

		}
		//添加
		function showTab(node) {
			var tabs = nui.get("mainTabs");
			var id = "tab$" + node.menuid;
			var menuname = node.menuname;
			if(menuname == "待办任务"){
				id = menuname;
			}
			var tab = tabs.getTab(id);
			if (!tab) {
			
				tab = {};
				tab._nodeid = node.menuid;
				tab.name = id;
				tab.title = menuname;

				tab.showCloseButton = true;

				//这里拼接了url，实际项目，应该从后台直接获得完整的url地址
				tab.url = '<%=_contextPath%>' + "/" + node.funcaction;
				var count = tabs.getTabs();
				if(count.length>10){
				   currentTab = tab;
					closeAllButFirst();
				}
				tabs.addTab(tab);
				//设置当前选中菜单页面流名称
				setpageflow(node);
			}
			tabs.activeTab(tab);
			
		}
		//菜单点击事件
		function onNodeSelect(e) {
			var node = e.node;
			var isLeaf = e.isLeaf;
			
			if (isLeaf) {
// 				if(currentMenu=="系统设置"&&e.selected&&e.selected.menuname=="管道坐标"){
// 					document.getElementById("jdlabel").style.display = "block";
// 					document.getElementById("jzlabel").style.display = "block";
// 				}else if(currentMenu=="系统设置"&&e.selected&&e.selected.menuname!="管道坐标"){
// 					document.getElementById("jdlabel").style.display = "none";
// 					document.getElementById("jzlabel").style.display = "none";
// 				}
				  var pagename="";
			       if(document.title){
			       	pagename=document.title;
			       }else{
			       pagename=window.location.pathname;
			       }
				jup.uba.Page(window.location.href,ubaParames.serviceUrl,ubaParames.userId,ubaParames.sysCode,node.menuname,ubaParames.onOff);

				showTab(node);
			}
		}

		function onTabsActiveChanged(e) {
			var tabs = e.sender;
			var tab = tabs.getActiveTab();
			if (tab && tab._nodeid) {

				var node = tree.getNode(tab._nodeid);
				if (node && !tree.isSelectedNode(node)) {
					tree.selectNode(node);
				}
			}
		}



		var initTab = null;

		//获取二级菜单
		function getMenuUrlByName(menuData, menuName) {
			var tabs = nui.get("mainTabs");
			//var tab = tabs.getTab(id);

			var syArray = new Array();
			var syMenuid = -1;
			for (var i = 0; i < menuData.length; i++) {
				if (menuData[i].menuname == menuName) {
					syMenuid = menuData[i].menuid;
					break;
				}

			}
			var lists = new Array();
			for (var i = 0; i < menuData.length; i++) {
				if (menuData[i].parentsid == syMenuid) {
					lists.push(menuData[i].menuid);
				}
			}

			for (var i = 0; i < menuData.length; i++) {
				curPointData = menuData;
				if (menuData[i].parentsid == syMenuid || lists.indexOf(menuData[i].parentsid)!=-1) {
// 				if (menuData[i].menuseq.indexOf(syMenuid) != -1 && menuData[i].menuname != menuName) {
					syArray.push(menuData[i]);
					if (menuData[i].menuname == "待办任务") {
						initTab = menuData[i];
					}
					if (menuData[i].funcaction) {
						setPoint(menuData[i]);
					}

				}
			}


			return syArray;

		}

		//设置数字
		function setPoint(url) {

			$.ajax({
				url: url.numurl,
				success: function(data, textStatus) {

					/* url.menuname = url.menuname + "["+data.num+"]" ; */
					var ele = document.getElementById(url._id + '$cell$' + url._level);

					if (typeof data.num == "undefined" || data.num == "undefined") {
// 						return;
					} else {
						$(ele).find('.mini-tree-nodetext').html(url.menuname + '<span class="statistics" style="color:white;background-color:#ee6500;">' + data.num + '</span>');
					}
					/* $(ele).find('.mini-tree-nodetext').html(url.menuname + '<span class="statistics">' + data.num + '</span>') */
				}
			});
		}



		//一级模块点击事件
		$("#icontop li").click(function() {
			$("#icontop li").removeClass("active");
			$(this).addClass("active");
		});
		var cgnui = {
			addNavigationItem: function(text, cls, uri) {
				function goback2(e) {
					if (e.uri) {
						var $e = $(e).nextAll();
						if ($e.length > 0) {
							cgnui.load(e.uri);
							$e.remove();
						}
					}
				}
			},
			removeLastNavigationItem: function() {
				$("#positionbar li:last").remove();
			},

			load: function(uri) {
				var url = "";
				var reg = /(http|ftp|https):\/\/[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#])?/;
				if (reg.test(uri)) {
					url = uri;
				} else if (uri.indexOf("/") == 0) {
					url = "<%=request.getContextPath()%>" + uri;
				} else {
					url = "<%=request.getContextPath()%>/" + uri;
				}
				//setCurrentUri(uri);
				nui.get("#panel").load(url);
			},

			syncStatisticsNums: function(option) {
				// 				if(node.numurl != null){
				// 				setPoint(node.numurl);
				// 				}


				//var tree = nui.get("#nav_tree");
				//var node = tree.getSelected();
				//if(node && (node.numurl || node._statistics_result)) {
				//if(option != "ALL") {
				//	tree.statistics(node);
				//} else {
				//$.each(tree.getList(), function(i, n) {
				//	if(n._statistics_result != undefined && n.numurl) {
				//		tree.statistics(n);
				//	}
				//});
				//}
				//}
			}
		};

		var menu = [];

		function onMenuClick(menuname) {
			currentMenu = menuname;
			nui.Cookie.set('modelName', menuname);
			if (menuname == '首页' || menuname == '系统设置') {
				document.getElementById("jdlabel").style.display = "none";
				document.getElementById("jzlabel").style.display = "none";
			} else if (menuname == '日常与大修管理'||menuname == '知识库'||menuname == '焊接管理') {
				document.getElementById("jdlabel").style.display = "block";
				document.getElementById("jzlabel").style.display = "none";
			} else {
				document.getElementById("jdlabel").style.display = "block";
				document.getElementById("jzlabel").style.display = "block";
			}

			var syArray;
			if(menu.length > 0){
				 syArray = getMenuUrlByName(menu, menuname);
					visit("<%=visit%>", syArray);
			}else{
				$.ajax({
				url: "com.cgn.components.coframe.framework.MenuManager.getModuleMenuList.biz.ext",
				success: function(data, textStatus) {
					var menuData = data.menu.MenuSource;
					menu = menuData;
					//获取首页的菜单
					syArray = getMenuUrlByName(menuData, menuname);
					visit("<%=visit%>", syArray);
				}
			});
			}
		}

		//点击一级菜单时，默认选中的二级菜单
		function doSetFirstMenu(menuurl, menuname) {
			var tabs = nui.get("mainTabs");
			//var id = "tab$" + Math.random();
			var tab = tabs.getTab(menuname);
			if (!tab) {
				tab = {};
				tab.name = menuname;
				tab.title = menuname;

				tab.showCloseButton = true;

				//这里拼接了url，实际项目，应该从后台直接获得完整的url地址
				tab.url = '<%=_contextPath%>' + '/' + menuurl;
				tabs.addTab(tab);
			}
			tabs.activeTab(tab);
		}

		//加载二级菜单，并默认选中一个子节点
		function visit(menuurl, data) {
			if(data.length!=0){
				nui.get('leftTree').loadList(data, "menuid", "parentsid");
				if(data[0].menuname.indexOf("常用链接")!=-1){
					nui.get('leftTree').expandAll();
				}
				// 	doSetFirstMenu(menuurl,menuname);
	
				if (initTab != null) {
					nui.get('leftTree').selectNode(initTab);
	// 				nui.get('leftTree').expandAll();
					initTab = null;
				}
			}
		}

		$(function() {

			//根据菜单名称获取子节点
 			jup.uba.Login(ubaParames.serviceUrl, ubaParames.userId, ubaParames.sysCode, "", ubaParames.onOff);

			function getLocale() {
				if (!document.cookie == "") {
					var arr = document.cookie.split(/[=;]/);
					for (var i = 0; i < arr.length - 1; i += 2) {
						if (arr[i] == "locale") {
							return arr[i + 1];
						}
					}
				}
			}
			var locale = getLocale();
			$("#changLocale").text("en" == locale ? "中" : "EN");
			$("#changLocale").bind("click", function() {
				if ("EN" == $(this).text()) {
					document.cookie = "locale=en";
				} else {
					document.cookie = "locale=zh_CN";
				}
				document.location.reload();
			});

			$.ajax({
				url: "com.cgn.components.coframe.EmpSource.getUserRoleList.biz.ext",
				type: 'POST',
				data: "{userid:" + "<%=userid %>" + "}",
				cache: false,
				contentType: 'text/json',
				success: function(data) {
					var roleList = data.resultList.CapRoleSource;
					//根据人员角色，封装基地信息
					var jdArray = new Array();
					var isadmin = "false";//超级管理员
					var issupserAdmin = "false";//特级管理员（6基地权限）
					var role = new Array();
					role.push("ITMP_CSJS");
					if (null != roleList) {
						for (var i = 0; i < roleList.length; i++) {
							if(roleList[i].roleCode.indexOf("ITMP")!=-1){
								role.push(roleList[i].roleCode);
								var roleName = roleList[i].roleName; //角色名称
								// var roleDesc = roleList[i].roleDesc;//角色描述
								if (roleName=="超级管理员") {
									
									isadmin = "true";
									issupserAdmin = "true";
									break;
								}
								
								if (roleName.indexOf("超级管理员")!=-1) {
									
									isadmin = "true";
								}
								if (roleName.indexOf("阳江") != -1 && jdArray.indexOf("阳江") <= -1) { //阳江
									jdArray.push("阳江");
								} else if (roleName.indexOf("防城港") != -1 && jdArray.indexOf("防城港") <= -1) { //防城港
									jdArray.push("防城港");
								} else if (roleName.indexOf("大亚湾") != -1 && jdArray.indexOf("大亚湾") <= -1) { //大亚湾
									jdArray.push("大亚湾");
								} else if (roleName.indexOf("宁德") != -1 && jdArray.indexOf("宁德") <= -1) { //宁德
									jdArray.push("宁德");
								} else if (roleName.indexOf("台山") != -1 && jdArray.indexOf("台山") <= -1) { //台山
									jdArray.push("台山");
								} else if (roleName.indexOf("红沿河") != -1 && jdArray.indexOf("红沿河") <= -1) { //红沿河
									jdArray.push("红沿河");
								}
								
								if (roleName.indexOf("水压专项管理员")!=-1) {
									jdArray=new Array();
									jdArray.push("红沿河");
									jdArray.push("台山");
									jdArray.push("宁德");
									jdArray.push("大亚湾");
									jdArray.push("防城港");
									jdArray.push("阳江");
								}
							}else{
							}
						}
					}
					nui.get('jdid').setAjaxType("POST");
					nui.get('jdid').load(encodeURI(
						"com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfoByRole.biz.ext?isadmin=" + issupserAdmin + "&roleStr=" +
						jdArray.join(',')));
					nui.get('jdid').select(0);
					var jdid = nui.get("jdid").getValue();
					nui.get('jzid').setAjaxType("POST");
					nui.get('jzid').load("com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid);
					nui.get('jzid').select(0);
					var jdid = nui.get('jdid').getValue();
					if(jdid==null | jdid == ''){
						jdid = -1;
					}
					var jzid = nui.get('jzid').getValue();
					if(jzid==null | jzid == ''){
						jzid = -1;
					}
					
					nui.Cookie.set('jdid', jdid);
					nui.Cookie.set('jzid', jzid);
					nui.Cookie.set('jdname', nui.get('jdid').getText());
					nui.Cookie.set('jzname', nui.get('jzid').getText());
					
					$.ajax({
						url: "com.cgn.itmp.basecommon.Common.setAdmin.biz.ext",
						type: 'POST',
						data: nui.encode({"isadmin":isadmin,"role":(role+"")}),
						cache: false,
						contentType: 'text/json',
						success: function(data) {
						
						}
					});
					nui.Cookie.set('jdArray', jdArray);
				}
			});



			$("#sa").bind("click", function() {
// 			$.ajax({
<%-- 						url: "https://uap-t.cgnpc.com.cn/authcenter/userLogout?access_token="+"<%=accessToken%>", --%>
// 						type: 'GET',
// 						data: "",
// 						cache: false,
// 						contentType: 'application/json',
// 						dataType : "jsonp",//数据类型为jsonp  
// 						jsonp : "jsonpCallback",//服务端用于接收callback调用的function名的参
// 						success: function(data) {
							
							
<%-- 								window.location.assign("<%=_contextPath%>/coframe/auth/login/logout.jsp"); --%>
							
							
// 						}
// 					})
					window.location.assign("<%=_contextPath%>/coframe/auth/login/logout.jsp");
// 				$.ajax({
// 						url: "com.cgn.itmp.basecommon.Common.loginOut.biz.ext",
// 						type: 'POST',
<%-- 						data: "{accessToken:" + "<%=accessToken%>" + "}", --%>
// 						cache: false,
// 						contentType: 'text/json',
// 						success: function(data) {
// 							location.reload();
// 							if (data.result == true) {
<%-- 								window.location.assign("<%=_contextPath%>/coframe/auth/login/logout.jsp"); --%>
// 							}
// 							else {
								
// 							}
// 						}
// 					});
					
			});

			$("#out").bind("click", function() {
				window.location.assign("<%=_contextPath%>/coframe/auth/login/logout.jsp");
			});

			onMenuClick('首页');
		});

		$(".user-toggle").bind("mouseover", function() {
			$(this).find(".dropdow-menu").show();
			$(this).addClass("open");
		})
		$(".user-toggle").bind("mouseout", function() {
			$(this).find(".dropdow-menu").hide();
			$(this).removeClass("open");
		});

		var charurl = "";

		function showWinDiv(url) {
			$("#chart-frame").attr("src", url);
			charurl = url;
			nui.get("#chart-dialog").show();
		}

		function resetFlowchartDiv(zoomQuotiety) {
			if (charurl != "") {
				$("#chart-frame").attr("src", charurl + "&zoomQuotiety=" + zoomQuotiety);
				nui.get("#chart-dialog").show();
			}
		}

		function reloadPage(e) {
			// location.reload();
			var jdid = nui.get("jdid").getValue();
			nui.get('jzid').load("com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid);
			nui.get('jzid').select(0);
			nui.Cookie.set('jdid', nui.get('jdid').getValue());
			nui.Cookie.set('jzid', nui.get('jzid').getValue());
			nui.Cookie.set('jdname', nui.get('jdid').getText());
			nui.Cookie.set('jzname', nui.get('jzid').getText());
			reloadTab(e);
		}

		function reloadTab(e) {
			nui.Cookie.set('jzid', nui.get('jzid').getValue());
			nui.Cookie.set('jzname', nui.get('jzid').getText());
			var tabs = nui.get("mainTabs");
			var tabCount = tabs.getTabs();
			for (var i = 0; i < tabCount.length; i++) {
				tabs.reloadTab(tabs.getTab(i));
			}
			tabs.reloadTab();
		}

		function showWin(url) {
			var iWidth = 800; //弹出窗口的宽度; 
			var iHeight = 400; //弹出窗口的高度;
			//获得窗口的垂直位置 
			var iTop = (window.screen.availHeight - 30 - iHeight) / 2;
			//获得窗口的水平位置 
			var iLeft = (window.screen.availWidth - 10 - iWidth) / 2;
			charurl = url;
			var win = window.open(charurl, "child", "width=" + iWidth + "px,height=" + iHeight +
				"px,resizable=yes,location=no,scroll=no,status=no,top=" + iTop + ",left=" + iLeft);
		}

		function onBeforeOpen(e) {
			currentTab = tabs.getTabByEvent(e.htmlEvent);
			if (!currentTab) {
				e.cancel = true;
			}
		}
		///////////////////////////
		function closeTab() {
			tabs.removeTab(currentTab);
			/* currentNode.removeFromParent(); */
			/* parentNode.remove(currentNode) */
		}

		function closeAllBut() {
			tabs.removeAll(currentTab);
		}

		function closeAll() {
			tabs.removeAll();
		}

		function closeAllButFirst() {
			var but = [currentTab];
			but.push(tabs.getTab("待办任务"));
			tabs.removeAll(but);
		}
		function setpageflow(node){
			nui.Cookie.set('pageflow', node.menuname);
		}
		function reloadPoint(menuData){
			for (var i = 0; i < menuData.length; i++) {
					if (menuData[i].parentsid == syMenuid) {
						syArray.push(menuData[i]);
						if (menuData[i].menuname == "待办任务") {
							initTab = menuData[i];
						}
						if (menuData[i].funcaction) {
							setPoint(menuData[i]);
						}
	
					}
			}
		}
		/*点击顶部按钮菜单项收缩*/
		/* $("#toggle, .side-toggle").click(function () {
		        	
		            $('body').toggleClass('compact');
		            nui.layout();
		        }); */
	</script>


	<script type="text/javascript">

	</script>

</html>
