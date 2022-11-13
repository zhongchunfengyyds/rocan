<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-11-5 14:27:05
- Description:
    --%>
<head>
<title></title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript">
	
</script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
<script src="echarts.min.js"></script>
<style type="text/css">
#myecharts {
	overflow: hidden;
	display: flex;
	flex-wrap: wrap;
	display: flex;
}

#myecharts>div {
	width: 100%;
	height: 50%;
	flex-wrap: wrap;
	display: flex;
}

#myecharts>div>div {
	width: 50%;
	height: 100%;
}
</style>
</head>
<body id="myecharts" style="width: 98%; height: 90%;">
	请选择大修：
	<input id="overhaulsq" name="overhaul" class="nui-combobox"
		multiSelect="true" onvaluechanged="" textField="name" url=""
		onvaluechanged="" multiSelect="false" emptyText="请选择" valueField="id"
		textField="name" dataField="overhaulsq" nullItemText="请选择...">
	请选择蒸发器：
	<input id="funposition" name="overhaul" class="nui-combobox"
		multiSelect="true" onvaluechanged="" textField="name" url=""
		onvaluechanged="" multiSelect="false" emptyText="请选择" valueField="id"
		textField="name" dataField="funposition" nullItemText="请选择...">
	<button class="btn btn-default" type="button"
		onclick="overhaulsqMultiple()">数据统计</button>
	<div>
		<div id="main1"></div>
		<div id="main2"></div>
	</div>
	请选择大修：
	<input id="overhaulsqone" name="overhaul" class="nui-combobox"
		onvaluechanged="" textField="name" url="" onvaluechanged=""
		multiSelect="false" emptyText="请选择" valueField="id" textField="name"
		dataField="jsonObject" nullItemText="请选择...">
	<button class="btn btn-default" type="button" onclick="overhaulsqone()">
		数据统计</button>
	<div>
		<div id="main3"></div>
		<div id="main4"></div>
	</div>
</body>
<script>
	nui.parse();
	var jdjz = {};
	jdjz.jd = getCookie('jdid');
	jdjz.jz = getCookie('jzid');
	var json = nui.encode({
		jdjz : jdjz
	});
	$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.foreignmattermgbiz.querySelectInfo.biz.ext",
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					nui.get("overhaulsq").load(text.selectinfo.overhaulsq);
					nui.get("overhaulsqone").load(text.selectinfo.overhaulsq);
					nui.get("funposition").load(text.selectinfo.funposition);
				}
			});
	//不同大修
	function overhaulsqMultiple() {
		if (nui.get("overhaulsq").value.length != 0
				|| nui.get("funposition").value.length != 0) {
			var jsons = {};
			jsons.type = "overhaulsqMultiple";
			jsons.jd = getCookie('jdid');
			jsons.jz = getCookie('jzid');
			jsons.overhaulsq = nui.get("overhaulsq").value;
			jsons.funposition = nui.get("funposition").value;
			var json = nui.encode({
				selectInfo : jsons
			});
			$.ajax({
						url : "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.foreignmattermgbiz.queryStatisticsAnalysis.biz.ext",
						type : 'POST',
						data : json,
						cache : false,
						contentType : 'text/json',
						success : function(text) {
							myChart1.setOption(initEchartsData2(
									text.returnData.sum.series,
									"不同大修轮次多台蒸汽发生器异物重量图",
									text.returnData.sum.legendData,
									text.returnData.sum.xAxisData), true);
							myChart2.setOption(initEchartsData1(
									text.returnData.count.series,
									"不同大修轮次多台蒸汽发生器异物数量图",
									text.returnData.count.legendData,
									text.returnData.count.xAxisData), true);
						}
					});
		} else {
			nui.alert("选择数据不全", "提示");
		}
	}
	//同一大修
	function overhaulsqone() {
		if (nui.get("overhaulsqone").value.length != 0) {
			var jsons = {};
			jsons.type = "overhaulsqOne";
			jsons.jd = getCookie('jdid');
			jsons.jz = getCookie('jzid');
			jsons.overhaulsq = nui.get("overhaulsqone").value;
			var json = nui.encode({
				selectInfo : jsons
			});
			$.ajax({
						url : "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.foreignmattermgbiz.queryStatisticsAnalysis.biz.ext",
						type : 'POST',
						data : json,
						cache : false,
						contentType : 'text/json',
						success : function(text) {
							myChart3.setOption(initEchartsData2(
									text.returnData.sum.series, nui
											.get("overhaulsqone").value
											+ "大修轮次多台蒸汽发生器异物重量图",
									text.returnData.sum.legendData,
									text.returnData.sum.xAxisData), true);
							myChart4.setOption(initEchartsData1(
									text.returnData.count.series, nui
											.get("overhaulsqone").value
											+ "大修轮次多台蒸汽发生器异物数量图",
									text.returnData.count.legendData,
									text.returnData.count.xAxisData), true);
						}
					});
		} else {
			nui.alert("选择数据不全", "提示");
		}
	}

	//初始化图表
	var myChart1 = echarts.init(document.getElementById('main1'));
	var myChart2 = echarts.init(document.getElementById('main2'));
	var myChart3 = echarts.init(document.getElementById('main3'));
	var myChart4 = echarts.init(document.getElementById('main4'));
	//图表赋值
	function initEchartsData1(series, title, legend, xAxis) {
		option = {
			title : {
				text : title,
			},
			tooltip : {
			// 				formatter : function(params) {
			// 					
			// 					return params.value[0] + "," + params.value[1];
			// 				}
			},
			grid : {
				left : '5%',
				right : '10%',
				bottom : '10%',
				top : '25%',
				containLabel : true
			},
			legend : {
				data : legend,
				right : 10,
// 				x:'right', 
				y:'40',
// 				orient:'horizontal',
				
			},
			xAxis : {
				type : 'category',
				axisTick : {
					show : false
				},
				data : xAxis
			},
			yAxis : {
				type : 'value'
			},
			splitNumber : 1,
			interval : 1,
			series : series
		};
		return option;
	};
		//图表赋值
	function initEchartsData2(series, title, legend, xAxis) {
		option = {
			title : {
				text : title,
			},
			tooltip : {
			// 				formatter : function(params) {
			// 					
			// 					return params.value[0] + "," + params.value[1];
			// 				}
			},
			grid : {
				left : '5%',
				right : '10%',
				bottom : '10%',
				top : '25%',
				containLabel : true
			},
			legend : {
				data : legend,
				right : 10,
// 				x:'right', 
				y:'40',
// 				orient:'horizontal',
				
			},
			xAxis : {
				type : 'category',
				axisTick : {
					show : false
				},
				data : xAxis
			},
			yAxis : {
				type : 'value'
			},
			series : series
		};
		return option;
	};
</script>
</html>
