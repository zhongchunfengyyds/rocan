<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@page import="javax.servlet.ServletOutputStream"%>
<%@page import="java.io.*"%>
<%@page import="com.eos.web.taglib.util.*"%>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    //获取标签中使用的国际化资源信息
    //	Object root = com.eos.web.taglib.util.XpathUtil.getDataContextRoot("request", pageContext);
    //	String jsondata = (String) XpathUtil.getObjectByXpath(root,"jsondata");
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<html>
<%--
- Author(s): Sun
- Date: 2019-01-14 14:44:16
- Description:
    --%>

    <head>
        <title>
            大修执行条目查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
                             <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
        <script type="text/javascript" src="<%=request.getContextPath()%>/common/common.js"></script>
    </head>
    <body style="width:98%;height:99%;margin:0 auto;">
    <div class="bs-docs-section">
	<div class="search-box">
		<div class="search-container folding-menu" id="queryForm">
			<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;">
					<tr class="">
						<td class="form_label">关键字查询:</td>
						<td class="form_label"><input type="text" id="cond" name="processInstDesc:%" class="form-control Keywordsearch"
							 placeholder="关键字查询" tmplId="todolist" url=" "></td>
						<td colspan="1"
						style="width: 22%; border-right: 1px solid #f7f7f9 !important"
									class="form_label">
									<div property="footer" class="searchfooter" align="center">
										<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()">
											模糊查询 </a> <a id="allQuery" style="display: none"
											class="btn btn-default" onclick="searchs()"> 查询 </a> <a
											class="btn btn-default" onclick="reset()"> 重置 </a>
										<div onclick="showquery()" id="funquery"
											class="fa fa-chevron-down fa-1x">
											&nbsp;<a id="scbt">高级查询</a>
										</div>
									</div>
						</td>
						<td class="form_label" style="width: 40%;">
						<div style="float: left;text-align: left;">
								显示周期---年度<input class="nui-spinner" id="start" maxValue="2089" value="1991" minValue="1991" style="width: 55px" name="" />-年度<input
								 class="nui-spinner" id="end" maxValue="2089" minValue="1991" value="2089" style="width: 55px" name="" />
								<a  class="nui-button" onclick="searchs()" id="btnZq">
									修改显示周期
								</a>
							</div>
						</td>
					</tr>
				</table>
				<div id="overhaulform" class="nui-form display" align="center" style="height: 16%">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailySearch">
					<!-- 排序字段 -->
					<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="orderno">
					<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">检查分类:</td>
							<td colspan="1"><input class="nui-textbox" name="criteria/_expr[1]/parts" />
								<input class="nui-hidden" name="criteria/_expr[1]/_op" value="like"></td>
							<td class="form_label"> 功能位置:</td>
							<td colspan="1"><input class="nui-textbox" name="criteria/_expr[2]/equipment" />
								<input class="nui-hidden" name="criteria/_expr[2]/_op" value="like"></td>
						</tr>
						<tr>
							<td class="form_label">维护项目:</td>
							<td colspan="1"><input id="detailed" class="nui-textbox" name="criteria/_expr[3]/detailed" />
								<input class="nui-hidden" name="criteria/_expr[3]/_op" value="like"></td>
							<td class="form_label">轮次&状态:</td>
							<td colspan="1"><input id="combo1" class="nui-combobox" style="width:45%;" valueField="id" required="true"
								 allowInput="true" textField="text" pinyinField="tag">
								<div id="combobox2" class="nui-combobox" style="width:50%;" popupWidth="150" textField="name" valueField="id"
								 url="" multiSelect="true" showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
									<div property="columns">
										<div header="状态" field="name"></div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td class="form_label">数据状态:</td>
							<td colspan="1"><input id="sjzt" class="nui-dictcombobox" style="width:100%;" dictTypeId="SJZT" /></td>
							<td colspan="1" style="display: none">
								<input id="parts" class="nui-textbox" name="criteria/_expr[4]/parts" />
								<input class="nui-hidden" name="criteria/_expr[4]/_op" value="=">
							</td>
							<td colspan="1" style="display: none">
								<input id="protype" class="nui-textbox" name="criteria/_expr[5]/protype" />
								<input class="nui-hidden" name="criteria/_expr[5]/_op" value="=">
								<input style="display: none" id='baseid' class="nui-textbox" name="criteria/_expr[6]/base" />
								<input class="nui-hidden" name="criteria/_expr[6]/_op" value="=">
								<input style="display: none" id='crewid' class="nui-textbox" name="criteria/_expr[7]/crew" />
								<input class="nui-hidden" name="criteria/_expr[7]/_op" value="=">
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
</div>
    
     <%--   <div class="bs-docs-section" >
     <div id="overhaulform" class="nui-form" align="left" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailySearch">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="orderno">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
	<div class="search-box">
	    <div class="navbar navbar-default query-form">
	        <div class="container-fluid">
	            <div class="collapse navbar-collapse">
	                <div class="navbar-header">
	                    <div class="navbar-brand" style="padding-top:0;padding-bottom:0;">
	                    	<div class="navbar-form navbar-left">
	                            <div class="input-group">
	                              <input type="text" id="cond" name="processInstDesc:%" class="form-control"  placeholder="关键字查询" tmplId="todolist" url=" " >
	                              <span class="input-group-btn" style="width:auto;">
	                                <button class="btn btn-default" type="button" id="query" onclick="btnQuery();" style="height: 34px;"><span class="fa fa-search"></span></button>
	                              </span>
	                            </div>
	                        </div>
	                    	<span class="adv-search">高级搜索</span>
	                    </div>
	                </div>
	                  <div style="float:left;">
                 	年度<input class="nui-spinner"  id="start" maxValue="2089" value="1991" minValue="1991" style="width: 90px" name=""/>-年度<input class="nui-spinner"  id="end" maxValue="2089" minValue="1991" value="2089" style="width: 90px" name=""/>
							<a class="nui-button" onclick="search()" id="btnZq">
				               修改显示周期
				            </a>
	                </div>
	                <ul class="nav navbar-nav navbar-right">
	                    <li>
	                        <a href="#" class="dw-toggle ">
	                            <span class="fa fa-angle-up fa-angle-down"></span>
	                        </a>
	                    </li>
	                </ul>
	            </div>
	        </div>
	    </div>
	    <div class="search-container folding-menu" style="overflow: hidden;display:none;" id="queryForm"> 
	        <div class="row">
	            <!-- <div class="form-group"> -->
	              <div>
	                <div class="form-group text-right">
	                    <table>
	                     
                    <tr>
                        <td class="form_label col-sm-1">
                            检查分类:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/parts"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                        </td>
                        <td class="form_label col-sm-2">
                            功能位置:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/equipment"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                        </td>
                        <td class="form_label col-sm-2">
                            维护项目:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/detailed"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                        </td>
                        <td class="form_label col-sm-2">
                            轮次&状态:
                        </td>
                        <td colspan="1" class="col-sm-3 text-left" style="padding-left:0px">
                            <input id="combo1" class="nui-combobox" style="width:50px;" valueField="id" 
						    required="true" allowInput="true" 
						    textField="text"  pinyinField="tag">
						    <div id="combobox2" class="nui-combobox" style="width:100px;"  popupWidth="150" textField="name" valueField="id" 
							     url=""  multiSelect="true"  
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
							     <div property="columns">
							         <div header="状态" field="name"></div>
							     </div>
							</div>
                        </td>
                        </tr>
                        <tr>
                        <td class="form_label col-sm-2" style="padding-top:5px;padding-bottom: 10px;">
	                            数据状态:
	                        </td>
		                   <td colspan="1" style="padding-top:5px;">
	                            <input id="sjzt" class="nui-dictcombobox"  dictTypeId="SJZT"/>
	                        </td>
                        <!-- </tr>
                        <tr> -->
                        <td colspan="1" style="display: none">
                            <input id="parts" class="nui-textbox" name="criteria/_expr[4]/parts"/>
                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="=">
                        </td>
                        <td colspan="1" style="display: none">
                            <input id="protype" class="nui-textbox" name="criteria/_expr[5]/protype"/>
                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="=">
                            <input style="display: none" id='baseid' class="nui-textbox" name="criteria/_expr[6]/base"/>
					        <input class="nui-hidden" name="criteria/_expr[6]/_op" value="=">
					        <input style="display: none" id='crewid' class="nui-textbox" name="criteria/_expr[7]/crew"/>
					        <input class="nui-hidden" name="criteria/_expr[7]/_op" value="=">
                        </td> 
                       
				       
	                  <td style="position:absolute;right:30px;">
				             <div class="form-group text-right">
	                    <a class="nui-button btn btn-default btn-xs" onclick="search()">
	                <span class="fa fa-search"></span>查询
	            </a>
	            <a class="nui-button btn btn-default btn-xs" onclick="reset()">
	                <span class="fa fa-rotate-left"></span>重置
	            </a>
	            
	                </div>
				         </td>
                    </tr>
	                   
                      </table>
	            
	            
	            
	                </div>
	            </div>
                        
	        </div>
	        
	    </div>
	    
	    <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
	</div>
	</div>
	</div> --%>
	
	
	<div region="center"  style="width:100%;height:88%;"  showToolbar="false" showFooter="false" >
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;width:100%;"  name="ITMP_btn">
                <table style="width:100%;">
                    <tr>
                        <td style="width:77%;padding:5px 0;">
                              <a id="add" class="nui-button btn btn-default btn-xs" onclick="add()" name="ITMP_btnAddOne">
                                新增
                            </a>
                            <a id="update" class="nui-button btn btn-default btn-xs" onclick="edit()" name="ITMP_btnEdit">
                               修改
                            </a>
                            <a  class="nui-menubutton btn btn-default btn-xs" menu="#popupMenu" id="planupdate" name="ITMP_btnPlan">
                               计划更新
                            </a>
                            <ul id="popupMenu" class="nui-menu" style="display:none;">
			                	<li id="complete" name="ITMP_btnPlanFulfil" onclick="planupdate('1');">计划完成</li>
						        <li id="cancel"   name="ITMP_btnPlanCancel" onclick="planupdate('2');">计划取消</li>
					    	</ul>
                            <a id="openrecord" class="nui-button btn btn-default btn-xs" onclick="openrecord();" name="ITMP_btnHis">
                                变更履历
                            </a>
                            <a class="nui-button btn btn-default btn-xs"  onclick="synchronous"  name="ITMP_btnSync">
                                同步
                            </a>
                            <a class="nui-button btn btn-default btn-xs"  onclick="batchAdd()" name="ITMP_btnAddBatch">
                                导入
                            </a>
                            <a class="nui-button btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp">
                                导出
                            </a>
                            <a class="nui-button btn btn-default btn-xs"  onclick="remove()" name="ITMP_btnDel">
                              删除
                            </a>
                            <a class="nui-button btn btn-default btn-xs" onclick="recover();"  name="ITMP_btnRec">
                                回收站
                            </a>
                            <a class="nui-button btn btn-default btn-xs" onclick="edition();" name="ITMP_btnUp">
                                升版
                            </a>
                            
                            
                        </td>
                     <!--    <td>
                        	年度<input class="nui-spinner"  id="start" maxValue="2089" value="1991" style="width: 70px" name=""/>-年度<input class="nui-spinner"  id="end" maxValue="2089" value="2089" style="width: 70px" name=""/>
							<a class="nui-button" onclick="search()">
				               周期
				            </a>
				         </td> -->
                    </tr>  
                </table>
            </div> 
                       
      <div class="nui-layout" style="width:100%;height:100%;" > 
		 <div  region="west" width="250" title="日常执行条目">
        <div class="nui-fit">
        	<ul id="tree1" expandOnNodeClick="true" class="leftmenu inleftmenu nui-tree" resultAsTree="false" style="width:100%;height:100%;" idField="id" parentField="parentid" 
            	dataField="jsondata" textField="name" url="">
			</ul>
		</div>
    	</div>
    	<div title="center" region="center" >
        	<div class="nui-panel" title="数据列表"   style="width:100%;height:100%;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdgglsnjhcgdrcs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.queryTdgglsnjhcgdrcs.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageInfo="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false"allowAlternating="true">

                    <div property="columns">
                    	<div type="checkcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false" Align="center">
                            id
                        </div>
                        <div field="processInstId" headerAlign="center" allowSort="true" visible="false" Align="center">
                            processInstId
                        </div>
                        <div field=processstatus headerAlign="center" Align="center" allowSort="true" visible="false">
                            processstatus
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false" Align="center">
                            序号
                        </div>
                        <div field="datetime" headerAlign="center" allowSort="true" visible="false" dateFormat="yyyy-MM-dd HH:mm:ss" Align="center">
                            日期
                        </div>
                        <div field="base" headerAlign="center" allowSort="true" visible="false" Align="center">
                            基地
                        </div>
                        <div field="crew" headerAlign="center" allowSort="true" visible="false" Align="center">
                            机组
                        </div>
                        <div field="protype" headerAlign="center" allowSort="true" visible="false" Align="center">
                            项目类型
                        </div>
                        <div field="mintenanceproject"  headerAlign="center" allowSort="true" Align="center">
                            任务清单
                        </div>
                        
                        <div field="workorder"  headerAlign="center" allowSort="true" Align="center">
                            大纲工单
                        </div>
                        <div field="mintenanceplan"  headerAlign="center" allowSort="true" Align="center">
                            维护计划
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" Align="center">
                            维护项目
                        </div>
                        <div id="parts" visible="false" name="parts" field="parts" headerAlign="center" allowSort="true" Align="center">
                            检查分类
                        </div>
                        <div field="equipmentno" headerAlign="center" allowSort="true" width="140">
                           设备编号/功能位置
                        </div>
                        <div field="equipment" headerAlign="center" allowSort="true">
                           设备名称
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true">
                            检查内容
                        </div>
                        
                        <div field="period" headerAlign="center" allowSort="true" Align="center">
                           周期
                        </div>
                        <div field="inspectplan" renderer="lxRenderer"  headerAlign="center" allowSort="true" Align="center" width="130">
                           专用检查计划
                        </div>
                        <div field="edition"  headerAlign="center" allowSort="true" Align="center" width="40">
                           版次
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true">
                            备注
                        </div>
                        
                          <div field="n1991" name="n1991" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            1991
                        </div>
                        <div field="n1992" name="n1992" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            1992
                        </div>
                        <div field="n1993" name="n1993" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            1993
                        </div>
                        <div field="n1994" name="n1994" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            1994
                        </div>
                        <div field="n1995" name="n1995" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            1995
                        </div>
                        <div field="n1996" name="n1996" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            1996
                        </div>
                        <div field="n1997" name="n1997" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            1997
                        </div>
                        <div field="n1998" name="n1998" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            1998
                        </div>
                        <div field="n1999" name="n1999" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            1999
                        </div>
                        <div field="n2000" name="n2000" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2000
                        </div>
                        <div field="n2001" name="n2001" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2001
                        </div>
                        <div field="n2002" name="n2002" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2002
                        </div>
                        <div field="n2003" name="n2003" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2003
                        </div>
                        <div field="n2004" name="n2004" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2004
                        </div>
                        <div field="n2005" name="n2005" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2005
                        </div>
                        <div field="n2006" name="n2006" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2006
                        </div>
                        <div field="n2007" name="n2007" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2007
                        </div>
                        <div field="n2008" name="n2008" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2008
                        </div>
                        <div field="n2009" name="n2009" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2009
                        </div>
                        <div field="n2010" name="n2010" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2010
                        </div>
                        <div field="n2011" name="n2011" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2011
                        </div>
                        <div field="n2012" name="n2012" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2012
                        </div>
                        <div field="n2013" name="n2013" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2013
                        </div>
                        <div field="n2014" name="n2014" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2014
                        </div>
                        <div field="n2015" name="n2015" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40" >
                            2015
                        </div>
                        <div field="n2016" name="n2016" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2016
                        </div>
                        <div field="n2017" name="n2017" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2017
                        </div>
                        <div field="n2018" name="n2018" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2018
                        </div>
                        <div field="n2019" name="n2019" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2019
                        </div>
                        <div field="n2020" name="n2020" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2020
                        </div>
                        <div field="n2021" name="n2021" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2021
                        </div>
                        <div field="n2022" name="n2022" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2022
                        </div>
                        <div field="n2023" name="n2023" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2023
                        </div>
                        <div field="n2024" name="n2024" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2024
                        </div>
                        <div field="n2025" name="n2025" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2025
                        </div>
                        <div field="n2026" name="n2026" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2026
                        </div>
                        <div field="n2027" name="n2027" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2027
                        </div>
                        <div field="n2028" name="n2028" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2028
                        </div>
                        <div field="n2029" name="n2029" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2029
                        </div>
                        <div field="n2030" name="n2030" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2030
                        </div>
                        <div field="n2031" name="n2031" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2031
                        </div>
                        <div field="n2032" name="n2032" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2032
                        </div>
                        <div field="n2033" name="n2033" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2033
                        </div>
                        <div field="n2034" name="n2034" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2034
                        </div>
                        <div field="n2035" name="n2035" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2035
                        </div>
                        <div field="n2036" name="n2036" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2036
                        </div>
                        <div field="n2037" name="n2037" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2037
                        </div>
                        <div field="n2038" name="n2038" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2038
                        </div>
                        <div field="n2039" name="n2039" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2039
                        </div>
                        <div field="n2040" name="n2040" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2040
                        </div>
                        <div field="n2041" name="n2041" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2041
                        </div>
                        <div field="n2042" name="n2042" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2042
                        </div>
                        <div field="n2043" name="n2043" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2043
                        </div>
                        <div field="n2044" name="n2044" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2044
                        </div>
                        <div field="n2045" name="n2045" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2045
                        </div>
                        <div field="n2046" name="n2046" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2046
                        </div>
                        <div field="n2047" name="n2047" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2047
                        </div>
                        <div field="n2048" name="n2048" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2048
                        </div>
                        <div field="n2049" name="n2049" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2049
                        </div>
                        <div field="n2050" name="n2050" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2050
                        </div>
                        <div field="n2051" name="n2051" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2051
                        </div>
                        <div field="n2052" name="n2052" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2052
                        </div>
                        <div field="n2053" name="n2053" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2053
                        </div>
                        <div field="n2054" name="n2054" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2054
                        </div>
                        <div field="n2055" name="n2055" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2055
                        </div>
                        <div field="n2056" name="n2056" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2056
                        </div>
                        <div field="n2057" name="n2057" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2057
                        </div>
                        <div field="n2058" name="n2058" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2058
                        </div>
                        <div field="n2059" name="n2059" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2059
                        </div>
                        <div field="n2060" name="n2060" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2060
                        </div>
                        <div field="n2061" name="n2061" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2061
                        </div>
                        <div field="n2062" name="n2062" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2062
                        </div>
                        <div field="n2063" name="n2063" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2063
                        </div>
                        <div field="n2064" name="n2064" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2064
                        </div>
                        <div field="n2065" name="n2065" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2065
                        </div>
                        <div field="n2066" name="n2066" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2066
                        </div>
                        <div field="n2067" name="n2067" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2067
                        </div>
                        <div field="n2068" name="n2068" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2068
                        </div>
                        <div field="n2069" name="n2069" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2069
                        </div>
                        <div field="n2070" name="n2070" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2070
                        </div>
                        <div field="n2071" name="n2071" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2071
                        </div>
                        <div field="n2072" name="n2072" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2072
                        </div>
                        <div field="n2073" name="n2073" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2073
                        </div>
                        <div field="n2074" name="n2074" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2074
                        </div>
                        <div field="n2075" name="n2075" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2075
                        </div>
                        <div field="n2076" name="n2076" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2076
                        </div>
                        <div field="n2077" name="n2077" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2077
                        </div>
                        <div field="n2078" name="n2078" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2078
                        </div>
                        <div field="n2079" name="n2079" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2079
                        </div>
                        <div field="n2080" name="n2080" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2080
                        </div>
                        <div field="n2081" name="n2081" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2081
                        </div>
                        <div field="n2082" name="n2082" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2082
                        </div>
                        <div field="n2083" name="n2083" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2083
                        </div>
                        <div field="n2084" name="n2084" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2084
                        </div>
                        <div field="n2085" name="n2085" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2085
                        </div>
                        <div field="n2086" name="n2086" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2086
                        </div>
                        <div field="n2087" name="n2087" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2087
                        </div>
                        <div field="n2088" name="n2088" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2088
                        </div>
                        <div field="n2089" name="n2089" headerAlign="center" visible="false"  allowSort="true" Align="center" width="40">
                            2089
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

      </div>
        
