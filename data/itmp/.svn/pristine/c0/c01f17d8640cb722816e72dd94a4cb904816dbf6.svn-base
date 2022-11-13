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
<title>多附件导出</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/fontstyle.css"/>
<style type="text/css">
	.pad{
        padding: 0px 9px!important;
}
</style>
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
    	var searchParam = null;
    	var dicFieds = null;
    	var jdFied = null;
    	var jzFied = null;
    	var attachFied = null; // 附件字段
    	var defaultCheck = null;
        var sfSelect = null; //是否选择
        var selectPK = null;//主键
        var pkValues = "";//选择的主键
        var mode=null;//附件的方式ftp或本地
        var order = "";

    	function allCheck(){
    		$("input[name='fileds']").attr("checked",true);
    	}
    	
    	function noCheck(){
    		$("input[name='fileds']").attr("checked",false);
    	}
    	
    	//初始化事件
    	function setFormData(data){
			if(data != null){
				 
                //获取父页面的表格控件，判断是否勾选了数据   
                var rows = window.Owner.nui.get("datagrid1").getSelecteds();
                
                if (rows.length > 0) {
                    sfSelect = true;
                    selectPK = rows[0].uuid != undefined ? "uuid" : "id";
                    for(var i = 0 ; i < rows.length ; i++){
                        pkValues += rows[i][selectPK] + (i == rows.length -1 ? "" : ",");
                    }
                    searchParam = selectQueryParam( data.entityName, data.expTitle,data.queryKey,selectPK,pkValues);
                }else{
                    sfSelect = false;
                    searchParam = parseQueryParam(data.queryParam, data.queryKey, data.query,data.queryIndex, data.expTitle, data.vagueField);
                }
				 
				  //数据字典字段
				  if(data.dicFieds != null && data.dicFieds != "" && data.dicFieds != undefined){
				  		dicFieds = data.dicFieds;
				  }
				  //基地机组字段
				  if(data.jdFieds != null && data.jdFieds != "" && data.jdFieds != undefined){
				  		jdFied = data.jdFieds;
				  }
				   //基地机组字段
				  if(data.jzFieds != null && data.jzFieds != "" && data.jzFieds != undefined){
				  		jzFied = data.jzFieds;
				  }
				  
				  if(data.defaultCheck != null && data.defaultCheck != "" && data.defaultCheck != undefined){
				  		defaultCheck = ","+data.defaultCheck+",";
				  }
				  
				  if(data.order != null && data.order != "" && data.order != undefined){
				  		order = data.order;
				  }
				  
				  if(data.attachFied != null && data.attachFied != "" && data.attachFied != undefined){
				  		attachFied = data.attachFied;
				  }
				  
				  if(data.mode!= null && data.mode != "" && data.mode != undefined){
				  		mode = data.mode;
				  }

				  //根据实体名获取要导出的字段
                  var json = "{entityName:'"+data.entityName+"',filterField:'" + data.filterField + "'}";
				  $.ajax({
	                url:"com.cgn.itmp.basecommon.Common.getPropertyByEntityName.biz.ext",
	                type:'POST',
	                cache: false,
	                data:json,
	                contentType:'text/json',
	                success:function(text){
	                    
	                    var filedData = text.result;
	                    var html = "<tr>";
	                    if(filedData != null){
		                    for(var i = 0 ; i < filedData.length ; i++){
		                    	if(i != 0 && i% 4 == 0 ){
		                    		html +="</tr><tr><td>&nbsp;</td>";
		                    	}
		                    	if(i == 0 ){
		                    		html +="<td>&nbsp;</td>";
		                    	}
		                    	html+="<td style='vertical-align:middle;width:128px;float:left'>";
		                    	html+="<div style='float:left;width:20px;padding-top:3px;'><input type='checkbox' class='nui-checkbox' " + (defaultCheck != null ? (defaultCheck.indexOf(","+filedData[i].FieldName+",") >= 0 ? "checked" : "") : "") +
		                    	 " name='fileds' data-filed = '" +filedData[i].FieldName+ "' data-show = '" + filedData[i].ShowName + "' /></div><div style='float:left;width:100px;'>"+filedData[i].ShowName+"</div>";
		                    	html+="</td>";
		                    	
		                    }
		                    html +="</tr>";
		                    html +="<tr><td>&nbsp;</td><td colspan='4' align='center'>"+
		                     "<input type='button' class='btn btn-default btn-xs pad' onclick='exp()' style='padding:0px 9px!important' value='导出'>&nbsp;"+
		                     "<input type='button' class='btn btn-default btn-xs pad' onclick='allCheck()' style='padding:0px 9px!important' value='全选'>&nbsp;"+
		                     "<input type='button' class='btn btn-default btn-xs pad' onclick='noCheck()' style='padding:0px 9px!important' value='重置'>"+
		                     "<td></tr>";
		                  	$("#filedsT").append(html);
	                  	}
	                }
	                   
	         	 }); 
			}
    	}
    	
    	
        //导出数据
    	function exp(){
    	var urlstr="";
    		var fileds = "";
    	    $("input[name='fileds']:checked").each(function(){
    	    	fileds +=$(this).attr("data-filed")+"@"+$(this).attr("data-show")+"#";
    	    });
    	    
    	    if(fileds == ""){
    	    	nui.alert('请先选择要导出的列！','提示');
    	    	return;
    	    }
    	    
    	    if(fileds.indexOf("#equiaxedgraph")!=-1||
    	    fileds.indexOf("#sdmfile")!=-1||
    	    fileds.indexOf("#eomrfile")!=-1||
    	    fileds.indexOf("#eommfile")!=-1||
    	    fileds.indexOf("#euqipmentgraph")!=-1||
    	    fileds.indexOf("#certificate")!=-1||
    	    fileds.indexOf("#enclosure")!=-1||
    	    fileds.indexOf("#fj")!=-1||
    	    fileds.indexOf("#fodisimgfj")!=-1||
    	    fileds.indexOf("#equipmentdiagram")!=-1||
    	    fileds.indexOf("#flowchart")!=-1||
    	    fileds.indexOf("#equiaxialgraph")!=-1||
    	    fileds.indexOf("#equipmentdiagram")!=-1||
    	    fileds.indexOf("#thicknessmeasurementpointlayout")!=-1||
    	    fileds.indexOf("#thicknessmeasurementpointlayout")!=-1){
    	    	urlstr="com.cgn.itmp.basecommon.Common.expExcelByFiledandFtpAttach.biz.ext";//
    	    }else{
    	    	urlstr="com.cgn.itmp.basecommon.Common.expExcelByFiled.biz.ext";
    	    }
    	     
            var json = nui.encode({fileds:fileds,queryParam:searchParam,dicFieds:dicFieds,jdFied:jdFied,jzFied:jzFied,order:order,attachFied:attachFied,mode:mode});
            var message = nui.loading("正在下载,请稍后...",'提示');
            
            
            nui.ajax({
                url: urlstr,
                type: 'POST',
                data: json,
                success: function (text) {
                     nui.hideMessageBox(message);
                     window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + text.fileName.replace("\\", "/").split("/")[1] + "&projectPath=temp&loadFileName=" + text.fileName.replace("\\", "/").split("/")[1]);
//                      var elemIF = document.createElement("iframe");
<%--                      elemIF.src = "<%=request.getContextPath()%>/"+text.fileName; --%>
//                      elemIF.style.display = "none";
//                      document.body.appendChild(elemIF);
                     nui.alert('下载成功','提示',function(){
                        CloseWindow("saveSuccess");
                     });
                    // nui.hideMessageBox(message);
					// var form = document.getElementById("downloadFile");
					// form.action = "com.cgn.itmp.basecommon.exportExcelCustomTitle.flow?downFile=" + encodeURI(text.fileName);
					// form.submit();
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    nui.hideMessageBox(message);
                    nui.alert(jqXHR.responseText);
                }
            });

    	
    	}
    	
    	
    	//解析页面传入的查询条件
    	function parseQueryParam(queryParam,queryKey,query,queryIndex,title,vFields){
    	
    		 var result = {}; var search = []; 
    		 result.entity = queryParam[queryKey+'/_entity'];
    		 result.title = title;
    		 var addIndex = false;
			 if(queryIndex != null && queryIndex != undefined && queryIndex.length > 0){
				addIndex = true;
			 }

    		 var vagueFieldNum = 1 ;
    		 for(var i = 0 ; i < query.length ; i++ ){
    		 	var temp = {};
    		 	var temp2 = {};
    		 	var sfVagueField  =  false ;
    		 	if(vFields != "" && vFields != null && vFields != undefined){
    		 		sfVagueField = vFields.indexOf(query[i]) >= 0 ? true : false;
    		 	} 
    		 	temp.queryK   = query[i]; //检索字段名
    		 	temp2.queryK  = query[i]; //检索字段名
    		 	var queryKeyN = queryKey;
				if(sfVagueField){
					queryKeyN = queryKey+'/_or[' + vagueFieldNum + ']';
					temp.or = vagueFieldNum;
					temp2.or = vagueFieldNum;	
				}

    		 	temp.queryV   = queryParam[queryKeyN+'/_expr['+ (addIndex ? queryIndex[i] : (parseInt(i)+1) ) +']/'+query[i]]; //检索字段名
    		 	temp.op       = queryParam[queryKeyN+'/_expr['+ (addIndex ? queryIndex[i] : (parseInt(i)+1) ) +']/_op'];       //检索类型
    		 	temp.likeRule = queryParam[queryKeyN+'/_expr['+ (addIndex ? queryIndex[i] : (parseInt(i)+1) ) +']/_likeRule']; //模糊匹配类型	
    		 	temp.index    = i+1;		
    		 	search.push(temp);
    		 	
    		 	if(sfVagueField){
					temp2.queryV   = queryParam[queryKeyN+'/_expr['+(parseInt(query.length)+vagueFieldNum)+']/'+query[i]]; //检索字段名
    		 		temp2.op       = queryParam[queryKeyN+'/_expr['+(parseInt(query.length)+vagueFieldNum)+']/_op'];       //检索类型
	    		 	temp2.likeRule = queryParam[queryKeyN+'/_expr['+(parseInt(query.length)+vagueFieldNum)+']/_likeRule']; //模糊匹配类型	
	    		 	temp2.index    = query.length+vagueFieldNum;
					search.push(temp2);
					vagueFieldNum++;
				}
    		 }
    		 result.searchContext = search;
    		return result ;
    	}


        //根据父页面勾选项组装查询条件
        function selectQueryParam(entityName,title,queryKey,selectPK,pkValues){
            var result = {};
            var search = [];
            result.entity = entityName;
            result.title = title;
            var temp = {};
            temp.queryK = selectPK;//检索字段名
            temp.queryV = pkValues;//字段值
            temp.op = 'in';       //检索类型
            temp.index = 1;
            search.push(temp);
            result.searchContext = search;
            return result;
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

