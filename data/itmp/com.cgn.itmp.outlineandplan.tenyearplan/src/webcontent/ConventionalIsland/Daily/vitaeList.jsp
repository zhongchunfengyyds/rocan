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
    <body style="width:98%;height:95%;">
        <div class="nui-panel" title="查询"   style="width:100%;height:25%;" showToolbar="false" showFooter="true">
            <div id="recordFromList" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Dgglvitae7">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="datetime">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
                <table id="table1" class="table" style="height:100%">
                    <tr>
                        <td class="form_label">
                            发起人:
                        </td>
                        <td>
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
		                    
		                    <input id="startDate" class="nui-datepicker" ondrawdate="onDrawDateStart" allowInput="false" showClose="true" oncloseclick="this.setValue(null);" ondrawdate="onDrawDate" name="criteria/_expr[7]/datetime"/>
		                    <input class="nui-hidden" name="criteria/_expr[7]/_op" value=">">--
		                    <input id="endDate" class="nui-datepicker" ondrawdate="onDrawDateEnd" allowInput="false" showClose="true" oncloseclick="this.setValue(null);" ondrawdate="onDrawDate" name="criteria/_expr[8]/datetime"/>
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
                        <a class="nui-button btn btn-default btn-xs" onclick="output()" id="export">
                              导出
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
			 var jdid = getCookie('jdid');
			var jzid = getCookie('jzid');
			nui.get("jd").setValue(jdid);
			nui.get("jz").setValue(jzid);
            var formData = new nui.Form("#recordFromList").getData(false,false);
            grid.load(formData);
            var etime;
			var stime;
			var jdid = getCookie('jdid');
			var jzid = getCookie('jzid');
			nui.get('jd').setValue(jdid);
			nui.get('jz').setValue(jzid);

            

                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#recordFromList");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    nui.get("update").enable();
                                }

                                //查询
                                function search() {
                                	nui.get("jd").setValue(jdid);
									nui.get("jz").setValue(jzid);
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
                                        nui.get("update").disable();
                                    }else{
                                        nui.get("update").enable();
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
			                    	var urlStr = '';
			                    	if(row.type == '新增' || row.type == '修改'){
			                    		urlStr = "/itmp/tenyearplan/ConventionalIsland/Daily/addForm.jsp?flag=1";
			                    		if (row) {
			                    		 nui.open({showMaxButton : true,
									        url: urlStr,
									        title: "数据详情",
									        width: 800,
									        height: 400,
									        onload: function () {
									        	var iframe = this.getIFrameEl();
									        	var parms = '{"parms":{"id":"'+row.planid+'","name":"","entity":"com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandDaily.DailyEntity"}}';
									        	var urlStr = "com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.getViewInforMation.biz.ext";
										        $.ajax({
											        url:urlStr,
											        type:'POST',
											        data:parms,
											        cache:false,
											        contentType:'text/json',
											        success:function(data){
											        	var returnJson = nui.decode(data);
											        	if(returnJson.record[0]){
											        		var data = {pageType:"view",record:{tdgglsnjhcgdrc:returnJson.record[0]}};
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
			                    	}else if(row.type == '升版'){
                                		urlStr = "/itmp/tenyearplan/ConventionalIsland/Daily/vitaeList.jsp";
                                		if (row) {
	                                		 nui.open({showMaxButton : true,
										        url: urlStr,
										        title: "数据详情",
									            width: 1000,
									            height: 520,
										        onload: function () {
										        	var iframe = this.getIFrameEl();
										        	var enddatetime = row.datetime;
										        	var parms = '{"fieldName":"id","fieldValue":"'+row.editid+'","entity":"com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity"}';
										        	var url = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getInforMationByFieldName.biz.ext";
										        	$.ajax({
											        url:url,
											        type:'POST',
											        data:parms,
											        cache:false,
											        contentType:'text/json',
											        success:function(data){
											        	var returnJson = nui.decode(data);
											        	if(returnJson.record[0]){
											        		var data = {pageType:"show",record:{enddatetime:enddatetime,record:returnJson.record}};
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
                                		urlStr = "com.cgn.itmp.basecommon.planComplateFlow.flow?flag=1&processInstId="+processInstId+"&showPage="+showPage+"&planFlag=1&modelFlag=8&transferEntity=com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit";
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
                                		urlStr = "com.cgn.itmp.basecommon.planComplateFlow.flow?flag=1&processInstId="+processInstId+"&showPage="+showPage+"&planFlag=2&modelFlag=8&transferEntity=com.cgn.itmp.outlineandplan.tenyearplan.ConventionalIslandOverhaulEdit.OverhaulEdit";
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
	                        	$('#ctime').hide();
	                        	$('#ctimetd').hide();
	                        	etime = nui.formatDate(json.enddatetime,'yyyy-MM-dd HH:mm:ss');
				                var data =  json.record[0];
				                var jsondata={};
				                var fields = ['number','modelFlag','jdid','jzid'];
								var values = [(data.number-1)+'',data.modelFlag,data.jdid,data.jzid];
								jsondata.entityType="com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
								jsondata.fields = fields;
								jsondata.values = values;
								jsondata = nui.encode(jsondata);
					        	var url = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.queryDataByEntity.biz.ext";
					        	nui.get('etime').setValue(etime);
					        	$.ajax({
							        url:url,
							        type:'POST',
							        data:jsondata,
							        cache:false,
							        contentType:'text/json',
							        success:function(data){
							        	var returnJson = nui.decode(data);
							        	if(returnJson.record[0]){
							        		var parms = '{"fieldName":"planid","fieldValue":"'+returnJson.record[0].id+'","entity":"com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Tdgglvitae"}';
							        		$.ajax({
										        url:"com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getInforMationByFieldName.biz.ext",
										        type:'POST',
										        data:parms,
										        cache:false,
										        contentType:'text/json',
										        success:function(data){
										        	var returnJson = nui.decode(data);
										        	if(returnJson.record[0]){
										        		stime = nui.formatDate(returnJson.record[0].datetime,'yyyy-MM-dd HH:mm:ss');
										        		nui.get('stime').setValue(stime);
										        		search();
										        	}
										        }
										    });
							        	}else{
							        		search();
							        	}
							        }
							    });
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
						                entityName:"com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Dgglvitae7",
						                queryParam:json,								    //查询数据
						                queryKey:'criteria',                              //查询实体名
						                query:['creator','datetime','datetime','reason','content','type','datetime','datetime','base','crew'],  //按顺序放置
						                expTitle:"十年计划核岛管理大修执行条目履历信息",
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
    
     function onDrawDate(e) {
            var date = e.date;
            var d = new Date();

            if (date.getTime() < d.getTime()) {
                e.allowSelect = false;
            }
        }
                            </script>
                        </body>
                    </html>
