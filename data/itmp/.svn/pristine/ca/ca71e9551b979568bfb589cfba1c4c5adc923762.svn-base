<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ page import="com.eos.data.datacontext.IUserObject"%>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	IUserObject cu = CommonUtil.getUserObject();
	String userid = cu.getUserId();
	String username = cu.getUserRealName();
%>
<html>
<%--
- Author(s): jirukang
- Date: 2019-11-05 11:20:56
- Description:锅炉单条新增流程表单
    --%>
    <head>
     
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
         <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
        					 <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" id="editable" value="<b:write property='editable'/>" />
            <input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
		<input class="nui-hidden" name="jhry" id="jhry"/>
		<input class="nui-hidden" name="ccry" id="ccry"/>
    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
    	<input id="modelFlag" class="nui-hidden"  value="<b:write property='modelFlag'/>" name="modelFlag"/>
    	<div id="form1">
            <input class="nui-hidden" name="boiler.uuid"/>
            <input class="nui-hidden" id="equipmentdiagramfileid" name="boiler.equipmentdiagramfileid"/>
            <input class="nui-hidden" id="thicknessmeasurefileid" name="boiler.thicknessmeasurefileid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        基地:
                    </td>
                    <td colspan="1">
                        <input id="jd" class="nui-combobox"  style="width:100%" name="boiler.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
                    </td>
                    <td class="form_label">
                        机组:
                    </td>
                    <td colspan="1">
                    <input class="nui-combobox" readonly="readonly" name="boiler.jz" required="true" requiredErrorText="机组不能为空" 
                        dataField="jsonObject" id="jz" textField="name" url="" valueField="id" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        设备类型:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" required="true" requiredErrorText="设备类型不能为空"  name="boiler.equipmenttype" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        设备名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" required="true" requiredErrorText="设备名称不能为空" name="boiler.equipmentname" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        系统:
                    </td>
                    <td colspan="1">
                        <input id="system" required="true" requiredErrorText="系统不能为空" class="nui-dictcombobox" dictTypeId="GLXT" name="boiler.system" style="width:100%"/>
                    </td>
                
                    <td class="form_label">
                        设备编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" required="true" requiredErrorText="设备编号不能为空" name="boiler.equipmentnumber" style="width:100%"/>
                    </td>
            </tr>
                <tr>
                    <td class="form_label">
                        设备型号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" required="true" requiredErrorText="设备型号不能为空"  name="boiler.equipmentmodel" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        锅炉登记卡:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.boilerregistrationcard" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        制造单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.manufacturingunit" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        设备示意图:
                    </td>
                     <td colspan="1" id="fileHref" style="display: none">
                    
                    </td>
                    <td colspan="1" id="sbsyt">
                    <div id="progress" class="progress" style="display:none;">
			<div class="progress-item"></div>
 </div>
                    	<div style="display: flex;">
						<input class="nui-textbox" style="width:100%" readonly="readonly"  id="equipmentdiagramname" name="boiler.equipmentdiagram" />
						<form id="uploadform" enctype="multipart/form-data">
							<input id="equipmentdiagram" class="" style="width:100%" type="file" name="boiler.equipmentdiagram" accept="*" onchange="fileSub(this)"> 
						</form>
					</div>
                    </td>
                    
                    <td class="form_label">
                        主体材质:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.mainmaterial" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        主体厚度(mm):
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.mainbodythickness" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        安装单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.installationunit" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        测厚布点图:
                    </td>
                    <td colspan="1" id="fileHref1" style="display: none">
                    
                    </td>
                    <td colspan="1" id="chbdt">
                    <div id="progress2" class="progress" style="display:none;background:chartreuse;">
							<div class="progress-item"></div>
				 </div>
                   <div style="display: flex;">
							<input class="nui-textbox" style="width:100%" readonly="readonly"  id="thicknessmeasurementpointlayoutname" name="boiler.thicknessmeasurementpointlayout" />
							<form id="uploadform1" enctype="multipart/form-data">
								<input id="thicknessmeasurementpointlayout" class="" style="width:100%" type="file" name="boiler.thicknessmeasurementpointlayout" accept="*" onchange="fileSub1(this)"> 
							</form>
						</div>
                    </td>
                    <td class="form_label">
                        产权单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.propertyunit" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        使用单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.useunit" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        组织机构代码:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.organizationcode" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        邮政编码:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.postalcode" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        额定出力:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.ratedoutput" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        额定压力（Mpa）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.ratedpressure" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        额定温度（℃）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.ratedtemperature" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        工作压力（Mpa）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.workingpressure" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        出口温度（℃）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.outlettemperature" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        回流温度（℃）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="boiler.refluxtemperature" style="width:100%"/>
                    </td>
             	</tr>
                <tr>       
                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea" name="boiler.remarks" style="width:100%"/>
                    </td>
                    <input value="0" class="nui-hidden" name="boiler.isdel" />
                </tr>
                <tr class="changeReasons_yy" id="xgyytr" style="display: none;">
				<td class="form_label">修改原因:</td>
				<td colspan="5"><input class="nui-textarea" style="width:100%"
				required="true" requiredErrorText="请输入名称"
					name="boiler.changeReasons" /></td>
			</tr>
                <tr class="changeReasons" id="jhrytr" style="display: none;">
			<td class="form_label">校核人员</td>
					 <td colspan="3">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
				</tr>
				<tr  class="changeReasons" id="ccryTr">
				<td class="form_label" colspan="1"
					style="width: 16% !important; text-align: center">抄送人员:</td>
				<td colspan="3"><input property="editor" name="ccry" id="ccry" multi="true"
					name="copyperson" class="nui-textboxlist" dataField="list"
					style="width: 100%; height: 100%;"
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
					valueField="empcode" textField="empcodename" ScrollBar="Vertical"
					searchField="keyword" /></td>
			</tr>
            </table>
            </div>
            <div class="nui-toolbar" id="btn" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
	                    <a class="nui-button" id="btnSubmit" onclick="onSubmit()">
	                        提交
	                    </a>
	                    <span style="display:inline-block;width:25px;">
		                            </span>
	                    <a class="nui-button"  onclick="onDelete()" id="btnDelete">
	                   作废
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
        </div>
        <script type="text/javascript">
            nui.parse();
            var processInstId =nui.get("processInstId").getValue();
            var isadmin ="<%=request.getSession().getAttribute("isadmin") %>";
            var modelFlag=nui.get("modelFlag").getValue();
            var editable = nui.get('editable').getValue();//已办
			$(".changeReasons").show();
			getBoiler();
	if(editable=='false'){
			$('#btnSubmit').hide();
	         $('#btnDelete').hide();
	         $('.changeReasons').hide();
    		fileHref();
    		fileHref1();
    		setEna();
	         labelModel();
		}
		
		   //设置文件下载
       function setEna(){
       		document.getElementById("fileHref").style.display="";
    		document.getElementById("sbsyt").style.display="none";
    		document.getElementById("fileHref1").style.display="";
    		document.getElementById("chbdt").style.display="none";
       }  
		function fileHref(){
			 var div = document.getElementById('fileHref');
			var fileRealName = nui.get('equipmentdiagramname').value;
			var fileId = nui.get('equipmentdiagramfileid').value;
			if(fileRealName!=""&&fileId!=""){
		 		div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			}
		}
		function fileHref1(){
			 var div = document.getElementById('fileHref1');
			var fileRealName = nui.get('thicknessmeasurementpointlayoutname').value;//eommfile
			var fileId = nui.get('thicknessmeasurefileid').value;//eommfileid
			if(fileRealName!=""&&fileId!=""){
		 		div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			}
		}
		
		
		function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
	         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
	         document.body.appendChild(elemIF);
	         elemIF.style.display = "none";
		}
		
		
		//文本只读模式
		function labelModel(isEdit) {
            var form = new nui.Form("#form1");
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
        }
			
			function getBoiler(){
				var form = new nui.Form("#form1");//将普通form转为nui的form
				if(modelFlag=="1"){
					entityType="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler_modif";
				}else{
					entityType="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler_modif";
					$(".changeReasons_yy").show();
				}
			
				var json=nui.encode({processInstId:processInstId,entityType:entityType});
				$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",//该方法可复用
				type : 'POST',
				data : json,
				async : false,
				contentType : 'text/json',
				success : function(text) {
					var boiler=text.data;
					
					var temple={boiler:boiler};
					 var jdid = boiler.jd;
					nui.get('jz').setAjaxType("POST");
					nui.get('jz').load("com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="+ jdid);
					form.setData(temple);
				}
			});
			}
		
			
			function onSubmit(){
				var form = new nui.Form("#dataform1");
	    		var urlStr = "com.cgn.itmp.basecommon.Common.updateEntity.biz.ext";
	    		form.validate();
	    		
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	             
	            data.delete_entity = data.boiler;
	            if(modelFlag=="1"){
					data.entityType="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler_modif";
				}else{
					data.entityType="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler_modif";
					$(".changeReasons_yy").show();
				}
				data.jhry = nui.get("jhry").text;
				data.ccry = nui.get("ccry").value;
	            var json = nui.encode(data);
	            nui.get("#btnSubmit").setEnabled(false);
	            nui.get("#btnDelete").setEnabled(false);
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
	            					nui.get("#btnDelete").setEnabled(true);
							});
						 }
	          });
		}
			//作废
		function onDelete(){
       nui.confirm("确定要作废流程？","提示",
          function(action){
             if(action=="ok"){
            nui.get("#btnSubmit").setEnabled(false);
               nui.get("#btnDelete").setEnabled(false);
                var json = {};
                 json.processInstId = nui.getbyName('processInstId').getValue();
		         json.workItemId = nui.getbyName('workItemId').getValue();
		         if(modelFlag=="1"){
					json.entityType="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler";
				}else{
					json.entityType="com.cgn.itmp.inspectcomponentmanage.conventionalislandand.boiler.Boiler";
				}
		      var jsondata = nui.encode(json);
		       
		      $.ajax({
                 url:"com.cgn.itmp.basecommon.WorkFlowCommon.wsterminateProcess.biz.ext",
                 type:'POST',
                 data:jsondata,
                 cache:false,
                 contentType:'text/json',
                 success:function(data){
                     var message = "流程作废成功";
                 	 nui.alert(message,"成功",function(action){
	                 if(action == "ok" || action == "close"){
// 							updateprocessStatus("1");
                 			onCancel();
					}
                });
               },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							  nui.get("#btnSubmit").setEnabled(true);
               nui.get("#btnDelete").setEnabled(true);
							});
						 }
            });
            }
          });
      }

                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
                        var json = infos.record;

                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);

                        //如果是点击编辑类型页面
                       if (infos.pageType == "edit") {
                        	if(isadmin == "true"){
								$(".changeReasons").hide();
							}else{
								$(".changeReasons").show();
							}
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
                        else window.close();
                    }

                    //确定保存或更新
					function onOk(finishFirstActivityId) {
						saveData(finishFirstActivityId);
					}

                    //取消
