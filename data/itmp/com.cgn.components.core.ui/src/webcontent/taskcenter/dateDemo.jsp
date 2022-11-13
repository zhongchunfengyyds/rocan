<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/coframe/tools/skins/common.jsp"%>

<html>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-08-03 12:26:50
  - Description: 查询所有待办任务列表
-->
<head>
<title>DATEDEMO</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="media/tasklist.css"/>
    <link rel="stylesheet" type="text/css" href="<%=contextPath%>/css/themes/date/daterangepicker-bs3.css"/>
    <script type="text/javascript" src="<%=contextPath%>/scripts/date/moment.js"></script>
	<script type="text/javascript" src="<%=contextPath%>/scripts/date/daterangepicker.js"></script>
    <script type="text/javascript">
		"use strict";
    	var _CONTEXT_PATH = "<%=request.getContextPath()%>";
    	var editable = true;
    	var syncStatisticsNums = true;
	</script>
	<style>
	/*双日期控件css开始*/
	.form-box{
		padding:20px 0;
		margin-left:180px;
	}
	.nav-tabs{
		margin-left:15px;
	}

	.ranges>ul{
		display:none;
	} 
	.daterangepicker_start_input{
	    width:110px\9;
	}
	.daterangepicker_end_input{
	    width:125px\9;
	}
	/*双日期控件css结束*/
	/*单日期控件开始*/
	.bs-docs-section{
		background-color:#fff;
	}
	.mini-buttonedit {
    	width: 160px;
    }
/*     .mini-buttonedit-button:before{
    	content: "\f073";
    }
	.mini-buttonedit-button {
	    display: inline-block;
	    font: normal normal normal 14px/1 FontAwesome;
	    font-size: inherit;
	    text-rendering: auto;
	    -webkit-font-smoothing: antialiased;
		content: "\f073";
	} */
	.mini-buttonedit-icon:before{
    	content: "\f073";
    	background:#fff;
    }
	.mini-buttonedit-icon {
    	/* background: url(images/datepicker/date.gif) no-repeat 50% 2px; */
    	display: inline-block;
	    font: normal normal normal 14px/1 FontAwesome;
	    font-size: inherit;
	    text-rendering: auto;
	    -webkit-font-smoothing: antialiased;
		content: "\f073";
	}
	.mini-popup {
	    border: 1px solid #ddd;
	    padding: 4px;
	    border-radius: 4px;
	    background: #fff;
    	max-width: 290px;	    
	}
	.mini-calendar-header {
	    height: 25px;
	    text-align: center;
	    background: #fff;
	    border-bottom: solid 1px #a7abb0;
	}
	.mini-calendar-footer {
	    padding: 4px;
	    padding-bottom: 5px;
	    background: #fff;
	    border-top: solid 1px #c9c9c9;
	    text-align: center;
	}
	.mini-calendar-tadayButton, .mini-calendar-clearButton, .mini-calendar-okButton, .mini-calendar-cancelButton {
	    border-color: #004a86;
	    background: #004a86;
	    color: #fff;
	    display: inline-block;
	    font-size: 9pt;
	    font-family: "microsoft yahei" !important;
	    text-decoration: none;
	    padding: 4px;
	    padding-left: 0px;
	    padding-right: 0px;
	    width: 52px;
	    text-align: center;
	    outline: none;
	    cursor: pointer;
	    vertical-align: middle;
	}
	.calendar-date {
	    border: 1px solid #ddd;
	    padding: 4px;
	    border-radius: 4px;
	    background: #fff;
	}
	.daterangepicker .calendar th, .daterangepicker .calendar td {
	    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
	    white-space: nowrap;
	    text-align: center;
	    min-width: 32px;
	}
	.mini-calendar-date {
		font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif !important;
		font-size: 10pt !important;
	    white-space: nowrap;
	    text-align: center;
	    min-width: 32px;
	    /* border: solid 1px white; */
	}
	.mini-calendar-daysheader {
		font-weight:bold !important;
	}
	.daterangepicker td.active, .daterangepicker td.active:hover {
	    background-color: #004a86;
	    border-color: #004a86;
	    color: #fff;
	}
	.mini-calendar .mini-calendar-selected, .mini-calendar .mini-calendar-date:hover {
	    background-color: #004a86;
	    border-color: #004a86;
	    color: #fff;
	}
	.mini-calendar-tadayButton:hover, .mini-calendar-clearButton:hover, .mini-calendar-okButton:hover, .mini-calendar-cancelButton:hover {
		background-color:#666;
	}
	/*单日期控件结束*/
	 .mini-timespinner {
		width: 110px !important;
	}
	.mini-calendar {
		width: 250px !important;
	    height: 220px;
	    border: 0px;
	}
	.mini-labelfield {
	    display: block;
	    width: 210px !important;;
	    margin-bottom: 5px;
	}
	.mini-buttonedit-up, .mini-buttonedit-down {
	    overflow: hidden;
	    height: 50%;
	    display: block;
	    cursor: pointer;
	    z-index: 1;
	}
	.mini-buttonedit-up span {
    	background: url(media/images/up.gif) no-repeat 50% 2px !important;
    }
	.mini-buttonedit-down span {
	    background: url(media/images/down.gif) no-repeat 50% 2px !important;
	}
	</style>
	
		
