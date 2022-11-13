<!-- 任务列表窗口 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/coframe/tools/lang.jsp"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>

<nav class='navbar navbar-default  patch'>
              <div class='container-fluid'>
                <div class='navbar-header'>
                    <button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#bs-example-navbar-collapse-1' aria-expanded='false'>
                      <span class='sr-only'>Toggle navigation</span>
                      <span class='icon-bar'></span>
                      <span class='icon-bar'></span>
                      <span class='icon-bar'></span>
                    </button>
                    <a class='navbar-brand' href='#'><b:message key="flow-transition"/></a>
                </div>
                <div class='collapse navbar-collapse' id='bs-example-navbar-collapse-1'>
                    <ul class='nav navbar-nav navbar-right'>
                        <li class='folding-toggle'>
                            <a href='#'><span class='fa fa-angle-up'></span></a>
                        </li>
                    </ul>
                </div>
              </div>
            </nav>
            <div class='accordion-container folding-menu' style='overflow: hidden;height:100px;'>
				<div class="nui-logsgrid" style="width:100%;height:100%;" processInstId='<b:write property="processInstId"/>'  timeFormat="d天 h时 m分 s秒" >
				    <div property="columns">
				    	<div type="indexcolumn" width="15"></div>
				        <div field="activityDefName" width="70" headerAlign="center" allowSort="false">活动名称</div>
				        <div field="userName" width="60" headerAlign="center" allowSort="false">参与者</div>
				        <div field="startTime" width="60" headerAlign="center" dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss" allowSort="false">到达时间</div> 
				        <div field="endTime"   width="60" headerAlign="center" dataType="date" dateFormat="yyyy-MM-dd HH:mm:ss"allowSort="false">完成时间</div> 
				        <div field="takeTime"  width="60" headerAlign="center" allowSort="false" >耗   时</div>  
				        <div field="opinions"  headerAlign="center" allowSort="false">处理意见</div>      
				    </div>
				</div>
			</div>