<!DOCTYPE html>
<%@page import="com.cgn.itmp.basecommon.CommonUtil"%>
<%@page import="com.eos.data.datacontext.IUserObject"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<%

 String param = request.getParameter("editable");
 IUserObject cu = CommonUtil.getUserObject();
String username = cu.getUserRealName();
  %>
<html>
<%--
- Author(s): littlebear
- Date: 2019-08-01 16:16:36
- Description:
    --%>
<head>
<title>项目管理新增</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
<script src="<%= request.getContextPath()%>/common/common.js"
   	 type="text/javascript"></script>
   	<script src="<%= request.getContextPath()%>/common/nui/nui.js" type="text/javascript"></script>
<link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
<script type="text/javascript"
            src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
<style type="text/css">
	table td .mini-buttonedit-border input{
		height:100%!important;
	}
	.mini-buttonedit-border .mini-buttonedit-buttons{
		margin-top: 4px;
	}
	.mini-textbox-border .mini-textbox-input{
	    height: 100%;
	}
	.mini-buttonedit{
		height: 100%;
	}
	.mini-combobox {
		width:100%!important;
	}
	tbody .mini-buttonedit.mini-buttonedit-border{
		width:100%!important;
	}
	.min-button {
		background: none!important;
		background-color: #60b1e3 !important;
		border-radius: 4px;
		color: white;
		padding:1px 9px!important;
		    border: none!important;
	}
	#treegrid1 table{
		margin-left: 0px !important;
	}