<script type="text/javascript">

nui.parse();
function showquery() {
	var div = $("#overhaulform");
	div.slideToggle(500);
	$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
	if($("#scbt").text()=="高级查询"){
		$("#fuzzyQuery").hide();
		$("#allQuery").show();
		$("#scbt").text("隐藏查询条件");
	}else{
		$("#fuzzyQuery").show();
		$("#allQuery").hide();
		$("#scbt").text("高级查询");
	}
};

//按钮权限控制
accessControlButton('<%=userRoleCodeList %>',1);
var index = 8;
var parms = "";
nui.get("update").disable();
nui.get("add").disable();
var tree = nui.get("tree1");
var grid = nui.get("datagrid1"); 
var start = 1991;
var end = 2089;
var jdid = getCookie('jdid');
var jzid = getCookie('jzid');
	            nui.get('baseid').setValue(jdid);
	            nui.get('crewid').setValue(jzid);
if(jdid != '' && jzid != ''){
	var parms = "{baseid:"+jdid+",crewid:"+jzid+",type:n}";
	
	var urlStr = "com.cgn.itmp.basecommon.Common.getBaseCircle.biz.ext";
	$.ajax({
	    url:urlStr,
	    type:'POST',
	    cache:false,
	    data:parms,
	    contentType:'text/json',
	    success:function(data){
	    	var returnJson = nui.decode(data);
	    	if(returnJson.data.sucess){
	            start = returnJson.data.start;
	            end = parseInt(returnJson.data.end) > 2089 ? 2089 : parseInt(returnJson.data.end);
	            nui.get('start').setValue(start);
	            nui.get('end').setValue(end);

	            nui.get('tree1').setUrl("com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.getProtypeAndPartsData.biz.ext?baseid="+jdid+"&crewid="+jzid);
// 	            search();
		for(var i = parseInt(start);i <=  parseInt(end) ;i++){
						var colName = "n"+i;
						grid.showColumn(colName);
				}
			var formData = new nui.Form("#overhaulform").getData(false,false);
			//grid.load(formData);
	    	}
	    }
	});
}

