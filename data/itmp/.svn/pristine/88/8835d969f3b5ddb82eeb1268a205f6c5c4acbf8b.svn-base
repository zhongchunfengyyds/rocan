<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): jirukang
- Date: 2019-11-05 11:20:56
- Description:锅炉查询
    --%>
    <head>
        <title>
            锅炉查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
    </head>
    <body style="background-color:#f1f1f1;width:98%;height:97%;">
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
					<div id="form1" class="nui-form displaynone" align="center"
						style="height: 27px">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler">
						<!-- 排序字段 -->
						
							<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="createtime">
						<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						<input class="nui-hidden" name="criteria/_orderby[2]/_property" value="orderno">
						<input class="nui-hidden" name="criteria/_orderby[2]/_sort" value="asc">
						<table id="table1" class="table" style="height: 100%">
							 <tr>
								<td class="form_label">
									设备名称:
								</td>
								<td colspan="1">
									<input class="nui-textbox" name="criteria/_expr[1]/equipmentname"/>
									<input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
								</td>
								<td class="form_label">
									设备编号:
								</td>
								<td colspan="1">
									<input class="nui-textbox" name="criteria/_expr[2]/equipmentnumber"/>
									<input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
									<input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
								</td>
								<td style="display:none;" colspan="0">
									<input class="nui-hidden" name="criteria/_expr[3]/isdel" value="0" />
									<input class="nui-hidden" name="criteria/_expr[3]/_op" value="=">
									<input class="nui-hidden" name="criteria/_expr[4]/jd" value="" /> 
									<input id="con_jdid" class="nui-hidden" name="criteria/_expr[4]/_op" value="=">
									<input class="nui-hidden" id="con_jzid" name="criteria/_expr[5]/jz" value="" /> 
									<input class="nui-hidden" name="criteria/_expr[5]/_op" value="=">
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="width: 100%; height: 92%;" showToolbar="false"
		showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0; padding:5px 0px;">
			<table style="width: 100%;">
				<tr>
					<td style="width: 100%;">
						<button id="addallbut" style="position: relative;" class="btn btn-default"
							onclick="openAllAdd()">
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
							导出
						</button>
						<button class="btn btn-default" type="button" onclick="recycle()" id="recycle">
							<b:message key="btn-recycle" />
						</button>
					</td>
				</tr>
			</table>
		</div>
	
            <div class="nui-fit">
                <div id="datagrid1" dataField="boilers" class="nui-datagrid" 
                style="width:100%;height:100%;" 
                url="com.cgn.itmp.conventionalislandand.boilerbiz.queryBoilersAll.biz.ext" 
                pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true" 
                onselectionchanged="selectionChanged" allowSortColumn="false">
                    <div property="columns">
                        <div type="indexcolumn">
                        </div>
                        <div type="checkcolumn">
                        </div>
                        <div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="jd" headerAlign="center" allowSort="true"  visible="false" >
                            基地
                        </div>
                        <div field="jz" headerAlign="center" allowSort="true"  visible="false">
                            机组
                        </div>
                        <div field="equipmenttype" headerAlign="center" allowSort="true" >
                            设备类型
                        </div>
                        <div field="system" headerAlign="center" allowSort="true" renderer="renderSystem">
                            系统
                        </div>
                        <div field="equipmentnumber" headerAlign="center" allowSort="true" renderer="show">
                            设备编号
                        </div>
                        <div field="equipmentname" headerAlign="center" allowSort="true" >
                            设备名称
                        </div>
                        <div field="equipmentdiagram" headerAlign="center" allowSort="true" renderer="setFile1">
                            设备示意图
                        </div>
                        <div field="thicknessmeasurementpointlayout" headerAlign="center" allowSort="true" renderer="setFile2">
                            测厚布点图
                        </div>
                        <div field="createtime" headerAlign="center" allowSort="true" visible="false">
                            创建时间
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            accessControlButton('<%=userRoleCodeList%>',7);
             if ('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") < 0 &&'<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") <0) {
				 $("#recycle").hide();
			 }else if('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") > 0 &&'<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") <0){
		 	$("#delebtn").hide();
		 	$("#recycle").hide();
		 }
		 if('<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") > 0){
		 	$("#delebtn").show();
		 	$("#recycle").show();
		 }
            var grid = nui.get("datagrid1");
				var jdid = getCookie('jdid');
				var jzid = getCookie('jzid');
				nui.get('con_jdid').setValue(jdid);
		        nui.get('con_jzid').setValue(jzid);
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
		$(function() {
			$('#editbtn').attr('title', "请选择需修改条目");
		});
		
		function renderSystem(e){
			return nui.getDictText('GLXT',e.value);
		}
		
		
            //新增
            function add() {
                nui.open({
                	showMaxButton : true,
                    url: "/itmp/conventionalislandand/BasicTechnicalInformation/Boiler/BoilerForm.jsp",
                    title: "新增记录", width: "70%", height: "60%",
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
			//批量添加
		function batchAdd() {
			nui
					.open({
						showMaxButton : true,
						url : "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
						title : "新增记录",
						width : 600,
						height : 300,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								pageType : "batchAdd",
								tempFileName : "boiler.xlsx",
								tempLoadName : "锅炉",
								entitfName : "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler"
							};//传入页面的json数据
							iframe.contentWindow.SetData(data);
						},
						ondestroy : function(action) {//弹出页面关闭前
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
                //判断是否为流程中数据
						if(fordata()){
								return;
						}
                    nui.open({
                    	showMaxButton : true,
                        url: "/itmp/conventionalislandand/BasicTechnicalInformation/Boiler/BoilerForm.jsp",
                        title: "编辑数据",
                        width: "70%",
                        height: "50%",
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{boiler:row}};
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
                    
      
           //遍历所选数据
          function fordata(){
          	var data = grid.getSelecteds();
          	var list=new Array();
          	var focds="";
          	if(data){
          		for(var i=0;i<data.length;i++){
          			if(data[i].processStatus=="0"){
		          		focds+="锅炉设备编号为["+data[i].equipmentnumber+"]正在[修改]流程中<br>";
          			}
          		}
          	}
          	if(focds==""){
          		return false;
          	}else{
	          	nui.alert(focds+"请待审批结束后再进行操作", "提示");
          		return true;
          	}
          }           
					//删除
		function remove() {
			var rows = grid.getSelecteds();
			//判断是否为流程中数据
			if (rows.length > 0) {
				if(fordata()){
						return;
				}
				nui.confirm(
								"确定删除选中记录？",
								"系统提示",
								function(action) {
									if (action == "ok") {
										var json = nui.encode({
													data : rows,
													entity : "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
												});
										grid.loading("正在删除中,请稍等...");
										$.ajax({
													url : "com.cgn.itmp.knowledgebase.tinencyclopediabiz.deleteKnowledge.biz.ext",
													type : 'POST',
													data : json,
													cache : false,
													contentType : 'text/json',
													success : function(text) {
													$("#editbtn").prop("disabled", "disabled");
				$("#delebtn").prop("disabled", "disabled");
														var returnJson = nui
																.decode(text);
														if (returnJson.exception == null) {
															grid.reload();
															nui.alert(
																			"删除成功",
																			"系统提示",
																			function(
																					action) {
																			});
														} else {
															grid.unmask();
															nui.alert("删除失败",
																	"系统提示");
														}
													}
												});
									}
								});
			} else {
				nui.alert("请选中一条记录！");
			}
			
		}

		//回收站
		function recycle() {
			nui
					.open({
						showMaxButton : true,
						url : "/itmp/common/recyclebin/recyclebinattachBoiler.jsp",
						title : "回收站",
						width : '60%',
						height : 400,
						onload : function() {//弹出页面加载完成
							var iframe = this.getIFrameEl();
							var data = {
								recyclebinFlag : "base",
								pageType : "recyclebin",
								urlName : "com.cgn.itmp.conventionalislandand.boilerbiz.queryBoilersAll.biz.ext",//回收
								entityVal : "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler",
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
									field : "thicknessmeasurefileid",
									width : 100,
									headerAlign : "center",
									allowSort : true,
									header : "thicknessmeasurefileid",
									visible : false
								}, {
									field : "equipmentdiagramfileid",
									width : 100,
									headerAlign : "center",
									allowSort : true,
									header : "equipmentdiagramfileid",
									visible : false
								}, {
									field : 'equipmenttype',
									header : '设备类型',
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
									field : 'system',
									header : '系统',
									width : 100,
									headerAlign : "center",
									allowSort : true,
									dic:"GLXT",
									renderer:"stateRender"
								}, {
									field : 'equipmentnumber',
									header : '设备编号',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'equipmentmodel',
									header : '设备型号',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'boilerregistrationcard',
									header : '锅炉登记卡',
									width : 100,
									headerAlign : "center",
									allowSort : true
								}, {
									field : 'equipmentdiagram',
									header : '设备示意图',
									width : 100,
									headerAlign : "center",
									allowSort : true,
									renderer:"setFile1"
								}, {
									field : 'thicknessmeasurementpointlayout',
									header : '测厚布点图',
									width : 100,
									headerAlign : "center",
									allowSort : true,
									renderer:"setFile2"
								},{
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
						
		function show(e){
			var xm=e.record.equipmentnumber;
			var uid=e.record._uid;
			var html='<a href="javascript:void(0)" onclick="openView('+uid+')" >' +xm+'</a>';
			return html;
		}
		function openView(uid){
			var row=grid.getRowByUID(uid);
			nui.open({
				showMaxButton: true,
					url : "/itmp/conventionalislandand/BasicTechnicalInformation/Boiler/BoilerShowForm.jsp",
					title : "数据详情",
					width : "70%",
					height : 400,
					onload : function() {
						var iframe = this.getIFrameEl();
						var data = {
							pageType : "edit",
							record:{boiler:row}
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
				url : "/itmp/basecommon/importExcelComm/expSelectFiledAndAttachMultiple.jsp",
				title : "导出数据",
				width : 350,
				height : 400,
				onload : function() {//弹出页面加载完成
					var iframe = this.getIFrameEl();
					var data = {
						entityName : "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler",
						queryParam : json, //查询数据
						attachFied : '',
						queryKey : 'criteria', //查询实体名
						query : ['equipmentname','equipmentnumber','isdel','jd','jz'], //按顺序放置
						filterField : ['fileRelativePath','jd','jz', 'orderindex','uuid', 'isdel','deletetime','createtime','ccry','jhry','processInstId','inserttime'
								,'processStatus','applicant','changeReasons','applicanttime','thicknessmeasurefileid','equipmentdiagramfileid','equipmentdiagramfilepath','thicknessmeasurefilepath',
								'deleteperson', 'yjjsr', 'dxlc', 'fildid', 'fileId','filename','filepath','filename1','createtime',
								'filepath1','filename2','filepath2',
								'fileRealName', 'filePath', 'fileSize','processInstId','jhry','ccry',
								'fileType', 'fileUploadTime', 'fileUploadUser','orderno',
								'fileNewName' ],
						expTitle : "锅炉",
						dicFieds : "system@GLXT",
						jdFieds : "jd",
						jzFieds : "jz",
						attachFied : "equipmentdiagramfileid@equipmentdiagram,thicknessmeasurefileid@thicknessmeasurementpointlayout",
						mode:"ftp",
						order:"createtime@desc,orderno@asc"
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
					matchFied : "equipmenttype,equipmentname,equipmentnumber",
					dicFied : "sex@XB,xl@Edu,zc@ZC,zyly@ZYLY,sqlx@SQTYPE,zt@SQGL_WSZT",
					wordVal : $("#cond").val(),
					entity : $("input[name='criteria/_entity']").val(),
					entityName : 'criteria',
					sfdel : true,
					jdInfo : 'jd@' + getCookie('jdid'),
					jzInfo : 'jz@' + getCookie('jzid')
				};
				var query = nui.decode(getKeyWordQuery(data));
				query["criteria/_expr[10]/isdel"] = "0";
				query["criteria/_orderby[1]/_property"] = "createtime";
				query["criteria/_orderby[1]/_sort"] = "desc";
				query["criteria/_orderby[2]/_property"] = "orderno";
				query["criteria/_orderby[2]/_sort"] = "asc";
				
				grid.load(query);
				// 				nui.get("update").disable();
			}
		}
		//附件初始化
		function setFile1(e) {
                var fileRealName = e.record.equipmentdiagram;
      			var filepath = e.record.equipmentdiagramfilepath;
      			var fileId = e.record.equipmentdiagramfileid;

			if (fileRealName == null || fileRealName == 'null') {
				return "";
			}
		var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
			return html;
		}
		function setFile2(e) {
			 var fileRealName = e.record.thicknessmeasurementpointlayout;
      			var filepath = e.record.thicknessmeasurefilepath;
      			var fileId = e.record.thicknessmeasurefileid;

			if (fileRealName == null || fileRealName == 'null') {
				return "";
			}
			var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
			return html;
		}
		

function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
	         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
	         document.body.appendChild(elemIF);
	         elemIF.style.display = "none";
		}
							/* 	function showquery() {
									var div = $("#form1");
									div.slideToggle(500);
									$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
								} */
                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    /*  nui.get("update").enable(); */
                                }

                                //查询
                                function searchs() {
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
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
                                       /* nui.get("update").disable(); */
                                    }else{
                                         /* nui.get("update").enable();  */
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
			//打开新增按钮
		function openAllAdd() {
			$(".add_adds").toggle();
		}
		}
                            </script>
                        </body>
                    </html>
