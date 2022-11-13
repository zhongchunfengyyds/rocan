<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-10-15 14:08:31
- Description:
    --%>
     <%

    SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dateTime = df.format(new Date());
    IUserObject cu = CommonUtil.getUserObject();
    String username = cu.getUserRealName();
%>
    <head>
        <title>
            生效
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
     <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    </head>
    <body>
            <div id="form1" class="nui-form" align="center" >	
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.annual.NuclearIslandDailyCreate.PlanGeneration">
                <!-- 排序字段 -->
                 <input id="uuid" class="nui-hidden" name="uuid"/>
                               <input id="processinstid" class="nui-hidden" name="criteria/_expr[1]/processinstid"/>
        						<input class="nui-hidden" name="criteria/_expr[1]/_op" value="=">
        						<input id="ident" class="nui-hidden" name="criteria/_expr[2]/ident"/>
        						<input class="nui-hidden" name="criteria/_expr[2]/_op" value="=">
        						<!-- 排序字段 -->
                <input id="orderone" class="nui-hidden" name="criteria/_orderby[1]/_property" value="ndorderno">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
                <input id="ordertwo" class="nui-hidden" name="criteria/_orderby[2]/_property" value="orderno">
                <input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc">
            </div>
        <!--footer-->
       <div id="detailContainer" >
               <div id="form2" class="nui-form" align="center" style="height:100%">
		<div class="nui-toolbar" style="border-bottom: 0; padding: 0px;" name="ITMP_btn">
			<table style="width: 100%; height: 100%; table-layout: fixed;text-align: center;"
					class="nui-form-table" >
				<tr id="sqTr">
					<td class="form_label ">审核人员：</td>
					<td>
					 	<input id="jhry" class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" name="jhry" textName="jhry" required="true" style="width: 98%"/>    
					</td>
					<td class="form_label ">批准人员：</td>
					<td> 
						<input id="pzry" class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" name="pzry" textName="pzry" required="true" style="width: 98%"/>    
					</td>
					<td class="form_label ">抄送人员：</td>
					<td>
						 <input property="editor" id="csry" multi="false" name="csry" class="nui-textboxlist" dataField="list"
	                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext" valueField="empcode"
	                       textField="empcodename" searchField="keyword" style="width:100%"/>
					 </td>
				</tr>
				<tr>
	                <td>申请人:</td>
	                <td >
	                    <input id="sqr" readonly="readonly" class="nui-textbox" name="sqr" value="<%=username %>" style="width: 98%"/>
	                </td>
	                <td class="form_label">申请时间:</td>
	                <td>
	                    <input id="sqsj" readonly="readonly" class="nui-textbox"  name="sqsj" value="<%=dateTime%>" style="width: 98%"/>
	                </td>
	                <td></td>
           		</tr>
           		<tr>
           			<td colspan="6">
           				<div class="form-group text-right">
           					<a class="nui-button"  onclick="onOk('')" id="adminSave">
		            		       保存
		                    </a>
							<a class="nui-button btn btn-default btn-xs btn-submit" id="tj" type="button" onclick="onOk('manualActivity')">
								提交
							</a> 	
							<a class="nui-button"  onclick="onOk('')" id="btnSave">
		            		       保存至草稿
		                    </a>
							<a class="nui-button btn btn-default btn-xs btn-submit" type="button" onclick="onCancel()">
								<span class="fa fa-rotate-left"></span>关闭
							</a>
                		</div>
           			</td>
           		</tr>
			</table>
		</div>
		</div>
       
       <div class="nui-panel" title="规范法定检查项目清单" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.queryPlanGenerations.biz.ext"
                       showPager="false"
                        multiSelect="true"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                          <div field="indexcolumn" headerAlign="center" allowSort="true">
                            序号
                        </div>
                              <div field="workorder" headerAlign="center" allowSort="true" >
                            大纲工单
                        </div>
                            <div field="mintenanceplan" headerAlign="center" allowSort="true" >
                            维护计划
                        </div>
                            <div field="mintenanceproject" headerAlign="center" allowSort="true" >
                            任务清单
                        </div>
                             <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                             <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
        sap功能位置
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查项目描述
                        </div>
                         <div field="seat" headerAlign="center" allowSort="true" >
                            功能位置
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        
         <div class="nui-panel" title="规范非法定检测项目清单" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid2"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.queryPlanGenerations.biz.ext"
                     	showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">
                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                        <div field="indexcolumn" headerAlign="center" allowSort="true">
                            序号
                        </div>
                         <div field="workorder" headerAlign="center" allowSort="true" >
                            大纲工单
                        </div>
                            <div field="mintenanceplan" headerAlign="center" allowSort="true" >
                            维护计划
                        </div>
                            <div field="mintenanceproject" headerAlign="center" allowSort="true" >
                            任务清单
                        </div>
                             <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                             <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
        sap功能位置
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查项目描述
                        </div>
                         <div field="seat" headerAlign="center" allowSort="true" >
                            功能位置
                        </div> 
                    </div>
                </div>
            </div>
        </div>
         <div class="nui-panel" title="在役检查" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid3"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.queryPlanGenerations.biz.ext"
                       showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                              <div field="parts" headerAlign="center" allowSort="true" >
                            部件
                        </div>
                               <div field="referencefigureno" headerAlign="center" allowSort="true" >
                            参考图号
                        </div>
                            <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                          <div field="seat" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                            <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查内容/检查范围
                        </div>  
                        <div field="approachmode" headerAlign="center" allowSort="true" >
                            接近方式
                        </div>
						<div field="method" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                         <div field="program" headerAlign="center" allowSort="true" >
                            参考程序
                        </div>
                            <div field="tool" headerAlign="center" allowSort="true" >
                            专用工具
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                              <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                                                <div field="sapgnwz" headerAlign="center" allowSort="true" >
         sap功能位置
                        </div>
                          <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div class="nui-panel" title="水压检查" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid4"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.queryPlanGenerations.biz.ext"
                       showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                        <div field="parts" headerAlign="center" allowSort="true" >
                            部件
                        </div>
                         <div field="referencefigureno" headerAlign="center" allowSort="true" >
                            参考图号
                        </div>
                             <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                             <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查内容/检查范围
                        </div>
                          <div field="mapno" headerAlign="center" allowSort="true" >
                            流程图号/参考设备图/等轴图号
                        </div>
                           <div field="medium" headerAlign="center" allowSort="true" >
                            工作介质
                        </div>
                          <div field="operatingpressure" headerAlign="center" allowSort="true" >
                            运行压力（Bar）
                        </div>
                        <div field="designpressure" headerAlign="center" allowSort="true" >
                            设计压力（Bar）
                        </div>
                          <div field="testpressure" headerAlign="center" allowSort="true" >
                            试验压力（Bar）
                        </div>
                         <div field="site" headerAlign="center" allowSort="true" >
                            试验部位
                        </div>
                           <div field="testprocedure" headerAlign="center" allowSort="true" >
                            试验程序
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                              <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                            <div field="sapgnwz" headerAlign="center" allowSort="true" >
         sap功能位置
                        </div>
                           <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div class="nui-panel" title="规范非法定在役检查细化表" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid5"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.queryPlanGenerations.biz.ext"
                        showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                        <div field="parts" headerAlign="center" allowSort="true" >
                            部件
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="prosource" headerAlign="center" allowSort="true" >
                            项目来源
                        </div>
                        <div field="equipment" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="seat" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div field="mapno" headerAlign="center" allowSort="true" >
                            图号
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查内容/检查部件/检查要求
                        </div>
                        <div field="approachmode" headerAlign="center" allowSort="true" >
                          接近方式
                        </div>
                        <div field="method" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                        <div field="executionunit" headerAlign="center" allowSort="true" >
                            执行单位
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
            SAP功能位置
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div class="nui-panel" title="专用检查计划-焊缝（管道/支撑）" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid6"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.queryPlanGenerations.biz.ext"
                        showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field=gdh headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
                            SAP功能位置
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查项目名称
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="equipment" headerAlign="center" allowSort="true" >
                            设备
                        </div>
                        <div field="hfnumber" headerAlign="center" allowSort="true" >
                           焊缝号
                        </div>
                        <div field="number" headerAlign="center" allowSort="true" >
                            数量
                        </div>
                        <div field="gxnumber" headerAlign="center" allowSort="true" >
                         管线号
                        </div>
                        <div field="mapno" headerAlign="center" allowSort="true" >
                            参考图号/等轴图号
                        </div>
                        <div field="roomnumber" headerAlign="center" allowSort="true" >
                            房间号
                        </div>
                        <div field="method" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                        <div field="program" headerAlign="center" allowSort="true" >
                            检查程序
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="nui-panel" title="专用检查计划 - 焊缝（BOOS头）" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid7"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url=""
                        showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
                           SAP功能位置
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查项目名称
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="systemdevice" headerAlign="center" allowSort="true" >
                            系统设备
                        </div>
                        <div field="roomnumber" headerAlign="center" allowSort="true" >
                            房间号
                        </div>
                        <div field="category" headerAlign="center" allowSort="true" >
                            类别
                        </div>
                        <div field="ckt_dzhnumber" headerAlign="center" allowSort="true" >
                            等轴图号
                        </div>
                        <div field="gxnumber" headerAlign="center" allowSort="true" >
                            管线号
                        </div>
                        <div field="gj" headerAlign="center" allowSort="true" >
                            管径(mm)
                        </div>
                        <div field="hfnumber" headerAlign="center" allowSort="true" >
                            焊缝号
                        </div>
                        <div field="bw" headerAlign="center" allowSort="true" >
                            保温
                        </div>
                        <div field="cl" headerAlign="center" allowSort="true" >
                            材料
                        </div>
                        <div field="method" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                        <div field="program" headerAlign="center" allowSort="true" >
                           检查程序
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="nui-panel" title="专用检查计划 - 支撑/支架" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid8"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url=""
                        showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
                            SAP功能位置
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查项目名称
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="bracenumber" headerAlign="center" allowSort="true" >
                            支撑号
                        </div>
                        <div field="gxnumber" headerAlign="center" allowSort="true" >
                            管线号
                        </div>
                        <div field="referencefigureno" headerAlign="center" allowSort="true" >
                            参考图号
                        </div>
                        <div field="roomnumber" headerAlign="center" allowSort="true" >
                            房间号
                        </div>
                        <div field="method" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                        <div field="program" headerAlign="center" allowSort="true" >
                            检查程序
                        </div>
                        <div field="pmcycle" headerAlign="center" allowSort="true" >
                            PM周期
                        </div>
                        <div field="pmcode" headerAlign="center" allowSort="true" >
                            PM编码
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="nui-panel" title="专用检查计划  - 阀门" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid9"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url=""
                        showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
            SAP功能位置
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查项目名称
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="equipment" headerAlign="center" allowSort="true" >
                           设备/部件
                        </div>
                        <div field="seat" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div field="site" headerAlign="center" allowSort="true" >
                            检查部位
                        </div>
                        <div field="approachmode" headerAlign="center" allowSort="true" >
                            接近方式
                        </div>
                        <div field="gxnumber" headerAlign="center" allowSort="true" >
                           管线号
                        </div>
                        <div field="ckt_dzhnumber" headerAlign="center" allowSort="true" >
                            等轴图号
                        </div>
                        <div field="roomnumber" headerAlign="center" allowSort="true" >
                            房间号
                        </div>
                        <div field="method" headerAlign="center" allowSort="true" >
                           检查方法
                        </div>
                        <div field="program" headerAlign="center" allowSort="true" >
                            检查程序
                        </div>
                        <div field="gfcycle" headerAlign="center" allowSort="true" >
                            规范周期
                        </div>
                        <div field="pmcycle" headerAlign="center" allowSort="true" >
            PM周期
                        </div>
                        <div field="pmcode" headerAlign="center" allowSort="true" >
            PM编码
                        </div>
                        <div field="executionunit" headerAlign="center" allowSort="true" >
                            执行单位
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="rqhjhq" class="nui-panel" title="专用检查计划 - 容器和热交换器" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid10"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url=""
                        showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
            SAP功能位置
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查项目名称
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="seat" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div field="equipmentname" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="gxnumber" headerAlign="center" allowSort="true" >
                            管壳侧
                        </div>
                        <div field="site" headerAlign="center" allowSort="true" >
                            被检部位
                        </div>
                        <div field="referencefigureno" headerAlign="center" allowSort="true" >
                            设备图号
                        </div>
                        <div field="method" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                        <div field="approachmode" headerAlign="center" allowSort="true" >
            	接近方式
                        </div>
                        <div field="program" headerAlign="center" allowSort="true" >
             	检查程序
                        </div>
                        <div field="tool" headerAlign="center" allowSort="true">
                        	专用工具
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="nui-panel" title="专用检查计划 - 传热管" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid11"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url=""
                        showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
                            SAP功能位置
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查项目名称
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="equipmentname" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="equipment" headerAlign="center" allowSort="true" >
                            设备编号
                        </div>
                        <div field="columnsint" headerAlign="center" allowSort="true" >
                            列
                        </div>
                        <div field="row" headerAlign="center" allowSort="true" >
                            行
                        </div>
                        <div field="checktype" headerAlign="center" allowSort="true" >
                            检查类型
                        </div>
                        <div field="method" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                        <div field="program" headerAlign="center" allowSort="true" >
                           检查程序
                        </div>
                        <div field="jccycle" headerAlign="center" allowSort="true" >
                           检查周期
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
         <div class="nui-panel" title="专用工具清单" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid12"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url=""
                        showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查项目描述
                        </div>
                        <div field="seat" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div field="parts" headerAlign="center" allowSort="true" >
                            部件
                        </div>
                        <div field="referencefigureno" headerAlign="center" allowSort="true" >
                            参考图号
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="approachmode" headerAlign="center" allowSort="true" >
                            接近方式
                        </div>
                        <div field="method" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                        <div field="program" headerAlign="center" allowSort="true" >
                            参考程序
                        </div>
                        <div field="tool" headerAlign="center" allowSort="true" >
                            专用工具
                        </div>
                        <div field="mapno" headerAlign="center" allowSort="true" >
                            流程图号/参考设备图/等轴图号
                        </div>
                        <div field="medium" headerAlign="center" allowSort="true" >
                            工作介质
                        </div>
                        <div field="operatingpressure" headerAlign="center" allowSort="true" >
                            运行压力（Bar）
                        </div>
                        <div field="designpressure" headerAlign="center" allowSort="true" >
                            设计压力（Bar）
                        </div>
                        <div field="testpressure" headerAlign="center" allowSort="true" >
                            试验压力（Bar）
                        </div>
                        <div field="site" headerAlign="center" allowSort="true" >
                            试验部位
                        </div>
                        <div field="testprocedure" headerAlign="center" allowSort="true" >
                            试验程序
                        </div>
                        <div field="prosource" headerAlign="center" allowSort="true" >
                            项目来源
                        </div>
                        <div field="equipmentname" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="executionunit" headerAlign="center" allowSort="true" >
                            执行单位
                        </div>
                        <div field="system" headerAlign="center" allowSort="true" >
                            系统
                        </div>
                        <div field="equipment" headerAlign="center" allowSort="true" >
                            设备
                        </div>
                        <div field="hfnumber" headerAlign="center" allowSort="true" >
                            焊缝号
                        </div>
                        <div field="number" headerAlign="center" allowSort="true" >
                            数量
                        </div>
                        <div field="roomnumber" headerAlign="center" allowSort="true" >
                            房间号
                        </div>
                        <div field="systemdevice" headerAlign="center" allowSort="true" >
                            系统设备
                        </div>
                        <div field="category" headerAlign="center" allowSort="true" >
                            类别
                        </div>
                        <div field="ckt_dzhnumber" headerAlign="center" allowSort="true" >
                            等轴图号
                        </div>
                        <div field="gxnumber" headerAlign="center" allowSort="true" >
                            管线号
                        </div>
                        <div field="gj" headerAlign="center" allowSort="true" >
                            管径(mm)
                        </div>
                        <div field="bw" headerAlign="center" allowSort="true" >
                            保温
                        </div>
                        <div field="cl" headerAlign="center" allowSort="true" >
                            材料
                        </div>
                        <div field="bracenumber" headerAlign="center" allowSort="true" >
                            支撑号
                        </div>
                        <div field="pmcycle" headerAlign="center" allowSort="true" >
         PM周期
                        </div>
                        <div field="pmcode" headerAlign="center" allowSort="true" >
         PM编码
                        </div>
                        <div field="gfcycle" headerAlign="center" allowSort="true" >
                            规范周期
                        </div>
                        <div field="checktype" headerAlign="center" allowSort="true" >
                            检查类型
                        </div>
                        <div field="jccycle" headerAlign="center" allowSort="true" >
                            检查周期
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="ident" headerAlign="center" allowSort="true" >
                            标识
                        </div>
                        <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
       sap功能位置
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="nui-panel" title="参考程序清单" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid13"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.NuclearIslandDaily.queryPlanGenerations.biz.ext"
                        showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查项目描述
                        </div>
                        <div field="seat" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div field="parts" headerAlign="center" allowSort="true" >
                            部件
                        </div>
                        <div field="referencefigureno" headerAlign="center" allowSort="true" >
                            参考图号
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="approachmode" headerAlign="center" allowSort="true" >
                            接近方式
                        </div>
                        <div field="method" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                        <div field="program" headerAlign="center" allowSort="true" >
                            参考程序
                        </div>
                        <div field="tool" headerAlign="center" allowSort="true" >
                            专用工具
                        </div>
                        <div field="mapno" headerAlign="center" allowSort="true" >
                            流程图号/参考设备图/等轴图号
                        </div>
                        <div field="medium" headerAlign="center" allowSort="true" >
                            工作介质
                        </div>
                        <div field="operatingpressure" headerAlign="center" allowSort="true" >
                            运行压力（Bar）
                        </div>
                        <div field="designpressure" headerAlign="center" allowSort="true" >
                            设计压力（Bar）
                        </div>
                        <div field="testpressure" headerAlign="center" allowSort="true" >
                            试验压力（Bar）
                        </div>
                        <div field="site" headerAlign="center" allowSort="true" >
                            试验部位
                        </div>
                        <div field="testprocedure" headerAlign="center" allowSort="true" >
                            试验程序
                        </div>
                        <div field="prosource" headerAlign="center" allowSort="true" >
                            项目来源
                        </div>
                        <div field="equipmentname" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="executionunit" headerAlign="center" allowSort="true" >
                            执行单位
                        </div>
                        <div field="system" headerAlign="center" allowSort="true" >
                            系统
                        </div>
                        <div field="equipment" headerAlign="center" allowSort="true" >
                            设备
                        </div>
                        <div field="hfnumber" headerAlign="center" allowSort="true" >
                            焊缝号
                        </div>
                        <div field="number" headerAlign="center" allowSort="true" >
                            数量
                        </div>
                        <div field="roomnumber" headerAlign="center" allowSort="true" >
                            房间号
                        </div>
                        <div field="systemdevice" headerAlign="center" allowSort="true" >
                            系统设备
                        </div>
                        <div field="category" headerAlign="center" allowSort="true" >
                            类别
                        </div>
                        <div field="ckt_dzhnumber" headerAlign="center" allowSort="true" >
                            等轴图号
                        </div>
                        <div field="gxnumber" headerAlign="center" allowSort="true" >
                            管线号
                        </div>
                        <div field="gj" headerAlign="center" allowSort="true" >
                            管径(mm)
                        </div>
                        <div field="bw" headerAlign="center" allowSort="true" >
                            保温
                        </div>
                        <div field="cl" headerAlign="center" allowSort="true" >
                            材料
                        </div>
                        <div field="bracenumber" headerAlign="center" allowSort="true" >
                            支撑号
                        </div>
                        <div field="pmcycle" headerAlign="center" allowSort="true" >
         PM周期
                        </div>
                        <div field="pmcode" headerAlign="center" allowSort="true" >
         PM编码
                        </div>
                        <div field="gfcycle" headerAlign="center" allowSort="true" >
                            规范周期
                        </div>
                        <div field="checktype" headerAlign="center" allowSort="true" >
                            检查类型
                        </div>
                        <div field="jccycle" headerAlign="center" allowSort="true" >
                            检查周期
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="ident" headerAlign="center" allowSort="true" >
                            标识
                        </div>
                        <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
       sap功能位置
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="nui-panel" title="试验程序清单" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid14"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.NuclearIslandDaily.queryPlanGenerations.biz.ext"
                        showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div field="id" headerAlign="center" allowSort="true" visible="false">
                            id
                        </div>
                        <div field="processinstid" headerAlign="center" allowSort="true" visible="false">
                            processinstid
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            orderno
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            isdelete
                        </div>
                        <div field="detailed" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                        <div field="inspectionscope" headerAlign="center" allowSort="true" >
                            检查项目描述
                        </div>
                        <div field="seat" headerAlign="center" allowSort="true" >
                            功能位置
                        </div>
                        <div field="parts" headerAlign="center" allowSort="true" >
                            部件
                        </div>
                        <div field="referencefigureno" headerAlign="center" allowSort="true" >
                            参考图号
                        </div>
                        <div field="itemno" headerAlign="center" allowSort="true" >
                            项号
                        </div>
                        <div field="approachmode" headerAlign="center" allowSort="true" >
                            接近方式
                        </div>
                        <div field="method" headerAlign="center" allowSort="true" >
                            检查方法
                        </div>
                        <div field="program" headerAlign="center" allowSort="true" >
                            参考程序
                        </div>
                        <div field="tool" headerAlign="center" allowSort="true" >
                            专用工具
                        </div>
                        <div field="mapno" headerAlign="center" allowSort="true" >
                            流程图号/参考设备图/等轴图号
                        </div>
                        <div field="medium" headerAlign="center" allowSort="true" >
                            工作介质
                        </div>
                        <div field="operatingpressure" headerAlign="center" allowSort="true" >
                            运行压力（Bar）
                        </div>
                        <div field="designpressure" headerAlign="center" allowSort="true" >
                            设计压力（Bar）
                        </div>
                        <div field="testpressure" headerAlign="center" allowSort="true" >
                            试验压力（Bar）
                        </div>
                        <div field="site" headerAlign="center" allowSort="true" >
                            试验部位
                        </div>
                        <div field="testprocedure" headerAlign="center" allowSort="true" >
                            试验程序
                        </div>
                        <div field="prosource" headerAlign="center" allowSort="true" >
                            项目来源
                        </div>
                        <div field="equipmentname" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="executionunit" headerAlign="center" allowSort="true" >
                            执行单位
                        </div>
                        <div field="system" headerAlign="center" allowSort="true" >
                            系统
                        </div>
                        <div field="equipment" headerAlign="center" allowSort="true" >
                            设备
                        </div>
                        <div field="hfnumber" headerAlign="center" allowSort="true" >
                            焊缝号
                        </div>
                        <div field="number" headerAlign="center" allowSort="true" >
                            数量
                        </div>
                        <div field="roomnumber" headerAlign="center" allowSort="true" >
                            房间号
                        </div>
                        <div field="systemdevice" headerAlign="center" allowSort="true" >
                            系统设备
                        </div>
                        <div field="category" headerAlign="center" allowSort="true" >
                            类别
                        </div>
                        <div field="ckt_dzhnumber" headerAlign="center" allowSort="true" >
                            等轴图号
                        </div>
                        <div field="gxnumber" headerAlign="center" allowSort="true" >
                            管线号
                        </div>
                        <div field="gj" headerAlign="center" allowSort="true" >
                            管径(mm)
                        </div>
                        <div field="bw" headerAlign="center" allowSort="true" >
                            保温
                        </div>
                        <div field="cl" headerAlign="center" allowSort="true" >
                            材料
                        </div>
                        <div field="bracenumber" headerAlign="center" allowSort="true" >
                            支撑号
                        </div>
                        <div field="pmcycle" headerAlign="center" allowSort="true" >
         PM周期
                        </div>
                        <div field="pmcode" headerAlign="center" allowSort="true" >
         PM编码
                        </div>
                        <div field="gfcycle" headerAlign="center" allowSort="true" >
                            规范周期
                        </div>
                        <div field="checktype" headerAlign="center" allowSort="true" >
                            检查类型
                        </div>
                        <div field="jccycle" headerAlign="center" allowSort="true" >
                            检查周期
                        </div>
                        <div field="remark" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="ident" headerAlign="center" allowSort="true" >
                            标识
                        </div>
                        <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
       sap功能位置
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="nui-panel" title="参考图例(图片)" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
        <div id="datagrid15" style="width: 100%;">
        	        	
        </div>
        </div>
       
               <!-- end -->
      </div>  
        <script type="text/javascript">
            nui.parse();
            var grid1 =  nui.get('datagrid1');
            var grid2 =  nui.get('datagrid2');
            var grid3 =  nui.get('datagrid3');
            var grid4 =  nui.get('datagrid4');
            var grid5 =  nui.get('datagrid5');
            var grid6 =  nui.get('datagrid6');
            var grid7 =  nui.get('datagrid7');
            var grid8 =  nui.get('datagrid8');
            var grid9 =  nui.get('datagrid9');
            var grid10 =  nui.get('datagrid10');
            var grid11 =  nui.get('datagrid11');
            var grid12 =  nui.get('datagrid12');
            var grid13 =  nui.get('datagrid13');
            var grid14 =  nui.get('datagrid14');
            $("#rqhjhq").hide();
            //显示全局数据加载提示
            mini.mask({
	            el: document.body,
	            cls: 'mini-mask-loading',
	            html: '加载中...'
       	 	});
       	 	var jdid = getCookie("jdid");
            var jzid = getCookie("jzid");
            var formData = new nui.Form("#form1").getData(false,false);
         	 function setFormData(data){
         	 		
//          	 		nui.get("uuid").setValue(data);
//          	 		var d={processinstid:data};
//          	 		var json =nui.encode({tdgglndjhhdrcjhscs:d});
					nui.get("processinstid").value=data;
         			nui.get("uuid").setValue(data);
         			formData = new nui.Form("#form1").getData(false,false);
         			formData.pageIndex=1;
         			formData.pageSize=999999;
         	 		var d={processinstid:data};
         	 		var json =nui.encode(formData);
          			          $.ajax({
                                url:'com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.queryTgglndjhhdjhscs.biz.ext',
                                type:'POST',
                                data:json,
                                cache: false,
                                contentType:'text/json',
                                success:function(jsondata){
                                	var data1 =[];
				         	 		var data2 =[];
				         	 		var data3 =[];
				         	 		var data4 =[];
				         	 		var data5 =[];
				         	 		var data6 =[];
				         	 		var data7 =[];
				         	 		var data8 =[];
				         	 		var data9 =[];
				         	 		var data10 =[];
				         	 		var data11 =[];
				         	 		var data12 =[];
				         	 		var data13 =[];
				         	 		var data14 =[];
				         	 		var data15 =[];
				         	 		
                                var jpl = jsondata.tgglndjhhdjhscs;
                                for(var i = 0 ; i<jpl.length;i++){
                                   	//清单标识
                                   if(jpl[i]['ident']=="规范法定检查项目清单"){
		                                  data1.push(jpl[i]);
		                                }else  if(jpl[i]['ident']=="规范非法定检查项目清单"){
		                                  data2.push(jpl[i]);
		                                }else if(jpl[i]['ident']=="在役检查"){
		                                  data3.push(jpl[i]);
		                                }else if(jpl[i]['ident']=="水压检查"){
		                                  data4.push(jpl[i]);
		                                }else if(jpl[i]['ident']=="规范非法定在役检查细化表"){
		                                  data5.push(jpl[i]);
		                                }else if(jpl[i]['ident']=="焊缝（管道/支撑）"){
		                                	data6.push(jpl[i]);
		                                }else if(jpl[i]['ident']=="焊缝（BOOS头）"){
		                                	data7.push(jpl[i]);
		                                }else if(jpl[i]['ident']=="支撑/支架"){
		                                	data8.push(jpl[i]);
		                                }else if(jpl[i]['ident']=="阀门"){
		                                	data9.push(jpl[i]);
		                                }else if(jpl[i]['ident']=="容器和热交换器"){
		                                	data10.push(jpl[i]);
		                                }else if(jpl[i]['ident']=="传热管"){
		                                	data11.push(jpl[i]);
		                                }
		                                 //专用工具清单
		                                if(jpl[i]['tool']!= null){
		                                	data12.push(jpl[i]);
		                                }
		                                //参考程序
		                                if(jpl[i]['program']!=null){
		                                	data13.push(jpl[i]);
		                                }
		                                //试验程序
		                                if(jpl[i]['testprocedure']!=null){
		                                	data14.push(jpl[i]);
		                                }
		                                
		                               //图片
		                               if(jpl[i]['referencefigureno']!= null){
		                                 data15.push(jpl[i]['referencefigureno']);
		                                } 
                                    }
                                   		
	                                    
	                                    grid1.addRows(data1);
	                                    grid2.addRows(data2);
	                                    grid3.addRows(data3);
	                                    grid4.addRows(data4);
	                                    grid5.addRows(data5);
	                                    grid6.addRows(data6);
	                                    grid7.addRows(data7);
	                                    grid8.addRows(data8);
	                                    grid9.addRows(data9);
	                                    if(getCookie("jdid") == '86'){
	                                    	$("#rqhjhq").show();
	                                    	grid10.addRows(data10);
	                                    }
	                                    grid11.addRows(data11);
	                                    grid12.addRows(data12);
	                                    grid13.addRows(data13);
                                     	grid14.addRows(data14);
                                     	
                                     	//图例展示
                                 showLegends(data15);
                                     //关闭加载提示
                                 mini.unmask(document.body);
                                    }
								});
					        }                
              function showLegends(data){
                        	if(data.length == 0){
                        		return false;
                        	}
                        	var legendArr = [];
                        	for(var i = 0; i < data.length;i++){
                        		if(legendArr.indexOf(data[i]) < 0){
                        			legendArr.push(data[i]);
                        		}
                        	}
                        	 var json = nui.encode({legendName:legendArr,jdid: jdid,jzid: jzid});
                        	  $.ajax({
                                url:"com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.getLegends.biz.ext",
                                type:'POST',
                                data:json,
                                cache: false,
                                contentType:'text/json',
                                success:function(res){
                                if(res!= null && res.result.length > 0){
                                	var datagrid15 = $("#datagrid15");
                                	for(var i = 0; i <res.result.length;i++ ){
                                		datagrid15.append('<div style="width: 25%;height: 250px;float: left;"><img src="<%=request.getContextPath()%>/coframe/tools/preview.jsp?remoteFile='+res.result[i].fildid+'" width="100%" height="250px"/></div>');
                                	}
                                	}
                                }
                               });
                        }
                        
             //弹出框选中人员           
             function onButtonEdit(e) {
	        var btnEdit = e.sender;
	        var empData;
	        nui.open({
	            url:"<%=request.getContextPath()%>/coframe/tools/employeewidget.jsp",
	            showMaxButton: false,//设置隐藏最大化窗口按钮
	            title: "选择人员",//窗口标题
	            width: 740,//窗口宽度
	            height: 540,//窗口高度
	            allowResize:true,//允许调整窗口大小
	            onload:function(){
	            	var iframe = this.getIFrameEl();
	            	if(empData){
	            		//调用弹出页面方法进行初始化
	            		iframe.contentWindow.SetData(empData);
	            	}
	            },
	            ondestroy: function (action) {
	                if (action == "ok") {
	                    var iframe = this.getIFrameEl();
	                    var data = iframe.contentWindow.GetData();
	                    data = nui.clone(data);
	                    empData = data;
	                    if (data) {
	                        //$("#result").html(data.orgname);//单选模式下获取选中节点的值
	                        for(var i=0;i<data.length;i++){
	                        btnEdit.setValue(data[i].empId);	
	                        btnEdit.setText(data[i].empName);	
	                        }
	                    }
	                }
	            }
	        });            
    	}
         
                        //确定保存或更新
					function onOk(finishFirstActivityId) {
						saveData(finishFirstActivityId);
					}  
                        
                      var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
                      
                      if(isadmin == 'true'){
							$("#tj").hide();
							$("#btnSave").hide();
							$("#sqTr").hide();
                      }else{
                      	$("#adminSave").hide();
                      }
                    function saveData(finishFirstActivityId){
                    
                    	if(finishFirstActivityId != ""
                    		&& nui.get("jhry").getValue() == ""
                    		&& nui.get("pzry").getValue() == ""
                    		){
                    		nui.showTips({
                    			content: '请选择审核人员、批准人员！',
                    			state: 'danger',
                    			x: 'center',
                    			y: 'center'
                    		});
                    		return;
                    	 }
                    
	                    var allInfo = {};
	                    allInfo.uuid = nui.get("uuid").getValue();
	                    //判断是否管理员
				        allInfo.isadmin = isadmin;
				        allInfo.finishFirstActivityId = finishFirstActivityId; 
				        allInfo.processInstName = "年度计划(核岛)_日常计划生效_申请";
				        allInfo.processInstDesc = "年度计划(核岛)_日常计划生效_申请";
				        //工作流视图url
				        allInfo.processDefName = "com.cgn.itmp.outlineandplan.annual.nuclearislanddailyWorkFlow";
		 		        if(isadmin == 'false'){
		 		        	allInfo.jhry =nui.get("jhry").getText();
			 		        allInfo.pzry = nui.get("pzry").getText();
						   	allInfo.ccry = nui.get("csry").value;
						   	let person = {};
						   	person.sqr = nui.get("sqr").getValue();
						   	person.sqsj = nui.get("sqsj").getValue();
						   	if(nui.get("jhry").getValue()!= "" || nui.get("jhry").getValue()!= null){
						   		person.jhry = nui.get("jhry").getText();
						   	}
						   	if(nui.get("pzry").getValue()!= "" || nui.get("pzry").getValue()!= null){
						   		person.pzry = nui.get("pzry").getText();
						   	}
						   	if(nui.get("csry").getValue()!= "" || nui.get("csry").getValue()!= null){
						   		person.csry = nui.get("csry").value;
						   	}
						   	allInfo.personInfo = person;                                      
		 		        }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
					   	json = nui.encode(allInfo);
					   	$.ajax({
							   	url:"com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.dailyOperationWorkflow.biz.ext",
								type : 'POST',
								data : json,
								cache : false,
								contentType : 'text/json',
								success : function(text) {
								
									var returnJson = nui.decode(text);
									if (returnJson.exception == null) {
										CloseWindow("saveSuccess");
									} else {
										nui.alert("保存失败", "系统提示", function(action) {
											if (action == "ok" || action == "close") {
												CloseWindow("saveFailed");
											}
										});
									}
								}
							});
                    	}   
                        
                        
                        
                        //取消
					function onCancel() {
						CloseWindow("cancel");
					}
					//关闭窗口
					function CloseWindow(action) {
						if (action == "close" && form.isChanged()) {
							if (confirm("数据被修改了，是否先保存？")) {
								saveData();
							}
						}
						if (window.CloseOwnerWindow)
							return window.CloseOwnerWindow(action);
						else
							window.close();
					}
                            </script>
                        </body>
                    </html>