</style>            
</head>
<body id="xmgl" style="width: 100%; height: 100%;">
	<div class="bs-docs-section" style="width: 100%; height: 19%;">
		<div class="search-box" style="width: 100%; height: 100%;">
			<div class="search-container folding-menu" id="queryForm" style="width: 100%; height: 100%;">
				<div style="width: 100%; height: 100%;">
					<div id="form0" class="nui-form" >
						<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
						
						<input class="nui-hidden" name="ccry" id="ccry"/>
				    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
				    	<input id="modelFlag" class="nui-hidden"  value="<b:write property='modelFlag'/>" name="modelFlag"/>
				    	<input id="editable" class="nui-hidden"  value="<b:write property='editable'/>" name="editable"/>
			    	</div>
					<div id="form1" class="nui-form" align="center" style="width: 100%; height: 100%;">
						<input class="nui-hidden" name="applicant" id="applicant"/>
						<input class="nui-hidden"  name="relationid" id="relationid"/>
						<!-- 排序字段 -->
						<table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%;width:100%;">
							<tr  class="query_two"   style="height: 28px!important;">
								<td style="width: 15% !important;" class="form_label">基地:</td>
								<td style="width: 15% !important;" colspan="1">
									<input class="nui-combobox" onvaluechanged="zidong(1)"  style="width: 100%;height:100%" dataField="jsonObject" id="jd"
				                    	name="jd" onvaluechanged="reloadJz" enabled="false"
				                    	textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" onvalidation="onCheck" valueField="id"/>
								</td>
								<td style="width: 15% !important;" class="form_label">机组:</td>
								<td style="width: 15% !important;" colspan="1">
									<input class="nui-combobox" style="width: 100%;" onvaluechanged="zidong(1)" dataField="jsonObject" id="jz" name="jz" textField="name" 
					                     url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext" 
					                     name="tdggldaily.crew" onvalidation="onCheck"  valueField="id"/>
								</td>
								<td style="width: 15% !important;" class="form_label">大修轮次:</td>
								<td style="width: 15% !important;" colspan="1">
									<div id="combobox1" name="overhaul" property="editor"  popupWidth="100%" class="nui-combobox" onvaluechanged="zidong(1)" style="width:100%;height:100% !important;"  popupWidth="150" textField="name"  
	     								url=""  onvaluechanged="getalltime"  multiSelect="false" onvalidation="onCheck" emptyText="请选择" valueField="id" textField="name"  dataField="jsonObject" nullItemText="请选择..." >
								</td>
							</tr>
							<tr class="query_two"   style="height: 28px!important;">
								<td class="form_label">项目名称:</td>
								<td colspan="5"><input class="nui-textbox" style="width:100%;height: 100%;"
									onvaluechanged="zidong(1)" onvalidation="onCheck" name="itemname" id="itemname" /></td>
							</tr>
							<tr class="query_two"  style="height: 28px!important;">
								<td class="form_label">项目标准化清单:</td>
								<td colspan="5"  ><input class="nui-textbox" style="width:100%;height: 100%;"
									 name="detailed" id="detailed" onvalidation="onCheck"/></td>
							</tr>
							<input class="nui-hidden"
									 name="uuid" id="uuid"/>
									 <input class="nui-hidden"
									 name="orderindex" id="orderindex"/>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
        <div id="form2" class="nui-form" align="center"  style="display:none;width: 100%; height: 6%;">
           
					<table style="width: 100%;">
						<tr>
						
							<td>
								<button class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="addparent()">
									添加
								</button>
								<button class="nui-button btn btn-default btn-xs btn-submit"
									type="button" onclick="addchildren()">
									添加子行
								</button>
								<button class="nui-button btn btn-default btn-xs btn-submit"
									type="button" disabled="disabled" id="delebtn" onclick="onRemoveNode()">
									删除
								</button>
								</td>
						</tr>
					</table>
				</div>

		<div class="nui-fit" style="width:100%;height:7%;" >
			<div id="treegrid1" class="nui-treegrid mycreattable" style="width:100%;height:100%;"     
			    url="" showTreeIcon="true" allowSortColumn="false"    onCellBeginEdit="onCellBeginEdit"
			    allowCellEdit="false"
			    treeColumn="taskname" idField="UID"  resultAsTree="false"  onexpand="commit"
			    oncollapse="commit" onbeforecollapse="commit" 
			    
			   	allowResize="true" expandOnLoad="true" activechanged="ceshi" allowResize="true"
	   		 	 allowCellSelect="true"    >
			    <div property="columns" style="height:100%;" >
			        <div name="taskname" onclick="" field="number" width="12%" style="height:100%;" allowSort="true">序号</div>
			        <div field="elements" width="15%"  allowSort="true">关键要素
			        	<input property="editor"  class="nui-textarea see"  onvalidation="onCheck" maxlength="2000" style="width:100%;height:100%;"/>
			        </div>
			        <div field="explain" width="25%"  allowSort="true">说明
			        	<input property="editor" class="nui-textarea see"  maxlength="2000"  style="width:100%;height:100%;"/></div>
			        <div field="fj" headerAlign="center" allowSort="true"
						renderer="setFile">
						
						附件<input id="fj" property="editor"
							class="nui-fileupload nui-form-input" name="uploadFile"
							limitType="*.*" limitSize="100MB"
							flashUrl="<%=request.getContextPath()%>/js/swfupload/swfupload.swf"
							onfileselect="onfileselect"
							uploadUrl="<%=request.getContextPath()%>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
							onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
							style="width: 100%;" />
					</div>
					<div field="fileRealName" headerAlign="center" allowSort="true"
						visible="false"></div>
						<div field="fileid" headerAlign="center" allowSort="true"
						visible="false"></div>
			    </div>
			</div>
		</div>


			<div class=""  style="width:100%;height:13%;" showToolbar="false" showFooter="false" >
        <div id="form3" class="nui-form admin" style="width: 100%; height:35%;" align="center"  >
				<table class="table" style="width: 100%; height:100%;border:none;" >
				<tr class="changeReason_yy" style="display: none;">
					<td class="form_label">修改原因:</td>
					<td colspan="3"><input class="nui-textbox" id="xgyy" style="width:100%"
					required="true" requiredErrorText="请输入名称"
						name="changeReasons" /></td>
				</tr>
						<tr class="changeReason">
					<td style="width: 16% !important;text-align:right;"  colspan="1" class="form_label">校核人员</td>
					 <td colspan="1" style="">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" onvalidation="onCheck" id="jhry"  name="jhry"  textField="empname" style="width:100%;" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
						<td class="form_label" style="width: 16% !important;text-align:right;">选择抄送人员:</td>
							<td  colspan="1">
								<input property="editor" id="copyperson" multi="true" name="copyperson" class="nui-textboxlist" dataField="list"
		                      	style="width: 200px;"
		                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext" valueField="empcode"
		                       textField="empcodename" ScrollBar="Vertical" searchField="keyword" />
							</td>	
						</tr>
					</table>
					</div>
				<div id="" class=""  style="text-align:center ;width: 100%;padding-top:10px" align="center"">
					<table style="width: 100%;" >
<!-- 						<tr> -->
<!-- 							<td> -->
<!-- 								<button style="width:auto" class="nui-button" -->
<!-- 									type="button" id="submit" onclick="add('manualActivity')"> -->
<!-- 									提交 -->
<!-- 								</button> -->
<!-- 								<button style="width:auto" class="nui-button " -->
<!-- 									type="button" id="submitcg" onclick="add()"> -->
<!-- 									保存到草稿 -->
<!-- 								</button> -->
<!-- 								<button style="width:auto" class="nui-button" -->
<!-- 									type="button" onclick="onCancel()"> -->
<!-- 									关闭 -->
<!-- 								</button> -->
<!-- 								</td> -->
<!-- 						</tr> -->
						<tr>
                        <td style="text-align:center;" colspan="4">
                        	<a class="nui-button" onclick="onSubmit()" id="btnSubmit">
									提交
								</a>
								<a class="nui-button" onclick="onDelete()" id="btnDelete">
									作废
								</a>
								<a class="nui-button"
									 onclick="onCancel()">
									关闭
								</a>
                        
