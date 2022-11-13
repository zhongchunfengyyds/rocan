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
            TInTerm查询 术语
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
							value="com.cgn.itmp.knowledgebase.Regulation.TInTerm" />
						<!-- 排序字段 -->
						<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="addtime">
						<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						<table id="table1" class="table" style="height:100%">
                    <tr>
                        <td class="form_label">
                            所属领域:
                        </td>
                        <td colspan="1">
                            <input class="nui-dictcombobox" dictTypeId="SSLY" name="criteria/_expr[1]/territory" style="width : 100%"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="=">
                        </td>
                        <td class="form_label">
                            英文简称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/englishabbreviation"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            英文术语名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[3]/englishtermname"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            中文术语名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[4]/chinesstermname"/>
                            <input class="nui-hidden" name="criteria/_expr[4]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[4]/_likeRule" value="all">
                        </td>
                    </tr>
					<tr style="display: none">
						<td>
							<input class="nui-textbox" name="criteria/_expr[5]/isdel" value="0" />
							<input class="nui-hidden" name="criteria/_expr[5]/_op" value="=">
							<input class="nui-textbox" id="jd" name="criteria/_expr[6]/jd" value="" />
							<input class="nui-hidden" name="criteria/_expr[6]/_op" value="=">
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
							<b:message key="btn-export" />
						</button>
						<button class="btn btn-default" type="button" id="doUpload" onclick="doUpload()">
							<b:message key="btn-upload" />
						</button>
						<button class="btn btn-default" type="button" id="recycle" onclick="recycle()">
							<b:message key="btn-recycle" />
						</button>
					</td>
				</tr>
			</table>
		</div>  
            <div class="nui-fit">
                <div id="datagrid1" dataField="tinterms" class="nui-datagrid" style="width:100%;height:100%;" url="com.cgn.itmp.knowledgebase.tintermbiz.queryTInTerms.biz.ext" pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true" onselectionchanged="selectionChanged" allowSortColumn="false">
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
                        <div field="number" headerAlign="center" visible="false" allowSort="true" >
                            序号
                        </div>
                        <div field="territory" headerAlign="center" allowSort="true"  renderer ="applyRender">
                            所属领域
                        </div>
                        <div field="englishabbreviation" headerAlign="center" allowSort="true" >
                            英文简称
                        </div>
                        <div field="englishtermname" headerAlign="center" allowSort="true" renderer="renderEnglishtermname">
                            英文术语名称
                        </div>
                        <div field="chinesstermname" headerAlign="center" allowSort="true" >
                            中文术语名称
                        </div>
                        <div field="definition" headerAlign="center" allowSort="true" >
                            定义
                        </div>
                        <div field="synonym" headerAlign="center" allowSort="true" >
                            同义词
                        </div>
                        <div field="referencedocumentname" headerAlign="center" allowSort="true" >
                            参考文件名称
                        </div>
                        <div field="enclosure" headerAlign="center" allowSort="true" renderer="setFile">
                            附件
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
			formData["criteria/_expr[10]/isdel"] = "0";
			formData["criteria/_expr[11]/jd"] = getCookie("jdid");
            grid.load(formData);
            
			accessControlButton('<%=userRoleCodeList%>',10);
			if('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") > 0){
			 	$("#delebtn").hide();
			 	$("#recycle").hide();
			 }
			 if('<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") > 0){
		 	$("#delebtn").show();
		 	$("#recycle").show();
		 }
			function renderEnglishtermname(e){
				return '<a style="cursor: pointer" onclick=show("'+e.record._uid+'")>'+e.record.englishtermname+'</a>';
			}
			
			function show(uid){
				var record = grid.getRowByUID(uid);
				nui.open({
					showMaxButton : true,
                    url: "/itmp/knowledgebase/knowledgebase/term/TInTermForm.jsp",
                    title: "查看记录", width: 600, height: 260,
                    onload: function () {//弹出页面加载完成
	                    var iframe = this.getIFrameEl();
	                    var data = {pageType:"show",record:{tinterm:record}};
	                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
	                    removeSelecteds(grid);
	               	    grid.reload();
	                    selectionChanged();
                	}
                });
			}
			
            //新增
            function add() {
                nui.open({
                showMaxButton : true,
                    url: "/itmp/knowledgebase/knowledgebase/term/TInTermForm.jsp",
                    title: "新增记录", width: 600, height: 260,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add"};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    if(action=="saveSuccess"){
										nui.showTips({content: '新增成功',state: 'success'});
									} 
						removeSelecteds(grid);
	               	    grid.reload();
	                    selectionChanged();
                }
                });
            }

            //编辑
            function edit() {
                var row = grid.getSelected();
                if (row) {
                    nui.open({
                    showMaxButton : true,
                        url: "/itmp/knowledgebase/knowledgebase/term/TInTermForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 260,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{tinterm:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                           		if(action=="saveSuccess"){
										nui.showTips({content: '修改成功',state: 'success'});
									} 
								removeSelecteds(grid);
			               	    grid.reload();
			                    selectionChanged();
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
                                    var json = nui.encode({
												data : rows,
												entity : "com.cgn.itmp.knowledgebase.Regulation.TInTerm",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
											});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.knowledgebase.tinencyclopediabiz.deleteKnowledge.biz.ext",
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
						entityName : "com.cgn.itmp.knowledgebase.Regulation.TInTerm",
						queryParam : json, //查询数据
						queryKey : 'criteria', //查询实体名
						query : [ 'territory', 'englishabbreviation', 'englishtermname','chinesstermname','isdel','jd'], //按顺序放置
						filterField : [ 'uuid','number','addperson','isdel', 'jd', 'fileid','createtime','addtime','processInstId','processStatus','deletetime','deleteperson'],
						expTitle : "术语",
						dicFieds : "territory@SSLY",
						jdFieds : "jd",
						order : "addtime@desc",
						attachFied : "fileid@enclosure",
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

                                //批量上传附件
                              function doUpload(){
									nui.open({
								   showMaxButton : true,
				                    url: "/itmp/basecommon/batchAddAttach.jsp",
				                    title: "导入附件", width: 600, height: 180,
				                    onload: function () {//弹出页面加载完成
				                    	var iframe = this.getIFrameEl();
					                    var data = {
					                    	page:"CHINESSTERMNAME",
					                    
					                    };//传入页面的json数据
					                     iframe.contentWindow.SetData(data);
				                    },
				                    ondestroy: function (action) {//弹出页面关闭前
				                    removeSelecteds(grid);
	               	    grid.reload();
	                    selectionChanged();
				                }
				            });
								}  
								//模糊查询
								function btnQuery() {
								var gjz = $("#cond").val();
								if (gjz == "") {
									refresh();
									// 				nui.get("update").disable();
								} else {
									var data = {
										matchFied : "territory,englishabbreviation,englishtermname,chinesstermname,definition,synonym,referencedocumentname",
										dicFied : "territory@TERRITORY，englishabbreviation@ENGLISHABBREVIATION,englishtermname@ENGLISHTERMNAME,chinesstermname@CHINESSTERMNAME",
										wordVal : $("#cond").val(),
										entity : $("input[name='criteria/_entity']").val(),
										entityName : 'criteria',
										sdel : true,
										jdInfo : 'jd@' + getCookie('jdid')
									};
									var query = nui.decode(getKeyWordQuery(data));
									grid.load(query);
									// 				nui.get("update").disable();
								}
							}
							
							  //修改删除按钮是否可点击切换
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
								
								 		function setFile(e) {
												var fileRealName = e.record.enclosure;
												var filepath = e.record.filepath;
												var fileId = e.record.fileid;
											
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
											//字典值切换
											    function applyRender(e){
									              return  nui.getDictText("SSLY",e.value);
									              }  
								//批量新增
                                function batchAdd(){
										 nui.open({
										 showMaxButton : true,
							                    url: "/itmp/basecommon/importExcelComm/importDataFormExcel.jsp",
							                    title: "批量新增记录", width: 600, height: 300,
							                    onload: function () {//弹出页面加载完成
							                    	var iframe = this.getIFrameEl();
								                    var data = {
								                    	pageType:"knowledge",
								                    	tempFileName:"term.xlsx",
								                    	tempLoadName :"术语新增模板",
								                    	entitfName:"com.cgn.itmp.knowledgebase.Regulation.TInTerm"
								                    };//传入页面的json数据
								                     iframe.contentWindow.SetData(data);
							                    },
							                    ondestroy: function (action) {//弹出页面关闭前
							                    removeSelecteds(grid);
							               	    grid.reload();
							                    selectionChanged();
							                }
							            });
									}                 
                   
								
                                
                            </script>
                        </body>
                    </html>
