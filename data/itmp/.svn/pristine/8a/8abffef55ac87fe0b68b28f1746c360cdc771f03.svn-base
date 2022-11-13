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
							style="width: 20%; border-right: 1px solid #f7f7f9 !important"
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
						<td class="form_label">
						<div style="float: left;text-align: left;">
								显示周期C<input class="nui-spinner" id="start" maxValue="60" minValue="1" style="width: 70px" name="" />-C<input class="nui-spinner"
								 id="end" maxValue="60" minValue="1" style="width: 70px" name="" /> <a class="nui-button" onclick="searchs()" id="btnZq">
									修改显示周期 </a>
							</div>
						</td>
					</tr>
				</table>
				<div id="overhaulform" class="nui-form display" align="center" style="height: 16%">
					<!-- 数据实体的名称 -->
					<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulSearch">
					<!-- 排序字段 -->
					<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="orderno">
					<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
					<table id="table1" class="table" style="height: 100%">
						<tr>
							<td class="form_label">检查分类:</td>
							<td colspan="1"> <input class="nui-textbox" name="criteria/_expr[1]/parts" />
								<input class="nui-hidden" name="criteria/_expr[1]/_op" value="like"></td>
							<td class="form_label">功能位置:</td>
							<td colspan="1"> <input class="nui-textbox" name="criteria/_expr[2]/site" />
								<input class="nui-hidden" name="criteria/_expr[2]/_op" value="like"></td>
						</tr>
						<tr>
							<td class="form_label">数据状态:</td>
							<td colspan="1"><input id="sjzt" class="nui-dictcombobox" style="width:100%;" dictTypeId="SJZT" /></td>
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
							<td class="form_label"> 维护项目:</td>
							<td colspan="1"><input id="detailed" class="nui-textbox" name="criteria/_expr[3]/detailed" />
								<input class="nui-hidden" name="criteria/_expr[3]/_op" value="like"></td>
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
    
       <%-- <div class="bs-docs-section" >
    <div id="overhaulform" class="nui-form" align="left" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulSearch">
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
                  C<input class="nui-spinner"  id="start" maxValue="60" value="1" minValue="1" style="width: 70px" name=""/>-C<input class="nui-spinner"  id="end" maxValue="60"  minValue="1" value="60" style="width: 70px" name=""/>
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
                        
                        <td class="form_label col-sm-2" >
	                            数据状态:
	                        </td>
		                   <td colspan="1" >
	                            <input id="sjzt" class="nui-dictcombobox"  dictTypeId="SJZT"/>
	                        </td>
                        <!--<td class="form_label col-sm-2">
                           维护项目:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/detailed"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                        </td>-->
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
                        
                        <td class="form_label col-sm-2" >
                           维护项目:
                        </td>
                        <td colspan="1" >
                            <input class="nui-textbox" name="criteria/_expr[3]/detailed"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                        </td>
                        <!--<td class="form_label col-sm-2" style="padding-top:10px;">
	                            数据状态:
	                        </td>
		                   <td colspan="1" style="padding-top:10px;">
	                            <input id="sjzt" class="nui-dictcombobox"  dictTypeId="SJZT"/>
	                        </td>-->
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
                       
				        <!--  <td class="col-sm-3" colspan="12"> -->
				       
				             <div  style="position:absolute;right:63px;top:87px;">
	                    <a class="nui-button btn btn-default btn-xs" onclick="search()">
	                <span class="fa fa-search"></span>查询
	            </a>
	            <a class="nui-button btn btn-default btn-xs" onclick="reset()">
	                <span class="fa fa-rotate-left"></span>重置
	            </a>
	         
	                </div>
				        <!--  </td> -->
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
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;width:100%;" name="ITMP_btn">
                <table style="width:100%;">
                    <tr>
                        <td style="width:77%;padding:5px 0;">
                              <a id="add" class="nui-button btn btn-default btn-xs" onclick="add()"  name="ITMP_btnAddOne">
                                新增
                            </a>
                            <a id="update" class="nui-button btn btn-default btn-xs" onclick="edit()"  name="ITMP_btnEdit">
                               修改
                            </a>
                            <a  class="nui-menubutton btn btn-default btn-xs" menu="#popupMenu" id="planupdate"  name="ITMP_btnPlan">
                               计划更新
                            </a>
                            <ul id="popupMenu" class="nui-menu" style="display:none;">
			                	<li id="complete" name="ITMP_btnPlanFulfil" onclick="planupdate('1');">计划完成</li>
						        <li id="cancel"   name="ITMP_btnPlanCancel" onclick="planupdate('2');">计划取消</li>
					    	</ul>
                            <a id="openrecord" class="nui-button btn btn-default btn-xs" onclick="openrecord();" name="ITMP_btnHis">
                                变更履历
                            </a>
                            <a class="nui-button btn btn-default btn-xs"  onclick="synchronous" name="ITMP_btnSync">
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
                            <a class="nui-button btn btn-default btn-xs" onclick="recover();" name="ITMP_btnRec">
                               回收站
                            </a>
                            <a class="nui-button btn btn-default btn-xs" onclick="edition();" name="ITMP_btnUp">
                               升版
                            </a>
                            
                            
                        </td>
                     <!--    <td>
                        	C<input class="nui-spinner"  id="start" maxValue="60" value="1" style="width: 50px" name=""/>-C<input class="nui-spinner"  id="end" maxValue="60" value="60" style="width: 50px" name=""/>
							<a class="nui-button" onclick="search()">
				               周期
				            </a>
				         </td> -->
                    </tr>  
                </table>
            </div> 
                       
      <div class="nui-layout" style="width:100%;height:100%;" > 
		 <div  region="west" width="250" title="大修执行条目">
        <div class="nui-fit">
        	<ul id="tree1" expandOnNodeClick="true" class="leftmenu inleftmenu nui-tree" resultAsTree="false" style="width:100%;height:100%;" idField="id" parentField="parentid" 
            	dataField="jsondata" textField="name" url="">
			</ul>
		</div>
    	</div>
    	<div title="center" region="center" >
        	<div class="nui-panel" title="数据列表"  style="width:100%;height:100%;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tdgglsnjhcgddxs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.queryTdgglsnjhcgddxs.biz.ext"
                        pageSize="25"
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
                        <div field="datetime" visible="false" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" Align="center">
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
                        <div field="equipment" headerAlign="center" allowSort="true" >
                           设备名称
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true">
                            检查内容
                        </div>
                        <div field="period" headerAlign="center" allowSort="true" Align="center">
                           周期
                        </div>
                        <div field="itemno" visible="false" headerAlign="center" allowSort="true" width="40">
                            项号
                        </div>
                        <div field="inspectplan" renderer="lxRenderer" headerAlign="center" allowSort="true" Align="center">
                           专用检查计划
                        </div>
                        <div field="edition"  headerAlign="center" allowSort="true" Align="center" width="40">
                           版次
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                            <div field="c1" name="c1" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C1
                        </div>
                        <div field="c2" name="c2" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C2
                        </div>
                        <div field="c3" name="c3" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C3
                        </div>
                        <div field="c4" name="c4" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C4
                        </div>
                        <div field="c5" name="c5" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C5
                        </div>
                        <div field="c6" name="c6" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C6
                        </div>
                        <div field="c7" name="c7" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C7
                        </div>
                        <div field="c8" name="c8" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C8
                        </div>
                        <div field="c9" name="c9" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C9
                        </div>
                        <div field="c10" name="c10" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C10
                        </div>
                        <div field="c11" name="c11" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C11
                        </div>
                        <div field="c12" name="c12" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C12
                        </div>
                        <div field="c13" name="c13" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C13
                        </div>
                        <div field="c14" name="c14" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C14
                        </div>
                        <div field="c15" name="c15" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C15
                        </div>
                        <div field="c16" name="c16" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C16
                        </div>
                        <div field="c17" name="c17" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C17
                        </div>
                        <div field="c18" name="c18" headerAlign="center" allowSort="true" Align="center" width="34">
                            C18
                        </div>
                        <div field="c19" name="c19" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C19
                        </div>
                        <div field="c20" name="c20" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C20
                        </div>
                        <div field="c21" name="c21" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C21
                        </div>
                        <div field="c22" name="c22" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C22
                        </div>
                        <div field="c23" name="c23" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C23
                        </div>
                        <div field="c24" name="c24" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C24
                        </div>
                        <div field="c25" name="c25" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C25
                        </div>
                        <div field="c26" name="c26" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C26
                        </div>
                        <div field="c27" name="c27" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C27
                        </div>
                        <div field="c28" name="c28" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C28
                        </div>
                        <div field="c29" name="c29" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C29
                        </div>
                        
                        <div field="c30" name="c30" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C30
                        </div>
                        <div field="c31" name="c31" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C31
                        </div>
                        <div field="c32" name="c32" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C32
                        </div>
                        <div field="c33" name="c33" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C33
                        </div>
                        <div field="c34" name="c34" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C34
                        </div>
                        <div field="c35" name="c35" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C35
                        </div>
                        <div field="c36" name="c36" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C36
                        </div>
                        <div field="c37" name="c37" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C37
                        </div>
                        <div field="c38" name="c38" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C38
                        </div>
                        <div field="c39" name="c39" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C39
                        </div>
                        <div field="c40" name="c40" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C40
                        </div>
                        <div field="c41" name="c41" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C41
                        </div>
                        <div field="c42" name="c42" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C42
                        </div>
                        <div field="c43" name="c43" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C43
                        </div>
                        <div field="c44" name="c44" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C44
                        </div>
                        <div field="c45" name="c45" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C45
                        </div>
                        <div field="c46" name="c46" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C46
                        </div>
                        <div field="c47" name="c47" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C47
                        </div>
                        <div field="c48" name="c48" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C48
                        </div>
                        <div field="c49" name="c49" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C49
                        </div>
                        <div field="c50" name="c50" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C501
                        </div>
                        <div field="c51" name="c51" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C51
                        </div>
                        <div field="c52" name="c52" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C52
                        </div>
                        <div field="c53" name="c53" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C53
                        </div>
                        <div field="c54" name="c54" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C54
                        </div>
                        <div field="c55" name="c55" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C55
                        </div>
                        <div field="c56" name="c56" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C56
                        </div>
                        <div field="c57" name="c57" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C57
                        </div>
                        <div field="c58" name="c58" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C58
                        </div>
                        <div field="c59" name="c59" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C59
                        </div>
                        <div field="c60" name="c60" headerAlign="center" visible="false"  Align="center" allowSort="true" width="34">
                            C60
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
var start = 1;
var end = 60;
var jdid = getCookie('jdid');
var jzid = getCookie('jzid');
nui.get('baseid').setValue(jdid);
nui.get('crewid').setValue(jzid);
if(jdid != '' && jzid != ''){
	var parms = "{baseid:"+jdid+",crewid:"+jzid+"}";
	
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
	            end = returnJson.data.end;
	            nui.get('start').setValue(start);
	            nui.get('end').setValue(end);

	            nui.get('tree1').setUrl("com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.getProtypeAndPartsData.biz.ext?baseid="+jdid+"&crewid="+jzid);
// 	            search();
				for(var i = 1;i <=  60 ;i++){
						var colName = "c"+i;
						grid.hideColumn(colName);
				}
				for(var i = parseInt(start);i <=  parseInt(end) ;i++){
						var colName = "c"+i;
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

		   //combobox2.setValue("P,S");

            var countrys = [];
            for(var i =1;i<=60;i++){
            	countrys.push({id:'C'+i,text:'C'+i,tag:'C'+i});
            }
			var combo = nui.get("combo1");
			combo.setData(countrys);
var parentid;
var parts;
tree.on("nodeselect", function (e) {
    if (e.isLeaf) {
       //grid.load({"criteria/_entity": "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity","criteria/_expr[4]/parts" : e.node.name });
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
       //grid.load({"criteria/_entity": "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity","criteria/_expr[5]/protype" : parms });
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
	        url: "/itmp/tenyearplan/ConventionalIsland/Overhaul/addForm.jsp",
	        title: "新增记录", width: 800, height: 400,
	        onload: function () {//弹出页面加载完成
		        var iframe = this.getIFrameEl();
		        var data = {pageType:"add",record:{tdgglsnjhcgddx:row},parts:row.parts,protype:row.protype};//传入页面的json数据
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
			            url: "/itmp/tenyearplan/ConventionalIsland/Overhaul/editForm.jsp",
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

 var processDef = flag==1 ? 'com.cgn.itmp.outlineandplan.tenyearplan.snjhCgdDxPlanComplete' : 'com.cgn.itmp.outlineandplan.tenyearplan.snjhCgdDxPlanCancel';
nui.open({
			showMaxButton : true,
	        url: encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=id&reason=设备编号/功能位置&relFieldName=relid&tsName=equipmentno&planFlag="+flag+"&modelFlag="+7+"&entity=com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity&processName=十年计划（常规岛及BOP）_大修执行条目&middleEntity=com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit&processDef="+processDef),
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
            url: "/itmp/tenyearplan/ConventionalIsland/Overhaul/vitaeList.jsp",
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
    	var jsondata = '{"tdgglsnjhcgddx":'+ nui.encode(row)+'}';
    	var urlStr = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.synchronous.biz.ext";
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
				                            json.entity="com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity";
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
							                ,'processInstName':'十年计划(常规岛及BOP)_大修执行条目_删除','processInstDesc':'十年计划(常规岛及BOP)_大修执行条目_删除','entityType':'com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit','modelFlag':7}};
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
            url: "/itmp/tenyearplan/ConventionalIsland/Overhaul/recycleList.jsp",
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
	 var values = ['7','1',jdid,jzid];
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
				            url: "/itmp/outlineCommon/dgEdition/edtionStart.jsp?modelFlag=7&entity=com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity&basename=base&crewname=crew&editionname=edition",
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
		
		 for(var i = 1;i <= 60;i++){
			var colName = "c"+i;
			grid.hideColumn(colName);
		}

		for(var i = parseInt(start);i <=  parseInt(end) ;i++){
				var colName = "c"+i;
				grid.showColumn(colName);
		}
// 		if(start > end){
// 			nui.get('start').setValue(end);
// 			start = end;
// 		} 
// 		for(var i = 1;i <= 60 ;i++){
// 				var colName = "c"+i;
// 				grid.showColumn(colName);
// 			}
// 		if(start != ''){
// 			for(var i = 1;i < start;i++){
// 				var colName = "c"+i;
// 				grid.hideColumn(colName);
// 			}
// 		}
// 		if(end != ''){
// 			if(end < 60){
// 				end++;
// 				for(var i = end;i <=60;i++){
// 					var colName = "c"+i;
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
	queryJ += ',"criteria/_or[1]/_expr['+ index +']/'+ combo1.toLowerCase() +  '":"'+lcValue+',"';
	index++;
	queryJ+=",";
	queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"="';
	queryJ += ',"criteria/_or[1]/_expr['+ index +']/'+ combo1.toLowerCase() +  '":"'+lcValue+'"';
	index++;
}else if(lcValue == 'S'){
	queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
	queryJ += ',"criteria/_or[1]/_expr['+ index +']/'+ combo1.toLowerCase() +  '":"'+lcValue+',"';
	index++;
	queryJ+=",";
	
	queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
	queryJ += ',"criteria/_or[1]/_expr['+ index +']/'+ combo1.toLowerCase() +  '":",'+lcValue+',"';
	index++;
	queryJ+=",";
	
	queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"="';
	queryJ += ',"criteria/_or[1]/_expr['+ index +']/'+ combo1.toLowerCase() +  '":"'+lcValue+'"';
	index++;
}else{
	queryJ += '"criteria/_or[1]/_expr['+ index +']/_op":"like"';
	queryJ += ',"criteria/_or[1]/_expr['+ index +']/'+ combo1.toLowerCase() +  '":"'+lcValue+'"';
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
    if(rows.length>1 ||rows.length==0 ){
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
		var clc = "c"+i;
		filterField += clc;
	}
	for(var k=parseInt(end)+1;k<=60;k++){
		if(k<=60)filterField += ",";
		var clc = "c"+k;
		filterField += clc;
	}
	var defaultCheck="detailed,inspectionscope,equipmentno";
    nui.open({showMaxButton : true,
        url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
        title: "导出数据", width: 600, height: 500,
        onload: function () {//弹出页面加载完成
        var iframe = this.getIFrameEl();
        var data = {
                entityName:"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulSearch",
                queryParam:json,								    //查询数据
                queryKey:'criteria',                              //查询实体名
                query:['parts','equipment','detailed','parts','protype','base','crew'],  //按顺序放置
                expTitle:"十年计划(常规岛及BOP)大修执行条目",
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
	 data.modelFlag = "7";
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
            	tempFileName:"sncgddxzxtm.xlsx",
            	tempLoadName:"十年计划常规岛及BOP大修执行条目导入模板",
            	entitfName:"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity"
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
				search();
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
