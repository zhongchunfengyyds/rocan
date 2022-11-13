<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): littlebear
- Date: 2019-10-15 14:27:05
- Description:
    --%>
<head>
<title>SG二次异物管理</title>
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
	<div id="dataform1" style="padding-top: 5px;"><input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
		<input class="nui-hidden" name="jhry" id="jhry"/>
		<input class="nui-hidden" name="ccry" id="ccry"/>
    	<input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
    	<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
    	<div id="form1">
		<!-- hidden域 -->
		<table style="width: 100%; height: 100%; table-layout: fixed;">
		<input class="nui-hidden" name="foreignmattermg.uuid" />
			<input class="nui-hidden" name="foreignmattermg.relationid" />
			<input class="nui-hidden" id="fodisimgfileid" name="foreignmattermg.fodisimgfileid" />
			<input class="nui-hidden" id="fileid" name="foreignmattermg.fileid" />
			<tr>
				<td class="form_label">大修轮次:</td>
				<td colspan="1"><input id="overhaulsq" onvaluechanged="setFO" class="nui-textbox" style="width:100%"
				 
					name="foreignmattermg.overhaulsq" /></td>
				<td class="form_label">功能位置:</td>
				<td colspan="1">
					<input class="nui-textbox"
				style="width: 70%; float: left;" 
				id="functionpostion" name="foreignmattermg.funposition" /> <input
				class="nui-dictcombobox" style="width: 30%; float: left;"
				 id = "funselect" 
				dictTypeId="functionpostion" onvaluechanged="functionpostionchange" />
				<input
					id = "funselect_ts" 
					class="nui-dictcombobox" style="width: 30%; float: left;display: none"
					dictTypeId="functionpostion_ts" onvaluechanged="functionpostionchange" />
					
					</td>
			</tr>
			<tr>
				<td class="form_label">FO编号:</td>
				<td colspan="1"><input id="focde" enabled="false"class="nui-textbox" style="width:100%"
				 
					name="foreignmattermg.focde" /></td>
				<td class="form_label">检查阶段:</td>
				<td colspan="1"><input class="nui-dictcombobox" style="width:100%"
				 
					dictTypeId="checkstage" name="foreignmattermg.checkstage" /></td>
			</tr>
			<tr>
				<td class="form_label">是否取出:</td>
				<td colspan="1"><input class="nui-dictcombobox" style="width:100%"
					dictTypeId="ISORNO" name="foreignmattermg.istakeout" /></td>
				<td class="form_label">FO属性:</td>
				<td colspan="1"><input class="nui-textbox"
				style="width:100%"
					name="foreignmattermg.foattribute" /></td>
			</tr>
			<tr>
				<td class="form_label">FO尺寸:</td>
				<td colspan="1"><input class="nui-textbox" style="width:100%"
				 
					name="foreignmattermg.fosize" /></td>
				<td class="form_label">FO重量（g）:</td>
				<td colspan="1"><input class="nui-textbox" vtype="float" intErrorText="只可以输入数字" style="width:100%"
				 
					name="foreignmattermg.fokg" /></td>
			</tr>
			<tr>
				<td class="form_label">FO位置:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%"
					name="foreignmattermg.foposition" /></td>
			</tr>
			<tr>
				<td class="form_label">FO分布图:</td>
				<td  colspan="1" id="fodisimgfj">
                    
                 </td>
				<td colspan="2" class="fj">
				<div style="display: flex;">
					
					<input class="nui-textbox" style="width:100%"  id="fodisimgfjname" name="foreignmattermg.fodisimgfj" />
<!-- 					<form id="uploadform" enctype="multipart/form-data"> -->
<!-- 						<input id="fodisimgfj" class="" style="width:100%" type="file" name="foreignmattermg.fodisimgfj" accept="*" onchange="fileSub(this)">  -->
<!-- 					</form> -->
				</div>
				</td>
			</tr>
			<tr>
				<td class="form_label">相关图片:</td>
				<td  colspan="1" id="fjHref">
                    
                 </td>
				<td colspan="2" class="fj">
				<div style="display: flex;">
					<input class="nui-textbox" style="width:100%"  id="fj" name="foreignmattermg.fj" />
