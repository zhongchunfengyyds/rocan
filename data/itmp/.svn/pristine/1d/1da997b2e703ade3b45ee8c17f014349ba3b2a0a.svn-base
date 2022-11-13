<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): xuzhikang
  - Date: 2019-03-13 15:40:28
  - Description:
-->
<head>
<title>授权恢复</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    
</head>
<body>
<div id="form1">
    <input name="data.doUUid" id="doUUid" class="nui-hidden"/>
    <input name="data.type"   id="type" value="hf" class="nui-hidden"/>
    <table style="width: 98%">
        
               <tr>
                
                    <td class="form_label">
                      要求恢复原因简述:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" emptyText="请输入原因简述" style="width:90%;height: 50px" name="data.reason"/>
                    </td>
               
        </tr>
        
            <tr>
                
                    <td  class="form_label">
                             备注:
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" emptyText="请输入备注" style="width:90%;height: 50px" name="data.remark"/>
                    </td>
               
        </tr>
        
        <tr id="personTr" align="right">
            <td  class="form_label">
                审核人员:
            </td>
            <td >
                <%--<input  property="editor" id="jhry"  name="data.jhry"  class="nui-textboxlist"  requiredErrorText="请输入审核人员" dataField="list" required="true" style="width:250px"--%>
                       <%--url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />--%>
<!--                     <input class="nui-combobox" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson" id="jhry"  name="data.jhry"  textField="empname" style="width:250px;" -->
<!--                            url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
            </td>
        </tr>
        <tr id="personTr" align="right">
            <td class="form_label">
               抄送人员:
            </td>
            <td >
                <input  property="editor" id="ccry"  name="data.ccry"  class="nui-textboxlist" dataField="list"  style="width:250px"
                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />

            </td>
        </tr>
    </table>
    <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
        <table width="100%">
            <tr>
                <td style="text-align:center;" colspan="4">
                    <a class="nui-button" id="btnSubmit" onclick="onOk('manualActivity')">
                        提交
                    </a>
                    <span style="display:inline-block;width:25px;">
                            </span>
                    <a class="nui-button"  onclick="onOk()" id="btnSave">
                   保存至草稿
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
     var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
    if(isadmin == 'true'){
        $("#personTr").hide();
        $("#btnSave").hide();
    }
    function setData(uuids) {
        nui.get("doUUid").setValue(uuids);
    }
    //审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));

    //发起流程
    function saveData(nextStep){
        var form = new nui.Form("#form1");
        form.setChanged(false);
        //保存
        var urlStr = "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.process2.biz.ext";
        if(nextStep != ""){
            form.validate();
            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
        }
          nui.get("btnSubmit").setEnabled(false);
      nui.get("btnSave").setEnabled(false);
        var data = form.getData(false,true);
        data.data['finishFirstActivityId'] = nextStep;
        data.data['processDefName'] = "com.cgn.itmp.dailyandoverhaul.authorization.aptitudeRecovery";
        data.data['processInstName'] = "授权恢复";
        data.data['processInstDesc'] = "授权恢复";
         data.data['isadmin'] = isadmin;
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
                      var message = "提交成功";
                	   if(nextStep == ''){
			            	message = "保存成功，请在我的草稿中尽快处理该流程，否则影响数据操作！";
			            }
						            
                    nui.alert(message, "提交提示", function(action){
                        if(action == "ok" || action == "close"){
                            CloseWindow("saveSuccess");
                        }
                    });
                }else{
                    nui.alert("提交失败", "系统提示", function(action){
                        if(action == "ok" || action == "close"){
                            //CloseWindow("saveFailed");
                        }
                    });
                }
            },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(true);
							});}
        });
    }

    function onOk(nextStep) {
        saveData(nextStep);
    }
    
            function onCancel() {
        	  CloseWindow("cancel");
        	
        }
    
    
        //关闭窗口
        function CloseWindow(action) {
            if (action == "close" && form.isChanged()) {
                if (confirm("数据被修改了，是否先保存至草稿箱？")) {
                    saveData("");
                }
            }
            if (window.CloseOwnerWindow)
            return window.CloseOwnerWindow(action);
            else window.close();
        }
        
    
</script>
</body>
</html>