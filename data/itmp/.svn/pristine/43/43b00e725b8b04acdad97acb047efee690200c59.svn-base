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
<title></title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
<script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script> <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript">
	
</script>
</head>
<body>
	<!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
	<input name="pageType" class="nui-hidden" />
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
		<input class="nui-hidden" name="jhry" id="jhry"/>
    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
    	<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
    	<div id="form1">
		<input class="nui-hidden" name="trackingtubeins.uuid" />
		<input class="nui-hidden" id="id" name="trackingtubeins.relationid" />
		<input class="nui-hidden" name="trackingtubeins.changeuser" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
		<tr>
				<td class="form_label">SG型号:</td>
				<td colspan="1"><input class="nui-combobox"
									style="width: 100%" id="pipemodel"
									textField="text" valueField="id" required="true"
					requiredErrorText="请输入名称" emptyText="请输入SG型号" dictTypeId="evaporator_model"
					style="width: 100%" name="trackingtubeins.sgmodel" />
					</td>
				<td class="form_label">SG编号:</td>
				<td colspan="1"><input class="nui-textbox" style="width: 100%"
					name="trackingtubeins.sgnumber" /></td>
			</tr>
			<tr>
				<td class="form_label">功能位置:</td>
				<td colspan="1"><input class="nui-textbox" emptyText="请输入生成功能位置"
					style="width: 70%; float: left;"  id="functionpostion"
					name="trackingtubeins.funposition" /> <input
					class="nui-dictcombobox" style="width: 30%; float: left;"
					id="funselect" dictTypeId="functionpostion"
					required="true"
					onvaluechanged="functionpostionchange" />
					<input
					id = "funselect_ts" required="true" requiredErrorText="请输入名称"
					class="nui-dictcombobox" style="width: 30%; float: left;display: none"
					dictTypeId="functionpostion_ts" onvaluechanged="functionpostionchange" /></td>
				<td class="form_label">传热管编号列（R）:</td>
				<td colspan="1"><input class="nui-textbox" id="no_r"
					vtype = "int" intErrorText="只可以输入数字" emptyText="请输入传热管编号列（R）只可输入数字"
					required="true" requiredErrorText="只可以输入数字" style="width: 100%"
					name="trackingtubeins.no_r" /></td>
			</tr>
			<tr>
				<td class="form_label">传热管编号行（C）:</td>
				<td colspan="1"><input class="nui-textbox" id="no_c"
					vtype = "int" intErrorText="只可以输入数字" emptyText="请输入传热管编号列（C）只可输入数字"
					required="true" requiredErrorText="只可以输入数字" style="width: 100%"
					name="trackingtubeins.no_c" /></td>
				<td class="form_label">检查类型:</td>
				<td colspan="1"><input class="nui-textbox" value="跟踪管" emptyText="请输入检查类型"
					required="true" requiredErrorText="请输入名称" style="width: 100%"
					name="trackingtubeins.inspectiontype" /></td>
			</tr>
			<tr>
				<td class="form_label">是否取消跟踪检查:</td>
				<td colspan="1"><input class="nui-dictcombobox" required="true"
					requiredErrorText="请输入名称" emptyText="请输入是否取消跟踪检查" dictTypeId="ISORNO" style="width: 100%"
					name="trackingtubeins.iscancelcheck" /></td>
			</tr>
			<tr>
				<td class="form_label">备注:</td>
				<td colspan="3"><input class="nui-textarea"  style="width: 100%"
					name="trackingtubeins.remarks" /></td>
			</tr>
			<tr style="visibility: hidden; height: 1px; overflow: hidden;">
				<td style="visibility: hidden; height: 1px; overflow: hidden;"
					colspan="1"><input value="0" class="nui-hidden"
					name="trackingtubeins.isdel" /></td>
			</tr>
			<tr class="changeReason_yy" >
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%"
				required="true" requiredErrorText="请输入名称" emptyText="请输入修改原因"
					name="trackingtubeins.changeReason" /></td>
			</tr>
			<tr class="changeReasons" >
			<td class="form_label">校核人员</td>
					 <td colspan="3">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="trackingtubeins.jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请输入校核人员"  valueField="empid"/>
                    </td>
				</tr>
				<tr  class="changeReasons">
				<td class="form_label" colspan="1"
					style="width: 16% !important; text-align: center">选择抄送人员:</td>
				<td colspan="3"><input property="editor" name="" id="ccry" multi="true"
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
		$.ajax({
			url : "com.cgn.itmp.inspectcomponentmanage.pipebaseInfo.pipebaseinfobiz.queryPipemodel.biz.ext",
			type : 'POST',
			cache : false,
			data : {},
			contentType : 'text/json',
			success : function(data) {
				 nui.get("pipemodel").setData(data.pipemodel.data);
			}
		});
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		var processInstId =nui.get("processInstId").getValue();
		getTrackingtubeins();
		var editable=nui.get('editable').value;
		if(editable=='false'){
	         $('#btnSubmit').hide();
	         $('#btnDelete').hide();
	         $('.changeReasons').hide();
	         var form = new nui.Form("#dataform1");
        	 form.setChanged(false); 
             form.setEnabled(false);
	    }
		
		function getTrackingtubeins(){
		
			var json=nui.encode({processInstId:processInstId,entityType:"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins_MF"});
			$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var form = new nui.Form("#form1");//将普通form转为nui的form
					var trackingtubeins=text.data;
					var temple={trackingtubeins:trackingtubeins};
					form.setData(temple);
					if (trackingtubeins.jd== "86") {
						nui.get("funselect").hide();
						nui.get("funselect_ts").show();
						nui.get("funselect_ts").setValue((trackingtubeins.funposition).slice(5, 8));
					} else {
						nui.get("funselect").show();
						nui.get("funselect_ts").hide();
						nui.get("funselect").setValue((trackingtubeins.funposition).slice(5, 8));
					}
					if('<%=username %>' != nui.getbyName('trackingtubeins.changeuser').getValue() ){
				         $('#btnSubmit').hide();
				         $('#btnDelete').hide();
				         $('.changeReasons').hide();
				         var form = new nui.Form("#dataform1");
		            	 form.setChanged(false); 
		                 form.setEnabled(false);
				    }
					
				}
			});
		}

