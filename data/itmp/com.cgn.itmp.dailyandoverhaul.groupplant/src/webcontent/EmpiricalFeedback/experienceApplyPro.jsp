<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    IUserObject cu = CommonUtil.getUserObject();
    String username = cu.getUserRealName();
%>
<html>
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

</head>
<body>
<div id="dataform1" style="padding-top:5px;">
    <!-- hidden域 -->
    <input class="nui-hidden" name="data.uuid"/>
    <input class="nui-hidden" id="fpath" name="data.filepath"/>
    <input class="nui-hidden" id="fname" name="data.filename"/>
    <input class="nui-hidden" id="fid" name="data.fileid"/>
    <input class="nui-hidden" id="finishFirstActivityId" name="data.finishFirstActivityId"/>
    <input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
    <input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/>
    <input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>
    <input id="backid" class="nui-hidden"  value="<b:write property='backid'/>" name="backid"/>
    <input id="modelFlag" class="nui-hidden"  value="<b:write property='modelFlag'/>" name="modelFlag"/>
    <input id="jhry" class="nui-hidden"  name="jhry"/>
    <fieldset id="baseInfo" style="width:95%;">
    <legend><span>申请信息</span></legend>
    <div class="fieldset-body" id="baseForm">
        <table style="width:100%;height:100%;" class="nui-form-table">
        <tr>
            <td class="form_label">
                类型:
            </td>
            <td colspan="1">
                <input id="type" name="data.type" class="nui-dictcombobox" dictTypeId="lx" readonly="readonly" value="<b:write property='data/type'/>" style="width: 98%"/>
            </td>
            <td class="form_label">
                主题:
            </td>
            <td colspan="1">
                <input id="zt" class="nui-textbox" name="data.zt" value="<b:write property='data/zt'/>" readonly="readonly" style="width: 98%"/>
            </td>
        </tr>
        <tr>
            <td class="form_label">
                领域:
            </td>
            <td colspan="1">
                <input id="ly" name="data.ly" class="nui-dictcombobox" dictTypeId="LY" value="<b:write property='data/ly'/>" readonly="readonly" style="width: 98%"/>
            </td>
            <td class="form_label">
                来源:
            </td>
            <td colspan="1">
                <input id="quarry" name="data.quarry" class="nui-dictcombobox" dictTypeId="LAIYUAN" value="<b:write property='data/quarry'/>" readonly="readonly" style="width: 98%"/>

            </td>
        </tr>
        <tr>
            <td class="form_label">
                反馈人:
            </td>
            <td colspan="1">
                <input id="fkr" class="nui-textbox" name="data.fkr" value="<b:write property='data/fkr'/>" style="width: 98%" readonly="readonly"/>
            </td>
            <td class="form_label">
                日期:
            </td>
            <td >
                <input id="rq" class="nui-datepicker" name="data.rq" value="<b:write property='data/rq'/>" style="width: 98%" readonly="readonly"/>
                <input id="bh" class="nui-hidden" name="data.bh" value="<b:write property='data/bh'/>" />
            </td>
           
        </tr>
        <tr id="fileNametr">
            <td class="form_label">
                附件:
            </td>
            <td colspan="3">
            	 <input type="file" id="fileName" name="file" multiple onchange="uploadFile(event,id)" /> 
                <input class="nui-textbox"  name="data.fj" visible="false" value="<b:write property='data/fj'/>" /></td>
        </tr>
        <tr id="fjtr">
        	<td class="form_label">
                附件:
            </td>
            <td colspan="3">
        	<input class="nui-hidden" id="fileid" name="data.fildid" value="<b:write property='data/fildid'/>"/>
             	<a id="fj" href=""></a>
             </td>
        </tr>
        <tr>
            <td class="form_label">
                申请人:
            </td>
            <td >
                <input id="adduser" readonly="readonly" class="nui-textbox" name="data.adduser" value="<b:write property='data/adduser'/>" style="width: 98%"/>

            </td>
            <td class="form_label">
                申请时间:
            </td>
            <td >
                <input id="addtime" readonly="readonly" class="nui-textbox"  name="data.addtime" value="<b:write property='data/addtime'/>" style="width: 98%"/>
            </td>
        </tr>
    </table>
    </div>
    </fieldset>
    <fieldset id="spInfo" style="width:95%;">
    <legend><span>审批信息</span></legend>
    <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
        <tr id="spyjId">
            <td class="form_label"  >
                审批意见
            </td>
            <td colspan="3">
                <input id="spyj"  required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width: 98%" name="spyj"/>
            </td>
            <td colspan="" class="form_label">
                常用意见
            </td>
            <td>
                <input class="nui-dictcombobox"  onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ" style="width:98%"  />
            </td>
        </tr>
        <tr id="shryTr">
            <td class="form_label" style="width: 12%">审核人员:</td>
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="shry"  value="<b:write property='data/shry'/>"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校审批人员"  valueField="empid"/>
                    </td>
