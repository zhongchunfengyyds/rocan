<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true" %>
<%@include file="/common/common.jsp"%>
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
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/singleemployeewidget.css" />
</head>
<body>
    <div class="modal-content modal-content-single-emp">
            <div class="form-group form-group-single-emp">
            	<input id="empId" type="hidden">
                <input id="emp" type="text"  class="form-control" onkeydown="onKeyDown()" onfocus="onFocus()" onblur="onBlur()" placeholder="输入人员ID/姓名/拼音查询"/>
            </div>
            <div class="select-people-box select-people-box-single-emp">
                <div id="listbox1" class="nui-listbox" textField="empName" valueField="empId" 
                     showCheckBox="false" multiSelect="false" dataField="data" onitemclick="onItemClick">
                </div>
            </div>
    </div>
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
    	var listbox1 = nui.get("listbox1");
    	var flag;
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
	    				$(".select-people-box").scrollTop((currentIndex-1) * 22);//滚动的高度
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
		    			$(".select-people-box").scrollTop((currentIndex-3) * 22);//滚动的高度
		    			listbox1.select(listbox1.getAt(currentIndex -1));
		    		}else{
		    			listbox1.select(listbox1.getAt(currentIndex));
		    		}
		    	}
			}//如果按了回车键
			else if(event.keyCode==13){
				var items = listbox1.getData();
	    		var targetItems = listbox1.getSelecteds();
	    		$("#emp").val(targetItems[0].empName);
	    		$("#empId").val(targetItems[0].empId);
	    		listbox1.removeItems(items);
	    		window.setTimeout(function() {
	    			$(".modal-content").find(".select-people-box").css("display","none");
				},200);
			}
    	}
    	//输入框获得焦点
    	function onFocus(){
    		$(".modal-content").find(".select-people-box").css("display","block");
    	}
    	//输入框失去焦点
    	function onBlur(){
    		window.setTimeout(function() {
    			$(".modal-content").find(".select-people-box").css("display","none");
			},200);
    	}
    	//监听输入框的值变化事件
	    $("#emp").bind('input propertychange',function(){
	    	if(flag){
	    		$(".modal-content").find(".select-people-box").css("display","block");
	    		window.clearTimeout(flag);
	    		flag = false;
	    	}
	    	var keyWord = $(this).val();
	    	if(keyWord.length >= 2){
    			flag = window.setTimeout(function() {selectEmpsByKeyWord(keyWord);},700);
	    	}else{
	    		var items = listbox1.getData();
	    		listbox1.removeItems(items);
	    	}
	    });
	    //查询结果列表的单击事件
	    function onItemClick(){
    		var items = listbox1.getData();
    		var targetItems = listbox1.getSelecteds();
    		$("#emp").val(targetItems[0].empName);
    		$("#empId").val(targetItems[0].empId);
    		listbox1.removeItems(items);
	    }
	    //根据关键字查询结果，只显示前100条记录
	    function selectEmpsByKeyWord(keyWord){
	    	var url,json;
			url = "com.cgn.components.coframe.widget.employee.selectEmpsByKeyWord.biz.ext";
			json = {"keyWord": keyWord};				
			nui.ajax({
				url:url,
				type:"post",
				dataType:"json",
				contentType:"text/json",
				data:json,
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
			});
		}
    </script>
</body>
</html>