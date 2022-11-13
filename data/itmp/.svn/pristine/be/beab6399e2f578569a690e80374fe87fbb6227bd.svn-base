<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): jirukang
  - Date: 2019-10-30 14:32:00
  - Description:数据统计
-->
<head>
<title>数据统计</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>	
   <script src="echarts.min.js"></script>
<script type="text/javascript" src="jquery-1.9.js"></script>
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
</head>
<body>
	<div id="dataform1" style="padding-top: 5px;">
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			 <tr>
                <td colspan="1"></td>
			 	<td class="form_label">请选择大修轮次:</td>			
                <td colspan="1">
                    <div name="overhual" id="combobox1" class="nui-combobox" style="width:100%;"  popupWidth="100%" textField="name" valueField="id" 
					     url=""  multiSelect="true"  
					     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
					</div>
                </td>
                 <td colspan="1"></td>
                <td class="form_label">请选择方法:</td>			
                <td colspan="1">
                	<input id="select1" class="nui-treeselect" url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/dataTree.txt" 
                	multiSelect="false" textField="name" idField="id" parentField="pid"
			        showFolderCheckBox="tree"  dataField="treeDepts" expandOnLoad="true" showClose="true" oncloseclick="onCloseClick"
			        popupWidth="100%" popupHeight="600" style="width:100%"/>
                </td>
                <td colspan="1">
                <a class="nui-button" style="cursor: pointer;"onclick="showChartWindow()">数据统计</a>
                </td>
			 </tr>
			 <tr>
			 	<td colspan="7" style="text-align: center;">
        				<h2 id="h2"></h2>
			 		</td>
			 </tr>
			 <tr style="width:500px;height:400px">
			 		<td id="win1" colspan="7" >
        				<div id="chartContainer" style="height:100%;width:100%;"></div>
			 		</td>
			 </tr>
			 
			 <tr>
			 	<td class="form_label">请选择大修轮次:</td>
                <td colspan="1">
                    <div name="overhual" id="combobox2" class="nui-combobox" style="width:100%;"  popupWidth="100%" textField="name" valueField="id" 
					     url=""  multiSelect="false" onvaluechanged="onValuechanged1" showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
					</div>
                </td>
                <td class="form_label">请选择方法:</td>			
                <td colspan="1">
                	<input id="select2" class="nui-treeselect" url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/dataTree.txt" 
                	multiSelect="false" textField="name" idField="id" parentField="pid"
			        showFolderCheckBox="tree"  dataField="treeDepts" expandOnLoad="true" showClose="true" oncloseclick="onCloseClick" onvaluechanged="onValuechanged2"
			        popupWidth="250" popupHeight="600" style="width:100%"/>
                </td>
                 <td class="form_label">请选择缺陷类型:</td>		
                <td colspan="1">
                    <div name="defecttype" id="combobox3" class="nui-combobox" style="width:100%;"  popupWidth="100%" textField="name" valueField="id" 
					     url=""  multiSelect="true"  
					     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
					</div>
                </td>
                <td colspan="1">
                <a class="nui-button" style="cursor: pointer;"onclick="showChartWindow1()">数据统计</a>
                </td>
			 </tr>
			 <tr style="width:500px;height:400px">
			 		<td id="win2" colspan="7" >
        				<div id="chartContainer1" style="height:100%;width:100%;"></div>
			 		</td>
			 </tr>
		</table>
	</div>


	<script type="text/javascript">
    	nui.parse();
    	var jdid=getCookie('jdid');
    	var jzid=getCookie('jzid');
    	var combobox=new Array();
    	 var seriesArray=new Array();
