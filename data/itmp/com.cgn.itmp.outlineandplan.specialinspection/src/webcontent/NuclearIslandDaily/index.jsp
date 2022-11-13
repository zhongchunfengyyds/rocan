<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%
    String detailed = request.getParameter("detailed");
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-02-11 10:31:56
- Description:
    --%>
<head>
    <title>
        专用检查计划日常查询
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
   li{
   	margin:3px 0px;
   }
   		.form-group ul{
   		width:100%;
   		}
   		.form-group ul li{
   		width:12%;
   		}
   		.row {
    margin-left: 0px;
    margin-right:0px;
}
   </style>
</head>
<style>
</style>
<body style="width:98%;height:99%;margin:0 auto;">

<div class="bs-docs-section">
    <div id="form1" class="nui-form" align="center" style="height:100%">
        <!-- 数据实体的名称 -->

        <input class="nui-hidden" name="criteria1/_entity" value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.PipelineSupport">
        <input class="nui-hidden" name="criteria2/_entity" value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.BossHead">
        <input class="nui-hidden" name="criteria3/_entity" value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container">
        <input class="nui-hidden" name="criteria4/_entity" value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Valve">
        <input class="nui-hidden" name="criteria5/_entity" value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container">
        <input class="nui-hidden" name="criteria6/_entity" value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Support">
        <input class="nui-hidden" name="criteria/_entity" id="_entity" value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.NuclearIslandDailySearch">
        <!-- 排序字段 -->
        <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="orderno">
        <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
        <input class="nui-hidden" name="criteria1/_orderby[1]/_property" value="orderno">
        <input class="nui-hidden" name="criteria1/_orderby[1]/_sort" value="asc">
        <input class="nui-hidden" name="criteria2/_orderby[1]/_property" value="orderno">
        <input class="nui-hidden" name="criteria2/_orderby[1]/_sort" value="asc">
        <input class="nui-hidden" name="criteria3/_orderby[1]/_property" value="orderno">
        <input class="nui-hidden" name="criteria3/_orderby[1]/_sort" value="asc">
        <input class="nui-hidden" name="criteria4/_orderby[1]/_property" value="orderno">
        <input class="nui-hidden" name="criteria4/_orderby[1]/_sort" value="asc">
        <input class="nui-hidden" name="criteria5/_orderby[1]/_property" value="orderno">
        <input class="nui-hidden" name="criteria5/_orderby[1]/_sort" value="asc">
        <input class="nui-hidden" name="criteria6/_orderby[1]/_property" value="orderno">
        <input class="nui-hidden" name="criteria6/_orderby[1]/_sort" value="asc">
        
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
							<td style="width: 20%; background: #f7f7f9;" class="form_label">
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
							<td style="width: 20%;" class="form_label">
								<input class="nui-spinner" id="start" maxValue="2089" minValue="1991" style="width: 80px"
                                   name=""/>-<input class="nui-spinner" id="end" maxValue="2089" minValue="1991"
                                                    style="width: 80px" name=""/>
	                            <a class="nui-button" id="zq" onclick="searchs()"> 修改显示周期 </a>
							</td>
													<td style="width: 5%;"></td>
							
						</tr>
					</table>
       <div class="search-container folding-menu displaynone" style="" id="queryForm1">
                <div class="row">
                    <div>
                        <div class="form-group">

                            <ul id="ym" style="padding-left:0px!important;margin-bottom:0px!important;">
                                <li id="jcff1">检查方法:</li>
                                <li id="jcff2" ><input class="nui-textbox"
                                                      name="criteria/_expr[2]/jcmethod"/> <input
                                        class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[2]/_likeRule"
                                           value="all"></li>
                                <li id="ym5" style="display: none">系统:</li>
                                <li id="ym6" style="display: none"><input class="nui-textbox"
                                                    name="criteria/_expr[3]/system"/> <input class="nui-hidden"
                                                                                             name="criteria/_expr[3]/_op"
                                                                                             value="like"> <input
                                        class="nui-hidden" name="criteria/_expr[3]/_likeRule"
                                        value="all"></li>


                                <li id="jcmc" style="display: none">检查项目名称:</li>
                                <li id="jcmc1" style="display: none;"><input
                                        class="nui-textbox" id="checkprojectname" name="criteria/_expr[4]/checkprojectname"/>
                                    <input class="nui-hidden" name="criteria/_expr[4]/_op"
                                           value="="> <input class="nui-hidden"
                                                                name="criteria/_expr[4]/_likeRule" value="all"></li>
                                <li style="display: none;"><input class="nui-hidden"
                                                                  name="criteria/_expr[5]/isdelete" value="0"/> <input
                                        class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[5]/_likeRule"
                                           value="all"></li>
                                <li style="display: none;">
                                    <input class="nui-hidden" id="con_jdid" name="criteria/_expr[6]/base"/>
                                    <input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[6]/_likeRule" value="all"></li>
                                <li style="display: none;"><input class="nui-hidden"
                                                                  id="con_jzid" name="criteria/_expr[7]/crew"/> <input
                                        class="nui-hidden" name="criteria/_expr[7]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[7]/_likeRule"
                                           value="all"></li>

                                <li class="rwqd" style="display: none;">维护项目:</li><li class="rwqd" style="display: none;"> <input
                                        class="nui-textbox" name="criteria/_expr[8]/tasklist"/> <input
                                        class="nui-hidden" name="criteria/_expr[8]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[8]/_likeRule"
                                           value="all">
                                </li>

                                <li>轮次&状态:</li>
                                <li><input id="combo1" class="nui-combobox"
                                                  style="width:50%;float:left;" valueField="id" required="true"
                                                  allowInput="true" textField="text" pinyinField="tag">
                                    <div id="combobox2" class="nui-combobox" style="width: 50%;"
                                         popupWidth="200" textField="name" valueField="id" url=""
                                         multiSelect="true" showClose="true"
                                         oncloseclick="onCloseClick" dataField="jsonObject">
                                        <div property="columns">
                                            <div header="状态" field="name"></div>
                                        </div>
                                    </div>
                                </li>
                            </ul>

                            <ul id="ym1" style="padding-left:0px!important;margin-bottom:0px!important;">
                                <li  class="ckth form_label" colspan="3"
                                    style="display: none;">参考图号:</li><li class="ckth form_label" colspan="3"
                                    style="display: none;"> <input class="nui-textbox"
                                                                       name="criteria/_expr[9]/ckt_dzhnumber"/> <input
                                        class="nui-hidden" name="criteria/_expr[9]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[9]/_likeRule"
                                           value="all">
                                </li>


                                <li class="hfh" style="display: none;">焊缝号:</li><li class="hfh" style="display: none;"> <input
                                        class="nui-textbox" name="criteria/_expr[10]/hfnumber"/> <input
                                        class="nui-hidden" name="criteria/_expr[10]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[10]/_likeRule"
                                           value="all">
                                </li>
                                
                                <li class="zch" style="display: none;">支撑号:</li><li class="zch" style="display: none;"> <input
                                        class="nui-textbox" name="criteria/_expr[12]/bracenumber"/>
                                    <input class="nui-hidden" name="criteria/_expr[12]/_op"
                                           value="like"> <input class="nui-hidden"
                                                                name="criteria/_expr[12]/_likeRule" value="all">
                                </li>
                                
                                <li class="gxh" style="display: none;">管线号:</li><li class="gxh" style="display: none;"> <input
                                        class="nui-textbox" name="criteria/_expr[11]/gxnumber"/> <input
                                        class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[11]/_likeRule"
                                           value="all">
                                </li>

                                

                                <li class="gnwz1" style="display: none;">功能位置:</li><li class="gnwz1" style="display: none;"> <input
                                        class="nui-textbox" name="criteria/_expr[13]/gnwz"/> <input
                                        class="nui-hidden" name="criteria/_expr[13]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[13]/_likeRule"
                                           value="all">
                                </li>

                                <li class="sbth1" style="display: none;">设备图号: </li><li class="sbth1" style="display: none;"><input
                                        class="nui-textbox" name="criteria/_expr[14]/sbnumber"/> <input
                                        class="nui-hidden" name="criteria/_expr[14]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[14]/_likeRule"
                                           value="all">
                                </li>
                                <li class="jjfs" style="display: none">接近方式: </li><li class="jjfs" style="display: none"><input
                                        class="nui-textbox" name="criteria/_expr[15]/jjmode"/> <input
                                        class="nui-hidden" name="criteria/_expr[15]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[15]/_likeRule"
                                           value="all">
                                </li>

                                <li class="ll" style="display: none;">列:</li> <li class="ll" style="display: none;"><input
                                        class="nui-textbox" name="criteria/_expr[16]/columnsint"/> <input
                                        class="nui-hidden" name="criteria/_expr[16]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[16]/_likeRule"
                                           value="all">
                                </li>

                                <li class="hh" style="display: none;">行:</li><li class="hh" style="display: none;"> <input
                                        class="nui-textbox" name="criteria/_expr[17]/row"/> <input
                                        class="nui-hidden" name="criteria/_expr[17]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[17]/_likeRule"
                                           value="all">
                                </li>

                                
                            </ul>

                            <ul id="ym2" style="padding-left:0px!important;margin-bottom:0px!important;">
                                <li>系统设备:</li><li> <input class="nui-textbox"
                                                 name="criteria/_expr[19]/systemdevice"/> <input
                                        class="nui-hidden" name="criteria/_expr[19]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[19]/_likeRule"
                                           value="all">
                                </li>


                                <li >类别:</li><li> <input class="nui-textbox"
                                               name="criteria/_expr[20]/category"/> <input
                                        class="nui-hidden" name="criteria/_expr[20]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[20]/_likeRule"
                                           value="all">
                                </li>
                                <li id="jclx" style="display: none;">检查类型: <input
                                        class="nui-textbox" name="criteria/_expr[18]/checktype"/> <input
                                        class="nui-hidden" name="criteria/_expr[18]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[18]/_likeRule"
                                           value="all">
                                </li>

                            </ul>
                            <ul style="padding-left:0px!important;">
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

                    <a id="update" class="nui-button showCellTooltip btn btn-default btn-xs" onclick="edit()"  name="ITMP_btnEdit">
                        	修改
                    </a>
                    <a class="nui-menubutton btn btn-default btn-xs" menu="#popupMenua" id="popup" name="ITMP_btnPlan">
                        	计划更新
                    </a>
                    <ul id="popupMenua" class="nui-menu" style="display:none;">
                        <li id="complete" name="ITMP_btnPlanFulfil" onclick="planupdate('1');">计划完成</li>
                        <li id="cancel"   name="ITMP_btnPlanCancel" onclick="planupdate('2');">计划取消</li>
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
                    <a class="nui-button btn btn-default btn-xs" onclick="resycle()" name="ITMP_btnRec">
                        	回收站
                    </a>
                    <div style="float:right;margin-right: 20px;">
        			检查计划类型:
                    <input zzCombo="ZYJCJHCombo" name="criteria/_expr[1]/type" vtype="maxLength:128"
                           class="nui-combobox nui-form-input" onvaluechanged="chooseType()" id="zyjcjh"
                           dataField="dictObject" url="" textField="dictName" valueField="dictID" emptyText="请选择"
                           required="false" allowInput="true" showNullItem="true" nullItemText="请选择..."/>
                    <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                    </div>
                    

                </td>

                <!--    <td>
                       	<input class="nui-spinner"  id="start" maxValue="2089" minValue="1991" value="1991" style="width: 80px" name=""/>-<input class="nui-spinner"  id="end" maxValue="2089" minValue="1991" value="2089" style="width: 80px" name=""/>
							<a class="nui-button" id="zq"  onclick="search()">
				               周期
				            </a>
				         </td> -->
            </tr>
        </table>
    </div>

    <div class="nui-layout" style="width:100%;height:100%;">
        <div region="west" width="250" title="专用检查计划列表">
            <div class="nui-fit">
                <ul id="tree1" class="nui-tree" resultAsTree="false" expandOnNodeClick="true"  style="width:100%;height:100%;" idField="id"
                    parentField="parentid"
                    dataField="jsondata" textField="name" url="">
                </ul>
            </div>
        </div>
        <div title="center" region="center">
            <div class="nui-panel" title="数据列表" style="width:100%;height:100%;" showToolbar="false" showFooter="false">


                <div class="nui-fit">
                    <div
                            id="datagrid1"
                            dataField="tdggltzyjcjhrcbosss"
                            class="nui-datagrid"
                            style="width:100%;height:100%;"
                            url="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.queryTDgglTzyjcjhrcbosss.biz.ext"
                            pageSize="20" sizeList="[20,100,1000]"
                            showPageInfo="true"
                            multiSelect="true"
                            onselectionchanged="selectionChanged"
                            allowSortColumn="false"
                            allowAlternating="true">

                        <div property="columns">
                            <div type="indexcolumn">
                            </div>
                            <div type="checkcolumn">
                            </div>
                            <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                                uuid
                            </div>
                            <div field="processInstId" headerAlign="center" allowSort="true" visible="false">
                                processInstId
                            </div>
							<div field=processstatus headerAlign="center" Align="center" allowSort="true" visible="false">
                            	processstatus
                        	</div>
                            <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                                序号
                            </div>

                            <div field="type" headerAlign="center" allowSort="true" visible="false">
                                类型
                            </div>
                            <div field="tasklist" headerAlign="center" allowSort="true">
                                维护项目
                            </div>
                            <div field="checkprojectname" headerAlign="center" allowSort="true">
                                检查项目名称
                            </div>
                            <div field="itemnumber" headerAlign="center" allowSort="true" width="40">
                                项号
                            </div>
                            <div field="system" headerAlign="center" allowSort="true" width="40">
                                系统
                            </div>
                            <div field="equipment" headerAlign="center" allowSort="true">
                                设备
                            </div>
                            <div field="hfnumber" headerAlign="center" allowSort="true">
                                焊缝号
                            </div>
                            <div field="number" headerAlign="center" allowSort="true" width="40">
                                数量
                            </div>
                            <div field="gxnumber" headerAlign="center" allowSort="true">
                                管线号
                            </div>
                            <div field="ckt_dzhnumber" headerAlign="center" allowSort="true">
                                参考图号/等轴图
                            </div>
                            <div field="roomnumber" headerAlign="center" allowSort="true">
                                房间号
                            </div>
                            <div field="jcmethod" headerAlign="center" allowSort="true">
                                检查方法
                            </div>
                            <div field="jcprocedure" headerAlign="center" allowSort="true">
                                检查程序
                            </div>
                            <div field="remarks" headerAlign="center" allowSort="true">
                                备注
                            </div>
                            <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                                是否删除
                            </div>
                            <div field="systemdevice" headerAlign="center" allowSort="true">
                                系统设备
                            </div>
                            <div field="category" headerAlign="center" allowSort="true">
                                类别
                            </div>
                            <div field="gj" headerAlign="center" allowSort="true">
                                管径
                            </div>
                            <div field="bw" headerAlign="center" allowSort="true">
                                保温
                            </div>
                            <div field="material" headerAlign="center" allowSort="true">
                                材料
                            </div>
                            <div field="bracenumber" headerAlign="center" allowSort="true">
                                支撑号
                            </div>
                            <div field="jjmode" headerAlign="center" allowSort="true">
                                接近方式
                            </div>
                            <div field="pmcycle" headerAlign="center" allowSort="true">
                                PM周期
                            </div>
                            <div field="pmcode" headerAlign="center" allowSort="true">
                                PM编码
                            </div>
                            <div field="gnwz" headerAlign="center" allowSort="true">
                                功能位置
                            </div>
                            <div field="jcbw" headerAlign="center" allowSort="true">
                                检查部位
                            </div>
                            <div field="gfcycle" headerAlign="center" allowSort="true">
                                规范周期
                            </div>
                            <div field="zxunit" headerAlign="center" allowSort="true">
                                执行单位
                            </div>
                            <div field="sbname" headerAlign="center" allowSort="true">
                                设备名称
                            </div>
                            <div field="gkc" headerAlign="center" allowSort="true">
                                管壳侧
                            </div>
                            <div field="sbnumber" headerAlign="center" allowSort="true">
                                设备图号
                            </div>
                            <div field="zytool" headerAlign="center" allowSort="true" width="120">
                                专用工具
                            </div>
                            <div field="sbbh" headerAlign="center" allowSort="true">
                                设备编号
                            </div>
                            <div field="columnsint" headerAlign="center" allowSort="true">
                                列
                            </div>
                            <div field="row" headerAlign="center" allowSort="true">
                                行
                            </div>
                            <div field="checktype" headerAlign="center" allowSort="true">
                                检查类型
                            </div>
                            <div field="jccycle" headerAlign="center" allowSort="true">
                                检查周期
                            </div>
                            <div field="c1991" name="c1991" headerAlign="center" allowSort="true" width="40">
                                1991
                            </div>
                            <div field="c1992" name="c1992" headerAlign="center" allowSort="true" width="40">
                                1992
                            </div>
                            <div field="c1993" name="c1993" headerAlign="center" allowSort="true" width="40">
                                1993
                            </div>
                            <div field="c1994" name="c1994" headerAlign="center" allowSort="true" width="40">
                                1994
                            </div>
                            <div field="c1995" name="c1995" headerAlign="center" allowSort="true" width="40">
                                1995
                            </div>
                            <div field="c1996" name="c1996" headerAlign="center" allowSort="true" width="40">
                                1996
                            </div>
                            <div field="c1997" name="c1997" headerAlign="center" allowSort="true" width="40">
                                1997
                            </div>
                            <div field="c1998" name="c1998" headerAlign="center" allowSort="true" width="40">
                                1998
                            </div>
                            <div field="c1999" name="c1999" headerAlign="center" allowSort="true" width="40">
                                1999
                            </div>
                            <div field="c2000" name="c2000" headerAlign="center" allowSort="true" width="40">
                                2000
                            </div>
                            <div field="c2001" name="c2001" headerAlign="center" allowSort="true" width="40">
                                2001
                            </div>
                            <div field="c2002" name="c2002" headerAlign="center" allowSort="true" width="40">
                                2002
                            </div>
                            <div field="c2003" name="c2003" headerAlign="center" allowSort="true" width="40">
                                2003
                            </div>
                            <div field="c2004" name="c2004" headerAlign="center" allowSort="true" width="40">
                                2004
                            </div>
                            <div field="c2005" name="c2005" headerAlign="center" allowSort="true" width="40">
                                2005
                            </div>
                            <div field="c2006" name="c2006" headerAlign="center" allowSort="true" width="40">
                                2006
                            </div>
                            <div field="c2007" name="c2007" headerAlign="center" allowSort="true" width="40">
                                2007
                            </div>
                            <div field="c2008" name="c2008" headerAlign="center" allowSort="true" width="40">
                                2008
                            </div>
                            <div field="c2009" name="c2009" headerAlign="center" allowSort="true" width="40">
                                2009
                            </div>
                            <div field="c2010" name="c2010" headerAlign="center" allowSort="true" width="40">
                                2010
                            </div>
                            <div field="c2011" name="c2011" headerAlign="center" allowSort="true" width="40">
                                2011
                            </div>
                            <div field="c2012" name="c2012" headerAlign="center" allowSort="true" width="40">
                                2012
                            </div>
                            <div field="c2013" name="c2013" headerAlign="center" allowSort="true" width="40">
                                2013
                            </div>
                            <div field="c2014" name="c2014" headerAlign="center" allowSort="true" width="40">
                                2014
                            </div>
                            <div field="c2015" name="c2015" headerAlign="center" allowSort="true" width="40">
                                2015
                            </div>
                            <div field="c2016" name="c2016" headerAlign="center" allowSort="true" width="40">
                                2016
                            </div>
                            <div field="c2017" name="c2017" headerAlign="center" allowSort="true" width="40">
                                2017
                            </div>
                            <div field="c2018" name="c2018" headerAlign="center" allowSort="true" width="40">
                                2018
                            </div>
                            <div field="c2019" name="c2019" headerAlign="center" allowSort="true" width="40">
                                2019
                            </div>
                            <div field="c2020" name="c2020" headerAlign="center" allowSort="true" width="40">
                                2020
                            </div>
                            <div field="c2021" name="c2021" headerAlign="center" allowSort="true" width="40">
                                2021
                            </div>
                            <div field="c2022" name="c2022" headerAlign="center" allowSort="true" width="40">
                                2022
                            </div>
                            <div field="c2023" name="c2023" headerAlign="center" allowSort="true" width="40">
                                2023
                            </div>
                            <div field="c2024" name="c2024" headerAlign="center" allowSort="true" width="40">
                                2024
                            </div>
                            <div field="c2025" name="c2025" headerAlign="center" allowSort="true" width="40">
                                2025
                            </div>
                            <div field="c2026" name="c2026" headerAlign="center" allowSort="true" width="40">
                                2026
                            </div>
                            <div field="c2027" name="c2027" headerAlign="center" allowSort="true" width="40">
                                2027
                            </div>
                            <div field="c2028" name="c2028" headerAlign="center" allowSort="true" width="40">
                                2028
                            </div>
                            <div field="c2029" name="c2029" headerAlign="center" allowSort="true" width="40">
                                2029
                            </div>
                            <div field="c2030" name="c2030" headerAlign="center" allowSort="true" width="40">
                                2030
                            </div>
                            <div field="c2031" name="c2031" headerAlign="center" allowSort="true" width="40">
                                2031
                            </div>
                            <div field="c2032" name="c2032" headerAlign="center" allowSort="true" width="40">
                                2032
                            </div>
                            <div field="c2033" name="c2033" headerAlign="center" allowSort="true" width="40">
                                2033
                            </div>
                            <div field="c2034" name="c2034" headerAlign="center" allowSort="true" width="40">
                                2034
                            </div>
                            <div field="c2035" name="c2035" headerAlign="center" allowSort="true" width="40">
                                2035
                            </div>
                            <div field="c2036" name="c2036" headerAlign="center" allowSort="true" width="40">
                                2036
                            </div>
                            <div field="c2037" name="c2037" headerAlign="center" allowSort="true" width="40">
                                2037
                            </div>
                            <div field="c2038" name="c2038" headerAlign="center" allowSort="true" width="40">
                                2038
                            </div>
                            <div field="c2039" name="c2039" headerAlign="center" allowSort="true" width="40">
                                2039
                            </div>
                            <div field="c2040" name="c2040" headerAlign="center" allowSort="true" width="40">
                                2040
                            </div>
                            <div field="c2041" name="c2041" headerAlign="center" allowSort="true" width="40">
                                2041
                            </div>
                            <div field="c2042" name="c2042" headerAlign="center" allowSort="true" width="40">
                                2042
                            </div>
                            <div field="c2043" name="c2043" headerAlign="center" allowSort="true" width="40">
                                2043
                            </div>
                            <div field="c2044" name="c2044" headerAlign="center" allowSort="true" width="40">
                                2044
                            </div>
                            <div field="c2045" name="c2045" headerAlign="center" allowSort="true" width="40">
                                2045
                            </div>
                            <div field="c2046" name="c2046" headerAlign="center" allowSort="true" width="40">
                                2046
                            </div>
                            <div field="c2047" name="c2047" headerAlign="center" allowSort="true" width="40">
                                2047
                            </div>
                            <div field="c2048" name="c2048" headerAlign="center" allowSort="true" width="40">
                                2048
                            </div>
                            <div field="c2049" name="c2049" headerAlign="center" allowSort="true" width="40">
                                2049
                            </div>
                            <div field="c2050" name="c2050" headerAlign="center" allowSort="true" width="40">
                                2050
                            </div>
                            <div field="c2051" name="c2051" headerAlign="center" allowSort="true" width="40">
                                2051
                            </div>
                            <div field="c2052" name="c2052" headerAlign="center" allowSort="true" width="40">
                                2052
                            </div>
                            <div field="c2053" name="c2053" headerAlign="center" allowSort="true" width="40">
                                2053
                            </div>
                            <div field="c2054" name="c2054" headerAlign="center" allowSort="true" width="40">
                                2054
                            </div>
                            <div field="c2055" name="c2055" headerAlign="center" allowSort="true" width="40">
                                2055
                            </div>
                            <div field="c2056" name="c2056" headerAlign="center" allowSort="true" width="40">
                                2056
                            </div>
                            <div field="c2057" name="c2057" headerAlign="center" allowSort="true" width="40">
                                2057
                            </div>
                            <div field="c2058" name="c2058" headerAlign="center" allowSort="true" width="40">
                                2058
                            </div>
                            <div field="c2059" name="c2059" headerAlign="center" allowSort="true" width="40">
                                2059
                            </div>
                            <div field="c2060" name="c2060" headerAlign="center" allowSort="true" width="40">
                                2060
                            </div>
                            <div field="c2061" name="c2061" headerAlign="center" allowSort="true" width="40">
                                2061
                            </div>
                            <div field="c2062" name="c2062" headerAlign="center" allowSort="true" width="40">
                                2062
                            </div>
                            <div field="c2063" name="c2063" headerAlign="center" allowSort="true" width="40">
                                2063
                            </div>
                            <div field="c2064" name="c2064" headerAlign="center" allowSort="true" width="40">
                                2064
                            </div>
                            <div field="c2065" name="c2065" headerAlign="center" allowSort="true" width="40">
                                2065
                            </div>
                            <div field="c2066" name="c2066" headerAlign="center" allowSort="true" width="40">
                                2066
                            </div>
                            <div field="c2067" name="c2067" headerAlign="center" allowSort="true" width="40">
                                2067
                            </div>
                            <div field="c2068" name="c2068" headerAlign="center" allowSort="true" width="40">
                                2068
                            </div>
                            <div field="c2069" name="c2069" headerAlign="center" allowSort="true" width="40">
                                2069
                            </div>
                            <div field="c2070" name="c2070" headerAlign="center" allowSort="true" width="40">
                                2070
                            </div>
                            <div field="c2071" name="c2071" headerAlign="center" allowSort="true" width="40">
                                2071
                            </div>
                            <div field="c2072" name="c2072" headerAlign="center" allowSort="true" width="40">
                                2072
                            </div>
                            <div field="c2073" name="c2073" headerAlign="center" allowSort="true" width="40">
                                2073
                            </div>
                            <div field="c2074" name="c2074" headerAlign="center" allowSort="true" width="40">
                                2074
                            </div>
                            <div field="c2075" name="c2075" headerAlign="center" allowSort="true" width="40">
                                2075
                            </div>
                            <div field="c2076" name="c2076" headerAlign="center" allowSort="true" width="40">
                                2076
                            </div>
                            <div field="c2077" name="c2077" headerAlign="center" allowSort="true" width="40">
                                2077
                            </div>
                            <div field="c2078" name="c2078" headerAlign="center" allowSort="true" width="40">
                                2078
                            </div>
                            <div field="c2079" name="c2079" headerAlign="center" allowSort="true" width="40">
                                2079
                            </div>
                            <div field="c2080" name="c2080" headerAlign="center" allowSort="true" width="40">
                                2080
                            </div>
                            <div field="c2081" name="c2081" headerAlign="center" allowSort="true" width="40">
                                2081
                            </div>
                            <div field="c2082" name="c2082" headerAlign="center" allowSort="true" width="40">
                                2082
                            </div>
                            <div field="c2083" name="c2083" headerAlign="center" allowSort="true" width="40">
                                2083
                            </div>
                            <div field="c2084" name="c2084" headerAlign="center" allowSort="true" width="40">
                                2084
                            </div>
                            <div field="c2085" name="c2085" headerAlign="center" allowSort="true" width="40">
                                2085
                            </div>
                            <div field="c2086" name="c2086" headerAlign="center" allowSort="true" width="40">
                                2086
                            </div>
                            <div field="c2087" name="c2087" headerAlign="center" allowSort="true" width="40">
                                2087
                            </div>
                            <div field="c2088" name="c2088" headerAlign="center" allowSort="true" width="40">
                                2088
                            </div>
                            <div field="c2089" name="c2089" headerAlign="center" allowSort="true" width="40">
                                2089
                            </div>

                            <div field="delpeople" headerAlign="center" allowSort="true" visible="false">
                                发起人
                            </div>
                            <div field="deltime" headerAlign="center" allowSort="true" visible="false"
                                 dateFormat="yyyy-MM-dd HH:mm:ss">
                                发起时间
                            </div>
                            <div field="delreason" headerAlign="center" allowSort="true" visible="false">
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
    accessControlButton('<%=userRoleCodeList %>',1);

    var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
    var index = 25;
    nui.get("update").disable();
    var tree = nui.get("tree1");
    var jdid = getCookie('jdid');
    nui.get('con_jdid').setValue(jdid);
    var jzid = getCookie('jzid');
    tree.setAjaxType("POST");
    tree.load("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.searchData.biz.ext?baseid=" + jdid + "&crewid=" + jzid);
    nui.get('con_jzid').setValue(jzid);
    var columnsC = [];
    var grid = nui.get("datagrid1");
    var detailed = '<%=detailed %>';
    if (detailed != 'null' && detailed != null && detailed != '') {
        $('#cond').val(detailed.replace(/(^\s*)|(\s*$)/g, ""));
        btnQuery();
    }
    var start = 1991;
    var end = 2089;
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
                    columnsC = columns7;
                }
                var clo = JSON.parse(JSON.stringify(columnsC));
                for (var i = start; i <= end; i++) {
                    var field = {};
                    field.field = 'c' + i;
                    field.displayField = 'c' + i;
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
    nui.parse();
    var combo = nui.get("combo1");
    combo.setData(countrys);

	var checkprojectname="";
	var xmly = "";
    tree.on("nodeselect", function (e) {
        var type = nui.get("zyjcjh").getValue();
        checkprojectname=e.node.name;
		var parentid = e.node.parentid;
		nui.get("checkprojectname").setValue(e.node.name);
        xmly = "";
        if(parentid == '规范法定项目'){
        	xmly = "GFFD";
        }else if(parentid == '规范非法定项目'){
        	xmly = "GFFFD";
        }
        if ("HFGDZC" == type) {
            if (e.isLeaf) {
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.PipelineSupport",
                    "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                    "criteria/_expr[5]/checkprojectname": e.node.name,
                    "criteria/_expr[6]/isdelete": '0',
                    "criteria/_expr[20]/base": jdid,
                    "criteria/_expr[30]/crew": jzid,
                         "criteria/_expr[31]/system": xmly
                });

                parms = "";
            }
        } else if ("HFBOSS" == type) {
            if (e.isLeaf) {
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.BossHead",
                    "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                    "criteria/_expr[5]/checkprojectname": e.node.name,
                    "criteria/_expr[6]/isdelete": '0',
                    "criteria/_expr[20]/base": jdid,
                    "criteria/_expr[30]/crew": jzid,
                         "criteria/_expr[31]/sources": xmly
                });
                parms = "";
            }
        } else if ("ZCZJ" == type) {
            if (e.isLeaf) {
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Support",
                    "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                    "criteria/_expr[5]/checkprojectname": e.node.name,
                    "criteria/_expr[6]/isdelete": '0',
                    "criteria/_expr[20]/base": jdid,
                    "criteria/_expr[30]/crew": jzid,
                         "criteria/_expr[31]/system": xmly
                });
                parms = "";
            }
        } else if ("FM" == type) {
            if (e.isLeaf) {
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Valve",
                    "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                    "criteria/_expr[5]/checkprojectname": e.node.name,
                    "criteria/_expr[6]/isdelete": '0',
                    "criteria/_expr[20]/base": jdid,
                    "criteria/_expr[30]/crew": jzid
                });
                parms = "";
            }
        } else if ("CRG" == type) {
            if (e.isLeaf) {
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Tube",
                    "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                    "criteria/_expr[5]/checkprojectname": e.node.name,
                    "criteria/_expr[6]/isdelete": '0',
                    "criteria/_expr[20]/base": jdid,
                    "criteria/_expr[30]/crew": jzid,
                         "criteria/_expr[31]/system": xmly
                });
                parms = "";
            }
        } else if ("RQRJHQ" == type) {
            if (e.isLeaf) {
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container",
                    "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                    "criteria/_expr[5]/checkprojectname": e.node.name,
                    "criteria/_expr[6]/isdelete": '0',
                    "criteria/_expr[20]/base": jdid,
                    "criteria/_expr[30]/crew": jzid,
                         "criteria/_expr[31]/zytool": xmly
                });
                parms = "";
            }
        } else if ("" == type) {
            if (e.isLeaf) {
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.NuclearIslandDailySearch",
                    "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                    "criteria/_expr[5]/checkprojectname": e.node.name,
                    "criteria/_expr[6]/isdelete": '0',
                    "criteria/_expr[20]/base": jdid,
                    "criteria/_expr[30]/crew": jzid,
                         "criteria/_expr[31]/system": xmly
                });
                parms = "";
            }
        }

    });


    $(function () {

        $('#update').attr('title', "请选择需修改条目");
        $('#popup').attr('title', "大修结束后请及时进行计划更新");
        $('#zq').attr('title', "请修改要显示的周期范围");
        var tree = nui.get("tree1");
        var shuju = tree.getList();
        if (shuju.length == 0) {
            nui.alert("请新增专用检查计划");
        }
        $('#ym1').css('display', 'none');
        $('#ym2').css('display', 'none');

        var jcjh1 = nui.get("zyjcjh");
        if (jdid == "86") {
            jcjh1.setAjaxType("POST");
            jcjh1.load("com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=ZYJCJH");
        } else {
            jcjh1.setAjaxType("POST");
            jcjh1.load("com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=ZYJCJH1");
        }
        grid.on("drawcell", function (e) {
            var record = e.record,
                column = e.column,
                field = e.field,
                value = e.value;
            //格式化日期
            if (field == "category") {

                e.cellHtml = nui.getDictText("LB", e.value);

            }
            if (field == "bw") {

                e.cellHtml = nui.getDictText("BW", e.value);

            }
            if (field == "checktype") {

                e.cellHtml = nui.getDictText("JCLX", e.value);

            }
        });
    });

    var columns1 = [{type: 'checkcolumn'}, {
        headerAlign: 'center',
        align: 'center',
        field: 'tasklist',
        header: '维护项目',
        displayField: 'tasklist'
    }, {
        headerAlign: 'center',
        field: 'checkprojectname',
        header: '检查项目名称',
        displayField: 'checkprojectname'
    },
        {
            headerAlign: 'center',
            field: 'itemnumber',
            header: '项号',
            displayField: 'itemnumber',
            width:'40'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'system',
            header: '项目来源',
            displayField: 'system',
            width:'40',
            visible:false
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'equipment1',
            header: '设备',
            displayField: 'equipment'
        }, {
            headerAlign: 'center',
            field: 'hfnumber',
            header: '焊缝号',
            displayField: 'hfnumber',
            width:'50'
        }, {headerAlign: 'center', align: 'center', field: 'number', header: '数量', displayField: 'number',width:'40'},
        {
            headerAlign: 'center',
            field: 'gxnumber',
            header: '管线号',
            displayField: 'gxnumber',
            width:'50'
        }, {
            headerAlign: 'center',
            field: 'ckt_dzhnumber',
            header: '参考图号/等轴图',
            displayField: 'ckt_dzhnumber'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'roomnumber',
            header: '房间号',
            displayField: 'roomnumber',
            width:'50'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'jcmethod',
            header: '检查方法',
            displayField: 'jcmethod'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'jcprocedure',
            header: '检查程序',
            displayField: 'jcprocedure'
        }, {headerAlign: 'center', align: 'center', field: 'remarks', header: '备注', displayField: 'remarks'},
    ];
    var columns2 = [{type: 'checkcolumn'}, {
        headerAlign: 'center',
        align: 'center',
        field: 'tasklist',
        header: '维护项目',
        displayField: 'tasklist'
    }, {
        headerAlign: 'center',
        field: 'sources',
        header: '项目来源',
        displayField: 'sources',
        visible:false
    }, {
        headerAlign: 'center',
        field: 'checkprojectname',
        header: '检查项目名称',
        displayField: 'checkprojectname'
    },
        {
            headerAlign: 'center',
            field: 'itemnumber',
            header: '项号',
            displayField: 'itemnumber',
            width:'40'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'systemdevice',
            header: '系统设备',
            displayField: 'systemdevice',
            width:'65'
        }, {headerAlign: 'center', align: 'center', field: 'roomnumber', header: '房间号', displayField: 'roomnumber',width:'50'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'category',
            header: '类别',
            displayField: 'category',
            width:'40'
        }, {
            headerAlign: 'center',
            field: 'ckt_dzhnumber',
            header: '参考图号/等轴图',
            displayField: 'ckt_dzhnumber'
        }, {headerAlign: 'center', field: 'gxnumber', header: '管线号', displayField: 'gxnumber',width:'50'},
        {headerAlign: 'center', align: 'center', field: 'gj', header: '管径', displayField: 'gj',width:'40'}, {
            headerAlign: 'center',
            field: 'hfnumber',
            header: '焊缝号',
            displayField: 'hfnumber',
            width:'50'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'bw',
            header: '保温',
            displayField: 'bw',
            width:'40'
        }, {headerAlign: 'center', align: 'center', field: 'cl', header: '材料', displayField: 'cl'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'jcmethod',
            header: '检查方法',
            displayField: 'jcmethod'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'jcprocedure',
            header: '检查程序',
            displayField: 'jcprocedure'
        }, {headerAlign: 'center', align: 'center', field: 'remarks', header: '备注', displayField: 'remarks'},
    ];
    var columns3 = [{type: 'checkcolumn'}, {
        headerAlign: 'center',
        align: 'center',
        field: 'tasklist',
        header: '维护项目',
        displayField: 'tasklist'
    }, {
        headerAlign: 'center',
        field: 'checkprojectname',
        header: '检查项目名称',
        displayField: 'checkprojectname'
    },
        {
            headerAlign: 'center',
            field: 'itemnumber',
            header: '项号',
            displayField: 'itemnumber',
            width:'40'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'system',
            header: '项目来源',
            displayField: 'system',
            visible:false,
            width:'40'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'bracenumber',
            header: '支撑号',
            displayField: 'bracenumber'
        }, {headerAlign: 'center', field: 'gxnumber', header: '管线号', displayField: 'gxnumber',width:'50'},
        {
            headerAlign: 'center',
            field: 'ckt_dzhnumber',
            header: '参考图号/等轴图',
            displayField: 'ckt_dzhnumber'
        },
        {
            headerAlign: 'center',
            align: 'center',
            field: 'roomnumber',
            header: '房间号',
            displayField: 'roomnumber',
            width:'50'
        }, {headerAlign: 'center', field: 'jjmode', header: '接近方式', displayField: 'jjmode'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'jcmethod',
            header: '检查方法',
            displayField: 'jcmethod'
        }, {headerAlign: 'center', align: 'center', field: 'jcprocedure', header: '检查程序', displayField: 'jcprocedure'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'pmcycle',
            header: 'PM周期',
            displayField: 'pmcycle'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'pmcode',
            header: 'PM编码',
            displayField: 'pmcode'
        }, {headerAlign: 'center', align: 'center', field: 'remarks', header: '备注', displayField: 'remarks'},
    ];
    var columns4 = [{type: 'checkcolumn'}, {
        headerAlign: 'center',
        align: 'center',
        field: 'tasklist',
        header: '维护项目',
        displayField: 'tasklist'
    }, {
        headerAlign: 'center',
        field: 'checkprojectname',
        header: '检查项目名称',
        displayField: 'checkprojectname'
    },
        {
            headerAlign: 'center',
            field: 'itemnumber',
            header: '项号',
            displayField: 'itemnumber',
            width:'40'
        }, {headerAlign: 'center', align: 'center', field: 'system', header: '项目来源', visible:false,displayField: 'system',width:'40'},
        {
            headerAlign: 'center',
            field: 'equipment',
            header: '设备/部件',
            displayField: 'equipment'
        }, {
            headerAlign: 'center',
            field: 'gnwz',
            header: '功能位置',
            displayField: 'gnwz'
        }, {
            headerAlign: 'center',
            field: 'jcbw',
            header: '检查部位',
            displayField: 'jcbw'
        }, {
            headerAlign: 'center',
            field: 'jjmode',
            header: '接近方式',
            displayField: 'jjmode'
        }, {headerAlign: 'center', field: 'gxnumber', header: '管线号', displayField: 'gxnumber',width:'50'},
        {
            headerAlign: 'center',
            field: 'ckt_dzhnumber',
            header: '参考图号/等轴图',
            displayField: 'ckt_dzhnumber'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'roomnumber',
            header: '房间号',
            displayField: 'roomnumber',
            width:'50'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'jcmethod',
            header: '检查方法',
            displayField: 'jcmethod'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'jcprocedure',
            header: '检查程序',
            displayField: 'jcprocedure'
        }, {headerAlign: 'center', align: 'center', field: 'gfcycle', header: '规范周期', displayField: 'gfcycle'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'pmcycle',
            header: 'PM周期',
            displayField: 'pmcycle'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'pmcode',
            header: 'PM编码',
            displayField: 'pmcode'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'zxunit',
            header: '执行单位',
            displayField: 'zxunit'
        }, {headerAlign: 'center', align: 'center', field: 'remarks', header: '备注', displayField: 'remarks'},
    ];


    var columns5 = [{type: 'checkcolumn'}, {
        headerAlign: 'center',
        align: 'center',
        field: 'tasklist',
        header: '维护项目',
        displayField: 'tasklist'
    }, {
        headerAlign: 'center',
        field: 'checkprojectname',
        header: '检查项目名称',
        displayField: 'checkprojectname'
    },
        {
            headerAlign: 'center',
            field: 'itemnumber',
            header: '项号',
            displayField: 'itemnumber',
            width:'40'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'gkc',
            header: '管壳侧',
            displayField: 'gkc'
        }, {headerAlign: 'center', field: 'jcbw', header: '检查部位', displayField: 'jcbw'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'sbnumber',
            header: '设备图号',
            displayField: 'sbnumber'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'jcmethod',
            header: '检查方法',
            displayField: 'jcmethod'
        }, {
            headerAlign: 'center',
            field: 'jjmode',
            header: '接近方式',
            displayField: 'jjmode'
        }, {headerAlign: 'center', align: 'center', field: 'jcprocedure', header: '检查程序', displayField: 'jcprocedure'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'zytool',
            header: '项目来源',
            displayField: 'zytool',
            visible:false,
            width:'150'
        }, {headerAlign: 'center', align: 'center', field: 'remarks', header: '备注', displayField: 'remarks'},

    ];
    var columns6 = [{type: 'checkcolumn'}, {
        headerAlign: 'center',
        align: 'center',
        field: 'tasklist',
        header: '维护项目',
        displayField: 'tasklist'
    }, {
        headerAlign: 'center',
        field: 'checkprojectname',
        header: '检查项目名称',
        displayField: 'checkprojectname'
    },
        {
            headerAlign: 'center',
            field: 'itemnumber',
            header: '项号',
            displayField: 'itemnumber',
            width:'40'
        }, {headerAlign: 'center', align: 'center', field: 'system', header: '项目来源', visible:false,displayField: 'system',width:'40'},
        {
            headerAlign: 'center',
            field: 'sbname',
            header: '设备名称',
            displayField: 'sbname',
            width:'60'
        }, {headerAlign: 'center', field: 'sbnumber', header: '设备编号', displayField: 'sbnumber',width:'60'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'columnsint',
            header: '列',
            displayField: 'columnsint',
            width:'20'
        }, {headerAlign: 'center', align: 'center', field: 'row', header: '行', displayField: 'row',width:'20'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'checktype',
            header: '检查类型',
            displayField: 'checktype'
        }, {headerAlign: 'center', align: 'center', field: 'jcmethod', header: '检查方法', displayField: 'jcmethod'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'jcprocedure',
            header: '检查程序',
            displayField: 'jcprocedure'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'jccycle',
            header: ' 检查周期',
            displayField: 'jccycle',
            width:'60'
        }, {headerAlign: 'center', align: 'center', field: 'remarks', header: '备注', displayField: 'remarks'},
    ];
    var columns7 = [{type: 'checkcolumn'}, {
        headerAlign: 'center',
        align: 'center',
        field: 'tasklist',
        header: '维护项目',
        displayField: 'tasklist'
    }, {
        headerAlign: 'center',
        field: 'checkprojectname',
        header: '检查项目名称',
        displayField: 'checkprojectname'
    },
        {
            headerAlign: 'center',
            field: 'itemnumber',
            header: '项号',
            displayField: 'itemnumber',
            width:'40'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'system',
            header: '系统',
            visible:false,
            displayField: 'system',
            width:'40'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'equipment1',
            header: '设备',
            displayField: 'equipment'
        }, {
            headerAlign: 'center',
            field: 'hfnumber',
            header: '焊缝号',
            displayField: 'hfnumber',
            width:'50'
        }, {headerAlign: 'center', align: 'center', field: 'number', header: '数量', displayField: 'number',width:'40'},
        {
            headerAlign: 'center',
            field: 'gxnumber',
            header: '管线号',
            displayField: 'gxnumber',
            width:'50'
        }, {
            headerAlign: 'center',
            field: 'ckt_dzhnumber',
            header: '参考图号/等轴图',
            displayField: 'ckt_dzhnumber'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'roomnumber',
            header: '房间号',
            displayField: 'roomnumber',
            width:'50'
        }, {headerAlign: 'center', align: 'center', field: 'category', header: '类别', displayField: 'category',width:'40'},
        {
            headerAlign: 'center',
            field: 'sbname',
            header: '设备名称',
            displayField: 'sbname',
            width:'60'
        }, {
            headerAlign: 'center',
            field: 'sbnumber',
            header: '设备编号',
            displayField: 'sbnumber',
            width:'60'
        }, {headerAlign: 'center', align: 'center', field: 'jcmethod', header: '检查方法', displayField: 'jcmethod'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'jcprocedure',
            header: '检查程序',
            displayField: 'jcprocedure'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'systemdevice',
            header: '系统设备',
            displayField: 'systemdevice',
            width:'65'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'gj',
            header: '管径',
            displayField: 'gj',
            width:'40'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'bw',
            header: '保温',
            displayField: 'bw',
            width:'40'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'cl',
            header: '材料',
            displayField: 'cl'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'bracenumber',
            header: '支撑号',
            displayField: 'bracenumber'
        }, {headerAlign: 'center',field: 'jjmode', header: '接近方式', displayField: 'jjmode'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'pmcycle',
            header: 'PM周期',
            displayField: 'pmcycle'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'pmcode',
            header: 'PM编码',
            displayField: 'pmcode'
        }, {
            headerAlign: 'center',
            field: 'gnwz',
            header: '功能位置',
            displayField: 'gnwz'
        }, {
            headerAlign: 'center',
            field: 'jcbw',
            header: '检查部位',
            displayField: 'jcbw'
        }, {headerAlign: 'center', align: 'center', field: 'gfcycle', header: '规范周期', displayField: 'gfcycle'},
        {
            headerAlign: 'center',
            field: 'sbname',
            header: '设备名称',
            displayField: 'sbname',
            width:'60'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'gkc',
            header: '管壳侧',
            displayField: 'gkc'
        }, {headerAlign: 'center', align: 'center', field: 'zytool', header: '专用工具', displayField: 'zytool',width:'120'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'zxunit',
            header: '执行单位',
            displayField: 'zxunit'
        }, {headerAlign: 'center', field: 'sbnumber', header: '设备图号', displayField: 'sbnumber'},
        {headerAlign: 'center', field: 'sbnumber', header: '设备编号', displayField: 'sbnumber',width:'60'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'columnsint',
            header: '列',
            displayField: 'columnsint',
            width:'20'
        }, {
            headerAlign: 'center',
            align: 'center',
            field: 'row',
            header: '行',
            displayField: 'row',
            width:'20'
        }, {headerAlign: 'center', align: 'center', field: 'checktype', header: '检查类型', displayField: 'checktype'},
        {
            headerAlign: 'center',
            align: 'center',
            field: 'jccycl',
            header: ' 检查周期',
            displayField: 'jccycl',
            width:'60'
        }, {headerAlign: 'center', align: 'center', field: 'remarks', header: '备注', displayField: 'remarks'},

    ];


    function chooseType() {
    	
        var type = nui.get("zyjcjh").getValue();
        var url = "";
        var jdid = getCookie('jdid');

        var jzid = getCookie('jzid');
        if ("HFGDZC" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.searchPipelineSupport.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.PipelineSupport");
            columnsC = columns1;
            // grid.setColumns(columns1);
            $('#ym1').css('display', 'block');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.rwqd').css('display', 'block');
            $('#jcmc').css('display', 'block');
            $('#jcmc1').css('display', 'block');
            $('.hfh').css('display', 'block');
            $('.gxh').css('display', 'block');
            $('.ckth').css('display', 'block');
            $('#jcff1').css('display', 'block');
            $('#jcff2').css('display', 'block');

            $('#ym2').css('display', 'none');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.zch').css('display', 'none');
            $('.gnwz1').css('display', 'none');
            $('.sbth1').css('display', 'none');
            $('.jjfs').css('display', 'none');
            $('.ll').css('display', 'none');
            $('.hh').css('display', 'none');
            $('#jclx').css('display', 'none');

        } else if ("HFBOSS" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.searchBossHead.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.BossHead");
            columnsC = columns2;
            // grid.setColumns(columns2);
            $('#ym1').css('display', 'block');
            $('#ym2').css('display', 'block');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.rwqd').css('display', 'block');
            $('#jcmc').css('display', 'block');
            $('#jcmc1').css('display', 'block');
            $('.hfh').css('display', 'block');
            $('.gxh').css('display', 'block');
            $('.ckth').css('display', 'block');
            $('#jcff1').css('display', 'block');
            $('#jcff2').css('display', 'block');


            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.zch').css('display', 'none');
            $('.gnwz1').css('display', 'none');
            $('.sbth1').css('display', 'none');
            $('.jjfs').css('display', 'none');
            $('.ll').css('display', 'none');
            $('.hh').css('display', 'none');
            $('#jclx').css('display', 'none');
        } else if ("ZCZJ" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.searchSupport.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Support");
            columnsC = columns3;
            // grid.setColumns(columns3);
            $('#ym1').css('display', 'block');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.rwqd').css('display', 'block');
            $('#jcmc').css('display', 'block');
            $('#jcmc1').css('display', 'block');
            $('.zch').css('display', 'block');
            $('.gxh').css('display', 'block');
            $('.ckth').css('display', 'block');
            $('#jcff1').css('display', 'block');
            $('#jcff2').css('display', 'block');

            $('#ym2').css('display', 'none');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.hfh').css('display', 'none');
            $('.gnwz1').css('display', 'none');
            $('.sbth1').css('display', 'none');
            $('.jjfs').css('display', 'none');
            $('.ll').css('display', 'none');
            $('.hh').css('display', 'none');
            $('#jclx').css('display', 'none');
            // this.(#zcColumn).visable="true";
        } else if ("FM" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.searchValve.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Valve");
            columnsC = columns4;
            // grid.setColumns(columns4);
            $('#ym1').css('display', 'block');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.rwqd').css('display', 'block');
            $('#jcmc').css('display', 'block');
            $('#jcmc1').css('display', 'block');
            $('.gnwz1').css('display', 'block');
            $('.gxh').css('display', 'block');
            $('.ckth').css('display', 'block');
            $('#jcff1').css('display', 'block');
            $('#jcff2').css('display', 'block');

            $('#ym2').css('display', 'none');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.hfh').css('display', 'none');
            $('.zch').css('display', 'none');
            $('.sbth1').css('display', 'none');
            $('.jjfs').css('display', 'none');
            $('.ll').css('display', 'none');
            $('.hh').css('display', 'none');
            $('#jclx').css('display', 'none');
        } else if ("RQRJHQ" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.searchContainer.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container");
            columnsC = columns5;
            // grid.setColumns(columns5);
            /*   $('#fmColumn').hide();
	           							$('#rqColumn').show();  */
            $('#ym1').css('display', 'block');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.rwqd').css('display', 'block');
            $('#jcmc').css('display', 'block');
            $('#jcmc1').css('display', 'block');
            $('.gnwz1').css('display', 'block');
            $('.jjfs').css('display', 'block');
            $('.sbth1').css('display', 'block');
            $('#jcff1').css('display', 'block');
            $('#jcff2').css('display', 'block');

            $('#ym2').css('display', 'none');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.zch').css('display', 'none');
            $('.ckth').css('display', 'none');
            $('.hfh').css('display', 'none');
            $('.gxh').css('display', 'none');
            $('.ll').css('display', 'none');
            $('.hh').css('display', 'none');
            $('#jclx').css('display', 'none');
        } else if ("CRG" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.searchTube.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Tube");
            columnsC = columns6;
            // grid.setColumns(columns6);
            $('#ym1').css('display', 'block');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.rwqd').css('display', 'block');
            $('#jcmc').css('display', 'block');
            $('#jcmc1').css('display', 'block');
            $('.ll').css('display', 'block');
            $('.hh').css('display', 'block');
            $('.sbth1').css('display', 'block');
            $('#jclx').css('display', 'block');

            $('#ym2').css('display', 'none');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.zch').css('display', 'none');
            $('.gnwz1').css('display', 'none');
            $('.hfh').css('display', 'none');
            $('.jjfs').css('display', 'none');
            $('.ckth').css('display', 'none');
            $('#jcff1').css('display', 'none');
            $('#jcff2').css('display', 'none');
            $('.gxh').css('display', 'none');
        } else if ("" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.searchData.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue("");
            columnsC = columns7;
            // grid.setColumns(columns7);
            $('#ym1').css('display', 'none');
            $('#ym2').css('display', 'none');
            $('.rwqd').css('display', 'none');
            $('#jcmc').css('display', 'none');
            $('#jcmc1').css('display', 'none');
            $('#ym5').css('display', 'block');
            $('#ym6').css('display', 'block');
        }
		nui.get("tree1").setAjaxType("POST");
        nui.get("tree1").load(url);
        searchs();
    }
	//变更履历
    function openrecord() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/specialinspection/NuclearIslandDaily/VitaeList.jsp",
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

    //导出
    function output() {
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        var type = nui.get("zyjcjh").getValue();
        var filterField = "processStatus,uuid,isdelete,processInstId,creator,datetime,reason,orderno,type";
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
        if ("HFGDZC" == type) {
            nui.open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                title: "导出数据", width: 388, height: 350,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.PipelineSupport",
                        queryParam: json,								    //查询数据
                        queryKey: 'criteria',                              //查询实体名
                        query: ['jcmethod', 'checkprojectname', 'isdelete', 'base', 'crew', 'tasklist',
                            'ckt_dzhnumber', 'hfnumber', 'number', 'gxnumber'], //按顺序放置
                        queryIndex: [2, 4, 5, 6, 7, 8, 9, 10, 11],  //按顺序放置
                        expTitle: "专用核岛日常焊缝管道支撑",
                        defaultCheck: ["base,crew,type,tasklist,system,checkprojectname,itemnumber,equipment,hfnumber,number,gxnumber,ckt_dzhnumber,roomnumber,jcmethod,jcprocedure,remarks"],
                        filterField: [filterField],  //要过滤的字段，多字段用,隔开
                        dicFieds: "type@ZYJCJH,system@PROTYPE",
                        jdFieds: "base",//导出字段是基地，需要转换成对应中文的
                        jzFieds: "crew"//导出字段是机组，需要转换成对应中文的
                    };//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                    //
                }
            });
        } else if ("HFBOSS" == type) {
            nui.open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                title: "导出数据", width: 388, height: 350,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.BossHead",
                        queryParam: json,								    //查询数据
                        queryKey: 'criteria',                              //查询实体名
                        query: ['jcmethod', 'checkprojectname', 'isdelete', 'base', 'crew', 'tasklist',
                            'ckt_dzhnumber', 'hfnumber', 'number', 'gxnumber', 'systemdevice', 'category'], //按顺序放置
                        queryIndex: [2, 4, 5, 6, 7, 8, 9, 10, 11, 19, 20],
                        expTitle: "专用核岛日常焊缝BOSS头",
                        filterField: [filterField],  //要过滤的字段，多字段用,隔开
                        defaultCheck: ["checkprojectname,ckt_dzhnumber,gxnumber,hfnumber,roomnumber"],
                        dicFieds: "type@ZYJCJH,category@LB,bw@BW,sources@PROTYPE",
                        jdFieds: "base",//导出字段是基地，需要转换成对应中文的
                        jzFieds: "crew"//导出字段是机组，需要转换成对应中文的
                    };//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                    //
                }
            });
        } else if ("RQRJHQ" == type) {
            nui.open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                title: "导出数据", width: 388, height: 350,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container",
                        queryParam: json,								    //查询数据
                        queryKey: 'criteria',                              //查询实体名
                        query: ['jcmethod', 'checkprojectname', 'isdelete', 'base', 'crew', 'tasklist',
                            'gnwz', 'sbnumber', 'jjmode'], //按顺序放置
                        queryIndex: [2, 4, 5, 6, 7, 8, 13, 14, 15],
                        expTitle: "专用核岛日常容器和热交换器",
                        defaultCheck: ["base,crew,type,tasklist,zytool,checkprojectname,itemnumber,gnwz,sbname,gkc,jcbw,sbnumber,jcmethod,jjmode,jcprocedure,remarks"],
                        filterField: [filterField],  //要过滤的字段，多字段用,隔开
                        dicFieds: "type@ZYJCJH,zytool@PROTYPE",
                        jdFieds: "base",//导出字段是基地，需要转换成对应中文的
                        jzFieds: "crew"//导出字段是机组，需要转换成对应中文的
                    };//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                    //
                }
            });
        } else if ("ZCZJ" == type) {
            nui.open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                title: "导出数据", width: 388, height: 350,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Support",
                        queryParam: json,								    //查询数据
                        queryKey: 'criteria',                              //查询实体名
                        query: ['jcmethod', 'checkprojectname', 'isdelete', 'base', 'crew', 'tasklist',
                            'ckt_dzhnumber', 'gxnumber', 'bracenumber'], //按顺序放置
                        queryIndex: [2, 4, 5, 6, 7, 8, 9, 11, 12],
                        expTitle: "专用核岛日常支撑",
                        defaultCheck: ["base,crew,type,tasklist,checkprojectname,itemnumber,system,bracenumber,gxnumber,ckt_dzhnumber,roomnumber,jjmode,jcmethod,jcprocedure,pmcycle,pmcode,remarks"],
                        filterField: [filterField],  //要过滤的字段，多字段用,隔开
                        dicFieds: "type@ZYJCJH,system@PROTYPE",
                        jdFieds: "base",//导出字段是基地，需要转换成对应中文的
                        jzFieds: "crew"//导出字段是机组，需要转换成对应中文的
                    };//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                    //
                }
            });
        } else if ("FM" == type) {
            nui.open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                title: "导出数据", width: 388, height: 350,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Valve",
                        queryParam: json,								    //查询数据
                        queryKey: 'criteria',                              //查询实体名
                        query: ['jcmethod', 'checkprojectname', 'isdelete', 'base', 'crew', 'tasklist',
                            'ckt_dzhnumber', 'gxnumber', 'gnwz'], //按顺序放置
                        queryIndex: [2, 4, 5, 6, 7, 8, 9, 11, 13],
                        expTitle: "专用核岛日常阀门",
                        defaultCheck: ["base,crew,type,tasklist,checkprojectname,itemnumber,system,equipment,gnwz,jcbw,jjmode,gxnumber,ckt_dzhnumber,roomnumber,jcmethod,jcprocedure,gfcycle,pmcycle,pmcode,zxunit,remarks"],
                        filterField: [filterField],  //要过滤的字段，多字段用,隔开
                        dicFieds: "type@ZYJCJH,system@PROTYPE",
                        jdFieds: "base",//导出字段是基地，需要转换成对应中文的
                        jzFieds: "crew"//导出字段是机组，需要转换成对应中文的
                    };//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                    //
                }
            });
        } else if ("CRG" == type) {
            nui.open({
                showMaxButton: true,
                url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                title: "导出数据", width: 388, height: 350,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {
                        entityName: "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Tube",
                        queryParam: json,								    //查询数据
                        queryKey: 'criteria',                              //查询实体名
                        query: [
                            'checkprojectname', 'isdelete', 'base', 'crew', 'tasklist', 'sbnumber', 'columnsint', 'row', 'checktype'], //按顺序放置
                        queryIndex: [4, 5, 6, 7, 8, 14, 16, 17, 18],
                        expTitle: "专用核岛日常传热管",
                        defaultCheck: ["base,crew,type,tasklist,checkprojectname,itemnumber,system,sbname,sbnumber,columnsint,row,checktype,jcmethod,jcprocedure,jccycle,remarks"],
                        filterField: [filterField],  //要过滤的字段，多字段用,隔开
                        dicFieds: "type@ZYJCJH,checktype@JCLX,system@PROTYPE",
                        jdFieds: "base",//导出字段是基地，需要转换成对应中文的
                        jzFieds: "crew"//导出字段是机组，需要转换成对应中文的
                    };//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                    //
                }
            });
        } else {
            nui.alert("请选择专用检查计划类型");
        }
    }


    //类型公共代码转换
    function gsRenderer(e) {
        return nui.getDictText("ZYJCJH", e.value);
    }


    /**
     * 单条新增
     */
    function add() {
        var row = grid.getSelected();
        var type = nui.get('zyjcjh').getValue();
        var url = null ;
        var title = null;
        if (row) {
            if ("" == type || null == type || undefined == type) {
                nui.alert("请选择专用检查计划类型");
                return;
            }else if ("HFGDZC" == type) {
                url = "/itmp/specialinspection/NuclearIslandDaily/PipelineSupport/PipelineSupportForm.jsp?type=HFGDZC";
                title = "新增焊缝管道记录";
            } else if ("HFBOSS" == type) {
                url = "/itmp/specialinspection/NuclearIslandDaily/BossHead/BossHeadForm.jsp?type=HFBOSS";
                title = "新增焊缝BOSS头记录";
            } else if ("ZCZJ" == type) {
                url = "/itmp/specialinspection/NuclearIslandDaily/Support/SupportForm.jsp?type=ZCZJ";
                title = "新增支撑支架记录";
            } else if ("FM" == type) {
                url = "/itmp/specialinspection/NuclearIslandDaily/Valve/ValveForm.jsp?type=FM";
                title =  "新增阀门记录";
            } else if ("RQRJHQ" == type) {
                url = "/itmp/specialinspection/NuclearIslandDaily/Container/ContainerForm.jsp?type=RQRJHQ";
                title =  "新增容器记录";
            } else if ("CRG" == type) {
                url = "/itmp/specialinspection/NuclearIslandDaily/Tube/TubeForm.jsp?type=CRG";
                title = "新增传热管记录";
            }
            nui.open({
                showMaxButton: true,
                url: url,
                title: title,
                width: 874,
                height: 500,
                onload: function () {
                    var iframe = this.getIFrameEl();
                    var data = {pageType: "add", record: {data: row}, checkprojectname: row.checkprojectname};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {
                    grid.reload();
                    //
                }
            });
        }else{
            nui.alert("请选中插入位置（之后）", "提示");
        }
    }


    //关键字
    function btnQuery() {
        
        var wordVal = $("#cond").val();
        if (wordVal == '') {
            searchs();
            return;
        }

        var type = nui.get("zyjcjh").getValue();
        if ("HFGDZC" == type) {
            var data = {
                matchFied: "type,tasklist,itemnumber,system,equipment,hfnumber,gxnumber,ckt_dzhnumber,roomnumber,jcmethod,jcprocedure,remarks",
                wordVal: wordVal,
                entity: $("input[name='criteria1/_entity']").val(),
                entityName: 'criteria',
                sfdel: true,
                matchFiedNUMBER: "number" ,
				jdInfo : 'base@' + getCookie('jdid'),
				jzInfo : 'crew@' + getCookie('jzid'),
				dicFied : "type@ZYJCJH"  
            };

        } else if ("HFBOSS" == type) {
            var data = {
                matchFied: "type,tasklist,itemnumber,systemdevice,roomnumber,category,ckt_dzhnumber,gxnumber,gj,hfnumber,bw,cl,jcmethod,jcprocedure,remarks",
                wordVal: wordVal,
                entity: $("input[name='criteria2/_entity']").val(),
                entityName: 'criteria',
                sfdel: true,
                jdInfo : 'base@' + getCookie('jdid'),
				jzInfo : 'crew@' + getCookie('jzid'),
				dicFied : "type@ZYJCJH,category@LB,bw@BW" 
            };
        } else if ("ZCZJ" == type) {
            var data = {
                matchFied: "type,tasklist,itemnumber,system,bracenumber,gxnumber,ckt_dzhnumber,roomnumber,jjmode,jcmethod,jcprocedure,pmcycle,pmcode,remarks",
                wordVal: wordVal,
                entity: $("input[name='criteria6/_entity']").val(),
                entityName: 'criteria',
                sfdel: true ,
				jdInfo : 'base@' + getCookie('jdid'),
				jzInfo : 'crew@' + getCookie('jzid'),
				dicFied : "type@ZYJCJH" 
            };

        } else if ("FM" == type) {
            var data = {
                matchFied: "type,tasklist,itemnumber,system,equipment,gnwz,jcbw,jjmode,gxnumber,ckt_dzhnumber,roomnumber,jcmethod,jcprocedure,gfcycle,pmcycle,pmcode,zxunit,remarks",
                wordVal: wordVal,
                entity: $("input[name='criteria4/_entity']").val(),
                entityName: 'criteria',
                sfdel: true ,
				jdInfo : 'base@' + getCookie('jdid'),
				jzInfo : 'crew@' + getCookie('jzid'),
				dicFied : "type@ZYJCJH" 
            };
        } else if ("RQRJHQ" == type) {
            var data = {
                matchFied: "type,tasklist,itemnumber,gnwz,sbname,gkc,jcbw,sbnumber,jcmethod,jjmode,jcprocedure,zytool,remarks",
                wordVal: wordVal,
                entity: $("input[name='criteria3/_entity']").val(),
                entityName: 'criteria',
                sfdel: true ,
				matchFiedNUMBER : "number",
				jdInfo : 'base@' + getCookie('jdid'),
				jzInfo : 'crew@' + getCookie('jzid'),
				dicFied : "type@ZYJCJH" 
            };
        } else if ("CRG" == type) {
            var data = {
                matchFied: "type,tasklist,itemnumber,system,sbname,sbnumber,checktype,jcmethod,jcprocedure,jccycle,remarks",
                wordVal: wordVal,
                entity: $("input[name='criteria5/_entity']").val(),
                entityName: 'criteria',
                sfdel: true,
                matchFiedNUMBER: "columnsint,row" ,
				jdInfo : 'base@' + getCookie('jdid'),
				jzInfo : 'crew@' + getCookie('jzid'),
				dicFied : "type@ZYJCJH,checktype@JCLX" 
            };
        } else {

            var data = {
                matchFied: "type,tasklist,itemnumber,system,equipment,hfnumber,remarks,ckt_dzhnumber,roomnumber,gxnumber,jcmethod,jcprocedure,systemdevice,category,gj,bw,cl,material,bracenumber,jjmode,pmcode,pmcycle,gnwz,gfcycle,jcbw,zxunit,sbname,gkc,sbnumber,zytool,sbbh,checktype,jccycle",
                wordVal: wordVal,
                entity: $("input[name='criteria/_entity']").val(),
                entityName: 'criteria',
                sfdel: true,
                matchFiedNUMBER: "columnsint,row" ,
				jdInfo : 'base@' + getCookie('jdid'),
				jzInfo : 'crew@' + getCookie('jzid'),
				dicFied : "type@ZYJCJH,category@LB,bw@BW,checktype@JCLX"  
            };
        }
        var data1 = data;
        var query = nui.decode(getKeyWordQuery(data1));
        query["criteria/_and[4]/_expr[1]/checkprojectname"]=nui.get("checkprojectname").value;
        query["criteria/_and[4]/_expr[1]/_op"]="=";
        grid.load(query);
    }

    /**
     * 计划更新(计划完成，计划取消)
     * */
    function planupdate(flag) {
        var type = nui.get("zyjcjh").getValue();
        var processDef = null;
        var url = null;
        if ("HFGDZC" == type) {
            processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.rcHdHfgdPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.rcHdHfgdPlanCancel';
            url = encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=tasklist&planFlag=" + flag + "&modelFlag=" + 19 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.PipelineSupport&processName=专用检查计划_核岛_焊缝(管道/支撑)_日常执行条目&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit&processDef=" + processDef);
        } else if ("HFBOSS" == type) {
            processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.rcHdHfbossPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.rcHdHfbossPlanCancel';
            url = encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=tasklist&planFlag=" + flag + "&modelFlag=" + 20 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.BossHead&processName=专用检查计划_核岛_焊缝(BOSS头)_日常执行条目&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit&processDef=" + processDef);
        } else if ("RQRJHQ" == type) {
            processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.rcHdRqPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.rcHdRqPlanCancel';
            url = encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=tasklist&planFlag=" + flag + "&modelFlag=" + 21 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container&processName=专用检查计划_核岛_容器_日常执行条目&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit&processDef=" + processDef);
        } else if ("ZCZJ" == type) {
            processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.rcHdZcRqPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.rcHdZcRqPlanCancel';
            url = encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=tasklist&planFlag=" + flag + "&modelFlag=" + 24 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Support&processName=专用检查计划_核岛_支撑/支架_日常执行条目&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit&processDef=" + processDef);
        } else if ("FM" == type) {
            processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.rcHdFmPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.rcHdFmPlanCancel';
            url = encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=tasklist&planFlag=" + flag + "&modelFlag=" + 23 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Valve&processName=专用检查计划_核岛_阀门_日常执行条目&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit&processDef=" + processDef);
        } else if ("CRG" == type) {
            processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.rcHdCrgPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.rcHdCrgPlanCancel';
            url = encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=tasklist&planFlag=" + flag + "&modelFlag=" + 22 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Tube&processName=专用检查计划_核岛_传热管_日常执行条目&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit&processDef=" + processDef);
        } else {
            nui.alert("请选择专用检查计划类型");
            return;
        }
        nui.open({
            showMaxButton: true,
            url: url,
            title: flag == '1' ? '计划完成' : '计划取消',
            width: 1000, height: 650,
            onload: function () {//弹出页面加载完成
                var iframe = this.getIFrameEl();
                var data = {parms: parms};//传入页面的json数据
                iframe.contentWindow.setFormData(data);
            },
            ondestroy: function (action) {//弹出页面关闭前
                grid.reload();
                //
            }
        });
    }

    /**
     * 批量新增，导入
     * */
    function batchAdd() {
        var type = nui.get("zyjcjh").getValue();
        var tempFileName = null;
        var tempLoadName = null;
        var entitfName = null;
        if("" == type || null == type || undefined == type){
            nui.alert("请选择专用检查计划类型");
            return;
        }else if ("HFGDZC" == type) {
            tempFileName = "RCgdImport.xlsx";
            tempLoadName =  "管道焊缝或支撑焊缝专用检查计划日常执行条目导入模板";
            entitfName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.PipelineSupport";
        } else if ("HFBOSS" == type) {
            tempFileName = "RCbossImport.xlsx";
            tempLoadName = "BOSS头焊缝专用检查计划日常执行条目导入模板";
            entitfName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.BossHead";
        } else if ("RQRJHQ" == type) {
            tempFileName = "RCrqImport.xlsx";
            tempLoadName = "容器和热交换器专用检查计划日常执行条目导入模板";
            entitfName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container";
        } else if ("ZCZJ" == type) {
            tempFileName = "RCzcImport.xlsx";
            tempLoadName = "支撑支架专用检查计划日常执行条目导入模板";
            entitfName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Support";
        } else if ("FM" == type) {
            tempFileName = "RCfmImport.xlsx";
            tempLoadName = "阀门专用检查计划日常执行条目导入模板";
            entitfName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Valve";
        } else if ("CRG" == type) {
            tempFileName = "RCcrgImport.xlsx";
            tempLoadName = "传热管专用检查计划日常执行条目导入模板";
            entitfName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Tube";
        }

        nui.open({
            showMaxButton: true,
            url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
            title: "新增记录", width: 600, height: 300,
            onload: function () {//弹出页面加载完成
                var iframe = this.getIFrameEl();
                var data = {
                    pageType: "batchAdd",
                    tempFileName: tempFileName,
                    type: type,
                    tempLoadName: tempLoadName,
                    entitfName: entitfName
                };//传入页面的json数据
                iframe.contentWindow.SetData(data);
            },
            ondestroy: function (action) {//弹出页面关闭前
                grid.reload();
                
            }
        })
    }

    /**
     * 修改
     * */
    function edit() {
        var row = grid.getSelected();
        if (row) {
            var json = {};
            json.datas = row;
            json.entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit";
            json.fieldName = "uuid";
            json.relFieldName = "relid";
            json.reason = "维护项目";
            json.tsName = "tasklist";
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
                        var type = row.type;
                        var urlStr = "";
                        if ("HFGDZC" == row.type) {
                            urlStr = "/itmp/specialinspection/NuclearIslandDaily/PipelineSupport/PipelineSupportEditForm.jsp";
                        } else if ("HFBOSS" == row.type) {
                            urlStr = "/itmp/specialinspection/NuclearIslandDaily/BossHead/BossHeadEditForm.jsp";
                        } else if ("ZCZJ" == row.type) {
                            urlStr = "/itmp/specialinspection/NuclearIslandDaily/Support/SupportEditForm.jsp";
                        } else if ("FM" == row.type) {
                            urlStr = "/itmp/specialinspection/NuclearIslandDaily/Valve/ValveEditForm.jsp";
                        } else if ("RQRJHQ" == row.type) {
                            urlStr = "/itmp/specialinspection/NuclearIslandDaily/Container/ContainerEditForm.jsp";
                        } else if ("CRG" == row.type) {
                            urlStr = "/itmp/specialinspection/NuclearIslandDaily/Tube/TubeEditForm.jsp";
                        }
                        if (urlStr != "") {
                            nui.open({
                                showMaxButton: true,
                                url: urlStr,
                                title: "编辑数据",
                                width: 800,
                                height: 350,
                                onload: function () {
                                    var iframe = this.getIFrameEl();
                                    var data = {
                                        pageType: "edit",
                                        record: {preData: row}
                                    };
                                    //直接从页面获取，不用去后台获取
                                    iframe.contentWindow.setFormData(data);
                                },
                                ondestroy: function (action) {
                                    grid.reload();
//                                     
                                }
                            });
                        }
                    }
                }
            });

        } else {
            nui.alert("请选中一条记录", "提示");
        }
    }


    /**
     * 回收站
     */
    function resycle() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/specialinspection/NuclearIslandDaily/RecycleList.jsp",
            title: "回收站",
            width: 750,
            height: 430,
            onload: function () {
            },
            ondestroy: function (action) {
                grid.reload();
                //
            }
        });
    }

    /**
     * 删除
     * */
    function remove() {
        var rows = grid.getSelecteds();
        if (rows.length > 0) {
            var type = nui.get('zyjcjh').getValue();
            var urlStr = null;
            var json = null;
            var processInstName = null;
            var modelFlag = null;
            if ("" == type || type == null || type == undefined) {
                nui.alert("请选择专用检查类型！");
                return;
            } else if ("HFGDZC" == type) {
                urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.delgd.biz.ext";
                json = nui.encode({tdggltzyjcjhrcgd: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                processInstName = '专用检查计划_核岛_焊缝(管道/支撑)_日常执行条目_删除';
                modelFlag = 19;
            } else if ("HFBOSS" == type) {
                urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.delboss.biz.ext";
                json = nui.encode({tdggltzyjcjhrcboss: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                processInstName = '专用检查计划_核岛_焊缝(BOSS头)_日常执行条目_删除';
                modelFlag = 20;
            } else if ("ZCZJ" == type) {
                urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.delzc.biz.ext";
                json = nui.encode({tdggltzyjcjhrczc: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                processInstName = '专用检查计划_核岛_支撑/支架_日常执行条目_删除';
                modelFlag = 24;
            } else if ("RQRJHQ" == type) {
                urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.delrq.biz.ext";
                json = nui.encode({tdggltzyjcjhrcrq: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                processInstName = '专用检查计划_核岛_容器_日常执行条目_删除';
                modelFlag = 21;
            } else if ("FM" == type) {
                urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.delfm.biz.ext";
                json = nui.encode({tdggltzyjcjhrcfm: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                processInstName = '专用检查计划_核岛_阀门_日常执行条目_删除';
                modelFlag = 23;
            } else if ("CRG" == type) {
                urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.delcrg.biz.ext";
                json = nui.encode({tdggltzyjcjhrccrg: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                processInstName = '专用检查计划_核岛_传热管_日常执行条目_删除';
                modelFlag = 22;
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
            } else {
                var json = {};
                json.datas = rows;
                json.entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit";
                json.fieldName = "uuid";
                json.relFieldName = "relid";
                json.reason = "维护项目";
                json.tsName = "tasklist";
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
                                            'entityType': 'com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit',
                                            'modelFlag': modelFlag
                                        }
                                    };
                                    //直接从页面获取，不用去后台获取
                                    iframe.contentWindow.setFormData(data);
                                }, ondestroy: function (action) {
                                    grid.reload();
                                    //
                                }
                            });
                        }
                    }

                });
            }
        }else {
            nui.alert("请至少选中一条记录！");
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
			zt += '"criteria/_expr[24]/_op":"<>"';
			zt += ',"criteria/_expr[24]/processstatus":"1"';
		}else if("1" == processStatus){
			zt += '"criteria/_expr[24]/_op":"="';
			zt += ',"criteria/_expr[24]/processstatus":"1"';
		}
        var start1 = nui.get('start').getValue();
        var end1 = nui.get('end').getValue();
        if (start1 > end1) {
            nui.get('start').setValue(end1);
            start1 = end1;
        }
        if (columnsC.length == 0) {
            columnsC = columns7;
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
        ;
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
        nui.get('zyjcjh').setValue('');
        nui.get('checkprojectname').setValue(checkprojectname);
        nui.get("tree1").setAjaxType("POST");
        nui.get('tree1')
            .load("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.searchData.biz.ext?baseid=" + jdid + "&crewid=" + jzid);
        nui.get('_entity').setValue(
            "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.NuclearIslandDailySearch");
    }

    //enter键触发查询
    function onKeyEnter(e) {
        searchs();
    }

    function onCloseClick(e) {
        var obj = e.sender;
        obj.setText("");
        obj.setValue("");
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

    .form-group ul {
        float: left;
        margin-bottom:5px;
    }

    .form-group ul li {
        float: left;
        margin-top:3px;
        margin-bottom:3px;
    }

    /* #ym, #ym1, #ym2 {
        overflow: hidden;
    } */
</style>
</body>
</html>
