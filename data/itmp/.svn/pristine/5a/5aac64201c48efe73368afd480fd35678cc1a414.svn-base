<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<%
    String detailed = request.getParameter("detailed");
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-23 15:24:56
- Description:
    --%>

<head>
    <title>专用检查计划大修查询</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%=request.getContextPath()%>/common/nui/nui.js"
            type="text/javascript">

    </script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/common/common.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/>
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
<body style="width: 98%; height: 99%; margin: 0 auto;" id="zhuyem">

<div class="bs-docs-section">
    <div id="form1" class="nui-form" align="center" style="height: 100%">
        <!-- 数据实体的名称 -->
        <input class="nui-hidden" name="criteria8/_entity" id="entityId"
               value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.NuclearIslandOverhaulSearch"> <input
            class="nui-hidden" name="criteria7/_entity"
            value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupport"> <input
            class="nui-hidden" name="criteria1/_entity"
            value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupportSearch"> <input
            class="nui-hidden" name="criteria2/_entity"
            value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.BossHead"> <input
            class="nui-hidden" name="criteria3/_entity"
            value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube"> <input
            class="nui-hidden" name="criteria4/_entity"
            value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Valve"> <input
            class="nui-hidden" name="criteria5/_entity" id="entityId1"
            value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container"> <input
            class="nui-hidden" name="criteria6/_entity" id="entityId2"
            value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Support"> <input
            class="nui-hidden" name="criteria/_entity" id="_entity"
            value="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.NuclearIslandOverhaulSearch">
        <!-- 排序字段 -->
        <input class="nui-hidden" name="criteria/_orderby[1]/_property"
               value="datetime"> <input class="nui-hidden"
                                        name="criteria/_orderby[1]/_sort" value="desc">
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
        <input class="nui-hidden" name="criteria7/_orderby[1]/_property" value="orderno">
        <input class="nui-hidden" name="criteria7/_orderby[1]/_sort" value="asc">
        <input class="nui-hidden" name="criteria8/_orderby[1]/_property" value="orderno">
        <input class="nui-hidden" name="criteria8/_orderby[1]/_sort" value="asc">
        
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
					<td style="width: 10%;" class="form_label">
							
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
						<td style="width: 20%;" class="form_label">
							 C<input class="nui-spinner" id="start" maxValue="60"
                                    minValue="1" style="width: 60px" name=""/>-C<input
                                class="nui-spinner" id="end" maxValue="60" minValue="1"
                                style="width: 60px" name=""/> <a class="nui-button" id="zq"
                                                                 onclick="searchs()"> 修改显示周期 </a>
						</td>
												<td style="width: 5%;"></td>
						
					</tr>
				</table>
				
				<div class="search-container folding-menu"
                 style="overflow: hidden; display: none;" id="queryForm1">
                <div class="row">
                    <!-- <div class="form-group"> -->
                    <div>
                        <div class="form-group">

                            <ul id="ym" style="float:left;padding-left:0px!important;margin-bottom:0px!important;">
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


                                <li id="jcmc" style="display: none;">检查项目名称:</li>
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

                                <li>轮次&状态:</li><li> <input id="combo1" class="nui-combobox"
                                                  style="width: 50%;float:left;" valueField="id" required="true"
                                                  allowInput="true" textField="text" pinyinField="tag">
                                    <div id="combobox2" class="nui-combobox" style="width: 50%;"
                                         popupWidth="100" textField="name" valueField="id" url=""
                                         multiSelect="true" showClose="true"
                                         oncloseclick="onCloseClick" dataField="jsonObject">
                                        <div property="columns">
                                            <div header="状态" field="name"></div>
                                        </div>
                                    </div>
                                </li>
                                
                                
                            </ul>

                            <ul id="ym1" style="float:left;padding-left:0px!important;margin-bottom:0px!important;">
                                <li class="ckth form_label" colspan="3"
                                    style="display: none;">参考图号:</li><li  class="ckth form_label" colspan="3"
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
                                

                                <li class="zch" style="display: none;">支撑号:</li> <li class="zch" style="display: none;"> <input
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

                                <li class="sbth1" style="display: none;">设备图号:</li><li class="sbth1" style="display: none;"> <input
                                        class="nui-textbox" name="criteria/_expr[14]/sbnumber"/> <input
                                        class="nui-hidden" name="criteria/_expr[14]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[14]/_likeRule"
                                           value="all">
                                </li>
                                <li id="jjfs" style="display: none">接近方式: <input
                                        class="nui-textbox" name="criteria/_expr[15]/jjmode"/> <input
                                        class="nui-hidden" name="criteria/_expr[15]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[15]/_likeRule"
                                           value="all">
                                </li>

                                <li class="ll" style="display: none;">列:</li> <li class="ll" style="display: none;"> <input
                                        class="nui-textbox" name="criteria/_expr[16]/columnsint"/> <input
                                        class="nui-hidden" name="criteria/_expr[16]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[16]/_likeRule"
                                           value="all">
                                </li>

                                <li class="hh" style="display: none;">行:</li> <li class="hh" style="display: none;"> <input
                                        class="nui-textbox" name="criteria/_expr[17]/row"/> <input
                                        class="nui-hidden" name="criteria/_expr[17]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[17]/_likeRule"
                                           value="all">
                                </li>

                                
                            </ul>

                            <ul id="ym2" style="float:left;padding-left:0px!important;margin-bottom:0px!important;">
                                <li>系统设备:</li><li> <input class="nui-textbox"
                                                 name="criteria/_expr[19]/systemdevice"/> <input
                                        class="nui-hidden" name="criteria/_expr[19]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[19]/_likeRule"
                                           value="all">
                                </li>

                            </ul>
                            <ul style="float:left;padding-left:0px!important;">
                                
                                <li class="jclx" style="display: none;">检查类型:</li> <li class="jclx" style="display: none;"> <input
                                        class="nui-textbox" name="criteria/_expr[18]/checktype"/> <input
                                        class="nui-hidden" name="criteria/_expr[18]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[18]/_likeRule"
                                           value="all">
                                </li>
                            	<li style="">
                            		 数据状态:</li><li>
                            		<input id="sjzt" class="nui-dictcombobox" style="width:66%!important;"  dictTypeId="SJZT"/>
                            	</li>
                            	<li >类别:</li><li> <input class="nui-textbox"
                                               name="criteria/_expr[20]/category"/> <input
                                        class="nui-hidden" name="criteria/_expr[20]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[20]/_likeRule"
                                           value="all">
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


