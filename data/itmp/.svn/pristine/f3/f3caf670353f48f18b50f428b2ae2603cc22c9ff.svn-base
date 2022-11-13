<!Doctype html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>

<html xmlns=http://www.w3.org/1999/xhtml>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-08-03 16:24:27
  - Description: 发起任务--任务类型列表
-->
<head>
<title><b:message key="business-catalog"></b:message></title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome">
<style type="text/css">

		
</style>

 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/taskkind.css"/>

</head>
<body style="background:#f1f1f1;">
<div class="bs-docs-section">
<div class="process-by">
	<div class="demo-accordion" >
            <nav class="navbar navbar-default  patch">
              <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">常用流程</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li  class="folding-toggle">
                            <a href="#"><span class="fa fa-angle-up"></span></a>
                        </li>
                    </ul>
                </div>
              </div>
            </nav>
        
        <b:size name="commonSize" ignore="true"  property="commonlist/WFCommonFlow" toScope="page"/>
		<l:greaterThan property="commonSize" targetValue="0" scope="page">
	        <div class="accordion-container folding-menu">
	          <div class="row">
	          	<l:iterate id="p2" property="commonlist/WFCommonFlow" indexId="commonIndex">
		            <div class="col-sm-4">
		                <a href="javascript:void(0);" onclick="openFlowView(this);" processDefId='<b:write iterateId="p2" property="flowCode"/>' title='<b:write iterateId="p2" property="flowName"/>'><span class="fa fa-sitemap" ></span></a>
							&nbsp;<a href="javascript:void(0);" onclick="openClick(this)" processDefId='<b:write iterateId="p2" property="flowCode"/>' title='<b:write iterateId="p2" property="flowName"/>'><b:write iterateId="p2" property="flowName" /></a>
		            </div>
		            <l:notEqual scope="p" property="commonIndex" targetProperty="commonSize" targetPropertyType="scope">
		            	<l:modeEqual property="commonIndex" scope="p" divisor="3" remainder="0" >
		            		<div class="row"></div>
		            	</l:modeEqual>
		            </l:notEqual>
	          	</l:iterate>
	          </div>
	        </div>
        </l:greaterThan>
        <l:lessEqual property="commonSize" targetValue="0" scope="page">
        	<div class="accordion-container folding-menu">
	          <div class="row">
	          		<div class="col-sm-4">
		                未找到记录
		            </div>
	          </div>
	        </div>
        </l:lessEqual>
    </div>
    
    
    
    <l:iterate id="c11" property="list/PACSource">
    <l:equal iterateId="c11" property="pcatalogid" targetValue="1">
    <l:empty iterateId="c11" property="processdefid">
    
    
    	  <b:set name="countNum" value="0" />
          <b:set name="showFlag" value="0" />
          <b:set name="itIndex" value="0" />
          <l:iterate id="d12" property="list/PACSource">
			<l:equal iterateId="d12" property="pcatalogid" targetId="c11" targetProperty="catalogid">
				<l:empty iterateId="d12" property="processdefid"> 
			        
			          	<l:iterate id="d13" property="list/PACSource">
							<l:equal iterateId="d13" property="catalogid"
								targetId="d12" targetProperty="catalogid">
								<l:notEmpty iterateId="d13" property="processdefid">
						            <b:set name="showFlag" value="1" />
						            <b:set name="countNum" value="${countNum+1}" />
			          			</l:notEmpty>
							</l:equal>
						</l:iterate>
			         
		        </l:empty>
			</l:equal>
		</l:iterate>
		
    	<l:equal property="showFlag" targetValue="1">
	    <div class="demo-accordion " >
	            <nav class="navbar navbar-default  patch">
	              <div class="container-fluid">
	                <div class="navbar-header">
	                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	                      <span class="sr-only">Toggle navigation</span>
	                      <span class="icon-bar"></span>
	                      <span class="icon-bar"></span>
	                      <span class="icon-bar"></span>
	                    </button>
	                    <a class="navbar-brand" href="#"><b:write iterateId="c11" property="menuname" /></a>
	                </div>
	                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	                    <ul class="nav navbar-nav navbar-right">
	                        <li  class="folding-toggle">
	                            <a href="#"><span class="fa fa-angle-up"></span></a>
	                        </li>
	                    </ul>
	                </div>
	              </div>
	            </nav>
	            
	          
			
			
				<l:iterate id="c12" property="list/PACSource">
					<l:equal iterateId="c12" property="pcatalogid" targetId="c11" targetProperty="catalogid">
						<l:empty iterateId="c12" property="processdefid"> 
					        <div class="accordion-container folding-menu">
					          <div class="row">
					          	<l:iterate id="c13" property="list/PACSource">
									<l:equal iterateId="c13" property="catalogid"
										targetId="c12" targetProperty="catalogid">
										<l:notEmpty iterateId="c13" property="processdefid">
								            <div class="col-sm-4">
								                <a href="javascript:void(0);" onclick="openFlowView(this);" processDefId='<b:write iterateId="c13" property="processdefid"/>' title="<b:write iterateId="c13" property="processname" />"><span class="fa fa-sitemap" ></span></a>
								                &nbsp;<a href="javascript:void(0);" onclick="openClick(this)" processDefId='<b:write iterateId="c13" property="processdefid"/>' title="<b:write iterateId="c13" property="processname" />"><b:write iterateId="c13" property="processname" /></a>
								            	
								            </div>
								            <b:set name="itIndex" value="${itIndex+1}" />
								            <l:notEqual property="itIndex" targetProperty="countNum">
								            	<l:modeEqual property="itIndex" divisor="3" remainder="0" >
								            		<div class="row"></div>
								            	</l:modeEqual>
								            </l:notEqual>
								            
					          			</l:notEmpty>
									</l:equal>
								</l:iterate>
					          </div>
					        </div>
				        </l:empty>
					</l:equal>
				</l:iterate>
			
			
	        
	    </div>
	    
	    </l:equal>
    </l:empty>
    </l:equal>
    </l:iterate>
