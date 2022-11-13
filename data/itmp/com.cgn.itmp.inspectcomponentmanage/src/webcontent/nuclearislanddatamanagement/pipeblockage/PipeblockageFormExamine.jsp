<%@page import="com.cgn.itmp.basecommon.CommonUtil"%>
<%@page import="com.eos.data.datacontext.IUserObject"%>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
    IUserObject cu = CommonUtil.getUserObject();
    String userid = cu.getUserId();
    String username = cu.getUserRealName();
%>
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
		<input class="nui-hidden" name="pipeblockage.changeuser" />
		<input class="nui-hidden" id="id" name="pipeblockage.relationid" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
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
				<td colspan="1"><input class="nui-textbox" emptyText="请输入生成功能位置"
				style="width: 70%; float: left;" 
				id="functionpostion" name="pipeblockage.funlocation" /> <input
				class="nui-dictcombobox" style="width: 30%; float: left;"
				required="true" requiredErrorText="请输入名称" id = "funselect" 
				dictTypeId="functionpostion" onvaluechanged="functionpostionchange" />
				<input
					id = "funselect_ts" required="true" requiredErrorText="请输入名称"
					class="nui-dictcombobox" style="width: 30%; float: left;display: none"
					dictTypeId="functionpostion_ts" onvaluechanged="functionpostionchange" />
				</td>
				<td class="form_label">传热管编号列（R）:</td>
				<td colspan="1"><input class="nui-textbox"
					required="true" requiredErrorText="请输入名称" emptyText="请输入传热管编号列（R）" style="width: 100%" name="pipeblockage.no_r" /></td>
			</tr>
			<tr>
				<td class="form_label">传热管编号行（C）:</td>
				<td colspan="1"><input class="nui-textbox"
					required="true" requiredErrorText="请输入名称" emptyText="请输入传热管编号列（C）" style="width: 100%" name="pipeblockage.no_c" /></td>
				<td class="form_label">缺陷类型:</td>
				<td colspan="1"><input class="nui-textbox"
					required="true" requiredErrorText="请输入名称" emptyText="请输入缺陷类型" style="width: 100%"
					name="pipeblockage.defectTypes" /></td>
			</tr>
			<tr>
				<td class="form_label">缺陷尺寸:</td>
				<td colspan="1"><input class="nui-textbox"
					required="true" requiredErrorText="请输入名称" emptyText="请输入缺陷尺寸" style="width: 100%"
					name="pipeblockage.defectSize" /></td>
				<td class="form_label">所在位置:</td>
				<td colspan="1"><input class="nui-textbox"
					required="true" requiredErrorText="请输入名称" emptyText="请输入所在位置" style="width: 100%"
					name="pipeblockage.location" /></td>
			</tr>
			<tr>
				<td class="form_label">堵管时间:</td>
				<td colspan="1"><input class="nui-textbox"
					required="true" requiredErrorText="请输入名称" emptyText="请输入堵管时间" style="width: 100%"
					name="pipeblockage.pluggingTime" /></td>
			</tr>
			<tr>
				<td class="form_label">附件:</td>
				<td  colspan="1" id="fileHref">
                    
                 </td>
				<td colspan="2">
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
				<td colspan="3"><input class="nui-textarea"
					required="true" requiredErrorText="请输入名称" emptyText="请输入堵管原因" style="width: 100%"
					name="pipeblockage.pluggingReason" /></td>
			</tr>
			<tr style="visibility: hidden; height: 1px; overflow: hidden;">
				<td style="visibility: hidden; height: 1px; overflow: hidden;"
					colspan="1"><input value="0" class="nui-hidden"
					name="pipeblockage.isdel" /></td>
			</tr>
					<tr class="changeReason" >
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%"
				required="true" requiredErrorText="请输入名称" emptyText="请输入修改原因"
					name="pipeblockage.changeReason" /></td>
			</tr>
			<tr class="changeReasons" >
			<td class="form_label">校核人员</td>
					 <td colspan="3">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请输入校核人员"  valueField="empid"/>
                    </td>
