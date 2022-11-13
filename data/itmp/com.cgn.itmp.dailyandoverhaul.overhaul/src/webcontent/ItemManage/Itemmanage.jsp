<!DOCTYPE html>
<%@page import="com.eos.data.datacontext.UserObject"%>
<%
   
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
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
<script type="text/javascript" src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
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
					<div id="form1" class="nui-form" align="center" style="width: 100%; height: 100%;">
						
						<!-- 排序字段 -->
						<table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%;width:100%;">
							<tr  class="query_two"   style="height: 28px!important;">
								<td style="width: 15% !important;" class="form_label">基地:</td>
								<td style="width: 15% !important;" colspan="1">
									<input class="nui-combobox" onvaluechanged="zidong(this,0)"  style="width: 100%;height:100%" dataField="jsonObject" id="jd"
				                    	name="jd" onvaluechanged="reloadJz" enabled="false"
				                    	textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" onvalidation="hasIllegalChar(e,100,true,false);" valueField="id"/>
								</td>
								<td style="width: 15% !important;" class="form_label">机组:</td>
								<td style="width: 15% !important;" colspan="1">
									<input class="nui-combobox" style="width: 100%;" onvaluechanged="zidong(this,1)" dataField="jsonObject" id="jz" name="jz" textField="name" 
					                     url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext" 
					                     name="tdggldaily.crew" onvalidation="hasIllegalChar(e,100,true,false);"  valueField="id"/>
								</td>
								<td style="width: 15% !important;" class="form_label">大修轮次:</td>
								<td style="width: 15% !important;" colspan="1">
									<div id="combobox1" name="overhaul" property="editor"  popupWidth="100%" class="nui-combobox" onvaluechanged="zidong(this,1)" style="width:100%;height:100% !important;"  popupWidth="150" textField="name"  
	     								url=""  onvaluechanged="getalltime"  multiSelect="false" onvalidation="hasIllegalChar(e,100,true,false);" emptyText="请选择" valueField="id" textField="name"  dataField="jsonObject" nullItemText="请选择..." >
								</td>
							</tr>
							<tr class="query_two"   style="height: 28px!important;">
								<td class="form_label">项目名称:</td>
								<td colspan="5"><input class="nui-textbox" style="width:100%;height: 100%;"   onvalidation="hasIllegalChar(e,255,true,true)"
									onblur="zidong(this,1)"   name="itemname" id="itemname" /></td>
							</tr>
							<tr class="query_two"  style="height: 28px!important;">
								<td class="form_label">项目标准化清单:</td>
								<td colspan="5"  ><input class="nui-textbox" style="width:100%;height: 100%;" onvalidation="hasIllegalChar(e,255,true,true)"
									 name="detailed" id="detailed"/></td>
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
        <div id="form2" class="nui-form" align="center" style="width: 100%; height: 8%;padding:5px 0;">
           
					<table style="width:100%;">
						<tr>
							<td style="padding: 0px 15px 8px 15px;border:0px solid #cad9ea;">
							
								<button style="color:#fff;" class="nui-button btn btn-default btn-xs btn-submit"
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

		<div class="nui-fit" style="width:100%;height:7%;padding: 0px 13px;" >
			<div id="treegrid1" class="nui-treegrid mycreattable" style="width:100%;height:100%;"     
			    url="" showTreeIcon="true" allowSortColumn="false" onselectionchanged="selectionChanged"   onCellBeginEdit="onCellBeginEdit"
			    allowCellEdit="true"
			    treeColumn="taskname" idField="UID"  resultAsTree="false"  onexpand="commit"
			    oncollapse="commit" onbeforecollapse="commit" 
			   	allowResize="true" expandOnLoad="true" activechanged="ceshi" allowResize="true"
	   		 	 allowCellSelect="true"    >
			    <div property="columns" style="height:100%;" >
			        <div name="taskname" onclick="" field="number" width="12%" style="height:100%;" allowSort="true">序号</div>
			        <div field="elements" width="15%"  allowSort="true">关键要素
			        	<input property="editor" class="nui-textarea"  onvalidation="hasIllegalChar(e,4000,true,true)" style="width:100%;height:100%;"/>
			        </div>
			        <div field="explain" width="25%"  allowSort="true">说明
			        	<input property="editor" class="nui-textarea"   onvalidation="hasIllegalChar(e,4000,false,true)" style="width:100%;height:100%;"/></div>
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
        <div id="form2" class="nui-form admin" style="width: 100%; height:35%;" align="center"  >
				<table class="table" style="width: 100%; height:100%;border:none;" >
				<tr class="changeReason_yy" style="display: none;">
					<td class="form_label">修改原因:</td>
					<td colspan="3"><input class="nui-textbox" style="width:100%"
					required="true" requiredErrorText="请输入名称"
						name="changeReasons" /></td>
				</tr>
						<tr >
					<td style="width: 16% !important;text-align:right;"  colspan="1" class="form_label">校核人员</td>
					 <td colspan="1" style="">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" onvalidation="hasIllegalChar(e,100,true,false);" id="jhry"  name="jhry"  textField="empname" style="width:100%;" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
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
						<tr>
                        <td style="text-align:center;" colspan="4">
								<a class="nui-button" id="submit" onclick="add('manualActivity')">
                               提交
                            </a>
                        
                        <a class="nui-button admin" id="submitcg"  onclick="add('')">
                              保存草稿
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
		var orderindex="";
		var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		
		
		
		if('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") > 0&&type=='add'){
			 	isadmin="true";
		}
		if(isadmin=="true"){
			$(".admin").hide();
			$("#submit")[0].children[0].innerHTML="保存";
		}
        var filename;
        var pageType;
		var tree = mini.get("treegrid1");
		 //基地机组赋值
    	var jdid = getCookie('jdid');
    	
		var jzid = getCookie('jzid');
		var jzname= getCookie('jzname');
    	nui.get("jd").setValue(jdid);
    	nui.get('jz').setAjaxType("POST");
    	nui.get('jz').load( "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid);
    	nui.get("jz").setValue(jzid);
    	var zidongpd=0;
		daxiu();
		

		function add(finishFirstActivityId){
			nui.get("orderindex").setValue(orderindex);
			var form = new nui.Form("#form1");//将普通form转为nui的form
			form.validate();
			if(finishFirstActivityId!=""){
				if(isadmin!="true"){
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
				}
				
			}
				
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
			
			nui.get("#submit").setEnabled(false);
			nui.get("#submitcg").setEnabled(false);
			var form1 = new nui.Form("#treegrid1");//将普通form转为nui的for
			form1.validate();
			form=form.getData(false,true);
			form.approver=nui.get("jhry").text;
			
			
			
			form.copypersontext=nui.get("copyperson").value;
			form.jzname=nui.get("jz").text;
			
			tree.commitEdit();
// 			var json=nui.encode({data:form,tree:tree.data,type:type});
			urlStr = "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.addwork.biz.ext";
			var processInstName="";
			var processDefName="";
			//判断是否是流程修改和管理员修改
			if (type == "update") {
				type="update";
				if(isadmin=="false"){
					type="liuchengupdate";
					processInstName="大修管理_项目管理_修改";
					processDefName="com.cgn.itmp.dailyandoverhaul.overhaul.updatework";
					var param={uuid:form.uuid,processStatus:"0"};
	                var json =nui.encode({data:param,entity:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage"});
	                //修改焊接申请得流程状态
	                $.ajax({
						url : "com.cgn.itmp.weldingmanagement.common.updateentity.biz.ext",
						type : 'POST',
						data : json,
						async:false,
						cache : false,
						contentType : 'text/json',
						success : function(text) {
						},error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							 	nui.get("#submit").setEnabled(true);
								nui.get("#submitcg").setEnabled(true);
							});
						 }
					});
				}		
			}else{
				type="add";
				if(isadmin=="false"){
					type="liuchengupdate";
					processInstName="大修管理_项目管理_新增";
					processDefName="com.cgn.itmp.dailyandoverhaul.overhaul.addwork";
				}
			}
			var allInfo = {};
		        allInfo.data = form;
		        allInfo.token="<%=TokenUtil.getTokenString(request.getSession())%>";
		        allInfo.tree= tree.data;
		        allInfo.type= type;
		        allInfo.isadmin=isadmin;
		        allInfo.finishFirstActivityId = finishFirstActivityId;
		        allInfo.processInstName = processInstName;
		        allInfo.processInstDesc = processInstName;
		        allInfo.processDefName = processDefName;
 		        allInfo.jhry = nui.get("jhry").text;
			   	allInfo.ccry = nui.get("copyperson").value;
			   	json = nui.encode(allInfo);
			   	

			$.ajax({
                url:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.addwork.biz.ext",
                type:'POST',
                data:json,
                cache:false,
                contentType:'text/json',
                success:function(text){
                nui.alert("保存成功","系统提示",function(action){
                   CloseWindow("cancel");
                });
                
              	},error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							  nui.get("#submit").setEnabled(true);
								nui.get("#submitcg").setEnabled(true);
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
                    },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							});
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
		
			if('<%=userRoleCodeList %>'.indexOf(",ITMP_JDGLY") > 0&&'<%=userRoleCodeList %>'.indexOf(",ITMP_CJGLY") < 0){
			 	isadmin="false";
			}
			type="update";
			tree.loadData(data.tree);
			$(".emp-name").html(data.approvertext + "; ");
			
			if(isadmin == "true"){
					$(".changeReasons").hide();
				}else{
					$(".admin").show();
					$("#submit")[0].children[0].innerHTML="提交";
					$(".changeReasons").show();
					$(".changeReasons_yy").show();
				}
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
			if(!node){
				nui.showTips(
						{
							content: '请选择父节点',
							state: 'warning',
							x: 'center', 
							y: 'center'
						}
				);
				return;
			}
			
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
			}else{
				nui.showTips(
						{
							content: '请选择父节点',
							state: 'warning',
							x: 'center', 
							y: 'center'
						}
					);
				return;
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
		function daxiu(){
			nui.get('combobox1').setAjaxType("POST");
			nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid);
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
		function onCancel(){
            CloseWindow("cancel");
        }
		function zidong(e,type){
		   if (e.isValid()) {
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
		}
		 function onCheck(e){
	       if (e.isValid) {
	         if(e.value==""){
// 	           e.errorText = "必填项不可为空";
	           e.isValid = false;
	         }else{
	         	 var res = new RegExp("\\b(document|onload|eval|script|img|svg|onerror|javascript|alert)\\b").test(e.value);
		    if(res){
		    	nui.alert("含有非法字符,请检查输入的内容");
		    	this.setValue("");
		    	return;
		    }
	         }
	       }
	     }
		 function setorderindex(e){
		 
			 orderindex=e;
		 }
			
			function selectionChanged(){
			}
								
	</script>
</body>
<style type="text/css">
/* .children{height:18%;} */
/* .parent{height:10%;} */
.children{height:70px!important;}
.parent{height:50px!important;}
.mini-textbox-border{
height:100%
}
.mini-buttonedit-border{
/* height:100%  */
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
