<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>
           升版审批
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
        	<!-- 数据实体的名称 -->
                <input class="nui-hidden" name="criteria/_entity" value="com.cgn.itmp.outlineandplan.outline.common.curriculumVitae.Tdgglvitae">
         	<input class="nui-hidden" value="<b:write property='dggledition。flag'/>"  />
        	<input class="nui-hidden" value="<b:write property='data/id'/>" name="dggledition.id"/>
        	<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>"/> 
            <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>"/> 
             <input class="nui-hidden" id="modelFlag" value="<b:write property='data/modelFlag'/>" name="dggledition.modelFlag"/>
             <input class="nui-hidden"  value="<b:write property='data/jdid'/>" name="dggledition.jdid"/>
             <input class="nui-hidden"  value="<b:write property='data/jzid'/>" name="dggledition.jzid"/>
              <input class="nui-hidden"  value="<b:write property='processInstId'/>" name="dggledition.processInstId"/>
                <input class="nui-hidden"  value="<b:write property='data/modelName'/>" name="dggledition.modelName"/>
              
              
            
            <input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>  
                         <span id="titleId" name="dggledition.modelName"><h3><b:write property='data/modelName'/></h3></span>
            
              <!-- 人员及原因信息 -->
              <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
              	<tr>
                    <td class="form_label"  align="center">
                        升版人:
                    </td>
                    <td colspan="2">
                        <input id="username" readonly="readonly" class="nui-textbox" style="text-align: center;" value="<b:write property='data/creator'/>" name="dggledition.creator">
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
                        <input id="nownumber" readonly="readonly" class="nui-textbox" style="text-align: center;" value="<b:write property='data/nownumber'/>" name="dggledition.nownumber"/>
                    </td>  
                    <td class="form_label"  align="center">
                        升版为:
                    </td>
                     <td colspan="2">
                        <input id="number" readonly="readonly" class="nui-textbox" style="text-align: center;" value="<b:write property='data/number'/>" name="dggledition.number"/>
                    </td>  
               	</tr>
               	<tr>
  
                	<td class="form_label"  align="center">
                        升版时间:
                    </td>
                    <td colspan="5">
                        <input id="date" readonly="readonly" class="nui-textbox" style="text-align: center;width: 100%;" value="<b:write property='data/datetime'/>" name="dggledition.datetime"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label"  align="center">
                        升版原因:
                    </td>
                    <td colspan="5" >
                        <input class="nui-textarea" style="width:100%;height:100px;" readonly="readonly"  value="<b:write property='data/reason'/>"  name="dggledition.reason"/>
                    </td>
                </tr>
                <tr id="jhryId" style="display: none">
				<td class="form_label" style="width: 10%">委托人员</td>
				<td colspan="5">
					<input property="editor" id="jhry"  name="jhry"  class="nui-textboxlist" dataField="list"  style="width:250px" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcodename" textField="empcodename" searchField="keyword"  />
				</td>
			</tr>
			<tr id="ccryId">
					<td class="form_label" style="width: 10%">抄送人员</td>
				<td colspan="5">
					<input property="editor" id="ccry"  name="ccry"  class="nui-textboxlist" dataField="list"  style="width:250px" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
			</tr>
			
           <tr id="spyjId">
           
                    <td class="form_label">
                        审批意见:
                    </td>
                    <td colspan="4">
                        <input id="spyj" required="true" class="nui-textarea"  value="<b:write property='spyj'/>" style="width:100%;height:100px;" emptyText="请输入审批意见" name="spyj"  />
                    </td>
                    <td colspan="1" class="form_label"  align="center">
                        常用意见:<input class="nui-dictcombobox"  onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ"  />
                    </td>
                </tr>
            </table>    
        <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                
                               <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button"  onclick="onSubmit()" id="btnSubmit">
                                同意
                            </a>
                            <span style="display:inline-block;width:25px;">  </span>
                       <a class="nui-button"  onclick="onBack()" id="btnBack">
                                驳回
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
            var json;
            
	     var editable = nui.get('editable').getValue();//已办
	    	if(editable == 'false'){
	    		nui.get("btnSubmit").hide();
	    		nui.get("btnBack").hide();
	    		nui.get("btnDelegate").hide();
	    		
	    		$('#spyjId').hide();
	    		$('#jhryId').hide();
	    		$('#ccryId').hide();
	    	}
    	
            $(function() {
        		/*var number = nui.get("number").getValue();
        		if(number < 10){
        			nui.get("number").setValue("0"+number);
        		}else{
        		nui.get("number").setValue(number);
        		}*/
            });
            
            
            
              //委托
        function onDelegate(){
        	var wtr =  nui.get("jhry").getValue();
        	if('' == wtr){
        		nui.alert("请选择委托人！");
        		return;
        	}
      		var form = new nui.Form("#overhauldataform");
      		
    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.delegateWorkItem.biz.ext";
//     		form.validate();
    		
    		
//             if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
   
            var data = form.getData(false,true);
            var json = nui.encode(data);
            
            nui.get("btnSubmit").setEnabled(false);
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
                         nui.alert("委托成功");
                            onCancel();
                        }else{
                            nui.alert("委托失败", "系统提示", function(action){
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
        

		//提交审批
		function onSubmit(){
		
				var form = new nui.Form("#overhauldataform");;
	    		var urlStr = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.finishEdition.biz.ext";
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
                       	    nui.alert("审批完成");
                            onCancel();
                        }else{
                            nui.alert("审批失败", "系统提示", function(action){
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
        
        //设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
          //驳回
        function onBack(){
          		var form = new nui.Form("#overhauldataform");;
    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
    		form.validate();
    		
    		
            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
   
            var data = form.getData(false,true);
            var json = nui.encode(data);
            
            nui.get("btnSubmit").setEnabled(false);
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
        
           </script>
            </body>
        </html>
