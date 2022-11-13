<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

 IUserObject cu = CommonUtil.getUserObject();
String username = cu.getUserRealName();
  %>
<html>

<head>
    <title>日常计划审批页</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
      <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    
</head>
<style type="text/css">
 .mini-grid-table tr:first-child td{
	height: 0;
}
.mini-grid-cell-nowrap{
	text-align: center;
}
.asLabel .mini-textbox-border,
    .asLabel .mini-textbox-input,
    .asLabel .mini-buttonedit-border,
    .asLabel .mini-buttonedit-input,
    .asLabel .mini-textboxlist-border
    {
        border:0;background:none;cursor:default;
    }
    .asLabel .mini-buttonedit-button,
    .asLabel .mini-textboxlist-close
    {
        display:none;
    }
    .asLabel .mini-textboxlist-item
    {
        padding-right:8px;
    }  
</style>
<body>
<div  style="padding-top:5px;width:95%;">
	
	 <div class="nui-panel" title="规范法定检查项目清单" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.NuclearIslandDaily.queryPlanGenerations.biz.ext"
                       showPager="false"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

                    <div property="columns">
                        <div type="indexcolumn" >序号
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
                            检查项目描述
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
                            检查项目描述
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
                        <div field="columnsint" headerAlign="center" allowSort="true" >
                            列
                        </div>
                        <div field="row" headerAlign="center" allowSort="true" >
                            行
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
                        <div field="lc" headerAlign="center" allowSort="true" >
                            轮次
                        </div>
                        <div field="lcv" headerAlign="center" allowSort="true" >
                            轮次值
                        </div>
                        <div field="ndorderno" headerAlign="center" allowSort="true" >
                            ndorderno
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
                    </div>
                </div>
            </div>
        </div>
         <div class="nui-panel" title="专用工具清单" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid6"
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
        <div class="nui-panel" title="参考程序清单" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid7"
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
                        id="datagrid8"
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
        <div id="datagrid9">
        </div>
        </div>
	 
	
	<div  style="padding-top:5px;" id="baseInfoForm">
      <!-- hidden域 -->
      <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.annual.NuclearIslandDailyCreate.PlanGeneration">
      <input class="nui-hidden" id="uuid" name="uuid"/>  
   	<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>  
   	 <input class="nui-hidden" name="criteria/_expr[1]/processinstid"  value="<b:write property='processInstId'/>" />
        						<input class="nui-hidden" name="criteria/_expr[1]/_op" value="=">
	<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="Id"/> 
    <input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>  
    <input id="backid" class="nui-hidden"  value="<b:write property='backid'/>" name="backid"/>
      <fieldset id="personInfo" style="width:98%;">
        <legend><span>审批信息</span></legend>
     <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                 <tr id="spyjId">
                    <td class="form_label"  style="width: 10%">
                        审批意见:
                    </td>
                  <td colspan="3">
                        <input id="spyj"  required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width:100%" name="spyj"/>
                    </td>
                      <td colspan="2" class="form_label" >
                        常用意见:<input class="nui-dictcombobox"  onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ" style="width:80%"  />
                    </td>
                </tr>
    
           	<tr id="sqrTr">
                <td class="form_label"  style="width: 10%">
                    申请人:
                </td>
                <td colspan="1">
                    <input id="sqr" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqr" value="<b:write property='baseInfo/sqr'/>"/>
                </td>
                <td class="form_label"  style="width: 10%">
                    申请时间:
                </td>
                 <td colspan="1">
                        <input id="sqsj" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqsj" value="<b:write property='baseInfo/sqsj'/>" />
                    </td>
           		</tr>
		         <tr id="shryTr">
		            <td class="form_label" style="width: 10%">审核人员:</td>
			    	 <td colspan="5">
			    	 	<input id="jhry" class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" name="jhry" textName="jhry" required="true"  style="width: 55.5%"/> 
		            </td>
		        </tr>
		             <tr id="pzryTr">
		            <td class="form_label" style="width: 10%">批准人员:</td>
			    	 <td colspan="5">
		                <input id="pzry" class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" name="pzry" textName="pzry" required="true"  style="width: 55.5%"/> 
		            </td>
		        </tr>
		        <tr id="ccryTr">
		           <td class="form_label" style="width: 10%">抄送人员:</td>
						<td colspan="5">
							 <input property="editor" id="csry" multi="false" name="csry" class="nui-textboxlist" dataField="list"
		                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext" valueField="empcode"
		                       textField="empcodename" searchField="keyword" style="width:55.5%"/> 
						</td>
		        </tr>
    </table>
    </fieldset>
    </div>
    <div id="btn" class="nui-toolbar" style="padding: 0px;"
         borderStyle="border:0;">
        <table width="100%">
            <tr>
                <td style="text-align: center;" colspan="4">
                    <a class="nui-button" onclick="onSubmit()" id="btnSubmit">提交</a>
                      <a class="nui-button"  onclick="onBack()" id="btnBack" >
                                驳回
                         </a>
                         <a class="nui-button" onclick="onDelete()" id="btnDelete">
                                	作废
                            </a> 
                    <a class="nui-button" onclick="onCancel()">关闭 </a>
                </td>
            </tr>
        </table>
    </div>