<!--             <td colspan="5"> -->
<%--                 <input class="nui-combobox" id="shry" value="<b:write property='data/shry'/>" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"   name="data.shry"  textField="empname" style="width:98%" url="com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_PGZXGLY"  required="true" requiredErrorText="请选择校审批人员"  valueField="empid"/> --%>
<!--             </td> -->
        </tr>
        <tr id="hsryTr">
            <td class="form_label" style="width: 12%">会审人员:</td>
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="hsry" value="<b:write property='data/hsry'/>"    textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择会审人员"  valueField="empid"/>
                    </td>
<!--             <td colspan="5"> -->
<%--                 <input class="nui-combobox" id="hsry" value="<b:write property='data/hsry'/>" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"  name="data.hsry"  textField="empname" style="width:98%" url="com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_PGZXGLY"  required="true" requiredErrorText="请选择会审人员"  valueField="empid"/> --%>
<!--             </td> -->
        </tr>
        <tr id="pzryTr">
            <td class="form_label" style="width: 12%">批准人员:</td>
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="pzry" value="<b:write property='data/pzry'/>"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择批准人员"  valueField="empid"/>
                    </td>
<!--             <td colspan="5"> -->
<%--                 <input class="nui-combobox"  id="pzry" value="<b:write property='data/pzry'/>" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"  name="data.pzry"  textField="empname" style="width:98%" url="com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_PGZXGLY"  required="true" requiredErrorText="请选择批准人员"  valueField="empid"/> --%>
<!--             </td> -->
        </tr>
        <tr id="qsryTr">
            <td class="form_label" style="width: 12%">签收人员:</td>
 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson"  value="<b:write property='data/qsry'/>"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择批准人员"  valueField="empid"/>
                    </td>
<!--             <td colspan="5"> -->
<%--                 <input class="nui-combobox"  id="qsry" value="<b:write property='data/qsry'/>" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"  name="data.qsry"  textField="empname" style="width:98%" url="com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_PGZXGLY"  required="true" requiredErrorText="请选择批准人员"  valueField="empid"/> --%>
<!--             </td> -->
        </tr>
        <tr id="ccryTr" >
            <td  class="form_label">抄送人员
            </td>
            <td colspan="5">
                <input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list" style="width:98%"
                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
            </td>
        </tr>
    </table>
    </fieldset>
</div>
<div id="btn" class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
    <table width="100%">
        <tr>
            <td style="text-align: center;" colspan="4">
                <a class="nui-button" onclick="onSubmit()" id="btnSubmit"> 提交</a>
                <!--                     <span style="display: inline-block; width: 25px;"> </span> -->
                <a class="nui-button"  onclick="onBack()" id="btnBack" >
                    驳回
                </a>
                <!--                     <span style="display: inline-block; width: 25px;"> </span> -->
                <a class="nui-button" onclick="onDelete()" id="btnDelete">
                    作废
                </a>
                <!--                            <span style="display: inline-block; width: 25px;"> </span>    -->
                <a class="nui-button" onclick="onCancel()">关闭 </a>
            </td>
        </tr>
    </table>
</div>

