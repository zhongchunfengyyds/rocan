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
- Date: 2019-10-15 10:42:52
- Description:
    --%>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script> <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
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
		<!-- hidden域 -->
		<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
		<input class="nui-hidden" name="jhry" id="jhry"/>
		<input class="nui-hidden" name="ccry" id="ccry"/>
    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
    	<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
    	<div id="form1">
		<input class="nui-hidden" name="insplanmg.uuid" />
		<input class="nui-hidden" id="id" name="insplanmg.relationid" />
		<input class="nui-hidden" name="insplanmg.applicant" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<input class="nui-hidden" id="fileid" name="insplanmg.fileid" />
			<tr>
				<td class="form_label">大修轮次:</td>
				<td colspan="1"><input class="nui-textbox" style="width:100%"
				required="true" requiredErrorText="请输入名称" emptyText="请输入大修轮次"
					name="insplanmg.overhaulsq" /></td>
				<td class="form_label">检查阶段:</td>
				<td colspan="1"><input class="nui-dictcombobox"
				multiSelect="true" id="pipemodel"
				 valueField="dictID" textField="dictName"  
					required="true" requiredErrorText="请输入名称" emptyText="请输入检查阶段" dictTypeId="checkstage"
					style="width: 100%" name="insplanmg.insphase" />
					</td>
			</tr>
			<tr>
				<td class="form_label">检查范围:</td>
				<td colspan="1">
				<input class="nui-dictcombobox"
				multiSelect="true" id="pipemodel"
				 valueField="dictID" textField="dictName"  
					required="true" requiredErrorText="请输入名称" emptyText="请输入检查范围" dictTypeId="insscope"
					style="width: 100%" name="insplanmg.insscope" />
				</td>
				<td class="form_label">冲洗后管间检查计划:</td>
				<td  colspan="1" id="fileHref" style="display:none">
                    
                 </td>
				<td colspan="1" class="fj">
				<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
					<input class="nui-textbox" style="width:100%"  id="fj" name="insplanmg.fj" />
					<form id="uploadform" enctype="multipart/form-data">
						<input id="fj" class="" style="width:100%" type="file" name="file" accept="*" onchange="fileSub(this)"> 
					</form>
				</div>
				</td>
			</tr>
			<tr>
				<td class="form_label">备注:</td>
				<td colspan="3"><input class="nui-textarea" style="width:100%"
					name="insplanmg.remake" /></td>
			</tr>
			<tr class="changeReason_yy">
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%"
				required="true" requiredErrorText="请输入名称" emptyText="请输入修改原因"
					name="insplanmg.changeReason" /></td>
			</tr>
			<tr class="changeReasons" style="display: none;">
			<td class="form_label">校核人员</td>
					 <td colspan="3">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name=""  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请输入校核人员"  valueField="empid"/>
                    </td>
				</tr>
				<tr  class="changeReasons">
				<td class="form_label" colspan="1"
					style="width: 16% !important; text-align: center">选择抄送人员:</td>
				<td colspan="3"><input property="editor"  id="ccry" multi="true"
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
		var fileid = "";
		var processInstId =nui.get("processInstId").getValue();
		var isadmin ="<%=request.getSession().getAttribute("isadmin") %>";
		$(".changeReasons").show();
		getInsplanmgmf();
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
		//回显
		function fileHref(){
		
			$('#fileHref').show();
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
		
			var json=nui.encode({processInstId:processInstId,entityType:"com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif"});
			$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",//该方法可复用
				type : 'POST',
				data : json,
				async:false,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var insplanmg=text.data;
					var temple={insplanmg:insplanmg};
					var form = new nui.Form("#form1");//将普通form转为nui的form
					form.setData(temple);
					if('<%=username %>' != nui.getbyName('insplanmg.applicant').getValue() ){
				         $('#btnSubmit').hide();
				         $('#btnDelete').hide();
				         $('.changeReasons').hide();
				         var form = new nui.Form("#dataform1");
		            	 form.setChanged(false); 
		                 form.setEnabled(false);
		                 fileHref();
				    }
					
// 					$(".emp-name").html(temple.insplanmg.jhry);
// 					$(".emp-name1").html(temple.insplanmg.ccry);
				}
			});
		}
		
		function onSubmit(){
				var form = new nui.Form("#dataform1");
	    		var urlStr = "com.cgn.itmp.basecommon.Common.updateEntity.biz.ext";
	    		form.validate();
	    		
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	            
	            data.delete_entity = data.insplanmg;
	            data.entityType = "com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif";
			    data.jhry = nui.get("jhry").text;
				data.ccry = nui.get("ccry").value;
				updateprocessStatus("0");
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
				 json.entityType = "com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg_modif";
				 
		    
		         
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
							updateprocessStatus("1");
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

		//取消
		function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }


	     function fileSub(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
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
            var json =nui.encode({data:param,entity:"com.cgn.itmp.inspectcomponentmanage.insplanmg.Insplanmg"});
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