var combobox2 = nui.get("combobox2");
if(jdid == "86"){
	combobox2.setAjaxType("POST");
	combobox2.load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=taishanbase");
}else{
	combobox2.setAjaxType("POST");
	combobox2.load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=otherbases");
}

var countrys = [];
for(var i =1991;i<=2089;i++){
	countrys.push({id:i,text:i,tag:i});
}
var combo = nui.get("combo1");
combo.setData(countrys); 
var parentid;
var parts;
tree.on("nodeselect", function (e) {
    if (e.isLeaf) {
       nui.get('parts').setValue(e.node.name);
	   parts=e.node.name;
       parentid = e.node.parentid;
       if('规范法定项目' == parentid){
    		parentid = 'GFFD';
    	}else if('规范非法定项目' == parentid){
    		parentid = 'GFFFD';
    	}
	   nui.get('protype').setValue(parentid);
       parms = "";
    } else {
       parts="";
       parentid = e.node.name;
       parms = e.node.name;
       nui.get('parts').setValue('');
       nui.get('protype').setValue(parms);
    }
    searchs();
});




$(function() {
	$('#add').attr('title',"请选择插入位置（之后）");
	$('#update').attr('title',"请选择需修改条目");
	$('#planupdate').attr('title',"大修结束后请及时进行计划更新");
	$('#btnZq').attr('title', "请修改要显示的周期范围");
});
       
       