</div>
</div>

<div id="window" class="nui-window" showHeader="false"
		showToolbar="false" showFooter="false" allowResize="false"
		allowDrag="false" showCloseButton="true" showMaxButton="true"
		maskOnLoad="true" style="width: 100%; height: 100%"></div>
	<script type="text/javascript">
	var _CONTEXT_PATH = "<%=request.getContextPath()%>";
		$(function() {
			nui.parse();
						
			var window = nui.get("#window");
			window.show = function() {
				$("body").css("overflow", "hidden");
				nui.Window.prototype.show.apply(this, arguments);
				if (parent.cgnui) {
					parent.cgnui.addNavigationItem("<b:message key='create'/>"
							+ $this.text() + "<b:message key='task'/>",
							"icon-new", null);
				}
			};
			window.hide = function() {
				$("body").css("overflow", "auto");
				nui.Window.prototype.hide.apply(this, arguments);
				if (parent.cgnui) {
					parent.cgnui.removeLastNavigationItem();
				}
			};
		});

function openFlowView(el)
{
	$this = $(el);
	var processDefId=	$this.attr("processDefId");
	if(processDefId){
		showFlowView(processDefId);
	}
}

function showFlowView(id) {
	/* $("#chart-frame").attr(
			"src",
			"com.cgn.components.coframe.taskcenter.flowchart.flow?processDefName="
					+ id + "&contextPath=" + _CONTEXT_PATH);
	nui.get("#chart-dialog").show(); */
	window.top.showWin("com.cgn.components.coframe.taskcenter.flowchart.flow?processDefName=" + id + "&contextPath=" + _CONTEXT_PATH);
}
		
function openClick(el)
{		

		$this = $(el);
		var processDefId = $this.attr("processDefId");
		var processDefName = $this.attr("title");
		if (processDefId) {
		var window = nui.get("#window");
			window.setTitle("<b:message key='create'/>"
					+ $this.text()
							+ "<b:message key='task'/>");
			window
					.load("com.cgn.components.coframe.taskcenter.task.flow?processDefId="
							+ processDefId+"&processDefName="+processDefName);
			window.show();
		}
		return false;
	
}	
		
		
		
	</script>
</body>
</html>