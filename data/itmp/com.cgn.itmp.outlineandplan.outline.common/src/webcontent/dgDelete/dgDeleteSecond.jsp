<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
<!-- 
  - Author(s): rocan
  - Date: 2019-03-16 16:02:58
  - Description:
-->
<head>
<title>删除数据第二个节点</title>
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
        	<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/> 
            <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>"/>  
            <input id="backid" class="nui-hidden"  value="manualActivity" name="backid"/>
            
            <div class="nui-hidden" name="delete_entity.entityType"   value="<b:write property='entity/entityType'/>" id="entityType"></div>
            
            <div class="nui-hidden" name="delete_entity.modelFlag"   value="<b:write property='entity/modelFlag'/>" id="modelFlag">
              
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
                        <input class="nui-textarea"  enabled="false" value="<b:write property='entity/deletereason'/>" style="width:100%;height:100px;" emptyText="请输入删除原因" name="delete_entity.deletereason" required="true" requiredErrorText="请输入删除原因"/>
                    </td>
                </tr>
                 <tr id="spyjId">
                    <td class="form_label"  >
                        审批意见:
                    </td>
                  <td colspan="3">
                        <input id="spyj"  required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width: 100%" name="spyj"/>
                    </td>
                      <td colspan="2" class="form_label"  align="left">
                        常用意见:<input class="nui-dictcombobox"  onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ"  />
                    </td>
                </tr>
                <tr id="ccryId">
                		<td class="form_label" >抄送人员</td>
				<td class="form_label" colspan="5">
					<input property="editor" id="ccry"  multi ="true" name="ccry"  class="nui-textboxlist" dataField="list"   
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  style="width:60%;" />
				</td>
                </tr>
            </table>
            
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button"  onclick="onSubmit()" id="btnSubmit" name="hiddenButton" >
                              同意
                            </a>
                            <a class="nui-button"  onclick="onBack()" id="btnBack" name="hiddenButton" >
                                驳回
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
    	var editable = nui.get('editable').getValue();//已办
    	if(editable == 'false'){
    		nui.get("btnSubmit").hide();
    		nui.get("btnBack").hide();
    		$('#spyjId').hide();
    		$('#ccryId').hide();
    		
    		
    	}
    	//设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
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
				var form = new nui.Form("#deleteForm");;
	    		var urlStr = "com.cgn.itmp.basecommon.Common.deleteRealData.biz.ext";
	    		form.validate();
	    		
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
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
	           		 				nui.get("#btnBack").setEnabled(false);
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
        //驳回
        function onBack(){
          		var form = new nui.Form("#deleteForm");;
    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
    		form.validate();
    		
    		
            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
   
            var data = form.getData(false,true);
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
                           	nui.alert("驳回成功", "提交提示", function(action){
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
									nui.get("#btnSubmit").setEnabled(false);
	           		 				nui.get("#btnBack").setEnabled(false);
							});	
						}
                        });
        }
    </script>
</body>
</html>