//新增
function add() {
	var row = grid.getSelected();
	if (row) {
		nui.open({showMaxButton : true,
	        url: "/itmp/tenyearplan/ConventionalIsland/Daily/addForm.jsp",
	        title: "新增记录", width: 800, height: 400,
	        onload: function () {//弹出页面加载完成
		        var iframe = this.getIFrameEl();
		        var data = {pageType:"add",record:{tdgglsnjhcgdrc:row},parts:row.parts,protype:row.protype};//传入页面的json数据
		        iframe.contentWindow.setFormData(data);
	        },
	        ondestroy: function (action) {//弹出页面关闭前
	        	grid.reload();
	        	
    		}
    	});
	}else{
		nui.alert("请选中插入位置（之后）","提示");
	}
}

//编辑
function edit() {
    var row = grid.getSelected();
    if (row) {
        var json = {};
    	json.datas = row;
    	json.entityName = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit";
    	json.fieldName = "uuid";
    	json.relFieldName = "relid";
    	json.reason = "设备编号/功能位置";
    	json.tsName = "equipmentno";
    	json = nui.encode(json);
    	$.ajax({
                url:"com.cgn.itmp.basecommon.Common.getProcessStatus.biz.ext",
                type:'POST',
                data:json,
                cache:false,
                contentType:'text/json',
                success:function(data){
                	var returnJson = nui.decode(data);
                	if(returnJson.record != ''){
                		nui.alert(returnJson.record,"提示");
                	}else{
                		nui.open({showMaxButton : true,
			            url: "/itmp/tenyearplan/ConventionalIsland/Daily/editForm.jsp",
			            title: "编辑数据",
			            width: 800,
			            height: 400,
			            onload: function () {
			                var iframe = this.getIFrameEl();
			                var data = {pageType:"edit",record:{preData:row}};
			                //直接从页面获取，不用去后台获取
			                iframe.contentWindow.setFormData(data);
			                },
			                ondestroy: function (action) {
			                    grid.reload();
			                }
			                });
                	}
                }
            });
    } else {
        nui.alert("请选择需修改条目","提示");
    }
}

