<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<script src="echarts.min.js"></script>
	<script type="text/javascript" src="xlsx.mini.js"></script>
	<script type="text/javascript" src="html2canvas.js"></script>
	<script src="polyfill.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
</head>
<style>
html,body {
	width: 100%;
	height: 100%;
}

body {
	overflow: hidden;
}

#ghtt button {
	margin: 0px 5px;
	width: 5%;
	min-width: 85px;
	min-height: 20px;
}
</style>
<body id="ghtt" style="width: 100%; height: 100%;">
	<div
		style="display: flex; flex-direction: row; height: 20px; margin: 5px 8px">
		<input onvaluechanged="selecthatcold(this.value,this)"
			style="text-align: left; width: 120px" name="selectall_eight"
			class="mini-radiobuttonlist" value="2"
			data="[ {id: 2, text: '冷端'},{id: 1, text: '热端' ,checked:'true'}]" />
		<button class="btn btn-default" onclick="importBlock()">导入堵管</button>
		<button class="btn btn-default" onclick="creatEnclosure()">生成</button>
		<button class="btn btn-default" style="display: none;" id="websavle"
			onclick="saveEnclosure()">保存为附件</button>
		<button class="btn btn-default" id="localsavle" onclick="saveImg()">另存为</button>
<!-- 		<button class="btn btn-default" onclick="manual()">手动选取</button> -->
	</div>

	<div id="main" style="width: 100%; height: 95%;"></div>

