<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-09-28 16:52:08
- Description:
    --%>
<head>
<title></title>
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
    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
    	<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
    	<div id="form1">
		<input class="nui-hidden" name="trackingtubeins.uuid" />
		<input class="nui-hidden" name="trackingtubeins.relationid" />
		<table style="width: 100%; height: 100%; table-layout: fixed;"
			class="nui-form-table">
			<tr>
				<td class="form_label">SG型号:</td>
				<td colspan="1"><input class="nui-combobox"
									style="width: 100%" id="pipemodel"
									textField="text" valueField="id" required="true"
					requiredErrorText="请输入名称" emptyText="请输入SG型号" dictTypeId="evaporator_model"
					style="width: 100%" name="trackingtubeins.sgmodel" /></td>
					</td>
				<td class="form_label">SG编号:</td>
				<td colspan="1"><input class="nui-textbox"
				 style="width:100%"
					name="trackingtubeins.sgnumber" /></td>
			</tr>
			<tr>
				<td class="form_label">功能位置:</td>
				<td colspan="1"><input class="nui-textbox" id="funposition"
				 style="width:100%"
					name="trackingtubeins.funposition" /></td>
				<td class="form_label">传热管编号列（R）:</td>
				<td colspan="1"><input class="nui-textbox" id="no_r"
				 style="width:100%"
					name="trackingtubeins.no_r" /></td>
			</tr>
			<tr>
				<td class="form_label">传热管编号行（C）:</td>
				<td colspan="1"><input class="nui-textbox" id="no_c"
				 style="width:100%"
					name="trackingtubeins.no_c" /></td>
				<td class="form_label">检查类型:</td>
				<td colspan="1"><input class="nui-textbox" value="跟踪管"
				 style="width:100%"
					name="trackingtubeins.inspectiontype" /></td>
			</tr>
			<tr>
				<td class="form_label">是否取消跟踪检查:</td>
				<td colspan="1"><input class="nui-textbox"
				 style="width:100%"
					name="trackingtubeins.iscancelcheck" /></td>
				<td class="form_label">备注:</td>
				<td colspan="1"><input class="nui-textbox"
				 style="width:100%"
					name="trackingtubeins.remarks" /></td>
			</tr>
			<tr style="visibility: hidden; height: 1px; overflow: hidden;">
				<td style="visibility: hidden; height: 1px; overflow: hidden;"
					colspan="1"><input value="0" class="nui-hidden"
					name="trackingtubeins.isdel" /></td>
			</tr>
			<tr class="changeReasons_yy" >
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%"
				
					name="trackingtubeins.changeReason" /></td>
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
                    <input id="sqr" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqr" value="" />
    	  			
                </td>
                <td class="form_label"  style="width: 10%">
                    申请时间:
                </td>
                 <td colspan="1">
                        <input id="sqsj" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqsj" value="" />
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
		var datas = {};
		datas.jd = getCookie('jdid');
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
		var form = new nui.Form("#dataform1");
        form.setChanged(false);
        form.setEnabled(false);
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		var processInstId =nui.get("processInstId").getValue();
		getTrackingtubeins();
		var editable=nui.get("editable").getValue();
		if(editable=='false'){
			nui.get("btnSubmit").hide();
			nui.get("btnBack").hide();
			$('#spyjId').hide();
			$('#ccryTr').hide();   
		}
		
		function getTrackingtubeins(){
		var form = new nui.Form("#form1");//将普通form转为nui的form
			var json=nui.encode({processInstId:processInstId,entityType:"com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins_MF"});
			$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var trackingtubeins=text.data;
					var temple={trackingtubeins:trackingtubeins};
					form.setData(temple);
					nui.get("sqr").setValue(trackingtubeins.changeuser);
					nui.get("sqsj").setValue(trackingtubeins.changetime.split(".")[0]);
				}
			});
		}


		function onSubmit(){
				var form = new nui.Form("#baseInfoForm");
	    		form.validate();
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            form = new nui.Form("#dataform1");
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	    		var urlStr = "com.cgn.itmp.inspectcomponentmanage.trainsmg.trainsmgbiz.endupdatework.biz.ext";
	            data.data=data.trackingtubeins;
	    		data.entityName="com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.inspecomponentmenutree.Trackingtubeins";
	    		data.spyj=nui.get("spyj").value;
				data.ccry=nui.get("ccry").value;
	            var json = nui.encode(data);
	            nui.get("#btnSubmit").setEnabled(false);
	            nui.get("#btnBack").setEnabled(false);
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
            
            nui.get("#btnSubmit").setEnabled(false);
            nui.get("#btnBack").setEnabled(false);
            
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

		//取消
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
    			//设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
    	    	
	</script>
</body>
</html>
