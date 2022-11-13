<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
<%@include file="../dict/common.jsp"%>
<!DOCTYPE html>
<html>
<!-- 
  - Author(s): PXMWZYP
  - Date: 2017-10-10 08:57:48
  - Description:
-->
<head>
	<title>Title</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/cuc.css" />
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/apply.css" />
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/organizationwidget.css" />
	<script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
	<!-- <script src="scripts/jquery.min.js"></script> -->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="<%= request.getContextPath() %>/scripts/html5shiv.min.js"></script>
      <script src="<%= request.getContextPath() %>/scripts/respond.min.js"></script>
    <![endif]-->
    <style>
		
	</style>
</head>
<body>
	<div class="nui-toolbar" style="text-align:center;line-height:30px;" 
        borderStyle="border-left:0;border-top:0;border-right:0;">
          <!-- <label >部门名称：</label> -->
          <input id="key" class="form-control" style="display:inline-block;width:250px;height: 25px;padding: 5px 10px;font-size: 12px;line-height: 1.5;border-radius: 3px;" onkeydown="onKeyEnter()" placeholder="输入部门名称/编码查询"/>
          <a class="nui-button" style="width:60px;" onclick="searchByKeyWord()">查询</a>
    </div>
    <div class="nui-fit">
	    <ul id="tree1" class="nui-tree" style="width:100%;height:100%;" dataField="data"
	    	allowAlternating="false" url="com.cgn.components.coframe.widget.organization.selectOrganization.biz.ext" 
	  		showTreeIcon="true" textField="orgName" idField="orgId" parentField="parentOrgId" resultAsTree="false"  
	        expandOnLoad="true" expandOnDblClick="false"
	        showCheckBox="true" showFolderCheckBox="true" showExpandButtons="true"
	        autoCheckParent="false" checkRecursive="false" onbeforeload="onBeforeTreeLoad">
	    </ul>
	</div>
	<div class="nui-toolbar" style="text-align:center;padding-top:8px;padding-bottom:8px;" 
        borderStyle="border-left:0;border-bottom:0;border-right:0;">
        <a class="nui-button" style="width:60px;" onclick="onOk()">确定</a>
        <span style="display:inline-block;width:25px;"></span>
        <a class="nui-button" style="width:60px;" onclick="onCancel()">取消</a>
    </div>
	<script type="text/javascript">
		var showCheckBox = getUrlParam("showCheckBox");
		var initOrgId = "4285";//中广核集团
		$("#tree1").attr("showCheckBox",showCheckBox);
    	nui.parse();
    	var tree = nui.get("tree1");
    	var pOrgs;
    	//初始化树
    	function onBeforeTreeLoad(e) {
	        var tree = e.sender;    //树控件
	        var node = e.node;      //当前节点
	        var params = e.params;  //参数对象
	        var orgId;
	        var orgSeq;
	        if(node.orgId){
	        	orgId = node.orgId;
	        	orgSeq = node.orgSeq;
	        }else{
	        	orgId = initOrgId;
	        	orgSeq = "null";
	        }
	        params.orgId = orgId; //后台：request对象获取"orgId"
	        params.orgSeq = orgSeq;//后台：request对象获取"orgSeq"
	    }
	    function GetData() {
	    	var node;
	    	if(showCheckBox == "true"){
	    		node = tree.getCheckedNodes();//多选模式下时获取选中节点
	    	}else if(showCheckBox == "false"){
	    		node = tree.getSelectedNode();//单选模式下时获取选中节点
	    	}
        	return node;
	    }
	    //根据关键字搜索
	    function searchByKeyWord() {
	        var key = $("#key").val();
	        if(key == ""){
	        	var json = {};
	        	json["orgId"] = initOrgId;
	        	json["orgSeq"] = "null";
	        	var loadingTip = new LoadingBox({str:"加载中....",left:"40%",top:"10%"});
	        	nui.ajax({
					url:"com.cgn.components.coframe.widget.organization.selectOrganization.biz.ext",
					type:"post",
					dataType:"json",
					contentType:"text/json",
					data:json,
					async:true,
					success:function(text){
						if(text.data){
							tree.loadList(text.data,"orgId","parentOrgId");//加载树的列表结构数据
							loadingTip.destroy();
							/* tree.setValue(["4287","604734","608746"]);//设置默认选择的部门
							tree.expandPath("608746");//展开指定的节点
							tree.expandPath("604734");//展开指定的节点 */
						}else{
							tree.loadList({},"orgId","parentOrgId");//加载树的列表结构数据
							loadingTip.destroy();
							new LoadingBox({str:"查询不到数据",left:"40%",top:"15%"});
						}
					}
				});
	        }else{
		        if(key.length < 2){
		        	alert("至少输入两个关键字！");
		        	return;
		        }
	            key = key.toLowerCase();
	            var loadingTip = new LoadingBox({str:"加载中....",left:"40%",top:"10%"});
	            nui.ajax({
					url:"com.cgn.components.coframe.widget.organization.selectOrgsByKeyWord.biz.ext",
					type:"post",
					dataType:"json",
					contentType:"text/json",
					data:{"orgName": key},
					async:true,
					success:function(text){
						if(text.data){
							tree.loadList(text.data,"orgId","parentOrgId");//加载树的列表结构数据
							loadingTip.destroy();
						}else{
							tree.loadList({},"orgId","parentOrgId");//加载树的列表结构数据
							loadingTip.destroy();
							new LoadingBox({str:"查询不到数据",left:"40%",top:"15%"});
						}
					}
				});
	        }
	        /* nui.hideMessageBox(tipId); */
	    }
	    //回车事件
	    function onKeyEnter(event) {
	    	//兼容IE 
			event = event || window.event;
			if(event.keyCode==13){
	        	searchByKeyWord();
	        }
	    }
	    /* function onNodeDblClick(e) {
	        onOk();
	    } */
	    function CloseWindow(action) {
	        if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
	        else window.close();
	    }
	    function onOk() {
	        CloseWindow("ok");
	    }
	    function onCancel() {
	        CloseWindow("cancel");
	    }
	    //获取url中的参数
		function getUrlParam (name) {
		     var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
		     var r = window.location.search.substr(1).match(reg);
		     if (r!= null) {
		        return decodeURI(r[2]);
		     }else{
		        return null;
		     }
		}
    </script>
</body>
</html>