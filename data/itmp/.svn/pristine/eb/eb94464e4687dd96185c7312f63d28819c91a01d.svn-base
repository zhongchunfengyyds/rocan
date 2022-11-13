<!DOCTYPE html>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
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
	<div class="bs-docs-section" style="width: 100%; height: 23%;">
		<div class="search-box" style="width: 100%; height: 100%;">
			<div class="search-container folding-menu" id="queryForm" style="width: 100%; height: 100%;">
				<div style="width: 100%; height: 100%;">
				
				
					<div id="form0" class="nui-form" >
						<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
						<input class="nui-hidden" name="jhry" id="jhry"/>
						<input class="nui-hidden" name="ccry" id="ccry"/>
				    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
				    	<input id="modelFlag" class="nui-hidden"  value="<b:write property='modelFlag'/>" name="modelFlag"/>
				    	<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
			    	</div>
						<div id="form1" class="nui-form" align="center" style="width: 100%; height: 100%;">
						<input class="nui-hidden" name="applicant" id="applicant"/>
						<input class="nui-hidden"  name="relationid" id="relationid"/>
						<!-- 排序字段 -->
						<table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%;width:100%;">
							<tr  class="query_two"   style="height: 28px!important;">
								<td style="width: 15% !important;" class="form_label">基地:</td>
								<td style="width: 15% !important;" colspan="1">
									<input class="nui-combobox" onvaluechanged="zidong(0)"  style="width: 100%;height:100%" dataField="jsonObject" id="jd"
				                    	name="jd" onvaluechanged="reloadJz" enabled="false"
				                    	textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" onvalidation="onCheck" valueField="id"/>
								</td>
								<td style="width: 15% !important;" class="form_label">机组:</td>
								<td style="width: 15% !important;" colspan="1">
									<input class="nui-combobox" style="width: 100%;" onvaluechanged="zidong(0)" dataField="jsonObject" id="jz" name="jz" textField="name" 
					                     url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext" 
					                     name="tdggldaily.crew" onvalidation="onCheck" readonly="readonly" valueField="id"/>
								</td>
								<td style="width: 15% !important;" class="form_label">大修轮次:</td>
								<td style="width: 15% !important;" colspan="1">
									<input id="combobox1" name="overhaul" property="editor"  popupWidth="100%" class="nui-combobox" style="width:100%;height:100% !important;"  popupWidth="150" textField="name"  
	     								url=""  onvaluechanged="getalltime" readonly="readonly" multiSelect="false" emptyText="请选择" valueField="id" textField="name"  dataField="jsonObject" nullItemText="请选择..." />
								</td>
							</tr>
							<tr class="query_two"   style="height: 28px!important;">
								<td class="form_label">项目名称:</td>
								<td colspan="5"><input class="nui-textbox" style="width:100%;height: 100%;"
									onvaluechange="zidong(0)" readonly="readonly" onvalidation="onCheck" name="itemname" id="itemname" /></td>
							</tr>
							<tr class="query_two"  style="height: 28px!important;">
								<td class="form_label">项目标准化清单:</td>
								<td colspan="5"  ><input class="nui-textbox" style="width:100%;height: 100%;"
									 name="detailed" id="detailed" readonly="readonly" onvalidation="onCheck"/></td>
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
       

		<div class="nui-fit" style="width:100%;height:7%;" >
			<div id="treegrid1" class="nui-treegrid mycreattable" style="width:100%;height:100%;"     
			    url="" showTreeIcon="true" allowSortColumn="false" onselectionchanged="selectionChanged"   
			    allowCellEdit="false"
			    treeColumn="taskname" idField="UID"  resultAsTree="false"  onexpand="commit"
			    oncollapse="commit" onbeforecollapse="commit" 
			    
			   	allowResize="true" expandOnLoad="true" activechanged="ceshi" allowResize="true"
	   		 	 allowCellSelect="true"    >
			    <div property="columns" style="height:100%;" >
			        <div name="taskname" onclick="" field="number" width="12%" style="height:100%;" allowSort="true">序号</div>
			        <div field="elements" width="15%"  allowSort="true">关键要素
			        	<input property="editor" class="nui-textarea" onvalidation="onCheck" maxlength="2000" style="width:100%;height:100%;"/>
			        </div>
			        <div field="explain" width="25%"  allowSort="true">说明
			        	<input property="editor" class="nui-textarea"  maxlength="2000"  style="width:100%;height:100%;"/></div>
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
        