<div region="center" style="width: 100%; height: 88%;"
     showToolbar="false" showFooter="false">
    <div class="nui-toolbar"  style="border-bottom: 0; padding: 0px; width: 100%;" name="ITMP_btn">
        <table style="width: 100%;">
            <tr>
                <td class="col-sm-9"><a id="add" class="nui-menubutton btn btn-default btn-xs" menu="#popupMenu" name="ITMP_btnAdd">新增</a>
                    <ul id="popupMenu" class="nui-menu" style="display: none;">

                        <li name="ITMP_btnAddOne" onclick="add()">单条增加</li>
                        <li name="ITMP_btnAddBatch" onclick="batchAdd()">批量增加</li>
                    </ul>
                    <a id="update" class="nui-button showCellTooltip btn btn-default btn-xs" onclick="edit()"  name="ITMP_btnEdit">
                         修改
                    </a>
                    <a class="nui-menubutton btn btn-default btn-xs"  menu="#popupMenua" id="popup" name="ITMP_btnPlan">  计划更新
                    </a>
                    <ul id="popupMenua" class="nui-menu" style="display: none;">
                        <li id="complete" name="ITMP_btnPlanFulfil"  onclick="planupdate('1');">计划完成</li>
                        <li id="cancel"   name="ITMP_btnPlanCancel"  onclick="planupdate('2');">计划取消</li>
                    </ul>
                    <a id="upload" class="nui-button btn btn-default btn-xs"  onclick="openrecord()" name="ITMP_btnHis">  
                        变更履历
                    </a> <a class="nui-button btn btn-default btn-xs" onclick="output()" name="ITMP_btnExp">
                         导出
                    </a> <a class="nui-button btn btn-default btn-xs" onclick="remove()" name="ITMP_btnDel">
                         删除
                    </a> <a class="nui-button btn btn-default btn-xs"
                            onclick="recycle()" name="ITMP_btnRec">  回收站
                    </a>
                    <div style="float:right;margin-right: 20px">
                    检查计划类型:
                            <input zzCombo="ZYJCJHCombo"
                                   name="criteria/_expr[1]/type" vtype="maxLength:128"
                                   class="nui-combobox nui-form-input" onvaluechanged="chooseType()"
                                   id="zyjcjh" dataField="dictObject" url="" textField="dictName"
                                   valueField="dictID" emptyText="请选择" required="false"
                                   allowInput="true" showNullItem="true" nullItemText="请选择..."/>
                            <input  class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input  class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                    </div>
                    </td>
            </tr>
        </table>
    </div>

    <div class="nui-layout" style="width: 100%; height: 100%;">
        <div region="west" width="250" title="专用检查计划列表">
            <div class="nui-fit">
                <ul id="tree1" class="nui-tree"  expandOnNodeClick="true" resultAsTree="false"
                    style="width: 100%; height: 100%;" idField="id"
                    parentField="parentid" dataField="jsondata" textField="name"
                    url="">
                </ul>
            </div>
        </div>
        <div title="center" region="center">
            <div class="nui-panel" title="数据列表"
                 style="width: 100%; height: 100%;" showToolbar="false"
                 showFooter="false">
                <div class="nui-fit">
                    <div id="datagrid1" dataField="tdggltzyjcjhgds"
                         class="nui-datagrid" style="width: 100%; height: 100%;"
                         url="com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.queryTDgglTzyjcjhgds.biz.ext"
                         pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"
                         onselectionchanged="selectionChanged" allowSort1="false"
                         allowAlternating="true">

                        <div property="columns">
                            <div type="indexcolumn"></div>
                            <div type="checkcolumn"></div>
                            <div field="uuid" headerAlign="center" allowSort="true"
                                 visible="false">uuid
                            </div>
                            <div field="processInstId" headerAlign="center" allowSort="true"
                                 visible="false">processInstId
                            </div>

                            <div field="orderno" headerAlign="center" allowSort="true"
                                 visible="false">序号
                            </div>
							<div field=processstatus headerAlign="center" Align="center" allowSort="true" visible="false">
                            processstatus
                        	</div>
                            <div field="type" id="sjtype" headerAlign="center"
                                 allowSort="true" visible="false">类型
                            </div>
                            <div field="tasklist" headerAlign="center" allowSort="true">
                                维护项目
                            </div>
                            <div field="checkprojectname" headerAlign="center"
                                 allowSort="true">检查项目名称
                            </div>
                            <div field="itemnumber" headerAlign="center" allowSort="true" width="40">
                                项号
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
                            <div field="isdelete" headerAlign="center" allowSort="true"
                                 visible="false">是否删除
                            </div>
                            <div field="systemdevice" headerAlign="center" allowSort="true">
                                系统设备
                            </div>
                            <div field="category" headerAlign="center" allowSort="true">
                                类别
                            </div>
                            <div field="gj" headerAlign="center" allowSort="true">管径</div>
                            <div field="bw" headerAlign="center" allowSort="true">保温</div>
                            <div field="cl" headerAlign="center" allowSort="true">材料</div>
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
                            <div field="gnwz" headerAlign="center" allowSort="true">
                                功能位置
                            </div>
                            <div field="jcbw" headerAlign="center" allowSort="true">
                                检查部位
                            </div>
                            <div field="sbnumber" headerAlign="center" allowSort="true">
                                设备图号
                            </div>
                            <!--  <div field="sbbh" headerAlign="center" allowSort="true" >
                            设备编号
                        </div> -->
                            <div field="columnsint" headerAlign="center" allowSort="true">
                                列
                            </div>
                            <div field="row" headerAlign="center" allowSort="true">行</div>
                            <div field="checktype" headerAlign="center" allowSort="true">
                                检查类型
                            </div>
                            <div field="jccycle" headerAlign="center" allowSort="true">
                                检查周期
                            </div>
                            <div field="c1" name="c1" headerAlign="center" allowSort="true" width="34">
                                C1
                            </div>
                            <div field="c2" name="c2" headerAlign="center" allowSort="true" width="34">
                                C2
                            </div>
                            <div field="c3" name="c3" headerAlign="center" allowSort="true" width="34">
                                C3
                            </div>
                            <div field="c4" name="c4" headerAlign="center" allowSort="true" width="34">
                                C4
                            </div>
                            <div field="c5" name="c5" headerAlign="center" allowSort="true" width="34">
                                C5
                            </div>
                            <div field="c6" name="c6" headerAlign="center" allowSort="true" width="34">
                                C6
                            </div>
                            <div field="c7" name="c7" headerAlign="center" allowSort="true" width="34">
                                C7
                            </div>
                            <div field="c8" name="c8" headerAlign="center" allowSort="true" width="34">
                                C8
                            </div>
                            <div field="c9" name="c9" headerAlign="center" allowSort="true" width="34">
                                C9
                            </div>
                            <div field="c10" name="c10" headerAlign="center"
                                 allowSort="true" width="34">C10
                            </div>
                            <div field="c11" name="c11" headerAlign="center"
                                 allowSort="true" width="34">C11
                            </div>
                            <div field="c12" name="c12" headerAlign="center"
                                 allowSort="true" width="34">C12
                            </div>
                            <div field="c13" name="c13" headerAlign="center"
                                 allowSort="true" width="34">C13
                            </div>
                            <div field="c14" name="c14" headerAlign="center"
                                 allowSort="true" width="34">C14
                            </div>
                            <div field="c15" name="c15" headerAlign="center"
                                 allowSort="true" width="34">C15
                            </div>
                            <div field="c16" name="c16" headerAlign="center"
                                 allowSort="true" width="34">C16
                            </div>
                            <div field="c17" name="c17" headerAlign="center"
                                 allowSort="true" width="34">C17
                            </div>
                            <div field="c18" name="c18" headerAlign="center"
                                 allowSort="true" width="34">C18
                            </div>
                            <div field="c19" name="c19" headerAlign="center"
                                 allowSort="true" width="34">C19
                            </div>
                            <div field="c20" name="c20" headerAlign="center"
                                 allowSort="true" width="34">C20
                            </div>
                            <div field="c21" name="c21" headerAlign="center"
                                 allowSort="true" width="34">C21
                            </div>
                            <div field="c22" name="c22" headerAlign="center"
                                 allowSort="true" width="34">C22
                            </div>
                            <div field="c23" name="c23" headerAlign="center"
                                 allowSort="true" width="34">C23
                            </div>
                            <div field="c24" name="c24" headerAlign="center"
                                 allowSort="true" width="34">C24
                            </div>
                            <div field="c25" name="c25" headerAlign="center"
                                 allowSort="true" width="34">C25
                            </div>
                            <div field="c26" name="c26" headerAlign="center"
                                 allowSort="true" width="34">C26
                            </div>
                            <div field="c27" name="c27" headerAlign="center"
                                 allowSort="true" width="34">C27
                            </div>
                            <div field="c28" name="c28" headerAlign="center"
                                 allowSort="true" width="34">C28
                            </div>
                            <div field="c29" name="c29" headerAlign="center"
                                 allowSort="true" width="34">C29
                            </div>

                            <div field="c30" name="c30" headerAlign="center"
                                 allowSort="true" width="34">C30
                            </div>
                            <div field="c31" name="c31" headerAlign="center"
                                 allowSort="true" width="34">C31
                            </div>
                            <div field="c32" name="c32" headerAlign="center"
                                 allowSort="true" width="34">C32
                            </div>
                            <div field="c33" name="c33" headerAlign="center"
                                 allowSort="true" width="34">C33
                            </div>
                            <div field="c34" name="c34" headerAlign="center"
                                 allowSort="true" width="34">C34
                            </div>
                            <div field="c35" name="c35" headerAlign="center"
                                 allowSort="true" width="34">C35
                            </div>
                            <div field="c36" name="c36" headerAlign="center"
                                 allowSort="true" width="34">C36
                            </div>
                            <div field="c37" name="c37" headerAlign="center"
                                 allowSort="true" width="34">C37
                            </div>
                            <div field="c38" name="c38" headerAlign="center"
                                 allowSort="true"  width="34">C38
                            </div>
                            <div field="c39" name="c39" headerAlign="center"
                                 allowSort="true" width="34">C39
                            </div>
                            <div field="c40" name="c40" headerAlign="center"
                                 allowSort="true" width="34">C40
                            </div>
                            <div field="c41" name="c41" headerAlign="center"
                                 allowSort="true" width="34">C41
                            </div>
                            <div field="c42" name="c42" headerAlign="center"
                                 allowSort="true" width="34">C42
                            </div>
                            <div field="c43" name="c43" headerAlign="center"
                                 allowSort="true" width="34">C43
                            </div>
                            <div field="c44" name="c44" headerAlign="center"
                                 allowSort="true" width="34">C44
                            </div>
                            <div field="c45" name="c45" headerAlign="center"
                                 allowSort="true" width="34">C45
                            </div>
                            <div field="c46" name="c46" headerAlign="center"
                                 allowSort="true" width="34">C46
                            </div>
                            <div field="c47" name="c47" headerAlign="center"
                                 allowSort="true" width="34">C47
                            </div>
                            <div field="c48" name="c48" headerAlign="center"
                                 allowSort="true" width="34">C48
                            </div>
                            <div field="c49" name="c49" headerAlign="center"
                                 allowSort="true" width="34">C49
                            </div>
                            <div field="c50" name="c50" headerAlign="center"
                                 allowSort="true" width="34">C50
                            </div>
                            <div field="c51" name="c51" headerAlign="center"
                                 allowSort="true" width="34">C51
                            </div>
                            <div field="c52" name="c52" headerAlign="center"
                                 allowSort="true" width="34">C52
                            </div>
                            <div field="c53" name="c53" headerAlign="center"
                                 allowSort="true" width="34">C53
                            </div>
                            <div field="c54" name="c54" headerAlign="center"
                                 allowSort="true" width="34">C54
                            </div>
                            <div field="c55" name="c55" headerAlign="center"
                                 allowSort="true" width="34">C55
                            </div>
                            <div field="c56" name="c56" headerAlign="center"
                                 allowSort="true" width="34">C56
                            </div>
                            <div field="c57" name="c57" headerAlign="center"
                                 allowSort="true" width="34">C57
                            </div>
                            <div field="c58" name="c58" headerAlign="center"
                                 allowSort="true" width="34">C58
                            </div>
                            <div field="c59" name="c59" headerAlign="center"
                                 allowSort="true" width="34">C59
                            </div>
                            <div field="c60" name="c60" headerAlign="center"
                                 allowSort="true" width="34">C60
                            </div>
                            <div field="creator" headerAlign="center" allowSort="true"
                                 visible="false">发起人
                            </div>
                            <div field="datetime" headerAlign="center" allowSort="true"
                                 visible="false" dateFormat="yyyy-MM-dd HH:mm:ss">发起时间
                            </div>
                            <div field="reason" headerAlign="center" allowSort="true"
                                 visible="false">发起原因
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

    var index = 25;
    nui.get("update").disable();
    var tree = nui.get("tree1");
    var jdid = getCookie('jdid');

    nui.get('con_jdid').setValue(jdid);
    var jzid = getCookie('jzid');

    nui.get('con_jzid').setValue(jzid);
   	tree.setAjaxType("POST");
    tree.load("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.chaxun.biz.ext?baseid=" + jdid + "&crewid=" + jzid);

    var columnsC = [];
    var grid = nui.get("datagrid1");

    var detailed = '<%=detailed %>';
    if (detailed != 'null' && detailed != null && detailed != '') {
        $('#cond').val(detailed.replace(/(^\s*)|(\s*$)/g, ""));
        btnQuery();
    }
    var combobox2 = nui.get("combobox2");
    var jcjh1 = nui.get("zyjcjh");
    if (jdid == "86") {
       	combobox2.setAjaxType("POST");
        combobox2.load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=taishanbase");
        jcjh1.setAjaxType("POST");
        jcjh1.load("com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=ZYJCJH");
    } else {
        combobox2.setAjaxType("POST");
        combobox2.load("com.cgn.itmp.basecommon.Common.getStatus.biz.ext?type=otherbases");
        jcjh1.setAjaxType("POST");
        jcjh1.load("com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=ZYJCJH1");
    }

    var start = 1;
    var end = 60;
    var urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getBaseCircle.biz.ext";
    if (jdid != '' && jzid != '') {

        var parms = "{baseid:" + jdid + ",crewid:" + jzid + "}";
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
                        field.header = 'C' + i;
                        field.width =34;
                        clo.push(field);
                    }
                    grid.setColumns(clo);