//计划更新
function planupdate(flag){

 var processDef = flag==1 ? 'com.cgn.itmp.outlineandplan.tenyearplan.snjhCgdRcPlanComplete' : 'com.cgn.itmp.outlineandplan.tenyearplan.snjhCgdRcPlanCancel';
nui.open({
			showMaxButton : true,
	        url: encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=id&reason=设备编号/功能位置&relFieldName=relid&tsName=equipmentno&planFlag="+flag+"&modelFlag="+8+"&entity=com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity&processName=十年计划（常规岛及BOP）_日常执行条目&middleEntity=com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit&processDef="+processDef),
	        title: flag == '1' ? '计划完成' : '计划取消', 
	        width: 1000, height: 650,
	        onload: function () {//弹出页面加载完成
		        var iframe = this.getIFrameEl();
		        var data = {parms:parms};//传入页面的json数据
		        iframe.contentWindow.setFormData(data);
	        },
	        ondestroy: function (action) {//弹出页面关闭前
	        	grid.reload();
	        	
    		}
    	});
    	
} 

//变更履历
function openrecord(){
	nui.open({showMaxButton : true,
            url: "/itmp/tenyearplan/ConventionalIsland/Daily/vitaeList.jsp",
            title: "变更履历",
            width: 1000,
            height: 520,
            onload: function () {
	                //var iframe = this.getIFrameEl();
	               // var data = {pageType:"edit",record:{tdgglentry:row}};
	                //直接从页面获取，不用去后台获取
	               // iframe.contentWindow.setFormData(data);
            },
            ondestroy: function (action) {
                grid.reload();
        	}
    });
}


