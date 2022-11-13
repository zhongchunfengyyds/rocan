<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>

<%
	out.print(((String)request.getAttribute("html")).replaceAll("SRC=\"\\/bps\\/", "SRC=\"" + request.getContextPath() + "/"));
%>
<style type="text/css" >

.bordered {
    *border-collapse: collapse; 
    border-spacing: 0px;
    width: 100%;
    font-size: 12px;
    color: #444;
}

.bordered {
    border: solid #ccc 1px;
    border-radius: 6px;
    box-shadow: 0 1px 1px #ccc;
}
.bordered tr{
	background: #fbf8e9;
}

.bordered tr:hover {
    background: #fbf8e9;
    transition: all 0.1s ease-in-out;
}

.bordered td, .bordered th {
    border-left: 1px solid #ccc;
    border-top: 1px solid #ccc;
    padding: 1px;
    text-align: left;
}

.bordered th {
    background-color: #dce9f9;
    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
    border-top: none;
    text-shadow: 0 1px 0 rgba(255,255,255,.5);
}
</style>



<!-- <select id="zoomQuotiety" onchange="__cg(this,info)" style="margin-top: -40px;z-index: 100;width: 60px;height: 20px;position: absolute;">
	<option value="0.4">40%</option>
	<option value="0.55">55%</option>
	<option value="0.7">70%</option>
	<option value="0.85">85%</option>
	<option selected="selected" value="1.0">100%</option>
</select> -->
<div id="info" style="display: none;position:absolute;z-index:10000"></div>

<!-- <div style="position:absolute;z-index:10000;top: 10px;">
	<div style="width:60px;height:20px;float: left;margin-left: 30px;background-color: blue;border: 1px solid;">已执行</div>
	<div style="width:60px;height:20px;float: left;margin-left: 30px;background-color: blue;border: 1px solid;">正在执行</div>
	<div style="width:60px;height:20px;float: left;margin-left: 30px;background-color: blue;border: 1px solid;">未执行</div>
	<div style="width:60px;height:20px;float: left;margin-left: 30px;background-color: blue;border: 1px solid;">已流转</div>
	<div style="width:60px;height:20px;float: left;margin-left: 30px;background-color: blue;border: 1px solid;">未流转</div>
	<img alt="" src="/workflow/wfcomponent/web/images/processInst_graph/manual_7_0.gif">
</div> -->

<script type="text/javascript">
	"use strict";
/*
	chart.prototype.ondblclick = function() {
		//加载流程工作项
		var activitydefid = this.getActivityDefId();
		//流程实例Id
		var processinstid = this.getProcessInstId();
		//活动实例Id
		var activityinstid = this.getActivityIntId();
		//	点击开始时弹出流程实例ID,用于代码跟踪调试 
		if (activitydefid == 'startActivity') {
			alert('当前流程实例ID:' + processinstid);
			return;
		}
		//	过滤掉结束的点击
		if (activitydefid == 'finishActivity') {
			return;
		}
		//	过滤掉还没有激活的图元点击
		if (processinstid == null || activityinstid == null) {
			alert('该活动还没有被激活,请重新选择!');
			return;
		}
		//	业务操作
		alert('可进行任意业务操作..');
	};
	chart.prototype.onclick = function(object) {
          
	};
	*/
	/* chart.prototype.onmouseout = function(object) {
         var mydiv = document.getElementById("mydiv");
		     if (mydiv != null)
		          mydiv.parentNode.removeChild(mydiv); 
	}; */
	
	 var tip = new nui.ToolTip();
	 tip.set({ target: document,
        selector: chart.id});
	 /*
    tip.set({
        target: document,
        selector: 'img',
        onbeforeopen: function (e) {            
            e.cancel = false;
        },
        onopen: function (e) {
            var el = e.element;
            var id = el.id;
            if (id) {
                this.showLoading();
                $.ajax({
                    url: "../data/AjaxService.jsp?method=GetEmployee",
                    data: { id: id },
                    async: true,
                    success: function (text) {
                        //模拟网络延迟
                        setTimeout(function () {
                            var data = mini.decode(text);
                            var html = $("#formTemplate").tmpl(data)[0];

                            tip.setContent(html);
                        }, 300);
                    }
                });
            }
        }
    });
	*/
	
	
	
	chart.prototype.onclick = function() {
	var actInstId = this.getActivityIntId();
	//活动实例ID
	return;
	if(!actInstId) return;
	if ((this.getActivityDefId() != 'startActivity')&&(this.getActivityDefId()!='finishActivity')){
		nui.open({showMaxButton : true,
	                url:"<%=request.getContextPath()%>/taskcenter/workItemsDetail.jsp",
	                title: "工作项详情",
	                width: 650,
	                height: 200,
	                onload: function (){
				      var data = {currentActInstId: actInstId};
	            	  var iframe = this.getIFrameEl();
	                  iframe.contentWindow.SetData(data); 
					},
	                ondestroy: function (action) {
	                if(action=="ok"){
			           grid.reload();
		              }
	                }
		     }); 
			} 
	};