</body>
<script>
	nui.parse();
	//初始化图表
	var myChart = echarts.init(document.getElementById('main'));
	var seriesArray = new Array();
	var overhaulRotation;//大修轮次
	var steamGeneratorNo;//蒸发器编号
	var steamGeneratorModel;//蒸发器型号
	var checkRange;//检查范围
	var returnFilePath = "";
	var uuid;
	var postionOfy = "right";
	var reserveData;
	var pipeType;
	var allpipe = 0;//全部管束数量
	var selectpipe = 0;//选中管束数量
	var series = {
		symbolSize : 10,
		type : 'scatter',
		name : '被检查',
		itemStyle : {
			normal : {
				shadowBlur : 5,
				color : '#000'
			}
		}
	};
	var addPipeArr;
	//接收参数
	function setFormData(data) {
		
		var datas = {};
		if (data.record.pipeType == "跟踪管") {
			$("#websavle").hide();
			$("#localsavle").show();
			steamGeneratorModel = data.record.ghttinspection[0].sgmodel;
			steamGeneratorNo = data.record.ghttinspection[0].sgnumber;
			pipeType = data.record.pipeType;
			var trackData = data.record.ghttinspection;
			var trackArr = new Array();
			selectpipe = trackData.length;
			for (var i = 0; i < trackData.length; i++) {
				var arr = new Array();
				arr.push(trackData[i].no_r);
				arr.push(trackData[i].no_c);
				trackArr.push(arr);
			}
			datas.jd = getCookie('jdid');
			datas.jz = getCookie('jzid');
			datas.model = trackData[0].sgmodel;
			var json = nui.encode({
				trackArr : trackArr,
				myDatas : datas
			});
			getTrackPipePoint(json);
		}
	}
	//跟踪管从后台获取管版图坐标
	function getTrackPipePoint(json) {
		
		$.ajax({
			url : "com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.getTrackPipePoint.biz.ext",
			type : 'POST',
			data : json,
			cache : false,
			contentType : 'text/json',
			success : function(data) {
			if(getCookie('jdid')=="86"){
				seriesArray.push(data.pipeData[0]);
				seriesArray.push(data.pipeData[1]);
				seriesArray.push(data.pipeData[2]);
				seriesArray.push(data.pipeData[3]);
				seriesArray.push(data.pipeData[4]);
			}else{
				seriesArray.push(data.pipeData[0]);
				seriesArray.push(data.pipeData[1]);
				seriesArray = seriesArray;
				for (var i = 0; i < seriesArray.length; i++) {
					allpipe = seriesArray[i].data.length + allpipe;
				}
			}
				myChart.setOption(initEchartsData(seriesArray, 'right'), true);
			}
		});
	}
	//图表赋值
	function initEchartsData(seriesArray, postionOfy) {

		option = {
			toolbox: {
				x:'20px',
		        feature: {
		            brush: {
		            	type: ['rect','keep','clear'],
		            	title: {
			                rect: '手动选取',
			                polygon: '圈选',
			                lineX: '横向选择',
			                lineY: '纵向选择',
			                keep: '激活多次手动选取',
			                clear: '清除选择'
			            }
		            },
		        }
		    },
		    brush: {
		    	geoIndex: 'all',
		    	inBrush: {
// 			        color:'#000',
			    },
	            outOfBrush: {
// 	            	color:'#ddd',
			    },
    		},
			title : [
					{
						text : postionOfy == "left" ? '管嘴' : '人孔',
						textStyle : {
							fontSize : 14
						},
						top : '95%',
						left : '10',
					},
					{
						text : postionOfy == "right" ? '管嘴' : '人孔',
						textStyle : {
							fontSize : 14
						},
						top : '95%',
						right : '10',
					},
					{
						text : '电厂名称：' + getCookie('jdname') + ' 机组号：'
								+ getCookie('jzname') + ' 蒸发器型号：'
								+ steamGeneratorModel + ' 蒸发器编号：'
								+ steamGeneratorNo + ' 冷热端：'
								+ (postionOfy == "left" ? '热端' : '冷端'),
						textStyle : {
							fontSize : 14
						},
						top : '94%',
						left : '5%'
					},
					{
						text :  ' 总管束：' + allpipe + ' 计划数：'
								+ selectpipe + ' 百分比：'
								+ (selectpipe / allpipe * 100).toFixed(2) + '%',
						textStyle : {
							fontSize : 14
						},
						top : '97%',
						left : '5%'
					}, ],
			tooltip : {
				formatter : function(params) {
					return params.value[0] + "," + params.value[1];
				}
			},
			grid : {
				left : '1%',
				right : '1%',
				bottom : '6%',
				top : '5%',
				containLabel : true
			},
			legend : {
				data : [ '空管', '被检查', '堵管', '手动选取', '锚点','次外围两圈50%（A类）','次外围两圈50%（B类）','跟踪管' ],
				right : 10
			},
			xAxis : {
				position : getCookie('jdid') == "86" ? 'top':'bottom',
				splitNumber : getCookie('jdid') == "86" ? 5 : 1,
				max : getCookie('jdid') == "86" ? 138 : 110,
				inverse : getCookie('jdid') == "86" ?  false : postionOfy == "left" ? false : true,
// 				inverse : postionOfy == "left" ? false : true,
				data : getCookie('jdid') == "86" ? [0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
						10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
						24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37,
						38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51,
						52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65,
						66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79,
						80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93,
						94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105,
						106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116,
						117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127,
						128, 129, 130, 131, 132, 133, 134, 135,136,137,138 ] : [ 0, 1, 2, 3, 4,
						5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
						20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33,
						34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47,
						48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61,
						62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75,
						76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
						90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102,
						103, 104, 105, 106, 107, 108, 109, 110 ],
				min : 0,
				interval : getCookie('jdid') == "86" ? 5 :1,
				axisLabel : {
					show : true,
					textStyle : {
						// 			          color: '#000',  //更改坐标轴文字颜色
						fontSize : 8
					//更改坐标轴文字大小
					}
				},
				splitLine : {
					show : true,
				// 					lineStyle : {color:'#000', type:'solid' }
				},
			},
			yAxis : {
				inverse : getCookie('jdid') == "86"&&postionOfy=="right" ? true : false,
				position : getCookie('jdid') == "86" ? 'left':postionOfy,
				splitNumber : 1,
				max : getCookie('jdid') == "86" ? 114 : 53,
				min : 0,
				interval : 1,
				axisLabel : {
					show : true,
					textStyle : {
						// 			          color: '#000',  //更改坐标轴文字颜色
						fontSize : 8
					//更改坐标轴文字大小
					}
				},
				splitLine : {
					show : true,
				// 					lineStyle : {color:'#000', type:'solid' }
				},
			},
			series : seriesArray
		};
		return option;
	};
	//生成
	function creatEnclosure() {
	//显示全局数据加载提示
            nui.mask({
	            el: document.body,
	            cls: 'mini-mask-loading',
	            html: '生成中...'
       	 	});
		var json = nui.encode({
			imgData : "",
			imgName : getCookie('jdname') + "_" + getCookie('jzname') + "_" + overhaulRotation + "_"
					+ steamGeneratorNo + "管版图.png"
		});
		$
				.ajax({
					url : "com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.dowImage.biz.ext",
					type : 'POST',
					data : json,
					cache : false,
					contentType : 'text/json',
					success : function(data) {
						if (data.flag != "") {
						//关闭加载提示
                                 nui.unmask(document.body);
							nui.alert("图片生成成功请点击另存为", "提示");
							returnFilePath = data.flag;
						} else {
						  nui.unmask(document.body);
							nui.alert("图片生成失败请重试", "提示");
						}
					}
				});
	}
	//下载  附件另存为
	function saveImg() {
		html2canvas($("#main")).then(
				function(canvas) {
					
					if (navigator.msSaveBlob) { // IE10+ 
				        let blob = canvas.msToBlob(); 
				        return navigator.msSaveBlob(blob, getCookie('jdname') + "_" + getCookie('jzname')  + "_" + steamGeneratorNo + "管版图.png"); 
				    } else { 
						var imgUri = canvas.toDataURL("image/png").replace("image/png", "image/octet-stream"); // 获取生成的图片的url
						var aLink = document.createElement("a");
						aLink.style.display = "none";
						aLink.href = imgUri;
						//基地+机组+大修轮次+蒸发器编号+“管版图”
						aLink.download = getCookie('jdname') + "_" + getCookie('jzname')  + "_" + steamGeneratorNo + "管版图.png";
						// 触发点击-然后移除
						document.body.appendChild(aLink);
						aLink.click();
						document.body.removeChild(aLink);
					}
				});
	}
	//保存为附件
	function saveEnclosure() {
		if (returnFilePath == "") {
			nui.alert("请先生成管版图", "提示");
		} else {
			var json = {};
			json.filename = getCookie('jdname') + "_" + getCookie('jzname') + "_" + overhaulRotation
					+ "_" + steamGeneratorNo + "管版图.png";
			json.filepath = returnFilePath;
			json = nui.encode(json);
			$
					.ajax({
						url : "com.cgn.itmp.basecommon.FileComp.addFile.biz.ext",
						type : 'POST',
						data : json,
						cache : false,
						contentType : 'text/json',
						success : function(text) {
							var data = {
								ghttinspection : {
									uuid : ""
								}
							};
							data.ghttinspection.uuid = uuid;
							data.ghttinspection.fileid = text.fileid;
							data.ghttinspection.enclosure = getCookie('jdname') + "_"
									+ getCookie('jzname') + "_" + overhaulRotation
									+ "_" + steamGeneratorNo + "管版图.png";
							data.ghttinspection.filepath = returnFilePath;
							var json = nui.encode(data);
							$
									.ajax({
										url : 'com.cgn.itmp.inspectcomponentmanage.ghttinspectionbiz.updateGhttinspection.biz.ext',
										type : 'POST',
										data : json,
										cache : false,
										contentType : 'text/json',
										success : function(text) {
											var returnJson = nui.decode(text);
											if (returnJson.exception == null) {
												nui.alert("保存附件成功", "提示");
												returnFilePath = "";
											} else {
												nui
														.alert(
																"保存失败",
																"系统提示",
																function(action) {
																	if (action == "ok"
																			|| action == "close") {
																		nui
																				.alert(
																						"保存附件失败请重试",
																						"提示");
																		returnFilePath = "";
																	}
																});
											}
										}
									});
						}
					});
		}
	}
	//获取echartsbase64
	function getFullCanvasDataURL() {
		//将第一个画布作为基准。
		var baseCanvas = $("#main").find("canvas").first()[0];
		var width = baseCanvas.width;
		var height = baseCanvas.height;
		var ctx = baseCanvas.getContext("2d");
		//遍历，将后续的画布添加到在第一个上
		$("#main").find("canvas").each(function(i, canvasObj) {
			if (i > 0) {
				var canvasTmp = $(canvasObj)[0];
				ctx.drawImage(canvasTmp, 0, 0, width, height);
			}
		});
		//获取base64位的url
		var base64 = baseCanvas.toDataURL();
		base64 = base64.replace(/\+/g,"＋");
		return base64;
	}
	//选择冷热段
	function selecthatcold(value) {
		if (value == "1") {
			postionOfy = "left";//热端
			myChart.setOption(initEchartsData(seriesArray, 'left'), true);
		} else {
			postionOfy = "right";//冷端
			myChart.setOption(initEchartsData(seriesArray, 'right'), true);
		}
	}
	window.onresize = function() {
		myChart.resize();
	};
	//导入堵管
	function importBlock() {
		nui
				.open({
					showMaxButton : true,
					url : "/itmp/inspectcomponentmanage/nuclearislanddatamanagement/pipeblockage/SelectPipeblockageList.jsp",
					title : "导入堵管",
					width : "80%",
					height : "90%",
					onload : function() {//弹出页面加载完成
					},
					ondestroy : function(action) {//弹出页面关闭前
						if(action=="close"){}else{
							var iframe = this.getIFrameEl();
							var data = iframe.contentWindow.GetData();
							var blockData = new Array();
							for (var j = 0; j < data.length; j++) {
								var temp = new Array();
								temp.push(parseInt(data[j].no_c));
								temp.push(parseInt(data[j].no_r));
								blockData.push(temp);
							}
							seriesArray.push({
								type : 'effectScatter',
								name : '堵管',
								symbolSize : 8,
								data : blockData
							});
							myChart.setOption(
									initEchartsData(seriesArray, postionOfy), true);
							}
						}
				});
	}
	//手动选取
	function manual() {
		nui
				.open({
					showMaxButton : true,
					url : "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
					title : "新增记录",
					width : 600,
					height : 300,
					onload : function() {//弹出页面加载完成
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "batchAdd",
							tempFileName : "ImportManual.xlsx",
							tempLoadName : "手动选取",
							entitfName : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.ImportManual"
						};//传入页面的json数据
						iframe.contentWindow.SetData(data);
					},
					ondestroy : function(action) {//弹出页面关闭前
						$
								.ajax({
									url : "com.cgn.itmp.inspectcomponentmanage.pipelayout.pipelayoutbiz.getImportManual.biz.ext",
									type : 'POST',
									data : '',
									cache : false,
									contentType : 'text/json',
									success : function(data) {
										seriesArray.push({
											type : 'scatter',
											itemStyle : {
												normal : {
													shadowBlur : 6,
													color : '#FFA500'
												}
											},
											name : '手动选取',
											symbolSize : 8,
											data : data.jsonArray
										});
										myChart.setOption(initEchartsData(
												seriesArray, postionOfy), true);
									}
								});
					}
				});
	}
	function fileSub(file){
    		var  fv=file.value;
    		if(fv){
   	    		$("#uploadform").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
					success : function(data) {
						if (data.code == 1) {
							nui.get("fj").setValue(data.list[0].name);
							nui.get("fileid").setValue(data.list[0].uri);
							fileid = data.list[0].uri;
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} else {
				nui.alert("请上传图片");
				return false;
			}
		}
</script>
<style>
#ghtt lable {
	margin-bottom: 0px !important;
}
</style>
</html>
