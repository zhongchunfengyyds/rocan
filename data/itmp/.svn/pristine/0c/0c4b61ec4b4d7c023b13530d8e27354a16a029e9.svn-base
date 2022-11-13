<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<head>
    <title>
        常规岛查询
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
    <script type="text/javascript" src="<%= request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>
</head>
<style>
    ul, li {
        list-style: none;
    }

    .form-group ul {
        float: left;
        width:100%;
    }

    ul li {
        float: left;
        margin:3px 0px;
        width:12%;
        text-align: right;
    }

    #ym {
        overflow: hidden;
        margin-bottom:0px;
    }
   		.form-group ul li{
   		width:25%;
   		}
   		.row {
    margin-left: 0px;
    margin-right:0px;
}
</style>
<body style="width:98%;height:90%;margin:0 auto;">

<div class="bs-docs-section">
    <div id="form1" class="nui-form" align="center" style="height:100%">
        <!-- 数据实体的名称 -->

        <input class="nui-hidden" name="criteria/_entity" id="_entity" value="com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.ConventionalIslandSearch">
        <!-- 排序字段 -->
        <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="orderno">
        <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
		
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
						<td style="width: 30%;" class="form_label">
							C<input class="nui-spinner" id="start" maxValue="60" minValue="1" value="1"
                                    style="width: 60px" name=""/>-C<input class="nui-spinner" id="end" maxValue="60"
                                                                          minValue="1" value="60" style="width: 60px"
                                                                          name=""/>
                            <a class="nui-button"  id="zq" onclick="searchs()">
                                修改显示周期
                            </a>
                            
						</td>
						<td style="width: 5%;"></td>
						
					</tr>
				</table>
				 <div class="search-container folding-menu" style="overflow: hidden;display:none;position:relative;"
                 id="queryForm1">
                <div class="row">
                    <!-- <div class="form-group"> -->
                    <div>
                        <div>


                            <ul id="ym" style="padding-left:0px!important;margin-bottom:0px!important;">

                                <li id="cxt" style="display: none">
                                    系统:

                                    <input class="nui-textbox" name="criteria/_expr[2]/xt"/>
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
                                    轮次&状态:</li><li>

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
                                    检查部位:</li><li class="cjcbw" style="display: none">

                                    <input class="nui-textbox" name="criteria/_expr[8]/jcbw"/>
                                    <input class="nui-hidden" name="criteria/_expr[8]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[8]/_likeRule" value="all">
                                </li>
                            <!--</ul>
                            <ul>-->
                                <li class="czysb" style="display: none">
                                    主要设备:</li> <li class="czysb" style="display: none">

                                    <input class="nui-textbox" name="criteria/_expr[9]/zysb"/>
                                    <input class="nui-hidden" name="criteria/_expr[9]/_op" value="like">
                                    <input class="nui-hidden" name="criteria/_expr[9]/_likeRule" value="all">
                                </li>

                                <li class="cdzth" style="display: none">
                                    等轴图号:</li> <li class="cdzth" style="display: none">

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

                        <li  name="ITMP_btnAddOne" onclick="add()">单条增加</li>
                        <li  name="ITMP_btnAddBatch" onclick="batchAdd()">批量增加</li>
                    </ul>

                    <a id="update" class="nui-button showCellTooltip btn btn-default btn-xs" onclick="edit()" name="ITMP_btnEdit">
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
                    <a class="nui-button btn btn-default btn-xs" onclick="recycle()"  name="ITMP_btnRec">
                         回收站
                    </a>
                    <div id="jcjh" style="float:right;margin-right: 20px">
                   		 检查计划类型:
                        <input zzCombo="CGDRCCombo" name="criteria/_expr[1]/type" vtype="maxLength:128"
                               class="nui-combobox nui-form-input" onvaluechanged="chooseType()" id="CGDRC"
                               dataField="dictObject"
                               url="com.cgn.itmp.basecommon.DictionaryOperation.getDicNamtByid.biz.ext?dictTypeid=CGDRC"
                               textField="dictName" valueField="dictID" emptyText="请选择" required="false" allowInput="true"
                               showNullItem="true" nullItemText="请选择..."/>
                        <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                        <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
                    </div>

                </td>
                <!--  <td class="form_label col-sm-1" style="text-align: center;">
                     检查计划类型:
               </td> -->

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
                         dataField="tdggltzyjcjhtys"
                         class="nui-datagrid"
                         style="width:100%;height:100%;"
                         url="com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.queryTDgglTzyjcjhtys.biz.ext"
                         pageSize="20" sizeList="[20,100,1000]"
                         showPageInfo="true"
                         multiSelect="true"
                         onselectionchanged="selectionChanged"
                         allowSortColumn="false" allowAlternating="true">
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
                            <div field="xt" headerAlign="center" allowSort="true" width="15">
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
                            <div field="fac" headerAlign="center" allowSort="true">
                                FAC
                            </div>
                            <div field="jcsl" headerAlign="center" allowSort="true">
                                测厚数量
                            </div>
                            <div field="utbw" headerAlign="center" allowSort="true">
                                UT 部位
                            </div>
                            <div field="utsl" headerAlign="center" allowSort="true">
                                UT数量
                            </div>
                            <div field="bz" headerAlign="center" allowSort="true">
                                备注
                            </div>
                            <div field="c1" name="c1" headerAlign="center" allowSort="true" Align="center" width="34">
                                C1
                            </div>
                            <div field="c2" name="c2" headerAlign="center" allowSort="true" Align="center" width="34">
                                C2
                            </div>
                            <div field="c3" name="c3" headerAlign="center" allowSort="true" Align="center" width="34">
                                C3
                            </div>
                            <div field="c4" name="c4" headerAlign="center" allowSort="true" Align="center" width="34">
                                C4
                            </div>
                            <div field="c5" name="c5" headerAlign="center" allowSort="true" Align="center" width="34">
                                C5
                            </div>
                            <div field="c6" name="c6" headerAlign="center" allowSort="true" Align="center" width="34">
                                C6
                            </div>
                            <div field="c7" name="c7" headerAlign="center" allowSort="true" Align="center" width="34">
                                C7
                            </div>
                            <div field="c8" name="c8" headerAlign="center" allowSort="true" Align="center" width="34">
                                C8
                            </div>
                            <div field="c9" name="c9" headerAlign="center" allowSort="true" Align="center" width="34">
                                C9
                            </div>
                            <div field="c10" name="c10" headerAlign="center" allowSort="true" Align="center" width="34">
                                C10
                            </div>
                            <div field="c11" name="c11" headerAlign="center" allowSort="true" Align="center" width="34">
                                C11
                            </div>
                            <div field="c12" name="c12" headerAlign="center" allowSort="true" Align="center" width="34">
                                C12
                            </div>
                            <div field="c13" name="c13" headerAlign="center" allowSort="true" Align="center" width="34">
                                C13
                            </div>
                            <div field="c14" name="c14" headerAlign="center" allowSort="true" Align="center" width="34">
                                C14
                            </div>
                            <div field="c15" name="c15" headerAlign="center" allowSort="true" Align="center" width="34">
                                C15
                            </div>
                            <div field="c16" name="c16" headerAlign="center" allowSort="true" Align="center" width="34">
                                C16
                            </div>
                            <div field="c17" name="c17" headerAlign="center" allowSort="true" Align="center" width="34">
                                C17
                            </div>
                            <div field="c18" name="c18" headerAlign="center" allowSort="true" Align="center" width="34">
                                C18
                            </div>
                            <div field="c19" name="c19" headerAlign="center" allowSort="true" Align="center" width="34">
                                C19
                            </div>
                            <div field="c20" name="c20" headerAlign="center" allowSort="true" Align="center" width="34">
                                C20
                            </div>
                            <div field="c21" name="c21" headerAlign="center" allowSort="true" Align="center" width="34">
                                C21
                            </div>
                            <div field="c22" name="c22" headerAlign="center" allowSort="true" Align="center" width="34">
                                C22
                            </div>
                            <div field="c23" name="c23" headerAlign="center" allowSort="true" Align="center" width="34">
                                C23
                            </div>
                            <div field="c24" name="c24" headerAlign="center" allowSort="true" Align="center" width="34">
                                C24
                            </div>
                            <div field="c25" name="c25" headerAlign="center" allowSort="true" Align="center" width="34">
                                C25
                            </div>
                            <div field="c26" name="c26" headerAlign="center" allowSort="true" Align="center" width="34">
                                C26
                            </div>
                            <div field="c27" name="c27" headerAlign="center" allowSort="true" Align="center" width="34">
                                C27
                            </div>
                            <div field="c28" name="c28" headerAlign="center" allowSort="true" Align="center" width="34">
                                C28
                            </div>
                            <div field="c29" name="c29" headerAlign="center" allowSort="true" Align="center" width="34">
                                C29
                            </div>

                            <div field="c30" name="c30" headerAlign="center" allowSort="true" Align="center" width="34">
                                C30
                            </div>
                            <div field="c31" name="c31" headerAlign="center" allowSort="true" Align="center" width="34">
                                C31
                            </div>
                            <div field="c32" name="c32" headerAlign="center" allowSort="true" Align="center" width="34">
                                C32
                            </div>
                            <div field="c33" name="c33" headerAlign="center" allowSort="true" Align="center" width="34">
                                C33
                            </div>
                            <div field="c34" name="c34" headerAlign="center" allowSort="true" Align="center" width="34">
                                C34
                            </div>
                            <div field="c35" name="c35" headerAlign="center" allowSort="true" Align="center" width="34">
                                C35
                            </div>
                            <div field="c36" name="c36" headerAlign="center" allowSort="true" Align="center" width="34">
                                C36
                            </div>
                            <div field="c37" name="c37" headerAlign="center" allowSort="true" Align="center" width="34">
                                C37
                            </div>
                            <div field="c38" name="c38" headerAlign="center" allowSort="true" Align="center" width="34">
                                C38
                            </div>
                            <div field="c39" name="c39" headerAlign="center" allowSort="true" Align="center" width="34">
                                C39
                            </div>
                            <div field="c40" name="c40" headerAlign="center" allowSort="true" Align="center" width="34">
                                C40
                            </div>
                            <div field="c41" name="c41" headerAlign="center" allowSort="true" Align="center" width="34">
                                C41
                            </div>
                            <div field="c42" name="c42" headerAlign="center" allowSort="true" Align="center" width="34">
                                C42
                            </div>
                            <div field="c43" name="c43" headerAlign="center" allowSort="true" Align="center" width="34">
                                C43
                            </div>
                            <div field="c44" name="c44" headerAlign="center" allowSort="true" Align="center" width="34">
                                C44
                            </div>
                            <div field="c45" name="c45" headerAlign="center" allowSort="true" Align="center" width="34">
                                C45
                            </div>
                            <div field="c46" name="c46" headerAlign="center" allowSort="true" Align="center" width="34">
                                C46
                            </div>
                            <div field="c47" name="c47" headerAlign="center" allowSort="true" Align="center" width="34">
                                C47
                            </div>
                            <div field="c48" name="c48" headerAlign="center" allowSort="true" Align="center" width="34">
                                C48
                            </div>
                            <div field="c49" name="c49" headerAlign="center" allowSort="true" Align="center" width="34">
                                C49
                            </div>
                            <div field="c50" name="c50" headerAlign="center" allowSort="true" Align="center" width="34">
                                C50
                            </div>
                            <div field="c51" name="c51" headerAlign="center" allowSort="true" Align="center" width="34">
                                C51
                            </div>
                            <div field="c52" name="c52" headerAlign="center" allowSort="true" Align="center" width="34">
                                C52
                            </div>
                            <div field="c53" name="c53" headerAlign="center" allowSort="true" Align="center" width="34">
                                C53
                            </div>
                            <div field="c54" name="c54" headerAlign="center" allowSort="true" Align="center" width="34">
                                C54
                            </div>
                            <div field="c55" name="c55" headerAlign="center" allowSort="true" Align="center" width="34">
                                C55
                            </div>
                            <div field="c56" name="c56" headerAlign="center" allowSort="true" Align="center" width="34">
                                C56
                            </div>
                            <div field="c57" name="c57" headerAlign="center" allowSort="true" Align="center" width="34">
                                C57
                            </div>
                            <div field="c58" name="c58" headerAlign="center" allowSort="true" Align="center" width="34">
                                C58
                            </div>
                            <div field="c59" name="c59" headerAlign="center" allowSort="true" Align="center" width="34">
                                C59
                            </div>
                            <div field="c60" name="c60" headerAlign="center" allowSort="true" Align="center" width="34">
                                C60
                            </div>

                            <div field="creator" headerAlign="center" allowSort="true" visible="false">
                                发起人
                            </div>
                            <div field="datetime" headerAlign="center" allowSort="true" visible="false"
                                 dateFormat="yyyy-MM-dd HH:mm:ss">
                                发起时间
                            </div>
                            <div field="reason" headerAlign="center" allowSort="true" visible="false">
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

    nui.get("update").disable();
    //nui.get("add").disable();
    var tree = nui.get("tree1");
    var index = 13;
    var columnsC = [];

    var jdid = getCookie('jdid');

    nui.get('con_jdid').setValue(jdid);
    var jzid = getCookie('jzid');
    tree.setAjaxType("POST");
    tree.load("com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.chaxun.biz.ext?baseid=" + jdid + "&crewid=" + jzid);
    nui.get('con_jzid').setValue(jzid);
    var grid = nui.get("datagrid1");


    var start = 1;
    var end = 60;
    var urlStr = "com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.getBaseCircle.biz.ext";
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
                    columnsC = columns2;
                }
                var clo = JSON.parse(JSON.stringify(columnsC));
                for (var i = start; i <= end; i++) {
                    var field = {};
                    field.field = 'c' + i;
                    field.displayField = 'c' + i;
                    field.header = 'C' + i;
                    field.width = 34;
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
    for (var i = 1; i <= 60; i++) {
        countrys.push({id: 'c' + i, text: 'C' + i, tag: 'c' + i});
    }
    var combo = nui.get("combo1");
    combo.setData(countrys);
	var checkprojectname="";
	var xmly="";
    tree.on("nodeselect", function (e) {
        var type = nui.get("CGDRC").getValue();
		var parentid = e.node.parentid;
		nui.get("checkprojectname").setValue(e.node.name);
        xmly ="";
        if(parentid == '规范法定项目'){
        	xmly = "GFFD";
        }else if(parentid == '规范非法定项目'){
        	xmly = "GFFFD";
        }
        if ("RCTY" == type) {
            if (e.isLeaf) {
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.Currency",
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
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.PressurePipe",
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
                grid.load({
                    "criteria/_entity": "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.ConventionalIslandSearch",
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


    var columns = [

        {type: 'checkcolumn'},
        {field: 'rwqd', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'rwqd'},
        {
            field: 'checkprojectname',
            header: '检查项目名称',
            headerAlign: 'center',
            align: 'center',
            displayField: 'checkprojectname'
        },
        {field: 'gl', header: '管类', headerAlign: 'center', align: 'center', displayField: 'gl',width:'40'},
        {field: 'xt', header: '系统', visible:false,headerAlign: 'center', align: 'center', displayField: 'xt',width:'40'},
        {field: 'gxh', header: '管线号', headerAlign: 'center', align: 'center', displayField: 'gxh',width:'50'},
        {field: 'zysb', header: '主要设备', headerAlign: 'center', align: 'center', displayField: 'zysb'},
        {field: 'cz', header: '材质', headerAlign: 'center', align: 'center', displayField: 'cz'},
        {field: 'gczj', header: '公称直径(mm)', headerAlign: 'center', align: 'center', displayField: 'gczj',width:'65'},
        {field: 'wj', header: '外径(mm)', headerAlign: 'center', align: 'center', displayField: 'wj',width:'40'},
        {field: 'mybh', header: '名义壁厚(mm)', headerAlign: 'center', align: 'center', displayField: 'mybh',width:'95'},
        {field: 'jk', header: '进口', headerAlign: 'center', align: 'center', displayField: 'jk'},
        {field: 'ck', header: '出口', headerAlign: 'center', align: 'center', displayField: 'ck'},
        {field: 'lct', header: '流程图/等轴图号', headerAlign: 'center', align: 'center', displayField: 'lct'},
        {field: 'jcbw', header: '检查部位/检查内容', headerAlign: 'center', align: 'center', displayField: 'jcbw'},
        {field: 'bz', header: '备注', headerAlign: 'center', align: 'center', displayField: 'bz'}
    ];

    var columns1 = [

        {type: 'checkcolumn'},
        {field: 'rwqd', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'rwqd'},
        {
            field: 'checkprojectname',
            header: '检查项目名称',
            headerAlign: 'center',
            align: 'center',
            displayField: 'checkprojectname'
        },
        {field: 'gl', header: '管类', headerAlign: 'center', align: 'center', displayField: 'gl',width:'40'},
        {field: 'xt', header: '系统', visible:false,headerAlign: 'center', align: 'center', displayField: 'xt',width:'40'},
        {field: 'gxh', header: '管线号', headerAlign: 'center', align: 'center', displayField: 'gxh',width:'50'},
        {field: 'cz', header: '材质', headerAlign: 'center', align: 'center', displayField: 'cz'},
        {field: 'lct', header: '流程图/等轴图号', headerAlign: 'center', align: 'center', displayField: 'lct'},
        {
            field: 'fac',
            header: 'FAC',
            headerAlign: 'center',
            align: 'center',
            displayField: 'fac',
            renderer: 'facRenderer()'
        },
        {field: 'jcbw', header: '测厚部位', headerAlign: 'center', align: 'center', displayField: 'jcbw'},
        {field: 'jcsl', header: '测厚数量', headerAlign: 'center', align: 'center', displayField: 'jcsl'},
        {field: 'utbw', header: 'UT 部位', headerAlign: 'center', align: 'center', displayField: 'utbw'},
        {field: 'utsl', header: 'UT数量', headerAlign: 'center', align: 'center', displayField: 'utsl',width:'60'},
        {field: 'bz', header: '备注', headerAlign: 'center', align: 'center', displayField: 'bz'}
    ];
    var columns2 = [

        {type: 'checkcolumn'},
        {field: 'rwqd', header: '维护项目', headerAlign: 'center', align: 'center', displayField: 'rwqd'},
        {
            field: 'checkprojectname',
            header: '检查项目名称',
            headerAlign: 'center',
            align: 'center',
            displayField: 'checkprojectname'
        },
        {field: 'gl', header: '管类', headerAlign: 'center', align: 'center', displayField: 'gl',width:'40'},
        {field: 'xt', header: '系统', headerAlign: 'center', visible:false,align: 'center', displayField: 'xt',width:'40'},
        {field: 'gxh', header: '管线号', headerAlign: 'center', align: 'center', displayField: 'gxh',width:'50'},
        {field: 'zysb', header: '主要设备', headerAlign: 'center', align: 'center', displayField: 'zysb'},
        {field: 'cz', header: '材质', headerAlign: 'center', align: 'center', displayField: 'cz'},
        {field: 'gczj', header: '公称直径(mm)', headerAlign: 'center', align: 'center', displayField: 'gczj',width:'65'},
        {field: 'wj', header: '外径(mm)', headerAlign: 'center', align: 'center', displayField: 'wj',width:'40'},
        {field: 'mybh', header: '名义壁厚(mm)', headerAlign: 'center', align: 'center', displayField: 'mybh',width:'95'},
        {field: 'jk', header: '进口', headerAlign: 'center', align: 'center', displayField: 'jk'},
        {field: 'ck', header: '出口', headerAlign: 'center', align: 'center', displayField: 'ck'},
        {field: 'lct', header: '流程图/等轴图号', headerAlign: 'center', align: 'center', displayField: 'lct'},
        {field: 'jcbw', header: '检查部位/检查内容', headerAlign: 'center', align: 'center', displayField: 'jcbw'},
        {
            field: 'fac',
            header: 'FAC',
            headerAlign: 'center',
            align: 'center',
            displayField: 'fac',
            renderer: 'facRenderer()'
        },
        {field: 'jcsl', header: '测厚数量', headerAlign: 'center', align: 'center', displayField: 'jcsl'},
        {field: 'utbw', header: 'UT 部位', headerAlign: 'center', align: 'center', displayField: 'utbw'},
        {field: 'utsl', header: 'UT数量', headerAlign: 'center', align: 'center', displayField: 'utsl',width:'60'},
        {field: 'bz', header: '备注', headerAlign: 'center', align: 'center', displayField: 'bz'}
    ];

    //关键字
    function btnQuery() {
        var type = nui.get("CGDRC").getValue();
        var wordVal = $("#cond").val();
        if (wordVal == '') {
            searchs();
            return;
        }
        if ("RCTY" == type) {
            var data = {
                matchFied: "type,rwqd,gl,xt,gxh,zysb,cz,gczj,wj,mybh,jk,ck,lct,jcbw,bz",
                wordVal: $("#cond").val(),
                entity: $("input[name='criteria/_entity']").val(),
                entityName: 'criteria',
                sfdel: true ,
            matchFiedNUMBER: "",
            jdInfo : 'jd@' + getCookie('jdid'),
			jdInfo : 'jz@' + getCookie('jzid'),
            dicFied: "type@ZYJCJHCGD，fac@FAC" 
            };
        } else if ("RCGD" == type) {
            var data = {
                matchFied: "type,rwqd,gl,xt,gxh,cz,lct,jcbw,jcsl,utbw,utsl,bz",
                wordVal: $("#cond").val(),
                entity: $("input[name='criteria/_entity']").val(),
                entityName: 'criteria',
                jdInfo : 'jd@' + getCookie('jdid'),
				jdInfo : 'jz@' + getCookie('jzid'),
				dicFied: "type@ZYJCJHCGD，fac@FAC" ,
                sfdel: true
            };
        } else {
            var data = {
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

    //计划更新
    function planupdate(flag) {
        var jdid = getCookie('jdid');
        var type = jdid != "82" ? "RCTY" : nui.get('CGDRC').getValue();
        if ("RCTY" == type) {
            var processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.dxCgdTyPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.dxCgdTyPlanCancel';
            nui.open({
                showMaxButton: true,
                url: encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=rwqd&planFlag=" + flag + "&modelFlag=" + 27 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.Currency&processName=专用检查计划_常规岛及BOP大修执行条目_通用&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.OverhaulEdit&processDef=" + processDef),
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
            var processDef = flag == 1 ? 'com.cgn.itmp.outlineandplan.specialinspection.dxCgdYlgdPlanComplete' : 'com.cgn.itmp.outlineandplan.specialinspection.dxCgdYlgdPlanCancel';
            nui.open({
                showMaxButton: true,
                url: encodeURI("/itmp/basecommon/workFolw/planUpdate.jsp?fieldName=uuid&reason=维护项目&relFieldName=relid&tsName=rwqd&planFlag=" + flag + "&modelFlag=" + 28 + "&entity=com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.PressurePipe&processName=专用检查计划_常规岛及BOP_大修执行条目_压力管道&middleEntity=com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.OverhaulEdit&processDef=" + processDef),
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
                            tempFileName: "DXTYImport.xlsx",
                            type: "RCTY",
                            tempLoadName: "通用专用检查计划大修执行条目导入模板",
                            entitfName: "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.Currency"
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
                            tempFileName: "DXYLGDImport.xlsx",
                            type: "RCGD",
                            tempLoadName: "压力管道专用检查计划大修执行条目导入模板",
                            entitfName: "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.PressurePipe"
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
                        tempFileName: "DXTYImport.xlsx",
                        tempLoadName: "通用专用检查计划大修执行条目导入模板",
                        type: "RCTY",
                        entitfName: "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.Currency"
                    };//传入页面的json数据
                    iframe.contentWindow.SetData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                    
                }
            });
        }
    }

    function chooseType() {
        
        var type = nui.get("CGDRC").getValue();
        var url = "";
        var jdid = getCookie('jdid');
        var jzid = getCookie('jzid');
        if ("RCTY" == type && jdid != '' && jzid != '') {
            
            url = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.cgdty.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue("com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.Currency");
            columnsC = columns;
            // grid.setColumns(columns);
            $('.crwqd').css('display', 'block');
            $('.czysb').css('display', 'block');
            $('.cjcbw').css('display', 'block');
            $('.cbz').css('display', 'block');
            $('.cdzth').css('display', 'none');
        } else if ("RCGD" == type && jdid != '' && jzid != '') {
            nui.get("_entity").setValue("com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.PressurePipe");
            url = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.cgdylgd.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            columnsC = columns1;
            // grid.setColumns(columns1);
            $('.crwqd').css('display', 'block');
            $('.cdzth').css('display', 'block');
            $('.cjcbw').css('display', 'none');
            $('.cbz').css('display', 'block');
            $('.czysb').css('display', 'none');

        } else if ("" == type && jdid != '' && jzid != '') {
            url = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.chaxun.biz.ext?baseid=" + jdid + "&crewid=" + jzid;
            nui.get("_entity").setValue("");
            columnsC = columns2;
            //grid.setColumns(columns2);
            $('.crwqd').css('display', 'none');
            $('.cdzth').css('display', 'none');
            $('.cjcbw').css('display', 'none');
            $('.cbz').css('display', 'none');
            $('.czysb').css('display', 'none');

        }
       nui.get('tree1').setAjaxType("POST");
        nui.get("tree1").load(url);
        searchs();
    }

    $(function () {
        $('#update').attr('title', "请选择需修改条目");
        $('#popup').attr('title', "大修结束后请及时进行计划更新");
        $('#zq').attr('title', "请修改要显示的周期范围");
        var tree = nui.get("tree1");
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
                        url: "/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/addCurrencyForm.jsp",
                        title: "新增大修通用记录",
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
                        url: "/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/addConduitForm.jsp",
                        title: "新增大修压力管道记录",
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

                /*   nui.open({showMaxButton : true,
                     url: "/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/addTypeChoose.jsp",
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
                    url: "/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/addCurrencyForm.jsp",
                    title: "新增大修通用记录",
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

    /**
     * 导出
     */
    function output() {
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        var jdid = getCookie('jdid');
        var type = jdid != 82 ? "RCTY" : nui.get('CGDRC').getValue();
        
        var filterField = "processStatus,uuid,isdelete,creator,datetime,reason,orderno,type";
        for (var i = 1; i < parseInt(start); i++) {
            if (i <= start) filterField += ",";
            var clc = "c" + i;
            filterField += clc;
        }
        for (var k = parseInt(end) + 1 /* + 8 */; k <= 60; k++) {
            if (k <= 60) filterField += ",";
            var clc = "c" + k;
            filterField += clc;
        }
        var entityName = null ;
        var query = null;
        var queryIndex = null;
        var expTitle = null;
        var filterFields = filterField.split(",");
        var dicFieds = null;
        var defaultCheck = null;
        if("" == type || null == type || undefined == type){
            nui.alert("请选择专用检查计划类型");
            return;
        } else if ("RCTY" == type) {
             entityName = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.Currency" ;
             query = ['xt', 'isdelete', 'jd', 'jz', 'rwqd', 'jcbw', 'zysb', 'bz'];
             queryIndex = [2, 4, 5, 6, 7, 8, 9, 11];
             expTitle = "专用检查计划常规岛通用";
             dicFieds = "type@CGDRC,xt@PROTYPE";
             defaultCheck = ["jd,jz,type,checkprojectname,rwqd,gl,xt,gxh,zysb,cz,gczj,wj,mybh,jk,ck,lct,jcbw,bz"];
        } else if("RCGD" == type){
            entityName = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.PressurePipe" ;
            query = ['xt', 'isdelete', 'jd', 'jz', 'rwqd', 'lct', 'bz'];
            queryIndex = [2, 4, 5, 6, 7, 10, 11];
            expTitle = "专用检查计划常规岛压力管道";
            dicFieds = "type@CGDRC,fac@FAC,xt@PROTYPE";
            defaultCheck = ["jd,jz,type,checkprojectname,rwqd,gl,xt,gxh,zysb,cz,gczj,wj,mybh,jk,ck,lct,jcbw,bz"];
        }
        nui.open({
            showMaxButton: true,
            url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
            title: "导出数据", width: 420, height: 320,
            onload: function () {//弹出页面加载完成
                var iframe = this.getIFrameEl();
                var data = {
                    entityName: entityName,
                    queryParam: json,								    //查询数据
                    queryKey: 'criteria',                              //查询实体名
                    query: query,  //按顺序放置
                    queryIndex: queryIndex,
                    expTitle: expTitle,
                    filterField: filterFields,  //要过滤的字段，多字段用,隔开
                    dicFieds: dicFieds,
                    defaultCheck: defaultCheck,
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


	//或首战
    function recycle() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/recycleBin.jsp",
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
            json.entityName = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.OverhaulEdit";
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
                        var urlStr = "";
//                         var jdid = getCookie('jdid');
//                         var type = jdid == "82" ? "RCTY" : nui.get('CGDRC').getValue();
                        if ("RCTY" == row.type) {
                            urlStr = "/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/editCurrencyForm.jsp";
                        } else if ("RCGD" == row.type) {
                            urlStr = "/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/editConduitForm.jsp";
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

	//履历
    function openrecord() {
        nui.open({
            showMaxButton: true,
            url: "/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/changeHistory.jsp",
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

    var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
	
	//删除
    function remove() {
        var rows = grid.getSelecteds();
        var jdid = getCookie('jdid');
        var type = jdid != "82" ? "RCTY" : nui.get('CGDRC').getValue();
        if (rows.length > 0) {
            var json = {};
            json.datas = rows;
            json.entityName = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.OverhaulEdit";
            json.fieldName = "uuid";
            json.relFieldName = "relid";
            json.reason = "维护项目";
            json.tsName = "rwqd"; 
            json.width = 40;
            json.token="<%=TokenUtil.getTokenString(request.getSession())%>"
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
                            urlStr = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.delty.biz.ext";
                            json =  nui.encode({tdggltzyjcjhty: rows});
                            processInstName = '专用检查计划_常规岛及BOP_大修执行条目_通用删除';
                            modelFlag = 27;
                        } else if("RCGD" == type){
                            urlStr = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.delylgd.biz.ext";
                            json = nui.encode({tcgncgdylgd: rows});
                            processInstName = '专用检查计划_常规岛及BOP_大修执行条目_压力管道删除';
                            modelFlag = 28;
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
                                            'entityType': 'com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.OverhaulEdit',
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
            field.header = 'C' + i;
            field.width = 34;
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
        nui.get('CGDRC').setValue('');
        nui.get('checkprojectname').setValue(checkprojectname);
        nui.get('tree1')
            .load("com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.chaxun.biz.ext?baseid=" + jdid + "&crewid=" + jzid);
        nui.get('_entity').setValue(
            "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.ConventionalIslandSearch");
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
</body>
</html>
