<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

IUserObject cu = CommonUtil.getUserObject();
String username = cu.getUserRealName();
 %>
<html>
    <head>
        <title>
           升版申请
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/cuc/skin.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/default/css/fontstyle.css"/>
           <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themes/table.css" />
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="overhauldataform" style="padding-top:5px;">
        	 <input class="nui-hidden" value="<b:write property='data/id'/>" name="delete_entity.id"/>
        	  <input class="nui-hidden" id="modelFlag" value="<b:write property='data/modelFlag'/>" name="delete_entity.modelFlag"/>
        	<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>"/> 
        		<input class="nui-hidden" name="delete_entity.processInstId" value="<b:write property='processInstId'/>"/> 
            <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>"/>  
            <input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>  
            <input class="nui-hidden" id="worklist" value="<b:write property='rootProcInstID'/>"/>  
             <span id="titleId"><h3><b:write property='data/modelName'/></h3></span>
              <!-- 人员及原因信息 -->
              <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
              
              	<tr>
                    <td class="form_label"  align="center">
                        升版人:
                    </td>
                    <td colspan="2">
                        <input id="username" readonly="readonly" class="nui-textbox" style="text-align: center;" value="<b:write property='data/creator'/>" name="delete_entity.creator"/>
                    </td>
                    <td class="form_label"  align="center">
                    </td>
                     <td colspan="2">
                    </td>    
               	</tr>
               	<tr>
               		<td class="form_label"  align="center">
                       当前版次:
                    </td>
                     <td colspan="2">
                        <input id="nownumber" readonly="readonly" class="nui-textbox" style="text-align: center;" value="<b:write property='data/nownumber'/>" name="delete_entity.nownumber"/>
                    </td>  
                    <td class="form_label"  align="center">
                        升版为:
                    </td>
                     <td colspan="2">
                        <input id="number" required="true" class="nui-textbox" style="text-align: center;" value="<b:write property='data/number'/>" name="delete_entity.number"/>
                    </td>  
               	</tr>
               	<tr>
  
                	<td class="form_label"  align="center">
                        升版时间:
                    </td>
                    <td colspan="5">
                        <input id="date" readonly="readonly" class="nui-textbox" style="text-align: center;width: 100%;" value="<b:write property='data/datetime'/>" name="delete_entity.datetime"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label"  align="center">
                        升版原因:
                    </td>
                    <td colspan="5" >
                        <input class="nui-textarea"    style="width:100%;height:100px;text-align: left;" emptyText="请输入升版原因" required="true"  value="<b:write property='data/reason'/>" requiredErrorText="请输入升版原因"  name="delete_entity.reason"/>
                    </td>
                </tr>
         <tr id="jhryId">
				<td class="form_label" style="width: 10%">校核人员</td>
				 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
<!-- 				 <td colspan="5"> -->
<!--                         <input class="nui-combobox" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"id="jhry"  name="jhry"  textField="empname" style="width:50%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<!--                     </td> -->
<!-- 				<td colspan="5"> -->
<!-- 					<input  required="true" property="editor" id="jhry"  name="jhry"  class="nui-textboxlist" dataField="list" required="true"  requiredErrorText="请输入校核人员" style="width:250px"  -->
<!-- 					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  /> -->
<!-- 				</td> -->
			
			</tr>
			     <tr id="ccryId">
				<td class="form_label" style="width: 10%">抄送人员</td>
				<td colspan="5">
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list"  style="width:250px" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
	
			</tr>
              </table>
        </div>
        <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                
                               <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button"  onclick="onSubmit()" id="btnSubmit">
                                提交
                            </a>
                           <a class="nui-button"  onclick="onDelete()" id="btnDelete">
                                作废
                            </a>
                            <a class="nui-button"  onclick="onCancel()">
                                关闭
                            </a>
                        </td>
                    </tr>
                </table>
         </div>


         
        <script type="text/javascript">
            nui.parse();
          //审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
   
            var editable = nui.get('editable').getValue();//已办
	    	if(editable == 'false' || (editable == 'true' && "<%=username %>" != nui.get('username').getValue() )){
	    		nui.get("btnSubmit").hide();
	    		nui.get("btnDelete").hide();
	    		
	    		$('#jhryId').hide();
	    		$('#ccryId').hide();
	    		nui.getbyName("delete_entity.reason").setReadOnly(true);
	    	}
    	
            var json;
            $(function() {
// 				$("^[name^='dggledition']").css('text-align','center');
				/*var number = nui.get("number").getValue();
        		if(number < 10){
        			nui.get("number").setValue("0"+number);
        		}else{
        			nui.get("number").setValue(number);
        		}*/

            });
            
          
		//提交申请
		function onSubmit(){
				var form = new nui.Form("#overhauldataform");
	    		var urlStr = "com.cgn.itmp.basecommon.Common.updateEntity.biz.ext";
	    		form.validate();
	    		
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	            data.entityType = "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
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
									nui.get("#btnSubmit").setEnabled(false);
	           		 				nui.get("#btnDelete").setEnabled(false);
							});
						}
	          });
		}
        //取消
        function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }
        
        
        //流程作废
	    	function onDelete(){
	    	 nui.confirm("确定要作废流程？","提示",
		        function(action){
		           if(action=="ok"){
		        	 nui.get("#btnSubmit").setEnabled(false);
	           		 nui.get("#btnDelete").setEnabled(false);
	           		  var json = {};
	           		   json.processInstId = nui.getbyName('processInstId').getValue();
					    json.workItemId = nui.getbyName('workItemId').getValue();
					    json.entityType = "com.cgn.itmp.outlineandplan.outline.common.ascendingedition.EditionEntity";
						var jsondata = nui.encode(json);
						$.ajax({
					            url:"com.cgn.itmp.basecommon.WorkFlowCommon.wsterminateProcess.biz.ext",
					            type:'POST',
					            data:jsondata,
					            cache:false,
					            contentType:'text/json',
					            success:function(data){
					                var message = "流程作废成功";
					            nui.alert(message,"成功",function(){
					            onCancel();
				            });
				           },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(false);
	           		 				nui.get("#btnDelete").setEnabled(false);
							});
						}
				        });
				        }
		        });
	    	}
           </script>
            </body>
        </html>