</head>
<body>
	<!-- 工具条 -->
	<div class="bs-docs-section">
		<div class="form-box">
			<div class="form-demo-nei" style="line-height:45px">
		        	<span style="position:relative;">发起时间</span>
						<input id="startTime" name="createTime" class="nui-datepicker" ondrawdate="ondrawdateStart"  dateFormat="yyyy-MM-dd"/>
		        	<span style="position:relative;">至</span>
						<input id="endTime" name="createTime" class="nui-datepicker" ondrawdate="ondrawdateEnd" dateFormat="yyyy-MM-dd"/>		        			        					
			</div>
			
			<div class="form-demo-nei" style="line-height:45px">
				<span style="position:relative;">申请时间，从：</span>
				<input  id="startTime" class="nui-datepicker from" ondrawdate="ondrawdateStart" name="processStartTime:>" showClose="true" oncloseclick="this.setValue(null);" showTime="true" timeFormat="H:mm:ss" format="yyyy-MM-dd HH:mm:ss" labelField="true"  allowInput="false">
				<span style="position:relative;">到</span>
				<input id="endTime" class="nui-datepicker to" ondrawdate="ondrawdateEnd" name="processEndTime:<" showClose="true" oncloseclick="this.setValue(null);" showTime="true" timeFormat="H:mm:ss" format="yyyy-MM-dd HH:mm:ss" labelField="true"   allowInput="false">
				<!-- 手册写法 -->
				<!--<input class="nui-datepicker from" name="processStartTime:>" showClose="true" oncloseclick="this.setValue(null);" showTime="true" timeFormat="H:mm:ss" format="yyyy-MM-dd HH:mm:ss" labelField="true" label="申请时间，从：" allowInput="false">
				<input class="nui-datepicker to" name="processStartTime:<" showClose="true" oncloseclick="this.setValue(null);" showTime="true" timeFormat="H:mm:ss" format="yyyy-MM-dd HH:mm:ss" labelField="true" label="到：" allowInput="false">-->
			</div>
			
		
		    <div class="form-demo-nei">
		        	<span style="position:relative;top:-11px;">申请出差时间</span>
		            <div style="display:inline-block;">
		                <div id="reportrange" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
		                	<i class=" fa fa-calendar"></i>
		                	<span></span> <b class="caret"></b>
		            	</div>
		       		</div>
		    </div> 
		</div>   
	</div>