//同步
function synchronous(){
	var row = grid.getSelected();
    if (row) {
    	var jsondata = '{"tdgglsnjhcgdrc":'+ nui.encode(row)+'}';
    	var urlStr = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.synchronous.biz.ext";
		$.ajax({
            url:urlStr,
            type:'POST',
            data:jsondata,
            cache:false,
            contentType:'text/json',
            success:function(data){
            	var returnJson = nui.decode(data);
            	if(returnJson.recordMap.success){
            		nui.alert("同步成功！","提示",function(e){
            			grid.reload();
//         				
            		});
            	}else{
            		nui.alert("无相关数据或关联周期无状态,同步失败！","提示");
            	}
            }
        });
    } else {
        nui.alert("请选择需要同步的项目","提示");
    }
}



var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
 
//删除
function remove(){
    var rows = grid.getSelecteds();
	if(rows.length > 0){
		var json = {};
    	json.datas = rows;
    	json.entityName = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit";
    	json.fieldName = "uuid";
    	json.relFieldName = "relid";
    	json.reason = "设备编号/功能位置";
    	json.tsName = "equipmentno";
    	json.token="<%=TokenUtil.getTokenString(request.getSession())%>";
    	json = nui.encode(json);
    	$.ajax({
                url:"com.cgn.itmp.basecommon.Common.getProcessStatus.biz.ext",
                type:'POST',
                data:json,
                cache:false,
                contentType:'text/json',
                success:function(data){
                	var returnJson = nui.decode(data);
                	if(returnJson.record != ''){
                		nui.alert(returnJson.record,"提示");
                	}else{
                		if(isadmin == 'true'){//管理员直接删除
						  nui.confirm("确定删除选中记录？","系统提示",
				                    function(action){
				                        if(action=="ok"){
				                            var fieldValue = "";
				                        	for(var i=0;i<rows.length;i++){
				                        		fieldValue += rows[i].uuid;
				                        		if(i<rows.length - 1)fieldValue +=",";
				                        	}
				                            var json = {};
				                            json.fieldName="id";
				                            json.fieldValue=fieldValue;
				                            json.upFieldName="isdelete";
				                            json.upFieldValue="1";
				                            json.entity="com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity";
				                            json = nui.encode(json);
				                            var url = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.updataInfoMationByFieldName.biz.ext";
				                            grid.loading("正在删除中,请稍等...");
				                            $.ajax({
				                                url:url,
				                                type:'POST',
				                                data:json,
				                                cache: false,
				                                contentType:'text/json',
				                                success:function(text){
				                                    var returnJson = nui.decode(text);
				                                    if(returnJson.exception == null){
				                                        grid.reload();
				                                        nui.alert("删除成功", "系统提示", function(action){
				                                            });
				                                        }else{
				                                            grid.unmask();
				                                            nui.alert("删除失败", "系统提示");
				                                        }
				                                    }
				                                    });
				                                }
				                                });
						}else{//非管理员需要走审批流程删除
						    		nui.open({showMaxButton : true,
						            url: "/itmp/outlineCommon/dgDelete/dgDeleteStart.jsp",
						            title: "删除",
						            width: 500,
						            height: 300,
						            onload: function () {
							                var iframe = this.getIFrameEl();
							                var data = {record:{tdgglentry:rows,processDefName:'com.cgn.itmp.outlineandplan.outline.common.deleteFDdgDxzxtm'
							                ,'processInstName':'十年计划(常规岛及BOP)_日常执行条目_删除','processInstDesc':'十年计划(常规岛及BOP)_日常执行条目_删除','entityType':'com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit','modelFlag':8}};
							                //直接从页面获取，不用去后台获取
							                iframe.contentWindow.setFormData(data);
				            },
				            ondestroy: function (action) {
				                grid.reload();
				                
				        	}
				    	});
						}
                	}
                }
            });
	}else{
        nui.alert("请至少选中一条记录！");
    }
}

