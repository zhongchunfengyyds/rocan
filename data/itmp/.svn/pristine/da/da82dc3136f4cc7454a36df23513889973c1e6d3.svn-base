<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<!DOCTYPE html>
<html>
<!-- 
  - Author(s): xkl1112
  - Date: 2017-10-19 08:51:44
  - Description:
-->
<head>
<title>Title</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/cuc.css" />
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/apply.css" />
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
	<script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
</head>
<body>
	<button onclick="load()">加载</button>
		<button onclick="success()">成功</button>
		<button onclick="tip()">提示</button>
		<button onclick="err()">错误</button>
		<button onclick="makesure()">弹出框1</button>
		<button onclick="confirm()">弹出框2</button>

	<script type="text/javascript">
    	nui.parse();
    	function load(){
			new TipBox({type:'load',str:"加载中...",setTime:5000,callBack:function(){  
								    			
            }});
		}
		function success(){
			new TipBox({type:'success',str:"成功",setTime:5000,callBack:function(){  
            }});
		}
		function tip(){
			new TipBox({type:'tip',str:"提示",setTime:5000,callBack:function(){  
								    			
            }});
		}
		function err(){
			new TipBox({type:'error',str:"错误",setTime:5000,callBack:function(){  
								    			
            }});
		}
		function makesure(){
			new MakeSureBox({
				title:'标题1',
				str:"提示内容111",
				channel:"取消",
				edit:"确定",
				ok:function(){
					new TipBox({type:'success',str:"提交成功",setTime:2000,callBack:function(){  
            		}});
				}
			});
		}
		function confirm(){
			new ConfirmBox({
				title:'标题2',
				channel:"取消",
				edit:"确定",
				ok:function(){
					new TipBox({type:'success',str:"提交成功",setTime:2000,callBack:function(){  
            		}});
				}
			});
		}
    </script>
</body>
</html>