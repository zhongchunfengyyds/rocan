<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): wujie
  - Date: 2019-11-07 19:37:43
  - Description: 综合指数管理数据统计
-->
<head>
<title>综合指数管理数据统计</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="echarts.min.js"></script>
<script type="text/javascript" src="jquery-1.9.js"></script>
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<style type="text/css">
html,body {
	height: 100%;
	width: 100%;
	margin: 0;
	padding: 0;
	margin-right: 1px;
}

.panel {
	height: 100%;
	width: 100%;
}

.head {
	height: 7%;
	width: 100%;
}

.head .item {
	margin-top: 5px;
	float: left;
}

.content {
	height: 92%;
	width: 100%;
}

.content .item {
	height: 32%;
	width: 49%;
	margin: 2px;
	float: left;
}

.mini-labelfield-label {
	width: 50px !important;
	line-height: 25px !important;
	text-align: center;
}
</style>
</head>
<body>

	<div class="panel">
		<div class="head" id="form">
			<div class="item">
				<input zzCombo="jsCombo" name="org"
					class="nui-combobox nui-form-input" dataField="dictObject"
					style="width: 240px"
					url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=ZZ"
					textField="dictName" valueField="dictID" emptyText="请选择"
					required="false" allowInput="true" showNullItem="true"
					nullItemText="请选择..." labelField="true" label="组织：" />
			</div>
			<div class="item">
				<input zzCombo="jsCombo" name="wd"
					class="nui-combobox nui-form-input" dataField="dictObject"
					url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=wd"
					textField="dictName" valueField="dictID" emptyText="请选择"
					required="false" allowInput="true" showNullItem="true"
					nullItemText="请选择..." labelField="true" label="维度：" />
			</div>
			<div class="item">
				<input zzCombo="jsCombo" name="month"
					class="nui-combobox nui-form-input"
					data="[{'id':1,'text':'近一年'},{'id':2,'text':'近半年'},{'id':3,'text':'全部'}]"
					textField="text" valueField="id" emptyText="请选择" required="false"
					allowInput="true" labelField="true" label="月份：" />
			</div>
			<div style="float: left;margin-top:4px;">
				<a class="nui-button btn btn-default btn-xs" onclick="search()"><i
					class="fa fa-search"></i>查询</a>
			</div>
		</div>
		<div class="content">
			<div class="item" id="chartDYW"></div>
			<div class="item" id="chartHYH"></div>
			<div class="item" id="chartND"></div>
			<div class="item" id="chartYJ"></div>
			<div class="item" id="chartTS"></div>
			<div class="item" id="chartFCG"></div>
		</div>
	</div>

	<script type="text/javascript">
		nui.parse();

		function search() {
			var form = new nui.Form("#form");
			var formData = form.getData();
			if(formData.org == ''){
				nui.alert("请选择组织");
				return;
			}
			if(formData.wd == ''){
				nui.alert("请选择维度");
				return;
			}
			if(formData.month == ''){
				nui.alert("请选择月份");
				return;
			}
			    var params = {};
	            params.org = formData.org;
	            params.wd = formData.wd;
	            params.month = formData.month;
	            var json = nui.encode({params:params});
				nui.ajax({         
							url : "com.cgn.itmp.dailyandoverhaul.groupplant.ComprehensiveIndexMgt.getStatistics.biz.ext",
							type : 'POST',
							data : json,
							success : function(res) {
								var data = res.jsonObject;
							if(data.counts > 0){
								initDYW(data.dateList, data.DList);
								initHYH(data.dateList, data.HList);
								initND(data.dateList, data.NList);
								initYJ(data.dateList, data.YList);
								initTS(data.dateList, data.TList);
								initFCG(data.dateList, data.FList);
							}else{
								var month = new nui.Form("#form").getData().month; 
								var xData = getMonths(month == ""?6:(month == 1?12:6)).sort();
								var arr = [];
								for(var i = 0; i < xData.length;i++){
									arr.push(0);												
								}
								initDYW(xData, arr);
								initHYH(xData, arr);
								initND(xData, arr);
								initYJ(xData, arr);
								initTS(xData, arr);
								initFCG(xData, arr);
							}
							},error: function (jqXHR, textStatus, errorThrown) {
								 grid.unmask();
								 nui.alert(jqXHR.responseText,'错误',function (action) {
									 grid.beginEditRow(editRow);
								});
							
							//                     alert(jqXHR.responseText);
							}
						});
			
		}
		//获取x轴月份
		function getMonths(k) {
		      var dataArr = [];
		      var data = new Date();
		      var year = data.getFullYear();
		      data.setMonth(data.getMonth() + 1, 1); //获取到当前月份,设置月份
		      for (var i = 0; i < k; i++) {
		        data.setMonth(data.getMonth() - 1); //每次循环一次 月份值减1
		        var m = data.getMonth() + 1;
		        m = m < 10 ? "0" + m : m;
		        dataArr.push(data.getFullYear() + "年" + m + "月");
		      }
		     return dataArr;
		}
		
		//设置图标数据
		function getOption(title, xData, yData) {
			var option = {
				title : {
					left : 'center',
					text : title,
				},
				tooltip : {
			        trigger: 'axis'
			    },
				grid : {
					left : '3%',
					right : '4%',
					bottom : '3%',
					top : '20%',
					containLabel : true
				},
				xAxis : {
					type : 'category',
					data : xData,
					axisLabel : {
						interval : 0, //坐标刻度之间的显示间隔，默认就可以了（默认是不重叠）
						rotate : 45,
					//调整数值改变倾斜的幅度（范围-90到90）
						textStyle: {
							fontSize : 10 //X轴文字大小
						}
					}
				},
				yAxis : {
					type: 'value',
				    //min: 0,
				   	max: 100,
				},
				series : [ {
					data : yData,
					type : 'line',
					symbolSize : 8,
					symbol : 'diamond',
					itemStyle : {
						normal : {
							color : '#0000FF'
						}
					}
				} ]
			};
			return option;
		}

		/* $(function() {
			$
					.ajax({
						url : "com.cgn.itmp.dailyandoverhaul.groupplant.ComprehensiveIndexMgt.getStatistics.biz.ext",
						type : 'POST',
						data : "",
						cache : false,
						contentType : 'json',
						success : function(res) {
							var data = res.jsonObject;
							if(data.counts > 0){
								initDYW(data.dateList, data.DList);
								initHYH(data.dateList, data.HList);
								initND(data.dateList, data.NList);
								initYJ(data.dateList, data.YList);
								initTS(data.dateList, data.TList);
								initFCG(data.dateList, data.FList);
							}else{
								var month = new nui.Form("#form").getData().month; 
								var xData = getMonths(month == ""?6:(month == 1?12:6)).sort();
								initDYW(xData, []);
								initHYH(xData, []);
								initND(xData, []);
								initYJ(xData, []);
								initTS(xData, []);
								initFCG(xData, []);
							}
						}
					});
		}) */

		var chartDYW,chartHYH,chartND,chartYJ,chartTS,chartFCG;
		//大亚湾
		function initDYW(xData, yData) {
			if ( chartDYW != null && chartDYW != "" && chartDYW != undefined ) {
		        chartDYW.dispose();
		    }
			chartDYW = echarts.init(document.getElementById('chartDYW'));
			chartDYW.setOption(getOption("大亚湾", xData, yData),true);
		}

		//红沿河
		function initHYH(xData, yData) {
			if ( chartHYH != null && chartHYH != "" && chartHYH != undefined ) {
		        chartHYH.dispose();
		    }
			chartHYH = echarts.init(document.getElementById('chartHYH'));
			chartHYH.setOption(getOption("红沿河", xData, yData),true);
		}

		//宁德
		function initND(xData, yData) {
			if ( chartND != null && chartND != "" && chartND != undefined ) {
		        chartND.dispose();
		    }
			chartND = echarts.init(document.getElementById('chartND'));
			chartND.setOption(getOption("宁德", xData, yData),true);
		}

		//阳江
		function initYJ(xData, yData) {
		if ( chartYJ != null && chartYJ != "" && chartYJ != undefined ) {
		        chartYJ.dispose();
		    }
			chartYJ = echarts.init(document.getElementById('chartYJ'));
			chartYJ.setOption(getOption("阳江", xData, yData),true);
		}

		//台山
		function initTS(xData, yData) {
		if ( chartTS != null && chartTS != "" && chartTS != undefined ) {
		        chartTS.dispose();
		    }
			chartTS = echarts.init(document.getElementById('chartTS'));
			chartTS.setOption(getOption("台山", xData, yData),true);
		}

		//防城港
		function initFCG(xData, yData) {
			if ( chartFCG != null && chartFCG != "" && chartFCG != undefined ) {
		        chartFCG.dispose();
		    }
		 	chartFCG = echarts.init(document.getElementById('chartFCG'));
			chartFCG.setOption(getOption("防城港", xData, yData),true);
		}
	</script>
</body>
</html>