<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-09-28 16:52:08
- Description:
    --%>
<head>
<title>蒸汽堵管统计</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
 <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
  <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script> <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>

</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
		<input class="nui-hidden" name="jhry" id="jhry"/>
		<input class="nui-hidden" name="ccry" id="ccry"/>
    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
    	<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
    	<div id="form1">
		<input class="nui-hidden" name="pipeblockage.uuid" />
		<input class="nui-hidden" name="pipeblockage.relationid" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<input class="nui-hidden" id="fpath" name="pipeblockage.filepath" />
			<input class="nui-hidden" id="fname" name="pipeblockage.fj" />
			<input class="nui-hidden" id="fileid" name="pipeblockage.fileid" />
			<tr>
				<td class="form_label">蒸汽发生器型号:</td>
				<td colspan="1"><input class="nui-combobox"
									 id="pipemodel"
									textField="text" valueField="id"
					required="true" requiredErrorText="请输入名称" emptyText="请输入蒸汽发生器型号" dictTypeId="evaporator_model"
					style="width: 100%" name="pipeblockage.steamGeneratorModel" /></td>
				<td class="form_label">蒸汽发生器编号:</td>
				<td colspan="1"><input class="nui-textbox"
					 style="width: 100%"
					name="pipeblockage.steamGeneratorNo" /></td>
			</tr>
			<tr>
				<td class="form_label">功能位置:</td>
