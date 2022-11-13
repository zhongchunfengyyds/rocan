<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-10-15 18:22:58
- Description:
    --%>
<head>
<title>Entity录入</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript">
	
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
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
    	<input id="modelFlag" class="nui-hidden"  value="<b:write property='modelFlag'/>" name="modelFlag"/>
    	<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
    	<div id="form1">
		<!-- hidden域 -->
		<input class="nui-hidden" name="trainsmg.uuid" />
		<input class="nui-hidden" name="trainsmg.jz" />
		<input class="nui-hidden" name="trainsmg.jd" />
		<input class="nui-hidden" name="trainsmg.relationid" />
		<input class="nui-hidden" name="trainsmg.applicant" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">检查部位:</td>
				<td colspan="1"><input class="nui-dictcombobox"
				 style="width:100%"
					name="trainsmg.checkpostion" dictTypeId="checkpostion" /></td>
				<td class="form_label">检查方法:</td>
				<td colspan="1"><input class="nui-dictcombobox"
				 style="width:100%"
					dictTypeId="trainsmg_checkmeth" name="trainsmg.checkmethond" /></td>
			</tr>
			<tr>
				<td class="form_label">螺栓/螺母标识号:</td>
				<td colspan="1"><input class="nui-textbox"
				 style="width:100%"
					name="trainsmg.screwiden" /></td>
					<td class="form_label">缺陷显示首次出现的大修轮次:</td>
				<td colspan="1"><input class="nui-textbox"
				 style="width:100%"
					name="trainsmg.overhaulsq" /></td>
			</tr>
			<tr>
			<td class="form_label">显示位置:</td>
				<td colspan="3"><input class="nui-textarea"
				 style="width:100%"
					name="trainsmg.shoupostion" /></td>
			</tr>
			<tr>
				<td class="form_label">跟踪检查计划及结果第1次:</td>
				<td colspan="3"><input class="nui-textarea"
				 style="width:100%"
					name="trainsmg.planone" /></td>
			</tr>
			<tr>
				<td class="form_label">跟踪检查计划及结果第2次:</td>
				<td colspan="3"><input class="nui-textarea"
				 style="width:100%"
					name="trainsmg.plantwo" /></td>
					</tr>
			<tr>
				<td class="form_label">跟踪检查计划及结果第3次:</td>
				<td colspan="3"><input class="nui-textarea"
				 style="width:100%"
					name="trainsmg.planthree" /></td>
			</tr>
			<tr>
				<td class="form_label">备注:</td>
				<td colspan="3"><input class="nui-textarea"
				style="width:100%"
					name="trainsmg.remake" /></td>
			</tr>
			<tr class="changeReasons_yy" style="display: none;">
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%"
				
					name="trainsmg.changeReason" /></td>
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
                    <input id="sqr" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqr" value="<b:write property='personInfo/sqr'/>" />
    	  			
                </td>
                <td class="form_label"  style="width: 10%">
                    申请时间:
                </td>
                 <td colspan="1">
                        <input id="sqsj" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqsj" value="<b:write property='personInfo/sqsj'/>" />
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
		var processInstId =nui.get("processInstId").getValue();
		var modelFlag=nui.get("modelFlag").getValue();
		var isadmin ="<%=request.getSession().getAttribute("isadmin") %>";
		$(".changeReasons").show();
		gettrainsmg();
		var editable=nui.get('editable').value;
		if(editable=='false'){
    			nui.get("btnSubmit").hide();
    			nui.get("btnBack").hide();
    			$('#spyjId').hide();
    			$('#ccryTr').hide();   
    		}
	function gettrainsmg(){
		entityType="com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg_mf";
		if(modelFlag=="2"){
			$(".changeReasons_yy").show();
		}
		
		
		var form = new nui.Form("#form1");//将普通form转为nui的form
			var json=nui.encode({processInstId:processInstId,entityType:entityType});
			$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var trainsmg=text.data;
					var temple={trainsmg:trainsmg};
					
					form.setData(temple);
					if(modelFlag=="1"){
						nui.get("sqr").setValue(trainsmg.applicant);
						nui.get("sqsj").setValue(trainsmg.applicanttime.split(".")[0]);
					}else{
						nui.get("sqr").setValue(trainsmg.changeuser);
						nui.get("sqsj").setValue(trainsmg.changeDate);
					}
					
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
	            var urlStr="";

	            if(modelFlag=="1"){
 					data.trainsmg.isdel="0";
					urlStr = "com.cgn.itmp.inspectcomponentmanage.trainsmg.trainsmgbiz.AddTra.biz.ext";
					data.entityType="com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg";
		            
				}else{
					urlStr = "com.cgn.itmp.inspectcomponentmanage.trainsmg.trainsmgbiz.endupdatework.biz.ext";
				}
	            data.spyj=nui.get("spyj").value;
				data.ccry=nui.get("ccry").value;
	            data.data=data.trainsmg;
				data.entityName="com.cgn.itmp.inspectcomponentmanage.trainsmg.Trainsmg";
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
		//页面间传输json数据
		function setFormData(data) {
			//跨页面传递的数据对象，克隆后才可以安全使用
			var infos = nui.clone(data);

			//保存list页面传递过来的页面类型：add表示新增、edit表示编辑
			nui.getbyName("pageType").setValue(infos.pageType);

			//如果是点击编辑类型页面
			if (infos.pageType == "edit") {
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

		//取消
		function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }
		//设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
		function onCheck(e){
	       if (e.isValid) {
	         if(e.value==""){
	           e.errorText = "必填项不可为空";
	           e.isValid = false;
	         }
	       }
	     }
	</script>
</body>
</html>
