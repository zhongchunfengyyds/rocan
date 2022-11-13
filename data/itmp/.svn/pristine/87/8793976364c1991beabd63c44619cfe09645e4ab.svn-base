<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-08-06 11:44:02
- Description:
    --%>
<head>
<title>焊接工艺卡 - 新增</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js" type="text/javascript"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
<link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id='sss' style=""></div>
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="weldingprocesscard.uuid" />
		 <input class="nui-hidden" id="fpath" name="weldingprocesscard.filepath"/>
            <input class="nui-hidden" id="fname" name="weldingprocesscard.filename"/>
			<input class="nui-hidden" id="fid" name="weldingprocesscard.fildid"/>       
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			 <tr>
                
                                          
                    
                    
				<td class="form_label">WPS编号:</td>
				<td colspan="1"><input class="nui-textbox" style="width: 100%" readonly="readonly" 
					name="weldingprocesscard.card_number"  emptyText="请输入WPS编号" requiredErrorText="WPS编号不能为空"/></td>
				<td class="form_label">版本:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" emptyText="请输入版本"  requiredErrorText="版本不能为空" style="width: 100%"
					name="weldingprocesscard.edition" /></td>
					<td class="form_label">接头形式:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" style="width: 100%" emptyText="请输入接头形式"  requiredErrorText="接头形式不能为空"
					name="weldingprocesscard.joint_form" /></td>
				
                </tr>
			<tr>
			<td class="form_label">焊接方法:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" style="width: 100%" emptyText="请输入焊接方法"  requiredErrorText="焊接方法不能为空"
					name="weldingprocesscard.welding_method" /></td>
				<td class="form_label">填充材料:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" style="width: 100%"  emptyText="请输入填充材料"  requiredErrorText="填充材料不能为空"
					name="weldingprocesscard.filling_material" /></td>
					<td class="form_label">评定位置:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" style="width: 100%" emptyText="请输入评定位置"  requiredErrorText="评定位置不能为空"
					name="weldingprocesscard.position" /></td>
			</tr>
			<tr>
			<td class="form_label">制造级别:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" style="width: 100%"  emptyText="请输入制造级别"  requiredErrorText="制造级别不能为空"
					name="weldingprocesscard.manufacturinglevel" /></td>
				<td class="form_label">评定电流:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" style="width: 100%"  emptyText="请输入评定电流"  requiredErrorText="评定电流不能为空"
					name="weldingprocesscard.assesscurrent" /></td>
				<td class="form_label">工艺评定报告号:</td>			
                <td colspan="1">
                	<input id="btnEdit1" class="nui-buttonedit" readonly="readonly" onbuttonclick="onButtonEdit" name="weldingprocesscard.process_assessment_report" style="width:100%;"/>    
                </td>
			</tr>
			<tr>
			<td class="form_label">评定母材1:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" style="width: 100%"
					name="weldingprocesscard.assessparentmaterial1" /></td>
				<td class="form_label">评定母材2:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" style="width: 100%"
					name="weldingprocesscard.assessparentmaterial2" /></td>
					<td class="form_label">评定单位:</td>
					<td colspan="1"><input class="nui-textbox" readonly="readonly" style="width: 100%"
					name="weldingprocesscard.ratingunit" emptyText="请输入评定单位"  requiredErrorText="评定单位不能为空"/></td>
					
				
			</tr>
			<tr>
								<td class="form_label">母材规格1:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" style="width: 100%"
					name="weldingprocesscard.materialspecification1" /></td>
				<td class="form_label">母材规格2:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" style="width: 100%"
					name="weldingprocesscard.materialspecification2" /></td>
					<td class="form_label">覆盖的母材:</td>
				<td colspan="1"><input class="nui-textbox" readonly="readonly" style="width: 100%"
					name="weldingprocesscard.covermaterial" /></td>
				
				
			</tr>
			<tr>
								<td class="form_label">母材厚度1:</td>
				<td colspan="1"><input class="nui-textbox" style="width: 100%" readonly="readonly"
					name="weldingprocesscard.base_metal_thickness_one" /></td>
				<td class="form_label">母材厚度2:</td>
				<td colspan="1"><input class="nui-textbox" style="width: 100%" readonly="readonly"
					name="weldingprocesscard.base_metal_thickness_two" /></td>	
					<td class="form_label">覆盖规格:</td>
				<td colspan="1"><input class="nui-textbox" style="width: 100%" readonly="readonly"
					name="weldingprocesscard.coverspecifications" /></td>	
				
				
				
			</tr>
			<tr>
				<td class="form_label" rowspan="3">保护气体:</td>
				<td class="form_label">气体成分:</td>
				<td colspan="2"><input class="nui-textbox" style="width: 100%" readonly="readonly"
					name="weldingprocesscard.gascomposition" /></td>	
				
				<td class="form_label">覆盖厚度:</td>
				<td colspan="1"><input class="nui-textbox" style="width: 100%" readonly="readonly"
					name="weldingprocesscard.coverthickness" /></td>
				
					
				
				
			</tr>
			<tr>
			<td class="form_label">正面流量:</td>
				<td colspan="2"><input class="nui-textbox" style="width: 100%" readonly="readonly"
					name="weldingprocesscard.positivetraffic" /></td>
					
					<td class="form_label">覆盖位置:</td>
				<td colspan="1"><input class="nui-textbox" style="width: 100%" readonly="readonly"
					name="weldingprocesscard.coverlocation" /></td>
					
				
			</tr>
			<tr>
				<td class="form_label">背面流量:</td>
				<td colspan="2"><input class="nui-textbox" style="width: 100%" readonly="readonly"
					name="weldingprocesscard.backflow" /></td>	
					
					<td class="form_label">覆盖电流范围:</td>
				<td colspan="1"><input class="nui-textbox" style="width: 100%" readonly="readonly"
					name="weldingprocesscard.covercurrentrange" /></td>	
				
			</tr>
			<tr>		
				<td class="form_label">附件:</td>
				
				<td colspan="5" id="fileHref">
				
				</td>
				<td colspan="5" style="display: none">
						<input id="enclosure" class="nui-textbox" readonly="readonly" style="width: 100%" name="weldingprocesscard.enclosure" />
						<input id="fildid" style="display: none" class="nui-textbox" name="weldingprocesscard.fildid" />
						<form id="uploadform" enctype="multipart/form-data" style="display: none">
							<input style="width:70px" id="an" type="file" name="file" accept="*" onchange="fileSub(this)"> 
						</form>
					</td>
			</tr>
			<tr>
			<td class="form_label" >备注:</td>
				<td colspan="5">
					<input class="nui-textarea" readonly="readonly" id="bz" style="width: 100%"
					name="weldingprocesscard.remarks" /></td>	
			</tr>
			<tr style="display: none">
				<td colspan="4"><input class="nui-textbox" value="0" name="weldingprocesscard.isdel" />
				</td>
			</tr>
		</table>
		<div class="nui-toolbar" style="padding: 0px;" borderStyle="border:0;">
			<table width="100%">
				<tr>
					
					<td style="text-align: center;" colspan="4" ><a class="nui-button" style="display: none" onclick="onOk()" id="btnsave">保存
					</a> <span style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button"  onclick="onCancel()">
						关闭 </a></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		nui.parse();
        	var jdid = parent.nui.get("jdid").getValue();
        	nui.get("jd").setValue(jdid);
		$(function(){
					nui.get('combobox1').setAjaxType("POST");
	              nui.get('combobox1').load("com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.getProcessAssessRep.biz.ext?base="+jdid);
		});
		
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
		function saveData() {

			var form = new nui.Form("#dataform1");
			form.setChanged(false);
			//保存
			var urlStr = "com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.addweldingprocesscard.biz.ext";
			var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
			//编辑
			if (pageType == "edit") {
				urlStr = "com.cgn.itmp.weldingmanagement.weldingprocesscardbiz.updateweldingprocesscard.biz.ext";
			}
			form.validate();
			if (form.isValid() == false){
				nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;			
			}

			var data = form.getData(false, true);
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
	function fileHref(){
		 var div = document.getElementById('fileHref');
			var fileRealName = nui.get('enclosure').value;
			var fileId = nui.get('fildid').value;
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
		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);

			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);

			//如果是点击编辑类型页面
			if (infos.pageType == "edit") {
				var json = infos.record;
				nui.get('btnEdit1').setValue(json.weldingprocesscard.process_assessment_report);
				nui.get('btnEdit1').setText(json.weldingprocesscard.process_assessment_report);
				var form = new nui.Form("#dataform1");//将普通form转为nui的form
				form.setData(json);
				form.setChanged(false);
				fileHref();
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
		
		function fileSub(file){
		var  fv=file.value;
		if(fv){
			$("#uploadform").ajaxSubmit({
				type: "post",
				dataType : "json",
				url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
				success : function(data) {
					if (data.code == 1) {
						nui.get("enclosure").setValue(data.list[0].name);
						nui.get("fildid").setValue(data.list[0].uri);
					} else {
						nui.alert("上传失败:" + data.message);
					}
				}
			});
	} else {
		return false;
	}
} 


$("input[readOnly]").keydown(function(e) {
              e.preventDefault();
         });
	</script>
</body>
</html>
