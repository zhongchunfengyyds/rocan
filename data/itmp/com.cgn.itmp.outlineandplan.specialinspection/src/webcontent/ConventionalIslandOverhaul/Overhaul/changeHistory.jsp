<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@page import="javax.servlet.ServletOutputStream"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="com.eos.web.taglib.util.*"%>
<%@ page import="com.eos.data.datacontext.UserObject"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%
	//获取标签中使用的国际化资源信息
	//	Object root = com.eos.web.taglib.util.XpathUtil.getDataContextRoot("request", pageContext);
	//	String jsondata = (String) XpathUtil.getObjectByXpath(root,"jsondata");
	String detailed = request.getParameter("detailed");
	UserObject user = (UserObject) request.getSession().getAttribute(
			"userObject");
	String userName = user.getUserRealName();
	String userRoleCodeList = user.getAttributes().get("roleCodeList")
			.toString();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-02-14 14:23:23
- Description:
    --%>
<head>
    <title>
        TDgglZyjcjhcgd查询
    </title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
    </script>
    <script type="text/javascript" src="/itmp/common/nui/locale/zh_CN.js"></script>
    <%--         <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/> --%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css"/>
</head>
<style>
    .mini-panel-body {
        height: 37px;
    }
</style>
<body style="width:98%;height:95%;margin:0 auto;">
<div class="nui-panel" title="查询" style="width:100%;height: 25%;" showToolbar="false" showFooter="true">
    <div id="form1" class="nui-form" align="center" style="height:100%">
        <!-- 数据实体的名称 -->
        <input class="nui-hidden" name="criteria/_entity"
               value="com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.zyjccgddx">
        <!-- 排序字段 -->
        <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="datetime">
        <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
        <table id="table1" class="table">
            <tr>

                <td class="form_label">
                    发起人:
                </td>
                <td>
                    <input class="nui-textbox" name="criteria/_expr[1]/creator"/>
                    <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                </td>
                <td class="form_label">
                    文件修改原因:
                </td>
                <td>


                    <input class="nui-textbox" name="criteria/_expr[2]/reason"/>
                    <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                </td>

                <td class="form_label">
                    修改内容:
                </td>
                <td>


                    <input class="nui-textbox" name="criteria/_expr[3]/content"/>
                    <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
                </td>
            </tr>
            <tr>
                <td class="form_label">
                    变更类型:
                </td>
                <td>
                    <input class="nui-textbox" name="criteria/_expr[4]/type"/>
                    <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
                </td>

                <td class="form_label" id="ctime">

                    变更时间:
                </td>
                <td id="ctimetd" colspan="3">
                    <input id="stime" class="nui-hidden" name="criteria/_expr[5]/datetime"/>
                    <input class="nui-hidden" name="criteria/_expr[5]/_op" value=">">
                    <input id="etime" class="nui-hidden" name="criteria/_expr[6]/datetime"/>
                    <input class="nui-hidden" name="criteria/_expr[6]/_op" value="<">

                   <input id="startDate" class="nui-datepicker" ondrawdate="onDrawDateStart" name="criteria/_expr[7]/datetime"/>
                    <input class="nui-hidden" name="criteria/_expr[7]/_op" value=">">--
                    <input id="endDate" class="nui-datepicker" ondrawdate="onDrawDateEnd" name="criteria/_expr[8]/datetime"/>
                    <input class="nui-hidden" name="criteria/_expr[8]/_op" value="<">
		                    
                    <input class="nui-hidden" id="con_jdid" name="criteria/_expr[9]/base"/>
                    <input class="nui-hidden" name="criteria/_expr[9]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[9]/_likeRule" value="end">

                    <input class="nui-hidden" id="con_jzid" name="criteria/_expr[10]/crew"/>
                    <input class="nui-hidden" name="criteria/_expr[10]/_op" value="like">
                    <input class="nui-hidden" name="criteria/_expr[10]/_likeRule" value="end">
                </td>
                <td>
                    <a class="nui-button" onclick="search()">
                        查询
                    </a>
                </td>
                <td>
                    <a class="nui-button" onclick="reset()">
                        重置
                    </a>
                </td>
                <td class="form_label">
                    <a id="download" class="nui-button btn btn-default btn-xs" onclick="output()"  >
                        导出
                    </a>
                </td>
            </tr>
        </table>
    </div>
</div>