</body>
<script type="text/javascript">
               $(function(){
                  var cb = function(start, end, label) {
                  //console.log(start.toISOString(), end.toISOString(), label);
                    $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                    //alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
                  }

                  var optionSet1 = {
                    startDate: moment().subtract('days', 29),
                    endDate: moment(),
                    minDate: '01/01/2017',
                    maxDate: '12/31/2027',
                    dateLimit: { days: 60 },
                    showDropdowns: true,
                    showWeekNumbers: true,
                    timePicker: false,
                    timePickerIncrement: 1,
                    timePicker12Hour: true,
                    ranges: {
                       'Today': [moment(), moment()],
                       'Yesterday': [moment().subtract('days', 1), moment().subtract('days', 1)],
                       'Last 7 Days': [moment().subtract('days', 6), moment()],
                       'Last 30 Days': [moment().subtract('days', 29), moment()],
                       'This Month': [moment().startOf('month'), moment().endOf('month')],
                       'Last Month': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
                    },
                    opens: 'left',
                    buttonClasses: ['btn btn-default'],
                    applyClass: 'btn-small btn-default',
                    cancelClass: 'btn-small',
                    format: 'MM-DD-YYYY',
                    separator: ' to ',
                    locale: {
                        applyLabel: '确认',
                        cancelLabel: '清除',
                        fromLabel: '从',
                        toLabel: '到',
                        customRangeLabel: 'Custom',
                        daysOfWeek: ['日', '一', '二', '三', '四', '五','六'],
                        monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
                        firstDay: 1
                    }
                  };
                  
                  var optionSet2 = {
                    startDate: moment().subtract('days', 7),
                    endDate: moment(),
                    opens: 'left',
                    ranges: {
                       'Today': [moment(), moment()],
                       'Yesterday': [moment().subtract('days', 1), moment().subtract('days', 1)],
                       'Last 7 Days': [moment().subtract('days', 6), moment()],
                       'Last 30 Days': [moment().subtract('days', 29), moment()],
                       'This Month': [moment().startOf('month'), moment().endOf('month')],
                       'Last Month': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
                    }
                  };
                  
                  $('#reportrange span').html(moment().subtract('days', 29).format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
                  
                  $('#reportrange').daterangepicker(optionSet1, cb);
                  
                  $('#reportrange').on('click.daterangepicker', function() { 
                  	$('.daterangepicker').addClass('show-calendar');
            		//DateRangePicker.move(); 
                  });
                  $('#reportrange').on('hide.daterangepicker', function() {  });
                  $('#reportrange').on('apply.daterangepicker', function(ev, picker) { 
                 /*  console.log("apply event fired, start/end dates are " 
                   + picker.startDate.format('MMMM D, YYYY') 
                    + " to " 
                    + picker.endDate.format('MMMM D, YYYY')
                  ); */ 
                  });
                  $('#reportrange').on('cancel.daterangepicker', function(ev, picker) {  });
                  $('#options1').click(function() {
                    $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
                  });
                  $('#options2').click(function() {
                    $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
                  });
                  $('#destroy').click(function() {
                    $('#reportrange').data('daterangepicker').remove();
                  });
               });

	function ondrawdateStart(e){
		var date=e.date;
		var d=nui.get("#endTime").getValue();
		if(d)d=new Date(d.replace(/-/g,"/"));
		if(date && d && date.getTime()>d.getTime()){
			e.allowSelect=false;
		}
	}
	
	function ondrawdateEnd(e){
		var date=e.date;
		var d=nui.get("#startTime").getValue();
		if(d)d=new Date(d.replace(/-/g,"/"));
		if(date && d && date.getTime()<d.getTime()){
			e.allowSelect=false;
		}
	}
	
	/*拼接查询条件*/
	function appendCond(){
		var cond="";
		var workItemName=nui.get("#workItemName").getValue();
		if(workItemName)cond+="workItemName:%"+workItemName+",";
		var processInstName=nui.get("#processInstName").getValue();
		if(processInstName)cond+="processInstName:%"+processInstName+",";
		var processCreatorName=nui.get("#processCreatorName").getValue();
		if(processCreatorName)cond+="processCreatorName:%"+processCreatorName+",";
		var startTime=nui.get("#startTime").getValue();
		if(startTime){
			startTime=new Date(startTime.replace(/-/g,"/"));
			cond+="WFWIPARTICIPANT.createTime:>"+nui.formatDate(startTime,"yyyy-MM-dd")+" 00\\:00\\:00,";
		}
		var endTime=nui.get("#endTime").getValue();
		if(endTime){
			endTime=new Date(endTime.replace(/-/g,"/"));
			cond+="WFWIPARTICIPANT.createTime:<"+nui.formatDate(endTime,"yyyy-MM-dd")+" 23\\:59\\:59,";
		}
		if(cond)cond=cond.substring(0,cond.length-1);
		nui.get("#cond").setValue(cond);
	}

</script>
</html>