<!-- 				<td colspan="1"><input class="nui-textbox" -->
<!-- 					 style="width: 100%" -->
<!-- 					name="pipeblockage.funlocation" /></td> -->
				<td colspan="1"><input class="nui-textbox"
				style="width: 70%; float: left;" 
				id="functionpostion" name="pipeblockage.funlocation" /> <input
				class="nui-dictcombobox" style="width: 30%; float: left;"
				dictTypeId="functionpostion" onvaluechanged="functionpostionchange" /></td>
				<td class="form_label">传热管编号列（R）:</td>
				<td colspan="1"><input class="nui-textbox"
					 style="width: 100%" name="pipeblockage.no_r" /></td>
			</tr>
			<tr>
				<td class="form_label">传热管编号行（C）:</td>
				<td colspan="1"><input class="nui-textbox"
					onvalidation="onCheck" style="width: 100%" name="pipeblockage.no_c" /></td>
				<td class="form_label">缺陷类型:</td>
				<td colspan="1"><input class="nui-textbox"
					 style="width: 100%"
					name="pipeblockage.defectTypes" /></td>
			</tr>
			<tr>
				<td class="form_label">缺陷尺寸:</td>
				<td colspan="1"><input class="nui-textbox"
					onvalidation="onCheck" style="width: 100%"
					name="pipeblockage.defectSize" /></td>
				<td class="form_label">所在位置:</td>
				<td colspan="1"><input class="nui-textbox"
					onvalidation="onCheck" style="width: 100%"
					name="pipeblockage.location" /></td>
			</tr>
			<tr>
				<td class="form_label">堵管时间:</td>
				<td colspan="1"><input property="editor" class="nui-textbox"
					onvalidation="onCheck" style="width: 100%;" required="true"
					requiredErrorText="有效日期不能为空" 
					name="pipeblockage.pluggingTime" /></td>
			</tr>
			<tr>
				<td class="form_label">附件:</td>
				<td  colspan="1" id="fileHref">
                    
                 </td>
				<td colspan="1">
				<div style="display: flex;"  class="fj">
					<input class="nui-textbox" style="width:100%"  id="fj" name="pipeblockage.fj" />
					<form id="uploadform" enctype="multipart/form-data">
						<input id="fj" class="" style="width:100%" type="file" name="file" accept="*" onchange="fileSub(this)"> 
					</form>
				</div>
				</td>
			</tr>
			<tr>
				<td class="form_label">堵管原因:</td>
				<td colspan="3"><input class="nui-textbox"
					onvalidation="onCheck" style="width: 100%"
					name="pipeblockage.pluggingReason" /></td>
			</tr>
			<tr style="visibility: hidden; height: 1px; overflow: hidden;">
				<td style="visibility: hidden; height: 1px; overflow: hidden;"
					colspan="1"><input value="0" class="nui-hidden"
					name="pipeblockage.isdel" /></td>
			</tr>
		<tr class="changeReasons_yy" >
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%"
				
					name="pipeblockage.changeReason" /></td>
			</tr>
			
		</table>
		</div>
		</div>
		<div  style="padding-top:5px;" id="baseInfoForm">
      <!-- hidden域 -->
      <fieldset id="personInfo" style="width:95%;">
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
                        常用意见:<input class="nui-dictcombobox"  onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ" style="width:80%"  />
                    </td>
                </tr>
    
           	<tr id="sqrTr">
                <td class="form_label"  style="width: 10%">
                    申请人:
                </td>
                <td colspan="1">
                    <input id="sqr" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqr" value="" />
    	  			
                </td>
                <td class="form_label"  style="width: 10%">
                    申请时间:
                </td>
                 <td colspan="1">
                        <input id="sqsj" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqsj" value="" />
                    </td>
           	</tr>
        <tr id="ccryTr">
           <td class="form_label" style="width: 10%">抄送人员:</td>
				<td colspan="5">
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list" style="width:100%" 
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
                    <a class="nui-button" style="padding: 1px 3px" id="btnSubmit" onclick="onSubmit()">
                        提交
                    </a>
                    <span style="display:inline-block;width:25px;">
                            </span>
                   <a class="nui-button" style="padding: 1px 3px"  onclick="btnBack()" id="btnBack">
                   退回
                    </a> 
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <a class="nui-button" style="padding: 1px 3px"  onclick="onCancel()">
                        关闭
                    </a>
                </td>
            </tr>
        </table>
    </div>
	<script type="text/javascript">
		nui.parse();
		
		var form = new nui.Form("#dataform1");
        form.setChanged(false);
        form.setEnabled(false);
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		var processInstId =nui.get("processInstId").getValue();
		var filename;
		var fileid;
		getPipeblock();
		var editable=nui.get('editable').value;
		nui.get("editable").getValue();
		if(editable=='false'){
			nui.get("btnSubmit").hide();
			nui.get("btnBack").hide();
			$('#spyjId').hide();
			$('#ccryTr').hide();   
		}

		function getPipeblock(){
		var form = new nui.Form("#form1");//将普通form转为nui的form
			var json=nui.encode({processInstId:processInstId,entityType:"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage_MF"});
			$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",//可复用
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var pipeblockage=text.data;
					var temple={pipeblockage:pipeblockage};
					
					form.setData(temple);
					nui.get("sqr").setValue(pipeblockage.changeuser);
					nui.get("sqsj").setValue(pipeblockage.changetime);
					fileHref();
					
					var datas = {};
					datas.jd = text.data.jd;
					var myjsons = nui.encode({
						myDatas : datas
					});
					$.ajax({
						url : "com.cgn.itmp.inspectcomponentmanage.pipebaseInfo.pipebaseinfobiz.queryPipemodel.biz.ext",
						type : 'POST',
						cache : false,
						data : myjsons,
						contentType : 'text/json',	
						success : function(data) {
							 nui.get("pipemodel").setData(data.pipemodel.data);
						}
					});
				}
			});
		}

		
		function onSubmit(){
				var form = new nui.Form("#baseInfoForm");
	    		form.validate();
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            form = new nui.Form("#dataform1");
	            var data = form.getData(false,true);
	    		var urlStr = "com.cgn.itmp.inspectcomponentmanage.trainsmg.trainsmgbiz.endupdatework.biz.ext";
	            data.spyj=nui.get("spyj").value;
				data.ccry=nui.get("ccry").value;
	            data.data=data.pipeblockage;
	    		data.entityName="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage";
	            var json = nui.encode(data);
	            nui.get("#btnSubmit").setEnabled(false);
	            
	    		$.ajax({
                    url:urlStr,
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
		
		
		function btnBack(){
	     	
    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
          	var form = new nui.Form("#baseInfoForm");
    		form.validate();
            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
            form = new nui.Form("#dataform1");
            var data = form.getData(false,true);
            data.processInstId=processInstId;
            data.backid="manualActivity";
            data.spyj=nui.get("spyj").value;
			data.ccry=nui.get("ccry").value;
            var json = nui.encode(data);
            
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
		
		
		function onDelete(){
	       nui.confirm("确定要作废流程？","提示",
	          function(action){
	             if(action=="ok"){
	            nui.get("#btnSubmit").setEnabled(false);
	               nui.get("#btnDelete").setEnabled(false);
	                var json = {};
	                
	                 json.processInstId = nui.getbyName('processInstId').getValue();
	         json.workItemId = nui.getbyName('workItemId').getValue();
	         json.entityType = "nonstatutory.ffddxedit.Tdgglgfffddxtmedit";
		      var jsondata = nui.encode(json);
		      $.ajax({
	                 url:"com.cgn.basecommon.workFlowCommon.wsterminateProcess.biz.ext",
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
		
		
		//回显附件
		function fileHref(){
			$('.fj').hide();
			var div = document.getElementById('fileHref');
			var fileRealName = nui.get('fj').value;
			var fileId = nui.get('fileid').value;
			if(fileRealName!=""&&fileId!=""){
				div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			}
		}
		//下载
		function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
	         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
	         document.body.appendChild(elemIF);
	         elemIF.style.display = "none";
		}
		
		//关闭窗口
		function CloseWindow(action) {
			if (action == "close" && form.isChanged()) {
				if (confirm("数据被修改了，是否先保存？")) {
					saveData();
				}
			}
			if (window.CloseOwnerWindow)
				return window.CloseOwnerWindow(action);
			else
				window.close();
		}

		//确定保存或更新
		function onOk() {
			saveData();
		}

		//关闭
		function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }

		//选择文件
		function onfileselect(e) {

			startUpload(e);
		}
		//上传
		function startUpload(e) {
			var fileupload = e.sender;

			fileupload.startUpload();
		}
		// 		//上传成功时，回写附件的name、id
		function onUploadSuccess(e) {
			var appIconName = e.file.name;
			var appIconPath = nui.decode(e.serverData).ret.filePath;
			nui.get("fpath").setValue(appIconPath);
			nui.get("fname").setValue(appIconName);
			fileid = e.file.fileid;

			fileName = e.file.name;
			filePath = nui.decode(e.serverData).ret.filePath;
			var json = {};
			json.filename = fileName;
			json.filepath = filePath;
			json = nui.encode(json);
			$.ajax({
				url : "com.cgn.itmp.basecommon.FileComp.addFile.biz.ext",
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					fileid = text.fileid;
				}
			});

		}

		function onuploadcomplete(e) {

		}
		//编辑加载文件
		function onCellBeginEdit(e) {
			var field = e.field, value = e.value;

			if (field == "fj") {
				file = e;
			}
		}
		function onCheck(e) {
			if (e.isValid) {
				if (e.value == "") {
					e.errorText = "必填项不可为空";
					e.isValid = false;
					nui.showTips(
						{
							content: '必填项不可为空',
							state: 'warning',
							x: 'center', 
							y: 'center'
						}
					);
				}
			}
		}
			//设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
    	    	
		function functionpostionchange(e) {
			nui.get("functionpostion").setValue(
					getCookie('jzname') + "RCP" + e.selected.dictName + "GV");
		};
	</script>
</body>
</html>