<div  style="padding-top:5px;" id="baseInfoForm">
      <!-- hidden域 -->
      <fieldset id="personInfo" style="width:100%;">
        <legend><span>审批信息</span></legend>
     <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
    
                 <tr id="spyjId">
                 
                    <td class="form_label"  style="width: 10%">
                        审批意见:
                    </td>
                  <td colspan="3">
                        <input id="spyj"  required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width:100%" name="spyj"/>
                    </td>
                    
                     <td colspan="2" class="form_label" >
                        常用意见:<input class="nui-dictcombobox"  onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ" style="width:50%;height: 25px;"  />
                    </td>
                </tr>
    
           	<tr id="sqrTr">
                <td class="form_label"  style="width: 10%">
                    申请人:
                </td>
                <td colspan="1">
                    <input id="sqr" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqr" value="<b:write property='personInfo/sqr'/>" />
    	  			
                </td>
                <td class="form_label"  style="width: 10%">
                    申请时间:
                </td>
                 <td colspan="1">
                        <input id="sqsj" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqsj" value="<b:write property='personInfo/sqsj'/>" />
                    </td>
           	</tr>
        <tr id="ccryTr">
           <td class="form_label" style="width: 10%">抄送人员:</td>
				<td colspan="5">
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list" style="width:55%" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
        </tr>
    </table>
    </fieldset>
    </div>
    <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
        <table width="100%">
            <tr>
                <td style="text-align:center;" colspan="4">
<%--                     <button style="width:100px" class="nui-button btn btn-default btn-xs btn-submit" --%>
<%-- 						type="button"id="btnSubmit" onclick="onSubmit()"> --%>
<!-- 						同意 -->
<%-- 					</button> --%>
<%-- 					<button style="width:100px" class="nui-button btn btn-default btn-xs btn-submit" --%>
<%-- 						type="button" onclick="btnBack()" id="btnBack"> --%>
<!-- 					退回 -->
<%-- 					</button> --%>
<%-- 					<button style="width:100px" class="nui-button btn btn-default btn-xs btn-submit" --%>
<%-- 						type="button" onclick="onCancel()"> --%>
<!-- 						关闭 -->
<%-- 					</button> --%>
					<a class="nui-button" id="btnSubmit"  onclick="onSubmit()">
                               同意
                            </a>
                        
                        <a class="nui-button" id="btnBack"   onclick="btnBack()" >
                             退回
                            </a>
                        
								<a class="nui-button" onclick="onCancel()">
                                关闭
                            </a>
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
		var isadmin ="<%=request.getSession().getAttribute("isadmin") %>";
        var filename;
        var pageType;
		var tree = nui.get("treegrid1");
		 //基地机组赋值
    	
    	
		
		var jzname= getCookie('jzname');
    	var form = new nui.Form("#form1");
		form.setChanged(false); 
        
        var editable = nui.get("editable").value;
    	if(editable=='false'){
    			nui.get("btnSubmit").hide();
    			nui.get("btnBack").hide();
    			$('#spyjId').hide();
    			$('#ccryTr').hide();   
    		}
        	
    	var zidongpd=0;
		var modelFlag=nui.get("modelFlag").getValue();
		getItemanage();
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
					nui.get("sqr").setValue(data.applicant);
					nui.get("sqsj").setValue(data.applicanttime.split(".")[0]);
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
					nui.get("uuid").setValue(data.uuid);
					nui.get("relationid").setValue(data.relationid);
				}
			});
		}
		
		
		
			function onSubmit(){
			
			 nui.get("btnSubmit").setEnabled(false);
				var form = new nui.Form("#baseInfoForm");//将普通form转为nui的for
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
					nui.get("btnSubmit").setEnabled(true);
	 				return;
				}
				form = new nui.Form("#form1");//将普通form转为nui的for
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
				form.jzname=jzname;
				tree.commitEdit();
				//获取工作流的信息
				var form0 = new nui.Form("#form0");//将普通form转为nui的for
				form0=form0.getData(false,true);
				form0.data=form;
				form0.tree=tree.data;
				form0.type="add";
				if(modelFlag=="2"){
					form0.type="endupdate";
				}
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
                                nui.get("btnSubmit").setEnabled(true);
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
		//驳回操作
		function btnBack(){
	     	
          	var form = new nui.Form("#baseInfoForm");
    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
    		form.validate();
    		
    		//是否为空
            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
   
            var data = form.getData(false,true);
            //获取流程id
            data.processInstId=processInstId;
            data.workItemId=nui.get("workItemId").getValue();
            data.backid="manualActivity";
            var json = nui.encode(data);
            //隐藏
            nui.get("btnBack").setEnabled(false);
            
    		$.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        
                        if(returnJson.exception == null){
                         nui.alert("驳回成功", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
                        }else{
                            nui.alert("驳回失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnBack").setEnabled(true);
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
			nui.get("copyperson").setValue(data.copyperson);
			nui.get("copyperson").setText(data.copypersontext);
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
		
		function onRemoveNode() {
            var node = tree.getSelectedNode();
			if(node){
				
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
            if(node._pid==1){
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

            if (node) {
                if (confirm("确定删除选中节点?")) {
                    tree.removeNode(node);
                }
            }
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
        
       
		//设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
		
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
			if(type==0){
				zidongpd=0;
			}else{
				if(zidongpd==0){
					var itemname=nui.get("itemname").getValue();
					var jd=nui.get("jd").text;
					var jz=nui.get("jz").text;
					var round=nui.get("combobox1").getValue();
					if(itemname==""||round==""){				
						alert("大修轮次或项目名称未填写");
						return;
					}
						zidongpd=1;
					nui.get("detailed").setValue(jd+jz+round+itemname);
				}
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
