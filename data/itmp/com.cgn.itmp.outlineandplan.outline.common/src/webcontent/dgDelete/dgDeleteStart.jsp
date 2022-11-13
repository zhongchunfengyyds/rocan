<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%


SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String dataTime = df.format(new Date());

IUserObject cu = CommonUtil.getUserObject();
String username = cu.getUserRealName();

 %>
 <html>
<!-- 
  - Author(s): rocan
  - Date: 2019-03-16 16:02:35
  - Description:
-->
<head>
<title>删除数据启动流程</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    
</head>
 <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <div id="deletefrom" style="padding-top:5px;">

			
			<div class="nui-hidden" name="processDefName" id="processDefName">
              
            </div>
            
             <div class="nui-hidden" name="delete_entity.entityType" id="entityType">
              
            </div>
            <div class="nui-hidden" name="delete_entity.modelFlag" id="modelFlag">
              
            </div>
            
            <div class="nui-hidden" name="processInstName" id="processInstName">
              
            </div>
            
             <div class="nui-hidden" name="dataArray" id="dataArray">
              
            </div>
            
            
               <div class="nui-hidden" name="processInstDesc" id="processInstDesc">
            </div>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td class="form_label">
                        删除人:
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox" enabled="false" name="delete_entity.deleteuser" value="<%=username %>"/>
                    </td>
                       <td class="form_label">
                        删除日期:
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox" enabled="false" name="delete_entity.deletedate" value="<%=dataTime %>"/>
                    </td>
                    
                </tr>
          
                
                <tr>
           
                    <td class="form_label">
                        删除原因:
                    </td>
                    <td colspan="4">
                        <input class="nui-textarea" style="width:100%;height:100px;" emptyText="请输入删除原因" name="delete_entity.deletereason" required="true" requiredErrorText="请输入删除原因"/>
                    </td>
                </tr>
                  <tr>
				<td class="form_label" style="width: 10%">校核人员</td>
				 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
<!-- 				 <td colspan="5"> -->
<!--                         <input class="nui-combobox" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"id="jhry"  name="jhry"  textField="empname" style="width:50%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<!--                     </td> -->
<!-- 				<td colspan="5"> -->
<!-- 					<input  required="true" property="editor"  multi ="false"  id="jhry"  name="jhry"  class="nui-textboxlist" dataField="list" required="true"  requiredErrorText="请输入校核人员" style="width:250px"  -->
<!-- 					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  /> -->
<!-- 				</td> -->
			
			</tr>
			     <tr>
				<td class="form_label" style="width: 10%">抄送人员</td>
				<td class="form_label" style="width: 40%">
					<input property="editor" id="ccry"  multi ="true" name="ccry"  class="nui-textboxlist" dataField="list"  style="width:250px" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
	
			</tr>
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button"  id="btnSubmit" onclick="onOk()">
                              提交
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
    				//审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   
    				//发起删除流程
    				  function onOk(){
			                var form = new nui.Form("#deletefrom");
			                form.setChanged(false);
			                //保存
			                var urlStr = "com.cgn.itmp.outlineandplan.outline.common.DeleteServiceImpl.deleteData.biz.ext";
			                form.validate();
			                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
						 nui.get("btnSubmit").setEnabled(false);
			                var data = form.getData(false,true);
			                
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
			                        	nui.alert("删除申请提交成功", "提交提示", function(action){
		                                if(action == "ok" || action == "close"){
		                                    CloseWindow("saveSuccess");
		                                }
		                                });
			                        }else{
			                            nui.alert("删除流程提交失败", "系统提示", function(action){
			                                if(action == "ok" || action == "close"){
			                                    //CloseWindow("saveFailed");
			                                }
			                                });
			                            }
			                        },error: function (jqXHR, textStatus, errorThrown) {
										 nui.alert(jqXHR.responseText,'错误',function (action) {
												nui.get("#btnSubmit").setEnabled(false);
										});	
									}
			                        });
                    }
                    
    	              //页面间传输json数据
                    function setFormData(data){
               			 //跨页面传递的数据对象，克隆后才可以安全使用
		                var infos = nui.clone(data);
		                var json = infos.record;
		                var dataArray = json.tdgglentry;
		                nui.getbyName('dataArray').setValue(dataArray);
		                 nui.getbyName('processInstName').setValue(json.processInstName);
		                 nui.getbyName('processInstDesc').setValue(json.processInstDesc);
		                 nui.getbyName('processDefName').setValue(json.processDefName);
		                 nui.get('entityType').setValue(json.entityType);
		                 nui.get('modelFlag').setValue(json.modelFlag);
                    }
                    
    	
    	  			 //关闭窗口
                    function CloseWindow(action) {
                        if (window.CloseOwnerWindow)
                        return window.CloseOwnerWindow(action);
                        else window.close();
                    }

       

                    //取消
                    function onCancel() {
                        CloseWindow("cancel");
                    }
                    
                    
    </script>
</body>
</html>