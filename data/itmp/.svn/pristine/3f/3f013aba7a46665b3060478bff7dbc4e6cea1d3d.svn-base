<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html>
<html>
<!-- 
  - Author(s): dafu
  - Date: 2017-04-28 08:54:28
  - Description:
-->
<head>
<title>转办</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
     <!--  机构选择 -->
 		 <script type="text/javascript"src="<%=request.getContextPath()%>/coframe/taskcenter/media/task.js"></script>
         <script type="text/javascript" src="<%= request.getContextPath() %>/coframe/tools/widget/personpicker.js"></script>
         <script type="text/javascript" src="<%= request.getContextPath() %>/coframe/tools/widget/jquery.ui.min.js"></script>
         <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/selectDept/jquery.cgn.ui.selectDept.js"></script>
         <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/tools/widget/selectDept/jquery.cgn.ui.selectDept.css"/>
   		<!--  人员选择 -->
   		<script type="text/javascript" src="<%= request.getContextPath() %>/coframe/tools/widget/selectPerson/jquery.cgn.ui.selectPerson.js"></script>
	    <script type="text/javascript" src="<%= request.getContextPath() %>/coframe/tools/widget/selectPerson/NameControl.js"></script>
	    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/coframe/tools/widget/selectPerson/jquery.cgn.ui.selectPerson.css"/>
	 <style type="text/css">
	    .form_label
		{
		 text-align:right;
		}
	    </style>
    
</head>
<body>
		
		<div id="dataform1" style="padding-top:5px;">
		<input class="nui-hidden" name="work/workItemID" />
		<input class="nui-hidden" name="work/personDesc"  id="personDesc"/>
		<input class="nui-hidden" name="work/userId"  value="<%=com.eos.data.datacontext.DataContextManager.current().getMUODataContext().get("userObject/userId") %>"/>
 		<input class="nui-hidden" name="work/userName"  value="<%=com.eos.data.datacontext.DataContextManager.current().getMUODataContext().get("userObject/userRealName") %>"/>
 		<table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label"  width="15%">
                        转办<font color="red">*</font>:
                    </td>
                    <td colspan="1" width="35%">
                        <!-- <input class="nui-personpicker" name="work/personID"  id="personID"
                         allowInput="false"  multi = "false" width="80%"  height="300px"/> -->
                        <input class="nui-npersonpicker form-control" name="work/personID" id="personID"
                         allowInput="false"  multi = "false" width="80%"  height="300px" rootUrl="<%=request.getContextPath()%>"/>
                    </td>
				</tr>
			
				<tr>
                    <td colspan="2"  style="text-align:center;" >
                         <a class="nui-button" iconCls="icon-ok" onclick="onSubmit()" id="btnSubmit">
                               提交
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button" iconCls="icon-cancel" onclick="onCancel()" id="btnCancel">
                                取消
                            </a>
                    </td>
				</tr>
		</table>

	<script type="text/javascript">
    	nui.parse();
    	
    	//跨页面传递的数据对象
    	 function setFormData(data){
             //跨页面传递的数据对象，克隆后才可以安全使用
             var infos = nui.clone(data);
             nui.getbyName("work/workItemID").setValue(infos.workitemid);
    	 }
    	 
    	//关闭
    	 function onCancel(){
    		 if (window.CloseOwnerWindow)
                 return window.CloseOwnerWindow("close");
             else window.close();    		 
    	 }
    	 
    	//提交
    	 function onSubmit(){
    		 var personID = nui.get("#personID").getValue();
    		 if(personID == null || personID.trim() == ""){
            	 nui.alert("请选择转办人员", "系统提示");
         		 return;
             }else{
            	 if(personID == "<%=com.eos.data.datacontext.DataContextManager.current().getMUODataContext().get("userObject/userId") %>"){
            		 nui.alert("不能转办给自己，请重新选择", "系统提示");
             		 return;
            	 }else{
            		 nui.get("#personDesc").setValue(nui.get("#personID").getText());
            		 var form = new nui.Form("#dataform1");
            		 var data = form.getData(false,true);
                     var json = nui.encode(data);
                     nui.get("#btnSubmit").setEnabled(false);
                     nui.get("#btnCancel").setEnabled(false);
            		 $.ajax({
                         url:"com.cgn.components.bps.api.webservice.WorkItemManager.reassignWorkItem.biz.ext",
                         type:'POST',
                         data:json,
                         cache:false,
                         contentType:'text/json',
                         success:function(text){
                             var returnJson = nui.decode(text);
                             if(returnJson.exception == null){
                            	 onCancel();
                             }else{
                                 nui.alert("转办失败", "系统提示", function(action){
                                	 onCancel();
                                     });
                                 }
                             }
                      });
            	 }
            	 
             }
    	 }
    </script>
</body>
</html>