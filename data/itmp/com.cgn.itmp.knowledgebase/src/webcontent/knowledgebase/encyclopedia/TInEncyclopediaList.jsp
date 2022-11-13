<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<html>
<%--
- Author(s): Administrator
- Date: 2019-11-02 16:26:24
- Description:
    --%>
    <head>
        <title>
            	百科全书通用查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
    </head>
    <body style="background-color: #f1f1f1; width:98%;height:97%;">
    
	<div class="bs-docs-section" style="height: 100%;">
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
							<td style="width:0%; background: #f7f7f9;" class="form_label">
							</td>
						</tr>
					</table>
					<div id="form1" class="nui-form display" align="center"
						style="height:65px">
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia">
						<input class="nui-hidden" name="criteria/_expr[4]/category" id="category" value=""/>
						<input class="nui-hidden" name="criteria/_expr[4]/_op" value="=">
						<input class="nui-hidden" name="criteria/_expr[5]/isdel" value="0" />
						<input class="nui-hidden" name="criteria/_expr[5]/_op" value="=">
						<input class="nui-hidden" id="jd" name="criteria/_expr[6]/jd" value="" />
						<input class="nui-hidden" name="criteria/_expr[6]/_op" value="=">
						<!-- 排序字段 -->
						<input class="nui-hidden" name="criteria/_orderby[1]/_property" value="addtime">
						<input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="desc">
						<table id="table1" class="table"  style="height: 100%">
							  <tr>
                        <td class="form_label">
                            书籍名称:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[1]/name"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                        </td>
                        <td class="form_label">
                            书籍摘要:
                        </td>
                        <td colspan="1">
                            <input class="nui-textbox" name="criteria/_expr[2]/zhaiyao"/>
                            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="all">
                        </td>
                    </tr>
                    <tr>
                        <td class="form_label">
                            推荐理由:
                        </td>
                        <td colspan="3">
                            <input class="nui-textbox" name="criteria/_expr[3]/rcommend"/>
                            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="all">
                        </td>
                    </tr>
						</table>
					</div>
				</div>

			</div>
		</div>
	<div class=""  style="width:100%;" showToolbar="false" showFooter="false" >
                        <div class="nui-toolbar" style="border-bottom: 0; padding: 5px 0px; ">
					<table style="width: 100%;">
				<tr>
					<td style="width: 100%;">
						<button style="position: relative;" class="btn btn-default" id="addallbut"
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
           </div>        
            <div class="nui-fit">
                <div 
                        id="datagrid1"
                        dataField="tinencyclopedias"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                        url="com.cgn.itmp.knowledgebase.tinencyclopediabiz.queryTInEncyclopedias.biz.ext"
                        pageSize="20" sizeList="[20,100,1000]"
                        showPageIndex="true"
                        multiSelect="true"
                        onselectionchanged="selectionChanged"
                        allowSortColumn="false">

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
                        <div field="category" id="category" headerAlign="center" allowSort="true"  renderer="renderCategory">
                            书籍类别
                        </div>
                        
                        <div field="name" headerAlign="center" allowSort="true" renderer="renderName">
                            书籍名称
                        </div>
                        <div field="zhaiyao" headerAlign="center" allowSort="true" >
                            书籍摘要
                        </div>
                        <div field="rcommend" headerAlign="center" allowSort="true" >
                            推荐理由
                        </div>
                        <div field="enclosure" headerAlign="center" allowSort="true" renderer="setFile">
                            附件
                        </div>
                          <div field="uploadperson" headerAlign="center" width="70px" allowSort="true" >
       	  上传人
                        </div> 
                        
                          <div field="uploadtime" headerAlign="center" allowSort="true"  dateFormat="yyyy-MM-dd HH:mm:ss">
                            上传时间
                        </div>
                        <div field="isdel" headerAlign="center" allowSort="true" visible="false">
                            是否删除
                        </div>
                        <div field="deleteperson" headerAlign="center" allowSort="true" visible="false">
                            删除人
                        </div>
                        <div field="deletetime" headerAlign="center" allowSort="true" visible="false">
                            删除时间
                        </div>
                        <div field="fildid" headerAlign="center" allowSort="true" visible="false">
                            附件关联id
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <script type="text/javascript">
            nui.parse();
             var grid = nui.get("datagrid1");
             var pageType;
            var formData = new nui.Form("#form1").getData(false,false);
