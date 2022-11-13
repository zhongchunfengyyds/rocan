<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%
IUserObject cu = CommonUtil.getUserObject();
String username = cu.getUserRealName();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
<!-- 
  - Author(s): rocan
  - Date: 2019-03-16 16:02:58
  - Description:
-->
<head>
<title>删除数据第一个节点</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />

    
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>

</head>
 <body>
 	<div class="nui-panel" title="删除数据列表"   style="width:100%;height:100%;" showToolbar="false" showFooter="false" >
		<div 
                        id="deleteData"
                        dataField="dataList"
                        class="nui-datagrid"
                        style="width:100%;height:200px;"
                        showPager="false"
                        url="com.cgn.itmp.outlineandplan.outline.common.DeleteServiceImpl.queryDeleteData.biz.ext"
                        showPageInfo="false"
                        multiSelect="true"
                        allowSortColumn="false" allowAlternating="true">

                    <div property="columns">
                    </div>
		</div>		
		</div>	
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <div id="deleteForm" style="padding-top:5px;">

   			<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>  
        	<input class="nui-hidden" name="delete_entity.processInstId" value="<b:write property='processInstId'/>" id="processInstId"/> 
        	<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" /> 
        	
            <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>"/>  
            
            <div class="nui-hidden" name="delete_entity.modelFlag"   value="<b:write property='entity/modelFlag'/>" id="modelFlag">   </div>
            
            
            <div class="nui-hidden" name="delete_entity.entityType"   value="<b:write property='entity/entityType'/>" id="entityType"></div>
            
            <div class="nui-hidden" name="delete_entity.id"   value="<b:write property='entity/id'/>" id="id"></div>
            
            
            
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
                        <input class="nui-textbox" enabled="false" name="delete_entity.deleteuser"  value="<b:write property='entity/deleteuser'/>"/>
                    </td>
                       <td class="form_label">
                        删除日期:
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox" style="width:50%;" enabled="false" name="delete_entity.deletedate"  value="<b:write property='entity/deletedate'/>"/>
                    </td>
                    
                </tr>
          
              
                <tr>
           
                    <td class="form_label">
                        删除原因:
                    </td>
                    <td colspan="4">
                        <input class="nui-textarea"  value="<b:write property='entity/deletereason'/>" style="width:100%;height:100px;" emptyText="请输入删除原因" name="delete_entity.deletereason" required="true" requiredErrorText="请输入删除原因"/>
                    </td>
                </tr>
<!--                     <tr> -->
           
<!--                     <td class="form_label"> -->
<!--                         审批意见: -->
<!--                     </td> -->
<!--                     <td colspan="4"> -->
<%--                         <input class="nui-textarea"   enabled="false" value="<b:write property='manualActivity1/opinions'/>" style="width:100%;height:100px;" /> --%>
<!--                     </td> -->
<!--                 </tr> -->
                
                  <tr id="sprInfo">
				<td class="form_label">校核人员</td>
				 <td colspan="1">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
