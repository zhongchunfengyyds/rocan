<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-10 11:54:19
- Description:
    --%>
<head>
<title>Entity录入</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
          <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
		<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<style type="text/css">
</style>
</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="equipmentbaseinformation.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
		<input class="nui-hidden" name="equipmentbaseinformation.uuid" />
		<input class="nui-hidden" id="eommfileid" name="equipmentbaseinformation.eommfileid"/>
		<input class="nui-hidden" id="sdmfileid" name="equipmentbaseinformation.sdmfileid"/>
            <input class="nui-hidden" id="equipmentgraphfileid" name="equipmentbaseinformation.equipmentgraphfileid"/>
            <input class="nui-hidden" id="equiaxedgraphfileid" name="equipmentbaseinformation.equiaxedgraphfileid"/>
            <input class="nui-hidden" id="eomrfileid" name="equipmentbaseinformation.eomrfileid"/>
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">设备基本信息</td>
				<td class="form_label">设备名称:</td>
				<td colspan="1"><input class="nui-textbox"
					name="equipmentbaseinformation.devicename" required="required" emptyText="请输入设备名称" onvalidation="hasIllegalChar(e,255,true,true)" requiredErrorText="设备名称不能为空"/></td>
				<td class="form_label">功能位置:</td>
				<td colspan="1"><input class="nui-textbox"
					name="equipmentbaseinformation.position" required="required" emptyText="请输入功能位置" onvalidation="hasIllegalChar(e,255,true,true)" requiredErrorText="功能位置不能为空"/></td>
				<td class="form_label">设备类型:</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="SBLX" emptyText="请选择设备类型..." 
				  name="equipmentbaseinformation.devicetype" required="required" onvalidation="hasIllegalChar(e,255,true,true)" requiredErrorText="设备类型不能为空"/></td>
			</tr>
			 <tr>
			 	<td class="form_label">安全级别</td>
				<td class="form_label">制造级别:</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="RCCM"  emptyText="请选择制造级别" showNullItem="true" nullItemText="请选择..."
					name="equipmentbaseinformation.rccmlevel" required="required"  requiredErrorText="制造级别不能为空"/></td>
				<td class="form_label">安全级别:</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="RCCP" emptyText="请选择安全级别" showNullItem="true" nullItemText="请选择..."
					name="equipmentbaseinformation.rccplevel" required="required" requiredErrorText="安全级别不能为空"/></td>
				<td class="form_label">规范级别(RSE-M):</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="RSEM" emptyText="请选择规范级别" showNullItem="true" nullItemText="请选择..."
					name="equipmentbaseinformation.rsemlevel" required="required" requiredErrorText="规范级别(RSE-M)不能为空"/></td>
			</tr>
			
			<tr>
				<td class="form_label" rowspan="2">重要参数</td>
				<td class="form_label">设计压力(Mpa):</td>
				<td colspan="1"><input class="nui-textbox" emptyText="请输入设计压力" onvalidation="hasIllegalChar(e,255,true,true)"
					name="equipmentbaseinformation.designpressure" required="required" requiredErrorText="设计压力(Mpa)不能为空"/></td>
				<td class="form_label">运行压力(Mpa):</td>
				<td colspan="1"><input class="nui-textbox" emptyText="请输入运行压力" onvalidation="hasIllegalChar(e,255,true,true)"
					name="equipmentbaseinformation.operatingpressure" required="required" requiredErrorText="运行压力(Mpa)不能为空"/></td>
					<td class="form_label"></td>
				<td colspan="1"></td>	
			</tr>
			<tr>
				<td class="form_label">设计温度(℃):</td>
				<td colspan="1"><input class="nui-textbox" emptyText="请输入设计温度" onvalidation="hasIllegalChar(e,255,true,true)"
					name="equipmentbaseinformation.designtemperature" required="required" requiredErrorText="设计温度不能为空"/></td>
				<td class="form_label">运行温度(℃):</td>
				<td colspan="1"><input class="nui-textbox" emptyText="请输入设计温度" onvalidation="hasIllegalChar(e,255,true,true)"
					name="equipmentbaseinformation.operationtemperature" required="required" requiredErrorText="运行温度不能为空"/></td>
				<td class="form_label"></td>
				<td colspan="1"></td>	
			</tr>
			<tr>
				<td class="form_label" rowspan="3">制造信息：</td>
				<td class="form_label">EOMM文件:</td>
				<td colspan="1">
				<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
					<div style="display: flex;">
					 	<input class="nui-textbox" style="width:80%;cursor: pointer;color: blue;" readonly="readonly" id="eommfile" name="equipmentbaseinformation.eommfile" />
						<form id="uploadform1" enctype="multipart/form-data">
							<input id="eommfile" class="" style="width:70px" type="file" name="equipmentbaseinformation.eommfile" accept="*" onchange="fileSub1(this)"> 
						</form>
					</div>
				</td>
					
				<td class="form_label">SDM文件:</td>
				<td colspan="1">
				<div id="progress2" class="progress" style="background:chartreuse;display:none;">
								        <div class="progress-item"></div>
							 </div>
				<div style="display: flex;">
					<input class="nui-textbox" style="width:80%;cursor: pointer;color: blue;" readonly="readonly" id="sdmfile" name="equipmentbaseinformation.sdmfile" />
					<form id="uploadform2" enctype="multipart/form-data">
						<input id="sdmfile" class="" style="width:70px" type="file" name="equipmentbaseinformation.sdmfile" accept="*" onchange="fileSub2(this)"> 
					</form>
					</div>
				</td>
				
				<td class="form_label">设备图:</td>
				<td colspan="1">
				<div id="progress3" class="progress" style="display:none;background:chartreuse;">
								        <div class="progress-item"></div>
							 </div>
				<div style="display: flex;">
					<input class="nui-textbox" style="width:80%;cursor: pointer;color: blue;" readonly="readonly" id="euqipmentgraph" name="equipmentbaseinformation.euqipmentgraph" />
					<form id="uploadform3" enctype="multipart/form-data">
						<input id="euqipmentgraph" class="" style="width:70px" type="file" name="equipmentbaseinformation.euqipmentgraph" accept="*" onchange="fileSub3(this)"> 
					</form>
					</div>
				</td>
			</tr>
			<tr>
				<td class="form_label">等轴图:</td>
				<td colspan="1">
				<div id="progress4" class="progress" style="display:none;background:chartreuse;">
								        <div class="progress-item"></div>
							 </div>
				<div style="display: flex;">
				<input class="nui-textbox" style="width:80%;cursor: pointer;color: blue;" readonly="readonly" id="equiaxedgraph" name="equipmentbaseinformation.equiaxedgraph" />
					<form id="uploadform4" enctype="multipart/form-data">
						<input id="equiaxedgraph" class="" style="width:70px" type="file" name="equipmentbaseinformation.equiaxedgraph" accept="*" onchange="fileSub4(this)"> 
					</form>
					</div>
				</td>
				<td class="form_label">EOMR文件:</td>
				<td colspan="1">
				<div id="progress5" class="progress" style="display:none;background:chartreuse;">
								        <div class="progress-item"></div>
							 </div>
				<div style="display: flex;">
				<input class="nui-textbox" style="width:80%;cursor: pointer;color: blue;" readonly="readonly" id="eomrfile" name="equipmentbaseinformation.eomrfile" />
					<form id="uploadform5" enctype="multipart/form-data">
						<input id="eomrfile" class="" style="width:70px" type="file" name="equipmentbaseinformation.eomrfile" accept="*" onchange="fileSub5(this)"> 
					</form>
				</div>	
				</td>
				<td class="form_label">生产厂家:</td>
				<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)"
					name="equipmentbaseinformation.manufacturer" /></td>
			</tr>
			<tr>
				<td class="form_label">设备制造编号:</td>
				<td colspan="1">
					<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="equipmentbaseinformation.equipment_manufacturing_number" />
				</td>
				<td class="form_label">材料牌号:</td>
				<td colspan="1">
					<input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="equipmentbaseinformation.materialbrand" />
				</td>
				<td class="form_label"></td>
					<td colspan="1">
				</td>
				<input value="0" class="nui-hidden" name="equipmentbaseinformation.isdel" />
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button"  onclick="onOk()" id="savebt"> 保存 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button"  onclick="onCancel()">
							关闭</a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
            
            var eommfileid="";
            var sdmfileid="";
            var equipmentgraphfileid="";
            var equiaxedgraphfileid="";
            var eomrfileid="";
 		var jdid = getCookie('jdid');
	     var jzid = getCookie('jzid');
	     
	    
	       
		function saveData() {

			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.equipmentbaseinformationbiz.addEquipmentbaseinformation.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.inspectcomponentmanage.equipmentbaseinformationbiz.updateEquipmentbaseinformation.biz.ext";
			}
			form.validate();
			if (form.isValid() == false){ 
				nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;
				return;
			}

			var data = form.getData(false, true);
            	//1 EOMM文件上传
			 	data.equipmentbaseinformation.eommfile = nui.get("eommfile").value;
				if(eommfileid==""){
				}else{
					data.equipmentbaseinformation.eommfileid = eommfileid;
				}
			 	//2 SDM文件上传
			 	data.equipmentbaseinformation.sdmfile = nui.get("sdmfile").value;
				if(sdmfileid==""){
				}else{
					data.equipmentbaseinformation.sdmfileid = sdmfileid;
				} 
				//3 设备图上传
			 	data.equipmentbaseinformation.euqipmentgraph = nui.get("euqipmentgraph").value;
				if(equipmentgraphfileid==""){
				}else{
					data.equipmentbaseinformation.equipmentgraphfileid = equipmentgraphfileid;
				}
				 //4等轴图上传
			 	data.equipmentbaseinformation.equiaxedgraph = nui.get("equiaxedgraph").value;
				if(equiaxedgraphfileid==""){
				}else{
					data.equipmentbaseinformation.equiaxedgraphfileid = equiaxedgraphfileid;
				}
				 //5EOMR文件上传
			 	data.equipmentbaseinformation.eomrfile = nui.get("eomrfile").value;
				if(eomrfileid==""){
				}else{
					data.equipmentbaseinformation.eomrfileid = eomrfileid;
				}	
			data.equipmentbaseinformation.jd = jdid;
			data.equipmentbaseinformation.jz = jzid;
			var json = nui.encode(data);
				nui.get("#savebt").setEnabled(false);//置灰色
			$.ajax({
				url : urlStr,
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var returnJson = nui.decode(text);
					if (returnJson.exception == null) {
						if(pageType=="add"){
                        	CloseWindow("addSuccess");
                        	}else if(pageType=="edit"){
                        		CloseWindow("updateSuccess");
                        	}
					} else {
					nui.get("#savebt").setEnabled(true);//恢复
						nui.alert("保存失败", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
								//CloseWindow("saveFailed");
							}
						});
					}
				},error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							 nui.get("#savebt").setEnabled(true);//恢复
							});
						 }
			});
		}

		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);
			var json = infos.record;
			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);

			//如果是点击编辑类型页面
			if (infos.pageType == "edit") {
				
				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
			}
			nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
		}
		function fileSub1(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
   	    		$("#uploadform1").ajaxSubmit({
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
							nui.get("eommfile").setValue(data.list[0].name);
							nui.get("eommfileid").setValue(data.list[0].uri);
							eommfileid = data.list[0].uri;
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} 
			else {
				return false;
			}
		} 
		function fileSub2(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress2").css('display','');
			document.querySelector("#progress2 .progress-item").style.width = "0%";
   	    		$("#uploadform2").ajaxSubmit({
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
							nui.get("sdmfile").setValue(data.list[0].name);
							nui.get("sdmfileid").setValue(data.list[0].uri);
							sdmfileid = data.list[0].uri;
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} 
			else {
				return false;
			}
		} 
           
		function fileSub3(file){
    		var  fv=file.value;
    		if(fv){
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
$("#progress3").css('display','');
			document.querySelector("#progress3 .progress-item").style.width = "0%";
   	    		$("#uploadform3").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
   		            processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress3', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress3 .progress-item").style.width = percent + "%";
		                }, false);
		            }
		            return xhr;
		        },
					success : function(data) {
						if (data.code == 1) {
							nui.get("euqipmentgraph").setValue(data.list[0].name);
							nui.get("equipmentgraphfileid").setValue(data.list[0].uri);
							equipmentgraphfileid = data.list[0].uri;
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} 
			else {
				nui.alert("请上传图片");
				return false;
			}
		} 
           
		function fileSub4(file){
    		var  fv=file.value;
    		if(fv){
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
$("#progress4").css('display','');
			document.querySelector("#progress4 .progress-item").style.width = "0%";
   	    		$("#uploadform4").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
   		            processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress4', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress4 .progress-item").style.width = percent + "%";
		                }, false);
		            }
		            return xhr;
		        },
					success : function(data) {
						if (data.code == 1) {
							nui.get("equiaxedgraph").setValue(data.list[0].name);
							nui.get("equiaxedgraphfileid").setValue(data.list[0].uri);
							equiaxedgraphfileid = data.list[0].uri;
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} 
			else {
				nui.alert("请上传图片");
				return false;
			}
		} 
		function fileSub5(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress5").css('display','');
			document.querySelector("#progress5 .progress-item").style.width = "0%";
   	    		$("#uploadform5").ajaxSubmit({
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
							nui.get("eomrfile").setValue(data.list[0].name);
							nui.get("eomrfileid").setValue(data.list[0].uri);
							eomrfileid = data.list[0].uri;
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} 
			else {
				return false;
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
		function onOk() {
			saveData();
		}

		//取消
		function onCancel() {
			CloseWindow("cancel");
		}
	</script>
</body>
</html>
