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
                 <script src="<%= request.getContextPath() %>/js/pdfGeneration/jspdf.debug.js" type="text/javascript"> </script>
    </head>
    <body>
            <div id="form1" class="nui-form" align="center" >	
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.annual.ConventionalIslandDaily.PlanGeneration">
                <!-- 排序字段 -->
                 <input id="uuid" class="nui-hidden" name="uuid"/>
                               <input id="processinstid" class="nui-hidden" name="criteria/_expr[1]/processinstid"/>
        						<input class="nui-hidden" name="criteria/_expr[1]/_op" value="=">
        						<input id="ident" class="nui-hidden" name="criteria/_expr[2]/ident"/>
        						<input class="nui-hidden" name="criteria/_expr[2]/_op" value="=">
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
					<td class="form_label" style="width:100px;">审核人员：</td>
					<td>
					 	<input id="jhry" class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" name="jhry" textName="jhry" required="true" style="width: 98%"/>    
					</td>
					<td class="form_label" style="width:100px;">批准人员：</td>
					<td> 
						<input id="pzry" class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" name="pzry" textName="pzry" required="true" style="width: 98%"/>    
					</td>
					<td class="form_label" style="width:100px;">抄送人员：</td>
					<td>
						 <!-- <input property="editor" id="csry" multi="false" name="csry" class="nui-textboxlist" dataField="list"
	                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext" valueField="empcode"
	                       textField="empcodename" searchField="keyword" style="width: 200px;"/> -->
	                       <input property="editor" id="csry"
							multi="false" name="csry" class="nui-textboxlist"
							dataField="list"
							url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
							valueField="empcode" textField="empcodename" searchField="keyword"
							style="width: 100%" />
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
           		</tr>
           		<tr>
           			<td colspan="6" style="text-align: center;">
           				<div class="form-group text-center">
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
       
        <div class="nui-panel" title="检查项目清单" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.ConventionalIslandDaily.queryPlanGenerations.biz.ext"
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
                             <div field="rwqd" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                             <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                        <div field="sapgnwz" headerAlign="center" allowSort="true" >
        sap功能位置
                        </div>
                        <div field="checkprojectname" headerAlign="center" allowSort="true" >
                            检查项目描述
                        </div>
                         <div field="gnwz" headerAlign="center" allowSort="true" >
                            功能位置
                        </div> 
                        <div field="lc" headerAlign="center" allowSort="true" >
                            轮次
                        </div>
                         <div field="lcv" headerAlign="center" allowSort="true" >
                            轮次值
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        
         <div class="nui-panel" title="通用" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid2"
                        dataField="tgglndjhcgdrcjhscs"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.outlineandplan.annual.ConventionalIslandDaily.queryPlanGenerations.biz.ext"
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
                         <div field="rwqd" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                            <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                            <div field="sapgnwz" headerAlign="center" allowSort="true" >
            SAP功能位置
                        </div>
                             <div field="gl" headerAlign="center" allowSort="true" >
                           管类
                        </div>
                             <div field="gxh" headerAlign="center" allowSort="true" >
                           管线号
                        </div>
                        <div field="zysb" headerAlign="center" allowSort="true" >
        主要设备
                        </div>
                        <div field="cz" headerAlign="center" allowSort="true" >
                            材质
                        </div>
                         <div field="gczj" headerAlign="center" allowSort="true" >
                            公称直径(mm)
                        </div> 
                        <div field="wj" headerAlign="center" allowSort="true" >
                         外径(mm)  
                        </div>
                        <div field="mybh" headerAlign="center" allowSort="true" >
                       名义壁厚(mm)     
                        </div>
                        <div field="jk" headerAlign="center" allowSort="true" >
                            进口
                        </div>
                         <div field="ck" headerAlign="center" allowSort="true" >
                            出口
                        </div>
                        <div field="lct" headerAlign="center" allowSort="true" >
                            流程图/等轴图号
                        </div>
                        <div field="jcbw" headerAlign="center" allowSort="true" >
                            检查部位/检查内容
                        </div>
                        <div field="bz" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="lc" headerAlign="center" allowSort="true" >
                          轮次
                        </div>
                        <div field="lcv" headerAlign="center" allowSort="true" >
                          轮次值
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
         <div class="nui-panel" id="ylgd" title="压力管道" iconCls="icon-add" style="width:100%;height:400px;" showToolbar="false" showFooter="false" >
            <div class="nui-fit">
                <div 
                        id="datagrid3"
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
                         <div field="rwqd" headerAlign="center" allowSort="true" >
                            维护项目
                        </div>
                            <div field="gdh" headerAlign="center" allowSort="true" >
                            工单号
                        </div>
                            <div field="sapgnwz" headerAlign="center" allowSort="true" >
            SAP功能位置
                        </div>
                             <div field="gl" headerAlign="center" allowSort="true" >
                           管类
                        </div>
                             <div field="gxh" headerAlign="center" allowSort="true" >
                           管线号
                        </div>
                        <div field="cz" headerAlign="center" allowSort="true" >
                            材质
                        </div>
                         <div field="lct" headerAlign="center" allowSort="true" >
                            等轴图号
                        </div> 
                        <div field="fac" headerAlign="center" allowSort="true" >
                        FAC
                        </div>
                        <div field="chbw" headerAlign="center" allowSort="true" >
                       测厚部位
                        </div>
                        <div field="chsl" headerAlign="center" allowSort="true" >
                            测厚数量
                        </div>
                         <div field="utbw" headerAlign="center" allowSort="true" >
                            UT部位
                        </div>
                        <div field="utsl" headerAlign="center" allowSort="true" >
                            UT数量
                        </div>
                        <div field="bz" headerAlign="center" allowSort="true" >
                            备注
                        </div>
                        <div field="lc" headerAlign="center" allowSort="true" >
                          轮次
                        </div>
                        <div field="lcv" headerAlign="center" allowSort="true" >
                          轮次值
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
      </div>  
        <script type="text/javascript">
            nui.parse();
            
            $("#ylgd").hide();
            //显示全局数据加载提示
            mini.mask({
	            el: document.body,
	            cls: 'mini-mask-loading',
	            html: '加载中...'
       	 	});
            var formData = new nui.Form("#form1").getData(false,false);
         	 function setFormData(data){
         	 		//console.log(data);
         	 		nui.get("processinstid").setValue(data);
         	 		nui.get("uuid").setValue(data);
         	 		var d={processinstid:data};
         	 		formData = new nui.Form("#form1").getData(false,false);
         			formData.pageIndex=1;
         			formData.pageSize=999999;
//          	 		var json =nui.encode({tgglndjhcgdrcs:d});
var json =nui.encode(formData);
          			          $.ajax({
                                url:'com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.queryTgglndjhhdjhscs.biz.ext',
                                type:'POST',
                                data:json,
                                cache: false,
                                contentType:'text/json',
                                success:function(jsondata){
                                	//console.log(jsondata);
                                	var data1 =[];
				         	 		var data2 =[];
				         	 		var data3 =[];
                                var jpl = jsondata.tgglndjhhdjhscs;
                                for(var i = 0 ; i<jpl.length;i++){
                                   	//清单标识
	                                   if(jpl[i]['ident']=="检查项目清单"){
		                                  	data1.push(jpl[i]);
		                                }else  if(jpl[i]['ident']=="通用"){
		                                 	data2.push(jpl[i]);
	                                   	}else if(jpl[i]['ident']=="压力管道"){
	                                   		data3.push(jpl[i]);
	                                   	}
                                    }
                                     var grid1 =  nui.get('datagrid1');
	                                 var grid2 =  nui.get('datagrid2');
	                                 grid1.addRows(data1);
	                                 grid2.addRows(data2);
                                     
                                     if(getCookie("jdid") == "82"){
                                     	$("#ylgd").show();
                                     	var grid3 =  nui.get('datagrid3');
	                                 	grid3.addRows(data3);
                                     }
                                     
                                     //关闭加载提示
                                 mini.unmask(document.body);
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
				        allInfo.processInstName = "年度计划(常规岛及BOP)_日常计划生效_申请";
				        allInfo.processInstDesc = "年度计划(常规岛及BOP)_日常计划生效_申请";
				        //工作流视图url
				        allInfo.processDefName = "com.cgn.itmp.outlineandplan.annual.conventionalislanddailyWF";
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
							   	url:"com.cgn.itmp.outlineandplan.annual.NuclearIslandOverhaul.conventiondailyOperationWorkflow.biz.ext",
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