//提交
		function onSubmit(){
				var form = new nui.Form("#dataform1");
	    		var urlStr = "com.cgn.itmp.basecommon.Common.updateEntity.biz.ext";
	    		form.validate();
	    		
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	            
	            data.delete_entity = data.trackingtubeins;
	            //修改流程状态
	            updateprocessStatus("0");
	            data.entityType = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins_MF";
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
		        json.entityType = "com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins_MF";
		        
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
		                 if(modelFlag=="2"){
							updateprocessStatus("3");
						}
                 onCancel();
                 }
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
			if (jdid == "86") {
					nui.get("funselect_ts").setValue((data.record.trackingtubeins.funposition).slice(5, 8));
				} else {
					nui.get("funselect").setValue((data.record.trackingtubeins.funposition).slice(5, 8));
				}
				if(!isadmin){
					$(".changeReasons").show();
				}else{
					$(".changeReasons").hide();
				}
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
		function onOk() {
			saveData();
		}

		//关闭
		function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }
		//判断跟踪管是否存在
		function isExist(json) {
			$
					.ajax({
						url : "com.cgn.itmp.inspectcomponentmanage.trackingtubeinsbiz.queryTrackingtubeinss.biz.ext",
						type : 'POST',
						data : json,
						cache : false,
						contentType : 'text/json',
						success : function(data) {
							nui.alert(data, "提示");
						}
					});
		}
		function onCheck(e){
	       if (e.isValid) {
	         if(e.value==""){
	           e.errorText = "必填项不可为空";
	           e.isValid = false;
	         }
	       }
	     }
	     function functionpostionchange(e) {
			nui.get("functionpostion").setValue(
					getCookie('jzname') + "RCP" + e.selected.dictName + "GV");
		};
		//修改流程状态
		function updateprocessStatus(type){
			var param={uuid:nui.get("id").value,processStatus:type};
            var json =nui.encode({data:param,entity:"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins"});
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
