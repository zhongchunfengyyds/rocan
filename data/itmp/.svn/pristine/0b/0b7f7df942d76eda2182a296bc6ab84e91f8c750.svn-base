<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-10-15 10:42:52
- Description:
    --%>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>	
	
	
	
</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<input class="nui-hidden" name="jhry" id="jhry"/>
		<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/> 
	    <input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
	    <input class="nui-hidden"  id="backid" value="manualActivity" name="backid"/>
	    <input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
		<!-- hidden域 -->
		<div id="form1">
		<input class="nui-hidden" name="insplanmg.uuid" />
		<input class="nui-hidden" name="insplanmg.relationid" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<input class="nui-hidden" id="fileid" name="insplanmg.fileid" />
			<tr>
				<td class="form_label">大修轮次:</td>
				<td colspan="1"><input class="nui-textbox" style="width:100%"
				
					name="insplanmg.overhaulsq" /></td>
				<td class="form_label">检查阶段:</td>
				<td colspan="1"><input class="nui-dictcombobox"
				multiSelect="true" id="pipemodel"
				 valueField="dictID" textField="dictName"  
					 dictTypeId="checkstage"
					style="width: 100%" name="insplanmg.insphase" />
					</td>
			</tr>
			<tr>
				<td class="form_label">检查范围:</td>
				<td colspan="1">
				<input class="nui-dictcombobox"
				multiSelect="true" id="pipemodel"
				 valueField="dictID" textField="dictName"  
					 dictTypeId="insscope"
					style="width: 100%" name="insplanmg.insscope" />
				</td>
				<td class="form_label">冲洗后管间检查计划:</td>
				<td  colspan="1" id="fileHref">
                    
                 </td>
				<td colspan="1" style="display: none;">
				<div >
				
					<input class="nui-textbox" style="width:100%"  id="fj" name="insplanmg.fj" />
<!-- 					<form id="uploadform" enctype="multipart/form-data"> -->
<!-- 						<input id="fj" class="" style="width:100%" type="file" name="file" accept="*" onchange="fileSub(this)">  -->
<!-- 					</form> -->
				</div>
				</td>
			</tr>
			<tr>
				<td class="form_label">备注:</td>
				<td colspan="3"><input class="nui-textarea" style="width:100%"
					name="insplanmg.remake" /></td>
			</tr>
			<tr class="changeReasons" style="display: none;">
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%"
					name="insplanmg.changeReason" /></td>
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
                    <input id="sqr" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="insplanmg.changeuser" value="<b:write property='insplanmg/changeuser'/>" />
    	  			
                </td>
                <td class="form_label"  style="width: 10%">
                    申请时间:
                </td>
                 <td colspan="1">
                        <input id="sqsj" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="insplanmg.changetime" value="<b:write property='insplanmg/changetime'/>" />
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
                    <a class="nui-button" id="btnSubmit" onclick="onSubmit()">
                        同意
                    </a>
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <a class="nui-button"  onclick="btnBack()" id="btnBack">
                   退回
                    </a> 
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <a class="nui-button"  onclick="onCancel()">
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
        form.validate();
        form.setEnabled(false);
		var fileid = "";
 		var processInstId =nui.get("processInstId").getValue();
//  		var processInstId ="237788";
		var isadmin ="<%=request.getSession().getAttribute("isadmin") %>";
		$(".changeReasons").show();
		getInsplanmgmf();
		var editable=nui.get('editable').value;
		if(editable=='false'){
			nui.get("btnSubmit").hide();
			nui.get("btnBack").hide();
			$('#spyjId').hide();
			$('#ccryTr').hide();   
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
		function getInsplanmgmf(){
		var form = new nui.Form("#form1");//将普通form转为nui的form
			var json=nui.encode({processInstId:processInstId,entityType:"com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif"});
			$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var insplanmg=text.data;
					var temple={insplanmg:insplanmg};
					form.setData(temple);
					nui.get("sqr").setValue(insplanmg.changeuser);
					nui.get("sqsj").setValue(insplanmg.changetime);
					 fileHref();
				}	
			});
		}
		
		
		
		 function onSubmit(){
    			
				var form = new nui.Form("#baseInfoForm");
	    		form.validate();
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            form = new nui.Form("#dataform1");
	            var data = form.getData(false,true);
	            nui.get("#btnSubmit").setEnabled(false);
	            var urlStr = "com.cgn.itmp.inspectcomponentmanage.trainsmg.trainsmgbiz.endupdatework.biz.ext";
	            data.data=data.insplanmg;
	            data.spyj=nui.get("spyj").value;
				data.ccry=nui.get("ccry").value;
	    		data.entityName="com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg";
	            var json = nui.encode(data);
	            
	    		$.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                       	    nui.alert("提交成功");
                            onCancel();
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

		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);

			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);

			//如果是点击编辑类型页面
			if (infos.pageType == "edit") {
				$(".changeReasons").show();
				var json = infos.record;

				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
			}else{
				$(".changeReasons").hide();
			}
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
		function onOk(finishFirstActivityId) {
			saveData(finishFirstActivityId);
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

			if (field == "enclosure") {
				file = e;
			}
		}
    	function onCheck(e){
	       if (e.isValid) {
	         if(e.value==""){
	           e.errorText = "必填项不可为空";
	           e.isValid = false;
	         }
	       }
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
                         nui.alert("驳回成功");
                            onCancel();
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
         //取消
    function onCancel() {
        if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();
        self.parent.location.reload();
        return;
    }
    function fileSub(file){
    		var  fv=file.value;
    		if(fv){
   	    		$("#uploadform").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
					success : function(data) {
						if (data.code == 1) {
							nui.get("fj").setValue(data.list[0].name);
							nui.get("fileid").setValue(data.list[0].uri);
							fileid = data.list[0].uri;
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} else {
				nui.alert("请上传图片");
				return false;
			}
		}
		//设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
	</script>
</body>
</html>