<div class="nui-panel" title="数据列表" style="width:100%;height:80%;" showToolbar="false"
     showFooter="false">

    <div class="nui-fit">
        <div
                id="datagrid1"
                dataField="dgglvitaes"
                class="nui-datagrid"
                style="width:100%;height:100%;"
                url="com.cgn.itmp.outlineandplan.outline.common.OutlineVitaeMgt.queryDgglvitaes.biz.ext"
                pageSize="20" sizeList="[20,100,1000]"
                showPageInfo="true"
                multiSelect="true"
                onselectionchanged="selectionChanged"
                allowSortColumn="false">

            <div property="columns">
                <div type="indexcolumn">
                </div>
                <div type="checkcolumn">
                </div>
                <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                    id
                </div>
                <div field="editid" headerAlign="center" allowSort="true" visible="false">
                    editid
                </div>
                <div field="creator" headerAlign="center" allowSort="true" align="center" width="7%">
                    发起人
                </div>
                <div field="reason" headerAlign="center" allowSort="true" width="30%">
                    文件修改原因
                </div>
                <div field="content" headerAlign="center" id="xgnr" renderer="xgnr" allowSort="true" width="30%">
                    修改内容
                </div>
                <div field="type" headerAlign="center" allowSort="true" align="center" width="7%">
                    变更类型
                </div>
                <div field="datetime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" align="center" width="13%">
                    变更日期
                </div>
                <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                    序号
                </div>
                <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                    逻辑删除
                </div>
                <div field="planid" headerAlign="center" allowSort="true" visible="false">
                    变更id
                </div>
                <div field="ident" headerAlign="center" allowSort="true" visible="false">
                    标识
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    nui.parse();
    var str = '<%=userRoleCodeList%>';
	 if (str.indexOf(",ITMP_JDGLY") < 0) {//普通人员
	 	 $("#download").hide();
	 }
	 if(str.indexOf(",ITMP_CJGLY") > 0){
			 	$("#download").show();
			  }
    var grid = nui.get("datagrid1");
    var jdid = getCookie('jdid');
    nui.get('con_jdid').setValue(jdid);
    var jzid = getCookie('jzid');
    nui.get('con_jzid').setValue(jzid);
    var formData = new nui.Form("#form1").getData(false, false);
    
    grid.load(formData);

    function xgnr(e) {
        if('删除' != e.record.type) {
            return '<a href = "#" onclick ="view()">' + e.record.content + '</a>';
        }else{
            return e.record.content;
        }
    }

    function view() {
        
        var row = grid.getSelected();
        //var str = row.content;
        //var tr = str.match(/(\S*)_/)[1];
        var urlStr = '';
        var entity = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.OverhaulEdit";
        if ((row.type == '新增' || row.type == '修改') && row.content.indexOf("通用") != -1) {
            urlStr = "/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/addCurrencyForm.jsp";
            if(row.type == '修改'){
            	entity = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.Currency";
            }
            if (row) {
                nui.open({
                    showMaxButton: true,
                    url: urlStr,
                    title: "数据详情",
                    width: 800,
                    height: 400,
                    onload: function () {
                        var iframe = this.getIFrameEl();
                        var parms = '{"parms":{"uuid":"' + row.planid + '","name":"","entity":'+entity+'}}';
                        var urlStr = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.getViewInforMation.biz.ext";
                        $.ajax({
                            url: urlStr,
                            type: 'POST',
                            data: parms,
                            cache: false,
                            contentType: 'text/json',
                            success: function (data) {
                            
                                var returnJson = nui.decode(data);
                                if (returnJson.record[0]) {
                                    var data = {pageType: "view", record: {data: returnJson.record[0]}};
                                    //直接从页面获取，不用去后台获取
                                    iframe.contentWindow.setFormData(data);
                                }
                            }
                        });
                    },
                    ondestroy: function (action) {
                        grid.reload();
                    }
                });
            }
        } else if ((row.type == '新增' || row.type == '修改') && row.content.indexOf("压力管道") != -1) {
            urlStr = "/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/addConduitForm.jsp";
            if(row.type == '修改'){
            	entity = "com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.PressurePipe";
            }
            if (row) {
                nui.open({
                    showMaxButton: true,
                    url: urlStr,
                    title: "数据详情",
                    width: 800,
                    height: 400,
                    onload: function () {
                        var iframe = this.getIFrameEl();
                        var parms = '{"parms":{"uuid":"' + row.planid + '","name":"","entity":'+entity+'}}';
                        var urlStr = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.getViewInforMation.biz.ext";
                        $.ajax({
                            url: urlStr,
                            type: 'POST',
                            data: parms,
                            cache: false,
                            contentType: 'text/json',
                            success: function (data) {
                                
                                var returnJson = nui.decode(data);
                                if (returnJson.record[0]) {
                                    var data = {pageType: "view", record: {data: returnJson.record[0]}};
                                    //直接从页面获取，不用去后台获取
                                    iframe.contentWindow.setFormData(data);
                                }
                            }
                        });
                    },
                    ondestroy: function (action) {
                        grid.reload();
                    }
                });
            }
        } else if (row.type == '计划完成') {
        	var processInstId = row.planid;
    		var showPage = "/basecommon/workFolw/planCompleteFirst.jsp";
    		var modelFlag = "";
    		if(row.content.indexOf('通用') != -1){modelFlag = "27";}
    		if(row.content.indexOf('压力管道') != -1){modelFlag = "28";}
    		urlStr = "com.cgn.itmp.basecommon.planComplateFlow.flow?flag=1&processInstId="+processInstId+"&showPage="+showPage+"&planFlag=1&modelFlag="+modelFlag+"&transferEntity=com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.OverhaulEdit";
    		if (row) {
        		 nui.open({
        		 	showMaxButton : true,
			        url: urlStr,
			        title: "数据详情",
			        width: 800,
			        height: 400,
			        onload: function () {
			        	
		                },
		            ondestroy: function (action) {
		                grid.reload();
		            }
		    	});
    		}
        }else if (row.type == '计划取消') {
        	var processInstId = row.planid;
    		var showPage = "/basecommon/workFolw/planCompleteFirst.jsp";
    		var modelFlag = "";
    		if(row.content.indexOf('通用') != -1){modelFlag = "27";}
    		if(row.content.indexOf('压力管道') != -1){modelFlag = "28";}
    		urlStr = "com.cgn.itmp.basecommon.planComplateFlow.flow?flag=1&processInstId="+processInstId+"&showPage="+showPage+"&planFlag=2&modelFlag="+modelFlag+"&transferEntity=com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.OverhaulEdit";
    		if (row) {
        		 nui.open({
        		 	showMaxButton : true,
			        url: urlStr,
			        title: "数据详情",
			        width: 800,
			        height: 400,
			        onload: function () {
			        	
		                },
		            ondestroy: function (action) {
		                grid.reload();
		            }
		    	});
    		}
        }
        
    }

    function output() {
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        nui.open({
            showMaxButton: true,
            url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
            title: "导出数据", width: 370, height: 300,
            onload: function () {//弹出页面加载完成
                var iframe = this.getIFrameEl();
                var data = {
                    entityName: "com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.zyjccgddx",
                    queryParam: json,								    //查询数据
                    queryKey: 'criteria',                              //查询实体名
                    expTitle: "专用检查计划常规岛大修变更履历",
                    query: ['creator', 'reason', 'content', 'type', 'datetime', 'datetime', 'datetime', 'datetime', 'base', 'crew'],  //按顺序放置
                    filterField: ['base', 'crew', "uuid", "isdelete", "planid", "ident", "editid", "orderno"],
                    order:'datetime@desc'
                };//传入页面的json数据
                iframe.contentWindow.setFormData(data);
            },
            ondestroy: function (action) {//弹出页面关闭前
                grid.reload();
            }
        });
    }


    //重新刷新页面
    function refresh() {
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        grid.load(json);//grid查询
        nui.get("update").enable();
    }

    //查询
    function search() {
        var form = new nui.Form("#form1");
        var json = form.getData(false, false);
        grid.load(json);//grid查询
    }

    //重置查询条件
    function reset() {
        var form = new nui.Form("#form1");//将普通form转为nui的form
        form.reset();
    }

    //enter键触发查询
    function onKeyEnter(e) {
        search();
    }

    function selectionChanged() {
        var rows = grid.getSelecteds();
        if (rows.length > 1) {

        } else {

        }
    }
    
     //起始日期事件
    function onDrawDateStart(e) {
        var date = e.date;
        var d = nui.get('endDate').getValue();
         if(d == null || "" == d){
        	 return;
        }
        if (date.getTime() > d.getTime()) {
            e.allowSelect = false;
        }
    }
    //终止日期事件
    function onDrawDateEnd(e) {
        var date = e.date;
        var d = nui.get('startDate').getValue();
        if(d == null || "" == d){
        	 return;
        }
        if (date.getTime() < d.getTime()) {
            e.allowSelect = false;
        }
    }

</script>
</body>
</html>