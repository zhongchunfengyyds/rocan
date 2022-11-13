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
- Author(s): Sun
- Date: 2019-01-21 11:23:22
- Description:
    --%>
    <head>
        <title>
            变更履历查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
    </head>
    <body style="width:98%;height:95%;margin:0 auto;">
        <div class="nui-panel" title="查询"  style="width:100%;height:25%;" showToolbar="false" showFooter="true">
            <div id="recordFromList" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Dgglvitae11">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="datetime">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
                <table id="table1" class="table" style="height:100%">
                    <tr>
                        <td class="form_label">
                            发起人:
                        </td>
                        <td >
                            <input class="nui-textbox" name="criteria/_expr[1]/creator"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                        </td>
                        <td class="form_label">
                            文件修改原因:
                        </td>
                        <td>
                        	<input class="nui-textbox" name="criteria/_expr[4]/reason"/>
                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                        </td>
                        <td class="form_label">
                           修改内容:
                        </td>
                        <td >
                        	<input class="nui-textbox" name="criteria/_expr[5]/content"/>
                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                        </td>
                        </tr>
                        <tr>
                         <td class="form_label">
                           变更类型:
                        </td>
                        <td >
                        	<input class="nui-textbox" name="criteria/_expr[6]/type"/>
                            <input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
                        </td>
                        <td class="form_label" id="ctime">
                        
           变更时间:             	
                        </td>
                        <td id="ctimetd">
                        	<input id="stime" class="nui-hidden" name="criteria/_expr[2]/datetime"/>
		                    <input class="nui-hidden" name="criteria/_expr[2]/_op" value=">">
		                    <input id="etime" class="nui-hidden" name="criteria/_expr[3]/datetime"/>
		                    <input class="nui-hidden" name="criteria/_expr[3]/_op" value="<">
		                    
		                    <input id="startDate" class="nui-datepicker" ondrawdate="onDrawDateStart" name="criteria/_expr[7]/datetime"/>
		                    <input class="nui-hidden" name="criteria/_expr[7]/_op" value=">">--
		                    <input id="endDate" class="nui-datepicker" ondrawdate="onDrawDateEnd" name="criteria/_expr[8]/datetime"/>
		                    <input class="nui-hidden" name="criteria/_expr[8]/_op" value="<">
		                    
		                    <input id="jd" class="nui-hidden" name="criteria/_expr[9]/base"/>
		                    <input class="nui-hidden" name="criteria/_expr[9]/_op" value="=">
		                    <input id="jz" class="nui-hidden" name="criteria/_expr[10]/crew"/>
		                    <input class="nui-hidden" name="criteria/_expr[10]/_op" value="=">
                        
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
                        <td>
                        <a class="nui-button btn btn-default btn-xs" onclick="output()" id = "export">
                                <i class="fa fa-cloud-download"></i>导出
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="nui-panel" title="数据列表"   style="width:100%;height:80%;" showToolbar="false" showFooter="false" >
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
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false" >
                            id
                        </div>
                        <div field="editid" headerAlign="center" allowSort="true" visible="false" >
                            editid
                        </div>
                        <div field="creator" headerAlign="center" allowSort="true" align="center" width="7%">
                            发起人
                        </div>
                        <div field="reason" headerAlign="center" allowSort="true" width="30%">
                            变更原因
                        </div>
                        <div field="content" renderer="setLink" headerAlign="center" allowSort="true" width="30%">
                            变更内容
                        </div>
                        <div field="type" headerAlign="center" allowSort="true" align="center" width="7%">
                            变更类型
                        </div>
                        <div field="datetime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" align="center" width="13%">
                            变更日期
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false" >
                            isdelete
                        </div>
                        <div field="planid" headerAlign="center" allowSort="true" visible="false" >
                            planid
                        </div>
                        <div field="ident" headerAlign="center" allowSort="true" visible="false" >
                            ident
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
             var str = '<%=userRoleCodeList%>';
			 if (str.indexOf(",ITMP_JDGLY") < 0) {//普通人员
			 	 $("#export").hide();
			 }
			 if(str.indexOf(",ITMP_CJGLY") > 0){
			 	$("#export").show();
			  }
            var grid = nui.get("datagrid1");
            var formData = new nui.Form("#recordFromList").getData(false,false);
            grid.load(formData);
			var etime;
			var stime;
			var ndplan;
                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#recordFromList");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    nui.get("update").enable();
                                }

                                //查询
                                function search() {
                                    var form = new nui.Form("#recordFromList");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                }

                                //重置查询条件
                                function reset(){
                                    var form = new nui.Form("#recordFromList");//将普通form转为nui的form
                                    form.reset();
                                    nui.get('etime').setValue(etime);
					        		nui.get('stime').setValue(stime);
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    search();
                                }

                                //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                    if(rows.length>1){
                                        //nui.get("update").disable();
                                    }else{
                                        //nui.get("update").enable();
                                    }
                                }
                                
                                function setLink(e){
                                	if('删除' != e.record.type){
                                		return '<a href = "#" onclick ="showdetail()">'+e.record.content+'</a>';
                                	}else{
                                		return e.record.content;
                                	} 
                                }
                                function showdetail() {
                                	var row = grid.getSelected();
                                	var ident = row.ident;
                                	var content = row.content;
                                	var entity;
                                	var editionentity;
                                	var urlStr = '';
                                	var editurlStr;
                                	var editionurlStr;
                                	var modelFlag;
                                	var middleEntity;
                                	if(ident == "规范法定大纲_大修"){
                                		urlStr = "/itmp/outline/Staturory/Overhaul/addForm.jsp";
                                		editurlStr = "com.cgn.itmp.outlineandplan.outline.fddxeditflow.flow?fieldName=id&fieldValue="+row.planid+"&editfieldName=id&editfieldValue="+row.editid+"&entity=com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity&editentity=com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit";
                                		entity = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEntity";
                                		editionurlStr = "/itmp/outline/Staturory/Overhaul/vitaeList.jsp";
                                		editionentity="com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
                                		modelFlag = "1";
                                		middleEntity = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit";};
                                	if(ident == "规范法定大纲_日常"){
                                		urlStr = "/itmp/outline/Staturory/Daily/addForm.jsp";
										editurlStr = "com.cgn.itmp.outlineandplan.outline.fdrceditflow.flow?fieldName=id&fieldValue="+row.planid+"&editfieldName=id&editfieldValue="+row.editid+"&entity=com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity&editentity=daily.fdrcedit.Tdggldailyedit";
										editionurlStr = "/itmp/outline/Staturory/Daily/vitaeList.jsp";
										entity = "com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity";
										editionentity = "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
										modelFlag = "2";
                                		middleEntity = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit";
                                	};
                                	if(ident == "规范非法定总纲_大修"){
                                		urlStr = "/itmp/outline/NonStaturory/Overhaul/addForm.jsp";
										editurlStr = "com.cgn.itmp.outlineandplan.outline.ffddxeditflow.flow?fieldName=id&fieldValue="+row.planid+"&editfieldName=id&editfieldValue="+row.editid+"&entity=com.cgn.itmp.outlineandplan.outline.NonStaturoryOverhaul.OverhaulEntity&editentity=com.cgn.itmp.outlineandplan.outline.common.NonStaturory.NonStaturoryEdit";
										editionurlStr = "/itmp/outline/NonStaturory/Overhaul/vitaeList.jsp";
										entity = "com.cgn.itmp.outlineandplan.outline.NonStaturoryOverhaul.OverhaulEntity";
										editionentity = "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
										modelFlag = "3";
                                		middleEntity = "com.cgn.itmp.outlineandplan.outline.common.NonStaturory.NonStaturoryEdit";
                                	};
                                	if(ident == "规范非法定总纲_日常"){
                                		urlStr = "/itmp/outline/NonStaturory/Daily/addForm.jsp";
										editurlStr = "com.cgn.itmp.outlineandplan.outline.ffdrceditflow.flow?fieldName=id&fieldValue="+row.planid+"&editfieldName=id&editfieldValue="+row.editid+"&entity=com.cgn.itmp.outlineandplan.outline.NonStaturoryDaily.DailyEntity&editentity=nonstatutorydaily.ffdrcedit.Tdgglgfffdrctmedit";
										editionurlStr = "/itmp/outline/NonStaturory/Daily/vitaeList.jsp";
										entity = "com.cgn.itmp.outlineandplan.outline.NonStaturoryDaily.DailyEntity";
										editionentity = "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
										modelFlag = "4";
                                		middleEntity = "com.cgn.itmp.outlineandplan.outline.common.NonStaturory.NonStaturoryEdit";
                                	};
                                	if(ident == "十年计划(核岛)_大修"){
                                		urlStr = "/itmp/tenyearplan/NuclearIsland/Overhaul/addForm.jsp";
										editurlStr = "com.cgn.itmp.outlineandplan.tenyearplan.snjhhddxeditflow.flow?fieldName=id&fieldValue="+row.planid+"&editfieldName=id&editfieldValue="+row.editid+"&entity=com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity&editentity=com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaulEdit.NuclearIslandEdit";
										editionurlStr = "/itmp/tenyearplan/NuclearIsland/Overhaul/vitaeList.jsp";
										entity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaul.OverhaulEntity";
										editionentity = "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
										modelFlag = "5";
                                		middleEntity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaulEdit.NuclearIslandEdit";
                                	};
                                	if(ident == "十年计划(核岛)_日常"){
                                		urlStr = "/itmp/tenyearplan/NuclearIsland/Daily/addForm.jsp";
										editurlStr = "com.cgn.itmp.outlineandplan.tenyearplan.snjhhdrceditflow.flow?fieldName=id&fieldValue="+row.planid+"&editfieldName=id&editfieldValue="+row.editid+"&entity=com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity&editentity=snjh.hd.rc.snjhhdrcedit.Tdgglsnjhhdrcedit";
										editionurlStr = "/itmp/tenyearplan/NuclearIsland/Daily/vitaeList.jsp";
										entity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandDaily.DailyEntity";
										editionentity = "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
										modelFlag = "6";
                                		middleEntity = "com.cgn.itmp.outlineandplan.tenyearplan.NuclearIslandOverhaulEdit.NuclearIslandEdit";
                                	};
                                	if(ident == "十年计划(常规岛及BOP)_大修"){
	                                	urlStr = "/itmp/tenyearplan/ConventionalIsland/Overhaul/addForm.jsp";
										editurlStr = "com.cgn.itmp.outlineandplan.tenyearplan.snjhcgddxeditflow.flow?fieldName=id&fieldValue="+row.planid+"&editfieldName=id&editfieldValue="+row.editid+"&entity=com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity&editentity=com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit";
										editionurlStr = "/itmp/tenyearplan/ConventionalIsland/Overhaul/vitaeList.jsp";
										entity = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaul.OverhaulEntity";
										editionentity = "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
										modelFlag = "7";
                                		middleEntity = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit";
                                	};
                                	if(ident == "十年计划(常规岛及BOP)_日常"){
                                		urlStr = "/itmp/tenyearplan/ConventionalIsland/Daily/addForm.jsp";
										editurlStr = "com.cgn.itmp.outlineandplan.tenyearplan.snjhcgdrceditflow.flow?fieldName=id&fieldValue="+row.planid+"&editfieldName=id&editfieldValue="+row.editid+"&entity=com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity&editentity=snjh.cgd.rc.snjhcgdrcedit.Tdgglsnjhcgdrcedit";
										editionurlStr = "/itmp/tenyearplan/ConventionalIsland/Daily/vitaeList.jsp";
										entity = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity";
										editionentity = "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
										modelFlag = "8";
                                		middleEntity = "com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit";
                                	};
                                	if(ident == "专用检查计划(核岛)_大修"){
										middleEntity = 'com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit';
										if(row.type.indexOf('计划') == 0 || content.indexOf('焊缝（管道/支撑）') != -1){
											urlStr = '/itmp/specialinspection/NuclearIslandOverhaul/PipelineSupport/PipelineSupportForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.PipelineSupport';
											}
											modelFlag='13';
										}

										if(row.type.indexOf('计划') == 0 || content.indexOf('焊缝（BOSS头）') != -1){
											urlStr = '/itmp/specialinspection/NuclearIslandOverhaul/BossHead/BossHeadForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.BossHead';
											}
											modelFlag='14';
										}

										if(row.type.indexOf('计划') == 0 || content.indexOf('容器和热交换器') != -1){
											urlStr = '/itmp/specialinspection/NuclearIslandOverhaul/Container/ContainerForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Container';
											}
											modelFlag='15';
										}

										if(row.type.indexOf('计划') == 0 || content.indexOf('传热管') != -1){
											urlStr = '/itmp/specialinspection/NuclearIslandOverhaul/Tube/TubeForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Tube';
											}
											modelFlag='16';
										}

										if(row.type.indexOf('计划') == 0 || content.indexOf('阀门') != -1){
											urlStr = '/itmp/specialinspection/NuclearIslandOverhaul/Valve/ValveForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Valve';
											}
											modelFlag='17';
										}

										if(row.type.indexOf('计划') == 0 || content.indexOf('支撑/支架') != -1){
											urlStr = '/itmp/specialinspection/NuclearIslandOverhaul/Support/SupportForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaulEdit.NuclearIslandEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandOverhaul.Support';
											}
											modelFlag='18';
										}
									};

                                	if(ident == "专用检查计划(核岛)_日常"){
										middleEntity = 'com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit';
										
										if(row.type.indexOf('计划') == 0 || content.indexOf('焊缝（管道/支撑）') != -1){
											urlStr = '/itmp/specialinspection/NuclearIslandDaily/Container/ContainerForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.PipelineSupport';
											}
											modelFlag='19';
										}

										if(row.type.indexOf('计划') == 0 || content.indexOf('焊缝（BOSS头）') != -1){
											urlStr = '/itmp/specialinspection/NuclearIslandDaily/BossHead/BossHeadForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.BossHead';
											}
											modelFlag='20';
										}

										if(row.type.indexOf('计划') == 0 || content.indexOf('容器和热交换器') != -1){
											urlStr = '/itmp/specialinspection/NuclearIslandDaily/Container/ContainerForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Container';
											}
											modelFlag='21';
										}

										if(row.type.indexOf('计划') == 0 || content.indexOf('传热管') != -1){
											urlStr = '/itmp/specialinspection/NuclearIslandDaily/Tube/TubeForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Tube';
											}
											modelFlag='22';
										}

										if(row.type.indexOf('计划') == 0 || content.indexOf('阀门') != -1){
											urlStr = '/itmp/specialinspection/NuclearIslandDaily/Valve/ValveForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Valve';
											}
											modelFlag='23';
										}

										if(row.type.indexOf('计划') == 0 || content.indexOf('支撑/支架') != -1){
											urlStr = '/itmp/specialinspection/NuclearIslandDaily/Support/SupportForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDailyEdit.NuclearIslandDailyEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.NuclearIslandDaily.Support';
											}
											modelFlag='24';
										}
									};

                                	if(ident == "专用检查计划(常规岛及BOP)_大修"){
										middleEntity = 'com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.OverhaulEdit';
										if(row.type.indexOf('计划') == 0 || content.indexOf('压力管道') != -1){
											urlStr = '/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/addConduitForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.OverhaulEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.PressurePipe';
											}
											modelFlag='28';
											
										}
										
										if(row.type.indexOf('计划') == 0 || content.indexOf('通用') != -1){
											urlStr = '/itmp/specialinspection/ConventionalIslandOverhaul/Overhaul/addCurrencyForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.OverhaulEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandOverhaul.Currency';
											}
											modelFlag='27';
											
										}
									};

                                	if(ident == "专用检查计划(常规岛及BOP)_日常"){
										middleEntity = 'com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.DailyEdit';
										if(row.type.indexOf('计划') == 0 || content.indexOf('压力管道') != -1){
											urlStr = '/itmp/specialinspection/ConventionalIslandDaily/Daily/addConduitForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.DailyEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.PressurePipe';
											}
											modelFlag='26';
											
										}
										
										if(row.type.indexOf('计划') == 0 || content.indexOf('通用') != -1){
											urlStr = '/itmp/specialinspection/ConventionalIslandDaily/Daily/addCurrencyForm.jsp';
											entity='com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandEdit.DailyEdit';
											if(row.type == '修改'){
												entity='com.cgn.itmp.outlineandplan.specialinspection.ConventionalIslandDaily.Currency';
											}
											modelFlag='25';
											
										}
									};
                                	if(row.type == '新增' || row.type == '修改'){
                                		if (row) {
	                                		 nui.open({showMaxButton : true,
										        url: urlStr+"?flag=1",
										        title: "数据详情",
										        width: 800,
										        height: 400,
										        onload: function () {
										        	var iframe = this.getIFrameEl();
									        	var parms = '';
										        	if(ident.indexOf('专用检查计划') != -1){
										        		parms = '{"parms":{"uuid":"'+row.planid+'","name":"","entity":"'+entity+'"}}';
										        	}else{
										        		parms = '{"parms":{"id":"'+row.planid+'","name":"","entity":"'+entity+'"}}';
										        	}
									        	var urlStr = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.getViewInforMation.biz.ext";
										        $.ajax({
											        url:urlStr,
											        type:'POST',
											        data:parms,
											        cache:false,
											        contentType:'text/json',
											        success:function(data){
											        	var returnJson = nui.decode(data);
											        	if(returnJson.record != null && returnJson.record[0]){
											        		if(ident == "规范法定大纲_大修")var data = {pageType:"view",record:{tdgglentry:returnJson.record[0]}};
											        		if(ident == "规范法定大纲_日常")var data = {pageType:"view",record:{tdggldaily:returnJson.record[0]}};
											        		if(ident == "规范非法定总纲_大修")var data = {pageType:"view",record:{tgglgfffddxtm:returnJson.record[0]}};
						                                	if(ident == "规范非法定总纲_日常")var data = {pageType:"view",record:{tdgglgfffdrctm:returnJson.record[0]}};
						                                	if(ident == "十年计划(核岛)_大修")var data = {pageType:"view",record:{tdgglsnjhhddx:returnJson.record[0]}};
						                                	if(ident == "十年计划(核岛)_日常")var data = {pageType:"view",record:{tdgglsnjhhdrc:returnJson.record[0]}};
						                                	if(ident == "十年计划(常规岛及BOP)_大修")var data = {pageType:"view",record:{tdgglsnjhcgddx:returnJson.record[0]}};
						                                	if(ident == "十年计划(常规岛及BOP)_日常")var data = {pageType:"view",record:{tdgglsnjhcgdrc:returnJson.record[0]}};
						                                	if(ident == "专用检查计划(核岛)_大修")var data = {pageType:"view",record:{data:returnJson.record[0]}};
						                                	if(ident == "专用检查计划(核岛)_日常")var data = {pageType:"view",record:{data:returnJson.record[0]}};
						                                	if(ident == "专用检查计划(常规岛及BOP)_大修")var data = {pageType:"view",record:{data:returnJson.record[0]}};
						                                	if(ident == "专用检查计划(常规岛及BOP)_日常")var data = {pageType:"view",record:{data:returnJson.record[0]}};
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
                                	}else if(row.type == '修改'){
                                		if (row) {
	                                		 nui.open({showMaxButton : true,
										        url: editurlStr,
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
                                	}else if(row.type == '升版'){
                                		if (row) {
	                                		 nui.open({showMaxButton : true,
										        url: editionurlStr,
										        title: "数据详情",
										        width: 800,
										        height: 400,
										        onload: function () {
										        	var iframe = this.getIFrameEl();
										        	var enddatetime = row.datetime;
										        	var parms = '{"parms":{"fieldName":"id","fieldValue":"'+row.editid+'","outFieldName":"number","entity":"'+editionentity+'"}}';
										        	var url = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.getInforMationByFieldName.biz.ext";
										        	$.ajax({
											        url:url,
											        type:'POST',
											        data:parms,
											        cache:false,
											        contentType:'text/json',
											        success:function(data){
											        	var returnJson = nui.decode(data);
											        	if(returnJson.record){
											        		var number = returnJson.record.number;
											        		var data = {pageType:"show",record:{enddatetime:enddatetime,number:number}};
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
                                	}else if(row.type == '计划完成'){
                                		var processInstId = row.planid;
                                		var showPage = "/basecommon/workFolw/planCompleteFirst.jsp";
                                		urlStr = "com.cgn.itmp.basecommon.planComplateFlow.flow?flag=1&processInstId="+processInstId+"&showPage="+showPage+"&planFlag=1&modelFlag="+modelFlag+"&transferEntity="+middleEntity;
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
                                	}else if(row.type == '计划取消'){
                                		var processInstId = row.planid;
                                		var showPage = "/basecommon/workFolw/planCompleteFirst.jsp";
                                		urlStr = "com.cgn.itmp.basecommon.planComplateFlow.flow?flag=1&processInstId="+processInstId+"&showPage="+showPage+"&planFlag=2&modelFlag="+modelFlag+"&transferEntity="+middleEntity;
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
                                
                                
                        //页面间传输json数据
			            function setFormData(data){
			                //跨页面传递的数据对象，克隆后才可以安全使用
			                var infos = nui.clone(data);
			                json = infos.record;
	                        if (infos.pageType == "show") {
	                        	stime = nui.formatDate (json.stime, "yyyy-MM-dd HH:mm:ss" );
	                        	etime = nui.formatDate (json.etime, "yyyy-MM-dd HH:mm:ss" );
	                        	nui.get('etime').setValue(etime);
				        		nui.get('stime').setValue(stime);
				        		ndplan = json.ndplan;
				        		search();
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
    
    
        function output(){
    	var form = new nui.Form("#recordFromList");
		var json = form.getData(false,false);
    	nui.open({
	        url: "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
	        title: "导出数据", width: 400, height: 150,
	        showMaxButton : true,
	        onload: function () {//弹出页面加载完成
	        var iframe = this.getIFrameEl();
	        var data = {
	                entityName:"com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Dgglvitae11",
	                queryParam:json,								    //查询数据
	                queryKey:'criteria',                              //查询实体名
	                query:['creator','datetime','datetime','reason','content','type','datetime','datetime','base','crew'],  //按顺序放置
	                expTitle:ndplan +"履历信息",
	                filterField:['base','crew',"uuid","isdelete","planid","ident","editid"],
	                order:'datetime@desc'
	        };//传入页面的json数据
	            iframe.contentWindow.setFormData(data);
	        },
	        ondestroy: function (action) {//弹出页面关闭前
	                grid.reload();
	        }
	    });
    }
                            </script>
                        </body>
                    </html>