//	折线图
    	var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#6a7985'
                }
            }
        },
        legend: {
            data: ['缺陷数量']
        },
       /*  toolbox: {
            feature: {
                saveAsImage: {}
            }
        }, */
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [
            {
                type: 'category',
                boundaryGap: false,
                data:["H1003", "H101", "H102", "H10222"]
            }
        ],
        yAxis: [
            {
                type: 'value'
            }
        ],
        series: [
            {
                name: '缺陷数量',
                type: 'line',
                stack: '总量',
                /* areaStyle: { normal: {} }, */
                data: '',
              lineStyle: {
            	normal: {
                color: 'green',
            }
        }
        }
        ]
    };
    //柱状图
    var option1 = {
     color: ['#3398DB'],
    tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
    },
    title : {
        text: '测试标题',
        x: 'center',
        align: 'right'
    },
    xAxis: {
        type: 'category',
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
        
    },
    yAxis: {
        type: 'value'
    },
    series: [{
        data: [120, 200, 150, 80, 70, 110, 130],
        type: 'bar',
        barWidth: '20%',
        itemStyle: {
					normal: {
					label: {
					show: true,
					position: 'top',
					textStyle: {
					color: '#615a5a'
					},
					formatter:function(params){
					if(params.value==0){
					return '';
					}else
					{
					return params.value;
					}
					}
					}
					}
					},
    }]
};
    
    
    function buildChart() {
    	document.getElementById("h2").innerText='23132'
        var chart = echarts.init(document.getElementById('chartContainer'));
        chart.setOption(option);
    }
    //前台选择大修（可多选） 选择方法（单选）统计数据
    function showChartWindow() {
    var comboboxStr=nui.get("combobox1").value;
    
    var select1=nui.get("select1").value;
    var title="";
    if(comboboxStr==""){
    	nui.alert("请选择要统计的大修轮次!");
    	return;
    }
     if(select1==""){
    	nui.alert("请选择要统计的方法名!");
    	return;
    }
    if(select1=="ztgwl"){
    	title='指套管涡流';
    }else
    if(select1=="crgbobbin"){
    	title='传热管BOBBIN';
    }else
    if(select1=="crgmrpc"){
    	title='传热管MRPC';
    }else
    if(select1=="crglkqx"){
    	title='传热管轮廓曲线';
    }else
    if(select1=="lslm"){
    	title='螺栓/螺母';
    }else
    if(select1=="hfsdcs"){
    	title='焊缝手动超声';
    }else
    if(select1=="rplsdcs"){
    	title='热疲劳手动超声';
    }else
    if(select1=="lssdcs"){
    	title='螺栓手动超声';
    }else
    if(select1=="zbflsdcs"){
    	title='主泵飞轮手动超声';
    } else if(select1=="zlscs"){
    	title='主螺栓自动超声';
    } else if(select1=="rpvzdcs"){
    	title='RPV自动超声';
    }else
    if(select1=="rccazdcs"){
    	title='RCCA自动超声';
    }else
    if(select1=="paut"){
    	title='PA-UT';
    }else
    if(select1=="rt"){
    	title='RT';
    }else
    if(select1=="vt"){
    	title='VT';
    } else if(select1=="mt"){
    	title='MT';
    }else if(select1=="pt"){
    	title='PT';
    }
    combobox =comboboxStr.split(",");
    
    var _index = -1;
    var _tempArr = [];
   	if(comboboxStr.indexOf("PSI") > 0){
   		_tempArr.push("PSI");
   		for(var i = 0; i < combobox.length; i++){
    		if(combobox[i] == "PSI"){
    			_index = i;
    		}else{                                                        
    			_tempArr.push(combobox[i]);
    		}
    	}
   	}
  	 option.xAxis[0].data = _tempArr.length > 0 ? _tempArr : combobox;
  	 
    	 $.ajax({
					url : "com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagementbiz.getDefectresultsNumbers.biz.ext",
					type : 'POST',
					data : nui.encode({Dx:comboboxStr,method:select1,base:jdid,crew:jzid}),
					cache : false,
					contentType : 'text/json',
					success : function(data) {
					
					var list = data.list;
					var _tempList = [];
					if(_index > 0){
						_tempList.push(list[_index]);
						for(var j = 0; j < list.length; j++){
							if(j != _index){
								_tempList.push(list[j]);
							}
						}
					}
					option.series[0].data = _tempList.length > 0 ? _tempList : list;
					
					document.getElementById("h2").innerText='不同大修轮次'+title+'方法缺陷显示总数量变化趋势图';
			        var chart = echarts.init(document.getElementById('chartContainer'));
			        chart.setOption(option);
						/* seriesArray.push(data.pipeData[0]);
						seriesArray.push(data.pipeData[1]);
						seriesArray = seriesArray;
						myChart.setOption(initEchartsData(seriesArray,'left'), true); */
					}
				});
       
    }
     var combobox2=nui.get("combobox2");
     var select2=nui.get("select2");//方法
     var combobox3=nui.get("combobox3");//缺陷类型
    function onValuechanged1(e){
    	select2.setValue("");
    	combobox3.setValue("");
    }
    function onValuechanged2(e){
    		combobox3.setValue("");
    		
    	if(select2.value!=""&&combobox2.value!=""){
    		combobox3.setUrl("com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.getDefectTypes.biz.ext?base="+jdid+"&overhaulsequence="+combobox2.value+"&stencilplate="+select2.value+"&crew="+jzid);
    	}
    	var arr=combobox3.getData();
    	if(arr.length==0){
    		if(combobox2.value!=""){
    		nui.alert("该大修对应方法下缺陷类型无数据，请重新选择!");
    		select2.setValue("");
    		combobox3.setValue("");
    		return;
    		}else{
    		
    		nui.alert("请先选择大修类型!");
    		select2.setValue("");
    		combobox3.setValue("");
    		return;
    		}
    	}
    }
     //第二种统计方式
     function showChartWindow1() {
     		  var comboboxStr=nui.get("combobox2").value;
		      var select2=nui.get("select2").value;
		      var combobox3=nui.get("combobox3").value;
		      var title="";
		     if(comboboxStr==""){
		    	nui.alert("请选择要统计的大修轮次!");
		    	return;
		   	 }
		   	 if(select2==""){
		    	nui.alert("请选择要统计的检查方法!");
		    	return;
		   	 }
		   	  if(combobox3==""){
		    	nui.alert("请选择要统计的缺陷类型 !");
		    	return;
		   	 }
			if(select2=="ztgwl"){
		    	title=comboboxStr+'大修ET(指套管涡流)检查方法不同缺陷显示类型数量';
		    }else
		    if(select2=="crgbobbin"){
		    	title=comboboxStr+'大修ET(传热管BOBBIN)检查方法不同缺陷显示类型数量';
		    }else
		    if(select2=="crgmrpc"){
		    	title=comboboxStr+'大修ET(传热管MRPC)检查方法不同缺陷显示类型数量';
		    }else
		    if(select2=="crglkqx"){
		    	title=comboboxStr+'大修ET(传热管轮廓曲线)检查方法不同缺陷显示类型数量';
		    }else
		    if(select2=="lslm"){
		    	title=comboboxStr+'大修ET(螺栓螺母)检查方法不同缺陷显示类型数量';
		    }else
		    if(select2=="hfsdcs"){
		    	title=comboboxStr+'大修UT(焊缝手动超声)检查方法不同缺陷显示类型数量';
		    }else
		    if(select2=="rplsdcs"){
		    	title=comboboxStr+'大修UT(热疲劳手动超声)检查方法不同缺陷显示类型数量';
		    }else
		    if(select2=="lssdcs"){
		    	title=comboboxStr+'大修UT(螺栓手动超声)检查方法不同缺陷显示类型数量';
		    }else
		   if(select2=="zbflsdcs"){
		    	title=comboboxStr+'大修UT(主泵飞轮手动超声)检查方法不同缺陷显示类型数量';
		    } else if(select2=="zlscs"){
		    	title=comboboxStr+'大修UT(主螺栓自动超声)检查方法不同缺陷显示类型数量';
		    }else if(select2=="rpvzdcs"){
		    	title=comboboxStr+'大修UT(RPV自动超声)检查方法不同缺陷显示类型数量';
		    }else
		    if(select2=="rccazdcs"){
		    	title=comboboxStr+'大修UT(RCCA自动超声)检查方法不同缺陷显示类型数量';
		    }else
		    if(select2=="paut"){
		    	title=comboboxStr+'大修UT(PA-UT)检查方法不同缺陷显示类型数量';
		    }else
		    if(select2=="rt"){
		    	title=comboboxStr+'大修RT检查方法不同缺陷显示类型数量';
		    }else
		    if(select2=="vt"){
		    	title=comboboxStr+'大修VT检查方法不同缺陷显示类型数量';
		    } else if(select2=="mt"){
		    	title=comboboxStr+'大修MT检查方法不同缺陷显示类型数量';
		    } else if(select2=="pt"){
		    	title=comboboxStr+'大修PT检查方法不同缺陷显示类型数量';
		    }
		    var arrayCombobox=new Array();
		   	arrayCombobox=combobox3.split(","); 
		   	  option1.xAxis.data=arrayCombobox;
		   	  option1.title.text=title;
		   	   $.ajax({
					url : "com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.getNumsByDefectType.biz.ext",
					type : 'POST',
					data : nui.encode({dx:comboboxStr,method:select2,base:jdid,defecttype:combobox3,crew:jzid}),
					cache : false,
					contentType : 'text/json',
					success : function(data) {
					 option1.series[0].data=data.list;
			        var chart = echarts.init(document.getElementById('chartContainer1'));
			        chart.setOption(option1);
					}
				});
   	 
     }
    	$(function(){
			nui.get('combobox1').setAjaxType("POST");
	        nui.get('combobox1').load("com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.geAllOverhaulSequence.biz.ext?base="+jdid+"&crew="+jzid);
	        nui.get('combobox2').setAjaxType("POST");
	        nui.get('combobox2').load("com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.geAllOverhaulSequence.biz.ext?base="+jdid+"&crew="+jzid);
		});
		 function onCloseClick(e) {
		    var obj = e.sender;
		    obj.setText("");
		    obj.setValue("");
		}
    </script>
</body>
</html>