<!--                             <a class="nui-button" id="submit" onclick="add('manualActivity')"> -->
<!--                                 提交 -->
<!--                             </a> -->
<!--                             <span style="display:inline-block;width:25px;"></span> -->
<!--                             <a class="nui-button changeReasons admin" id="submitcg" onclick="add()"> -->
<!--                                 保存草稿 -->
<!--                             </a> -->
<!--                           	<span style="display:inline-block;width:25px;"></span> -->
                            
<!--                             <a class="nui-button"  onclick="onCancel()"> -->
<!--                                 关闭 -->
<!--                             </a> -->
                        </td>
                    </tr>
					</table>
				</div>
				</div>
				

			
		

	<script type="text/javascript">
		nui.parse();
		var file;
		var type="add";
		var processInstId =nui.get("processInstId").getValue();
		var modelFlag=nui.get("modelFlag").getValue();
		
		var isadmin ="<%=request.getSession().getAttribute("isadmin") %>";
        var filename;
        var pageType;
		var tree = nui.get("treegrid1");
		
    	var jd="";
    	var zidongpd=0;
		
    	var modelFlag=nui.get("modelFlag").getValue();
		//初始化按钮
		 $('#btnSubmit').hide();
         $('#btnDelete').hide();
         $('#csry').hide();
         $('#form2').hide();
        
         var form = new nui.Form("#form1");
         
         //初始化数据
		getItemanage();
		
		
		
    	//查询会先数据
		function getItemanage(){
		var form = new nui.Form("#form1");//将普通form转为nui的form
			var entityType="";
			entityType="com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage_mf";
			var json=nui.encode({processInstId:processInstId,entityType:entityType});
			$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",//可复用
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var data=text.data;
					type="edit";
					json=nui.encode({id:data.processInstId});
					$.ajax({  
					    url:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.getItem.biz.ext",
					    type:'POST',
					    data:json,
					    cache: false,
					    contentType:'text/json',
					    success:function(text){
							tree.loadData(text.list);
				    	}
					});
					
					nui.get("jd").setValue(data.jd);
			    	nui.get('jz').setAjaxType("POST");
			    	nui.get('jz').load( "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + data.jd);
			    	nui.get("jz").setValue(data.jz);
			    	
					nui.get("itemname").setValue(data.itemname);
					nui.get("detailed").setValue(data.detailed);
					nui.get('combobox1').setAjaxType("POST");
					nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+data.jd);
					nui.get("combobox1").setValue(data.overhaul);
					nui.get("applicant").setValue(data.applicant);
					nui.get("uuid").setValue(data.uuid);
					nui.get("relationid").setValue(data.relationid);
				    var form = new nui.Form("#form1");
					if('<%=username %>'  == nui.getbyName('applicant').getValue() ){
				         $('#btnSubmit').show();
				         $('#btnDelete').show();
				         $('#csry').show();
				         $('#form2').show();
				         nui.get("treegrid1").allowCellEdit=true;
			        }else{
			        	form.setEnabled(false);
			        	$('.changeReason').hide();	
			        	
			        }
			         var editable = nui.get("editable").value;
			         if(editable=='false'){
		    			nui.get("btnSubmit").hide();
		    			nui.get("btnDelete").hide();
		    			
		    			$('#form2').hide();
						$('.changeReason').hide();	
		    			form.setEnabled(false);
		    			nui.get("treegrid1").allowCellEdit=false;
		    		}
				}
			});
		}
		
		
		
		function onSubmit(){
				if(nui.get("jhry").value==""){
					nui.showTips({
							content: '必填项不可为空',
							state: 'warning',
							x: 'center', 
							y: 'center'
						}
					);
					return;
				}
				form = new nui.Form("#form1");//将普通form转为nui的for
				form.validate();
				if(form.isValid()==false){
					nui.showTips(
							{
								content: '必填项不可为空',
								state: 'warning',
								x: 'center', 
								y: 'center'
							}
						);
	 				return;
				}
				nui.get("#btnSubmit").setEnabled(false);
				nui.get("#btnDelete").setEnabled(false);
				var form1 = new nui.Form("#treegrid1");//将普通form转为nui的for
				form1.validate();
				if(form1.isValid()==false){
					nui.showTips(
							{
								content: '必填项不可为空',
								state: 'warning',
								x: 'center', 
								y: 'center'
							}
						);
	 				return;
				}
				form=form.getData(false,true);
				form.approver=nui.get("jhry").value;
				//获取抄送人
				form.processInstId=processInstId;
				form.copyperson=nui.get("copyperson").value;
				form.jzname=nui.get("jz").text;
				tree.commitEdit();
				//获取工作流的信息
				var form0 = new nui.Form("#form0");//将普通form转为nui的for
				form0=form0.getData(false,true);
				form0.data=form;
				form0.tree=tree.data;
				form0.type="update_mf";				
				
				form0.jhry=nui.get("jhry").text;
				form0.ccry=nui.get("copyperson").value;
				
				var json = nui.encode(form0);

				
				
				$.ajax({
                    url:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.add.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                       	    nui.alert("提交成功", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
                        }else{
                            nui.alert("提交失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(true);
							});
						 }
	          	});
		}
		
		
		//作废
		function onDelete(){
       nui.confirm("确定要作废流程？","提示",
          function(action){
             if(action=="ok"){
//              updateprocessStatus("3");
            nui.get("#btnSubmit").setEnabled(false);
               nui.get("#btnDelete").setEnabled(false);
                var json = {};
                
                 json.processInstId = nui.getbyName('processInstId').getValue();
		         json.workItemId = nui.getbyName('workItemId').getValue();
		         json.entityType = "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage_mf";
		      var jsondata = nui.encode(json);
		      $.ajax({
                 url:"com.cgn.itmp.basecommon.WorkFlowCommon.wsterminateProcess.biz.ext",
                 type:'POST',
                 data:jsondata,
                 cache:false,
                 contentType:'text/json',
                 success:function(data){
                     var message = "流程作废成功";
                 nui.alert(message,"成功",function(){
                 onCancel();
                });
               }
            });
            }
          });
      }

		 function CloseWindow(action){

        if(action=="close"){
            }else if(window.CloseOwnerWindow){
            	return window.CloseOwnerWindow(action);
            }else{
	            return window.close();
            }
        }
		
            function onfileselect(e) {
            	
                startUpload(e);
            }
            function startUpload(e) {
            	
                var fileupload = e.sender;
                
                fileupload.startUpload();
            }

          //上传成功时，回写附件的name、id
            function onUploadSuccess(e) {
         		fileName = e.file.name;
         		filePath = nui.decode(e.serverData).ret.filePath;
         		var json = {};
         		json.filename = fileName;
         		json.filepath = filePath;
         		json = nui.encode(json);
         		$.ajax({
                    url: "com.cgn.itmp.basecommon.FileComp.addFile.biz.ext",
                    type: 'POST',
                    data: json,
                    cache: false,
                    contentType: 'text/json',
                    success: function (text) {
                    	file.record.fileid = text.fileid;
                    	nui.get("fileid").setValue(file.record.fildid);
                    	nui.get("fj").setValue(fileName);
                    }
                });
            }

	//预览页面附件显示
     function setFile(e) {
     	if(e.node._pid!=-1){     
         var fileRealName = e.record.fj;
         
         var fileId = e.record.fileid;
         if (fileRealName == null || fileRealName == 'null') {
             return "";
         }
//          var html = '<a href="com.cgn.itmp.basecommon.fileDownload.flow?fileId='+fileId+'" >' + fileRealName + '</a><a class="mini-button"  >删除附件</a>';
var html = '<a href="com.cgn.itmp.basecommon.fileDownload.flow?fileId='+fileId+'" >' + fileRealName + '</a>';
         return html;
     	}
     }


	
	
	    //点击附件下载
    function load(fileId) {
        window.location.href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId="
            + fileId;
    }
		
		function setData(data){
			type="edit";
			tree.loadData(data.tree);
			$(".emp-name",tpl).html(data.approvertext + "; ");
			
			nui.get("itemname").setValue(data.itemname);
			nui.get("detailed").setValue(data.detailed);
			nui.get("combobox1").setValue(data.overhaul);
			nui.get("uuid").setValue(data.uuid);
			beginedit();
		}
		
		tree.on("drawcell",function(e){
		    if(e.node._pid>=1){
		       e.rowCls="children";
		    }
		    if(e.node._pid==-1){
		       e.rowCls="parent";
		    }
		    
		});
		tree.on("cellbeginedit",function(e){
			     if(e.record._pid=="-1"&&e.field !="elements"){
			          e.cancel=true;
			     }
		});
		//展开节点和关闭节点的启动事件
		function commit(){
			tree.commitEdit();   
	 		beginedit();   
		}
		//添加父节点
		function addparent(){
			var number=(tree.data.length)+1;
			var newrow={number:number, id:number};
			tree.commitEdit();
			
				tree.data.push(newrow);			
				tree.loadData(tree.data);
			
			beginedit();
		}
		//添加子节点
		function addchildren(){
			var node = tree.getSelectedNode();
			var index="";
			var newNode={};
			tree.commitEdit();
			if(node._pid==-1){
				if(node.children){
					var no=node.children.length*1+1;
					index=node.number+"."+no;
					newNode = {number:index};
					tree.addNode(newNode,"add",node);
				}else{
					index=node.number+"."+1;
					newNode = {number:index};
					tree.addNode(newNode,"add",node);
				}
			}
			beginedit();
		}
		//删除节点
		function onRemoveNode() {
            var node = tree.getSelectedNode();
            //判断是否选中解点
			if(node){
				
           	nui.confirm("确定删除选中节点？","系统提示",function(action){
                    if(action == "ok" ){
                   	 
                  
	            
				
            if(node._pid==-1){
            	var data=tree.data;
            	for(var i=data.length-1;i>=0;i--){
            		if(data[i]==node){
            			break;
            		}
            		tree.updateNode(data[i],{number:data[i-1].number});
            		if(data[i].children){
            			var children=data[i].children;
            			for(var j=0;j<children.length;j++){
							var index=data[i].number+"."+(j+1);
            				tree.updateNode(children[j],{number:index});
            			}
					}
            	}
            }
            if(node._pid>=1){
	            var parent=tree.getParentNode(node);
	            var childs=tree.getChildNodes(parent);
	            var number="";
	            for(var i=childs.length-1;i>=0;i--){
	            	if(childs[i]==node){
	            		break;
	            	}
	            	tree.updateNode(childs[i],{number:childs[i-1].number});
	            	
	            }
            }
            tree.removeNode(node);
                    }
            });
            
			}else{
				nui.showTips(
						{
							content: '未选择节点',
							state: 'warning',
							x: 'center', 
							y: 'center'
						}
					);
			}
            
        }
        
        
        //获取大修轮次
