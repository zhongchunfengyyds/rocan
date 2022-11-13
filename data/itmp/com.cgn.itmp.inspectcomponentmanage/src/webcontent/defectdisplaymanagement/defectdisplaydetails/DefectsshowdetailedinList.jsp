<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-17 10:00:48
- Description:缺陷显示详情信息实体查询页面
    --%>
    <head>
        <title>
            缺陷显示详情信息实体查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
    </head>
    <body style="background-color:#f1f1f1;width:98%;height:95%;">
        <div class="bs-docs-section">
	<div class="search-box">
		<div class="search-container folding-menu" id="queryForm">
			<div style="width: 100%; height: 100%;">
					<table cellpadding="0" cellspacing="0" class="table Keywordsearchtable" style="height: 100%;">
						<tr class="">
							<td class="form_label">关键字查询:</td>
							<td class="form_label"><input type="text" id="cond"
								name="processInstDesc:%" class="form-control Keywordsearch"
								placeholder="关键字查询" tmplId="todolist" url=" "></td>
							<td colspan="2"
								style="width: 50%; border-right: 1px solid #f7f7f9 !important"
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
							<td style="width: 0%; background: #f7f7f9;" class="form_label">
							</td>
						</tr>
					</table>
						<div id="form1" class="nui-form display" align="center" style="height: 108px">
							<!-- 数据实体的名称 -->
							<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation">
							<!-- 排序字段 -->
							<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="nullorder">
							 <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
							<input class="nui-hidden" name="criteria/_orderby[2]/_property" value="defectdisplaynumber">
							 <input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc">
							<input class="nui-hidden" name="criteria/_orderby[3]/_property" value="inserttime">
							 <input class="nui-hidden" name="criteria/_orderby[3]/_sort" value="desc">
							<input class="nui-hidden" name="criteria/_orderby[4]/_property" value="createtime">
							 <input class="nui-hidden" name="criteria/_orderby[4]/_sort" value="asc">
									<table id="table1" class="table" style="height: 100%">
										<tr>
											<td class="form_label">大修轮次:</td>
											<td colspan="1">  <input class="nui-textbox" name="criteria/_expr[1]/overhaulsequence"/>
				                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
				                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all"></td>
											<td class="form_label">设备名称:</td>
											<td colspan="1"><input class="nui-textbox" name="criteria/_expr[2]/equipmentname"/>
				                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
				                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all"></td>
										</tr>
										<tr>
											<td class="form_label"> 部件名称:</td>
											<td colspan="1"><input class="nui-textbox" name="criteria/_expr[3]/componentname"/>
				                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="="></td>
											<td class="form_label"> 被检部位:</td>
											<td colspan="1"><input class="nui-textbox" name="criteria/_expr[4]/checklocation"/>
				                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
				                            <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all"></td>
										</tr>
										<tr>
											<td class="form_label">检查内容:</td>
											<td colspan="1"><input class="nui-textbox" name="criteria/_expr[5]/inspectioncontent"/>
				                            <input class="nui-hidden" name="criteria/_expr[5]/_op" value="like">
				                            <input class="nui-hidden" name="criteria/_expr[5]/_likeRule" value="all"></td>
											<td class="form_label">检查方法:</td>
											<td colspan="1"><input class="nui-dictcombobox" dictTypeId="YJJCFF"  name="criteria/_expr[6]/inspectionmethod"/>
				                            <input class="nui-hidden" name="criteria/_expr[6]/_op" value="like">
				                            <input class="nui-hidden" name="criteria/_expr[6]/_likeRule" value="all"></td>
										</tr>
										<tr>
											<td class="form_label">缺陷显示编号:</td>
											<td colspan="1"> <input class="nui-textbox" name="criteria/_expr[7]/defectdisplaynumber"/>
				                            <input class="nui-hidden" name="criteria/_expr[7]/_op" value="like">
				                            <input class="nui-hidden" name="criteria/_expr[7]/_likeRule" value="all">
											</td>
											<td class="form_label"></td>
											<td colspan="1"></td>
											<td style="display:none;" colspan="0"><input class="nui-hidden"
													name="criteria/_expr[8]/isdel" value="0" /> <input
													class="nui-hidden" name="criteria/_expr[8]/_op" value="=">
													<input id="con_jdid" style="display: none" class="nui-textbox" name="criteria/_expr[9]/jd"/> 
													<input class="nui-hidden" name="criteria/_expr[9]/_op" value="=">
													<input style="display: none" class="nui-textbox" id="con_jzid" name="criteria/_expr[10]/jz"/> 
													<input class="nui-hidden" name="criteria/_expr[10]/_op" value="="></td>
													<input class="nui-hidden" name="criteria/_expr[11]/stencilplate"/>
				                            <input class="nui-hidden" name="criteria/_expr[11]/_op" value="like">
				                            <input class="nui-hidden" name="criteria/_expr[11]/_likeRule" value="all">
										</tr>
									</table>
						</div>
			</div>
		</div>
	</div>
</div>