//             var pageflow = localStorage.getItem("pageflow");//获取页面当前状态,书籍类别
            var pageflow = getCookie("pageflow");
            
/*             switch(pageflow){
            case "文艺" :
                 pageType = 'literature';
                 break;
            case "教育" :
                 pageType = 'education';
                 break;
            case "人文社科":
                 pageType = 'socialscience';
                 break;
            case "经营" :
           		 pageType ='management';
           		 break;
            case "生活":
                 pageType='life';
                 break;
             case "科技":
                 pageType = 'technology';
                 break;
            }
 */          
 
 			var jd =  getCookie("jdid");
            formData["criteria/_expr[4]/category"] = renderPageFlow(pageflow);
		    formData["criteria/_expr[5]/isdel"] = "0";
		    formData["criteria/_expr[6]/jd"] = jd;
			nui.get("jd").setValue(jd);
			nui.get("category").setValue(renderPageFlow(pageflow));
            grid.load(formData);
            
            //按钮权限控制
	    	accessControlButton('<%=userRoleCodeList %>',8);
	    	if ('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") < 0) {
				 $("#recycle").hide();
				 $("#doUpload").hide();
			 }else if('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") > 0){
		 	$("#delebtn").hide();
		 	$("#recycle").hide();
		 }
if('<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") > 0){
		 	$("#delebtn").show();
		 	$("#recycle").show();
		 }
			function renderName(e){
				return '<a style="cursor: pointer" onclick=show("'+e.record._uid+'")>'+e.record.name+'</a>';
			}

			function show(uid){
				var record = grid.getRowByUID(uid);
				nui.open({
					showMaxButton : true,
                  	url: "/itmp/knowledgebase/knowledgebase/encyclopedia/TInEncyclopediaForm.jsp",
                    title: "查看记录", width: 600, height: 300,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"show",record:{tinencyclopedia:record}};
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                     removeSelecteds(grid);
               	    grid.reload();
                    selectionChanged();
                }
                });
			}

			function renderCategory(e){
				return nui.getDictText("SJLB", e.value);
			}
				function renderPageFlow(pageflow){
						var pageType = "";
						  switch(pageflow){
				            case "文艺" :
				                 pageType = 'literature';
				                 break;
				            case "教育" :
				                 pageType = 'education';
				                 break;
				            case "人文社科":
				                 pageType = 'socialscience';
				                 break;
				            case "经营" :
				           		 pageType ='management';
				           		 break;
				            case "生活":
				                 pageType='life';
				                 break;
				             case "科技":
				                 pageType = 'technology';
				                 break;
				            }
				            return pageType;
					}
            //新增
            function add() {
                nui.open({
               	 showMaxButton : true,
                    url: "/itmp/knowledgebase/knowledgebase/encyclopedia/TInEncyclopediaForm.jsp",
                    title: "新增记录", width: 600, height: 300,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add",pageflow:pageflow};//传入页面的json数据
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
                       url: "/itmp/knowledgebase/knowledgebase/encyclopedia/TInEncyclopediaForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 300,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{tinencyclopedia:row}};
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
													entity : "com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia",token:"<%=TokenUtil.getTokenString(request.getSession())%>"
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
				width : 550,
				height : 200,
				onload : function() {//弹出页面加载完成
					var iframe = this.getIFrameEl();
					var data = {
						entityName : "com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia",
						queryParam : json, //查询数据
						queryKey : 'criteria', //查询实体名
						query : [ 'name', 'zhaiyao', 'rcommend','category','isdel','jd'], //按顺序放置
						filterField : [ 'uuid', 'isdel','filename','fildid','filepath' ,'jd', 'fileid','createtime','addtime','processInstId','processStatus','deletetime','deleteperson'],
						expTitle : pageflow,
						dicFieds : "category@SJLB",
						jdFieds : "jd",
						order : "addtime@desc",
						attachFied : "fildid@enclosure",
						mode:"ftp",
						defaultCheck : ['category', 'name', 'zhaiyao','rcommend','uploadperson','uploadtime']
					};//传入页面的json数据
					iframe.contentWindow.setFormData(data);
				},
				ondestroy : function(action) {//弹出页面关闭前
				}
			});

}

                                //重新刷新页面
                                function refresh(){
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
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
									nui.get("category").setValue(renderPageFlow(pageflow));
									nui.get("jd").setValue(jd);
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    searchs();
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
								
					            //回收站
					            function recycle(){
					            nui
								.open({
								   showMaxButton : true,
									url : "/itmp/common/recyclebin/recycleknowledgeTInEncy.jsp",
									title : "回收站",
									width : 1000,
									height : 570,
									onload : function() {//弹出页面加载完成
										var iframe = this.getIFrameEl();
										var data = {
											pageType : "recyclebin",
											urlName : "com.cgn.itmp.knowledgebase.tinencyclopediabiz.queryTInEncyclopedias.biz.ext",//回收
											entityVal : "com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia",
											removeUrl : "com.cgn.itmp.weldingmanagement.common.delete.biz.ext",
											recoveryUrl : "com.cgn.itmp.inspectcomponentmanage.equipmentbaseinformationbiz.recovery.biz.ext",//恢复
											pageflowName: renderPageFlow(pageflow),//通用页面添加标识
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
												field : 'category',
												header : '书籍类别',
												width : 100,
												headerAlign : "center",
												allowSort : true,
												renderer : "renderCategory"
											}, {
												field : 'name',
												header : '书籍名称',
												width : 100,
												headerAlign : "center",
												allowSort : true
											}, {
												field : 'zhaiyao',
												header : '书籍摘要',
												width : 100,
												headerAlign : "center",
												allowSort : true
											}, {
												field : 'rcommend',
												header : '推荐理由',
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
												field : 'uploadperson',
												header : '上传人',
												width : 100,
												headerAlign : "center",
												allowSort : true
											}, {
											field : 'uploadtime',
												header : '上传时间',
												width : 100,
												headerAlign : "center",
												dateFormat:"yyyy-MM-dd HH:mm:ss",
												allowSort : true
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
										
									//获取附件路径并添加超链接		
									
									function setFile(e) {
									
										var fileRealName = e.record.enclosure;
										var filepath = e.record.filepath;
										var fileId = e.record.fildid;
							
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
								                    	tempFileName:"encyclopedia.xlsx",
								                    	tempLoadName :"百科全书新增模板",
								                    	entitfName:"com.cgn.itmp.knowledgebase.knowledgebase.TInEncyclopedia"
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
										
                                
					           //批量上传附件
								function doUpload(){
									nui.open({
								   showMaxButton : true,
				                    url: "/itmp/basecommon/batchAddAttach.jsp",
				                    title: "导入附件", width: 600, height: 190,
				                    onload: function () {//弹出页面加载完成
				                    	var iframe = this.getIFrameEl();
					                    var data = {
					                    	page:"SJNAME",
					                    
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
					            
					        function btnQuery() {
								var gjz = $("#cond").val();
								if (gjz == "") {
									searchs();
								} else {
									var data = {
										matchFied : "name,zhaiyao,rcommend",
										//dicFied : "",
										wordVal : $("#cond").val(),
										entity : $("input[name='criteria/_entity']").val(),
										entityName : 'criteria',
										sdel : true,
										jdInfo : 'jd@' + getCookie('jdid')
									};
									var query = nui.decode(getKeyWordQuery(data));
									 query["criteria/_expr[4]/category"] = renderPageFlow(pageflow);
									query["criteria/_expr[5]/isdel"] = "0";
									grid.load(query);
								}
							}
					            
                            </script>
                        </body>
                    </html>