// 						searchs();
                }
            }
        });
    }
    var countrys = [];
    for (var i = 1; i <= 60; i++) {
        countrys.push({
            id: 'c' + i,
            text: 'C' + i,
            tag: 'c' + i
        });
    }

    var combo = nui.get("combo1");
    combo.setData(countrys);
	var checkprojectname="";
    tree.on("nodeselect", function (e) {
        var type = nui.get("zyjcjh").getValue();
         var parentid = e.node.parentid;
         checkprojectname=e.node.name;
         nui.get("checkprojectname").setValue(e.node.name);
        var xmly = "";
        if(parentid == '规范法定项目'){
        	xmly = "GFFD";
        }else if(parentid == '规范非法定项目'){
        	xmly = "GFFFD";
        }
        if ("HFGDZC" == type) {
            if (e.isLeaf) {
                grid.load({
                        "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupport",
                        "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                        "criteria/_expr[4]/checkprojectname": e.node.name,
                        "criteria/_expr[5]/isdelete": '0',
                        "criteria/_expr[6]/base": jdid,
                        "criteria/_expr[7]/crew": jzid,
                         "criteria/_expr[8]/system": xmly
                    });

                parms = "";
            }
        } else if ("HFBOSS" == type) {
            if (e.isLeaf) {
                grid.load({
                        "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.BossHead",
                        "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                        "criteria/_expr[4]/checkprojectname": e.node.name,
                        "criteria/_expr[5]/isdelete": '0',
                        "criteria/_expr[6]/base": jdid,
                        "criteria/_expr[7]/crew": jzid,
                         "criteria/_expr[8]/sources": xmly
                    });
                parms = "";
            }
        } else if ("ZCZJ" == type) {
            if (e.isLeaf) {
                grid.load({
                        "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Support",
                        "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                        "criteria/_expr[4]/checkprojectname": e.node.name,
                        "criteria/_expr[5]/isdelete": '0',
                        "criteria/_expr[6]/base": jdid,
                        "criteria/_expr[7]/crew": jzid,
                         "criteria/_expr[8]/system": xmly
                    });
                parms = "";
            }
        } else if ("FM" == type) {
            if (e.isLeaf) {
                grid.load({
                        "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Valve",
                        "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                        "criteria/_expr[4]/checkprojectname": e.node.name,
                        "criteria/_expr[5]/isdelete": '0',
                        "criteria/_expr[6]/base": jdid,
                        "criteria/_expr[7]/crew": jzid,
                         "criteria/_expr[8]/system": xmly
                    });
                parms = "";
            }
        } else if ("CRG" == type) {
            if (e.isLeaf) {
                grid.load({
                        "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube",
                        "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                        "criteria/_expr[4]/checkprojectname": e.node.name,
                        "criteria/_expr[5]/isdelete": '0',
                        "criteria/_expr[6]/base": jdid,
                        "criteria/_expr[7]/crew": jzid,
                         "criteria/_expr[8]/system": xmly
                    });
                parms = "";
            }
        } else if ("RQRJHQ" == type) {
            if (e.isLeaf) {
                grid.load({
                        "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container",
                        "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                        "criteria/_expr[4]/checkprojectname": e.node.name,
                        "criteria/_expr[5]/isdelete": '0',
                        "criteria/_expr[6]/base": jdid,
                        "criteria/_expr[7]/crew": jzid,
                         "criteria/_expr[8]/zytool": xmly
                    });
                parms = "";
            }
        } else if ("" == type) {
            if (e.isLeaf) {
                grid.load({
                        "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.NuclearIslandOverhaulSearch",
                        "criteria/_orderby[2]/_property":"orderno",
                    "criteria/_orderby[2]/_sort":"asc",
                        "criteria/_expr[4]/checkprojectname": e.node.name,
                        "criteria/_expr[5]/isdelete": '0',
                        "criteria/_expr[6]/base": jdid,
                        "criteria/_expr[7]/crew": jzid,
                         "criteria/_expr[8]/system": xmly
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
        grid.on("drawcell", function (e) {
            var record = e.record, column = e.column, field = e.field, value = e.value;
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

    //计划更新
    function planupdate(flag) {
        var type = nui.get("zyjcjh").getValue();
        var processDef = null;
        var url = null;
        if ("HFGDZC" == type) {//焊缝
            processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.dxHdHfgdPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.dxHdHfgdPlanCancel';
            url = encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=tasklist&planFlag=" + flag + "&modelFlag=" + 13 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupport&processName=专用检查计划_核岛_焊缝(管道/支撑)_大修执行条目&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit&processDef=" + processDef);
        } else if ("HFBOSS" == type) {//boss头
            processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.dxHdHfbossPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.dxHdHfbossPlanCancel';
            url = encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=tasklist&planFlag=" + flag + "&modelFlag=" + 14 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.BossHead&processName=专用检查计划_核岛_焊缝(BOSS)_大修执行条目头&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit&processDef=" + processDef);
        } else if ("RQRJHQ" == type) {//容器
            processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.dxHdRqPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.dxHdRqPlanCancel';
            url = encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=tasklist&planFlag=" + flag + "&modelFlag=" + 15 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container&processName=专用检查计划_核岛_容器_大修执行条目&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit&processDef=" + processDef);
        } else if ("ZCZJ" == type) {//支撑
            processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.dxHdZcRqPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.dxHdZcRqPlanCancel';
            url = encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=tasklist&planFlag=" + flag + "&modelFlag=" + 18 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Support&processName=专用检查计划_核岛_支撑/支架_大修执行条目&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit&processDef=" + processDef);
        } else if ("FM" == type) {//阀门
            processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.dxHdFmPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.dxHdFmPlanCancel';
            url = encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=tasklist&planFlag=" + flag + "&modelFlag=" + 17 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Valve&processName=专用检查计划_核岛_阀门_大修执行条目&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit&processDef=" + processDef);
        } else if ("CRG" == type) {//传热管
            processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.dxHdCrgPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.dxHdCrgPlanCancel';
            url = encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=tasklist&planFlag=" + flag + "&modelFlag=" + 16 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube&processName=专用检查计划_核岛_传热管_大修执行条目&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit&processDef=" + processDef);
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

    //批量添加
    function batchAdd() {
        var type = nui.get("zyjcjh").getValue();
        var tempFileName = null;
        var tempLoadName = null;
        var entitfName = null;
        if("" == type || null == type || undefined == type){
            nui.alert("请选择专用检查计划类型");
            return;
        }else if ("HFGDZC" == type) {
            tempFileName= "gdImport.xlsx";
            tempLoadName= "管道焊缝或支撑焊缝专用检查计划大修执行条目导入模板";
            entitfName= "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupport";
        } else if ("HFBOSS" == type) {
            tempFileName= "bossImport.xlsx";
            tempLoadName= "BOSS头焊缝专用检查计划大修执行条目导入模板";
            entitfName= "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.BossHead";
        } else if ("RQRJHQ" == type) {
            tempFileName= "rqImport.xlsx";
            tempLoadName= "容器和热交换器专用检查计划大修执行条目导入模板";
            entitfName= "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container";
        } else if ("ZCZJ" == type) {
            tempFileName= "zcImport.xlsx";
            tempLoadName= "支撑支架专用检查计划大修执行条目导入模板";
            entitfName= "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Support";
        } else if ("FM" == type) {
            tempFileName= "fmImport.xlsx";
            tempLoadName="阀门专用检查计划大修执行条目导入模板";
            entitfName= "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Valve";
        } else if ("CRG" == type) {
            tempFileName= "crgImport.xlsx";
            tempLoadName= "传热管专用检查计划大修执行条目导入模板";
            entitfName= "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube";
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

    //导出
    function output() {
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        var type = nui.get("zyjcjh").getValue();
        var filterField = "processStatus,processstatus,uuid,isdelete,processInstId,creator,datetime,reason,orderno,type";
    
        for (var i = 1; i < parseInt(start); i++) {
            if (i <= start)
                filterField += ",";
            var clc = "c" + i;
            filterField += clc;
        }
        for (var k = parseInt(end) + 1 /* + 8 */; k <= 60; k++) {
            if (k <= 60)
                filterField += ",";
            var clc = "c" + k;
            filterField += clc;
        }
        if ("HFGDZC" == type) {
            nui
                .open({
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据",
                    width: 470,
                    height: 320,
                    onload: function () {//弹出页面加载完成
                        var iframe = this.getIFrameEl();
                        var data = {
                            entityName: "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupportSearch",
                            queryParam: json, //查询数据
                            queryKey: 'criteria', //查询实体名
                            query: ['jcmethod', 'checkprojectname', 'isdelete', 'base', 'crew', 'tasklist',
                                'ckt_dzhnumber', 'hfnumber', 'number', 'gxnumber'], //按顺序放置
                            expTitle: "专用核岛大修焊缝管道支撑",
                            queryIndex: [2, 4, 5, 6, 7, 8, 9, 10, 11],
                            filterField: [filterField], //要过滤的字段，多字段用,隔开
                            dicFieds: "type@ZYJCJH,system@PROTYPE",
                            defaultCheck: ["base,crew,type,tasklist,system,checkprojectname,itemnumber,equipment,hfnumber,number,gxnumber,ckt_dzhnumber,roomnumber,jcmethod,jcprocedure,remarks"],
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
            nui
                .open({
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据",
                    width: 420,
                    height: 320,
                    onload: function () {//弹出页面加载完成
                        var iframe = this.getIFrameEl();
                        var data = {
                            entityName: "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.BossHead",
                            queryParam: json, //查询数据
                            queryKey: 'criteria', //查询实体名
                            query: ['jcmethod', 'checkprojectname', 'isdelete', 'base', 'crew', 'tasklist',
                                'ckt_dzhnumber', 'hfnumber', 'number', 'gxnumber', 'systemdevice', 'category'], //按顺序放置
                            expTitle: "专用核岛大修焊缝BOSS头",
                            queryIndex: [2, 4, 5, 6, 7, 8, 9, 10, 11, 19, 20],
                            filterField: [filterField], //要过滤的字段，多字段用,隔开
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
            nui
                .open({
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据",
                    width: 420,
                    height: 320,
                    onload: function () {//弹出页面加载完成
                        var iframe = this.getIFrameEl();
                        var data = {
                            entityName: "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container",
                            queryParam: json, //查询数据
                            queryKey: 'criteria', //查询实体名
                            query: ['jcmethod', 'checkprojectname', 'isdelete', 'base', 'crew', 'tasklist',
                                'gnwz', 'sbnumber', 'jjmode'], //按顺序放置
                            expTitle: "专用核岛大修容器和热交换器",
                            queryIndex: [2, 4, 5, 6, 7, 8, 13, 14, 15],
                            filterField: [filterField], //要过滤的字段，多字段用,隔开
                            defaultCheck: ["base,crew,type,tasklist,checkprojectname,itemnumber,gnwz,sbname,gkc,jcbw,sbnumber,jcmethod,jjmode,jcprocedure,zytool,remarks"],
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
            nui
                .open({
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据",
                    width: 420,
                    height: 320,
                    onload: function () {//弹出页面加载完成
                        var iframe = this.getIFrameEl();
                        var data = {
                            entityName: "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Support",
                            queryParam: json, //查询数据
                            queryKey: 'criteria', //查询实体名
                            query: ['jcmethod', 'checkprojectname', 'isdelete', 'base', 'crew', 'tasklist',
                                'ckt_dzhnumber', 'gxnumber', 'bracenumber'], //按顺序放置
                            expTitle: "专用核岛大修支撑",
                            queryIndex: [2, 4, 5, 6, 7, 8, 9, 11, 12],
                            filterField: [filterField], //要过滤的字段，多字段用,隔开
                            dicFieds: "type@ZYJCJH,system@PROTYPE",
                            defaultCheck: ["base,crew,type,tasklist,checkprojectname,itemnumber,system,bracenumber,gxnumber,ckt_dzhnumber,roomnumber,jjmode,jcmethod,jcprocedure,pmcycle,pmcode,remarks"],
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
            nui
                .open({
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据",
                    width: 420,
                    height: 350,
                    onload: function () {//弹出页面加载完成
                        var iframe = this.getIFrameEl();
                        var data = {
                            entityName: "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Valve",
                            queryParam: json, //查询数据
                            queryKey: 'criteria', //查询实体名
                            query: ['jcmethod', 'checkprojectname', 'isdelete', 'base', 'crew', 'tasklist',
                                'ckt_dzhnumber', 'gxnumber', 'gnwz'], //按顺序放置
                            queryIndex: [2, 4, 5, 6, 7, 8, 9, 11, 13],
                            expTitle: "专用核岛大修阀门",
                            filterField: [filterField], //要过滤的字段，多字段用,隔开
                            dicFieds: "type@ZYJCJH,system@PROTYPE",

                            defaultCheck: ["base,crew,type,tasklist,checkprojectname,itemnumber,system,equipment,gnwz,jcbw,jjmode,gxnumber,ckt_dzhnumber,roomnumber,jcmethod,jcprocedure,gfcycle,pmcycle,pmcode,zxunit,remarks"],
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
            nui
                .open({
                    url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
                    title: "导出数据",
                    width: 420,
                    height: 320,
                    onload: function () {//弹出页面加载完成
                        var iframe = this.getIFrameEl();
                        var data = {
                            entityName: "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube",
                            queryParam: json, //查询数据
                            queryKey: 'criteria', //查询实体名
                            query: [
                                'checkprojectname', 'isdelete', 'base', 'crew', 'tasklist', 'sbnumber', 'columnsint', 'row', 'checktype'], //按顺序放置
                            expTitle: "专用核岛大修传热管",
                            filterField: [filterField], //要过滤的字段，多字段用,隔开
                            queryIndex: [4, 5, 6, 7, 8, 14, 16, 17, 18],
                            dicFieds: "type@ZYJCJH,checktype@JCLX,system@PROTYPE",
                            defaultCheck: ["base,crew,type,tasklist,checkprojectname,itemnumber,system,sbname,sbnumber,columnsint,row,checktype,jcmethod,jcprocedure,jccycle,remarks"],
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

    //新增
    function add() {
        var row = grid.getSelected();
        var type = nui.get('zyjcjh').getValue();
        var url = null ;
        var title = null;
        if (row) {
            if ("" == type || null == type || undefined == type) {
                nui.alert("请选择专用检查计划类型");
                return;
            }else if ("HFGDZC" == type) {//管道支撑
                url = "/itmp/specialinspection/NuclearIslandOverhaul/PipelineSupport/PipelineSupportForm.jsp?type=HFGDZC";
                title =  "新增焊缝管道记录";
            }else if ("HFBOSS" == type) {//boss头
                url = "/itmp/specialinspection/NuclearIslandOverhaul/BossHead/BossHeadForm.jsp?type=HFBOSS";
                title =  "新增焊缝BOSS头记录";
            }else if ("ZCZJ" == type) {//支撑支架
                url = "/itmp/specialinspection/NuclearIslandOverhaul/Support/SupportForm.jsp?type=ZCZJ";
                title =  "新增支撑支架记录";
            }else if ("FM" == type) {//阀门
                url = "/itmp/specialinspection/NuclearIslandOverhaul/Valve/ValveForm.jsp?type=FM";
                title =  "新增阀门记录";
            }else if ("RQRJHQ" == type) {//容器
                url = "/itmp/specialinspection/NuclearIslandOverhaul/Container/ContainerForm.jsp?type=RQRJHQ";
                title =  "新增容器记录";
            }else if ("CRG" == type) {//传热管
                url = "/itmp/specialinspection/NuclearIslandOverhaul/Tube/TubeForm.jsp?type=CRG";
                title =  "新增传热管记录";
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

	//变更履历
    function openrecord() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/specialinspection/NuclearIslandOverhaul/VitaeList.jsp",
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
	//回收站
    function recycle() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/specialinspection/NuclearIslandOverhaul/RecycleList.jsp",
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

    var columns1 = [
        {
            type: 'checkcolumn'
        }, {
            field: 'tasklist',
            header: '维护项目',
            headerAlign: 'center',
            align: 'center',
            displayField: 'tasklist'
        }, {
            field: 'checkprojectname',
            header: '检查项目名称',
            headerAlign: 'center',
            displayField: 'checkprojectname'
        }, {
            field: 'itemnumber',
            header: '项号',
            headerAlign: 'center',
            displayField: 'itemnumber',
            width:'40'
        }, {
            field: 'system',
            header: '项目来源',
            headerAlign: 'center',
            displayField: 'system',
            visible:false,
            width:'40'
        }, {
            field: 'equipment1',
            header: '设备',
            headerAlign: 'center',
            align: 'center',
            displayField: 'equipment'
        }, {
            field: 'hfnumber',
            header: '焊缝号',
            headerAlign: 'center',
            displayField: 'hfnumber',
            width:'50'
        }, {
            field: 'number',
            header: '数量',
            headerAlign: 'center',
            align: 'center',
            displayField: 'number',
            width:'40'
        }, {
            field: 'gxnumber',
            header: '管线号',
            headerAlign: 'center',
            displayField: 'gxnumber',
            width:'50'
        }, {
            field: 'ckt_dzhnumber',
            header: '参考图号/等轴图',
            headerAlign: 'center',
            displayField: 'ckt_dzhnumber'
        }, {
            field: 'roomnumber',
            header: '房间号',
            headerAlign: 'center',
            align: 'center',
            displayField: 'roomnumber',
            width:'50'
        }, {
            field: 'jcmethod',
            header: '检查方法',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcmethod'
        }, {
            field: 'jcprocedure',
            header: '检查程序',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcprocedure'
        }, {
            field: 'remarks',
            header: '备注',
            headerAlign: 'center',
            displayField: 'remarks'
        },];
    var columns2 = [
        {
            type: 'checkcolumn'
        }, {
            field: 'tasklist',
            header: '维护项目',
            headerAlign: 'center',
            align: 'center',
            displayField: 'tasklist'
        }, {
            field: 'sources',
            header: '项目来源',
            headerAlign: 'center',
            displayField: 'sources',
            visible:false
        }, {
            field: 'checkprojectname',
            header: '检查项目名称',
            headerAlign: 'center',
            displayField: 'checkprojectname'
        }, {
            field: 'itemnumber',
            header: '项号',
            headerAlign: 'center',
            displayField: 'itemnumber',
            width:'40'
        }, {
            field: 'systemdevice',
            header: '系统设备',
            headerAlign: 'center',
            align: 'center',
            displayField: 'systemdevice',
            width:'65'
        }, {
            field: 'roomnumber',
            header: '房间号',
            headerAlign: 'center',
            align: 'center',
            displayField: 'roomnumber',
            width:'50'
        }, {
            field: 'category',
            header: '类别',
            headerAlign: 'center',
            align: 'center',
            displayField: 'category',
            Renderer: 'lbRenderer',
            width:'40'
        }, {
            field: 'ckt_dzhnumber',
            header: '参考图号/等轴图',
            headerAlign: 'center',
            displayField: 'ckt_dzhnumber'
        }, {
            field: 'gxnumber',
            header: '管线号',
            headerAlign: 'center',
            displayField: 'gxnumber',
            width:'50'
        }, {
            field: 'gj',
            header: '管径',
            headerAlign: 'center',
            align: 'center',
            displayField: 'gj'
        }, {
            field: 'hfnumber',
            header: '焊缝号',
            headerAlign: 'center',
            displayField: 'hfnumber',
            width:'50'
        }, {
            field: 'bw',
            header: '保温',
            headerAlign: 'center',
            align: 'center',
            displayField: 'bw'
        }, {
            field: 'cl',
            header: '材料',
            headerAlign: 'center',
            align: 'center',
            displayField: 'cl'
        }, {
            field: 'jcmethod',
            header: '检查方法',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcmethod'
        }, {
            field: 'jcprocedure',
            header: '检查程序',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcprocedure'
        }, {
            field: 'remarks',
            header: '备注',
            headerAlign: 'center',
            displayField: 'remarks'
        },];
    var columns3 = [
        {
            type: 'checkcolumn'
        }, {
            field: 'tasklist',
            header: '维护项目',
            headerAlign: 'center',
            align: 'center',
            displayField: 'tasklist'
        }, {
            field: 'system',
            header: '项目来源',
            headerAlign: 'center',
            displayField: 'system',
            visible:false
        }, {
            field: 'checkprojectname',
            header: '检查项目名称',
            headerAlign: 'center',
            displayField: 'checkprojectname'
        }, {
            field: 'itemnumber',
            header: '项号',
            headerAlign: 'center',
            displayField: 'itemnumber',
            width:'40'
        }, {
            field: 'bracenumber',
            header: '支撑号',
            headerAlign: 'center',
            align: 'center',
            displayField: 'bracenumber'
        }, {
            field: 'gxnumber',
            header: '管线号',
            headerAlign: 'center',
            displayField: 'gxnumber',
            width:'50'
        }, {
            field: 'ckt_dzhnumber',
            header: '参考图号/等轴图',
            headerAlign: 'center',
            displayField: 'ckt_dzhnumber'
        }, {
            field: 'roomnumber',
            header: '房间号',
            headerAlign: 'center',
            align: 'center',
            displayField: 'roomnumber',
            width:'50'
        }, {
            field: 'jjmode',
            header: '接近方式',
            headerAlign: 'center',
            displayField: 'jjmode'
        }, {
            field: 'jcmethod',
            header: '检查方法',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcmethod'
        }, {
            field: 'jcprocedure',
            header: '检查程序',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcprocedure'
        }, {
            field: 'pmcycle',
            header: 'PM周期',
            headerAlign: 'center',
            align: 'center',
            displayField: 'pmcycle'
        }, {
            field: 'pmcode',
            header: 'PM编码',
            headerAlign: 'center',
            align: 'center',
            displayField: 'pmcode'
        }, {
            field: 'remarks',
            header: '备注',
            headerAlign: 'center',
            displayField: 'remarks'
        },];
    var columns4 = [
        {
            type: 'checkcolumn'
        }, {
            field: 'tasklist',
            header: '维护项目',
            headerAlign: 'center',
            align: 'center',
            displayField: 'tasklist'
        }, {
            field: 'system',
            header: '项目来源',
            headerAlign: 'center',
            displayField: 'system',
            visible:false
        }, {
            field: 'checkprojectname',
            header: '检查项目名称',
            headerAlign: 'center',
            displayField: 'checkprojectname'
        }, {
            field: 'itemnumber',
            header: '项号',
            headerAlign: 'center',
            displayField: 'itemnumber',
            width:'40'
        }, {
            field: 'equipment',
            header: '设备/部件',
            headerAlign: 'center',
            displayField: 'equipment'
        }, {
            field: 'gnwz',
            header: '功能位置',
            headerAlign: 'center',
            displayField: 'gnwz'
        }, {
            field: 'jcbw',
            header: '检查部位',
            headerAlign: 'center',
            displayField: 'jcbw'
        }, {
            field: 'jjmode',
            header: '接近方式',
            headerAlign: 'center',
            displayField: 'jjmode'
        }, {
            field: 'gxnumber',
            header: '管线号',
            headerAlign: 'center',
            displayField: 'gxnumber',
            width:'50'
        }, {
            field: 'ckt_dzhnumber',
            header: '参考图号/等轴图',
            headerAlign: 'center',
            displayField: 'ckt_dzhnumber'
        }, {
            field: 'roomnumber',
            header: '房间号',
            headerAlign: 'center',
            align: 'center',
            displayField: 'roomnumber',
            width:'50'
        }, {
            field: 'jcmethod',
            header: '检查方法',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcmethod'
        }, {
            field: 'jcprocedure',
            header: '检查程序',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcprocedure'
        }, {
            field: 'gfcycle',
            header: '规范周期',
            headerAlign: 'center',
            align: 'center',
            displayField: 'gfcycle'
        }, {
            field: 'pmcycle',
            header: 'PM周期',
            headerAlign: 'center',
            align: 'center',
            displayField: 'pmcycle'
        }, {
            field: 'pmcode',
            header: 'PM编码',
            headerAlign: 'center',
            align: 'center',
            displayField: 'pmcode'
        }, {
            field: 'zxunit',
            header: '执行单位',
            headerAlign: 'center',
            align: 'center',
            displayField: 'zxunit'
        }, {
            field: 'remarks',
            header: '备注',
            headerAlign: 'center',
            displayField: 'remarks'
        },];

    var columns5 = [
        {
            type: 'checkcolumn'
        }, {
            field: 'tasklist',
            header: '维护项目',
            headerAlign: 'center',
            align: 'center',
            displayField: 'tasklist'
        }, {
            field: 'zytool',
            header: '项目来源',
            headerAlign: 'center',
            displayField: 'zytool',
            visible:false
        }, {
            field: 'checkprojectname',
            header: '检查项目名称',
            headerAlign: 'center',
            displayField: 'checkprojectname'
        }, {
            field: 'itemnumber',
            header: '项号',
            headerAlign: 'center',
            displayField: 'itemnumber',
            width:'40'
        }, {
            field: 'gnwz',
            header: '功能位置',
            headerAlign: 'center',
            displayField: 'gnwz'
        }, {
            field: 'sbname',
            header: '设备名称',
            headerAlign: 'center',
            align: 'center',
            displayField: 'sbname',
            width:'60'
        }, {
            field: 'gkc',
            header: '管壳侧',
            headerAlign: 'center',
            align: 'center',
            displayField: 'gkc'
        }, {
            field: 'jcbw',
            header: '检查部位',
            headerAlign: 'center',
            displayField: 'jcbw'
        }, {
            field: 'sbnumber',
            header: '设备图号',
            headerAlign: 'center',
            displayField: 'sbnumber'
        }, {
            field: 'jcmethod',
            header: '检查方法',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcmethod'
        }, {
            field: 'jjmode',
            header: '接近方式',
            headerAlign: 'center',
            displayField: 'jjmode'
        }, {
            field: 'jcprocedure',
            header: '检查程序',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcprocedure'
        }, {
            field: 'remarks',
            header: '备注',
            headerAlign: 'center',
            displayField: 'remarks'
        },];

    var columns6 = [
        {
            type: 'checkcolumn'
        }, {
            field: 'tasklist',
            header: '维护项目',
            headerAlign: 'center',
            align: 'center',
            displayField: 'tasklist'
        }, {
            field: 'checkprojectname',
            header: '检查项目名称',
            headerAlign: 'center',
            displayField: 'checkprojectname'
        }, {
            field: 'system',
            header: '项目来源',
            headerAlign: 'center',
            displayField: 'system',
            visible:false
        }, {
            field: 'itemnumber',
            header: '项号',
            headerAlign: 'center',
            displayField: 'itemnumber',
            width:'40'
        }, {
            field: 'sbname',
            header: '设备名称',
            headerAlign: 'center',
            align: 'center',
            displayField: 'sbname',
            width:'60'
        }, {
            field: 'sbnumber',
            header: '设备编号',
            headerAlign: 'center',
            align: 'center',
            displayField: 'sbnumber',
            width:'60'
        }, {
            field: 'columnsint',
            header: '列',
            headerAlign: 'center',
            align: 'center',
            displayField: 'columnsint',
            width:'20'
        }, {
            field: 'row',
            header: '行',
            headerAlign: 'center',
            align: 'center',
            displayField: 'row',
            width:'20'
        }, {
            field: 'checktype',
            header: '检查类型',
            headerAlign: 'center',
            align: 'center',
            displayField: 'checktype'
        }, {
            field: 'jcmethod',
            header: '检查方法',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcmethod'
        }, {
            field: 'jcprocedure',
            header: '检查程序',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcprocedure'
        }, {
            field: 'jccycle',
            header: ' 检查周期',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jccycle',
            width:'60'
        }, {
            field: 'remarks',
            header: '备注',
            headerAlign: 'center',
            displayField: 'remarks'
        },];
    var columns7 = [
        {
            type: 'checkcolumn'
        }, {
            field: 'tasklist',
            header: '维护项目',
            headerAlign: 'center',
            align: 'center',
            displayField: 'tasklist'
        }, {
            field: 'checkprojectname',
            header: '检查项目名称',
            headerAlign: 'center',
            displayField: 'checkprojectname'
        }, {
            field: 'itemnumber',
            header: '项号',
            headerAlign: 'center',
            displayField: 'itemnumber',
            width:'40'
        }, {
            field: 'equipment1',
            header: '设备',
            headerAlign: 'center',
            align: 'center',
            displayField: 'equipment'
        }, {
            field: 'hfnumber',
            header: '焊缝号',
            headerAlign: 'center',
            displayField: 'hfnumber',
            width:'50'
        }, {
            field: 'number',
            header: '数量',
            headerAlign: 'center',
            align: 'center',
            displayField: 'number',
            width:'40'
        }, {
            field: 'gxnumber',
            header: '管线号',
            headerAlign: 'center',
            displayField: 'gxnumber',
            width:'50'
        }, {
            field: 'ckt_dzhnumber',
            header: '参考图号/等轴图',
            headerAlign: 'center',
            displayField: 'ckt_dzhnumber'
        }, {
            field: 'roomnumber',
            header: '房间号',
            headerAlign: 'center',
            align: 'center',
            displayField: 'roomnumber',
            width:'50'
        }, {
            field: 'category',
            header: '类别',
            headerAlign: 'center',
            align: 'center',
            displayField: 'category',
            width:'40'
        }, {
            field: 'sbname',
            header: '设备名称',
            headerAlign: 'center',
            align: 'center',
            displayField: 'sbname',
            width:'60'
        }, {
            field: 'sbnumber',
            header: '设备编号',
            headerAlign: 'center',
            align: 'center',
            displayField: 'sbnumber',
            width:'60'
        }, {
            field: 'jcmethod',
            header: '检查方法',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcmethod'
        }, {
            field: 'jcprocedure',
            header: '检查程序',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jcprocedure'
        }, {
            field: 'systemdevice',
            header: '系统设备',
            headerAlign: 'center',
            align: 'center',
            displayField: 'systemdevice',
            width:'65'
        }, {
            field: 'gj',
            header: '管径',
            headerAlign: 'center',
            align: 'center',
            displayField: 'gj'
        }, {
            field: 'bw',
            header: '保温',
            headerAlign: 'center',
            align: 'center',
            displayField: 'bw'
        }, {
            field: 'cl',
            header: '材料',
            headerAlign: 'center',
            align: 'center',
            displayField: 'cl'
        }, {
            field: 'bracenumber',
            header: '支撑号',
            headerAlign: 'center',
            align: 'center',
            displayField: 'bracenumber'
        }, {
            field: 'jjmode',
            header: '接近方式',
            headerAlign: 'center',
            displayField: 'jjmode'
        }, {
            field: 'pmcycle',
            header: 'PM周期',
            headerAlign: 'center',
            align: 'center',
            displayField: 'pmcycle'
        }, {
            field: 'pmcode',
            header: 'PM编码',
            headerAlign: 'center',
            align: 'center',
            displayField: 'pmcode'
        }, {
            field: 'gnwz',
            header: '功能位置',
            headerAlign: 'center',
            displayField: 'gnwz'
        }, {
            field: 'jcbw',
            header: '检查部位',
            headerAlign: 'center',
            displayField: 'jcbw'
        }, {
            field: 'gfcycle',
            header: '规范周期',
            headerAlign: 'center',
            align: 'center',
            displayField: 'gfcycle'
        }, {
            field: 'sbname',
            header: '设备名称',
            headerAlign: 'center',
            align: 'center',
            displayField: 'sbname',
            width:'60'
        }, {
            field: 'gkc',
            header: '管壳侧',
            headerAlign: 'center',
            align: 'center',
            displayField: 'gkc'
        }, {
            field: 'zxunit',
            header: '执行单位',
            headerAlign: 'center',
            align: 'center',
            displayField: 'zxunit'
        }, {
            field: 'sbnumber',
            header: '设备图号',
            headerAlign: 'center',
            displayField: 'sbnumber'
        }, {
            field: 'sbnumber',
            header: '设备编号',
            headerAlign: 'center',
            displayField: 'sbnumber',
            width:'60'
        }, {
            field: 'columnsint',
            header: '列',
            headerAlign: 'center',
            align: 'center',
            displayField: 'columnsint',
            width:'20'
        }, {
            field: 'row',
            header: '行',
            headerAlign: 'center',
            align: 'center',
            displayField: 'row',
            width:'20'
        }, {
            field: 'checktype',
            header: '检查类型',
            headerAlign: 'center',
            align: 'center',
            displayField: 'checktype'
        }, {
            field: 'jccycl',
            header: ' 检查周期',
            headerAlign: 'center',
            align: 'center',
            displayField: 'jccycl',
            width:'60'
        }, {
            field: 'remarks',
            header: '备注',
            headerAlign: 'center',
            displayField: 'remarks'
        },

    ];

    /**
     * 选择检查类型
     * */
    function chooseType() {
        var type = nui.get("zyjcjh").getValue();
        var jdid = getCookie('jdid');
        var jzid = getCookie('jzid');
        var url = "";
        if ("HFGDZC" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getProtypeAndPartsData.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupport");
            columnsC = columns1;
            //grid.setColumns(columns1);
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
            $('#jjfs').css('display', 'none');
            $('.ll').css('display', 'none');
            $('.hh').css('display', 'none');
            $('.jclx').css('display', 'none');
        } else if ("HFBOSS" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.boss.biz.ext?baseid="
                + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue(
                "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.BossHead");
            columnsC = columns2;
// 				grid.setColumns(columns2);
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
            $('#jjfs').css('display', 'none');
            $('.ll').css('display', 'none');
            $('.hh').css('display', 'none');
            $('.jclx').css('display', 'none');
        } else if ("ZCZJ" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.zc.biz.ext?baseid="
                + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue(
                "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Support");
            columnsC = columns3;
            //grid.setColumns(columns3);
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
            $('#jjfs').css('display', 'none');
            $('.ll').css('display', 'none');
            $('.hh').css('display', 'none');
            $('.jclx').css('display', 'none');
            // this.(#zcColumn).visable="true";
        } else if ("FM" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.fanmen.biz.ext?baseid="
                + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue(
                "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Valve");
            columnsC = columns4;
            //grid.setColumns(columns4);
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
            $('#jjfs').css('display', 'none');
            $('.ll').css('display', 'none');
            $('.hh').css('display', 'none');
            $('.jclx').css('display', 'none');
        } else if ("RQRJHQ" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.rq.biz.ext?baseid="
                + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue(
                "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container");
            columnsC = columns5;
            //grid.setColumns(columns5);
            $('#ym1').css('display', 'block');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.rwqd').css('display', 'block');
            $('#jcmc').css('display', 'block');
            $('#jcmc1').css('display', 'block');
            $('.gnwz1').css('display', 'block');
            $('#jjfs').css('display', 'block');
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
            $('.jclx').css('display', 'none');
        } else if ("CRG" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.crg.biz.ext?baseid="
                + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue(
                "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube");
            columnsC = columns6;
            /* grid.setColumns(columns6); */
            $('#ym1').css('display', 'block');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.rwqd').css('display', 'block');
            $('#jcmc').css('display', 'block');
            $('#jcmc1').css('display', 'block');
            $('.ll').css('display', 'block');
            $('.hh').css('display', 'block');
            $('.sbth1').css('display', 'block');
            $('.jclx').css('display', 'block');

            $('#ym2').css('display', 'none');
            $('#ym5').css('display', 'none');
            $('#ym6').css('display', 'none');
            $('.zch').css('display', 'none');
            $('.gnwz1').css('display', 'none');
            $('.hfh').css('display', 'none');
            $('#jjfs').css('display', 'none');
            $('.ckth').css('display', 'none');
            $('#jcff1').css('display', 'none');
            $('#jcff2').css('display', 'none');
            $('.gxh').css('display', 'none');
        } else if ("" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.chaxun.biz.ext?baseid="
                + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue(
                "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.NuclearIslandOverhaulSearch");
            var column = "{columns:" + columns7 + "}";
            columnsC = columns7;


            // 				grid.setColumns(columns7);
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
                entity: $("input[name='criteria7/_entity']").val(),
                entityName: 'criteria',
                sfdel: true,
                matchFiedNUMBER: "number",
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
                sfdel: true,
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
                sfdel: true,
				jdInfo : 'base@' + getCookie('jdid'),
				jzInfo : 'crew@' + getCookie('jzid'),
				dicFied : "type@ZYJCJH"
            };
        } else if ("RQRJHQ" == type) {
            var data = {
                matchFied: "type,tasklist,itemnumber,gnwz,sbname,gkc,jcbw,sbnumber,jcmethod,jjmode,jcprocedure,zytool,remarks",
                wordVal: wordVal,
                entity: $("input[name='criteria5/_entity']").val(),
                entityName: 'criteria',
                sfdel: true,
				matchFiedNUMBER : "number",
				jdInfo : 'base@' + getCookie('jdid'),
				jzInfo : 'crew@' + getCookie('jzid'),
				dicFied : "type@ZYJCJH" 
            };
        } else if ("CRG" == type) {
            var data = {
                matchFied: "type,tasklist,itemnumber,system,sbname,sbnumber,checktype,jcmethod,jcprocedure,jccycle,remarks",
                wordVal: wordVal,
                entity: $("input[name='criteria3/_entity']").val(),
                entityName: 'criteria',
                sfdel: true,
                matchFiedNUMBER: "columnsint,row",
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
                matchFiedNUMBER: "columnsint,row",
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

    //编辑
    function edit() {
        var row = grid.getSelected();
        if (row) {
            var json = {};
            json.datas = row;
            json.entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit";
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
                        if ("HFGDZC" == type) {
                            urlStr = "/itmp/specialinspection/NuclearIslandOverhaul/PipelineSupport/PipelineSupportEdit.jsp";
                        } else if ("HFBOSS" == type) {
                            urlStr = "/itmp/specialinspection/NuclearIslandOverhaul/BossHead/BossHeadEdit.jsp";
                        } else if ("ZCZJ" == type) {
                            urlStr = "/itmp/specialinspection/NuclearIslandOverhaul/Support/SupportEdit.jsp";
                        } else if ("FM" == type) {
                            urlStr = "/itmp/specialinspection/NuclearIslandOverhaul/Valve/ValveEdit.jsp";
                        } else if ("RQRJHQ" == type) {
                            urlStr = "/itmp/specialinspection/NuclearIslandOverhaul/Container/ContainerEdit.jsp";
                        } else if ("CRG" == type) {
                            urlStr = "/itmp/specialinspection/NuclearIslandOverhaul/Tube/TubeEdit.jsp";
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
//                                     //
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

        //类型公共代码转换
        function gsRenderer(e) {
            return nui.getDictText("ZYJCJH", e.value);
        }

        function lbRenderer(e) {
            return nui.getDictText("LB", e.value);
        }

        var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";

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
                    urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.delgd.biz.ext";
                    json = nui.encode({tdggltzyjcjhgd: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                    processInstName = '专用检查计划_核岛_焊缝(管道/支撑)_大修执行条目_删除';
                    modelFlag = 13;
                } else if ("HFBOSS" == type) {
                    urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.delboss.biz.ext";
                    json = nui.encode({tdggltzyjcjhhdboss: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                    processInstName = '专用检查计划_核岛_焊缝(BOSS头)_大修执行条目_删除';
                    modelFlag = 14;
                } else if ("ZCZJ" == type) {
                    urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.delzc.biz.ext";
                    json = nui.encode({tdggltzyjcjhhdzc: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                    processInstName = '专用检查计划_核岛_支撑/支架_大修执行条目_删除';
                    modelFlag = 18;
                } else if ("FM" == type) {
                    urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.delfm.biz.ext";
                    json = nui.encode({tdggltzyjcjhhdfm: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                    processInstName = '专用检查计划_核岛_阀门_大修执行条目_删除';
                    modelFlag = 17;
                } else if ("RQRJHQ" == type) {
                    urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.delrq.biz.ext";
                    json = nui.encode({tdggltzyjcjhhdrq: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                    processInstName = '专用检查计划_核岛_容器_大修执行条目_删除';
                    modelFlag = 15;
                } else if ("CRG" == type) {
                    urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.delcrg.biz.ext";
                    json = nui.encode({tdggltzyjcjhhdcrg: rows,token:"<%=TokenUtil.getTokenString(request.getSession())%>"});
                    processInstName = '专用检查计划_核岛_传热管_大修执行条目_删除';
                    modelFlag = 16;
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
                    json.entityName = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit";
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
                                                'entityType': 'com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit',
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
            //nui.get("add").enable();
        }
		//搜索
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
                field.header = 'C' + i;
                field.width = 34;
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
                        queryJ += '"criteria/_or[1]/_expr[' + index
                            + ']/_op":"like"';
                        queryJ += ',"criteria/_or[1]/_expr[' + index + ']/'
                            + combo1.toLowerCase() + '":"' + lcValue + ',"';
                        index++;
                        queryJ += ",";
                        queryJ += '"criteria/_or[1]/_expr[' + index
                            + ']/_op":"="';
                        queryJ += ',"criteria/_or[1]/_expr[' + index + ']/'
                            + combo1.toLowerCase() + '":"' + lcValue + '"';
                        index++;
                    } else if (lcValue == 'S') {
                        queryJ += '"criteria/_or[1]/_expr[' + index
                            + ']/_op":"like"';
                        queryJ += ',"criteria/_or[1]/_expr[' + index + ']/'
                            + combo1.toLowerCase() + '":"' + lcValue + ',"';
                        index++;
                        queryJ += ",";

                        queryJ += '"criteria/_or[1]/_expr[' + index
                            + ']/_op":"like"';
                        queryJ += ',"criteria/_or[1]/_expr[' + index + ']/'
                            + combo1.toLowerCase() + '":",' + lcValue
                            + ',"';
                        index++;
                        queryJ += ",";

                        queryJ += '"criteria/_or[1]/_expr[' + index
                            + ']/_op":"="';
                        queryJ += ',"criteria/_or[1]/_expr[' + index + ']/'
                            + combo1.toLowerCase() + '":"' + lcValue + '"';
                        index++;
                    } else {
                        queryJ += '"criteria/_or[1]/_expr[' + index
                            + ']/_op":"like"';
                        queryJ += ',"criteria/_or[1]/_expr[' + index + ']/'
                            + combo1.toLowerCase() + '":"' + lcValue + '"';
                        index++;
                    }
                }
            }

            var form = new nui.Form("#form1");
            var json = form.getData(false, false);
            var jsonstr = nui.encode(json);
            var str = jsonstr.substr(0, jsonstr.length - 1);
            if(zt != '')str += ","+zt;
            if (queryJ != '')str += "," + queryJ;
            str = nui.decode(str + "}");
            grid.setColumns(clo);
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
                .load("com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.chaxun.biz.ext?baseid="
                    + jdid + "&crewid=" + jzid);
            nui.get('_entity').setValue(
                "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.NuclearIslandOverhaulSearch");
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

    
</style>
</body>
</html>