//回收站
function recover(){
	nui.open({showMaxButton : true,
            url: "/itmp/tenyearplan/ConventionalIsland/Daily/recycleList.jsp",
            title: "回收站查询",
            width: 800,
            height: 400,
            onload: function () {
	                //var iframe = this.getIFrameEl();
	               // var data = {pageType:"edit",record:{tdgglentry:row}};
	                //直接从页面获取，不用去后台获取
	               // iframe.contentWindow.setFormData(data);
            },
            ondestroy: function (action) {
                grid.reload();
                
        	}
    });
}


//升版
function edition(){
	//判断是否有在升版流程中 的数据，若有，则不能升版
	 var data = {};
	 var fields = ['modelFlag','processStatus','jdid','jzid'];
	 var values = ['8','1',jdid,jzid];
	 data.entityType = "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
	 data.fields = fields;
	 data.values = values;
	 var json = nui.encode(data);
	 
	$.ajax({
	    url:"com.cgn.itmp.basecommon.Common.queryCountByEntity.biz.ext",
	    type:'POST',
	    cache:false,
	    data:json,
	    contentType:'text/json',
	    success:function(data){
	   		 var count = data.count;
	   			if(count > 0){
	   				nui.alert("该基地升版流程正在审批中,不能升版","提示");
	   			}else{
						nui.open({
							showMaxButton : true,
				            url: "/itmp/outlineCommon/dgEdition/edtionStart.jsp?modelFlag=8&entity=com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity&basename=base&crewname=crew&editionname=edition",
				            title: "升版",
				            width: 500,
				            height: 330,
				            onload: function () {
				
				            },
				            ondestroy: function (action) {
				                grid.reload();
				        	}
				    	});
	   			}
	   		}
	});
}

//重新刷新页面
function refresh(){
    var form = new  nui.Form("#overhaulform");
    var json = form.getData(false,false);
    grid.load(json);//grid查询
    nui.get("update").enable();
    nui.get("add").enable();
}

//查询
function searchs() {
	var processStatus = nui.get('sjzt').getValue();
	var zt = "";
	if("0" == processStatus){
		zt += '"criteria/_expr[8]/_op":"<>"';
		zt += ',"criteria/_expr[8]/processstatus":"1"';
	}else if("1" == processStatus){
		zt += '"criteria/_expr[8]/_op":"="';
		zt += ',"criteria/_expr[8]/processstatus":"1"';
	}
	if(jdid != '' && jzid != ''){
		var start = nui.get('start').getValue();
		var end = nui.get('end').getValue();
			if(start > end){
			nui.get('start').setValue(end);
			start = end;
		} 
		
		 for(var i = 1991;i <= 2089;i++){
			var colName = "n"+i;
			grid.hideColumn(colName);
		}

		for(var i = parseInt(start);i <=  parseInt(end) ;i++){
				var colName = "n"+i;
				grid.showColumn(colName);
		}
// 		if(start > end){
// 			nui.get('start').setValue(end);
// 			start = end;
// 		} 
// 		for(var i = 1991;i <= 2089 ;i++){
// 				var colName = "n"+i;
// 				grid.showColumn(colName);
// 			}
// 		if(start != ''){
// 			for(var i = 1991;i < start;i++){
// 				var colName = "n"+i;
// 				grid.hideColumn(colName);
// 			}
// 		}
// 		if(end != ''){
// 			if(end < 2089){
// 				end++;
// 				for(var i = end;i <=2089;i++){
// 					var colName = "n"+i;
// 					grid.hideColumn(colName);
// 				}
// 			} 
// 		}
	    var combo1 = nui.get("combo1").getValue();;
		var combobox2 = nui.get("combobox2").getValue();
		var queryJ = "";
		if(combobox2 != null && combobox2 != ''){
			combobox2 = combobox2.split(",");
			for(var i = 0;i < combobox2.length;i++){
				if(i>0)queryJ+=",";
				var lcValue = combobox2[i];
				if(lcValue == 'P'){
					queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
					queryJ += ',"criteria/_or[1]/_expr['+ index +']/n'+ combo1 +  '":"'+lcValue+',"';
					index++;
					queryJ+=",";
					queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"="';
					queryJ += ',"criteria/_or[1]/_expr['+ index +']/n'+ combo1 +  '":"'+lcValue+'"';
					index++;
				}else if(lcValue == 'S'){
					queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
					queryJ += ',"criteria/_or[1]/_expr['+ index +']/n'+ combo1 +  '":"'+lcValue+',"';
					index++;
					queryJ+=",";
					
					queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
					queryJ += ',"criteria/_or[1]/_expr['+ index +']/n'+ combo1 +  '":",'+lcValue+',"';
					index++;
					queryJ+=",";
					
					queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"="';
					queryJ += ',"criteria/_or[1]/_expr['+ index +']/n'+ combo1 +  '":"'+lcValue+'"';
					index++;
				}else{
					queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
					queryJ += ',"criteria/_or[1]/_expr['+ index +']/n'+ combo1 +  '":"'+lcValue+'"';
					index++;
				}
			}
		}
	   var form = new nui.Form("#overhaulform");
	    var json = form.getData(false,false);
	    var jsonstr = nui.encode(json);
	    var str = jsonstr.substr(0,jsonstr.length-1);
	    if(zt != '')str += ","+zt;
	    if(queryJ != '')str += ","+queryJ;
	    str = nui.decode(str+"}");
	    grid.load(nui.decode(str));//grid查询
	}
	
    
}

