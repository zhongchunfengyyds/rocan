<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
<html>
<!-- 
  - Author(s): PXMWZYP
  - Date: 2017-09-21 10:21:20
  - Description:
-->
<head>
<title>选择人员</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/cuc.css" />
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/apply.css" />
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/font-awesome.min.css" />
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/cuc/skin.css" />
	<!-- <script src="scripts/jquery.min.js"></script> -->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="<%= request.getContextPath() %>/scripts/html5shiv.min.js"></script>
      <script src="<%= request.getContextPath() %>/scripts/respond.min.js"></script>
    <![endif]-->
    <style>
    	.mini-panel {
	    	font-size: 14px;
		    font-weight: bold;
		    color: #000;
		    font-family: "microsoft yahei",arial;
		    overflow: hidden;
		    position: relative;
		    outline: none;
		}
		
		.mini-tools{
			/* background: none !important; */
			padding-top: 5px;
			padding-right: 5px;
		} 
		.mini-window .mini-panel-header {
		    background: #fafafa url("") repeat-x 0 0px;
		    height: 35px;
		}
		.mini-panel-header {
			border-bottom: 1px solid rgb(221, 221, 221);
		}
		.mini-panel .mini-panel-title {
		    padding-top: 6px;
		    float: left;
		    line-height: 16px;
		}
		.mini-panel-title:before {
		    display: block;
		    width: 4px;
		    height: 100%;
		    position: absolute;
		    top: 0;
		    left: 0;
		    background-color: #004a86;
		    z-index: 1000;
		}
		.mini-panel-border{
			border:1px solid rgba(0, 0, 0, 0.2);
		}
		.mini-panel{
			box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
		}
		
	</style>
</head>
<body>
	<button id="btnEdit1" class="nui-button" onClick="onButtonEdit">选择人员</button>
	<br>
	<div id="result" style="width:300px;height:200px;border:1px solid black;margin-top:15px;overflow: auto;" >
		
	</div>
	<div id="template" style="display: none;">
		<div class="emp">
			<span class="emp-id" style="display: none;"></span>
			<span class="emp-name" style="padding:3px 3px;"></span>
		</div>
	</div>
	<script type="text/javascript">
    	nui.parse();
    	var empData;
    	function onButtonEdit(e) {
	        var btnEdit = this;
	        var tpl,content= $("#result");     
	        nui.open({
	            url:"<%=request.getContextPath()%>/coframe/tools/employeewidget.jsp",
	            showMaxButton: false,//设置隐藏最大化窗口按钮
	            title: "选择人员",//窗口标题
	            width: 740,//窗口宽度
	            height: 540,//窗口高度
	            allowResize:true,//允许调整窗口大小
	            onload:function(){
	            	var iframe = this.getIFrameEl();
	            	if(empData){
	            		//调用弹出页面方法进行初始化
	            		iframe.contentWindow.SetData(empData);
	            	}
	            },
	            ondestroy: function (action) {
	                if (action == "ok") {
	                	$("#result").html("");
	                    var iframe = this.getIFrameEl();
	                    var data = iframe.contentWindow.GetData();
	                    data = nui.clone(data);
	                    empData = data;
	                    if (data) {
	                        //$("#result").html(data.orgname);//单选模式下获取选中节点的值
	                        for(var i=0;i<data.length;i++){
	                        	tpl = $($("#template").html()).appendTo(content); 
	                        	$(".emp-id",tpl).html(data[i].empId);
	                        	$(".emp-name",tpl).html(data[i].empName + "; ");
	                        }
	                    }
	                }
	            }
	        });            
    	}
    </script>
</body>
</html>