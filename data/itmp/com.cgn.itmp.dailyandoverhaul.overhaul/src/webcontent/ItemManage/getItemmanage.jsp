<!DOCTYPE html>

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
<title>项目管理详情</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
<script src="<%= request.getContextPath()%>/common/common.js"
   	 type="text/javascript"></script>
   	<script src="<%= request.getContextPath()%>/common/nui/nui.js" type="text/javascript"></script>
<script type="text/javascript"
            src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
            <style type="text/css">
            	.mini-popupedit .mini-buttonedit-border .mini-buttonedit-input {
    				height:100%!important;
    				font-size:14px!important;
				}
				.search-container table input{
				height:100%!important;
				font-size:14px!important;
				}
				.mini-buttonedit-buttons {
    				top: 4px!important;
				}
				.form_label{
					border:none!important;
				}
				#xmgl #jd,#xmgl #jz,#xmgl #combobox1 {
					width:100% !important;
				}
				 .mini-button-text {
			    line-height: 16px;
			    padding: 2px 8px 3px 8px;
			    line-height: 17px\9;
			    vertical-align: top;
			    display: inline-block;
			    color: white; 
    			line-height: 16px;
		    }
            </style>
</head>
<body id="xmgl" style="width: 99%; height: 98%;background-color:#e7e8ea;">
	<div class="bs-docs-section" style="width: 97%; height: 19%;margin: 0 auto;">
		<div class="search-box" style="width: 100%; height: 100%;">
			<div class="search-container folding-menu" id="queryForm" style="width: 100%; height: 100%;">
				<div style="width: 100%; height: 100%;">
					<div id="form1" class="nui-form" align="center" style="width: 100%; height: 100%;">
						
						<!-- 排序字段 -->
						<table cellpadding="0" cellspacing="0" id="table1" class="table" style="height: 100%;width:100%;">
							<tr  class="query_two">
								<td style="width: 15% !important;" class="form_label">基地:</td>
								<td style="width: 15% !important;" colspan="1">
									<input enabled="false" class="nui-combobox" onvaluechanged="zidong(0)"  style="width: 100%;" dataField="jsonObject" id="jd"
				                    	name="jd" onvaluechanged="reloadJz"
				                    	textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id"/>
								</td>
								<td style="width: 15% !important;" class="form_label">机组:</td>
								<td style="width: 15% !important;" colspan="1">
									<input enabled="false" class="nui-combobox" style="width: 100%;" onvaluechanged="zidong(0)" dataField="jsonObject" id="jz" name="jz" textField="name" 
					                     url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext"
					                     name="tdggldaily.crew"  valueField="id"/>
								</td>
								<td style="width: 15% !important;" class="form_label">大修轮次:</td>
								<td style="width: 15% !important;" colspan="1">
									<div enabled="false" id="combobox1" name="overhaul" property="editor"  popupWidth="100%" class="nui-combobox" onvaluechanged="zidong(0)" style="width:100%;height:100% !important;"  popupWidth="150" textField="name"  
	     								url=""  onvaluechanged="getalltime"  multiSelect="false" emptyText="请选择" valueField="id" textField="name"  dataField="jsonObject" nullItemText="请选择..." >
								</td>
							</tr>
							<tr class="query_two">
								<td class="form_label">项目名称:</td>
								<td colspan="5"><input enabled="false" class="nui-textbox" style="height: 100%;width:100%;"
									onvaluechange=zidong(0) name="itemname" id="itemname" /></td>
							</tr>
							<tr class="query_two">
								<td class="form_label">项目标准化清单:</td>
								<td colspan="5" onclick="zidong(1)" ><input class="nui-textbox" style="height: 100%;width:100%;"
									 name="detailed" id="detailed" enabled="false"/></td>
							</tr>
							<input class="nui-hidden"
									 name="uuid" id="uuid"/>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
		<div class="nui-fit" style="width:100%;height:80%;" >
			<div id="treegrid1" class="nui-treegrid mycreattable" style="width:97%;height:100%;background:#fff;margin:0 auto;"     
			    url="" showTreeIcon="true" allowSortColumn="false"   onCellBeginEdit="onCellBeginEdit"
			    
			    treeColumn="taskname" idField="UID"  resultAsTree="false"  onexpand="commit"
			    oncollapse="commit" onbeforecollapse="commit" 
			    
			   	allowResize="true" expandOnLoad="true" activechanged="ceshi" allowResize="true"
	   		 	 allowCellSelect="true"    >
			    <div property="columns" style="height:100%;" >
			        <div name="taskname" onclick="" field="number" width="20%" style="height:100%;" allowSort="true">序号</div>
			        <div field="elements" width="25%"  allowSort="true">关键要素
			        	<input property="editor" class="nui-textarea" style="width:100%;height:100%;"/>
			        </div>
			        <div field="explain" width="25%" align="right" allowSort="true">说明
			        	<input property="editor" class="nui-textarea" style="width:100%;height:100%;"/></div>
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


			<div class=""  style="text-align:center;width:100%;height:13%;" showToolbar="false" showFooter="false" >
				<a class="nui-button"  onclick="onCancel()">
                                关闭
                            </a>
				</div>

			
		

	<script type="text/javascript">
		nui.parse();
		var file;
		var type="add";
        var filename;
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
		

		function add(){
			var form = new nui.Form("#form1");//将普通form转为nui的for
			form=form.getData(false,true);
			form.approver=nui.get("approver").value;
			form.approvertext=nui.get("approver").text;
			form.authorizeder=nui.get("authorizeder").value;
			form.authorizedertext=nui.get("authorizeder").text;
			form.copyperson=nui.get("copyperson").value;
			form.copypersontext=nui.get("copyperson").text;
			form.jzname=jzname;
			tree.commitEdit();
			
			var json=nui.encode({data:form,tree:tree.data,type:type});
			$.ajax({
                url:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.add.biz.ext",
                type:'POST',
                data:json,
                cache:false,
                contentType:'text/json',
                success:function(text){
                   CloseWindow("cancel");
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
         var html = '<a href="com.cgn.itmp.basecommon.fileDownload.flow?fileId='+fileId+'" >' + fileRealName + '</a>';
         return html;
     	}
     }

	
	function onSelectionChanged(){
// 	
		var row = tree.getSelected();
		tree.commitEdit(); 
		tree.beginEditRow(row);
	}
	
	
	    //点击附件下载
    function load(fileId) {
        window.location.href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId="
            + fileId;
    }
		
		function setData(data){
			type="edit";
			tree.loadData(data.tree);
			
			nui.get("itemname").setValue(data.itemname);
			nui.get("detailed").setValue(data.detailed);
			nui.get("combobox1").setValue(data.overhaul);
			nui.get("jd").setValue(data.jd);
	    	nui.get('jz').setAjaxType("POST");
	    	nui.get('jz').load( "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + data.jd);
	    	nui.get("jz").setValue(data.jz);
			nui.get('combobox1').setAjaxType("POST");
			nui.get('combobox1').load("com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+data.jd);
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

		function onRemoveNode() {

            var node = tree.getSelectedNode();
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
	</script>
</body>
<style type="text/css">
/* .children{height:18%;} */
/* .parent{height:10%;} */
.children{height:70px;}
.parent{height:50px;}
.mini-textbox-border{
height:100%
}
.mini-buttonedit-border{
height:100% 
}
.mini-combobox{
	height:100% !important;
}
.mini-textboxlist ul{
    overflow: auto;
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
