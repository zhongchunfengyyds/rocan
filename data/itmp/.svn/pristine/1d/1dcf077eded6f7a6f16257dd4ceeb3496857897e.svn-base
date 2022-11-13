<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<%--
- Author(s): Administrator
- Date: 2019-02-12 09:49:47
- Description:
    --%>
<head>
    <title>
        常规岛日常查询
    </title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
    </script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/common/common.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
    <script type="text/javascript"
                    src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
    <style type="text/css">
  ul li{
   	margin:3px 0px!important;
   	width:12%!important;
   	text-align:right;
   }
  
   		.row {
    margin-left: 0px;
    margin-right:0px;
}
   </style>
</head>
<body style="width:98%;height:99%;margin:0 auto;">

<div class="bs-docs-section">

    <div id="form1" class="nui-form" align="center" style="height:100%">
        <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="orderno">
        <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
        <!-- 数据实体的名称 -->
        <input class="nui-hidden" name="criteria/_entity" id="_entity" value="com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.ConventionalIslandSearch">
        <!-- 排序字段 -->
			<div class="search-box">
		<div class="search-container folding-menu" id="queryForm">
			<div style="width: 100%; height: 100%;">
				<table cellpadding="0" cellspacing="0"
					class="table Keywordsearchtable" style="height: 100%;">
					<tr class="">
						<td style="width: 10%;" class="form_label">关键字查询:</td>
						<td style="width: 20%;" class="form_label"><input type="text" id="cond"
							name="processInstDesc:%" class="form-control Keywordsearch"
							placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td style="width: 5%;" class="form_label">
							 	
						</td>
						<td style="width: 20%; border-right: 1px solid #f7f7f9 !important"
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
						<td style="width: 25%;" class="form_label" >
							<input class="nui-spinner" id="start" maxValue="2089" minValue="1991" minValue="1991"
                                   style="width: 80px" name=""/>-<input class="nui-spinner" id="end" maxValue="2089"
                                                                        minValue="1991" style="width: 80px" name=""/>
                            <a class="nui-button" id="zq" onclick="searchs()">
                                修改显示周期
                            </a>
                            
						</td>
						<td style="width: 5%;"></td>
						
					</tr>
				</table>
				 <div class="search-container folding-menu displaynone" style=""
                 id="queryForm1">
                <div class="row">
                    <div>
                        <div>
                            <ul id="ym" style="padding-left:0px!important;margin-bottom:0px!important;">

                                <li id="cxt" style="display: none">
                                    项目来源:

                                    <input class="nui-textbox" id="xt" name="criteria/_expr[2]/xt"/>
                                    <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                                </li>

                                <li style="display: none">
                                    <input class="nui-textbox" id="checkprojectname" name="criteria/_expr[3]/checkprojectname"/>
                                    <input class="nui-hidden" name="criteria/_expr[3]/_op" value="=">

                                    <input class="nui-hidden" name="criteria/_expr[4]/isdelete" value="0"/>
                                    <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">

                                    <input class="nui-hidden" id="con_jdid" name="criteria/_expr[5]/jd"/>
                                    <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[5]/_likeRule" value="end">

                                    <input class="nui-hidden" id="con_jzid" name="criteria/_expr[6]/jz"/>
                                    <input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[6]/_likeRule" value="end">
                                </li>
                                <li>
                                    轮次&状态:</li><li style="height:20px;">

                                    <input id="combo1" class="nui-combobox" style="width:50%;float:left;" valueField="id"
                                           required="true" allowInput="true"
                                           textField="text" pinyinField="tag">
                                    <div id="combobox2" class="nui-combobox" style="width:50%;" popupWidth="200"
                                         textField="name" valueField="id"
                                         url="" multiSelect="true"
                                         showClose="true" oncloseclick="onCloseClick" dataField="jsonObject">
                                        <div property="columns">
                                            <div header="状态" field="name"></div>
                                        </div>
                                    </div>
                                </li>
                                <li class="crwqd" style="display: none">
                                    维护项目:</li><li class="crwqd" style="display: none">

                                    <input class="nui-textbox" name="criteria/_expr[7]/rwqd"/>
                                    <input class="nui-hidden" name="criteria/_expr[7]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[7]/_likeRule" value="all">
                                </li>

                                <li class="cjcbw" style="display: none">
                                    检查部位:</li> <li class="cjcbw" style="display: none">

                                    <input class="nui-textbox" name="criteria/_expr[8]/jcbw"/>
                                    <input class="nui-hidden" name="criteria/_expr[8]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[8]/_likeRule" value="all">
                                </li>
                            <!--</ul>
                            <ul>-->
                                <li class="czysb" style="display: none;">
                                    主要设备:</li><li class="czysb" style="display: none;">

                                    <input class="nui-textbox" name="criteria/_expr[9]/zysb"/>
                                    <input class="nui-hidden" name="criteria/_expr[9]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[9]/_likeRule" value="all">
                                </li>
                                <li class="cdzth" style="display: none">
                                    等轴图号:</li><li class="cdzth" style="display: none">

                                    <input class="nui-textbox" name="criteria/_expr[10]/lct"/>
                                    <input class="nui-hidden" name="criteria/_expr[10]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[10]/_likeRule" value="all">
                                </li>
                                <li class="cbz" style="display: none">
                                    备注:</li><li class="cbz" style="display: none">

                                    <input class="nui-textbox" name="criteria/_expr[11]/bz"/>
                                    <input class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[11]/_likeRule" value="all">
                                </li>
                            	<li>
                            		 数据状态:</li><li>
                            		<input id="sjzt" class="nui-dictcombobox"  dictTypeId="SJZT"/>
                            	</li>
                            </ul>


                        </div>
                    </div>

                </div>

            </div>
				
				
				
			</div>

		</div>
	</div>    
    
    
    </div>


</div>


