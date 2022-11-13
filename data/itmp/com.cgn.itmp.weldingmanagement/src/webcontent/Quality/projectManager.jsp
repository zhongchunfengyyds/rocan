<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): Administrator
  - Date: 2019-12-03 10:51:21
  - Description:
-->
<head>
<title>项目管理（开工、完工）</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="<%=request.getContextPath()%>/common/nui/nui.js"
	type="text/javascript"></script>
<link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
</head>
<body>
	<div id="dataform1" style="padding-top: 5px;">
		<!-- hidden域 -->
		<div class="nui-hidden" name="uuid"></div>
		<div class="nui-hidden" name="state"></div>
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr id="propTr" class="Suspension">
				<td class="form_label">无损检测方法及比例</td>
				<td colspan="1"><input class="nui-textbox" style="width: 100%"
						name="ndtmethod_proportions" /></td>
			</tr>
			<tr class="Suspension">
				<td class="form_label">实派焊工</td>
				<td colspan="1">
					<div name="solidwelder" id="combobox2"
							class="nui-combobox" style="width: 100%;" popupWidth="150"
							textField="name" valueField="id" url="" multiSelect="true"
							required="true"  requiredErrorText="实派焊工不能为空" emptyText="请选择实派焊工"
							dataField="jsonObject">
							<div property="columns">
								<div header="实派焊工" field="name"></div>
							</div>
						</div>
				</td>
			</tr>
			
			<tr class="Suspension">		
				<td class="form_label">工作负责人</td>
				<td colspan="1"><input class="nui-textbox" style="width: 100%" name="chargeperson" required="true" emptyText="请输入工作负责人" requiredErrorText="工作负责人不能为空"/></td>
			</tr>
			<tr rowspan="2" id="zz">
				<td class="form_label" >中止理由</td>
				<td colspan="1" ><input class="nui-textarea" style="width: 100%"
						name="reason" /></td>	
			</tr>
			
		</table>
		
			
		
	</div>
	<div id="btn" class="nui-toolbar" style="padding: 0px;"
			borderStyle="border:0;">
			<table width="100%">
				<tr>
					<td style="text-align: center;" colspan="4"><a
						class="nui-button" onclick="onSubmit()" id="btnSubmit">确定</a>
					<a class="nui-button" onclick="onCancel()">关闭 </a></td>
				</tr>
			</table>
		</div>	
		<script type="text/javascript">
			nui.parse();
			var operationtype="";
			var wqpnumber="";
			nui.get('combobox2').setAjaxType("POST");
  			nui.get('combobox2').load("com.cgn.itmp.weldingmanagement.qualitybiz.getWelderName.biz.ext?base="+getCookie("jdid"));
			//页面间传输json数据
			function setFormData(data) {
				//跨页面传递的数据对象，克隆后才可以安全使用
				 var infos = nui.clone(data);
				 var form = new nui.Form("#dataform1");//将普通form转为nui的form
                 var json = infos.record;   
                 wqpnumber=infos.record.qualitynumber 
			     form.setData(json);
			     form.setChanged(false);
			     $('#zz').hide();
			     if(infos.pageType == "start"){
					$('#propTr').hide();
					operationtype="开工";
				 }else if(infos.pageType == "Suspension"){
				 	$('.Suspension').hide();
				 	$('#zz').show();
				 	operationtype="中止";
				 }else{
				 	operationtype="完工";
				 }
				}
		
		//确定	
		function onSubmit(){
			 var form = new nui.Form("#dataform1");
             form.setChanged(false);
             form.validate();
             if(form.isValid()==false) return;
             var data = form.getData(false,true);
             var json = nui.encode({quality :data});
             data.operationtype=operationtype;
             data.wqpnumber=wqpnumber;
             data.jd=getCookie("jdid");
             var jsondata=nui.encode({quality :data});
             nui.mask({
	            el: document.body,
	            cls: 'mini-mask-loading',
	            html: '提交中...'
       	 	});
              $.ajax({
                    url:'com.cgn.itmp.weldingmanagement.qualitybiz.additermrecord.biz.ext',
                    type:'POST',
                    data:jsondata,
                    async: false,
                    
                    contentType:'text/json',
                    success:function(text){
                      
                        }
                   });
                    
              $.ajax({
                    url:'com.cgn.itmp.weldingmanagement.qualitybiz.updateQuality.biz.ext',
                    type:'POST',
                    data:json,
                    contentType:'text/json',
                    success:function(text){
                       var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                        	nui.unmask(document.body);
                        	nui.alert("保存成功", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                 CloseWindow("saveSuccess");
                                }
                                });
                           
                         }else{
                         	nui.unmask(document.body);
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                }
                                });
                            } 
                        },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									});
								 }
                   });
                   
                 
                }
			
			
		 //取消
        function onCancel() {
            CloseWindow("cancel");
        }
        
         //关闭窗口
        function CloseWindow(action) {
            if (window.CloseOwnerWindow)
            return window.CloseOwnerWindow(action);
            else window.close();
        }
		</script>
</body>
</html>