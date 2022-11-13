<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

    SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dateTime = df.format(new Date());
    IUserObject cu = CommonUtil.getUserObject();
    String username = cu.getUserRealName();
%>
<!-- 
  - Author(s): xuzhikang
  - Date: 2019-03-25 11:36:15
  - Description:
-->
<head>
    <title>经验反馈申请</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />
	<style type="text/css">
	
	</style>
</head>
<body>
<div id="dataform1" style="padding-top:5px;">
    <!-- hidden域 -->
    <input class="nui-hidden" name="data.uuid" id="uuid"/>
    <input class="nui-hidden" id="fpath" name="data.filepath"/>
    <input class="nui-hidden" id="fname" name="data.filename"/>
    <input class="nui-hidden" id="fid" name="data.fileid"/>
    <input class="nui-hidden" name="data.processInstId"/>
    <input class="nui-hidden" id="finishFirstActivityId" name="data.finishFirstActivityId"/>
    <input class="nui-hidden" id="processDefName" name="data.processDefName"/>
    <fieldset id="baseInfo" style="width:95%;">
    <legend><span>模板信息</span></legend>
    	<table style="width:100%;height:100%;" class="nui-form-table">
            <tr>
                <td class="form_label" width="12%">
                    模板:
                </td>
                <td colspan="1">
					 <input type="file" id="fjone" name="file" multiple onchange="uploadFile(event,id)" /> 
					    <input class="nui-hidden" id="fileid" name="fileid"/>
                  <span id="fileone"></span><br/><a href="#" id="down1" >下载</a>&nbsp<a href="#" id="delete1" onclick="sc(1)">删除</a>&nbsp<a href="#" id="sc1" >上传</a>
                </td>
                <td colspan="1">
                 <input type="file" id="fjtwo" name="file" multiple onchange="uploadFile(event,id)" /> 
							<input class="nui-hidden" id="fileid" name="fileid"/>
                   <span id="filetwo"></span><br/><a href="#" id="down2" >下载</a>&nbsp<a href="#" id="delete2" onclick="sc(2)">删除</a>&nbsp<a href="#" id="sc2" >上传</a>
                 
                </td>
                </tr>
                <tr>
                <td class="form_label" width="12%">
                    备注:
                </td>
                <td colspan="2">
                    <input id="remark"  allowInput="true" class="nui-textbox" style="width:100%" required="false" name="remark"/>
                    <span id="readremark"></span>
                </td>
                 </tr>
                <tr>
                <td style="text-align:center;" colspan="4" id="templatebutton">
                <a class="nui-button"  onclick="baocun()">
                    保存模板
                </a>
                </td>
               
            </tr>
    </table>
    </fieldset>
	
	<fieldset id="baseInfo" style="width:95%;">
    <legend><span>申请信息</span></legend>
    <div class="fieldset-body" id="baseForm">
        <table style="width:100%;height:100%;" class="nui-form-table">
            <tr>
                <td class="form_label" width="12%">
                    类型:
                </td>
                <td colspan="1">
                    <input id="type" name="data.type" class="nui-dictcombobox" required="true" onvaluechanged="doHide" dictTypeId="lx" style="width: 98%"/>
                </td>
                <td class="form_label" width="12%">
                    主题:
                </td>
                <td colspan="1">
                    <input id="zt" class="nui-textbox" style="width:100%" required="true" name="data.zt" style="width: 98%"/>
                </td>
            </tr>
            <tr>
                <td class="form_label">
                    领域:
                </td>
                <td colspan="1">
                    <input id="ly" name="data.ly" class="nui-dictcombobox" required="true" dictTypeId="LY" style="width: 98%"/>
                </td>
                <td class="form_label">
                    来源:
                </td>
                <td colspan="1">
                    <input id="quarry" name="data.quarry" class="nui-dictcombobox" required="true" dictTypeId="LAIYUAN" style="width: 98%"/>

                </td>
            </tr>

            <tr>
                <td class="form_label">
                    反馈人:
                </td>
                <td colspan="1">
                    <input class="nui-textbox" name="data.fkr" style="width: 98%"/>
                </td>
                <td class="form_label">
                    日期:
                </td>
                <td colspan="1">
                    <input class="nui-datepicker" name="data.rq" style="width: 98%"/>
                    <input id="bh" class="nui-hidden" name="data.bh" />
                </td>

            </tr>
            <tr>
                <td class="form_label">
                    附件:
                </td>
                <td colspan="3">
                     <input type="file" id="fileName" name="file" multiple onchange="uploadFile(event,id)" /> 
                    <input class="nui-textbox" name="data.fj" visible="false"/></td>

            </tr>
            <tr>
                <td class="form_label">
                    申请人:
                </td>
                <td >
                    <input id="sqr" readonly="readonly" class="nui-textbox" name="data.adduser" value="<%=username %>" style="width: 98%"/>

                </td>
                <td class="form_label">
                    申请时间:
                </td>
                <td >
                    <input id="sqsj" readonly="readonly" class="nui-textbox"  name="data.addtime" value="<%=dateTime%>" style="width: 98%"/>
                </td>


            </tr>
        </table>
    </div>
    </fieldset>
    <fieldset id="spInfo" style="width:95%;">
        <legend><span>审批信息</span></legend>
        <table>
            <tr>
                <td class="form_label" style="width: 12%">审核人员:</td>

