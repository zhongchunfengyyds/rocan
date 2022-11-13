<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): xuzhikang
  - Date: 2019-01-21 14:37:28
  - Description:
-->
<head>
<title>导出</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/fontstyle.css"/>
</head>
<body>
	<table id="filedsT">
	
	</table>
	
<div style="display:none;">
        <form id="downloadFile" method="post">
        </form>
 </div>

	<script type="text/javascript">
    	nui.parse();
    	var defaultCheck = null;
    	var entityName = null;
    	var processinstid = null;
    	var dirpath = null;
    	var ishyh = null;
    	var base = getCookie('jdid');
    	var crew = getCookie('jzid');
    	function allCheck2(){
    		
    			  $("input[name='fileds']").attr("checked",true);
    		
    	}
    	
    	function noCheck2(){
    		
    			  $("input[name='fileds']").attr("checked",false);
    		
    	}
    	
    	
    	function setFormData(data){
    		entityName = data.entityName;
    		processinstid = data.processinstid;
    		dirpath = data.dirpath;
    		ishyh = data.ishyh;
    		var html = "<tr>";
			if(data != null){
				var filedData = data.filedName;
			    if(filedData != null){
                    for(var i = 0 ; i < filedData.length ; i++){
                    	if(i != 0 && i% 2 == 0 ){
                    		html +="</tr><tr><td>&nbsp;</td>";
                    	}
                    	if(i == 0 ){
                    		html +="<td>&nbsp;</td>";
                    	}
                    	html+="<td>";
                    	html+="<input type='checkbox' class='nui-checkbox' " + (defaultCheck != null ? (defaultCheck.indexOf(","+filedData[i].FieldName+",") >= 0 ? "checked" : "") : "") +
                    	 " name='fileds' data-filed = '" +filedData[i]+ "' data-show = '" + filedData[i] + "' />"+filedData[i];
                    	html+="</td>";	
                    }
                    html +="</tr>";
                    html +="<tr><td>&nbsp;</td><td colspan='4' align='center'>"+
                     "<input type='button' class='btn btn-default btn-xs' onclick='exp()' value='导出'>&nbsp;"+
                     "<input type='button' class='btn btn-default btn-xs' onclick='allCheck2()' value='全选'>&nbsp;"+
                     "<input type='button' class='btn btn-default btn-xs' onclick='noCheck2()' value='重置'>"+
                     "<td></tr>";
                  	$("#filedsT").append(html);
              	}
			}
    	}
    	
    	
    	function exp(){
    		var fileds = "";
    	    $("input[name='fileds']:checked").each(function(){
    	    	fileds +=$(this).attr("data-filed")+"#";
    	    });
    	    if(fileds == ""){
    	    	nui.alert('请先选择要导出的列！','提示');
    	    	return;
    	    }
    	       var message = nui.loading("正在下载,请稍后...",'提示');
    	    var json = nui.encode({dirpath:dirpath,outName:fileds,entityName:entityName,processinstid:processinstid,ishyh:ishyh,base:base,crew:crew});
    	    $.ajax({
	                url:"com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.outNDDataInforMation.biz.ext",
	                type:'POST',
	                cache: false,
	                data:json,
					 contentType:'text/json',
	                success:function(text){
	                	
	                		var fieldName = text.fieldName;
	                		  nui.hideMessageBox(message);
	                		  window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + fieldName.replace("\\", "/").split("/")[1] + "&projectPath=temp&loadFileName=" + fieldName.replace("\\", "/").split("/")[1]);
// 		             				var elemIF = document.createElement("iframe");   
<%-- 						            elemIF.src = "<%=request.getContextPath()%>/"+fieldName; --%>
// 						            elemIF.style.display = "none";   
// 						            document.body.appendChild(elemIF);  
						            nui.alert('下载成功','提示',function(){
						            	 CloseWindow("saveSuccess");  
						            
						            });
	              }
	                   
	        }); 
    	}
    	
        
        //关闭窗口
        function CloseWindow(action) {
        	if (window.CloseOwnerWindow)
            return window.CloseOwnerWindow(action);
            else window.close();
        }
    	 
    </script>
</body>
</html>