//                     function onCancel() {
//                         CloseWindow("cancel");
//                     }
			function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }
                    
                    //选择文件
        function onuploadcomplete(e) {

		}
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
			if(e.sender.id=="fileName1"){
				nui.get("fpath1").setValue(appIconPath);
				nui.get("fname1").setValue(appIconName);
				nui.get("fpath").setValue(appIconPath);
			}else{
				nui.get("fpath2").setValue(appIconPath);
				nui.get("fname2").setValue(appIconName);
				nui.get("fpath").setValue(appIconPath);
			}
		}
    	function fileSub(file){
    		var fv=file.value;
    		if(fv){
    		$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
   	    		$("#uploadform").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
   		            processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress .progress-item").style.width = percent + "%";
		                }, false);
		            }
		            return xhr;
		        },			
					success : function(data) {
					 
						if (data.code == 1) {
							nui.get("equipmentdiagramname").setValue(data.list[0].name);
							nui.get("equipmentdiagramfileid").setValue(data.list[0].uri);
							equipmentdiagramfileid = data.list[0].uri;
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
		function fileSub1(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress2").css('display','');
			document.querySelector("#progress2 .progress-item").style.width = "0%";
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
   	    		$("#uploadform1").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
   		            processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress2', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress2 .progress-item").style.width = percent + "%";
		                }, false);
		            }
		            return xhr;
		        },			
					success : function(data) {
						if (data.code == 1) {
							nui.get("thicknessmeasurementpointlayoutname").setValue(data.list[0].name);
							nui.get("thicknessmeasurefileid").setValue(data.list[0].uri);
							thicknessmeasurefileid = data.list[0].uri;
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
                </script>
            </body>
        </html>