<!--                 <td colspan="5"> -->
<!--                     <input class="nui-combobox" id="shry" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"   name="data.shry"  textField="empname" style="width:98%" url="com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_PGZXGLY"  required="true" requiredErrorText="请选择校审批人员"  valueField="empid"/> -->
<!--                 </td> -->
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="shry"  name="data.shry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校审批人员"  valueField="empid"/>
                    </td>
            </tr>
            <tr id="hsryTr">
                <td class="form_label" style="width: 12%">会审人员:</td>

<!--                 <td colspan="5"> -->
<!--                     <input class="nui-combobox" id="hsry" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"  name="data.hsry"  textField="empname" style="width:98%" url="com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_PGZXGLY"  required="true" requiredErrorText="请选择会审人员"  valueField="empid"/> -->
<!--                 </td> -->
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="hsry"  name="data.hsry"  textField="empname"  style="width:100%" url=""  required="true" requiredErrorText="请选择会审人员"  valueField="empid"/>
                    </td>
            </tr>
            <tr >
                <td class="form_label" style="width: 12%">批准人员:</td>

<!--                 <td colspan="5"> -->
<!--                     <input class="nui-combobox"  id="pzry" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"  name="data.pzry"  textField="empname" style="width:98%" url="com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_PGZXGLY"  required="true" requiredErrorText="请选择批准人员"  valueField="empid"/> -->
<!--                 </td> -->
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="pzry"  name="data.pzry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择批准人员"  valueField="empid"/>
                    </td>
            </tr>
            <tr >
                <td class="form_label" style="width: 12%">签收人员:</td>
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="qsry"  name="data.qsry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择批准人员"  valueField="empid"/>
                    </td>
<!--                 <td colspan="5"> -->
<!--                     <input class="nui-combobox"  id="qsry" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"  name="data.qsry"  textField="empname" style="width:98%" url="com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_PGZXGLY"  required="true" requiredErrorText="请选择批准人员"  valueField="empid"/> -->
<!--                 </td> -->
            </tr>
            <tr >
                <td class="form_label" style="width: 12%">抄送人员:</td>
                <td colspan="3">
                    <input property="editor" id="ccry"  multi ="false" name="data.ccry"  class="nui-textboxlist" dataField="list" style="width:98%"
                           url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
                </td>
            </tr>

        </table>
    </fieldset>
</div>
<div id="btn" class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
    <table width="100%">
        <tr>
            <td style="text-align:center;" colspan="4">
                <a class="nui-button" id="btnSubmit" onclick="onOk('manualActivity')">
                    提交
                </a>
                <span style="display:inline-block;width:25px;"></span>

                <a class="nui-button" id="btnSave" onclick="onOk('')">
                    保存至草稿
                </a>
                <span style="display:inline-block;width:25px;"></span>
                <a class="nui-button" onclick="onCancel()">
                    关闭
                </a>
            </td>
        </tr>
    </table>
</div>

<script type="text/javascript">
    nui.parse();
    var jdid = getCookie('jdid');
    var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
//     var isadmin = false;
	temple();
    $("#hsryTr").hide();

    if(isadmin == 'true'){
        $("#spInfo").hide();
        $("#btnSave").hide();
    }
    //审核人员设置
