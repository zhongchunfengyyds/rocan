<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): Administrator
  - Date: 2019-11-05 10:59:46
  - Description:数据统计与分析
-->
<head>
<title>役检结果数据管理 - 数据统计与分析</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<style type="text/css">
html,body{
	height: 93%;
}
.searchPanel {
	margin: 5px;
	height: 8%;
	padding-left: 5px;
	border: 1px solid #CCCCCC;
	padding-top: 10px;
}

.leftArea {
	width: 40%;
	float: left;
	margin-top: 5px;
}
.tablePanel{
	margin: 5px;
	height: 100%;
	border: 1px solid #CCCCCC;
	overflow: hidden;
}
.tablePanel table
        {
            border-collapse: collapse;
            border: none;
            width: 100%;
            text-align: center;
            table-layout:fixed;
            background-color: #00A1E9;
            color: #fff;
        }
      .tablePanel table td
        {
            border: solid #FFF 1px;
            word-wrap:break-word;
        }
        .leftTD{
        	width:100px;
        }
        .resultTD{
        	background-color: #fff;
        	color: #000;
        	border: solid #cccccc 1px!important;
        }
</style>
</head>
<body>
	<div class="searchPanel">
		<div class="leftArea">
			<input class="nui-treeselect" style="width: 90%" id="tree"
				textField="text" valueField="id" multiSelect="true"
				onbeforenodecheck="onbeforenodecheck" parentField="pid"
				labelField="true" label="设备目录树：" />
		</div>
		<div class="leftArea">
			<input class="nui-combobox" style="width: 90%" id="dx"
				textField="name" url="" valueField="id" multiSelect="true"
				dataField="jsonObject" labelField="true" label="请选择大修轮次：" />
		</div>
		<div style="width: 20%; float: left;margin-top: 5px;">
			<a class="nui-button" onclick="dataStatistical()"> 数据统计 </a>
			<a class="nui-button" id="excelOut" onclick="tableToExcel('analyTable')"><span>导出</span></a>
		</div>
	</div>
	<div class="tablePanel">
		<div style="height:5%;background-color: #cccccc;padding-left: 5px">
			<b>统计结果</b>
		</div>
		<div style="height:95%; overflow: auto;">
			<table id="analyTable">
			</table>
		</div>
	</div>

	<script type="text/javascript">
		nui.parse();
		var rootId = "";
		
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		nui.get("dx").load("com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagementbiz.getnumbyoverhaulsequence.biz.ext?base="
								+ jdid+"&crew="+jzid);
		showtree();
		function showtree(){
		var json=nui.encode({base:jdid,crew:jzid});
		$.ajax({
					url : "com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagementbiz.getequipmenttree.biz.ext?base=" + jdid+"&crew="+jzid,
// 					url : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutreebiz.gettree.biz.ext",
					type : 'POST',
					data : json,
					cache : false,
					contentType : 'text/json',
					success : function(treeData) {
						let tree = nui.get("tree");
						tree.loadList(treeData.treeData,'id','pid');
					}
				});
			}
			
		function onbeforenodecheck(e) {
		
			if(e.node.text == '暂无检查方法'){
				e.cancel = true;
				return;
			}
			var nodesArr = findAllParent(e.node,e.tree.data);
			var rootNode = nodesArr[nodesArr.length-1];
			var checkNodes = nui.get("tree").getCheckedNodes (false );
			if(checkNodes.length == 1&&e.checked == true){
				rootId = "";
			}else if(checkNodes == 0){
				rootId = rootNode.id;
			}
			if( rootId!="" && rootNode.id != rootId){
				e.cancel = true;
				//nui.alert("");
				mini.showTips({
		            content: "请选择同一设备下的检查方法！",
		            state: 'danger',
		            x: 'center',
		            y: 'center',
		            timeout: 3000
		        });
				//nui.get("tree").setValue("");
				return;
			}
        }
        
        var parentNodes=[],index = 0;
        function findAllParent(node, tree){
        if(!node || typeof(node.pid) == "undefined"){
		        return;
		    }
		    findParent(node, parentNodes, tree);
		    let parntNode = parentNodes[index];
		    findAllParent(parntNode, tree, parentNodes, ++index);
		    return parentNodes;
        }
		 
		function findParent(node, parentNodes, tree){
		    for(var i=0; i< tree.length; i++){
		        let item = tree[i];
		        if(item.id === node.pid){
		            parentNodes.push(item);
		            return;
		        }
		        if(item.children && item.children.length >0){
		            findParent(node,parentNodes, item.children)
		        }
		    }
		}
        
        var resData;
		//统计分析数据查询						
		function dataStatistical() {
			
			var checkNodes = nui.get("tree").getCheckedNodes (false );
			var dxlc = nui.get("dx").value;
			if(checkNodes.length == 0){
				nui.alert("请选择设备节点！");
				return;
			}
			if(dxlc == ""){
				nui.alert("请选择大修轮次！");
				return;
			}
			var treeData = nui.get("tree").data;
			var equipmentname = (findAllParent(checkNodes[0],treeData)[2]).text;
			var componentname = [];
			var checklocation = [];
			var inspectionmethod = [];
			
			//获取设备名称，根节点名称
			for(var i = 0;i< checkNodes.length;i++){
				parentNodes=[],index = 0;
				let nodesArr = findAllParent(checkNodes[i],nui.get("tree").data);
				inspectionmethod.push(checkNodes[i].text);
				checklocation.push(nodesArr[0].text);
				componentname.push(nodesArr[1].text);
			}
			
			componentname = distinct(componentname);
			checklocation = distinct(checklocation);
			inspectionmethod = distinct(inspectionmethod);
			
			let d = {};
			d.equipmentname = equipmentname;
			d.componentname = componentname.toString();
			d.checklocation = checklocation.toString();
			d.inspectionmethod = inspectionmethod.toString();
			d.dxlc = dxlc;
			mini.mask({el: document.body,cls: 'mini-mask-loading',html: '加载中...'});
			$.ajax({
					url : "com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagementbiz.getcheckedresults.biz.ext",
					type : 'POST',
					data : nui.encode({obj: d, base: jdid,crew: jzid}),
					cache : false,
					contentType : 'text/json',
					success : function(res) {
						var table = $("#analyTable");
						table.html("");
						if(res.result.length == 0){
						 	mini.unmask(document.body);
							nui.alert("未找到对应的记录！");
							return;
						}
						
						let data = res.result;
						
						resData = data;
						let comTab = "";
						let locationTab = "";
						let methodTad ="";
						let dxTab = "";
						let resultTab = "";
						let resArr = [];
						let col = [];
						for(var i = 0;i < data.length;i++){
							if(!(i > 0 && data[i].componentname == data[i-1].componentname)){
								comTab += "<td colspan='"+getColspan("componentname",data[i].componentname,data)+"'>"+data[i].componentname+"</td>";
							}
							
							if(!(i > 0 && data[i].componentname == data[i-1].componentname &&data[i].checklocation == data[i-1].checklocation)){
								locationTab += "<td colspan='"+getColspan("checklocation",data[i].checklocation,data)+"'>"+data[i].checklocation+"</td>";
							}
							
							if(!(i > 0 && data[i].checklocation == data[i-1].checklocation &&data[i].inspectionmethod == data[i-1].inspectionmethod)){
								methodTad += "<td>"+data[i].inspectionmethod+"</td>";
								let r = {};
								r.overhaulsequence = data[i].overhaulsequence;
								r.inspectionmethod = data[i].inspectionmethod + '/' + data[i].checklocation+'/'+data[i].componentname;
								r.examinationresult = data[i].examinationresult;
								resArr.push(r);
								col.push(data[i].inspectionmethod + '/' + data[i].checklocation+'/'+data[i].componentname);
							}else{
								let r = {};
								r.overhaulsequence = data[i].overhaulsequence;
								r.inspectionmethod = data[i].inspectionmethod + '/' + data[i].checklocation+'/'+data[i].componentname;
								r.examinationresult = data[i].examinationresult;
								resArr.push(r);
								col.push(data[i].inspectionmethod + '/' + data[i].checklocation+'/'+data[i].componentname);
							}
						}			
						
						col = distinct(col);
						let dxlcValue = (nui.get("dx").value).split(",");
						for(var j = 0;j < dxlcValue.length; j++){
							resultTab +="<tr><td>"+dxlcValue[j]+"</td>";
							for(var i = 0;i< col.length;i++){
								let res = getRes(dxlcValue[j],col[i],resArr);
								if(res!= ""){
									resultTab +="<td class='resultTD'>"+res+"</td>";
								}else{
									resultTab +="<td class='resultTD'></td>";
								}
							}
							
							resultTab +="</tr>";
						}
						
						table.append("<tr><td class='leftTD'>设备</td><td colspan="+col.length+">"+res.result[0].equipmentname+"</td></tr>"
									+"<tr><td class='leftTD'>部件</td>"+comTab+"</tr>"
									+"<tr><td class='leftTD'>被检部位</td>"+locationTab+"</tr>"
									+"<tr><td class='leftTD'>检查方法</td>"+methodTad+"</tr>"
									+resultTab);
									
							mini.unmask(document.body);
							//end
						}
				});
		}
		
		function getColspan(column,name,arr){
			let res = [];
			let r = [];
			for(var i = 0;i < arr.length;i++){
				if(column=="componentname" && name == arr[i].componentname){
					res.push(arr[i].inspectionmethod);
					r.push(arr[i].checklocation+'+'+arr[i].inspectionmethod);
				}
				if(column=="checklocation" && name == arr[i].checklocation){
					res.push(arr[i].inspectionmethod);
				}
			}
			return (column == "checklocation")?distinct(res).length :((distinct(res).length - distinct(r).length) > 0?distinct(res).length: distinct(r).length);
		}
		
		function getRes(row,col,arr){
			let res = "";
			for(var i = 0;i< arr.length;i++){
				if(row == arr[i].overhaulsequence && col == arr[i].inspectionmethod){
					res = arr[i].examinationresult;
				}
			}
			return  res;
		}
		
		function distinct(array){
			var temp = []; //一个新的临时数组
		    for(var i = 0; i < array.length; i++){
		        if(temp.indexOf(array[i]) == -1){
		            temp.push(array[i]);
		        }
		    }
		 return temp;
		}
		
		//导出
	 //base64转码
    var base64 = function (s) {
        return window.btoa(unescape(encodeURIComponent(s)));
    };
    //替换table数据和worksheet名字
    var format = function (s, c) {
        return s.replace(/{(\w+)}/g,
            function (m, p) {
                return c[p];
            });
    }
    
    
    
    function tableToExcel(tableid) {
    
    if(typeof(resData) == "undefined"){
    	return null;
    }
    
    var row = $("#analyTable").find("tr");
    var tableData = [];
    for(var i = 0;i< row.length;i++){
    	var cells = row[i].cells;
    	var arr = [];
    	for(var j = 0;j < cells.length;j++){
    		var item = {};
    		item.text = cells[j].innerHTML;
    		item.colspan =cells[j].getAttribute("colspan")==null?"0":cells[j].getAttribute("colspan");
    		arr.push(item);
    		if(item.colspan > 1){
    			for(var k = 0; k < item.colspan-1; k++){
	    			var items = {};
		    		items.text = cells[j].innerHTML;
		    		items.colspan = "1";
	    			arr.push(items);
    			}
    		}
    	}
    	tableData.push(arr);
    }
    
    nui.ajax({
                url: 'com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagementbiz.exportExcel.biz.ext',
                type: 'POST',
                data: nui.encode({str:nui.encode(tableData)}),
                success: function (text) {
                window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + text.filename.replace("\\", "/").split("/")[1] + "&projectPath=temp&loadFileName=" + text.filename.replace("\\", "/").split("/")[1]);
//                      var elemIF = document.createElement("iframe");
<%--                      elemIF.src = "<%=request.getContextPath()%>/"+text.filename; --%>
//                      elemIF.style.display = "none";
//                      document.body.appendChild(elemIF);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    nui.hideMessageBox(message);
                    nui.alert(jqXHR.responseText);
                }
            });
    
    
    
      /*   var uri = 'data:application/vnd.ms-excel;base64,';
        var template = '<html xmlns:o="urn:schemas-microsoft-com:office:office"'
       				 +'"xmlns:x="urn:schemas-microsoft-com:office:excel"' +
            'xmlns="http://www.w3.org/TR/REC-html40">'+
            '<head><meta charset="UTF-8">'+
            '<!--[if gte mso 9]>'+
            '<xml>'+
            '<x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet>'
            + '<x:Name>{worksheet}</x:Name>'+
            '<x:WorksheetOptions>'+
            '<x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets>'
            + '</x:ExcelWorkbook></xml><![endif]-->' +
            ' <style type="text/css">' +
            'table {'+
	           ' border-collapse: collapse;'+
	           ' border: none;'+
	           ' width: 100%;'+
	           ' text-align: center;'+
	           ' table-layout:fixed;'+
               ' color: #fff;'+
       		 '}'+
            'table td {' +
	         	' word-wrap:break-word;'+
	         	' text-align: center;background-color: #00A1E9;'+
            '}' +
          	'.leftTD{'+
	        	' width:100px;'+
	       	'}'+
			'.resultTD{'+
	        	'background-color: #fff;'+
	        	'color: #000;'+
	       		' } '+
	          '</style>' +
            '</head><body ><table border="1" rull="all">{table}</table></body></html>';
            
        if (!tableid.nodeType) tableid = document.getElementById(tableid);
        var ctx = {worksheet: "役检结果数据统计" || 'Worksheet', table: tableid.innerHTML};
        document.getElementById("excelOut").download = "役检结果数据统计.xls";
        document.getElementById("excelOut").href = uri + base64(format(template, ctx)); */
    }
	</script>
</body>
</html>