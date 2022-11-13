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
     <style type="text/css">
.mini-calendar-clearButton,.mini-calendar-tadayButton{
    border-color: #004a86!important;
    background: #004a86!important;
    color: #fff!important;
    font-family: "微软雅黑";
}
.mini-calendar .mini-calendar-weekend {
    color: #C00000;
}
.mini-calendar .mini-calendar-selected, .mini-calendar .mini-calendar-date:hover {
    background-color: #004a86;
    border-color: #004a86;
    color: #fff;
}
.mini-calendar-days td {
    text-align: center;
    vertical-align: middle;
    padding: 2px;
    padding-left: 3px;
    padding-right: 3px;
    font-size: 9pt;
    font-family: Tahoma, Verdana, 宋体;
    cursor: default;
}
          </style>
    <head>
        <title>
            变更履历查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
         <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
         <link rel="stylesheet" type="text/css" href="/itmp/css/themes/cuc/jud.css"/>
    </head>
    <body style="width:98%;height:95%;">
        <div class="nui-panel" title="查询"   style="width:100%;height:25%;" showToolbar="false" showFooter="true">
            <div id="recordFromList" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Dgglvitae1">
                <!-- 排序字段 -->
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
		                    <input class="nui-hidden" name="criteria/_expr[2]/_op" value=">">--
		                    <input id="etime" class="nui-hidden" name="criteria/_expr[3]/datetime"/>
		                    <input class="nui-hidden" name="criteria/_expr[3]/_op" value="<">
		                    
		                    <input id="startDate" class="nui-datepicker" ondrawdate="onDrawDateStart"  allowInput="false" showClose="true" oncloseclick="this.setValue(null);" ondrawdate="onDrawDate"  name="criteria/_expr[7]/datetime"/>
		                    <input class="nui-hidden" name="criteria/_expr[7]/_op" value=">">--
		                    <input id="endDate" class="nui-datepicker" ondrawdate="onDrawDateEnd"  allowInput="false" showClose="true" oncloseclick="this.setValue(null);" ondrawdate="onDrawDate"  name="criteria/_expr[8]/datetime"/>
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
                        <a class="nui-button btn btn-default btn-xs" id="export" onclick="output()">
                              导出
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="nui-panel" title="数据列表"   style="width:100%;height:80%;" showToolbar="false" showFooter="false" >
            <!--<div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table style="width:100%;">
                    <tr>
                        <td style="width:100%;">
                            <a class="nui-button"   onclick="add()">
                                增加
                            </a>
                            <a id="update" class="nui-button" iconCls="icon-edit" onclick="edit()">
                                编辑
                            </a>
                            <a class="nui-button" iconCls="icon-remove" onclick="remove()">
                                删除
                            </a>
                        </td>
                    </tr>
                </table>
            </div>-->
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
            //新增
            function add() {
                nui.open({showMaxButton : true,
                    url: "DgglvitaeForm.jsp",
                    title: "新增记录", width: 600, height: 300,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                }
                });
            }

            //编辑
            function edit() {
                var row = grid.getSelected();
                if (row) {
                    nui.open({showMaxButton : true,
                        url: "DgglvitaeForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 300,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{dgglvitae:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                                grid.reload();
                            }
                            });
                        } else {
                            nui.alert("请选中一条记录","提示");
                        }
                    }

                    //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){
                                    var json = nui.encode({dgglvitaes:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.outlineandplan.outline.common.OutlineVitaeMgt.deleteDgglvitaes.biz.ext",
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
                                    }else{
                                        nui.alert("请选中一条记录！");
                                    }
                                }

                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#recordFromList");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
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
                                       // nui.get("update").disable();
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
                                	var urlStr = '';
                                	if(row.type == '新增' || row.type == '修改'){
                                		urlStr = "/itmp/outline/Staturory/Daily/addForm.jsp?flag=1";
                                		if (row) {
	                                		 nui.open({showMaxButton : true,
										        url: urlStr,
										        title: "数据详情",
										        width: 800,
										        height: 400,
										        onload: function () {
										        	var iframe = this.getIFrameEl();
									        	var parms = '{"parms":{"id":"'+row.planid+'","name":"","entity":"com.cgn.itmp.outlineandplan.outline.StaturoryDaily.DailyEntity"}}';
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
											        		var data = {pageType:"view",record:{tdggldaily:returnJson.record[0]}};
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
                                		urlStr = "/itmp/outline/Staturory/Daily/vitaeList.jsp";
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
											        	if(returnJson.record.length>0){
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
                                		urlStr = "com.cgn.itmp.basecommon.planComplateFlow.flow?flag=1&processInstId="+processInstId+"&showPage="+showPage+"&planFlag=1&modelFlag=2&transferEntity=com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit";
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
                                		urlStr = "com.cgn.itmp.basecommon.planComplateFlow.flow?flag=1&processInstId="+processInstId+"&showPage="+showPage+"&planFlag=2&modelFlag=2&transferEntity=com.cgn.itmp.outlineandplan.outline.StaturoryOverhaul.OverhaulEdit";
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
								                entityName:"com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Dgglvitae1",
								                queryParam:json,								    //查询数据
								                queryKey:'criteria',                              //查询实体名
								                query:['creator','datetime','datetime','reason','content','type','datetime','datetime','base','crew'],  //按顺序放置
								                expTitle:"规范法定大纲管理日常执行条目履历信息",
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