<!--footer-->
	<div class="nui-layout" style="width:100%;height:95%;" > 
	<div  region="west" width="200" title="缺陷显示详细模板树">
        <div class="nui-fit">
        	<ul id="tree1" expandOnNodeClick="true" class="nui-tree" url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/dataTree.txt"
        	resultAsTree="false" style="width:100%;height:100%;" 
        	onnodeclick="onNodeSelect" onbeforeexpand="onBeforeExpand"
        	onnodeselect="onNodeSelect" expandOnNodeClick="true"
        	onbeforenodeselect="onBeforeNodeSelect"
            dataField="treeDepts" textField="name" idField="id">
			</ul>
		</div>
    	</div>
    	
        <div style="width: 100%; height: 100%; float: left;"
		showToolbar="false" showFooter="false">
            <div class="nui-toolbar" style="border-bottom:0;padding:5px 0px;">
                <table style="width: 100%;">
				<tr>
					<td style="width: 100%;">
						<button id="addallbut" style="position: relative;" class="btn btn-default" onclick="openAllAdd()">
							<b:message key="btn-add" />
						</button>
							<ul class="add_adds nui-menu">
								<li onclick="add()">单条新增</li>
								<li onclick="batchAdd()">批量新增</li>
							</ul>
						
						<button class="btn btn-default" onclick="edit()"
							disabled="disabled" id="editbtn">
							<b:message key="btn-edit" />
						</button>
						<button class="btn btn-default" onclick="remove()"
							disabled="disabled" id="delebtn">
							<b:message key="btn-delete" />
						</button>
						<button class="btn btn-default" type="button" id="output" onclick="output()">
							<b:message key="btn-export" />
						</button>
						<button class="btn btn-default" type="button" onclick="recycle()" id="recycle">
							<b:message key="btn-recycle" />
						</button>
						<button class="btn btn-default" type="button" onclick="analysis()">
							数据统计与分析
						</button>
					</td>
				</tr>
			</table>
            </div>
            
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="defectsshowdetailedinformations"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.queryDefectsshowdetailedinformations.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false"
                       
                        >

                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="overhaulsequence" headerAlign="center" allowSort="true" >
                            大修轮次
                        </div>
                        <div field="equipmentname" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="componentname" headerAlign="center" allowSort="true" >
                            部件名称
                        </div>
                        <div field="checklocation" headerAlign="center" allowSort="true" renderer="setHref1">
                            被检部位
                        </div>
                        <div field="inspectioncontent" headerAlign="center" allowSort="true" >
                            检查内容
                        </div>
                        <div field="inspectionmethod" headerAlign="center" allowSort="true" renderer="jcRender">
                            检查方法
                        </div>
                        <div field="defectdisplaynumber" headerAlign="center" allowSort="true" renderer="defectrender">
                            缺陷显示编号
                        </div>
                        
                        <div field="handle" headerAlign="center" allowSort="true" renderer="setHref">
				操作
                         </div>
                         
                        <div field="createtime" headerAlign="center" allowSort="true" visible="false">
                            
                        </div>
                        
                        
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            var stencilplate="";
            var ids="";
            accessControlButton('<%=userRoleCodeList%>',7);
            if ('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") < 0) {
				 $("#output").hide();
				 $("#recycle").hide();
			}else if('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") > 0){
			 	$("#delebtn").hide();
			 	$("#recycle").hide();
			 }
			  if('<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") > 0){//ITMP_CJGLY 超级管理员
			 $("#addallbut").show();
			 $("#editbtn").show();
			 $("#delebtn").show();
			 $("#output").show();
			 $("#recycle").show();
			 $("#analysis").show();
		 }
            var grid = nui.get("datagrid1");
			var jdid = getCookie('jdid');
			var jzid = getCookie('jzid');
			nui.get('con_jdid').setValue(jdid);
       	 	nui.get('con_jzid').setValue(jzid);
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);

		function defectrender(e){
			var defect=e.row.defectdisplaynumber;
			if(defect==null){
				e.rowStyle='color:red';
				return "";
			}
			var xm=e.record.defectdisplaynumber;
			var uid=e.record._uid;
			var html='<a href="javascript:void(0)" onclick="openView2('+uid+')" >' +xm+'</a>';
			return html;
		}
		function jcRender(e){
			return nui.getDictText("YJJCFF", e.value);
		}

		//数据统计
		function analysis(){
		  var tabs = parent.parent.nui.get("mainTabs");
		  	var url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/Datastatistics.jsp";
	         var tab = { title: "数据统计 ", url: url, showCloseButton: true };
	         tab = tabs.addTab(tab);            
		     tabs.activeTab(tab);
		}
		
		$(function() {
			$('#editbtn').attr('title', "请选择需修改条目");
		});
		
		//根据模板生成动态页面(缺陷显示编号)
		function gotoPage(displaynumber,width,height,pageType,columnscode,stencilplate) {
			nui.open({
						showMaxButton: true,
						url : "/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/DynamicPage.jsp",
						title : "缺陷"+displaynumber+"列表",
						width : 1000,
						height : 570,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
							stencilplate:stencilplate,
								displaynumber:displaynumber,
								pageType : pageType,
								urlName : "com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.queryDefectsshowdetailedinformations.biz.ext",//回收
								entityVal : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation",
								columnscode :columnscode
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
						$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
							grid.reload();
						}
					});
		}
		//根据模板生成动态页面(被检部位)
		function gotoPage1(checklocation,overhaulsequence,width,height,pageType,columnscode,stencilplate) {
			nui.open({
						showMaxButton: true,
						url : "/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/DynamicPageByCheck.jsp",
						title : overhaulsequence+checklocation+"缺陷详情展示",
						width : 1000,
						height : 570,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
							stencilplate:stencilplate,
								overhaulsequence:overhaulsequence,
								checklocation:checklocation,
								pageType : pageType,
								urlName : "com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.queryDefectsshowdetailedinformations.biz.ext",
								entityVal : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation",
								columnscode :columnscode
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
						$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
							grid.reload();
						}
					});
		}
		var columnscodelslm =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'boltsnutsnumber',header : '缺陷显示所在螺栓/螺母标识号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'displayposition',header : '显示位置',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'displaysignalmagnitude',header : '显示信号幅值(V)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'signalamplitude_n1',header : '标定螺栓/螺母上人工刻伤0.5mm显示信号幅值（V）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'signalamplitude_n2',header : '标定螺栓/螺母上人工刻伤1mm显示信号幅值（V）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'signalamplitude_n3',header : '标定螺栓/螺母上人工刻伤2mm显示信号幅值（V）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodelslmlocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'boltsnutsnumber',header : '缺陷显示所在螺栓/螺母标识号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'displayposition',header : '显示位置',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'displaysignalmagnitude',header : '显示信号幅值(V)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'signalamplitude_n1',header : '标定螺栓/螺母上人工刻伤0.5mm显示信号幅值（V）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'signalamplitude_n2',header : '标定螺栓/螺母上人工刻伤1mm显示信号幅值（V）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'signalamplitude_n3',header : '标定螺栓/螺母上人工刻伤2mm显示信号幅值（V）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodecrgbobin =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'leg',header : 'LEG',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'row',header : 'ROW',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'col',header : 'COL',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'plate',header : 'PLATE',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'offset',header : 'OFFSET',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defecttype',header : 'CODE（缺陷类型）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'volts',header : 'VOLTS',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'deg',header : 'DEG',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'channel',header : 'CHANNEL',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'isplugging',header : '是否堵管',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodecrgbobinlocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'leg',header : 'LEG',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'row',header : 'ROW',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'col',header : 'COL',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'plate',header : 'PLATE',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'offset',header : 'OFFSET',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defecttype',header : 'CODE（缺陷类型）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'volts',header : 'VOLTS',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'deg',header : 'DEG',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'channel',header : 'CHANNEL',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'isplugging',header : '是否堵管',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];	
		var columnscodecrgmrpc =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'row',header : 'ROW',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'col',header : 'COL',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'plate',header : 'PLATE',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'offset',header : 'OFFSET',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defecttype',header : 'CODE（缺陷类型）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'length',header : 'Length',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'arc',header : 'Arc',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'volts',header : 'VOLTS',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'deg',header : 'DEG',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'channel',header : 'CHANNEL',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'isplugging',header : '是否堵管',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodecrgmrpclocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'row',header : 'ROW',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'col',header : 'COL',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'plate',header : 'PLATE',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'offset',header : 'OFFSET',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defecttype',header : 'CODE（缺陷类型）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'length',header : 'Length',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'arc',header : 'Arc',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'volts',header : 'VOLTS',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'deg',header : 'DEG',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'channel',header : 'CHANNEL',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'isplugging',header : '是否堵管',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodecrglkqx =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'row',header : 'ROW',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'col',header : 'COL',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'leg',header : 'LEG',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'calgroup',header : 'CALGROUP',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'acq',header : 'ACQ',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'ter',header : 'TER',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'diamaverg',header : 'DIAM. AVERG',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'diamehe',header : 'DIAM. EHE',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'positehe',header : 'POSIT.EHE',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'dv1diam',header : 'DV1 DIAM',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'dv1posit',header : 'DV1 POSIT',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'dv2diam',header : 'DV2 DIAM',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'dv2posit',header : 'DV2 POSIT',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'datafile',header : 'DATA FILE',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'isplugging',header : '是否堵管',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodecrglkqxlocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'row',header : 'ROW',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'col',header : 'COL',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'leg',header : 'LEG',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'calgroup',header : 'CALGROUP',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'acq',header : 'ACQ',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'ter',header : 'TER',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'diamaverg',header : 'DIAM. AVERG',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'diamehe',header : 'DIAM. EHE',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'positehe',header : 'POSIT.EHE',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'dv1diam',header : 'DV1 DIAM',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'dv1posit',header : 'DV1 POSIT',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'dv2diam',header : 'DV2 DIAM',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'dv2posit',header : 'DV2 POSIT',width : 100,headerAlign : "center",allowSort : true},  	
								 {field : 'datafile',header : 'DATA FILE',width : 100,headerAlign : "center",allowSort : true},  	  	
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'isplugging',header : '是否堵管',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodeztgwl =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'channelnumber',header : '通道编号',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'corelocation',header : '在堆芯内的位置',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'amplitude',header : '幅值（V）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'phase',header : '相位（°）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'weardepth',header : '磨损深度(壁厚%)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'threecharacter',header : '三字符',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'measurementchannel',header : '测量通道',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'wearlocation',header : '磨损位置',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'displacementplugging',header : '移位/堵管信息',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodeztgwllocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								{field : 'channelnumber',header : '通道编号',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'corelocation',header : '在堆芯内的位置',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'amplitude',header : '幅值（V）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'phase',header : '相位（°）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'weardepth',header : '磨损深度(壁厚%)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'threecharacter',header : '三字符',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'measurementchannel',header : '测量通道',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'wearlocation',header : '磨损位置',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'displacementplugging',header : '移位/堵管信息',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodehfsdcs =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectlength',header : '缺陷长度（mm)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectdirection',header : '缺陷方向',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'hfsda',header : 'a（mm）',width : 100,headerAlign : "center",allowSort : true}, 
								 {header: 'X(mm)',columns:[{field:'hfsdxa',header : 'A',width : 100,headerAlign : "center",allowSort : true},{field:'hfsdxb',header : 'B',width : 100,headerAlign : "center",allowSort : true}]},
								 {header: 'Y(mm)',columns:[{field:'hfsdya',header : 'A',width : 100,headerAlign : "center",allowSort : true},{field:'hfsdyb',header : 'B',width : 100,headerAlign : "center",allowSort : true},{field:'hfsdyc',header : 'C',width : 100,headerAlign : "center",allowSort : true}]},
								 {field : 'hfsdd',header : 'd(mm)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodehfsdcslocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								{field : 'defectlength',header : '缺陷长度（mm)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectdirection',header : '缺陷方向',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'hfsda',header : 'a（mm）',width : 100,headerAlign : "center",allowSort : true}, 
								 {header: 'X(mm)',columns:[{field:'hfsdxa',header : 'A',width : 100,headerAlign : "center",allowSort : true},{field:'hfsdxb',header : 'B',width : 100,headerAlign : "center",allowSort : true}]},
								 {header: 'Y(mm)',columns:[{field:'hfsdya',header : 'A',width : 100,headerAlign : "center",allowSort : true},{field:'hfsdyb',header : 'B',width : 100,headerAlign : "center",allowSort : true},{field:'hfsdyc',header : 'C',width : 100,headerAlign : "center",allowSort : true}]},
								 {field : 'hfsdd',header : 'd(mm)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true}
							   ];
	   var columnscoderplsdcs =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'wavepattern',header : '波形',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'refractionangle',header : '折射角（°）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'frequency',header : '频率（MHz)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'gr',header : 'Gr(25mm)(dB)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'gc',header : 'Gc(dB)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'hdgc',header : 'Hd-Gc(dB)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectlength',header : '缺陷长度（mm)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectdirection',header : '缺陷方向',width : 100,headerAlign : "center",allowSort : true},
								 {header: '探头位置',columns:[{field:'tty',header : 'Y(mm)',width : 100,headerAlign : "center",allowSort : true},
								 							  {field:'ttx',header : 'X(mm)',width : 100,headerAlign : "center",allowSort : true}]},
								 {header: '缺陷位置',columns:[{field:'defecty',header : 'Y(mm)',width : 100,headerAlign : "center",allowSort : true},
															  {field:'defectx',header : 'X(mm)',width : 100,headerAlign : "center",allowSort : true},
															  {field:'defectd',header : 'd(mm)',width : 100,headerAlign : "center",allowSort : true},
															  {field:'defects',header : 'S(mm)',width : 100,headerAlign : "center",allowSort : true}]},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
							   ];
		var columnscoderplsdcslocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								{field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'wavepattern',header : '波形',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'refractionangle',header : '折射角（°）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'frequency',header : '频率（MHz)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'gr',header : 'Gr(25mm)(dB)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'gc',header : 'Gc(dB)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'hdgc',header : 'Hd-Gc(dB)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectlength',header : '缺陷长度（mm)',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectdirection',header : '缺陷方向',width : 100,headerAlign : "center",allowSort : true},
								 {header: '探头位置',columns:[{field:'tty',header : 'Y(mm)',width : 100,headerAlign : "center",allowSort : true},
								 							  {field:'ttx',header : 'X(mm)',width : 100,headerAlign : "center",allowSort : true}]},
								 {header: '缺陷位置',columns:[{field:'defecty',header : 'Y(mm)',width : 100,headerAlign : "center",allowSort : true},
															  {field:'defectx',header : 'X(mm)',width : 100,headerAlign : "center",allowSort : true},
															  {field:'defectd',header : 'd(mm)',width : 100,headerAlign : "center",allowSort : true},
															  {field:'defects',header : 'S(mm)',width : 100,headerAlign : "center",allowSort : true}]},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
							   ];
		var columnscodelssdcs =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'boltidentificationnumber',header : '螺栓标识号',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'wavepattern',header : '波型',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'refractionangle',header : '折射角（°）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'frequency',header : '频率（MHz)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'hdhr',header : 'Hd-Hr(dB)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'depthposition',header : '深度位置',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'circumferentialposition',header : '周向位置',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
							   ];
		var columnscodelssdcslocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'boltidentificationnumber',header : '螺栓标识号',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'wavepattern',header : '波型',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'refractionangle',header : '折射角（°）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'frequency',header : '频率（MHz)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'hdhr',header : 'Hd-Hr(dB)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'depthposition',header : '深度位置',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'circumferentialposition',header : '周向位置',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
							   ];
		var columnscodezbflsdcs =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'keywayedgenumber',header : '键槽边缘编号',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'hb',header : 'HB(dB) 12.5%FSH',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'zbfld',header : 'D(mm)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'zbflw',header : 'W(mm)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'hd',header : 'Hd(dB) 12.5%FSH',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
							   ];
		var columnscodezbflsdcslocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'keywayedgenumber',header : '键槽边缘编号',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'hb',header : 'HB(dB) 12.5%FSH',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'zbfld',header : 'D(mm)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'zbflw',header : 'W(mm)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'hd',header : 'Hd(dB) 12.5%FSH',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
							   ];
		var columnscodezlscs =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'identificationmark',header : '受检螺栓标识',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'signalamplitudehd',header : '信号幅度Hd(dB)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'x1',header : 'X1',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'xmax',header : 'Xmax',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'x2',header : 'X2',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'ymax',header : 'Ymax',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'zmax',header : 'Zmax',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'observationresults',header : '观察结果',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
							   	 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true}
							   ];
		var columnscodezlscslocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'identificationmark',header : '受检螺栓标识',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'signalamplitudehd',header : '信号幅度Hd(dB)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'x1',header : 'X1',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'xmax',header : 'Xmax',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'x2',header : 'X2',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'ymax',header : 'Ymax',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'zmax',header : 'Zmax',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'observationresults',header : '观察结果',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
							   	 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true}
							   ];
		var columnscoderpvzdcs =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'checkdirection',header : '检查方向',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'probeangle',header : '探头角度（°）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'maximumechoamplitude',header : '最大回波幅值（dB）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'referenceamplitude',header : '参考幅值（dB）',width : 100,headerAlign : "center",allowSort : true},
								 {header: '最大幅值信号坐标（mm/°）',columns:[{field:'maxfzx',header : 'X',width : 100,headerAlign : "center",allowSort : true},
								 							  {field:'maxfzy',header : 'Y',width : 100,headerAlign : "center",allowSort : true},
								 							  {field:'maxfzz',header : 'Z',width : 100,headerAlign : "center",allowSort : true}]},
								 {header: '缺陷显示坐标范围（mm/°）',columns:[{field:'rangex1',header : 'X1',width : 100,headerAlign : "center",allowSort : true},
															  {field:'rangex2',header : 'X2',width : 100,headerAlign : "center",allowSort : true},
															  {field:'rangey1',header : 'Y1',width : 100,headerAlign : "center",allowSort : true},
															   {field:'rangey2',header : 'Y2',width : 100,headerAlign : "center",allowSort : true},
															  {field:'rangez1',header : 'Z1',width : 100,headerAlign : "center",allowSort : true},
															  {field:'rangez2',header : 'Z2',width : 100,headerAlign : "center",allowSort : true}]},
								 {field : 'diameterd',header : '被检部件直径d(mm)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
							   ];
		var columnscoderpvzdcslocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'checkdirection',header : '检查方向',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'probeangle',header : '探头角度（°）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'maximumechoamplitude',header : '最大回波幅值（dB）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'referenceamplitude',header : '参考幅值（dB）',width : 100,headerAlign : "center",allowSort : true},
								 {header: '最大幅值信号坐标（mm/°）',columns:[{field:'maxfzx',header : 'X',width : 100,headerAlign : "center",allowSort : true},
								 							  {field:'maxfzy',header : 'Y',width : 100,headerAlign : "center",allowSort : true},
								 							  {field:'maxfzz',header : 'Z',width : 100,headerAlign : "center",allowSort : true}]},
								 {header: '缺陷显示坐标范围（mm/°）',columns:[{field:'rangex1',header : 'X1',width : 100,headerAlign : "center",allowSort : true},
															  {field:'rangex2',header : 'X2',width : 100,headerAlign : "center",allowSort : true},
															  {field:'rangey1',header : 'Y1',width : 100,headerAlign : "center",allowSort : true},
															   {field:'rangey2',header : 'Y2',width : 100,headerAlign : "center",allowSort : true},
															  {field:'rangez1',header : 'Z1',width : 100,headerAlign : "center",allowSort : true},
															  {field:'rangez2',header : 'Z2',width : 100,headerAlign : "center",allowSort : true}]},
								 {field : 'diameterd',header : '被检部件直径d(mm)',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
							   ];	
		var columnscoderccazdcs =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defecttype',header : '（类型）缺陷类型',width : 100,headerAlign : "center",allowSort : true}, 
								 {header: '显示值',columns:[
								 							{header:'最小厚度(mm)',columns:[{field:'amplitude',header:'幅值(V)',width : 100,headerAlign : "center",allowSort : true}]},
								 							{header:'截面损失(%)',columns:[{field:'phase',header:'相位(°)',width : 100,headerAlign : "center",allowSort : true}]},
								 							{header:'轴向位置(mm)',field:'axialposition',header:'轴向位置(mm)',width : 100,headerAlign : "center",allowSort : true}
								 							]},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true}, 
							   ];
		var columnscoderccazdcslocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defecttype',header : '（类型）缺陷类型',width : 100,headerAlign : "center",allowSort : true}, 
								 {header: '显示值',columns:[
								 							{header:'最小厚度(mm)',columns:[{field:'amplitude',header:'幅值(V)',width : 100,headerAlign : "center",allowSort : true}]},
								 							{header:'截面损失(%)',columns:[{field:'phase',header:'相位(°)',width : 100,headerAlign : "center",allowSort : true}]},
								 							{header:'轴向位置(mm)',field:'axialposition',header:'轴向位置(mm)',width : 100,headerAlign : "center",allowSort : true}
								 							]},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true}, 
							   ];
		var columnscodepaut =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectstartlocation',header : '缺陷起始位置（mm）',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectlength',header : '缺陷长度（mm）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectheight',header : '缺陷高度（mm）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'amplitudeheight',header : '波幅高度（%）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodepautlocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								{field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectstartlocation',header : '缺陷起始位置（mm）',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectlength',header : '缺陷长度（mm）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectheight',header : '缺陷高度（mm）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'amplitudeheight',header : '波幅高度（%）',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true},
								 ];
		var columnscodert =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectsize',header : '缺陷大小',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectproperty',header : '缺陷性质',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'position',header : '位置',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodertlocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectsize',header : '缺陷大小',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectproperty',header : '缺陷性质',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'position',header : '位置',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
								 ];
		var columnscodeptmtvt =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectlocation',header : '缺陷位置',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectnumber',header : '缺陷数量',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectsize',header : '缺陷大小',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defecttype',header : '性质（缺陷类型）',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
							   ];
		var columnscodeptmtvtlocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectlocation',header : '缺陷位置',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectnumber',header : '缺陷数量',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defectsize',header : '缺陷大小',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'defecttype',header : '性质（缺陷类型）',width : 100,headerAlign : "center",allowSort : true},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true} 
								 ];
								 
		var columnscodecctv =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'overhaulsequence',header : '大修轮次',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true}, 
								 {header: '机器坐标（顶盖）',columns:[{field:'topcover1',header : '1#',width : 100,headerAlign : "center",allowSort : true},
															  {field:'topcover2',header : '2#',width : 100,headerAlign : "center",allowSort : true},
															  {field:'topcover3',header : '3#',width : 100,headerAlign : "center",allowSort : true},
															   {field:'topcover5',header : '5#',width : 100,headerAlign : "center",allowSort : true},
															  {field:'topcover6',header : '6#',width : 100,headerAlign : "center",allowSort : true},
															  {field:'topcover7',header : '7#',width : 100,headerAlign : "center",allowSort : true}]},
								 {header: '稳压器/蒸发器',columns:[{field:'machinecoordinates',header:'机器坐标',width : 100,headerAlign : "center",allowSort : true},
								 									{field:'actualcoordinates',header:'机器坐标',width : 100,headerAlign : "center",allowSort : true}
								 									]},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true},
								  {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true},
							   ];
		var columnscodecctvlocation =  [ {type : "indexcolumn"}, {type : "checkcolumn"}, {field : "uuid",width : 100,headerAlign : "center",allowSort : true,header : "uuid",visible : false}, 
								 {field : 'defectdisplaynumber',header : '缺陷显示编号',width : 100,headerAlign : "center",allowSort : true}, 
								 {field : 'defecttype',header : '缺陷类型',width : 100,headerAlign : "center",allowSort : true}, 
								 {header: '机器坐标（顶盖）',columns:[{field:'topcover1',header : '1#',width : 100,headerAlign : "center",allowSort : true},
															  {field:'topcover2',header : '2#',width : 100,headerAlign : "center",allowSort : true},
															  {field:'topcover3',header : '3#',width : 100,headerAlign : "center",allowSort : true},
															   {field:'topcover5',header : '5#',width : 100,headerAlign : "center",allowSort : true},
															  {field:'topcover6',header : '6#',width : 100,headerAlign : "center",allowSort : true},
															  {field:'topcover7',header : '7#',width : 100,headerAlign : "center",allowSort : true}]},
								 {header: '稳压器/蒸发器',columns:[{field:'machinecoordinates',header:'机器坐标',width : 100,headerAlign : "center",allowSort : true},
								 									{field:'actualcoordinates',header:'机器坐标',width : 100,headerAlign : "center",allowSort : true}
								 									]},
								 {field : 'influence',header : '是否超标缺陷',width : 100,headerAlign : "center",allowSort : true},
								  {field : 'templeremark',header : '备注',width : 100,headerAlign : "center",allowSort : true},
							   ];					 
								 
			//回收站
		function recycle() {
			nui
					.open({
						showMaxButton: true,
						url : "/itmp/common/recyclebin/recyclebinattach.jsp",
						title : "回收站",
						width : 1000,
						height : 570,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								recyclebinFlag : "defected",
								pageType : "DefectsshowdetailedinformationList",
								stencilplate : stencilplate,
								urlName : "com.cgn.itmp.inspectcomponentmanage.defectsshowdetailedinformationbiz.queryDefectsshowdetailedinformations.biz.ext",
								entityVal : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation",
								removeUrl : "com.cgn.itmp.weldingmanagement.common.delete.biz.ext",
								recoveryUrl : "com.cgn.itmp.inspectcomponentmanage.equipmentbaseinformationbiz.recovery.biz.ext",//恢复
								columnscode : [ {
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
									field : 'overhaulsequence',
									header : '大修轮次',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'equipmentname',
									header : '设备名称',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'componentname',
									header : '部件名称',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'checklocation',
									header : '被检部位',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'inspectioncontent',
									header : '检查内容',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'inspectionmethod',
									header : '检查方法',
									width : 100,
									headerAlign : "center",
									allowSort : true,
									dic:"YJJCFF",
									renderer:"stateRender"
								}, {
									field : 'defectdisplaynumber',
									header : '缺陷显示编号',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'deleteperson',
									header : '删除人',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'deletetime',
									header : '删除时间',
									width : 100,
									headerAlign : "center",
									dateFormat : "yyyy-MM-dd HH:mm:ss",
									allowSort : true
								} ],
							};//传入页面的json数据
							iframe.contentWindow.setFormData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
						$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
							grid.reload();
						}
					});
		}
			//单条新增
			function add(){
			var row = grid.getSelected();
			var rows = grid.getSelecteds();
			if(ids==""){
			
				if(rows.length>1){
				nui.alert("请选中一条数据!");
				return;
				}
                if (row) {
                var pageType=row.stencilplate;
                var url="";
                var width=990;
                var height=383;
                if(pageType=="lslm"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/lslmtemple/LslmTemple.jsp";
                }else
                if(pageType=="crgbobbin"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/crgbobbintemple/CrgboboinTemple.jsp";
                }else
                if(pageType=="crgmrpc"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/crgmrpc/CrgmrpcTemple.jsp";
                }else
                if(pageType=="crglkqx"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/crglkqxtemple/CrglkqxTemple.jsp";
                }else
				if(pageType=="ztgwl"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ztgwltemple/ZtgwlTemple.jsp";
                }else
                if(pageType=="hfsdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/hfsdcstemple/HfsdcsTemple.jsp";
                }else
                if(pageType=="rplsdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rplsdcstemple/RplsdcsTemple.jsp";
                }else
                if(pageType=="lssdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/lssdcstemple/LssdcsTemple.jsp";
                }else
                if(pageType=="zbflsdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/zbflsdcstemple/ZbflsdcsTemple.jsp";
                }else
                if(pageType=="zlscs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/zlscstemple/ZlscsTemple.jsp";
                }else
                if(pageType=="rpvzdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rpvzdcstemple/RpvzdcsTemple.jsp";
                }else
                if(pageType=="rccazdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rccazdcstemple/RccazdcsTemple.jsp";
                }else
                if(pageType=="paut"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/pauttemple/PautTemple.jsp";
                }  else
                if(pageType=="rt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rttemple/RtTemple.jsp";
                }else
                if(pageType=="pt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ptvtmttemple/PtTemple.jsp";
                }else
                if(pageType=="vt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ptvtmttemple/VtTemple.jsp";
                } else
                if(pageType=="mt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ptvtmttemple/MtTemple.jsp";
                } else
                 if(pageType=="cctv"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/Cctvtemple/CctvTemple.jsp";
                }           
				nui.open({
				 	showMaxButton: true,
					url:url,
					title: "新增数据", width: width, height: height,
					 onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:pageType,record:{defectsshowdetailedinformation:row}};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    $("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
                    grid.reload();
                }
				})
			}else{
				nui.alert("请选择一条数据作为模板新增");
			}
			}else{
			 
				var pageType=ids;
                var url="";
                var width=990;
                var height=383;
                if(pageType=="lslm"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/lslmtemple/LslmTemple.jsp";
                }else
                if(pageType=="crgbobbin"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/crgbobbintemple/CrgboboinTemple.jsp";
                }else
                if(pageType=="crgmrpc"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/crgmrpc/CrgmrpcTemple.jsp";
                }else
                if(pageType=="crglkqx"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/crglkqxtemple/CrglkqxTemple.jsp";
                }else
				if(pageType=="ztgwl"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ztgwltemple/ZtgwlTemple.jsp";
                }else
                if(pageType=="hfsdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/hfsdcstemple/HfsdcsTemple.jsp";
                }else
                if(pageType=="rplsdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rplsdcstemple/RplsdcsTemple.jsp";
                }else
                if(pageType=="lssdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/lssdcstemple/LssdcsTemple.jsp";
                }else
                if(pageType=="zbflsdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/zbflsdcstemple/ZbflsdcsTemple.jsp";
                }else
                if(pageType=="zlscs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/zlscstemple/ZlscsTemple.jsp";
                }else
                if(pageType=="rpvzdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rpvzdcstemple/RpvzdcsTemple.jsp";
                }else
                if(pageType=="rccazdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rccazdcstemple/RccazdcsTemple.jsp";
                }else
                if(pageType=="paut"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/pauttemple/PautTemple.jsp";
                }  else
                if(pageType=="rt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rttemple/RtTemple.jsp";
                }else
                if(pageType=="pt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ptvtmttemple/PtTemple.jsp";
                }else
                if(pageType=="vt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ptvtmttemple/VtTemple.jsp";
                } else
                if(pageType=="mt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ptvtmttemple/MtTemple.jsp";
                } else
                 if(pageType=="cctv"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/Cctvtemple/CctvTemple.jsp";
                }           
				nui.open({
				 	showMaxButton: true,
					url:url,
					title: "新增数据", width: width, height: height,
					 onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:pageType,record:{defectsshowdetailedinformation:row}};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    $("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
                    grid.reload();
                }
				})
			}
			}
            //批量新增
            function batchAdd() {
                nui.open({
                	 showMaxButton: true,
                    url: "/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/TreeSelect.jsp",
                    title: "选择模板", width: 343, height: 601,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"batchadd"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    $("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
                    grid.reload();
                }
                });
            }

            //编辑
            function edit() {
                var row = grid.getSelected();
                if (row) {
                	 var pageType=row.stencilplate;
                var url="";
                var	width=990;
                var	height=383;
                if(pageType=="lslm"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/lslmtemple/LslmTemple.jsp";
                }else   if(pageType=="crgbobbin"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/crgbobbintemple/CrgboboinTemple.jsp";
                }else     if(pageType=="crgmrpc"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/crgmrpc/CrgmrpcTemple.jsp";
                }else
                if(pageType=="crglkqx"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/crglkqxtemple/CrglkqxTemple.jsp";
                }else
                if(pageType=="ztgwl"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ztgwltemple/ZtgwlTemple.jsp";
                } else
                if(pageType=="hfsdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/hfsdcstemple/HfsdcsTemple.jsp";
                } else
                 if(pageType=="rplsdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rplsdcstemple/RplsdcsTemple.jsp";
                } else
                if(pageType=="lssdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/lssdcstemple/LssdcsTemple.jsp";
                }    else
                if(pageType=="zbflsdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/zbflsdcstemple/ZbflsdcsTemple.jsp";
                } else
                if(pageType=="zlscs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/zlscstemple/ZlscsTemple.jsp";
                } else
                if(pageType=="rpvzdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rpvzdcstemple/RpvzdcsTemple.jsp";
                } else
                if(pageType=="rccazdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rccazdcstemple/RccazdcsTemple.jsp";
                } else
                if(pageType=="paut"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/pauttemple/PautTemple.jsp";
                } else
                 if(pageType=="rt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rttemple/RtTemple.jsp";
                } else
                if(pageType=="pt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ptvtmttemple/PtTemple.jsp";
                } else
                if(pageType=="vt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ptvtmttemple/VtTemple.jsp";
                } else
                if(pageType=="mt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ptvtmttemple/MtTemple.jsp";
                } else
                if(pageType=="cctv"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/Cctvtemple/CctvTemple.jsp";
                }            
                    nui.open({
                    	 showMaxButton: true,
                        url: url,
                        title: "编辑数据",
                        width: width,
                        height: height,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{defectsshowdetailedinformation:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                            $("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
                                grid.reload();
                            }
                            });
                        } else {
                            nui.alert("请选中一条记录","提示");
                        }
                    }
                    
		function setHref(e){
			var xm=e.record.handle;
			var uid=e.record._uid;
			var html='<a href="javascript:void(0)" onclick="openView('+uid+')" >' +xm+'</a>';
			return html;
		}
		
		function openView(uid){
			var row=grid.getRowByUID(uid);
			var pageType=row.stencilplate;
			var url="";
			if(pageType=="lslm"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/lslmtemple/LslmShow.jsp";
                }else
               if(pageType=="crgbobbin"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/crgbobbintemple/CrgboboinShow.jsp";
                }else
                if(pageType=="crgmrpc"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/crgmrpc/CrgmrpcShow.jsp";
                }else
               if(pageType=="crglkqx"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/crglkqxtemple/CrglkqxShow.jsp";
                }else
                if(pageType=="ztgwl"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ztgwltemple/ZtgwlShow.jsp";
                }     else
                if(pageType=="hfsdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/hfsdcstemple/HfsdcsShow.jsp";
                } else
                if(pageType=="rplsdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rplsdcstemple/RplsdcsShow.jsp";
                }else
                if(pageType=="lssdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/lssdcstemple/LssdcsShow.jsp";
                } else
                   if(pageType=="zbflsdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/zbflsdcstemple/ZbflsdcsShow.jsp";
                }else
                if(pageType=="zlscs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/zlscstemple/ZlscsShow.jsp";
                }else
                if(pageType=="rpvzdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rpvzdcstemple/RpvzdcsShow.jsp";
                }else
                if(pageType=="rccazdcs"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rccazdcstemple/RccazdcsShow.jsp";
                }else
                if(pageType=="paut"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/pauttemple/PautShow.jsp";
                }else
                 if(pageType=="rt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/rttemple/RtShow.jsp";
                }else
                if(pageType=="pt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ptvtmttemple/PtShow.jsp";
                }else
                if(pageType=="vt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ptvtmttemple/VtShow.jsp";
                } else
                if(pageType=="mt"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/ptvtmttemple/MtShow.jsp";
                } else
                if(pageType=="cctv"){
                 url="/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/Cctvtemple/CctvShow.jsp";
                }               
			nui.open({
				showMaxButton: true,
					url : url,
					title : "数据详情",
					width : 990,
					height : 393,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record : {
								defectsshowdetailedinformation:row
							}
						};
						//直接从页面获取，不用去后台获取
						iframe.contentWindow.setFormData(data);
					},
					ondestroy : function(action) {
					$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
						grid.reload();
					}
				});
		}	
		//被检部位
		function setHref1(e){
			var xm=e.record.checklocation;
			var uid=e.record._uid;
			var html='<a href="javascript:void(0)" onclick="openView1('+uid+')" >' +xm+'</a>';
			return html;
		}
		
		function openView1(uid){
			var row=grid.getRowByUID(uid);
			var checklocation=row.checklocation;
			var overhaulsequence=row.overhaulsequence;
			var pageType=row.stencilplate;
				if(pageType=="lslm"){
				gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodelslmlocation,"lslm");
				}else
				 if(pageType=="crgbobbin"){
				 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodecrgbobinlocation,"crgbobbin");
				 }else
				 if(pageType=="crgmrpc"){
				 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodecrgmrpclocation,"crgmrpc");
				 }else
				 if(pageType=="crglkqx"){
				 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodecrglkqxlocation,"crglkqx");
				 }else
				 if(pageType=="ztgwl"){
				 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodeztgwllocation,"ztgwl");
				 }else
				 if(pageType=="hfsdcs"){
				 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodehfsdcslocation,"hfsdcs");
				 }else
				  if(pageType=="rplsdcs"){
				 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscoderplsdcslocation,"rplsdcs");
				 }else
				 if(pageType=="lssdcs"){
				  gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodelssdcslocation,"lssdcs");
				 }else
				 if(pageType=="zbflsdcs"){
				 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodezbflsdcslocation,"zbflsdcs");
                }else
                if(pageType=="zlscs"){
                 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodezlscslocation,"zlscs");
                }else
                 if(pageType=="rpvzdcs"){
                 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscoderpvzdcslocation,"rpvzdcs");
                }else
                if(pageType=="rccazdcs"){
                 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscoderccazdcslocation,"rccazdcs");
                }else
                if(pageType=="paut"){
                 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodepautlocation,"paut");
                }else
                if(pageType=="rt"){
                 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodertlocation,"rt");
                }else
                if(pageType=="pt"){
                 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodeptmtvtlocation,"pt");
                }else
                 if(pageType=="mt"){
                 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodeptmtvtlocation,"mt");
                }else
                 if(pageType=="vt"){
                 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodeptmtvtlocation,"vt");
                }else
                if(pageType=="cctv"){
                 gotoPage1(checklocation,overhaulsequence,"1000","570",pageType,columnscodecctvlocation,"cctv");
                } 
		}	
		
		//缺陷显示编号
		function openView2(uid){
		var row=grid.getRowByUID(uid);
		var defectdisplaynumber=row.defectdisplaynumber;
		var pageType=row.stencilplate;
			if(pageType=="lslm"){
			gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodelslm,"lslm");
			}else
			 if(pageType=="crgbobbin"){
			 gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodecrgbobin,"crgbobbin");
			 }else
			  if(pageType=="crgmrpc"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodecrgmrpc,"crgmrpc");
	        }else
	        if(pageType=="crglkqx"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodecrglkqx,"crglkqx");
	        }else
	        if(pageType=="ztgwl"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodeztgwl,"ztgwl");
	        }else
	        if(pageType=="hfsdcs"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodehfsdcs,"hfsdcs");
	        }else
	        if(pageType=="rplsdcs"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscoderplsdcs,"rplsdcs");
	        }else
	        if(pageType=="lssdcs"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodelssdcs,"lssdcs");
	        }else
	        if(pageType=="zbflsdcs"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodezbflsdcs,"zbflsdcs");
	        }else
	        if(pageType=="zlscs"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodezlscs,"zlscs");
	        }else
	        if(pageType=="rpvzdcs"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscoderpvzdcs,"rpvzdcs");
	        }else
	        if(pageType=="rccazdcs"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscoderccazdcs,"rccazdcs");
	        }else
	        if(pageType=="paut"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodepaut,"paut");
	        } else
	        if(pageType=="rt"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodert,"rt");
	        } else
	        if(pageType=="pt"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodeptmtvt,"pt");
	        } else
	        if(pageType=="vt"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodeptmtvt,"vt");
	        } else
	        if(pageType=="mt"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodeptmtvt,"mt");
	        } else
	         if(pageType=="cctv"){
	         gotoPage(defectdisplaynumber,"1000","570",pageType,columnscodecctv,"cctv");
	        } 
		}
					//导出
		function output() {
		 if(grid.data.length==0){
		 	nui.alert("没有数据可以导出!");
		 	return;
		 }
			var form = new nui.Form("#form1");
			
			var json = form.getData(false, false);
			nui.open({
				showMaxButton : true,
				url : "/itmp/basecommon/importExcelComm/expSelectFiled.jsp",
				title : "导出数据",
				width : 350,
				height : 200,
				onload : function() {//弹出页面加载完成
					var iframe = this.getIFrameEl();
					var data = {
						entityName : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation",
						queryParam : json, //查询数据
						queryKey : 'criteria', //查询实体名
						query : [ 'overhaulsequence','equipmentname','componentname','checklocation','inspectioncontent','inspectionmethod','defectdisplaynumber', 'isdel', 'jd','jz','stencilplate'], //按顺序放置
						filterField : ['fileRelativePath','jd','jz', 'orderindex','uuid', 'isdel', 'fj', 'deletetime',
								'deleteperson', 'yjjsr', 'dxlc', 'fildid', 'fileId',
								'fileRealName', 'filePath', 'fileSize',
								'fileType', 'fileUploadTime', 'fileUploadUser',
								'deleteperson','deletetime','handle','createtime','inserttime','nullorder',
								'leg','row','col','plate','offset','code','volts','deg','channel',
								'isplugging','length','arc','calgroup','acq','ter','diamaverg','diamehe',
								'positehe','dv1diam','dv1posit','dv2diam','dv2posit','datafile','channelnumber',
								'corelocation','amplitude','phase','weardepth','threecharacter','wearlocation',
								'displacementplugging','measurementchannel','defectlength','defectdirection','defecttype',
								'hfsda','hfsdxa','hfsdxb','hfsdya','hfsdyb','hfsdyc','hfsdd','wavepattern','refractionangle',
								'frequency','gr','gc','hdgc','tty','ttx','defecty','defectx','defectd','defects','boltidentificationnumber',
								'hdhr','depthposition','circumferentialposition','keywayedgenumber','hb','zbfld','zbflw','hd','identificationmark',
								'signalamplitudehd','x1','xmax','x2','ymax','zmax','observationresults','checkdirection','probeangle',
								'maximumechoamplitude','referenceamplitude','maxfzx','maxfzy','maxfzz','rangex1','rangex2','rangey1','rangey2',
								'rangez1','rangez2','diameterd','axialposition','defectstartlocation','defectheight','amplitudeheight',
								'defectlocation','defectsize','defectproperty','position','defectnumber','topcover1','topcover2','topcover3',
								'topcover5','topcover6','topcover7','machinecoordinates','actualcoordinates','templeremark','stencilplate','boltsnutsnumber',
								'displayposition','displaysignalmagnitude',
								'signalamplitude_n1','signalamplitude_n2',
								'signalamplitude_n3','influence','templeremark',
								'fileNewName', ],
						expTitle : "缺陷显示详情信息",
						dicFieds : "inspectionmethod@YJJCFF",
						jdFieds : "jd",
						jzFieds : "jz",
						order:"nullorder@desc,defectdisplaynumber@asc,inserttime@desc,createtime@asc"
					};//传入页面的json数据
					iframe.contentWindow.setFormData(data);
				},
				ondestroy : function(action) {//弹出页面关闭前
				$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
					grid.reload();
				}
			});
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
													entity : "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.defectsshowdetailedinformation.Defectsshowdetailedinformation",
													token:"<%=TokenUtil.getTokenString(request.getSession())%>"
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
								
								/* function showquery() {
								var div = $("#form1");
								div.slideToggle(500);
								$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
								} */
		
									
                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    //nui.get("update").enable();
                                }

                                //查询
                                function searchs() {
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    $("#editbtn").prop("disabled", "disabled");
									$("#delebtn").prop("disabled", "disabled");
                                }

                                //重置查询条件
                                function reset(){
                                	$("#cond").val('');
                                    var form = new nui.Form("#form1");//将普通form转为nui的form
                                    form.reset();
                                    nui.get('con_jdid').setValue(jdid);
		        					nui.get('con_jzid').setValue(jzid);	
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    searchs();
                                }

                                //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                    if(rows.length>1){
                                       /*  nui.get("update").disable(); */
                                    }else{
                                        /* nui.get("update").enable(); */
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
								
	//高级搜索上下拉动时显示文字控制
		function btnText(query, html) {
			var html = "";
			if (query.css("display") == "none") {
				html = "返回";
			} else {
				html = "高级搜索";
			}
			query.slideToggle();
			return html;
		}
		//仅按照名称搜索
		function btnQuery() {
			var gjz = $("#cond").val();
			if (gjz == "") {
				refresh();
				// 				nui.get("update").disable();
			} else {
				var data = {
					matchFied : "overhaulsequence,equipmentname,componentname,checklocation,inspectioncontent,inspectionmethod,defectdisplaynumber,defecttype",
					dicFied : "inspectionmethod@YJJCFF",
					wordVal : $("#cond").val(),
					entity : $("input[name='criteria/_entity']").val(),
					entityName : 'criteria',
					sfdel : true,
					jdInfo : 'jd@' + getCookie('jdid'),
					jzInfo : 'jz@' + getCookie('jzid')
				};
				var query = nui.decode(getKeyWordQuery(data));
				query["criteria/_expr[9]/isdel"] = "0";
				query["criteria/_orderby[1]/_property"] = "createtime";
				query["criteria/_orderby[1]/_sort"] = "asc";
				grid.load(query);
				// 				nui.get("update").disable();
			}
		}
		//菜单点击事件
		function onNodeSelect(e) {
		 
			var node = e.node;
			var isLeaf = e.isLeaf;
			if(typeof(node.pid)=="undefined"&&node.id!="et"&&node.id!="ut"){
				searchInfoOne();
			}else{
				if (node.id!="et"&&node.id!="ut") {
// // 				searchInfoThree();
// 				}else{
				searchInfoTwo();
				}
			}
			  

			
		}
		function onBeforeExpand(e) {
			var tree1 = e.sender;
			var nowNode = e.node;
			var level = tree1.getLevel(nowNode);
			var root = tree1.getRootNode();
			tree1.cascadeChild(root, function(node) {
				if (tree1.isExpandedNode(node)) {
					var level2 = tree1.getLevel(node);
					if (node != nowNode && !tree1.isAncestor(node, nowNode)
							&& level == level2) {
						tree1.collapseNode(node, true);
					}
				}
			});

		}
		function onBeforeNodeSelect(e) {
            var tree = e.sender;
            var node = e.node;
            /* if (tree.hasChildren(node)) {
                e.cancel = true;
            } */
        }
         //树点击查询 一级节点
		function searchInfoOne(e){
		 
			var tree = mini.get("tree1");
            var node = tree.getSelectedNode();
            if (node) {
	            var form = new nui.Form("#form1");
				form.jd = jdid;
				form.jz = jzid;
				var data = form.getData(false, false);
// 				nui.get("devicename").setValue(node.text);
				data["criteria/_expr[12]/stencilplate"]=node.id;
				data["criteria/_expr[9]/isdel"] = "0";
				grid.load(data);//grid查询
				ids=node.id;
            }
		}
		
        //树点击查询 二级节点
		function searchInfoTwo(e){
		 
			var tree = mini.get("tree1");
            var node = tree.getSelectedNode();
            if (node) {
	            var form = new nui.Form("#form1");
				form.jd = jdid;
				form.jz = jzid;
				var data = form.getData(false, false);
// 				nui.get("partname").setValue(node.text);
				stencilplate = node.id;
				data["criteria/_expr[12]/stencilplate"]=node.id;
				data["criteria/_expr[9]/isdel"] = "0";
				grid.load(data);//grid查询
				ids=node.id;
            }
		}
        
// 		//树点击查询 三级节点
// 		function searchInfoThree(e){
// 			var tree = mini.get("tree1");
//             var node = tree.getSelectedNode();
//             if (node) {
// 	            var form = new nui.Form("#form1");
// 				form.jd = jdid;
// 				form.jz = jzid;
// 				var data = form.getData(false, false);
// // 				nui.get("detectedsite").setValue(node.text);
// 				data["criteria/_expr[3]/detectedsite"] = node.text;
// 				data["criteria/_expr[2]/partname"] = "";
// 				data["criteria/_expr[1]/devicename"] = "";
// 				data["criteria/_expr[6]/isdel"] = "0";
// 				grid.load(data);//grid查询
//             }
// 		}
    var tip = new nui.ToolTip();
//     mini-grid-row mini-tree-selectedNode
    $('#tree1 table').mouseover(function(){
    	 
    });
                            </script>
                        </body>
                    </html>
