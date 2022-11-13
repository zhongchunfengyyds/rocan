<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-11 16:46:42
- Description:缺陷显示跟踪与处理表单页面
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
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>  
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden"
			name="defectdisplaytrackingandprocessing.uuid" />
			<input class="nui-hidden" id="fpath" name="defectdisplaytrackingandprocessing.filepath"/>
            <input class="nui-hidden" id="fname" name="defectdisplaytrackingandprocessing.filename"/>
<!--             <input class="nui-hidden" name="defectdisplaytrackingandprocessing.fj"/> -->
            <input class="nui-hidden" id="fileid" name="defectdisplaytrackingandprocessing.fileid" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			 <tr>
                <td class="form_label">
                      基地
                    </td>
                    <td colspan="1">                        
                      <input id="jd" class="nui-combobox" name="defectdisplaytrackingandprocessing.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" style="width:100%"/>
                    </td>
                    <td class="form_label">
                      机组
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" name="defectdisplaytrackingandprocessing.jz" 
                        dataField="jsonObject" readonly="readonly" id="jz" textField="name" url="" valueField="id" style="width:100%"/>
                    </td>
                    <td class="form_label">机组状态</td>
				<td colspan="1"><input class="nui-dictcombobox" readonly="readonly" dictTypeId="NBJY_JZSTATU" showNullItem="true" nullItemText="请选择..." value="O" name="defectdisplaytrackingandprocessing.jzstate" onvaluechanged="onValuechanged"  emptyText="请选择机组状态" requiredErrorText="机组状态不能为空"  style="width:100%"/></td>
					<td class="form_label"> </td>	
                </tr>
			<tr>
			<td class="form_label">大修轮次</td>
				<td colspan="1"><input class="nui-textbox" id="dxlc" readonly="readonly"
					name="defectdisplaytrackingandprocessing.overhaulsequence" style="width:100%"/></td>
					
				<td class="form_label">发现缺陷工单号</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectdisplaytrackingandprocessing.defectjobnumber" readonly="readonly" style="width:100%"/></td>
				<td class="form_label">检查方法</td>
				<td colspan="1"><input class="nui-dictcombobox" dictTypeId="YJJCFF" readonly="readonly"   requiredErrorText="检查方法不能为空" emptyText="请选择检查方法" showNullItem="true" nullItemText="请选择..."
					name="defectdisplaytrackingandprocessing.checkmethod"  style="width:100%"/></td>
					<td class="form_label"> </td>
			</tr>
			<tr>
				<td class="form_label" rowspan="3">缺陷通知单</td>
				<td class="form_label">通知单号:</td>
				<td colspan="2"><input class="nui-textbox" readonly="readonly"
					name="defectdisplaytrackingandprocessing.notificationnumber"  style="width:100%"/></td>
				<td class="form_label">标题</td>
				<td colspan="2"><input class="nui-textbox" 
					name="defectdisplaytrackingandprocessing.title" readonly="readonly"  style="width:100%"/></td>
			</tr>
			<tr>
				<td class="form_label">描述</td>
				<td colspan="5"><input class="nui-textarea" 
					name="defectdisplaytrackingandprocessing.describe" readonly="readonly" style="width:100%"/></td>
			</tr>
			<tr>
				<td class="form_label">功能位置</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectdisplaytrackingandprocessing.position" readonly="readonly" style="width:100%"/></td>
				<td class="form_label">创建日期</td>
				<td colspan="1">
				<input id="date1" class="mini-datepicker" readonly="readonly" name="defectdisplaytrackingandprocessing.createdate"/>  
					</td>
				<td class="form_label">当前状态</td>
				<td colspan="1"><input class="nui-dictcombobox"
					dictTypeId="QXDQZT"  readonly="readonly"
					name="defectdisplaytrackingandprocessing.currentstate" value="CRTD" style="width:100%"/></td>
			</tr>
			<tr>
				<td class="form_label" rowspan="5">缺陷处理</td>
				<td class="form_label">责任部门</td>
				<td colspan="5"><input class="nui-textbox"
					name="defectdisplaytrackingandprocessing.department" readonly="readonly" style="width:100%"/></td>
			</tr>
			<tr>
				<td class="form_label">处理方案</td>
				<td colspan="5"><input class="nui-textarea"
					name="defectdisplaytrackingandprocessing.treatmentplan" readonly="readonly" style="width:100%"/></td>
			</tr>
			<tr>
				<td class="form_label">处理结果</td>
				<td colspan="5"><input class="nui-textarea"
					name="defectdisplaytrackingandprocessing.processingresult" readonly="readonly" style="width:100%"/></td>
				</tr>
			<tr>
				<td class="form_label">RSE-M 97(2000)维修分级</td>
				<td colspan="2"><input class="nui-textbox"
					name="defectdisplaytrackingandprocessing.rsem2000" readonly="readonly" style="width:100%"/></td>
				<td class="form_label">RSE-M 97(2005)维修分级</td>
				<td colspan="2"><input class="nui-textbox"
					name="defectdisplaytrackingandprocessing.rsem2005" readonly="readonly" style="width:100%"/></td>
			</tr>
			<tr>
				<td class="form_label">维修处理对水压试验的影响</td>
				<td colspan="5"><input class="nui-textbox"
					name="defectdisplaytrackingandprocessing.influence" readonly="readonly" style="width:100%"/></td>
			</tr>
			<tr>
				<td class="form_label">反馈</td>
				<td class="form_label">在役检查策略调整</td>
				<td colspan="1"><input class="nui-textarea"
					name="defectdisplaytrackingandprocessing.strategyadjustment" readonly="readonly" style="width:100%"/></td>
				<td class="form_label">无损检测方法优化</td>
				<td colspan="1"><input class="nui-textarea"
					name="defectdisplaytrackingandprocessing.optimization" readonly="readonly" style="width:100%"/></td>
				<td class="form_label">责任人</td>
				<td colspan="1"><input class="nui-textbox"
					name="defectdisplaytrackingandprocessing.personliable" readonly="readonly" style="width:100%"/></td>
			</tr>
			<tr>
				<td class="form_label">附件</td>
					<td id="downloadFj" colspan="6">
                     
                    </td>
				<td colspan="2" style="display: none">
				
					<input class="nui-textbox" style="width:100%;cursor: pointer;color: blue;" readonly="readonly" id="fj" name="defectdisplaytrackingandprocessing.fj" />
					<form id="uploadform1" enctype="multipart/form-data">
						<input id="fj" class="" style="width:100%;display: none" type="file" name="defectdisplaytrackingandprocessing.fj" accept="*" onchange="fileSub1(this)"> 
					</form>
					
                   </td>
			</tr>
				<input class="nui-hidden"
					name="defectdisplaytrackingandprocessing.isdel" value="0" />
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button"  onclick="onOk()" style="display: none"> 保存 </a> <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button" onclick="onCancel()">
							关闭 </a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
		var fileid = "";
		var jdid = getCookie('jdid');
	    var jzid = getCookie('jzid');
	    nui.get("jd").setValue(jdid);
        	
		nui.get('jz').setAjaxType("POST");
		nui.get('jz').load(
				"com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="
						+ jdid);
		nui.get("jz").setValue(jzid);
		
		 labelModel();
		 function labelModel() {
		 	var form= new nui.Form("#dataform1");
            var fields = form.getFields();                
            for (var i = 0, l = fields.length; i < l; i++) {
                var c = fields[i];
                if (c.setReadOnly) c.setReadOnly(true);     //只读
                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
            }
        }
        