//重置查询条件
function reset(){
$("#cond").val('');
    var form = new nui.Form("#overhaulform");//将普通form转为nui的form
    form.reset();
    nui.get('start').setValue(start);
	nui.get('end').setValue(end);
	nui.get('baseid').setValue(jdid);
    nui.get('crewid').setValue(jzid);
    nui.get('parts').setValue(parts);
	nui.get('protype').setValue(parentid);
}

//enter键触发查询
function onKeyEnter(e) {
    searchs();
}

//当选择列时
function selectionChanged(){
    var rows = grid.getSelecteds();
    if(rows.length>1|| rows.length==0){
        nui.get("update").disable();
        nui.get("add").disable();
    }else{
        nui.get("update").enable();
        nui.get("add").enable();
    }
}

 
 function output(){
    var form = new nui.Form("#overhaulform");
    var json = form.getData(false,false);
    var filterField = "processstatus,datetime,uuid,orderno,processinstid,creator,reason,isdelete,itemno";
	for(var i=1;i<parseInt(start);i++){
		if(i<=start)filterField += ",";
		var clc = "n"+i;
		filterField += clc;
	}
	for(var k=parseInt(end)+1;k<=2089;k++){
		if(k<=2089)filterField += ",";
		var clc = "n"+k;
		filterField += clc;
	}
	var defaultCheck="detailed,inspectionscope,equipmentno";
    nui.open({showMaxButton : true,
        url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
        title: "导出数据", width: 600, height: 500,
        onload: function () {//弹出页面加载完成
        var iframe = this.getIFrameEl();
        var data = {
                entityName:"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailySearch",
                queryParam:json,								    //查询数据
                queryKey:'criteria',                              //查询实体名
                query:['parts','equipment','detailed','parts','protype','base','crew'],  //按顺序放置
                expTitle:"十年计划(常规岛及BOP)日常执行条目",
                filterField:[filterField],
                dicFieds : "inspectplan@option",
                order: "orderno@asc",
                jdFieds:"base",
            	jzFieds:"crew",
                defaultCheck:[defaultCheck]
        };//传入页面的json数据
            iframe.contentWindow.setFormData(data);
        },
        ondestroy: function (action) {//弹出页面关闭前
                grid.reload();
        }
    });
 }
 
 //导入
function batchAdd(){

	 var data = {};
	 data.modelFlag = "8";
	 data.jdid = jdid;
	 data.jzid = jzid;
	 var json = nui.encode(data);
	$.ajax({
	    url:"com.cgn.itmp.basecommon.Common.queryCountByModelFlag.biz.ext",
	    type:'POST',
	    cache:false,
	    data:json,
	    contentType:'text/json',
	    success:function(data){
	   		 var count = data.count;
	   			if(count > 0){
	   				nui.alert("该基地数据已存在,不能导入","提示");
	   			}else{
					nui.open({showMaxButton : true,
        url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
        title: "新增记录", width: 600, height: 300,
        onload: function () {//弹出页面加载完成
        	var iframe = this.getIFrameEl();
            var data = {
            	pageType:"batchAdd",
            	tempFileName:"sncgdrczxtm.xlsx",
            	tempLoadName:"十年计划常规岛及BOP日常执行条目导入模板",
            	entitfName:"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity"
            };//传入页面的json数据
             iframe.contentWindow.SetData(data);
        },
        ondestroy: function (action) {//弹出页面关闭前
        grid.reload();
        tree.reload();
    }
});
	   			
	   			}
	   		}
	});
	

}
function lxRenderer(e) {
	return nui.getDictText("option", e.value);
}
	function onCloseClick(e) {
						    var obj = e.sender;
						    obj.setText("");
						    obj.setValue("");
						}
		//关键字
		function btnQuery() {
			var wordVal = $("#cond").val();
			if(wordVal == ''){
				searchs();
				return;
			}
			var data = {
				matchFied : "itemno,inspectionscope,detailed,edition,remark,inspectplan,equipment,period,equipmentno",
				wordVal : wordVal,
				entity : $("input[name='criteria/_entity']").val(),
				entityName : 'criteria',
				jdInfo : 'base@' + getCookie('jdid'),
				jdInfo : 'crew@' + getCookie('jzid')
			};
			var query = nui.decode(getKeyWordQuery(data));
			query["criteria/_and[1]/_expr[2]/protype"]=nui.get("protype").value;
			query["criteria/_and[1]/_expr[2]/_op"]="=";
			query["criteria/_and[1]/_expr[3]/parts"]=nui.get("parts").value;
			query["criteria/_and[1]/_expr[3]/_op"]="=";
			grid.load(query);
		}						
         </script>
    </body>
</html>