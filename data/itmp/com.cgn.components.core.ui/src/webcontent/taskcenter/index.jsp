<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>

<script type="text/javascript" src="<%=contextPath%>/coframe/tools/widget/jquery.ui.min.js"></script>
<script type="text/javascript" src="<%=contextPath%>/coframe/tools/menu/jquery.ui.mvcmenu.js"></script>
<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-07-27 09:12:07
  - Description: 任务中心首页
-->
<head>
<title><b:message key="module-name" /></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome">
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="shortcut icon" href="favicon.ico" />
<style type="text/css">
.position a,.options a {
	cursor: pointer;
}
.position .icon-new a span {
	background: url(../common/nui/themes/icons/new.gif) left 9px top 10px
		no-repeat;
}
.position .icon-task a span {
	background: url(../common/nui/themes/icons/node.png) left 9px top 10px
		no-repeat;
}
.statistics {
	margin-left: 5px;
	padding: 0 3px;
	font-size:12px;
	color: white;
	background-color: red;
	border-radius: 3px; /*50%;*/
	font-weight: bold;
}
body {
	background-color: #0069ac;
}
.side-bar{
padding-top:0px;
overflow-y:scroll;
overflow-x:hidden
}
.box{
top:0px;
}
</style>
</head>
<body>
	<div class="mainstay">
        <div class="side-left">
            <div class="side-bar">
                
            </div>
            <div class="fully" style="display: none;">
                <div class="scroll-none">
                    <ul class="">
                        <li>
                            <div class="btn-flex on">
                                <span class="fa fa-caret-left"></span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="box" style="padding-left: 190px">
            <div class="box-container">
                <div class="area">
                    <div class="bread">
                        <a href="javascript:;">首页</a><span>&nbsp;-&nbsp;</span> <a href="javascript:;" class="bread-ej">
                            任务中心</a><span>&nbsp;-&nbsp;</span> <a class="active" href="javascript:;">待办任务</a>
                    </div>
                    <iframe id="apply" name="apply" src="<%=request.getContextPath()%>/coframe/taskcenter/todolist.jsp" width="100%" height="100%"
                        frameborder="0" scrolling="yes" style="position: absolute; height: 100%; width: 100%;
                        overflow-y: scroll; z-index: 0; display: block;"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div class="tooltip  in" role="tooltip" id="tooltip978145" style="top: 5.5px; left: 172.422px;
        display: none;">
        <div class="tooltip-arrow" style="top: 50%;">
        </div>
        <div class="tooltip-inner">
        </div>
    </div>