//  	nui.get('shry').setAjaxType("POST");
//  	nui.get('shry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   //审核人员设置
//  	nui.get('hsry').setAjaxType("POST");
//  	nui.get('hsry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   //审核人员设置
//  	nui.get('pzry').setAjaxType("POST");
//  	nui.get('pzry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   //审核人员设置
//  	nui.get('qsry').setAjaxType("POST");
//  	nui.get('qsry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   

    //根据选择的类型隐藏会审人员
    function doHide(e) {
        var type = e.value;
        if( type == 'FLGR' || type == 'GOPR'){
            $("#hsryTr").show();
            nui.get("processDefName").setValue("com.cgn.itmp.dailyandoverhaul.groupplant.empiricalFeedbackApply2");
        }else{
            $("#hsryTr").hide();
            nui.get("processDefName").setValue("com.cgn.itmp.dailyandoverhaul.groupplant.empiricalFeedbackApply");
        }
    }
	//初始化模板
	function temple() {
	//参数
	var canshu="";
		var json=nui.encode({jd:jdid});
        $.ajax({
            url:"com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.getTemplate.biz.ext",
            type: 'POST',
            data: json,
            cache: false,
            async: false,
            contentType: 'text/json',
            success: function (text) {
            	canshu=text.data;
     		}
        });
        if(canshu!=null){
	        if(isadmin=="true"){
            	if(canshu.fileone!=null&&canshu.fileone!=""){
		    		document.getElementById("fileone").innerHTML=canshu.fileone;
		    		$("#down1").attr("fileid",canshu.fileoneid);
		    		$("#down1").attr("filename",canshu.fileone);
		    	}else{
		    	$("#down1").css('visibility', 'hidden');
		    	$("#delete1").css('visibility', 'hidden');
// 		    	document.getElementById("down1").style.display='none';
		    		document.getElementById("fileone").innerHTML="暂无模板";
// 		    		document.getElementById("delete1").style.display='none';
		    	}
		    	if(canshu.filetwo!=null&&canshu.filetwo!=""){
		    		document.getElementById("filetwo").innerHTML=canshu.filetwo;
		    		$("#down2").attr("fileid",canshu.filetwoid);
		    		$("#down2").attr("filename",canshu.filetwo);
		    	}else{		
		    	$("#down2").css('visibility', 'hidden');
		    	$("#delete2").css('visibility', 'hidden');    	
// 		    	    document.getElementById("down2").style.display='none';
		    	    document.getElementById("fjtwo").innerHTML="暂无模板";
// 			    	document.getElementById("delete2").style.display='none';
		    	}
		    	if(canshu.remark!=null&&canshu.remark!=""){
			    	nui.get("remark").setValue(canshu.remark);
		    	}
	        }else{
	        	$("#fjone").css('visibility', 'hidden');
		    	$("#fjtwo").css('visibility', 'hidden');
		    	$("#sc1").css('visibility', 'hidden');
		    	$("#sc2").css('visibility', 'hidden');
		    	$("#delete1").css('visibility', 'hidden');
		    	$("#delete2").css('visibility', 'hidden');
        		
        		if(canshu.fileone!=null&&canshu.fileone!=""){
		    		document.getElementById("fileone").innerHTML=canshu.fileone;
		    		$("#down1").attr("fileid",canshu.fileoneid);
		    		$("#down1").attr("filename",canshu.fileone);
		    	}else{
// 		    		document.getElementById("down1").style.display='none';
		    		$("#down1").css('visibility', 'hidden');
		    		document.getElementById("fileone").innerHTML="暂无模板";
		    	} 
		    	if(canshu.filetwo!=null&&canshu.filetwo!=""){
		    		document.getElementById("filetwo").innerHTML=canshu.filetwo;
		    		$("#down2").attr("fileid",canshu.filetwoid);
		    		$("#down2").attr("filename",canshu.filetwo);
		    	}else{
		    		$("#down2").css('visibility', 'hidden');
//         			document.getElementById("down2").style.display='none';
		        	document.getElementById("filetwo").innerHTML="暂无模板";
		    	}
		    	if(canshu.remark!=null&&canshu.remark!=""){
			    	document.getElementById("readremark").innerHTML=canshu.remark;
			    	document.getElementById("remark").style.display='none';
		    	}
		    						
		    	nui.get("remark").setReadOnly(true);
		    	document.getElementById("templatebutton").style.display='none';
	        }
          }else{
         
          	if(isadmin=="true"){
          		document.getElementById("fileone").innerHTML="暂无模板";
		    	document.getElementById("filetwo").innerHTML="暂无模板";
		    	$("#down1").css('visibility', 'hidden');
		    	$("#down2").css('visibility', 'hidden');
		    	$("#delete1").css('visibility', 'hidden');
		    	$("#delete2").css('visibility', 'hidden');
          	
          	}else{
				document.getElementById("fjone").style.display='none';
	        	document.getElementById("fjtwo").style.display='none';
		    	document.getElementById("fileone").innerHTML="暂无模板";
		        document.getElementById("filetwo").innerHTML="暂无模板";
        		
        		$("#sc1").css('visibility', 'hidden');
		    	$("#sc2").css('visibility', 'hidden');
		    	$("#delete1").css('visibility', 'hidden');
		    	$("#delete2").css('visibility', 'hidden');
		    	$("#down1").css('visibility', 'hidden');
		    	$("#down2").css('visibility', 'hidden');
		    	
        		nui.get("remark").setReadOnly(true);
          		document.getElementById("templatebutton").style.display='none';
          	}
          }
    }


    function saveData(finishFirstActivityId) {
        var form = new nui.Form("#dataform1");
        nui.get('finishFirstActivityId').setValue(finishFirstActivityId);

        form.setChanged(false);

        //保存
        var urlStr = "com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.experienceApply.biz.ext";

        if(finishFirstActivityId != ""){
            form.validate();
            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
        }
        if(isadmin == "true"){
            finishFirstActivityId = '';
        }
//         var jhry = nui.get('shry').getValue();
//         if(finishFirstActivityId != '' && jhry=='' ){
//             nui.alert("请选择审核人员","提示");
//             return;
//         }
        nui.get("#btnSubmit").setEnabled(false);
        nui.get("#btnSave").setEnabled(false);

        var fdata = form.getData(false, true);
        fdata.data['isadmin'] = isadmin;
        var lx = fdata.data['type'];
        var ly = fdata.data['ly'];
        var quarry = fdata.data['quarry'];
        var myDate = new Date();
        //获取当前年
        var year = myDate.getFullYear();
        //获取当前月
        var month = myDate.getMonth() + 1;
        //获取当前日
        var date = myDate.getDate();

        fdata.data['bh'] = lx + "-" + ly + "-" + quarry + "-" + year + month + date;
        fdata.data['finishFirstActivityId'] = finishFirstActivityId;
        fdata.data['jhry'] = fdata.data['shry'];
        var data = {
            jsonObject: fdata.data
        };

        var json = nui.encode(data);

        $.ajax({
            url: urlStr,
            type: 'POST',
            data: json,
            cache: false,
            contentType: 'text/json',
            success: function (text) {
                var returnJson = nui.decode(text);
                if (returnJson.exception == null) {
                	   var message = "提交成功";
                	   if(finishFirstActivityId == '' && isadmin != 'true'){
			            	message = "保存成功，请在我的草稿中尽快处理该流程，否则影响数据操作！";
			            }
						            
                    nui.alert(message, "提交提示", function(action){
                        if(action == "ok" || action == "close"){
                            CloseWindow("saveSuccess");
                        }
                    });
                } else {
                    nui.alert("授权申请提交失败", "系统提示", function(action){
                        if(action == "ok" || action == "close"){
                            CloseWindow("saveFailed");
                        }
                    });
                }
            },error: function (jqXHR, textStatus, errorThrown) {
								 nui.alert(jqXHR.responseText,'错误',function (action) {
								 	nui.get("#btnSubmit").setEnabled(true);
    								nui.get("#btnSave").setEnabled(true);
								});
							
							//                     alert(jqXHR.responseText);
							}
       });
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
        else window.close();
    }

    //确定保存或更新
    function onOk(finishFirstActivityId) {
        saveData(finishFirstActivityId);
    }

    //取消
    function onCancel() {
//     
//     alert(nui.get("processDefName"));
        CloseWindow("cancel");
    }

    //上传附件操作
    function onfileselect(e) {
        startUpload(e);
    }

    function startUpload(e) { 
        var fileupload = e.sender;
        fileupload.startUpload();
    }

    //上传成功时，回写附件的name、id
    function onUploadSuccess(e) {
        var appIconName = e.file.name;
        var appIconPath = nui.decode(e.serverData).ret.filePath;
        nui.get("fpath").setValue(appIconPath);
        nui.get("fname").setValue(appIconName);
    }

    
    //上传成功时，回写附件的name、id
    function onUploadSuccess1(e) {
 		fileName = e.file.name;
 		filePath = nui.decode(e.serverData).ret.filePath;
 		id="";
 		var json = {};
 		json.filename = fileName;
 		json.filepath = filePath;
 		json = nui.encode(json);
 		$.ajax({
            url: "com.cgn.itmp.basecommon.FileComp.addFile.biz.ext",
            type: 'POST',
            data: json,
            cache: false,
            
            contentType: 'text/json',
            success: function (text) {
	            id=text.fileid;
				if(e.sender.id=="fjone"){
		    		document.getElementById("fileone").innerHTML=e.file.name;
		    		$("#down1").attr("fileid",id);
		    		$("#down1").attr("filename",fileName);
		    		document.getElementById("delete1").style.display='inline';
          			document.getElementById("down1").style.display='inline';
          		
		    	}else{
		    		document.getElementById("filetwo").innerHTML=e.file.name;
		    		$("#down2").attr("fileid",id);
		    		$("#down2").attr("filename",fileName);
	        		document.getElementById("delete2").style.display='inline';
	          		document.getElementById("down2").style.display='inline';
		    	}
            }
        });
        
    }
		   	$("#down1").click(function(){
		   		if(panduanfj(1)){
					nui.alert("暂无模板");
				}else{
			   		var id=$("#down1").attr("fileid");
			   		window.location.href="com.cgn.itmp.basecommon.fileDownload.flow?fileId="+id;
		   		}
			});
		   	$("#down2").click(function(){
			   	if(panduanfj(2)){
					nui.alert("暂无模板");
				}else{
			   		var id=$("#down2").attr("fileid");
			   		window.location.href="com.cgn.itmp.basecommon.fileDownload.flow?fileId="+id;
				}
			});
			//保存模板
			function baocun(){
			var data={};
				data.fileoneid=$("#down1").attr("fileid");
				data.fileone=$("#down1").attr("filename");
				data.filetwoid=$("#down2").attr("fileid");
				data.filetwo=$("#down2").attr("filename");
				data.remark=nui.get("remark").value;
				data.jd=jdid;
				var json=nui.encode({data:data});
				$.ajax({
		            url: "com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.addTemplate.biz.ext",
		            type: 'POST',
		            data: json,
		            cache: false,
		            contentType: 'text/json',
		            success: function (text) {
			         	nui.alert("模板保存成功", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                           });   
		            }
		        });
		        
			}
			function sc(pd){
				if(pd==1){
					if(panduanfj(1)){
						nui.alert("暂无模板");
					}else{
					
			        	$("#down1").attr("fileid","");
			    		$("#down1").attr("filename","");
			    		document.getElementById("fileone").innerHTML="暂无模板";
			    	}
				}else{
			    	if(panduanfj(2)){
						nui.alert("暂无模板");
					}else{
			    		$("#down2").attr("fileid","");
			    		$("#down2").attr("filename","");
			    		document.getElementById("filetwo").innerHTML="暂无模板";
			    	}
				}
		    }
		    
		    function panduanfj(i){
			    if(i==1){
			    	if($("#down1").attr("fileid")==""){
			    		return true;
			    	}
			    }else{
			    	if($("#down2").attr("fileid")==""){
			    		return true;
			    	}
			    }
		    }
</script>

             <script>
             function uploadFile (e, id) {
                let  xhr = new XMLHttpRequest();
                let  fd = new FormData();
                fd.append('file', e.target.files[0]);
                xhr.open('POST', '/itmp/coframe/framework/dzqm/uploadbd.jsp', true);
                xhr.send(fd);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        let  data = JSON.parse(xhr.responseText);
                        if (data.code == '1') {
                            onUploadSuccess&&onUploadSuccess({
                                file: {
                                    name: data.list[0].name
                                },
                                sender:{
                                    id: id
                                }
                                serverData: JSON.stringify({
                                    ret: {
                                        filePath: data.list[0].uri
                                    }
                                })
                            });
                        } else {
                            nui.alert(data.message);
                        }
                    }
                };
            }
             </script>
             </body>
             
</html>