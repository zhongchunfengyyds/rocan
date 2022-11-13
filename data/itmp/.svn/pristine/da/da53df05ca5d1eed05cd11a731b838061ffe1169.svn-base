<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): ASUS
- Date: 2018-12-18 15:02:34
- Description:
    --%>
<head>
<title>单条新增</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
	<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
	<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        
<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
<link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>	

</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;align:center">
		<!-- hidden域 -->
		<input class="nui-hidden" name="tdxglsysyrqinfo.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
		<input class="nui-hidden" name="tdxglsysyrqinfo.uuid"/>
		<input class="nui-hidden" id="fpath" name="tdxglsysyrqinfo.filepath"/>
        <input class="nui-hidden" id="fname" name="tdxglsysyrqinfo.filename"/>
		<input class="nui-hidden" id="fid" name="tdxglsysyrqinfo.fileid"/>  
		<input class="nui-hidden" name="tdxglsysyrqinfo.syxxSybg"/>			
		<fieldset id="fd1" style="width:95%;">
		        <legend><span>基本信息</span></legend>
		        <div class="fieldset-body">
				<table class="nui-form-table" style="width:100%;height:100%;table-layout:fixed;" >
					<tr>					
						<td class="form_label">基地</td>
						<td colspan="1"><input class="nui-combobox" 
							name="tdxglsysyrqinfo.jdid" dataField="jsonObject" onvaluechanged="reloadJz" id="jd"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id" readonly="readonly"/>
						</td> 
						<td class="form_label">机组</td><td colspan="1">
						<input class="nui-dictcombobox"
							name="tdxglsysyrqinfo.jzid" required="true" requiredErrorText="机组不能为空"dataField="jsonObject" id="jz" textField="name" 
                      url="" valueField="id"/>
						 </td>						 						 
					</tr>
					<tr>
						<td class="form_label">功能位置</td>
						<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.baseGnwz" required="true" onvalidation="hasIllegalChar(e,50,true,true)" requiredErrorText="功能位置不能为空"/></td>
						<td class="form_label">系统</td>
						<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.baseXt" required="true" onvalidation="hasIllegalChar(e,50,true,true)" requiredErrorText="系统不能为空" /></td>
					</tr>
					<tr>
						<td class="form_label">名称</td>
						<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.baseMc" required="true" onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="名称不能为空"/></td>
						<td colspan="2">
							<font color="red" style="text-align: center;">注：多个功能位置用","隔开</font>
						</td>
					</tr>
					</table>
					  </div>
    </fieldset>
    <fieldset id="fd2" style="width:95%;">
		        <legend><span>文件信息</span></legend>
		        <div class="fieldset-body">
    <table class="nui-form-table" style="width:100%;height:100%;table-layout:fixed;" >
					<tr>
					
							<td class="form_label">EOMR</td>
							<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,500,false,true)"
								name="tdxglsysyrqinfo.wjxxEomr" /></td>
							<td class="form_label">设备竣工图</td>
							<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"
							name="tdxglsysyrqinfo.wjxxSbjgt" /></td>
						</tr>
						<tr>
							<td class="form_label">内部编码</td>
							<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"
								name="tdxglsysyrqinfo.wjxxNbbm" /></td>
							<td class="form_label">SDM</td>
							<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"
								name="tdxglsysyrqinfo.wjxxSdm" /></td>
						</tr>
						<tr>
							<td class="form_label">EOMM</td>
							<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,50,false,true)"
							name="tdxglsysyrqinfo.wjxxEomm" /></td>
							<td class="form_label">流程图</td>
							<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
								name="tdxglsysyrqinfo.wjxxLct" /></td>						
						</tr>
						<tr>
							<td class="form_label">水源流程图</td>
							<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,256,false,true)"
							name="tdxglsysyrqinfo.wjxxSylct" /></td>
							<td class="form_label">气源流程图</td>
							<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,256,false,true)"
								name="tdxglsysyrqinfo.wjxxQylct" /></td>						
						</tr>
						<tr>
							<td class="form_label">设备技术规范号</td>
							<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
								name="tdxglsysyrqinfo.zzcsJsgfh" /></td>
						</tr>
						</table>
						 </div>
    </fieldset>
    <fieldset id="fd3" style="width:95%;">
		        <legend><span>设计、运行、制造参数表</span></legend>
		        <div class="fieldset-body">
    <table class="nui-form-table" style="width:100%;height:100%;table-layout:fixed;" >
						<tr>
						
								<td class="form_label">水压试验页码</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,50,false,true)"
									name="tdxglsysyrqinfo.zzcsSysyym" /></td>
								<td class="form_label">检验日期（水压）</td>
								<td colspan="1"><input class="nui-datepicker"
									name="tdxglsysyrqinfo.zzcsJyrq" required="true" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" requiredErrorText="检验日期不能为空"/></td>
							</tr>
							<tr>
								<td class="form_label">设计压力(bar.g)</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,50,false,true)"
									name="tdxglsysyrqinfo.zzcsSjyl" /></td>
								<td class="form_label">设计温度(℃)</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,50,false,true)"
									name="tdxglsysyrqinfo.zzcsSjwd" /></td>
							</tr>
							<tr>
								<td class="form_label">LOCA运行压力(bar.g)</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,50,false,true)"
							name="tdxglsysyrqinfo.zzcsYxyl" /></td>
								<td class="form_label">LOCA运行温度(℃)</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,50,false,true)"
									name="tdxglsysyrqinfo.zzcsYxwd" /></td>
							</tr>
							<tr>
								<td class="form_label">最大工作压力</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
									name="tdxglsysyrqinfo.zzcsZdgzyl" /></td>
								<td class="form_label">出厂试验压力(P1)(bar.g)</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
									name="tdxglsysyrqinfo.zzcsCcsyyl1" /></td>
							</tr>
							<tr>
								<td class="form_label">出厂试验压力(P2)(bar.g)</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
							name="tdxglsysyrqinfo.zzcsCcsyyl2" /></td> 
								<td class="form_label">出厂水压系数</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
									name="tdxglsysyrqinfo.zzcsCcsyxs" /></td>
							</tr>
							<tr>
								<td class="form_label">在役试验压力(bar.g)</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
									name="tdxglsysyrqinfo.zzcsZysyyl" /></td>
								<td class="form_label">在役水压系数</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
									name="tdxglsysyrqinfo.zzcsZysysy" /></td> 
							</tr>
							<tr>
								<td class="form_label">净重（kg）</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
							name="tdxglsysyrqinfo.zzcsJz" /></td>
								<td class="form_label">满水重量（kg）</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
									name="tdxglsysyrqinfo.zzcsMszl" />
								</td>
							</tr>
							<tr>
								<td class="form_label">壳体外径(m)</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
									name="tdxglsysyrqinfo.zzcsKtwj" /></td>
								<td class="form_label">腐蚀余量（mm）</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
									name="tdxglsysyrqinfo.zzcsFsyl" /></td>
							</tr>
							<tr>
								<td class="form_label">质保等级</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,32,false,true)"
									name="tdxglsysyrqinfo.zzcsZbdj" /></td>
								<td class="form_label">清洁度等级</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,32,false,true)"
									name="tdxglsysyrqinfo.zzcsQjddj" />
								</td>
							</tr>
							<tr>
								<td class="form_label">安全等级</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,32,false,true)"
							name="tdxglsysyrqinfo.zzcsAqdj" /></td>
								<td class="form_label">制造级别</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,32,false,true)"
									name="tdxglsysyrqinfo.zzcsZzjb" />
								</td>
							</tr>
							<tr>
								<td class="form_label">执行标准</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,32,false,true)"
									name="tdxglsysyrqinfo.zzcsZxbz" /></td>
								<td class="form_label">壳体材质</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,32,false,true)"
									name="tdxglsysyrqinfo.zzcsKtcz" />
								</td>
							</tr>
							<tr>
								<td class="form_label">传热管材质</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,32,false,true)"
									name="tdxglsysyrqinfo.zzcsCrgcz" />
								</td>
								<td class="form_label">容积（m³）</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,10,false,true)"
									name="tdxglsysyrqinfo.zzcsRj" />
								</td>
							</tr>
							<tr>
								<td class="form_label">设计寿命</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,32,false,true)"
									name="tdxglsysyrqinfo.zzcsSjsm" /></td>
								<td class="form_label">房间号</td>
								<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,32,false,true)"
									name="tdxglsysyrqinfo.zzcsFj" />
								</td>
							</tr>
							</table>
								 </div>
    </fieldset>
    <fieldset id="fd4" style="width:95%;">
		        <legend><span>试验信息</span></legend>
		        <div class="fieldset-body">
    <table class="nui-form-table" style="width:100%;height:100%;table-layout:fixed;" >
							<tr>
							
									<td class="form_label">水源阀门</td>
									<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"
										name="tdxglsysyrqinfo.syxxSyfm" /></td>
									<td class="form_label">气源阀门</td>
									<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"
							name="tdxglsysyrqinfo.syxxQyfm" /></td>
								</tr>
								<tr>
									<td class="form_label">排气点</td>
									<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"
										name="tdxglsysyrqinfo.syxxPqd" /></td>
									<td class="form_label">进水点</td>
									<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"
										name="tdxglsysyrqinfo.syxxJsd" /></td>
								</tr>
								<tr>
						<td class="form_label">等轴图信息</td>
									<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"
							name="tdxglsysyrqinfo.syxxDztxx" /></td>
									<td class="form_label">是否需更换垫片</td>
									<td colspan="1"><input class="nui-dictcombobox" onvalidation="hasIllegalChar(e,10,false,true)"
										name="tdxglsysyrqinfo.syxxSfhdp" dictTypeId="SF" /></td>
								</tr>
								<tr>
									<td class="form_label">紧固力矩</td>
									<td colspan="1"><input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)"
										name="tdxglsysyrqinfo.syxxJglj" /></td>
									<td class="form_label">耐压试验报告</td>
									<td colspan="1"><input id="fileName" class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" limitSize="100MB" 
									flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect"  onvalidation="hasIllegalChar(e,100,false,true)" 
									uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"  onuploaderror="onUploadError" 
									onuploadsuccess="onUploadSuccess" style="width:100%;"/>
									<input class="nui-textbox"
										name="tdxglsysyrqinfo.syxxSybg" visible="false" />
										<input class="nui-textbox" name="tdxglsysyrqinfo.addtime" visible="false" />
									</td>
								</tr>
						</table>
					 </div>
		    </fieldset>		
					<div class="nui-toolbar" style="padding: 0px;"
						borderStyle="border:0;">
						<table width="100%">
							<tr>
								<td style="text-align: center;" colspan="4"><a
									class="nui-button" onclick="onOk()">保存
								</a> <span style="display: inline-block; width: 25px;"> </span> <a
									class="nui-button"  onclick="onCancel()">
									关闭 </a></td>
							</tr>
						</table>
				</div>
				<script type="text/javascript">
					nui.parse();
					var jzid = parent.nui.get("jzid").getValue();
		        	var jdid = parent.nui.get("jdid").getValue();
		        	nui.get("jd").setValue(jdid);
		        	nui.get('jz').setAjaxType("POST");
		        	nui.get('jz').load( "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid);
		        	nui.get("jz").setValue(jzid);
// 		        	labelModel("jz");
// 		        	labelModel("jd");
        		/* 	function reloadJz(e) {
	             		var jdid = jdCombox.getValue();
				        jzCombox.setValue("");
					    var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
					    jzCombox.setUrl(url);   
		            } */
		            								
					function saveData() {

						var form = new nui.Form("#dataform1");
						form.setChanged(false);
						//保存
						var urlStr = "com.cgn.itmp.dailyandoverhaul.vessel.ContainerInfomation.addTDxglSysyRqinfo.biz.ext";
						var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
						//编辑
						if (pageType == "edit") {
							urlStr = "com.cgn.itmp.dailyandoverhaul.vessel.ContainerInfomation.updateTDxglSysyRqinfo.biz.ext";
						}
						form.validate();
						if (form.isValid() == false){
						nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;
						}

						var data = form.getData(false, true);
						
						 data.tdxglsysyrqinfo.zzcsJyrq=nui.formatDate(data.tdxglsysyrqinfo.zzcsJyrq,'yyyy-MM-dd');
						data.tdxglsysyrqinfo.addtime=nui.formatDate(new Date(),'yyyy-MM-dd HH:mm:ss');
						var json = nui.encode(data);

						$.ajax({
							url : urlStr,
							type : 'POST',
							data : json,
							cache : false,
							contentType : 'text/json',
							success : function(text) {
								var returnJson = nui.decode(text);
								if (returnJson.exception == null) {
									CloseWindow("saveSuccess");
								} else {
									nui.alert("保存失败", "系统提示",
											function(action) {
												if (action == "ok"
														|| action == "close") {
													//CloseWindow("saveFailed");
												}
											});
								}
								
							},error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
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
						nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
						//如果是点击编辑类型页面
						if (infos.pageType == "edit") {
							var json = infos.record;
							nui.get("fileName").setText(json.tdxglsysyrqinfo.fileRealName);//加载附件名称			
							var form = new nui.Form("#dataform1");//将普通form转为nui的form
							form.setData(json);
							form.setChanged(false);							
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
					//上传附件操作
	            	function onfileselect(){
						startUpload();
					}
					function startUpload(e) {
				        var fileupload = nui.get("fileName");
				        fileupload.startUpload();
				    }
				    //上传成功时，回写附件的name、id
				  function onUploadSuccess(e){
					var appIconName = e.file.name;

					var appIconPath = nui.decode(e.serverData).ret.filePath;
					//var appIconData = nui.decode(e.serverData).ret.fileValue;
					nui.get("fpath").setValue(appIconPath);
					nui.get("fname").setValue(appIconName);
				}
				</script>
</body>
</html>