// 		function daxiu(){
// 			nui.get('combobox1').setAjaxType("POST");
// 			nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
// 		}
		
		function beginedit() {
// 			var rows = tree.getList();
// 			if (rows) {
// 				for(var i=0;i<rows.length;i++){
// 		        	tree.beginEditRow(rows[i]);
// 				}
// 			}
		}   
		function onCellBeginEdit(e) {    	
            var field = e.field, value = e.value;
            if (field == "fj") {
               file = e;
            }
        }
		function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }
		function zidong(type){
			var itemname=nui.get("itemname").value;
			var jd=nui.get("jd").text;
			var jz=nui.get("jz").text;
			var round=nui.get("combobox1").value;
			if(itemname!=""&jd!=""&jz!=""){
				jz=jz.substr(1);
				if(itemname==""||round==""){
					nui.alert("大修轮次或项目名称未填写");
					return;
				}
				zidongpd=1;
				nui.get("detailed").setValue(jd+""+jz+"号机组"+round+"大修"+itemname);
			}
			
		}
		 function onCheck(e){
	       if (e.isValid) {
	         if(e.value==""){
// 	           e.errorText = "必填项不可为空";
	           e.isValid = false;
	         }
	       }
	     }
	     
	       //修改流程状态
		function updateprocessStatus(type){
			var param={uuid:nui.get("relationid").value,processStatus:type};
            var json =nui.encode({data:param,entity:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage"});
            //修改流程状态
            $.ajax({
				url : "com.cgn.itmp.weldingmanagement.common.updateentity.biz.ext",
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
				}
			});
		}
								
	</script>
</body>
<style type="text/css">
/* .children{height:18%;} */
/* .parent{height:10%;} */
.children{height:70px!important;}
.parent{height:50px!important;}
.mini-textbox-border{
/* height:100% */
}
.mini-buttonedit-border{
	height:100%  
}
.mini-combobox{
	height:100% !important;
}
.mini-textboxlist ul{
    overflow: visible;
    width:100%;
    height:100%;
}
.mini-tree-treecell .mini-grid-cell-inner {
    border-bottom: none;
}
.mycreattable .mini-grid-cell, .mini-grid-headerCell, .mini-grid-filterCell, .mini-grid-summaryCell {
    border-bottom: 1px solid #c7d4d5 !important;
}
</style>
</html>