<div region="center" style="width:100%;height:88%;" showToolbar="false" showFooter="false">
    <div class="nui-toolbar" style="border-bottom:0;padding:0px;width:100%;" name="ITMP_btn">
        <table style="width:100%;">
            <tr>

                <td style="width:60%;">
                    <a id="add" class="nui-menubutton btn btn-default btn-xs" menu="#popupMenu" name="ITMP_btnAdd">新增</a>
                    <ul id="popupMenu" class="nui-menu" style="display:none;">

                        <li name="ITMP_btnAddOne" onclick="add()">单条增加</li>
                        <li name="ITMP_btnAddBatch" onclick="batchAdd()">批量增加</li>
                    </ul>

                    <a id="update" class="nui-button showCellTooltip btn btn-default btn-xs" onclick="edit()" name="ITMP_btnEdit">
                        	修改
                    </a>
                    <a class="nui-menubutton btn btn-default btn-xs" menu="#popupMenua" id="popup" name="ITMP_btnPlan">
                        	计划更新
                    </a>
                    <ul id="popupMenua" class="nui-menu" style="display:none;">
                        <li id="complete" name="ITMP_btnPlanFulfil"  onclick="planupdate('1');">计划完成</li>
                        <li id="cancel"   name="ITMP_btnPlanCancel"  onclick="planupdate('2');">计划取消</li>
                    </ul>

                    <a id="upload" class="nui-button btn btn-default btn-xs" onclick="openrecord()" name="ITMP_btnHis">
                       	变更履历
                    </a>
                    <a class="nui-button btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp">
                        	导出
                    </a>
                    <a class="nui-button btn btn-default btn-xs" onclick="remove()" name="ITMP_btnDel">
                       	删除
                    </a>
                    <a class="nui-button btn btn-default btn-xs" onclick="huishouzhan()"  name="ITMP_btnRec">
                        	回收站
                    </a>
					 <div id="jcjh" style="float:right;margin-right: 20px;">
        			检查计划类型:
                                <input zzCombo="CGDRCCombo" name="criteria/_expr[1]/type" vtype="maxLength:128"
                                       class="nui-combobox nui-form-input" onvaluechanged="chooseType()" id="CGDRC"
                                       dataField="dictObject"
                                       url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=CGDRC"
                                       textField="dictName" valueField="dictID" emptyText="请选择" required="false" allowInput="true"
                                       showNullItem="true" nullItemText="请选择..."/>
                                <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                    </div>
                </td>



            </tr>
        </table>
    </div>

    <div class="nui-layout" style="width:100%;height:100%;">
        <div region="west" width="250" title="专用检查计划列表">
            <div class="nui-fit">
                <ul id="tree1" class="nui-tree" resultAsTree="false" expandOnNodeClick="true" style="width:100%;height:100%;" idField="id"
                    parentField="parentid"
                    dataField="jsondata" textField="name" url="">
                </ul>
            </div>
        </div>
        <div title="center" region="center">
            <div class="nui-panel" title="数据列表" iconCls="" style="width:100%;height:100%;" showToolbar="false"
                 showFooter="false">

                <div class="nui-fit">
                    <div id="datagrid1"
                         dataField="tcgncgdtyrcs"
                         class="nui-datagrid" style="width:100%;height:100%;"
                         url="com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.queryTCgnCgdtyrcs.biz.ext"
                         pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"
                         onselectionchanged="selectionChanged" allowSortColumn="false" allowAlternating="true">
                        <div property="columns">
                            <div type="indexcolumn">
                            </div>
                            <div type="checkcolumn">
                            </div>
                            <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                                uuid
                            </div>
                            <div field="jd" headerAlign="center" allowSort="true" visible="false">
                                基地
                            </div>
                            <div field="jz" headerAlign="center" allowSort="true" visible="false">
                                机组
                            </div>
                            <div field="type" headerAlign="center" allowSort="true" visible="false">
                                类型
                            </div>
                            <div field="checkprojectname" headerAlign="center" allowSort="true">
                                检查项目名称
                            </div>
                            <div field="rwqd" headerAlign="center" allowSort="true">
                                维护项目
                            </div>
                            <div field="gl" headerAlign="center" allowSort="true">
                                管类
                            </div>
                            <div field="xt" headerAlign="center" allowSort="true" width="40">
                                系统
                            </div>
                            <div field="gxh" headerAlign="center" allowSort="true">
                                管线号
                            </div>
                            <div field="zysb" headerAlign="center" allowSort="true">
                                主要设备
                            </div>
                            <div field="cz" headerAlign="center" allowSort="true">
                                材质
                            </div>
                            <div field="gczj" headerAlign="center" allowSort="true">
                                公称直径(mm)
                            </div>
                            <div field="wj" headerAlign="center" allowSort="true">
                                外径(mm)
                            </div>
                            <div field="mybh" headerAlign="center" allowSort="true">
                                名义壁厚(mm)
                            </div>
                            <div field="jk" headerAlign="center" allowSort="true">
                                进口
                            </div>
                            <div field="ck" headerAlign="center" allowSort="true">
                                出口
                            </div>
                            <div field="lct" headerAlign="center" allowSort="true">
                                流程图/等轴图号
                            </div>
                            <div field="jcbw" headerAlign="center" allowSort="true">
                                检查部位/检查内容
                            </div>
                            <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                                是否删除
                            </div>
                            <div field="bz" headerAlign="center" allowSort="true">
                                备注
                            </div>
                            <div field="c1991" name="c1991" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                1991
                            </div>
                            <div field="c1992" name="c1992" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                1992
                            </div>
                            <div field="c1993" name="c1993" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                1993
                            </div>
                            <div field="c1994" name="c1994" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                1994
                            </div>
                            <div field="c1995" name="c1995" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                1995
                            </div>
                            <div field="c1996" name="c1996" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                1996
                            </div>
                            <div field="c1997" name="c1997" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                1997
                            </div>
                            <div field="c1998" name="c1998" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                1998
                            </div>
                            <div field="c1999" name="c1999" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                1999
                            </div>
                            <div field="c2000" name="c2000" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2000
                            </div>
                            <div field="c2001" name="c2001" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2001
                            </div>
                            <div field="c2002" name="c2002" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2002
                            </div>
                            <div field="c2003" name="c2003" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2003
                            </div>
                            <div field="c2004" name="c2004" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2004
                            </div>
                            <div field="c2005" name="c2005" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2005
                            </div>
                            <div field="c2006" name="c2006" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2006
                            </div>
                            <div field="c2007" name="c2007" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2007
                            </div>
                            <div field="c2008" name="c2008" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2008
                            </div>
                            <div field="c2009" name="c2009" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2009
                            </div>
                            <div field="c2010" name="c2010" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2010
                            </div>
                            <div field="c2011" name="c2011" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2011
                            </div>
                            <div field="c2012" name="c2012" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2012
                            </div>
                            <div field="c2013" name="c2013" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2013
                            </div>
                            <div field="c2014" name="c2014" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2014
                            </div>
                            <div field="c2015" name="c2015" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2015
                            </div>
                            <div field="c2016" name="c2016" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2016
                            </div>
                            <div field="c2017" name="c2017" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2017
                            </div>
                            <div field="c2018" name="c2018" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2018
                            </div>
                            <div field="c2019" name="c2019" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2019
                            </div>
                            <div field="c2020" name="c2020" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2020
                            </div>
                            <div field="c2021" name="c2021" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2021
                            </div>
                            <div field="c2022" name="c2022" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2022
                            </div>
                            <div field="c2023" name="c2023" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2023
                            </div>
                            <div field="c2024" name="c2024" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2024
                            </div>
                            <div field="c2025" name="c2025" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2025
                            </div>
                            <div field="c2026" name="c2026" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2026
                            </div>
                            <div field="c2027" name="c2027" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2027
                            </div>
                            <div field="c2028" name="c2028" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2028
                            </div>
                            <div field="c2029" name="c2029" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2029
                            </div>
                            <div field="c2030" name="c2030" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2030
                            </div>
                            <div field="c2031" name="c2031" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2031
                            </div>
                            <div field="c2032" name="c2032" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2032
                            </div>
                            <div field="c2033" name="c2033" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2033
                            </div>
                            <div field="c2034" name="c2034" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2034
                            </div>
                            <div field="c2035" name="c2035" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2035
                            </div>
                            <div field="c2036" name="c2036" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2036
                            </div>
                            <div field="c2037" name="c2037" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2037
                            </div>
                            <div field="c2038" name="c2038" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2038
                            </div>
                            <div field="c2039" name="c2039" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2039
                            </div>
                            <div field="c2040" name="c2040" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2040
                            </div>
                            <div field="c2041" name="c2041" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2041
                            </div>
                            <div field="c2042" name="c2042" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2042
                            </div>
                            <div field="c2043" name="c2043" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2043
                            </div>
                            <div field="c2044" name="c2044" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2044
                            </div>
                            <div field="c2045" name="c2045" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2045
                            </div>
                            <div field="c2046" name="c2046" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2046
                            </div>
                            <div field="c2047" name="c2047" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2047
                            </div>
                            <div field="c2048" name="c2048" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2048
                            </div>
                            <div field="c2049" name="c2049" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2049
                            </div>
                            <div field="c2050" name="c2050" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2050
                            </div>
                            <div field="c2051" name="c2051" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2051
                            </div>
                            <div field="c2052" name="c2052" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2052
                            </div>
                            <div field="c2053" name="c2053" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2053
                            </div>
                            <div field="c2054" name="c2054" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2054
                            </div>
                            <div field="c2055" name="c2055" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2055
                            </div>
                            <div field="c2056" name="c2056" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2056
                            </div>
                            <div field="c2057" name="c2057" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2057
                            </div>
                            <div field="c2058" name="c2058" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2058
                            </div>
                            <div field="c2059" name="c2059" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2059
                            </div>
                            <div field="c2060" name="c2060" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2060
                            </div>
                            <div field="c2061" name="c2061" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2061
                            </div>
                            <div field="c2062" name="c2062" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2062
                            </div>
                            <div field="c2063" name="c2063" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2063
                            </div>
                            <div field="c2064" name="c2064" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2064
                            </div>
                            <div field="c2065" name="c2065" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2065
                            </div>
                            <div field="c2066" name="c2066" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2066
                            </div>
                            <div field="c2067" name="c2067" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2067
                            </div>
                            <div field="c2068" name="c2068" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2068
                            </div>
                            <div field="c2069" name="c2069" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2069
                            </div>
                            <div field="c2070" name="c2070" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2070
                            </div>
                            <div field="c2071" name="c2071" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2071
                            </div>
                            <div field="c2072" name="c2072" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2072
                            </div>
                            <div field="c2073" name="c2073" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2073
                            </div>
                            <div field="c2074" name="c2074" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2074
                            </div>
                            <div field="c2075" name="c2075" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2075
                            </div>
                            <div field="c2076" name="c2076" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2076
                            </div>
                            <div field="c2077" name="c2077" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2077
                            </div>
                            <div field="c2078" name="c2078" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2078
                            </div>
                            <div field="c2079" name="c2079" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2079
                            </div>
                            <div field="c2080" name="c2080" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2080
                            </div>
                            <div field="c2081" name="c2081" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2081
                            </div>
                            <div field="c2082" name="c2082" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2082
                            </div>
                            <div field="c2083" name="c2083" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2083
                            </div>
                            <div field="c2084" name="c2084" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2084
                            </div>
                            <div field="c2085" name="c2085" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2085
                            </div>
                            <div field="c2086" name="c2086" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2086
                            </div>
                            <div field="c2087" name="c2087" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2087
                            </div>
                            <div field="c2088" name="c2088" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2088
                            </div>
                            <div field="c2089" name="c2089" headerAlign="center" allowSort="true" Align="center"
                                 width="60">
                                2089
                            </div>
                            <div field="fqr" headerAlign="center" allowSort="true" visible="false">
                                发起人
                            </div>
                            <div field="fqsj" headerAlign="center" allowSort="true" visible="false"
                                 dateFormat="yyyy-MM-dd HH:mm:ss">
                                发起时间
                            </div>
                            <div field="fqyy" headerAlign="center" allowSort="true" visible="false">
                                发起原因
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
    //按钮权限控制
    var start = 1991;
    var end = 2089;
    accessControlButton('<%=userRoleCodeList %>',1);

    nui.get("update").disable();
    //nui.get("add").disable();
    var tree = nui.get("tree1");
    var index = 13;
    var columnsC = [];

    var jdid = getCookie('jdid');

    nui.get('con_jdid').setValue(jdid);
    var jzid = getCookie('jzid');
    tree.setAjaxType("POST");
    tree.load("com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.searchData.biz.ext?baseid=" + jdid + "&crewid=" + jzid);
    nui.get('con_jzid').setValue(jzid);
    var grid = nui.get("datagrid1");

    
    urlStr = "com.cgn.itmp.basecommon.Common.getBaseCircle.biz.ext";
    var parms = "{baseid:" + jdid + ",crewid:" + jzid + ",type:n}";
    $.ajax({
        url: urlStr,
        type: 'POST',
        cache: false,
        data: parms,
        contentType: 'text/json',
        success: function (data) {
            var returnJson = nui.decode(data);
            if (returnJson.data.sucess) {
                start = returnJson.data.start;
                end = returnJson.data.end;
                nui.get('start').setValue(start);
                nui.get('end').setValue(end);

                if (start > end) {
                    nui.get('start').setValue(end);
                    start = end;
                }
                if (columnsC.length == 0) {
                    columnsC = columns2;
                }
                var clo = JSON.parse(JSON.stringify(columnsC));
                for (var i = start; i <= end; i++) {
                    var field = {};
                    field.field = 'c' + i;
                    field.displayField = 'C' + i;
                    field.header = i;
                    field.width = 40;
                    clo.push(field);
                }
                grid.setColumns(clo);
            }
        }
    });
    var combobox2 = nui.get("combobox2");
    if (jdid == "86") {
        combobox2.setAjaxType("POST");
        combobox2.load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=taishanbase");
    } else {
        combobox2.setAjaxType("POST");
        combobox2.load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=otherbases");
    }
    var countrys = [];
    for (var i = 1991; i <= 2089; i++) {
        countrys.push({id: 'c' + i, text: i, tag: 'c' + i});
    }
    var combo = nui.get("combo1");
    combo.setData(countrys);
	
	var checkprojectname;
	var xmly;
	
    tree.on("nodeselect", function (e) {
        var type = nui.get("CGDRC").getValue();
        checkprojectname=e.node.name;
        nui.get("checkprojectname").setValue(e.node.name);
       	var parentid = e.node.parentid;
        xmly = "";
        if(parentid == '规范法定项目'){
        	xmly = "GFFD";
        }else if(parentid == '规范非法定项目'){
        	xmly = "GFFFD";
        }
        if ("RCTY" == type) {
            if (e.isLeaf) {
            	searchs();
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.Currency",
                    "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                    "criteria/_expr[3]/checkprojectname": e.node.name,
                    "criteria/_expr[4]/isdelete": '0',
                    "criteria/_expr[5]/jd": jdid,
                    "criteria/_expr[6]/jz": jzid,
                    "criteria/_expr[7]/xt": xmly
                });
				
                parms = "";
            }
        } else if ("RCGD" == type) {
            if (e.isLeaf) {
            	searchs();
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.PressurePipe",
                    "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                    "criteria/_expr[3]/checkprojectname": e.node.name,
                    "criteria/_expr[4]/isdelete": '0',
                    "criteria/_expr[5]/jd": jdid,
                    "criteria/_expr[6]/jz": jzid,
                         "criteria/_expr[7]/xt": xmly
                });
                parms = "";
            }
        } else if ("" == type) {
            if (e.isLeaf) {
            	searchs();
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.ConventionalIslandSearch",
                    "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                    "criteria/_expr[3]/checkprojectname": e.node.name,
                    "criteria/_expr[4]/isdelete": '0',
                    "criteria/_expr[5]/jd": jdid,
                    "criteria/_expr[6]/jz": jzid,
                    "criteria/_expr[7]/xt": xmly
                });
                parms = "";
            }
        }
    });


    function btnQuery() {
        var type = nui.get("CGDRC").getValue();
        var wordVal = $("#cond").val();
        if (wordVal == '') {
            searchs();
            return;
        }
         var data={};
        if ("RCTY" == type) {
            data = {
                matchFied: "type,rwqd,gl,xt,gxh,zysb,cz,gczj,wj,mybh,jk,ck,lct,jcbw,bz",
                wordVal: $("#cond").val(),
                entity: $("input[name='criteria1/_entity']").val(),
                entityName: 'criteria',
                sfdel: true ,
            matchFiedNUMBER: "",
                jdInfo : 'jd@' + getCookie('jdid'),
				jdInfo : 'jz@' + getCookie('jzid'),
            dicFied: "type@ZYJCJHCGD，fac@FAC" 
            };
        } else if ("RCGD" == type) {
             data = {
                matchFied: "type,rwqd,gl,xt,gxh,cz,lct,jcbw,jcsl,utbw,utsl,bz",
                wordVal: $("#cond").val(),
                entity: $("input[name='criteria2/_entity']").val(),
                entityName: 'criteria',
                jdInfo : 'jd@' + getCookie('jdid'),
				jdInfo : 'jz@' + getCookie('jzid'),
				dicFied: "type@ZYJCJHCGD，fac@FAC" ,
                sfdel: true
            };
        } else {
             data = {
                matchFied: "type,rwqd,gl,xt,gxh,zysb,cz,gczj,wj,mybh,jk,ck,lct,jcbw,bz,utbw,jcsl,utsl",
                wordVal: $("#cond").val(),
                entity: $("input[name='criteria/_entity']").val(),
                entityName: 'criteria',
                sfdel: true ,
                jdInfo : 'jd@' + getCookie('jdid'),
				jdInfo : 'jz@' + getCookie('jzid'),
            dicFied: "type@ZYJCJHCGD，fac@FAC" 
            };
        }
        var query = nui.decode(getKeyWordQuery(data));
        query["criteria/_and[4]/_expr[1]/checkprojectname"]=nui.get("checkprojectname").value;
        query["criteria/_and[4]/_expr[1]/_op"]="=";


        grid.load(query);
    }


    var columns = [{type: 'checkcolumn'}, {
        field: 'rwqd',
        header: '维护项目',
        headerAlign: 'center', align: 'center', displayField: 'rwqd'
    }, {
        field: 'checkprojectname',
        header: '检查项目名称',
        headerAlign: 'center',
        displayField: 'checkprojectname'
    },
        {field: 'gl', header: '管类', headerAlign: 'center', align: 'center', displayField: 'gl'}, {
            field: 'xt',
            header: '项目来源',
            headerAlign: 'center',
            align: 'center',
            displayField: 'xt',
            visible:false,
            width:'40'
        }, {
            field: 'gxh',
            header: '管线号',
            headerAlign: 'center', displayField: 'gxh',width:'50'
        },
        {field: 'zysb', header: '主要设备', headerAlign: 'center', align: 'center', displayField: 'zysb'}, {
            field: 'cz',
            header: '材质',
            headerAlign: 'center', align: 'center', displayField: 'cz',width:'40'
        }, {field: 'gczj', header: '公称直径(mm)', headerAlign: 'center', align: 'center', displayField: 'gczj'}, {
            field: 'wj',
            header: '外径(mm)',
            headerAlign: 'center', align: 'center', displayField: 'wj',width:'40'
        },
        {field: 'mybh', header: '名义壁厚(mm)', headerAlign: 'center', align: 'center', displayField: 'mybh',width:'95'}, {
            field: 'jk',
            header: '进口',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jk',width:'40'
        },
        {field: 'ck', header: '出口', headerAlign: 'center', align: 'center', displayField: 'ck',width:'40'}, {
            field: 'lct',
            header: '流程图/等轴图号',
            headerAlign: 'center',
            displayField: 'lct'
        },
        {
            field: 'jcbw',
            header: '检查部位/检查内容',
            headerAlign: 'center',
            displayField: 'jcbw'
        }, {field: 'bz', header: '备注', headerAlign: 'center',  displayField: 'bz'}];
    var columns1 = [{type: 'checkcolumn'}, {
        field: 'rwqd',
        header: '维护项目',
        headerAlign: 'center', align: 'center', displayField: 'rwqd'
    }, {
        field: 'checkprojectname',
        header: '检查项目名称',
        headerAlign: 'center',
        displayField: 'checkprojectname'
    },
        {field: 'gl', header: '管类', headerAlign: 'center', align: 'center', displayField: 'gl',width:'40'}, {
            field: 'xt',
            header: '系统',
            headerAlign: 'center',
            align: 'center',
            displayField: 'xt',
            visible:false,
            width:'40'
        }, {
            field: 'gxh',
            header: '管线号',
            headerAlign: 'center', displayField: 'gxh',width:'50'
        },
        {field: 'cz', header: '材质', headerAlign: 'center', align: 'center', displayField: 'cz',width:'40'}, {
            field: 'lct',
            header: '流程图/等轴图号',
            headerAlign: 'center', displayField: 'lct'
        }, {
            field: 'fac',
            header: 'FAC',
            headerAlign: 'center',
            align: 'center',
            displayField: 'fac',
            Renderer: 'facRenderer'
        },
        {field: 'jcbw', header: '测厚部位', headerAlign: 'center', align: 'center', displayField: 'jcbw'}, {
            field: 'jcsl',
            header: '测厚数量',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcsl'
        },
        {field: 'utbw', header: 'UT 部位', headerAlign: 'center', align: 'center', displayField: 'utbw',width:'60'},
        {field: 'utsl', header: 'UT数量', headerAlign: 'center', align: 'center', displayField: 'utsl',width:'60'}, {
            field: 'bz',
            header: '备注',
            headerAlign: 'center',
            displayField: 'bz'
        }
    ];
    var columns2 = [{type: 'checkcolumn'}, {
        field: 'rwqd',
        header: '维护项目',
        headerAlign: 'center', align: 'center', displayField: 'rwqd'
    }, {
        field: 'checkprojectname',
        header: '检查项目名称',
        headerAlign: 'center',
        displayField: 'checkprojectname'
    },
        {field: 'gl', header: '管类', headerAlign: 'center', align: 'center', displayField: 'gl',width:'40'}, {
            field: 'xt',
            header: '项目来源',
            headerAlign: 'center',
            align: 'center',
            displayField: 'xt',
            visible:false,
            width:'40'
        }, {
            field: 'gxh',
            header: '管线号',
            headerAlign: 'center', displayField: 'gxh',width:'50'
        },
        {field: 'zysb', header: '主要设备', headerAlign: 'center', align: 'center', displayField: 'zysb'}, {
            field: 'cz',
            header: '材质',
            headerAlign: 'center', align: 'center', displayField: 'cz',width:'40'
        }, {field: 'gczj', header: '公称直径(mm)', headerAlign: 'center', align: 'center', displayField: 'gczj'}, {
            field: 'wj',
            header: '外径(mm)',
            headerAlign: 'center', align: 'center', displayField: 'wj',width:'40'
        },
        {field: 'mybh', header: '名义壁厚(mm)', headerAlign: 'center', align: 'center', displayField: 'mybh',width:'95'}, {
            field: 'jk',
            header: '进口',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jk',width:'40'
        },
        {field: 'ck', header: '出口', headerAlign: 'center', align: 'center', displayField: 'ck',width:'40'}, {
            field: 'lct',
            header: '流程图/等轴图号',
            headerAlign: 'center',
            displayField: 'lct'
        },
        {field: 'jcbw', header: '检查部位/检查内容', headerAlign: 'center', displayField: 'jcbw'}, {
            field: 'fac',
            header: 'FAC',
            headerAlign: 'center', align: 'center', displayField: 'fac',
            Renderer: 'facRenderer'
        }, {field: 'jcsl', header: '测厚数量', headerAlign: 'center', align: 'center', displayField: 'jcsl'},
        {field: 'utbw', header: 'UT 部位', headerAlign: 'center', align: 'center', displayField: 'utbw',width:'60'},
        {field: 'utsl', header: 'UT数量', headerAlign: 'center', align: 'center', displayField: 'utsl',width:'60'}, {
            field: 'bz',
            header: '备注',
            headerAlign: 'center',
            displayField: 'bz'
        }];

    function chooseType() {
        var type = nui.get("CGDRC").getValue();
        var jdid = getCookie('jdid');

        var jzid = getCookie('jzid');
        var url = "";
        if ("RCTY" == type && jdid != '' && jzid != '') {
            
            url = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.ty.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue("com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.Currency");
            columnsC = columns;
            // grid.setColumns(columns);
            $('.crwqd').css('display', 'block');
            $('.czysb').css('display', 'block');
            $('.cjcbw').css('display', 'block');
            $('.cbz').css('display', 'block');
            $('.cdzth').css('display', 'none');
        } else if ("RCGD" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.gd.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue("com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.PressurePipe");
            columnsC = columns1;
            // grid.setColumns(columns1);
            $('.crwqd').css('display', 'block');
            $('.cdzth').css('display', 'block');
            $('.cjcbw').css('display', 'none');
            $('.cbz').css('display', 'block');
            $('.czysb').css('display', 'none');
        } else if ("" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.searchData.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            columnsC = columns2;
            //grid.setColumns(columns2);
            nui.get("_entity").setValue("");
            $('.crwqd').css('display', 'none');
            $('.cdzth').css('display', 'none');
            $('.cjcbw').css('display', 'none');
            $('.cbz').css('display', 'none');
            $('.czysb').css('display', 'none');

        }
        nui.get("tree1").setAjaxType("POST");
        nui.get("tree1").load(url);
        searchs();
    }

    $(function () {
        var jdid = getCookie('jdid');
        if (jdid != "82") {
            $('.crwqd').css('display', 'block');
            $('.cdzth').css('display', 'block');
            $('.cjcbw').css('display', 'none');
            $('.cbz').css('display', 'block');
            $('.czysb').css('display', 'none');
         	$('#jcjh').hide();
        }else{
            $('#jcjh').show();
        }
    });
    $(function () {
        $('#update').attr('title', "请选择需修改条目");
        $('#popup').attr('title', "大修结束后请及时进行计划更新");
        $('#zq').attr('title', "请修改要显示的周期范围");
        var shuju = tree.getList();
        if (shuju.length == 0) {
            nui.alert("请新增专用检查计划");
        }
        grid.on("drawcell", function (e) {
            
            var record = e.record,
                column = e.column,
                field = e.field,
                value = e.value;
            //格式化日期
            if (field == "fac") {

                e.cellHtml = nui.getDictText("FAC", e.value);

            }

        });
    });

    //新增
    function add() {
        var row = grid.getSelected();
        var jdid = getCookie('jdid');
        var type = nui.get('CGDRC').getValue();
        if (jdid == "82") {
            if ("RCTY" == type) {
                if (row) {
                    nui.open({
                        showMaxButton: true,
                        url: "/itmp/specialinspection/ConventionalIslandDaily/Daily/addCurrencyForm.jsp",
                        title: "新增日常通用记录",
                        width: 874,
                        height: 500,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType: "add", record: {data: row}, checkprojectname: row.checkprojectname};//传入页面的json数据
                            iframe.contentWindow.setFormData(data);
                        },
                        ondestroy: function (action) {
                            grid.reload();
                            
                        }
                    });
                } else {
                    nui.alert("请选中插入位置（之后）", "提示");
                }
            } else if ("RCGD" == type) {
                if (row) {
                    nui.open({
                        showMaxButton: true,
                        url: "/itmp/specialinspection/ConventionalIslandDaily/Daily/addConduitForm.jsp",
                        title: "新增日常压力管道记录",
                        width: 874,
                        height: 500,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType: "add", record: {data: row}, checkprojectname: row.checkprojectname};//传入页面的json数据
                            iframe.contentWindow.setFormData(data);
                        },
                        ondestroy: function (action) {
                            grid.reload();
                            
                        }
                    });
                } else {
                    nui.alert("请选中插入位置（之后）", "提示");
                }

            } else if ("" == type) {
                /*    nui.open({showMaxButton : true,
                      url: "/itmp/specialinspection/ConventionalIslandDaily/Daily/addTypeChoose.jsp",
                      title: "请选择专用检查计划类型",
                      width: 310,
                      height: 180,
                      onload: function () {

                      },
                      ondestroy: function (action) {
                          grid.reload();
                          
                      }
                  }); */
                nui.alert("请选择专用检查计划类型");
            }
        } else {
            if (row) {
                nui.open({
                    showMaxButton: true,
                    url: "/itmp/specialinspection/ConventionalIslandDaily/Daily/addCurrencyForm.jsp",
                    title: "新增日常通用记录",
                    width: 874,
                    height: 500,
                    onload: function () {
                        var iframe = this.getIFrameEl();
                        var data = {pageType: "add", record: {data: row}, checkprojectname: row.checkprojectname};//传入页面的json数据
                        iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {
                        grid.reload();
                        
                    }
                });
            } else {
                nui.alert("请选中插入位置（之后）", "提示");
            }
        }
    }

    //批量添加
    function batchAdd() {
        var type = nui.get("CGDRC").getValue();
        var jdid = getCookie('jdid');
        if (jdid == "82") {
            if ("RCTY" == type) {
                nui.open({
                    showMaxButton: true,
                    url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
                    title: "新增记录", width: 600, height: 300,
                    onload: function () {//弹出页面加载完成
                        var iframe = this.getIFrameEl();
                        var data = {
                            pageType: "batchAdd",
                            tempFileName: "RCTYImport.xlsx",
                            type: "RCTY",
                            tempLoadName: "通用专用检查计划日常执行条目导入模板",
                            entitfName: "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.Currency"
                        };//传入页面的json数据
                        iframe.contentWindow.SetData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                        grid.reload();
                        
                    }
                });
            } else if ("RCGD" == type) {
                nui.open({
                    showMaxButton: true,
                    url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
                    title: "新增记录", width: 600, height: 300,
                    onload: function () {//弹出页面加载完成
                        var iframe = this.getIFrameEl();
                        var data = {
                            pageType: "batchAdd",
                            tempFileName: "RCYLGDImport.xlsx",
                            type: "RCGD",
                            tempLoadName: "压力管道专用检查计划日常执行条目导入模板",
                            entitfName: "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.PressurePipe"
                        };//传入页面的json数据
                        iframe.contentWindow.SetData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                        grid.reload();
                        
                    }
                });
            } else {
                nui.alert("请选择专用检查计划类型");
            }
        } else {
            nui.open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
                title: "新增记录", width: 600, height: 300,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        pageType: "batchAdd",
                        tempFileName: "RCTYImport.xlsx",
                        tempLoadName: "通用专用检查计划日常执行条目导入模板",
                        type: "RCTY",
                        entitfName: "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.Currency"
                    };//传入页面的json数据
                    iframe.contentWindow.SetData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                    
                }
            });
        }
    }

    //导出
    function output() {

        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        var type = nui.get('CGDRC').getValue();
        var jdid = getCookie('jdid');

        var filterField = "processStatus,uuid,isdelete,creator,datetime,reason,orderno,type";
        for (var i = 1991; i < parseInt(start); i++) {
            if (i <= start) filterField += ",";
            var clc = "c" + i;
            filterField += clc;
        }
        for (var k = parseInt(end) + 1 /* + 11 */; k <= 2089; k++) {
            if (k <= 2089) filterField += ",";
            var clc = "c" + k;
            filterField += clc;
        }
        if (jdid == "82") {


            if ("RCTY" == type) {
                nui.open({
                    showMaxButton: true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据", width: 388, height: 350,
                    onload: function () {//弹出页面加载完成
                        var iframe = this.getIFrameEl();
                        var data = {
                            entityName: "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.Currency",
                            queryParam: json,								    //查询数据
                            queryKey: 'criteria',                              //查询实体名
                            query: ['xt', 'isdelete', 'jd', 'jz', 'rwqd', 'jcbw', 'zysb', 'bz'],  //按顺序放置
                            queryIndex: [2, 4, 5, 6, 7, 8, 9, 11],
                            expTitle: "专用检查计划常规岛日常通用",
                            filterField: [filterField],  //要过滤的字段，多字段用,隔开
                            dicFieds: "type@CGDRC,xt@PROTYPE",
                            defaultCheck: ["jd,jz,type,checkprojectname,rwqd,gl,xt,gxh,zysb,cz,gczj,wj,mybh,jk,ck,lct,jcbw,bz"],
                            jdFieds: "jd",//导出字段是基地，需要转换成对应中文的
                            jzFieds: "jz"//导出字段是机组，需要转换成对应中文的
                        };//传入页面的json数据
                        iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                        grid.reload();
                        
                    }
                });
            } else if ("RCGD" == type) {
                nui.open({
                    showMaxButton: true,
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据", width: 388, height: 350,
                    onload: function () {//弹出页面加载完成
                        var iframe = this.getIFrameEl();
                        var data = {
                            entityName: "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.PressurePipe",
                            queryParam: json,								    //查询数据
                            queryKey: 'criteria',                              //查询实体名
                            query: ['xt', 'isdelete', 'jd', 'jz', 'rwqd', 'lct', 'bz'],  //按顺序放置
                            queryIndex: [2, 4, 5, 6, 7, 10, 11],
                            expTitle: "专用检查计划常规岛日常压力管道",
                            filterField: [filterField],  //要过滤的字段，多字段用,隔开
                            dicFieds: "type@CGDRC,fac@FAC,xt@PROTYPE",
                            defaultCheck: ["jd,jz,type,checkprojectname,rwqd,gl,xt,gxh,cz,lct,fac,jcbw,jcsl,utbw,utsl,bz"],
                            jdFieds: "jd",//导出字段是基地，需要转换成对应中文的
                            jzFieds: "jz"//导出字段是机组，需要转换成对应中文的
                        };//传入页面的json数据
                        iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                        grid.reload();
                        
                    }
                });
            } else {
                nui.alert("请选择专用检查计划类型");
            }
        } else {
            nui.open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                title: "导出数据", width: 388, height: 350,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.Currency",
                        queryParam: json,								    //查询数据
                        queryKey: 'criteria',                              //查询实体名
                        query: ['xt', 'isdelete', 'jd', 'jz', 'rwqd', 'jcbw', 'zysb', 'bz'],  //按顺序放置
                        queryIndex: [2, 4, 5, 6, 7, 8, 9, 11],
                        expTitle: "专用检查计划常规岛日常通用",
                        filterField: [filterField],  //要过滤的字段，多字段用,隔开
                        dicFieds: "type@CGDRC,xt@PROTYPE",
                        defaultCheck: ["jd,jz,type,checkprojectname,rwqd,gl,xt,gxh,zysb,cz,gczj,wj,mybh,jk,ck,lct,jcbw,bz"],
                        jdFieds: "jd",//导出字段是基地，需要转换成对应中文的
                        jzFieds: "jz"//导出字段是机组，需要转换成对应中文的
                    };//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                    
                }
            });
        }
    }


    function huishouzhan() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/specialinspection/ConventionalIslandDaily/Daily/recycleBin.jsp",
            title: "回收站",
            width: 750,
            height: 430,
            onload: function () {

            },
            ondestroy: function (action) {
                grid.reload();
                
            }
        });
    }


    //类型公共代码转换
    function gsRenderer(e) {
        return nui.getDictText("CGDRC", e.value);
    }

    function facRenderer(e) {
        return nui.getDictText("FAC", e.value);
    }

    //编辑
    function edit() {
        var row = grid.getSelected();
        if (row) {
            var json = {};
            json.datas = row;
            json.entityName = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.DailyEdit";
            json.fieldName = "uuid";
            json.relFieldName = "relid";
            json.reason = "维护项目";
            json.tsName = "rwqd"; 
            json.width = 40; 
            json = nui.encode(json);
            $.ajax({
                url: "com.cgn.itmp.basecommon.Common.getProcessStatus.biz.ext",
                type: 'POST',
                data: json,
                cache: false,
                contentType: 'text/json',
                success: function (data) {
                    var returnJson = nui.decode(data);
                    if (returnJson.record != '') {
                        nui.alert(returnJson.record, "提示");
                    } else {
                        var urlStr = "";
//                         var jdid = getCookie('jdid');
//                         var type = jdid == "82" ? "RCTY" : nui.get('CGDRC').getValue();
                        if ("RCTY" == row.type) {
                            urlStr = "/itmp/specialinspection/ConventionalIslandDaily/Daily/editCurrencyForm.jsp";
                        } else if ("RCGD" == row.type) {
                            urlStr = "/itmp/specialinspection/ConventionalIslandDaily/Daily/editConduitForm.jsp";
                        }
                        nui.open({
                            showMaxButton: true,
                            url: urlStr,
                            title: "编辑数据",
                            width: 800,
                            height: 350,
                            onload: function () {
                                var iframe = this.getIFrameEl();
                                var data = {pageType: "edit", record: {preData: row}};
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
            nui.alert("请选中一条记录", "提示");
        }
    }

    function openrecord() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/specialinspection/ConventionalIslandDaily/Daily/changeHistory.jsp",
            title: "变更履历",
            width: 1000,
            height: 520,
            onload: function () {

            },
            ondestroy: function (action) {
                grid.reload();
            }
        });
    }

    //计划更新
    function complete() {
        var type = nui.get('CGDRC').getValue();

        nui.open({
            showMaxButton: true,
            url: "/itmp/specialinspection/ConventionalIslandDaily/Daily/PlanComplete.jsp?type=" + type,
            title: "计划完成", width: 1000, height: 580,
            onload: function () {//弹出页面加载完成
                var iframe = this.getIFrameEl();
                var data = {parms: parms};//传入页面的json数据
                iframe.contentWindow.setFormData(data);
            },
            ondestroy: function (action) {//弹出页面关闭前
                grid.reload();
                
            }
        });
    }

    function ccancel() {
        var type = nui.get('CGDRC').getValue();

        nui.open({
            showMaxButton: true,
            url: "/itmp/specialinspection/ConventionalIslandDaily/Daily/PlanCancel.jsp?type=" + type,
            title: "计划取消", width: 1000, height: 580,
            onload: function () {//弹出页面加载完成
                var iframe = this.getIFrameEl();
                var data = {parms: parms};//传入页面的json数据
                iframe.contentWindow.setFormData(data);
            },
            ondestroy: function (action) {//弹出页面关闭前
                grid.reload();
                
            }
        });
    }

    //计划更新
    function planupdate(flag) {
        var jdid = getCookie('jdid');
        var type = jdid != "82" ? "RCTY" : nui.get('CGDRC').getValue();
        if ("RCTY" == type) {
            var processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.rcCgdTyPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.rcCgdTyPlanCancel';
            nui.open({
                showMaxButton: true,
                url: encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=rwqd&planFlag=" + flag + "&modelFlag=" + 25 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.Currency&processName=专用检查计划_常规岛及BOP_日常执行条目_通用&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.DailyEdit&processDef=" + processDef),
                title: flag == '1' ? '计划完成' : '计划取消',
                width: 1000, height: 650,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {parms: parms};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                    
                }
            });
        } else if ("RCGD" == type) {
            var processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.rcCgdYlgdPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.rcCgdYlgdPlanCancel';
            nui.open({
                showMaxButton: true,
                url: encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=rwqd&planFlag=" + flag + "&modelFlag=" + 26 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.PressurePipe&processName=专用检查计划_常规岛及BOP_日常执行条目_压力管道&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.DailyEdit&processDef=" + processDef),
                title: flag == '1' ? '计划完成' : '计划取消',
                width: 1000, height: 650,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {parms: parms};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                    
                }
            });
        } else {
            nui.alert("请选择专用检查计划类型");
        }
    }

    //删除
    var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";

    function remove() {
        var rows = grid.getSelecteds();
        var jdid = getCookie('jdid');
        var type = jdid != "82" ? "RCTY" : nui.get('CGDRC').getValue();
        if (rows.length > 0) {
            var json = {};
            json.datas = rows;
            json.entityName = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.DailyEdit";
            json.fieldName = "uuid";
            json.relFieldName = "relid";
            json.reason = "维护项目";
            json.tsName = "rwqd";
            json.width = 40;
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
                        if(type == "" || type == null || type == undefined){
                            nui.alert("请选择专用检查类型！");
                            return;
                        }
                        var urlStr = null;
                        var json = null;
                        var processInstName = null ;
                        var modelFlag = null;
                        
                        if ("RCTY" == type) {
                            urlStr = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.deleteCurrency.biz.ext";
                            json =  nui.encode({tcgncgdtyrc: rows});
                            processInstName = '专用检查计划_常规岛及BOP_日常执行条目_通用删除';
                            modelFlag = 25;
                        }
                        else if("RCGD" == type){
                            urlStr = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.deletePressurePipe.biz.ext";
                            json = nui.encode({tcgncgdylgdrc: rows});
                            processInstName = '专用检查计划_常规岛及BOP_日常执行条目_压力管道删除';
                            modelFlag = 26;
                        }
                        if (isadmin == 'true') {//管理员直接删除
                            nui.confirm("确定删除选中记录？", "系统提示", function (action) {
                                if (action == "ok") {
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url: urlStr,
                                        type: 'POST',
                                        data: json,
                                        cache: false,
                                        contentType: 'text/json',
                                        success: function (text) {
                                            var returnJson = nui.decode(text);
                                            if (returnJson.exception == null) {
                                                grid.reload();
                                                nui.alert("删除成功", "系统提示", function (action) {
                                                });
                                            } else {
                                                grid.unmask();
                                                nui.alert("删除失败", "系统提示");
                                            }
                                        }
                                    });
                                }
                            });
                        }else{//非管理员需要走审批流程删除
                            nui.open({
                                showMaxButton: true,
                                url: "/itmp/outlineCommon/dgDelete/dgDeleteStart.jsp",
                                title: "删除",
                                width: 500,
                                height: 300,
                                onload: function () {
                                    var iframe = this.getIFrameEl();
                                    var data = {
                                        record: {
                                            tdgglentry: rows,
                                            processDefName: 'com.cgn.itmp.outlineandplan.outline.common.deleteFDdgDxzxtm',
                                            'processInstName': processInstName,
                                            'processInstDesc': processInstName,
                                            'entityType': 'com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.DailyEdit',
                                            'modelFlag': modelFlag
                                        }
                                    };
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
            nui.alert("请至少选中一条记录！")
        }
    }

    //重新刷新页面
    function refresh() {
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        grid.load(json);//grid查询
        nui.get("update").enable();
    }


    //查询
    function searchs() {
        
        var processStatus = nui.get('sjzt').getValue();
		var zt = "";
		if("0" == processStatus){
			zt += '"criteria/_expr[12]/_op":"<>"';
			zt += ',"criteria/_expr[12]/processstatus":"1"';
		}else if("1" == processStatus){
			zt += '"criteria/_expr[12]/_op":"="';
			zt += ',"criteria/_expr[12]/processstatus":"1"';
		}
		
        var start1 = nui.get('start').getValue();
        var end1 = nui.get('end').getValue();
        if (start1 > end1) {
            nui.get('start').setValue(end1);
            start1 = end1;
        }
        if (columnsC.length == 0) {
            columnsC = columns2;
        }
        var clo = JSON.parse(JSON.stringify(columnsC));
        for (var i = start1; i <= end1; i++) {
            var field = {};
            field.field = 'c' + i;
            field.displayField = 'c' + i;
            field.header = i;
            field.width = 40;
            clo.push(field);
        }
        var combo1 = nui.get("combo1").getValue();
        var combobox2 = nui.get("combobox2").getValue();
        var queryJ = "";
        if (combobox2 != null && combobox2 != '') {
            combobox2 = combobox2.split(",");
            for (var i = 0; i < combobox2.length; i++) {
                if (i > 0)
                    queryJ += ",";
                var lcValue = combobox2[i];
                if (lcValue == 'P') {
                    queryJ += '"criteria/_or[1]/_expr[' + index + ']/_op":"like"';
                    queryJ += ',"criteria/_or[1]/_expr[' + index + ']/' + combo1.toLowerCase() + '":"' + lcValue + ',"';
                    index++;
                    queryJ += ",";
                    queryJ += '"criteria/_or[1]/_expr[' + index + ']/_op":"="';
                    queryJ += ',"criteria/_or[1]/_expr[' + index + ']/' + combo1.toLowerCase() + '":"' + lcValue + '"';
                    index++;
                } else if (lcValue == 'S') {
                    queryJ += '"criteria/_or[1]/_expr[' + index + ']/_op":"like"';
                    queryJ += ',"criteria/_or[1]/_expr[' + index + ']/' + combo1.toLowerCase() + '":"' + lcValue + ',"';
                    index++;
                    queryJ += ",";

                    queryJ += '"criteria/_or[1]/_expr[' + index + ']/_op":"like"';
                    queryJ += ',"criteria/_or[1]/_expr[' + index + ']/' + combo1.toLowerCase() + '":",' + lcValue + ',"';
                    index++;
                    queryJ += ",";

                    queryJ += '"criteria/_or[1]/_expr[' + index + ']/_op":"="';
                    queryJ += ',"criteria/_or[1]/_expr[' + index + ']/' + combo1.toLowerCase() + '":"' + lcValue + '"';
                    index++;
                } else {
                    queryJ += '"criteria/_or[1]/_expr[' + index + ']/_op":"like"';
                    queryJ += ',"criteria/_or[1]/_expr[' + index + ']/' + combo1.toLowerCase() + '":"' + lcValue + '"';
                    index++;
                }
            }
        }
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        grid.setColumns(clo);
        var jsonstr = nui.encode(json);
        var str = jsonstr.substr(0, jsonstr.length - 1);
        if(zt != '')str += ","+zt;
        if (queryJ != '')
            str += "," + queryJ;
        str = nui.decode(str + "}");
        grid.load(nui.decode(str));//grid查询

    }

    //重置查询条件
    function reset() {
        var form = new nui.Form("#form1");//将普通form转为nui的form
        form.reset();
        nui.get('start').setValue(start);
        nui.get('end').setValue(end);
        nui.get('con_jdid').setValue(getCookie('jdid'));
        nui.get('con_jzid').setValue(getCookie('jzid'));
        nui.get('CGDRC').setValue('');
        nui.get('checkprojectname').setValue(checkprojectname);
//         nui.get("tree1").setAjaxType("POST");
        nui.get('tree1')
            .load("com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.searchData.biz.ext?baseid=" + jdid + "&crewid=" + jzid);
        nui.get('_entity').setValue(
            "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.ConventionalIslandSearch");
    }

    //enter键触发查询
    function onKeyEnter(e) {
        searchs();
    }

    //当选择列时
    function selectionChanged() {
        var rows = grid.getSelecteds();
        if (rows.length > 1 || rows.length == 0) {
            nui.get("update").disable();
            //nui.get("add").disable();
        } else {
            nui.get("update").enable();
            //nui.get("add").enable();
        }
    }
    //高级搜索按钮
function showquery() {
	var div = $("#queryForm1");
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
</script>
<style>
    ul, li {
        list-style: none;
    }

    ul li {
        float: left;
        margin: 3px 25px;
    }

    #ym {
        overflow: hidden;
        margin-bottom:0px;
    }
</style>
</body>
</html>
