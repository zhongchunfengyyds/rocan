<%@page import="com.eos.data.datacontext.IUserObject"%>
<%@page import="com.eos.foundation.common.utils.StringUtil"%>
<%@page import="com.eos.foundation.eoscommon.ConfigurationUtil"%>
<%@page import="com.eos.foundation.eoscommon.BusinessDictUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<%
	String isadmin="false";
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
	<div class="bs-docs-section nui-fit">
		<div id="source-modal" class="modal fade in" style="display: block; padding-right: 0px;position:relative;width:100%;height:100%;">
		    <div class="modal-dialog" style="width:100%;height:100%;">
		        <div class="modal-content" style="width:100%;height:100%;">
		            <div class="modal-body" style="width:100%;height:100%;">
		                <div class="select-people-left" style="position:relative;width:40%;height:100%">
		                    <!-- <div class="detail-nav"> -->
	                        <ul id="tree1" class="nui-tree" style="width:100%;height:100%;" dataField="data"
					        	allowAlternating="false" url="com.cgn.components.coframe.widget.organization.selectOrganization.biz.ext" 
					      		showTreeIcon="true" textField="orgName" idField="orgId" parentField="parentOrgId" resultAsTree="false"  
					            expandOnLoad="true" onnodeclick="onNodeClick" expandOnDblClick="false"
					            showCheckBox="false" showFolderCheckBox="true" showExpandButtons="true"
					            autoCheckParent="false" checkRecursive="false" onbeforeload="onBeforeTreeLoad">
					        </ul>
		                    <!-- </div> -->
		                </div>
		                <div class="select-people-right" style="width:60%;height:100%;">
		                    <div class="form-group" style="width:100%;height:10%;">
		                        <input id="keyWord" type="text"  class="form-control" onkeydown="onKeyDown()" placeholder="输入人员ID/姓名查询/拼音"/>
		                    </div>
		                    <div class="select-people-box" style="width:100%;height:73%;">
		                        <ul id="leftSelect" class="select-list" style="width:40%;height:100%;" tabindex="0" onkeydown="onLeftKeyDown()">
		                            <li style="width:100%;height:100%;">
		                                <div id="listbox1" class="nui-listbox" style="width:100%;height:100%;border:0px;" textField="empName" valueField="empId" 
						                     showCheckBox="false" multiSelect="false" dataField="data" onitemclick="onLeftItemClick"
						                     onitemdblclick="leftDbClick">
						                </div>
		                            </li>
		                        </ul>
		                        <ul class="select-group" style="width:22%;height:100%;z-index:999;">
		                            <li style="width:100%;height:15%;">
		                                <a onclick="add();"><span class="fa fa-angle-right"></span></a>
		                            </li>
		                            <li style="width:100%;height:15%;display:none;">
		                                <a onclick="addAll();"><span class="fa fa-angle-double-right"></span></a>
		                            </li>
		                            <li style="width:100%;height:15%;display:none;">
		                                <a onclick="removeAll();"><span class="fa fa-angle-double-left"></span></a>
		                            </li>
		                            <li style="width:100%;height:15%;">
		                                <a onclick="remove();"><span class="fa fa-angle-left"></span></a>
		                            </li>
		                        </ul>
		                        <ul class="select-list" style="margin-left:20%;width:40%;height:100%;">
		                            <li style="width:100%;height:100%;">
		                            	<div id="listbox2" class="nui-listbox" style="width:100%;height:100%;border:0px;" textField="empName" valueField="empId"                     
	                    			 	showCheckBox="false" multiSelect="false" onitemclick="onRightItemClick" onitemdblclick="rightDbClick"> 
	                    			 	</div> 
		                            </li>
		                        </ul>
		                    </div>
		                    <div class="form-group" style="width:100%;height:10%">
		                        <input id="depMsg" type="text"  class="form-control" style="margin-top:17px;" readonly="readonly" placeholder="选择人员后显示所属组织信息"/> <!-- unselectable="on" -->
		                    </div>
		                    <div id="selectTip" style="display: none;color:red" >无法选择自己</div>
		                </div>
		            </div>
		        </div>
		   </div>
		</div>
	</div>
	<div class="nui-toolbar" style="text-align:center;padding-top:8px;padding-bottom:8px;" 
        borderStyle="border-left:0;border-bottom:0;border-right:0;">
        <a class="nui-button" style="width:60px;" onclick="onOk()">确定</a>
        <span style="display:inline-block;width:25px;"></span>
        <a class="nui-button" style="width:60px;" onclick="onCancel()">取消</a>
    </div>
	<!-- <div class="modal-backdrop fade in" style="display: block;"></div> -->
	<script type="text/javascript">
		if (!Function.prototype.bind) {   
	        Function.prototype.bind = function (oThis) {   
		        if (typeof this !== "function") {         
		        	throw new TypeError("Function.prototype.bind - what is trying to be bound is not callable");   
	        	}   
	        	var aArgs = Array.prototype.slice.call(arguments, 1),   
	        	fToBind = this,   
	        	fNOP = function () {},   
	        	fBound = function () {   
	        		return fToBind.apply(this instanceof fNOP && oThis   
	        		? this   
	        		: oThis,   
	        		aArgs.concat(Array.prototype.slice.call(arguments)));   
	        	};   
	        	fNOP.prototype = this.prototype;   
	        	fBound.prototype = new fNOP();   
	       		return fBound;   
	        };   
        }
    	nui.parse();
    	var showCheckBoxStr = getUrlParam("showCheckBox");//true是多选,false是单选，默认是false
    	var showCheckBox = (showCheckBoxStr && "true" == showCheckBoxStr) ? true : false;
    	var tree = nui.get("tree1");
    	var listbox1 = nui.get("listbox1");
    	var listbox2 = nui.get("listbox2");
    	var flag = false;
    	var len;
    	var empResult;
    	$(function(){
    		if(showCheckBox){//多选时显示批量操作按钮
    			$($(".fa-angle-double-right")[0].parentNode.parentNode).css("display","block");
    			$($(".fa-angle-double-left")[0].parentNode.parentNode).css("display","block");
    		}
    		//设置左边框的滚动条根据滚动长度实时加载数据
    		$("#listbox1 .mini-listbox-view").scroll(function(){
    			var scroHei = $("#listbox1 .mini-listbox-view").scrollTop();//滚动的高度
    			var listBoxContentHei = $("#listbox1 .mini-listbox-view")[0].scrollHeight;//
    			var listBoxWindowHei = $("#listbox1").height();//窗口的高度
    			var curCount =  listbox1.getCount();
    			if(len && curCount < len){
    				if(150 + scroHei > listBoxContentHei - listBoxWindowHei){
    					var items = new Array();
    					if(empResult){
    						var maxLen;
    						if(100+curCount >len){
    							maxLen = len;
    						}else{
    							maxLen = 100+curCount;
    						}
	    					for(var i = curCount; i < maxLen;i++){
	    						items.push(empResult[i]);
	    					}
	    				}
    					listbox1.addItems(items);
    				}
    			}
    		});
    	});
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
	        	orgId = "4285";
	        	orgSeq = "null";
	        }
	        params.orgId = orgId; //后台：request对象获取"orgId"
	        params.orgSeq = orgSeq;//后台：request对象获取"orgSeq"
	    }
	    function GetData() {
	        var items = listbox2.getData();
	        return items;
	    }
	    function SetData(data) {
	    	listbox2.loadData(data);
	    }
	    //监听输入框的键盘事件
	    function onKeyDown(event){
    		//兼容IE 
			event = event || window.event;
		    //如果按了down键			
		    if(event.keyCode==40){
		    	var currentSelect = listbox1.getSelecteds()[0];
		    	var count = listbox1.getCount();
		    	if(currentSelect){
		    		var currentIndex = listbox1.indexOf(currentSelect);
		    		listbox1.deselect(currentSelect);
		    		if(currentIndex == count-1){
		    			listbox1.select(listbox1.getAt(currentIndex));
		    		}else{
	    				$("#listbox1 .mini-listbox-view").scrollTop((currentIndex-1) * 22);//滚动的高度
		    			listbox1.select(listbox1.getAt(currentIndex + 1));
		    		}
		    	}else{
		    		listbox1.select(listbox1.getAt(0));
		    	}
			}//如果按了up键
			else if(event.keyCode==38){
				if(document.all){
					window.event.returnValue = false;
				}else{
					event.preventDefault();//阻止默认的事件
				}
				var currentSelect = listbox1.getSelecteds()[0];
				var count = listbox1.getCount();
		    	if(currentSelect){
		    		var currentIndex = listbox1.indexOf(currentSelect);
		    		listbox1.deselect(currentSelect);
		    		if(currentIndex > 0){
		    			$("#listbox1 .mini-listbox-view").scrollTop((currentIndex-3) * 22);//滚动的高度
		    			listbox1.select(listbox1.getAt(currentIndex -1));
		    		}else{
		    			listbox1.select(listbox1.getAt(currentIndex));
		    		}
		    	}
			}//如果按了回车键
			else if(event.keyCode==13){
		    	var items = listbox1.getSelecteds();
		    	var data = showCheckBox ? listbox2.getData() : [];//单选多选设置
		    	var resultItems = singelArray(items,data);
		    	var currentIndex = listbox1.indexOf(items[0]);
		    	var count = listbox1.getCount();
		    	listbox1.removeItems(items);
		    	//listbox2.removeItems(listbox2.getData());
		    	listbox2.addItems(resultItems);
		    	if(currentIndex < count - 1){
		    		listbox1.select(listbox1.getAt(currentIndex));
		    	}
			}
    	}
    	//监听左边框的键盘事件
    	function onLeftKeyDown(event){
    		//兼容IE 
			event = event || window.event;
		    //如果按了down键			
		    if(event.keyCode==40){
		    	var currentSelect = listbox1.getSelecteds()[0];
		    	var count = listbox1.getCount();
		    	if(currentSelect){
		    		var currentIndex = listbox1.indexOf(currentSelect);
		    		listbox1.deselect(currentSelect);
		    		if(currentIndex == count-1){
		    			listbox1.select(listbox1.getAt(currentIndex));
		    		}else{
	    				$("#listbox1 .mini-listbox-view").scrollTop((currentIndex-1) * 22);//滚动的高度
		    			listbox1.select(listbox1.getAt(currentIndex + 1));
		    		}
		    	}else{
		    		listbox1.select(listbox1.getAt(0));
		    	}
			}//如果按了up键
			else if(event.keyCode==38){
				if(document.all){
					window.event.returnValue = false;
				}else{
					event.preventDefault();//阻止默认的事件
				}
				var currentSelect = listbox1.getSelecteds()[0];
				var count = listbox1.getCount();
		    	if(currentSelect){
		    		var currentIndex = listbox1.indexOf(currentSelect);
		    		listbox1.deselect(currentSelect);
		    		if(currentIndex > 0){
		    			$("#listbox1 .mini-listbox-view").scrollTop((currentIndex-3) * 22);//滚动的高度
		    			listbox1.select(listbox1.getAt(currentIndex -1));
		    		}else{
		    			listbox1.select(listbox1.getAt(currentIndex));
		    		}
		    	}
			}//如果按了回车键
			else if(event.keyCode==13){
		    	var items = listbox1.getSelecteds();
		    	var userid = '<%=userid %>';
	    	for(var i=0;i<items.length;i++){
	    		if(items[i].empId==userid){
// 	    		 	nui.showTips({content: '不可选择自己',state: 'warning',x: 'center', y: 'center'});
	    		 	$("#selectTip").show();
	    			return;
	    		}
	    	}
	    	$("#selectTip").hide();
		    	var data = showCheckBox ? listbox2.getData() : [];//单选多选设置
		    	var resultItems = singelArray(items,data);
		    	var currentIndex = listbox1.indexOf(items[0]);
		    	var count = listbox1.getCount();
		    	listbox1.removeItems(items);
		    	listbox2.removeItems(listbox2.getData());
		    	listbox2.addItems(resultItems);
		    	if(currentIndex < count - 1){
		    		listbox1.select(listbox1.getAt(currentIndex));
		    	}
				$("#leftSelect").focus();
			}
    	}
    	//监听输入框的值变化事件
	    $("#keyWord").bind('input propertychange',function(){
	    	if(flag){
	    		window.clearTimeout(flag);
	    		flag = false;
	    	}
	    	var keyWord = $(this).val();
	    	if(keyWord.length >= 2){
	    		if(keyWord.toLowerCase().indexOf("p") == 0){
	    			if(keyWord.length >= 3){
	    				flag = window.setTimeout(function() {selectEmpsByKeyWord(keyWord);},700);
	    			}
	    		}else{
	    			flag = window.setTimeout(function() {selectEmpsByKeyWord(keyWord);},700);
	    		}
	    	}
	    });
	    //树节点点击事件
	    function onNodeClick(e) {
	        var tree = e.sender;
			var node = e.node;
			var flag = e.isLeaf;//true表示是叶子节点 
			var rootNode = tree.getRootNode();
			var seqArr = node.orgSeq.split(".");
	        if(flag || (rootNode.orgId != node.orgId && seqArr.length > 4)){
	        	var orgId = node.orgId;
	        	searchEmp(orgId);
	        }
	    }
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
	    //两个数组去重，得到一个不重复的新数组
	    function singelArray(arr1 ,arr2){
	    	if(arr1.length ==0 && arr2.length == 0){
	    		return arr1;
	    	}
	    	if(arr1.length == 0 && arr2.length > 0){
	    		return arr2;
	    	}
	    	if(arr1.length > 0 && arr2.length == 0){
	    		return arr1;
	    	}
			var tempArry = new Array();
			tempArry = arr1.concat(arr2);
			var resultArry = new Array();
			resultArry.push(tempArry[0]);
			for(var i=1;i<tempArry.length;i++){
				var flag = true;
				for(var j=0;j<resultArry.length;j++){
					if(tempArry[i]["empId"] == resultArry[j]["empId"]){
						flag = false;
					}
				}
				if(flag){
					resultArry.push(tempArry[i]);
				}
			}
			return resultArry;
		}
		//增加一个
    	function add() {
	    	var items = listbox1.getSelecteds();
	    	var userid = '<%=userid %>';
	    	for(var i=0;i<items.length;i++){
	    		if(items[i].empId==userid){
// 	    		 	nui.showTips({content: '不可选择自己',state: 'warning',x: 'center', y: 'center'});
	    		 	$("#selectTip").show();
	    			return;
	    		}
	    	}
	    	$("#selectTip").hide();
	    	if(!items || items.length == 0) return
	    	var data = showCheckBox ? listbox2.getData() : [];
	    	var resultItems = singelArray(items,data);
	    	listbox1.removeItems(items);
	    	//listbox2.removeItems(listbox2.getData());
	    	listbox2.addItems(resultItems);
	    }
	    //增加全部
	    function addAll() {        
	    	var items = listbox1.getData();
	    	var userid = '<%=userid %>';
	    	for(var i=0;i<items.length;i++){
	    		if(items[i].empId==userid){
// 	    		 	nui.showTips({content: '不可选择自己',state: 'warning',x: 'center', y: 'center'});
	    		 	$("#selectTip").show();
	    			return;
	    		}
	    	}
	    	$("#selectTip").hide();
	    	var data = listbox2.getData();
	    	var resultItems = singelArray(items,data);
	    	listbox1.removeItems(items);
	    	listbox2.removeItems(data);
	    	listbox2.addItems(resultItems);
	    }
	    //删除一个
	    function remove() {
	    	var items = listbox2.getSelecteds();
	    	var data = listbox1.getData();
	    	var resultItems = singelArray(items,data);
	    	listbox1.removeItems(data);
	    	listbox2.removeItems(items);
	    	listbox1.addItems(resultItems);
	    }
	    //删除全部
	    function removeAll() {
	    	var items = listbox2.getData();
	    	var data = listbox1.getData();
	    	var resultItems = singelArray(items,data);
	    	listbox1.removeItems(data);
	    	listbox2.removeItems(items);
	    	listbox1.addItems(resultItems);
	    }
	    //左边框的节点双击事件
	    function leftDbClick(){
	    	add();
	    }
	    //右边框的节点双击事件
	    function rightDbClick(){
	    	remove();
	    }
	    //点击树节点，根据部门ID查询部门及其子部门所有人员信息
	    function searchEmp(orgId){
	    	var loadingTip = new LoadingBox({str:"加载中...",left:"43%",top:"10%"});
	    	nui.ajax({
				url:"com.cgn.components.coframe.widget.employee.selectEmployee.biz.ext",
				type:"post",
				dataType:"json",
				contentType:"text/json",
				data:{"orgId": orgId},
				async:true,
				success:function(text){
					if(text.data && text.data.length > 0){
						empResult = text.data;
						len = text.data.length;
						var arr = new Array();
						if(len > 100){
							for (var i = 0; i < 100; i++) {
								arr.push(text.data[i]);
							}
							listbox1.loadData(arr);//加载树的列表结构数据
						}else{
							listbox1.loadData(text.data);//加载树的列表结构数据
						}
						loadingTip.destroy();
					}else{
						listbox1.loadData(text.data);
						loadingTip.destroy();
						new LoadingBox({str:"查询不到数据",left:"43%",top:"15%"});
					}
				}
			});
	    }
	    //左边框的单击事件
	    function onLeftItemClick(){
	    	var node = listbox1.getSelected();
	    	if(null != node){
	    		var parentOrgsText = selectParentOrgs(node.orgId);
	    		$("#depMsg").val(parentOrgsText);
	    	}else{
	    		$("#depMsg").val("");
	    	}
	    }
	    //右边框的单机事件
	    function onRightItemClick(){
	    	var node = listbox2.getSelected();
	    	if(null != node){
	    		var parentOrgsText = selectParentOrgs(node.orgId);
	    		$("#depMsg").val(parentOrgsText);
	    	}else{
	    		$("#depMsg").val("");
	    	}
	    }
	    //根据关键字查询人员
	    function selectEmpsByKeyWord(keyWord){
	    	var node = tree.getSelectedNode();
	    	var orgId,url,json;
	    	if(node){//树列表有节点选中的情况，在节点部门下根据关键字查询
    			orgId = node["orgId"];
    			url = "com.cgn.components.coframe.widget.employee.SelectEmpsByKeyWordInOrgId.biz.ext";
    			json = {"keyWord": keyWord,"orgId":orgId};
	    	}else{//树列表无节点选择的情况下，在所有部门下根据关键字查询
				url = "com.cgn.components.coframe.widget.employee.selectEmpsByKeyWord.biz.ext";
				json = {"keyWord": keyWord};				
			}
			var loadingTip = new LoadingBox({str:"加载中...",left:"43%",top:"10%"});
			nui.ajax({
				url:url,
				type:"post",
				dataType:"json",
				contentType:"text/json",
				data:json,
				async:true,
				success:function(text){
					if(text.data && text.data.length > 0){
						empResult = text.data;
						len = text.data.length;
						var arr = new Array();
						if(len > 100){
							for (var i = 0; i < 100; i++) {
								arr.push(text.data[i]);
							}
							listbox1.loadData(arr);//加载树的列表结构数据
						}else{
							listbox1.loadData(text.data);//加载树的列表结构数据
						}
						loadingTip.destroy();
					}else{
						listbox1.loadData(text.data);
						loadingTip.destroy();
						new LoadingBox({str:"查询不到数据",left:"43%",top:"15%"});
					}
				}
			});
			/* nui.ajax({
				url:"com.cgn.components.coframe.widget.employee.selectEmpsByKeyWord.biz.ext",
				type:"post",
				dataType:"json",
				contentType:"text/json",
				data:{"keyWord": keyWord},
				async:true,
				success:function(text){
					empResult = text.data;
					len = text.data.length;
					var arr = new Array();
					if(len > 100){
						for (var i = 0; i < 100; i++) {
							arr.push(text.data[i]);
						}
						listbox1.loadData(arr);//加载树的列表结构数据
					}else{
						listbox1.loadData(text.data);//加载树的列表结构数据
					}
				}
			});	 */
		}
		//根据部门ID查询本部门及其所有父部门的字符串
	    function selectParentOrgs(orgId){
	    	var result = "";
	    	nui.ajax({
				url:"com.cgn.components.coframe.widget.organization.selectParentOrgs.biz.ext",
				type:"post",
				dataType:"json",
				contentType:"text/json",
				data:{"orgId": orgId},
				async:false,
				success:function(text){
					result = text.data;
				}
			});
			return result;
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