<div id="ui-menu-content"></div>
	<script type="text/javascript">
	"use strict";
	  var ubaParames = {
            serviceUrl:'<%=com.eos.foundation.eoscommon.ConfigurationUtil.getUserConfigSingleValue("uba", "service","ubaService") %>',
            userId:"<%=com.eos.data.datacontext.DataContextManager.current().getMUODataContext().get("userObject/userId") %>",
            sysCode:'<%=com.eos.foundation.eoscommon.ConfigurationUtil.getUserConfigSingleValue("uba", "security","StatSysId") %>',
            onOff:'<%=com.eos.foundation.eoscommon.ConfigurationUtil.getUserConfigSingleValue("uba", "security","UBAOnOff") %>'
        };
        
	var cgnui = {
		addNavigationItem: function(text, cls, uri) {
			function goback2(e) {
				if(e.uri) {
					var $e = $(e).nextAll();
					if($e.length > 0) {
						cgnui.load(e.uri);
						$e.remove();
					}
				}
			}
			
			//$('<li class="index ' + (cls ? cls : '') + '"><a><span>' + text + '</span></a><b class="arrow"></b></li>').
			//	appendTo($("#positionbar")).
			//	bind("click", function() {
			////		goback2(this);
			//	}).
			//	bind("dblclick", function() {
			//		var prev = $(this).prev()[0];
			//		if(prev) {
			//			goback2(prev);
			//		}
			//	})[0].uri = uri;
		},
		removeLastNavigationItem: function() {
			$("#positionbar li:last").remove();
		},
		
		load: function(uri) {
			var url="";
			var reg=/(http|ftp|https):\/\/[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#])?/;
			if(reg.test(uri)) {
				url = uri;
			} else if(uri.indexOf("/") == 0){
				url = "<%=request.getContextPath()%>" + uri;
			} else {
				url = "<%=request.getContextPath()%>/" + uri;
			}
			//setCurrentUri(uri);
			nui.get("#panel").load(url);
		},
		
		syncStatisticsNums: function(option) {
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
	
	  $(".side-bar").mvcmenu({
                source: "com.cgn.components.coframe.framework.MenuManager.getModuleMenuList.biz.ext",
                rootUrl:"<%=request.getContextPath()%>",
                click:function (event) {
                    //var iframe = $("#" + event.data.target);
                    if(iframe) {
                        net01.iframe.dispose(iframe);//释放iframe资源
                        iframe.attr('src', event.data.url);
                    }
                    //记录UBA菜单行为
                   // net01.uba.Menu(ubaParames.serviceUrl,ubaParames.userId,ubaParames.sysCode,event.data.name,"",ubaParames.onOff);
                }
            });
	
	
	
	nui.OutlookTree.prototype.createNavBarTree = function(b) {
		this._destroyTrees();
		var f = this;
		if (!mini.isArray(b)) {
			b = [];
		}
		this.data = b;
		var a = [];
		for (var d = 0, c = this.data.length; d < c; d++) {
			var h = this.data[d];
			var g = {};
			g.title = h.text;
			g.iconCls = h.iconCls;
			a.push(g);
			g._children = h[this.nodesField];
		}
		this.setGroups(a);
		this.setActiveIndex(this.activeIndex);
		this._trees = [];
		for (var d = 0, c = this.groups.length; d < c; d++) {
			var g = this.groups[d];
			var e = this.getGroupBodyEl(g);
			var b = new mini.Tree();
			b.set({
				expandOnNodeClick : this.expandOnNodeClick,
				showTreeIcon : this.showTreeIcon,
				showArrow : this.showArrow,
				imgPath : this.imgPath,
				idField : this.idField,
				parentField : this.parentField,
				textField : this.textField,
				expandOnLoad : this.expandNodeOnLoad,
				style : "width:100%;height:100%;border:0;background:none",
				data : g._children,
				onbeforeload : function(i) {
					i.url = f.url;
				}
			});
			b.render(e);
			b.on("nodeclick", this.__OnNodeClick, this);
			b.on("nodeselect", this.__OnNodeSelect, this);
			b.on("nodemousedown", this.__OnNodeMouseDown, this);
			b.on("drawnode", this.__OnDrawNode, this);
			b.on("beforeexpand", this._handlerTree, this);
			b.on("beforecollapse", this._handlerTree, this);
			b.on("expand", this._handlerTree, this);
			b.on("collapse", this._handlerTree, this);
			b.on("beforeselect", this._handlerTree, this);
			this._trees.push(b);
			delete g._children;
			b._ownerGroup = g;
		}
		nui.OutlookTree.prototype.statistics = function(node) {
			if(node.numurl) {
				var me = this;
				$.ajax({
					url: node.numurl,
					success: function(data, textStatus) {
						me.setStatisticsText(node, data.num);
					}
				});
			}
		};
		nui.OutlookTree.prototype.setStatisticsText = function(node, text) {
			var tree = this._getOwnerTree(node);
			node._statistics_result = text;
			$(tree.getBodyEl()).find(".statistics#" + node._id).removeClass("icon-wait").text(text);
		}
	};

	$(function() {
		nui.parse();
		//var  _nav_tree = nui.get("#nav_tree");
		//节点选中时发生
		//_nav_tree.on("nodeselect", onMenuNodeSelect);
		//节点点击时发生,dafu 2017年4月7日
		//_nav_tree.on("nodeclick", onMenuNodeSelect);
		
// 		jup.uba.Login(ubaParames.serviceUrl,ubaParames.userId,ubaParames.sysCode,"",ubaParames.onOff);
		
		// 默认页面
		(function() {
			var def = null;
			var visit = "/<%=request.getParameter("visit")%>";
			//if(visit != "/null") {
			//	def = _nav_tree.findNodes(function(node) {
			//		return node.funcaction == visit;
			//	})[0];
			//} else {
			//	def = _nav_tree.findNodes(function(node) {
			//		return node.def == "T";
			//	})[0];
			//}
			//if(!def) {
			//	def = _nav_tree.getList()[0];
			//}
			//if(def) {
			//	_nav_tree.selectNode(def);
			//}
		})();
		
		function showPage(node) {
			var $pt = $("#positionbar");
			$pt.empty();
			
			var c = node;
			var nodes = [];
			while(c) {
				nodes.push(c);
				c = _nav_tree.findNodes(function(p) {
					return p.menuid == c.parentsid;
				})[0];
			}
			var p;
			while(p = nodes.pop()) {
				cgnui.addNavigationItem(p.text, null, p.funcaction);
			}
// 			jup.uba.Menu(ubaParames.serviceUrl,ubaParames.userId,ubaParames.sysCode,node.menuname,"",ubaParames.onOff);
	
			cgnui.load(node.funcaction);
		}
		
		function onMenuNodeSelect(e) {
			var item = e.node;
			if (item.funcaction) {
				showPage(item);
			}
		}
		
		

		/*
		 _nav_tree.on("drawnode", function(e) {
			var tree = e.sender;
			var node = e.node;
			// test
			// node.numurl = "com.cgn.components.coframe.taskcenter.TaskManager.getCC2meNoReadedNum.biz.ext";
			if(node._statistics_result) {
				e.nodeHtml = node[tree.textField] + "<span class='statistics' id='" + node._id + "'>" + node._statistics_result + "</span>";
			} else if(node.numurl) {
				e.nodeHtml = node[tree.textField] + "<span class='statistics icon-wait' id='" + node._id + "'></span>";
				tree.statistics(node);
			}
		});
		  */
	});
</script>
</body>
</html>