<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/commonnew.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>

<html>
<%--
- Author(s): swh
- Date: 2020-03-10 15:24:09
- Description:
    --%>
    <head>
        <title>
            TSyMenu查询
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/newui/css/treestyle/tree.css" />
        
        <style type="text/css">
        
        </style>
    </head>
    <body style="width:98%;height:95%;">
        
<div class="nui-panel"   style="width:100%;height:0%;" showToolbar="false" showFooter="true">
            <div id="form1" class="nui-form" align="center" style="height:100%">
                <!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.systemset.Importtemplate.TSyMenu">
                <!-- 排序字段 -->
                <input class="nui-hidden" name="criteria/_orderby[1]/_property" value="orderno">
                <input class="nui-hidden" name="criteria/_orderby[1]/_sort" value="asc">
                <table id="table1" class="table" style="height:100%">
                    <tr>
                        <td class="form_label">
                            三级菜单名称:
                        </td>
                        <td colspan="3">
                            <input class="nui-textbox" id="menunametext" name="criteria/_expr[1]/menuname"/>
                            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like">
                            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="all">
                        </td>
                    </tr>
                </table>
            </div>
            <div class="input-control" style="float:right;">
                        <a class="nui-button btn btn-default btn-xs" onclick="search()">
			               查询
			            </a>
			            <a class="nui-button btn btn-default btn-xs" onclick="reset()">
			                重置
			            </a>
            </div>
            </div>
            
            
       

        
        <div class="nui-layout" style="width:100%;height:94%;" > 
	<div  region="west" width="200" title="模板树">
        <div class="nui-fit">
        	<ul id="tree1" expandOnNodeClick="true" class="nui-tree" 
        	resultAsTree="false" style="width:100%;height:100%;" 
        	onnodeclick="onNodeSelect" onbeforeexpand="onBeforeExpand"
        	onnodeselect="onNodeSelect" expandOnNodeClick="true"
        	onbeforenodeselect="onBeforeNodeSelect"
            dataField="id" textField="text" url="">
			</ul>
		</div>
    	</div>
	<div style="width: 80%; height: 85%; float: left;" showToolbar="false" showFooter="false">
		<div class="nui-toolbar" style="border-bottom: 0; padding:5px 0px;">
			<table style="width: 100%;">
				<tr>
					<td style="width: 50%;">
						<button class="btn btn-default" onclick="add()"
						 id="addbtn" style="display:none">
							新增
						</button>
						<button class="btn btn-default" onclick="edit()"
							 id="editbtn">
							修改
						</button>
						<button class="btn btn-default" onclick="output()"
							 id="outbtn">
							批量导出
						</button>
						<button class="btn btn-default" onclick="remove()"
							 id="delebtn" style="display:none">
							删除
						</button>
					</td>
					 <td class="form_label">
                            模块名称:
                        </td>
                        <td colspan="">
                            <input class="nui-textbox" id="menuname" name="criteria/_expr[1]/menuname"/>
                        </td>
                        <td>
                         <a class="nui-button btn btn-default btn-xs" onclick="search()">
			               查询
			            </a>
			            <a class="nui-button btn btn-default btn-xs" onclick="reset()">
			                重置
			            </a>
                        </td>
				</tr>
			</table>
		</div>
		<div class="nui-fit">
			<div id="datagrid1" dataField="tsymenus"
				class="nui-datagrid" style="width: 100%; height: 100%;"
				url="com.cgn.itmp.systemset.tsymenubiz.queryTSyMenus.biz.ext" 
				allowRowSelect="true"
				pageSize="20" sizeList="[20,100,1000]" showPageIndex="true" multiSelect="true" 
				onselectionchanged="selectionChanged" allowSortColumn="false">
				

				<div property="columns">
					<div type="indexcolumn"></div>
					<div type="checkcolumn"></div>
					<div field="uuid" headerAlign="center" allowSort="true" visible="false">
                            uuid
                        </div>
                        <div field="firstmenu" headerAlign="center" allowSort="true" >
                            一级菜单
                        </div>
                        <div field="twolevelmenu" headerAlign="center" allowSort="true" >
                            二级菜单
                        </div>
                        <div field="menuname" headerAlign="center" allowSort="true" >
       	三级菜单
                        </div>
                        <div field="templatename" headerAlign="center" allowSort="true"  renderer="readpath">
                            模板名称
                        </div>
                        <div field="menupath" headerAlign="center" allowSort="true"  visible="false">
                            模板文件标识
                        </div>
                        <div field="updateperson" headerAlign="center" allowSort="true" >
                            修改人
                        </div>
                        <div field="updatetime" headerAlign="center" allowSort="true"  dateFormat="yyyy-MM-dd">
                            修改时间
                        </div>
                        <div field="isdelete" headerAlign="center" allowSort="true" visible="false">
                            删除表示
                        </div>
                        <div field="orderno" headerAlign="center" allowSort="true" visible="false">
                            排序
                        </div>
				</div>
			</div>
		</div>
		</div>
	
        
        
        
        
        <script type="text/javascript">
            nui.parse();
            var grid = nui.get("datagrid1");
            var ptext="";
            var one;
            var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
            var isadmin="true";
            if(isadmin != "true"){
			 	 $("#addbtn").hide();
			 	 $("#editbtn").hide();
			 	 $("#delebtn").hide();
			 }
			//加载目录树
            var formData = new nui.Form("#form1").getData(false,false);
            grid.load(formData);
            showtree();
			function showtree(){
				var json=nui.encode({});
				$.ajax({
					url : "com.cgn.itmp.systemset.tsymenubiz.getTree.biz.ext",
					type : 'POST',
					data : json,
					cache : false,
					contentType : 'text/json',
					success : function(treeData) {
						var tree1 = mini.get("tree1");
						tree1.loadList(treeData.data, "id", "pid");
					}
				});
			}
			
			//菜单点击事件
			function onNodeSelect(e) {
				var node = e.node;
				var isLeaf = e.isLeaf;
				if(typeof(node.pid)=="undefined"){
					searchInfoOne();
				}else{
					if (isLeaf) {
					searchInfoThree();
					}else{
					searchInfoTwo();
					}
				}
			}
            //新增
            function add() {
                nui.open({
                    url: "/itmp/systemset/TSyMenu/TSyMenuForm.jsp",
                    title: "新增记录", width: 600, height: 260,
                    onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {pageType:"add",first:one};//传入页面的json数据
                    iframe.contentWindow.setFormData(data);
                    },
                    ondestroy: function (action) {//弹出页面关闭前
                    grid.reload();
                    one="";
                    showtree();
                }
                });
            }
            
            function onBeforeExpand(e) {
			var tree1 = e.sender;
			var nowNode = e.node;
			var level = tree1.getLevel(nowNode);
			var root = tree1.getRootNode();
			ptext=nowNode.text;
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
// 				form.jd = jdid;
// 				form.jz = jzid;
				var data = form.getData(false, false);
// 				nui.get("devicename").setValue(node.text);
				data["criteria/_expr[3]/firstmenu"] = node.text;
				data["criteria/_expr[3]/_op"]='=';
				data["criteria/_expr[2]/twolevelmenu"] = "";
				data["criteria/_expr[2]/_op"] = "=";
				
				grid.load(data);//grid查询
            }
		}
		
		//树点击查询 三级节点
		function searchInfoThree(e){
			var tree = mini.get("tree1");
            var node = tree.getSelectedNode();
            if (node) {
	            var form = new nui.Form("#form1");
// 				form.jd = jdid;
// 				form.jz = jzid;
				var data = form.getData(false, false);
// 				nui.get("detectedsite").setValue(node.text);
				
				data["criteria/_expr[2]/twolevelmenu"] = node.text;
				data["criteria/_expr[2]/_op"] = "=";
				data["criteria/_expr[3]/firstmenu"] = ptext;
				data["criteria/_expr[3]/_op"]='=';
				grid.load(data);//grid查询
            }
		}
		
		//树点击查询 二级节点
		function searchInfoTwo(e){
			var tree = mini.get("tree1");
            var node = tree.getSelectedNode();
            if (node) {
	            var form = new nui.Form("#form1");
// 				form.jd = jdid;
// 				form.jz = jzid;
				var data = form.getData(false, false);
// 				nui.get("partname").setValue(node.text);
				data["criteria/_expr[3]/firstmenu"] =  node.text;
				data["criteria/_expr[3]/_op"]='=';
				one=node.text;
				grid.load(data);//grid查询
            }
		}

            //编辑
            function edit() {
                var row = grid.getSelected();
                if (row) {
                    nui.open({
                        url: "/itmp/systemset/TSyMenu/TSyMenuForm.jsp",
                        title: "编辑数据",
                        width: 600,
                        height: 260,
                        onload: function () {
                            var iframe = this.getIFrameEl();
                            var data = {pageType:"edit",record:{tsymenu:row}};
                            //直接从页面获取，不用去后台获取
                            iframe.contentWindow.setFormData(data);
                            },
                            ondestroy: function (action) {
                                grid.reload();
                                showtree();
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
                                    var json = nui.encode({tsymenus:rows});
                                    grid.loading("正在删除中,请稍等...");
                                    $.ajax({
                                        url:"com.cgn.itmp.systemset.tsymenubiz.deleteTSyMenus.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                            var returnJson = nui.decode(text);
                                            if(returnJson.exception == null){
                                                grid.reload();
                                                showtree();
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
                                    var form = new  nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                    nui.get("update").enable();
                                }

                                //查询
                                function search() {
                                	nui.get("menunametext").value=(nui.get("menuname").value);
                                    var form = new nui.Form("#form1");
                                    var json = form.getData(false,false);
                                    grid.load(json);//grid查询
                                }

                                //重置查询条件
                                function reset(){
                                    var form = new nui.Form("#form1");//将普通form转为nui的form
                                    form.reset();
                                }

                                //enter键触发查询
                                function onKeyEnter(e) {
                                    search();
                                }

                                //当选择列时
                                function selectionChanged(){
                                    var rows = grid.getSelecteds();
                                    if(rows.length>1){
                                       $("#editbtn").prop("disabled", "disabled");
                                    }else{
                                       $("#editbtn").prop("disabled", "");
                                    }
                                }
                                
                                function readpath(e){
                                	var html = '<a style="color:#00F;text-decoration:underline;cursor:pointer" onclick="load(\''+ e.record.menupath +'\',\''+ e.record.twolevelmenu+"-"+e.record.menuname +'.xlsx\')"  >'+e.record.templatename+'</a>';
                					return html;
                                }
                                
                                function load(path,filename){
                                if(path.indexOf(".xlsx") == -1){
                                	path+=".xlsx";
                                }
                                var json = nui.encode({path:path,filename:filename});
                                	$.ajax({
                                        url:"com.cgn.itmp.systemset.tsymenubiz.uploadfile.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                    
                                        window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + text.filepath + "&projectPath=example&loadFileName=" + text.filepath);
// 		                                    var elemIF = document.createElement("iframe");
<%-- 											elemIF.src = <%=request.getContextPath()%>/example-config/"+text.filepath;  --%>
// 											document.body.appendChild(elemIF);
// 											elemIF.style.display = "none";    	
                                        }
                                    });
                                }
                                
                                function output(){
                                	var rows = grid.getSelecteds();
                                	if(rows.length==0){
                                		nui.alert("请选择数据");
                                		return;
                                	}else{
                                		var arr=[];
                                		for(var i=0;i<rows.length;i++){
                                		var twolevelmenu=rows[i].twolevelmenu.replace('/','-');
                                		var menuname=rows[i].menuname.replace('/','-');
                                		var templatename=rows[i].templatename.replace('/','-');;
                                			var filename = twolevelmenu+"-"+menuname+"-"+templatename+".xlsx";
                                			var filepath = rows[i].menupath;
                                			if(filepath.indexOf(".xlsx") == -1){
			                                	filepath+=".xlsx";
			                                }
                                			arr.push({name:filename,path:filepath});
                                		}
                                		var json=nui.encode({arr:arr});
                                		$.ajax({
                                        url:"com.cgn.itmp.systemset.tsymenubiz.outputfile.biz.ext",
                                        type:'POST',
                                        data:json,
                                        cache: false,
                                        contentType:'text/json',
                                        success:function(text){
                                         window.location.href = encodeURI("com.cgn.itmp.basecommon.commDownFile.flow?fileName=" + "模板.zip" + "&projectPath=temp&loadFileName=" + "模板.zip");
// 	                                        var elemIF = document.createElement("iframe");
<%-- 						                     elemIF.src = "<%=request.getContextPath()%>/tempFile/"+"模板.zip"; --%>
// 						                     elemIF.style.display = "none";
// 						                     document.body.appendChild(elemIF);
                                        }
                                        });
                                    
                                		
                                	
                                	
                                }
                                }
                                //仅按照名称搜索
		function btnQuery() {
			var gjz = $("#cond").val();
			if (gjz == "") {
				refresh();
				// 				nui.get("update").disable();
			} else {
				var data = {
					matchFied : "firstmenu,twolevelmenu,menuname,templatename",
					wordVal : $("#cond").val(),
					entity : $("input[name='criteria/_entity']").val(),
					entityName : 'criteria',
					sfdel : true,
				};
				var query = nui.decode(getKeyWordQuery(data));
				query["criteria/_expr[6]/isdelete"] = "0";
				query["criteria/_orderby[1]/_property"] = "orderno";
				query["criteria/_orderby[1]/_sort"] = "asc";
				grid.load(query);
				// 				nui.get("update").disable();
			}
		}
		
		
                                
                                
                            </script>
                        </body>
                    </html>