</div>
<script type="text/javascript">
    nui.parse();
    
    //显示全局数据加载提示
    mini.mask({
    	el: document.body,
        cls: 'mini-mask-loading',
        html: '加载中...'
   	});
    var editable = nui.get('editable').getValue();//已办
    var backid = nui.get("backid").getValue();//上一节点id
	var personInfo = {};
	var processInstId = nui.get("processInstId").getValue();
	if(editable == 'false'){
    		nui.get("btnSubmit").hide();
    		nui.get("btnBack").hide();
    		nui.get("btnDelete").hide();
    		$('#spyjId').hide();
    		$('#ccryTr').hide();
    		labelModelBaseInfoForm();
	}else{
			if(backid == 'first'){//第一个节点(发起节点)
				if('<%=username %>'  != nui.get('sqr').getValue()){
					nui.get("btnSubmit").hide();
		    		nui.get("btnBack").hide();
		    		nui.get("btnDelete").hide();
		    		$('#spyjId').hide();
		    		$('#ccryTr').hide();
				}else{
					$('#spyjId').hide();
					nui.get("btnBack").hide();
					$('#shryTr').show();
					$('#pzryTr').show();
				}
			
			}else if(backid=="manualActivity"){//审核节点
				nui.get("btnDelete").hide();
				$('#shryTr').hide();
			}else if(backid == 'finish'){//最后一个节点（批准节点）
				nui.get("btnDelete").hide();
				$('#shryTr').hide();
				$('#pzryTr').hide();
			}
	}
    	//审批信息禁用
		function labelModelBaseInfoForm() {
			var form = new nui.Form("#baseInfoForm");
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
		}
    	
    	//提取人员id
    	 function getUserId(str){
	    	return str.substr(1,str.indexOf("]")-1);
	    }	
    //数据加载
 		getBusinessId();
		function getBusinessId(){
			$.ajax({
				url:'com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.getSqinfoByProcessInstId.biz.ext',
				type:'POST',
                data: nui.encode({processInstId : processInstId,entityType: 'com.cgn.itmp.outlineandplan.annual.NuclearIslandDaily.PlanEntity'}),
                cache: false,
                contentType:'text/json',
                success:function(result){
                	if(result != null){
                	
                		if(result.result.shry != null && result.result.shry != ""){
                			nui.get("jhry").setValue(getUserId(result.result.jhry));
                			nui.get("jhry").setText(result.result.jhry);
                		}
                		if(result.result.pzry != null && result.result.pzry != ""){
                			nui.get("pzry").setValue(getUserId(result.result.pzry));
                			nui.get("pzry").setText(result.result.pzry);
                		}
                		/* if(result.result.csry != null && result.result.csry != ""){
                			nui.get("csry").setValue(getUserId(result.result.csry));
                			nui.get("csry").setText(result.result.csry);
                		} */
                		nui.get("uuid").setValue(result.result.id);
                		getGridDatas(result.result.id);
                	}
                }
			})
		}
		
		function getGridDatas(id){
//  	 		var d={
//  	 				processinstid : id
//  	 			  };
//  	 		var json =nui.encode({tgglndjhcgdrcjhscs:d});
 	 		nui.get("Id").value=id;
         			
         			var formData = new nui.Form("#baseInfoForm").getData(false,false);
         			formData.pageIndex=1;
         			formData.pageSize=999999;
         	 		
         	 		var json =nui.encode(formData);
         	 		
  			          $.ajax({
                        url:"com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.queryTgglndjhhdjhscs.biz.ext",
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
		                        }
		                         //专用工具清单
		                        if(jpl[i]['tool']!= null){
		                        data6.push(jpl[i]);
		                        }
		                        //参考程序
		                        if(jpl[i]['program']!=null){
		                        data7.push(jpl[i]);
		                        }
		                       //试验程序
		                        if(jpl[i]['testprocedure']!=null){
		                        data8.push(jpl[i]);
		                        }
		                       //图片
		                        if(jpl[i]['referencefigureno']!= null){
		                         data9.push(jpl[i]['referencefigureno']);
		                        }
                            }
	                            var grid1 =  nui.get('datagrid1');
	                            var grid2 =  nui.get('datagrid2');
	                            var grid3 =  nui.get('datagrid3');
	                            var grid4 =  nui.get('datagrid4');
	                            var grid5 =  nui.get('datagrid5');
	                            var grid6 =  nui.get('datagrid6');
	                            var grid7 =  nui.get('datagrid7');
	                            var grid8 =  nui.get('datagrid8'); 
	                            grid1.addRows(data1);
	                            grid2.addRows(data2);
	                            grid3.addRows(data3);
	                            grid4.addRows(data4);
	                            grid5.addRows(data5);
	                            grid6.addRows(data6);
	                            grid7.addRows(data7);
	                            grid8.addRows(data8); 
	                            
	                            //关闭加载提示
                                 mini.unmask(document.body);
	                            }
                            });
		}
  	////////////////////////////////////////////////////////
    	
	//审核通过
    function onSubmit() {
		 	var data = {};
            data.processInstId = nui.get('processInstId').getValue();
            data.workItemId = nui.get('workItemId').getValue();
         
   		    data.ccry = nui.get('csry').value;
   		    data.spyj = nui.get('spyj').getValue();
   		   	data.jhry = nui.get('jhry').getText();
   		    data.backid = backid;
   		    if(backid == 'finish'){
   		    	 data.entityType="com.cgn.itmp.outlineandplan.annual.NuclearIslandDaily.PlanEntity";
   		    	 data.isdelete = "4";
   		    }else if(backid == "first"){
   		    		var personform = new nui.Form("#baseInfoForm");
					  personform.setChanged(false);
			        personform.validate();
			        if (personform.isValid() == false) {
			            nui.showTips({content: '表单校验不通过,请确认', state: 'danger', x: 'center', y: 'center'});
			            return;
			        }
					//审批人员相关信息赋值
				personInfo.sqr=nui.get("sqr").getValue();
				personInfo.sqsj=nui.get("sqsj").getValue();
				if(nui.get("jhry").getValue()!= "" || nui.get("jhry").getValue()!= null){
			   		personInfo.jhry = nui.get("jhry").getText();
			   	}
			   	if(nui.get("pzry").getValue()!= "" || nui.get("pzry").getValue()!= null){
			   		personInfo.pzry = nui.get("pzry").getText();
			   	}
			   	if(nui.get("csry").getValue()!= "" || nui.get("csry").getValue()!= null){
			   		personInfo.csry = nui.get("csry").value;
			   	}
				personInfo.uuid=nui.get("uuid").getValue();
				personInfo.processInstId=processInstId;
				
   		     data.personInfo = personInfo;
   		     data.entityType = "com.cgn.itmp.outlineandplan.annual.NuclearIslandDaily.PlanEntity";
   		     data.isdelete = "3";
   		    }else{
   		    	//审核节点，指定下一节点处理人
   		    	data.jhry = nui.get("pzry").getText();
   		    }
            var json = nui.encode(data);
         	 nui.get("#btnSubmit").setEnabled(false);
       		 nui.get("#btnDelete").setEnabled(false);
       		 nui.get("#btnBack").setEnabled(false);
            
    		$.ajax({
                url:"com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.sqsqComplate.biz.ext",
                type:'POST',
                data:json,
                cache:false,
                contentType:'text/json',
                success:function(text){
                    var returnJson = nui.decode(text);
                    if(returnJson.exception == null){
                   	    //nui.alert("提交成功");
                        onCancel();
                    }else{
                        nui.alert("提交失败", "系统提示", function(action){
                            if(action == "ok" || action == "close"){
                                onCancel();
                            }
                            });
                        }
                    },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(false);
	           		 				nui.get("#btnBack").setEnabled(false);
	           		 				nui.get("#btnDelete").setEnabled(false);
							});	
						}
          });

    }

    //取消
    function onCancel() {
     	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
    		self.parent.location.reload();
			return;
    }

        //驳回
        function onBack(){
            var form = new nui.Form("#baseInfoForm");
            //工作流公用方法
    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
   
            var data = form.getData(false,true);
            if(backid == "finish"){
            	data.backid = "manualActivity1";
            }
            var json = nui.encode(data);
            
          	 nui.get("#btnSubmit").setEnabled(false);
       		 nui.get("#btnDelete").setEnabled(false);
       		 nui.get("#btnBack").setEnabled(false);
    		$.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        
                        if(returnJson.exception == null){
                         nui.alert("驳回成功");
                            onCancel();
                        }else{
                            nui.alert("驳回失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
                            }
                        }
                        });
       			 }
        
        	 //流程作废
	    	function onDelete(){
	    	 nui.confirm("确定要作废流程？","提示",
		        function(action){
		           if(action=="ok"){
		        	 nui.get("#btnSubmit").setEnabled(false);
	           		 nui.get("#btnDelete").setEnabled(false);
	           		  nui.get("#btnBack").setEnabled(false);
	           		  var json = {};
	           		   json.processInstId = processInstId;
					    json.workItemId = nui.get('workItemId').getValue();
					    json.entityType = "com.cgn.itmp.outlineandplan.annual.NuclearIslandDaily.PlanEntity";
					    json.isdelete = "0";
						var jsondata = nui.encode(json);
						$.ajax({
					            url:"com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.sqsqZfProcess.biz.ext",
					            type:'POST',
					            data:jsondata,
					            cache:false,
					            contentType:'text/json',
					            success:function(data){
					                var message = "流程作废成功";
					            nui.alert(message,"成功",function(){
					            onCancel();
				            });
				           }
				        });
				        }
		        });
	    	}
	    	//设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
</script>
</body>
</html>