// // 		大修选日常不可编辑
// 		function onValuechanged(e){
// 			let value=e.value;
// 			if(value=="N"){
// 			nui.get("dxlc").setEmptyText("");
// 				nui.get("dxlc").setValue("");
// 				nui.get("dxlc").disable();
// 			}else{
// 				nui.get("dxlc").enable();
// 			}
// 		}
		function downloadFj(){
		 var div = document.getElementById('downloadFj');
			var fileRealName = nui.get('fj').value;
			var fileId = nui.get('fileid').value;
			if(fileRealName!=""&&fileId!=""){
			div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			}
		}

// 		function setFile2(e) {
// 			var fileRealName = e.record.fj;
// 			var filepath = e.record.filepath;
// 			var fileId = e.record.fileid;

// 			if (fileRealName == null || fileRealName == 'null') {
// 				return "";
// 			}
// 			var html = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" id="attr_' + filepath + '" >' + fileRealName + '</a>';
// 			return html;
// 		}
		function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
	         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
	         document.body.appendChild(elemIF);
	         elemIF.style.display = "none";
		}
		
		function fileSub1(file){
    		var  fv=file.value;
    		if(fv){
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
   	    		$("#uploadform1").ajaxSubmit({
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
			} 
			else {
// 				nui.alert("请上传图片");
				return false;
			}
		} 
		function saveData() {

			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.inspectcomponentmanage.defectdisplaytrackingandprocessingbiz.addDefectdisplaytrackingandprocessing.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.inspectcomponentmanage.defectdisplaytrackingandprocessingbiz.updateDefectdisplaytrackingandprocessing.biz.ext";
			}
			form.validate();
			if (form.isValid() == false){ 
				nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;
				return;
			}
			var data = form.getData(false, true);
			data.defectdisplaytrackingandprocessing.fj = nui.get("fj").value;
			if(fileid==""){
			}else{
				data.defectdisplaytrackingandprocessing.fileid = fileid;
			}
			
			/* data.defectdisplaytrackingandprocessing.currentstate='CRTD'; */
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
						nui.alert("保存失败", "系统提示", function(action) {
							if (action == "ok" || action == "close") {
								//CloseWindow("saveFailed");
							}
						});
					}
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
				if(json.defectdisplaytrackingandprocessing.jzstate=='N'){
					json.defectdisplaytrackingandprocessing.overhaulsequence="";
				}
			 /* nui.get("fileName").setText(json.defectdisplaytrackingandprocessing.fileRealName); */
				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
				 downloadFj()
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
		
$("input[readOnly]").keydown(function(e) {
              e.preventDefault();
         });
$("textarea[readOnly]").keydown(function(e) {
              e.preventDefault();
         });         

	</script>
</body>
</html>