<!-- 					 <td colspan="1"> -->
<!--                         <input class="nui-combobox" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<!--                     </td> -->
<!-- 				<td class="form_label" colspan="2"> -->
<!-- 					<input  required="true" property="editor"  multi ="false"  id="jhry"  name="jhry"  class="nui-textboxlist" dataField="list" required="true"  style="width:60%;" -->
<!-- 					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  /> -->
<!-- 				</td> -->
				<td class="form_label" >抄送人员</td>
				<td class="form_label" colspan="2">
					<input property="editor" id="ccry"  multi ="true" name="ccry"  class="nui-textboxlist" dataField="list"   
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  style="width:100%;" />
				</td>
	
			</tr>
            </table>
            
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" onclick="onSubmit()" id="btnSubmit" name="hiddenButton">
                              提交
                            </a>
                            <a class="nui-button" onclick="onDelete()" id="btnDelete">
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
    	if(editable == 'false'   || (editable == 'true' && "<%=username %>"  != nui.getbyName('delete_entity.deleteuser').getValue())){
    		nui.get("btnSubmit").hide();
    		nui.get("btnDelete").hide();
    		nui.getbyName("delete_entity.deletereason").setReadOnly(true);
    		
    		$('#sprInfo').hide();
    		
    	}
    	var grid = nui.get("deleteData");
    	     $(function() {
    	     	var dictTypeId = "FLOW_FIELD"+nui.get('modelFlag').getValue();
    	     	$.ajax({
                    url:"com.cgn.itmp.basecommon.DictionaryOperation.getDictInfoByType.biz.ext",
                    type:'POST',
                    cache:false,
                    data : "{dictTypeId:'"+dictTypeId+"',pdictTypeId:'FLOW_FIELD'}",
                    contentType:'text/json',
                    success:function(text){
                        var resultInfo = text.resultInfo;
                        var gridColumn = new Array;
                        
                        for(var i = 0;i<resultInfo.length;i++){
                        	var dictId = resultInfo[i].DICTID;
                        	var dictName =  resultInfo[i].DICTNAME;
                        	var fields = dictId.split("@");
                        	var type = fields[1];
                        	var column = {};
                        	column.field = fields[0];
                        	column.header  = dictName; 
                        	column.displayField  = fields[0];
                        	
                        	if(type == 'jd'){//基地转换
                        		column.renderer = jdRender;
                        	}else if(type == 'jz'){//机组转换
                        		column.renderer = jzRender;
                        	}else if(type == 'time'){//日期转换
                        		column.renderer=timeRender;
                        	}else if(type == 'dic'){//公共字典转换
                        		column.dicType = fields[2];
                        		column.renderer = "dicRender";	
                        	}
                        	gridColumn.push(column);
                        }
                        grid.setColumns(gridColumn);
                         var processInstId = $('#processInstId').val();
                         var entityType = $('#entityType').val();
                  		grid.load(
                  		{ processInstId:processInstId, entityType:entityType
                  		}
                  		);
                     }
	          });

            })
            //公共字典转换
            function dicRender(e){
             return nui.getDictText(e.column.dicType,e.value);
            }
            //日期转换
            function timeRender(e){
            	return nui.formatDate(e.cellHtml,'yyyy-MM-dd HH:mm:ss');
            }
            //机组转换
            function jzRender(e){
	             var val = "";
	 	    	 nui.ajax({
	                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJznameByid.biz.ext",
	                type: 'POST',
	                async: false,
	                data:"{jzid:'" + e.value + "'}",
	                success: function (text) {
	                	val =  text.jzname;
	                }
	            });						
				return val;
            }
               //基地转换
            function jdRender(e){
	             var val = "";
	 	    	 nui.ajax({
	                url: "com.cgn.itmp.basecommon.DictionaryOperation.getJdnameByid.biz.ext",
	                type: 'POST',
	                async: false,
	                data:"{jdid:'" + e.value + "'}",
	                success: function (text) {
	                	val =  text.jdname;
	                }
	            });						
				return val;
            }
    	
    			//提交申请
		function onSubmit(){
				var form = new nui.Form("#deleteForm");
	    		var urlStr = "com.cgn.itmp.basecommon.Common.updateEntity.biz.ext";
	    		form.validate();
	    		
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	            data.entityType = "com.cgn.itmp.outlineandplan.outline.common.delete_entity.DeleteEntity";
	            var json = nui.encode(data);
	            nui.get("#btnDelete").setEnabled(false);
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
                       	  	nui.alert("提交成功", "提交提示", function(action){
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
									nui.get("#btnSubmit").setEnabled(false);
	           		 				nui.get("#btnDelete").setEnabled(false);
							});}
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
					    json.entityType = nui.get('entityType').getValue();
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
							});}
				      });
				        }
		        });
	    	}

					
    </script>
</body>
</html>