<!-- 				<td colspan="4"> -->
<!-- 					<div style="flex-direction: row;display: flex;"> -->
<!-- 						<button id="btnEdit1" class="nui-button" onClick="onButtonEdit">校核人</button> -->
<!-- 						<span id="result"></span> -->
<!-- 						<div id="template" style="display: none;"> -->
<!-- 							<div class="emp" > -->
<!-- 								<span class="emp-id" style="display: none;"></span> -->
<!-- 								<span class="emp-name" style="padding:3px 3px;"></span> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</td> -->
				</tr>
				<tr class="changeReasons" >
				<td class="form_label" colspan="1"
					style="width: 16% !important; text-align: center">选择抄送人员:</td>
				<td colspan="3"><input property="editor" id="ccry" multi="true"
					name="copyperson" class="nui-textboxlist" dataField="list"
					style="width: 100%; height: 100%;"
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
					valueField="empcode" textField="empcodename" ScrollBar="Vertical"
					searchField="keyword" /></td>
			</tr>
		</table>
		</div>
		<div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
        <table width="100%">
            <tr>
                <td style="text-align:center;" colspan="4">
                    <a class="nui-button" id="btnSubmit" onclick="onSubmit()">
                        提交
                    </a>
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <a class="nui-button" onclick="onDelete()" id="btnDelete">
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
		
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		var processInstId =nui.get("processInstId").getValue();
		var filename;
		var fileid;
		getPipeblock();
		var editable=nui.get('editable').value;
		if(editable=='false'){
			$('#btnSubmit').hide();
	        $('#btnDelete').hide();
	        $('.changeReasons').hide();
	        var form = new nui.Form("#dataform1");
	    	form.setChanged(false); 
	        form.setEnabled(false);
	        fileHref();
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
		//下载附件
		function load(fileId,fileRealName) {
			 var elemIF = document.createElement("iframe");
	         elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
	         document.body.appendChild(elemIF);
	         elemIF.style.display = "none";
		}

		function getPipeblock(){
			var json=nui.encode({processInstId:processInstId,entityType:"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage_MF"});
			$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",//可复用
				type : 'POST',
				data : json,
				async:false,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var form = new nui.Form("#form1");//将普通form转为nui的form
					var pipeblockage=text.data;
					var temple={pipeblockage:pipeblockage};
					form.setData(temple);
					if (pipeblockage.jd == "86") {
						nui.get("funselect_ts").setValue((pipeblockage.funlocation).slice(5, 8));
					} else {
						nui.get("funselect").setValue((pipeblockage.funlocation).slice(5, 8));
					}
					if('<%=username %>' != nui.getbyName('pipeblockage.changeuser').getValue() ){
				         $('#btnSubmit').hide();
				         $('#btnDelete').hide();
				         $('.changeReasons').hide();
				         var form = new nui.Form("#dataform1");
		            	 form.setChanged(false); 
		                 form.setEnabled(false);
		                 fileHref();
		                
				    } var datas = {};
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
				var form = new nui.Form("#dataform1");
	    		var urlStr = "com.cgn.itmp.basecommon.Common.updateEntity.biz.ext";
	    		form.validate();
	    		
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	            
	            data.delete_entity = data.pipeblockage;
	            data.entityType = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage_MF";
				
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
		         
					json.entityType = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage_MF";
				
		    
		         
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
							updateprocessStatus("3");
					}
                 onCancel();
                });
               }
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
				nui.get("fj").setText(data.record.pipeblockage.fj);//加载附件名称
				nui.get("fname").setValue(data.record.pipeblockage.fj);
				var json = infos.record;

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

		//关闭
		function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }


		function functionpostionchange(e) {
			nui.get("functionpostion").setValue(
					getCookie('jzname') + "RCP" + e.selected.dictName + "GV");
		};
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
		//修改流程状态
		function updateprocessStatus(type){
			var param={uuid:nui.get("id").value,processStatus:type};
            var json =nui.encode({data:param,entity:"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Pipeblockage"});
            //修改流程状态
            $.ajax({
				url : "com.cgn.itmp.weldingmanagement.common.updateentity.biz.ext",
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
				}
			});
		}
	</script>
</body>
</html>
