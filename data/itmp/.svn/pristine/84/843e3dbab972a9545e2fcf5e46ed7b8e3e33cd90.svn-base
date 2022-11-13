<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): wangyx
- Date: 2019-11-11 15:02:07
- Description:
    --%>
    <head>
        <title>
            项目记录
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
                  <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
	           <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
    </head>
    <body style="background-color:#f1f1f1;width:99%;height:95%;">
    <div class="bs-docs-section">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				<div style="width: 100%; height: 100%;">
					<table cellpadding="0" cellspacing="0"
						class="table Keywordsearchtable" style="height: 100%;">
						<tr class="">
							<td class="form_label">关键字查询:</td>
							<td class="form_label"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td colspan="2" style="width:50%;border-right: 1px solid #f7f7f9 !important" class="form_label">
								<div property="footer" class="searchfooter" align="center">
									<a id="fuzzyQuery" class="btn btn-default" onclick="btnQuery()"> 模糊查询 </a> 
									<a id="allQuery" style="display: none" class="btn btn-default" onclick="searchs()"> 查询 </a> 
									<a class="btn btn-default" onclick="reset()"> 重置 </a>
									<div onclick="showquery()" id="funquery"
										class="fa fa-chevron-down fa-1x">
										&nbsp;<a id="scbt">高级查询</a>
									</div>
								</div>
							</td>
							<td style="width:0%;" class="form_label">
							</td>
						</tr>
					</table>
					<div id="form1" class="nui-form displaynone" align="center"
						style="height: 10%">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.weldingmanagement.Quality.QualityRecord" />
						<!-- 排序字段 -->
						<table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%">
                    <tr>
                        <td class="form_label">
                           WQP编号:
                        </td>
                        
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/wqpnumber"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                           操作人:
                        </td>
                        
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/operationperson"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label"> 
                         操作类型:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/operationtype"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                         负责人:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[4]/chargeperson"/>
                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
					 <td class="form_label">
                      实派焊工:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[5]/solidwelder"/>
                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[5]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                     
                        </td>
                        <td colspan="1">
                           
                        </td>
					</tr>
					<tr style="display: none">
					 
						<td>
							<input class="nui-textbox" name="criteria/_expr[7]/isdel" value="0" />
							<input class="nui-hidden" name="criteria/_expr[7]/_op" value="=">
							<input class="nui-textbox" id="jd" name="criteria/_expr[6]/jd" value="" />
							<input class="nui-hidden" name="criteria/_expr[6]/_op" value="=">
							<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="operationtime">
							<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						</td>
					</tr>
                </table>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div style="width: 100%; height: 95%;border-top:0px solid #0084d2 ;" showToolbar="false"
		showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0; padding: 5px 0px;">
			<table style="width: 100%;">
				<tr>
					<td style="width: 100%;">
						<button class="btn btn-default" onclick="remove()"
							disabled="disabled" id="delebtn">
							<b:message key="btn-delete" />
						</button>
						<button class="btn btn-default" id="output"
									type="button" onclick="output()">
									<span class=""></span> 
									<b:message key="btn-export" />
								</button>
						
					</td>
				</tr>
			</table>
		</div>  
            <div class="nui-fit">
                <div id="datagrid1" dataField="record" class="nui-datagrid" style="width:100%;height:100%;" url="com.cgn.itmp.weldingmanagement.qualitybiz.querycord.biz.ext" pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true" onselectionchanged="selectionChanged" allowSortColumn="false">
                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="wqpnumber" headerAlign="center" allowSort="true" >
                           WQP编号
                        </div>
                        <div field="operationtype" headerAlign="center" allowSort="true" >
                           操作类型
                        </div>
                        <div field="operationtime" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss" >
                          操作时间
                        </div>
                        <div field="operationperson" headerAlign="center" allowSort="true" >
                            操作人
                        </div>
                        <div field="reason" headerAlign="center" allowSort="true" >
                          操作理由
                        </div>
                        <div field="chargeperson" headerAlign="center" allowSort="true" >
                           负责人
                        </div>
                        <div field="solidwelder" headerAlign="center" allowSort="true" >
                           实派焊工
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
              nui.parse();
            var grid = nui.get("datagrid1");
			nui.get('jd').setValue(getCookie('jdid'));
            var formData = new nui.Form("#form1").getData(false,false);
			formData.isdel = "0";
			formData.jd= getCookie("jdid");
            grid.load(formData);
            
			
			var str = '<%=userRoleCodeList%>';
		if (str.indexOf(",ITMP_JDGLY") < 0 &&'<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") <0) {//普通人员
			 	 $("#delebtn").hide();
			 	 $("#output").hide();
		 }else if(str.indexOf(",ITMP_JDGLY") > 0 &&'<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") <0){
		 	$("#delebtn").hide();
		 	
		 }
		 if(str.indexOf(",ITMP_CJGLY") > 0){
		 	 $("#delebtn").show();
		 	 $("#output").show();
		 }
			
			function renderEnglishtermname(e){
				return '<a style="cursor: pointer" onclick=show("'+e.record._uid+'")>'+e.record.englishtermname+'</a>';
			}
			
			

                    //删除
                    function remove(){
                        var rows = grid.getSelecteds();
                        if(rows.length > 0){
                            nui.confirm("确定删除选中记录？","系统提示",
                            function(action){
                                if(action=="ok"){		 
                                    var json = nui.encode({
												data : rows,
												entity : "com.cgn.itmp.weldingmanagement.Quality.QualityRecord",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
											});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.inspectcomponentmanage.equipmentbaseinformationbiz.updatedel.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                            var returnJson = nui.decode(text);
                                            if(returnJson.exception == null){
                                                grid.reload();
                                                nui.alert("删除成功", "系统提示", function(action){
                                                 	selectionChanged();
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
                                        nui.alert("请选中一条记录");
                                    }
                                }
								//导出
			 function output() {
				 var rows = grid.data;
				 if(rows.length==0){
				 	nui.alert("暂无数据");
				 	return;
				 }
				var form = new nui.Form("#form1");
				var json = form.getData(false, false);
				nui.open({
				showMaxButton : true,
				url : "/itmp/basecommon/importExcelComm/expSelectFiledAndAttachMultiple.jsp",
				title : "导出数据",
				width : 450,
				height : 230,
				onload : function() {//弹出页面加载完成
					var iframe = this.getIFrameEl();
					var data = {
						entityName : "com.cgn.itmp.weldingmanagement.Quality.QualityRecord",
						queryParam : json, //查询数据
						queryKey : 'criteria', //查询实体名
						query : [ 'wqpnumber','operationperson','operationtype','chargeperson','solidwelder','jd','isdel'], //按顺序放置
						filterField : [ 'uuid','isdel', 'jd'],
						expTitle : "项目记录",
						dicFieds : "",
						jdFieds : "jd",
						order : "operationtime@desc",
						attachFied : "",
						mode:"ftp",
						defaultCheck : ['territory', 'englishabbreviation', 'englishtermname','chinesstermname','definition','synonym','referencedocumentname']
					};//传入页面的json数据
					iframe.contentWindow.setFormData(data);
				},
				ondestroy : function(action) {//弹出页面关闭前
				}
			});

}
							//回收站 
							 function recycle(){
					            nui
								.open({
								   showMaxButton : true,
									url : "/itmp/common/recyclebin/recycleknowledge.jsp",
									title : "回收站",
									width : 1000,
									height : 570,
									onload : function() {//弹出页面加载完成
										var iframe = this.getIFrameEl();
										var data = {
											pageType : "recyclebin",//com.cgn.itmp.knowledgebase.tintermbiz.queryTInTerms
											urlName : "com.cgn.itmp.knowledgebase.tintermbiz.queryTInTerms.biz.ext",//回收
											entityVal : "com.cgn.itmp.knowledgebase.Regulation.TInTerm",
											removeUrl : "com.cgn.itmp.weldingmanagement.common.delete.biz.ext",
											recoveryUrl : "com.cgn.itmp.inspectcomponentmanage.equipmentbaseinformationbiz.recovery.biz.ext",//恢复
											columnscode : [{
												type : "indexcolumn"
											}, {
												type : "checkcolumn"
											}, {
												field : "uuid",
												width : 100,
												headerAlign : "center",
												allowSort : true,
												header : "uuid",
												visible : false
											}, {
												field : "jd",
												width : 100,
												headerAlign : "center",
												allowSort : true,
												header : "jd",
												visible : false
											}, {
												field : "fileid",
												width : 100,
												headerAlign : "center",
												allowSort : true,
												header : "fileid",
												visible : false
											}, {
												field : 'territory',
												header : '所属领域',
												width : 100,
												headerAlign : "center",
												allowSort : true,
												renderer : "applyRender"
											}, {
												field : 'englishabbreviation',
												header : '英文简称',
												width : 100,
												headerAlign : "center",
												allowSort : true
											}, {
												field : 'englishtermname',
												header : '英文术语名称',
												width : 100,
												headerAlign : "center",
												allowSort : true
											},{
												field : 'chinesstermname',
												header : '中文术语名称',
												width : 100,
												headerAlign : "center",
												allowSort : true
											}, {
												field : 'definition',
												header : '定义',
												width : 100,
												headerAlign : "center",
												allowSort : true
											}, {
												field : 'synonym',
												header : '同义词',
												width : 100,
												headerAlign : "center",
												allowSort : true
											},{
												field : 'referencedocumentname',
												header : '  参考文件名称',
												width : 100,
												headerAlign : "center",
												allowSort : true
											}, {
												field : 'enclosure',
												header : '附件',
												width : 100,
												headerAlign : "center",
												allowSort : true,
												renderer:"setFile"
											}, {
												field : 'deleteperson',
												header : '删除人',
												width : 100,
												headerAlign : "center",
												allowSort : true
											},{
												field : 'deletetime',
												header : '删除时间',
												width : 100,
												dateFormat:"yyyy-MM-dd HH:mm:ss",
												headerAlign : "center",
												allowSort : true					
											}],
										};//传入页面的json数据
										iframe.contentWindow.setFormData(data);
									},
									ondestroy : function(action) {//弹出页面关闭前
										removeSelecteds(grid);
	               	    grid.reload();
	                    selectionChanged();
									}
								});
					            }
                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    json["criteria/_expr[10]/isdel"] = "0";
									json["criteria/_expr[11]/jd"] = getCookie("jdid");
                                    grid.load(json);//grid查询
                                    selectionChanged();
                                }

                                //查询
                                function searchs() {
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                      json["criteria/_expr[10]/isdel"] = "0";
									json["criteria/_expr[11]/jd"] = getCookie("jdid");
                                    grid.load(json);//grid查询
                                    selectionChanged();
                                }

                                //重置查询条件
                                function reset(){
                                $("#cond").val("");
                                    var form = new nui.Form("#form1");//将普通form转为nui的form
                                    form.reset();
                                    nui.get('jd').setValue(getCookie('jdid'));
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    search();
                                }

                             
								//模糊查询
								function btnQuery() {
								var gjz = $("#cond").val();
								if (gjz == "") {
									refresh();
									// 				nui.get("update").disable();
								} else {
									var data = {
										matchFied : "wqpnumber,operationperson,operationtype,chargeperson,solidwelder",
										
										wordVal : $("#cond").val(),
										entity : $("input[name='criteria/_entity']").val(),
										entityName : 'criteria',
										sdel : true,
										jdInfo : 'jd@' + getCookie('jdid')
									};
									
									var query = nui.decode(getKeyWordQuery(data));
									
						            query["criteria/_orderby[1]/_property"]="operationtime";
						            query["criteria/_orderby[1]/_sort"]="desc";
						            
									grid.load(query);
									// 				nui.get("update").disable();
								}
							}
									//控制修改和删除按钮
		function selectionChanged() {
			var rows = grid.getSelecteds();
			if (rows) {
				if (rows.length == 1) {
					//两个都恢复
					$("#editbtn").prop("disabled", "");
					$("#delebtn").prop("disabled", "");
				} else if (rows.length > 1) {
					//修改禁止
					$("#editbtn").prop("disabled", "disabled");
					//删除恢复
					$("#delebtn").prop("disabled", "");
				} else {
					//两个都禁止
					$("#editbtn").prop("disabled", "disabled");
					$("#delebtn").prop("disabled", "disabled");
				}
			} else {
				//两个都禁止
				$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
			}
		}
							  
                                
                            </script>
                        </body>
                    </html>