<!-- 					<form id="uploadform1" enctype="multipart/form-data"> -->
<!-- 						<input id="fj" class="" style="width:100%" type="file" name="foreignmattermg.fj" accept="*" onchange="fileSub1(this)">  -->
<!-- 					</form> -->
				</div>
				</td>
			</tr>
			<tr>
				<td class="form_label">备注:</td>
				<td colspan="3"><input class="nui-textarea" style="width:100%"
					name="foreignmattermg.remake" /></td>
			</tr>
			<tr class="changeReasons" style="display: none;">
				<td class="form_label">修改原因:</td>
				<td colspan="3"><input class="nui-textbox" style="width:100%"
				
					name="foreignmattermg.changeReason" /></td>
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
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list" style="width:55%" 
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
		var typeFlag = false;
		var upFileWhich;
		var fileid = "";
		var fodisimgfileid = "";
		var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		$(".changeReasons").show();
		
		var jdid = getCookie('jdid');
		var jzid = getCookie('jzid');
		
		
		var processInstId =nui.get("processInstId").getValue();
		getForeignmatter();
		var editable=nui.get('editable').value;
		if(editable=='false'){
			nui.get("btnSubmit").hide();
			nui.get("btnBack").hide();
			$('#spyjId').hide();
			$('#ccryTr').hide();  
			fileHref();
		}
		
		
		
		function getForeignmatter(){
		var form = new nui.Form("#form1");//将普通form转为nui的form
			var json=nui.encode({processInstId:processInstId,entityType:"com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg_mf"});
			$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",//可复用
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					var foreignmattermg=text.data;
					var temple={foreignmattermg:foreignmattermg};
					//功能位置后面的编号
					if (jdid == "86") {
						nui.get("funselect_ts").setValue((foreignmattermg.funposition).slice(5, 8));
					} else {
						nui.get("funselect").setValue((foreignmattermg.funposition).slice(5, 8));
					}
					form.setData(temple);
					$(".emp-name").html(temple.foreignmattermg.jhry);
					nui.get("sqr").setValue(foreignmattermg.applicant);
					nui.get("sqsj").setValue(foreignmattermg.applicanttime.split(".")[0]);
					fileHref();
// 					nui.get("ccry").setText(temple.foreignmattermg.ccry);
				}
			});
		}
		function onSubmit(){
				var form = new nui.Form("#baseInfoForm");
	    		form.validate();
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            form = new nui.Form("#dataform1");
	            var data = form.getData(false,true);
	    		var urlStr = "com.cgn.itmp.inspectcomponentmanage.trainsmg.trainsmgbiz.endupdatework.biz.ext";
	            data.data=data.foreignmattermg;
	            data.spyj=nui.get("spyj").value;
				data.ccry=nui.get("ccry").value;
	    		data.entityName="com.cgn.itmp.inspectcomponentmanage.foreignmattermg.Foreignmattermg";
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
                         nui.alert("驳回成功", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
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
		//回显
		function fileHref(){
			$('.fj').hide();
			var div = document.getElementById('fjHref');
			var fileRealName = nui.get('fj').value;
			var fileId = nui.get('fileid').value;
			if(fileRealName!=""&&fileId!=""){
				div.innerHTML = '<a href="javascript:void(0)" onclick="load(\'' + fileId + '\',\'' + fileRealName + '\')" >' + fileRealName + '</a>';
			}
			div = document.getElementById('fodisimgfj');
			fileRealName = nui.get('fodisimgfjname').value;
			fileId = nui.get('fodisimgfileid').value;
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
				

    	//设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
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
							nui.get("fodisimgfjname").setValue(data.list[0].name);
							nui.get("fodisimgfileid").setValue(data.list[0].uri);
							fodisimgfileid = data.list[0].uri;
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
		function fileSub1(file){
    		var  fv=file.value;
    		if(fv){
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
			} else {
				nui.alert("请上传图片");
				return false;
			}
		} 
		function functionpostionchange(e) {
			nui.get("functionpostion").setValue(
					getCookie('jzname') + "RCP" + e.selected.dictName + "GV");
		};
		function setFO(){
		if(typeFlag==true){
			return
		}
			var jdjz = {};
			jdjz.jd = getCookie('jdid');
			jdjz.jz = getCookie('jzid');
			var json = nui.encode({
				selectInfo : jdjz
			});
			$.ajax({
				url : "com.cgn.itmp.inspectcomponentmanage.foreignmattermg.foreignmattermgbiz.querySerialnum.biz.ext",
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
					nui.get("focde").setValue("");
					nui.get("focde").setValue("FO-"+nui.get("overhaulsq").getValue()+"-"+text.returnData.SERIALNUM);
				}
			});
		}     	
	</script>
</body>
</html>