<script type="text/javascript">
    nui.parse();
    var editable = nui.get('editable').getValue();//已办
    var backid = nui.get("backid").getValue();//上一节点id
    var modelFlag = nui.get("modelFlag").getValue();//上一节点id
    var type = nui.get("type").getValue();
    $('#shryTr').hide();
    $('#hsryTr').hide();
    $('#pzryTr').hide();
    $('#qsryTr').hide();
    $('#fjtr').hide();
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
    if(editable == 'false'){
        nui.get("btnSubmit").hide();
        nui.get("btnBack").hide();
        nui.get("btnDelete").hide();
        $('#spInfo').hide();
        showfile();
        //$('#ccryTr').hide();
    }else{
        if(modelFlag == '1' && backid == 'first'){//申请节点
        	showfile();
        	var username = '<%=username%>';
            nui.get('zt').setReadOnly(false);
            nui.get('ly').setReadOnly(false);
            nui.get('quarry').setReadOnly(false);
            nui.get('fkr').setReadOnly(false);
            nui.get('rq').setReadOnly(false);
            nui.get('fileName').setReadOnly(false);

            //待阅和已阅
            if( username != nui.get('adduser').getValue()){
            	showfile();
                nui.get("btnSubmit").hide();
                nui.get("btnBack").hide();
                nui.get("btnDelete").hide();
                $('#spInfo').hide();
                // $('#ccryTr').hide();
            }else{
                nui.get("btnBack").hide();
                $('#spyjId').hide();
                $('#shryTr').show();
                if( type == 'FLGR' || type == 'GOPR') {
                    $('#hsryTr').show();
                }
                $('#pzryTr').show();
                $('#qsryTr').show();
            };
        }else if(modelFlag == '2' && backid == 'manualActivity'){ //审核节点
            nui.get("btnDelete").hide();
            showfile();
            if( type == 'FLGR' || type == 'GOPR') { //如果是良好实践或者群厂良好实践的
                nui.get("jhry").setValue(nui.get("hsry").getValue());
            }else{
                nui.get("jhry").setValue(nui.get("pzry").getValue());
            }
        }else if(modelFlag == '3' && backid == 'manualActivity1'){//会审节点
        	showfile();
            nui.get("btnDelete").hide();
            nui.get("jhry").setValue(nui.get("pzry").getValue());
        }else if( modelFlag == '4' && ( backid == 'manualActivity1' || backid == 'manualActivity2' ) ){//批准节点
        	showfile();
            nui.get("jhry").setValue();
               nui.get("btnDelete").hide();
            nui.get("jhry").setValue(nui.get("qsry").getValue());
        }else if(modelFlag == '5' && backid == 'finish'){//最后一个节点
        	showfile();
            nui.get("btnDelete").hide();
        }
    }


	function showfile(){
		$('#fileNametr').hide();
		$('#fjtr').show();
 		var fileid = nui.get("fileid").getValue();
 		var json = {};
 		json.fieldName = 'fileId';
 		json.fieldValue = fileid;
 		json.entity = 'com.cgn.itmp.basecommon.Fileupload.Fileupload';
 		json = nui.encode(json);
 		nui.ajax({
            url: "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getInforMationByFieldName.biz.ext",
            type: 'POST',
            async: false,
            data:json,
            success: function (text) {
            	var file =  text.record;
            	var href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId="+fileid;
	   			$('#fj').html(file[0].fileRealName); 
	   			$('#fj').attr('href',href);
            }
        });	
	}
	
    //审核通过
    function onSubmit() {

        var data = {};
        data.processInstId = nui.get('processInstId').getValue();
        data.workItemId = nui.get('workItemId').getValue();
        if(modelFlag == '1' && backid == 'first') {//申请节点
            data.jhry = nui.get('shry').getValue();
        }else{
            data.jhry = nui.get('jhry').getValue();
            data.spyj = nui.get('spyj').getValue();
        }
        data.ccry = nui.get('ccry').getValue();
        data.backid = backid;
        if(backid == 'finish'){
            data.entityType="com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.EmpiricalFeedback";
        }else{
            if(data.jhry  == ''){
                nui.alert("请选择校核人员","提示");
                return;
            }
        }



        var json = nui.encode(data);

        nui.get("#btnSubmit").setEnabled(false);
        nui.get("#btnDelete").setEnabled(false);
        nui.get("#btnBack").setEnabled(false);

        $.ajax({
            url:"com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.processComplate.biz.ext",
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
								 grid.unmask();
								 nui.alert(jqXHR.responseText,'错误',function (action) {
									 grid.beginEditRow(editRow);
								});
							
							//                     alert(jqXHR.responseText);
							}
        });

    }

    //取消
    function onCancel() {
        if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();
        self.parent.location.reload();
        return;
    }

    //驳回
    function onBack(){
        var form = new nui.Form("#dataform1");
        var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";

        var data = form.getData(false,true);
        var json = nui.encode(data);

        nui.get("#btnSubmit").setEnabled(false);
        nui.get("#btnDelete").setEnabled(false);
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
            }
        });
    }

    //流程作废
    function onDelete(){
        nui.confirm("确定要作废流程？","提示",
            function(action){
                if(action=="ok"){
                    nui.get("#btnSubmit").setEnabled(false);
                    nui.get("#btnDelete").setEnabled(false);
                    nui.get("#btnBack").setEnabled(false);
                    var json = {};
                    json.processInstId = nui.getbyName('processInstId').getValue();
                    json.workItemId = nui.getbyName('workItemId').getValue();
                    json.entityType = "com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.EmpiricalFeedback";
                    var jsondata = nui.encode(json);
                    $.ajax({
                        url:"com.cgn.itmp.dailyandoverhaul.groupplant.EmpiricalFeedback.processCancel.biz.ext",
                        type:'POST',
                        data:jsondata,
                        cache:false,
                        contentType:'text/json',
                        success:function(data){
                            var message = "流程作废成功";
                            nui.alert(message,"成功",function(){
                                onCancel();
                            });
                        }
                    });
                }
            });
    }
    //设置常用意见
    function setcyyj(){
        nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
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