chart.prototype.onmouseout=function(){
	// zxh 查看流程图日志信息
	$("#info").hide();
}
	chart.prototype.onmouseover=function()
	{
	
	var actInstId = this.getActivityIntId();
	var posi= $(this.object).position();
	//活动实例ID
	if(!actInstId){return;};
		if ((this.getActivityDefId() != 'startActivity')&&(this.getActivityDefId()!='finishActivity')){
		// zxh 查看流程图日志信息
	//setTimeout(function(){
	  var data = {currentActInstId: actInstId};
	 nui.ajax({
	     url: "com.cgn.components.bps.api.webservice.WorkItemManager.queryWorkItemByActivityinstid.biz.ext",
	     data:data,
	     type: "post",
	                contentType:"text/json",
	                success: function (data) {
	             	 var selectHtml = "<table class='bordered' ><thead><tr><th>参与者</th><th>到达时间</th><th>完成时间</th><th>耗时</th><th>处理意见</th></tr></thead>";

                        if (data.workItems.BPSWorkItemExpand) {
                            for (var i = 0; i < data.workItems.BPSWorkItemExpand.length; i++) {
                                var file = data.workItems.BPSWorkItemExpand[i];
								var endtime = file.endTime || "";
								var taketime = file.takeTime || "";
		
                                selectHtml += "<tr>";
                                selectHtml += "<td>" + file.partiName + "</td>";
                                selectHtml += "<td>" + file.startTime + "</td>";
                                selectHtml += "<td>" + endtime+ "</td>";
                                selectHtml += "<td>" + taketime + "</td>";
                                selectHtml += "<td>" + file.opinions + "</td>";
                                selectHtml += "</tr>";
                            }

                        } else {
                            selectHtml += "<tr><td colspan='5' style='text-align:center'>无处理信息</td></tr>";
                        }
                        selectHtml += "</table>";
                       
                        
                        //tip.setContent(selectHtml);
                        $("#info").html(selectHtml);
                        
                        var infowidth = $("#info").width();
                        var winWidth = $(window).width();
                        
                         if(infowidth<=(winWidth-(posi.left+5))){
                         	$("#info").css({'left':posi.left+5,'top':posi.top+60});
                         }else{
                         	$("#info").css({'right':5,'top':posi.top+60});
                         }
                         $("#info").show();
	                },
	                error: function (jqXHR, textStatus, errorThrown) {
	                    alert(jqXHR.responseText);
	                }
	            });
		// zxh 查看流程图日志信息
	//},300);
	}
	};
	
	function __cg(_this,value){
		window.parent.resetFlowchart(_this.value);
	}
	var zoom = "<%=request.getParameter("zoomQuotiety") %>";
	if(zoom==null || zoom=='' || zoom=='null'){
		zoom = "1.0";
	}
	$("#zoomQuotiety").val(zoom);
	
</script>
