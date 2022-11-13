<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
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
	type="text/javascript">
	
</script>
<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
<link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
<style>
	.mini-buttonedit {
	    width: 100% important;
	}
</style>    
</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<input class="nui-hidden" id="fpath" name="tdxglsysyrqinfo.filepath"/>
        <input class="nui-hidden" id="fname" name="tdxglsysyrqinfo.filename"/>
		<input id="fileid" class="nui-hidden" name="tdxglsysyrqinfo.fileid"/>  
		<input class="nui-hidden" name="tdxglsysyrqinfo.syxxSybg"/>	
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="tdxglsysyrqinfo.uuid"/>		
			<fieldset id="fd1" style="width:95%;">
		        <legend><span>基本信息</span></legend>
		        <div class="fieldset-body">
				<table class="nui-form-table" style="width:100%;height:100%;table-layout:fixed;" >
					<tr>
									
						<td class="form_label">基地</td>
						<td colspan="1"><input class="nui-dictcombobox" 
							name="tdxglsysyrqinfo.jdid" dataField="jsonObject" onvaluechanged="reloadJz" id="jdid"
                      textField="name" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" valueField="id" emptyText="请选择"readonly="readonly"/>
						</td> 
						<td class="form_label">机组</td><td colspan="1">
						<input class="nui-dictcombobox"
							name="tdxglsysyrqinfo.jzid" required="true" requiredErrorText="机组不能为空"dataField="jsonObject" id="jzid" textField="name" 
                      url="com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext"
                      valueField="id" emptyText="请选择" readonly="readonly"/>
						 </td>						 						 
					</tr>
					<tr>
						<td class="form_label">功能位置</td>
						<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.baseGnwz" readonly="readonly"/></td>
						<td class="form_label">系统</td>
						<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.baseXt" readonly="readonly"/></td>
					</tr>
					<tr>
						<td class="form_label">名称</td>
						<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.baseMc" readonly="readonly"/></td>
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
							<td colspan="1"><input class="nui-textbox"
								name="tdxglsysyrqinfo.wjxxEomr" readonly="readonly"/></td>
							<td class="form_label">设备竣工图</td>
							<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.wjxxSbjgt" readonly="readonly"/></td>
						</tr>
						<tr>
							<td class="form_label">内部编码</td>
							<td colspan="1"><input class="nui-textbox"
								name="tdxglsysyrqinfo.wjxxNbbm" readonly="readonly"/></td>
							<td class="form_label">SDM</td>
							<td colspan="1"><input class="nui-textbox"
								name="tdxglsysyrqinfo.wjxxSdm" readonly="readonly"/></td>
						</tr>
						<tr>
							<td class="form_label">EOMM</td>
							<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.wjxxEomm" readonly="readonly"/></td>
							<td class="form_label">流程图</td>
							<td colspan="1"><input class="nui-textbox"
								name="tdxglsysyrqinfo.wjxxLct" readonly="readonly" /></td>						
						</tr>
						<tr>
							<td class="form_label">水源流程图</td>
							<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.wjxxSylct" readonly="readonly"/></td>
							<td class="form_label">气源流程图</td>
							<td colspan="1"><input class="nui-textbox"
								name="tdxglsysyrqinfo.wjxxQylct" readonly="readonly"/></td>						
						</tr>
						<tr>
							<td class="form_label">设备技术规范号</td>
							<td colspan="1"><input class="nui-textbox"
								name="tdxglsysyrqinfo.zzcsJsgfh" readonly="readonly"/></td>
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
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsSysyym" readonly="readonly"/></td>
								<td class="form_label">检验日期（水压）</td>
								<td colspan="1"><input class="nui-datepicker"
									name="tdxglsysyrqinfo.zzcsJyrq" readonly="readonly"/></td>
							</tr>
							<tr>
								<td class="form_label">设计压力(bar.g)</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsSjyl" readonly="readonly"/></td>
								<td class="form_label">设计温度(℃)</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsSjwd" readonly="readonly"/></td>
							</tr>
							<tr>
								<td class="form_label">LOCA运行压力(bar.g)</td>
								<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.zzcsYxyl" readonly="readonly"/></td>
								<td class="form_label">LOCA运行温度(℃)</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsYxwd" readonly="readonly"/></td>
							</tr>
							<tr>
								<td class="form_label">最大工作压力</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsZdgzyl" readonly="readonly"/></td>
								<td class="form_label">出厂试验压力(P1)(bar.g)</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsCcsyyl1" readonly="readonly"/></td>
							</tr>
							<tr>
								<td class="form_label">出厂试验压力(P2)(bar.g)</td>
								<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.zzcsCcsyyl2" readonly="readonly"/></td>
								<td class="form_label">出厂水压系数</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsCcsyxs" readonly="readonly"/></td>
							</tr>
							<tr>
								<td class="form_label">在役试验压力(bar.g)</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsZysyyl" readonly="readonly"/></td>
								<td class="form_label">在役水压系数</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsZysysy" readonly="readonly"/></td>
							</tr>
							<tr>
								<td class="form_label">净重（kg）</td>
								<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.zzcsJz" readonly="readonly"/></td>
								<td class="form_label">满水重量（kg）</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsMszl" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td class="form_label">壳体外径(m)</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsKtwj" readonly="readonly"/></td>
								<td class="form_label">腐蚀余量（mm）</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsFsyl" readonly="readonly"/></td>
							</tr>
							<tr>
								<td class="form_label">质保等级</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsZbdj" readonly="readonly"/></td>
								<td class="form_label">清洁度等级</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsQjddj" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td class="form_label">安全等级</td>
								<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.zzcsAqdj" readonly="readonly"/></td>
								<td class="form_label">制造级别</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsZzjb"readonly="readonly" />
								</td>
							</tr>
							<tr>
								<td class="form_label">执行标准</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsZxbz" readonly="readonly"/></td>
								<td class="form_label">壳体材质</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsKtcz" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td class="form_label">传热管材质</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsCrgcz" readonly="readonly"/>
								</td>
								<td class="form_label">容积（m³）</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsRj" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td class="form_label">设计寿命</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsSjsm" readonly="readonly"/></td>
								<td class="form_label">房间号</td>
								<td colspan="1"><input class="nui-textbox"
									name="tdxglsysyrqinfo.zzcsFj" readonly="readonly"/>
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
									<td colspan="1"><input class="nui-textbox"
										name="tdxglsysyrqinfo.syxxSyfm" readonly="readonly"/></td>
									<td class="form_label">气源阀门</td>
									<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.syxxQyfm" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="form_label">排气点</td>
									<td colspan="1"><input class="nui-textbox"
										name="tdxglsysyrqinfo.syxxPqd" readonly="readonly"/></td>
									<td class="form_label">进水点</td>
									<td colspan="1"><input class="nui-textbox"
										name="tdxglsysyrqinfo.syxxJsd" readonly="readonly"/></td>
								</tr>
								<tr>
						<td class="form_label">等轴图信息</td>
									<td colspan="1"><input class="nui-textbox"
							name="tdxglsysyrqinfo.syxxDztxx" readonly="readonly"/></td>
									<td class="form_label">是否需更换垫片</td>
									<td colspan="1"><input class="nui-dictcombobox"
										name="tdxglsysyrqinfo.syxxSfhdp" dictTypeId="SF" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="form_label">紧固力矩</td>
									<td colspan="1"><input class="nui-textbox"
										name="tdxglsysyrqinfo.syxxJglj" readonly="readonly"/></td>
									<td class="form_label">耐压试验报告</td>
									<td colspan="1">
									 <input id="fileName" class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" limitSize="100MB" 
									flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect" 
									uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"  onuploaderror="onUploadError" 
									onuploadsuccess="onUploadSuccess" style="width:100%;" onclick="setFile"/>
									<input class="nui-textbox" id="fj" name="tdxglsysyrqinfo.syxxSybg" visible="false" />
									</td>
								</tr>
				</table>
			 </div>
    </fieldset>			
					<div class="nui-toolbar" style="padding: 0px;"
						borderStyle="border:0;">
						<table width="100%">
							<!-- <tr>
							<td style="text-align: center;" >
								 <a class="nui-button" onclick="update()">
										修改</a></td>
										<td style="text-align: center;" >
								 <a class="nui-button" onclick="saveData()">
										保存</a></td>
								<td style="text-align: center;" >
								 <a class="nui-button" onclick="onCancel()">
										返回</a></td>
							</tr> -->
						</table>
				</div>
				<script type="text/javascript">
					nui.parse();
					var form = new nui.Form("#dataform1");//将普通form转为nui的form
		            var fields = form.getFields();                
		            for (var i = 0, l = fields.length; i < l; i++) {
		                var c = fields[i];
		             /*    if (c.setReadOnly) c.setEnabled(false);  */    //只读
		                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
		                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
		            }
		         var jdid = parent.nui.get("jdid").getValue();
		         nui.get('jzid').setAjaxType("POST");
		         nui.get('jzid').load( "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid);
         	
				function setFile(){
			 			var fileId =nui.get("fj").getValue();
						if(fileId == null || fileId == '' || fileId == 'null'){
							return "";
						}
						window.location.href="com.cgn.itmp.basecommon.fileDownload.flow?fileId="+fileId;
			      }
					//页面间传输json数据
					function setFormData(data) {
					
						//跨页面传递的数据对象，克隆后才可以安全使用
						var infos = nui.clone(data);

						//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
						nui.getbyName("pageType").setValue(infos.pageType);

						//如果是点击编辑类型页面
						if (infos.pageType == "view") {
							var json = infos.record;
							nui.get("fileName").setText(json.tdxglsysyrqinfo.fileRealName);//加载附件名称			
							var form = new nui.Form("#dataform1");//将普通form转为nui的form
							form.setData(json);
							form.setChanged(false);							
						}
					}					
					//返回
					function onCancel() {
						CloseWindow("cancel");
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
				</script>
</body>
</html>
