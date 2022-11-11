<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.*" %>
<%@ page import="commonj.sdo.DataObject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Sun
- Date: 2019-01-21 11:23:22
- Description:
    --%>
    <head>
        <title>
           计划完成审批
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script><script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <%
		DataObject[] resultList = (DataObject[])request.getAttribute("resultList");//数据列表
		DataObject data = null;
		if(resultList != null && resultList.length>0){
			data = resultList[0];
		}
		 String planFlag = request.getParameter("planFlag");
		 String modelFlag = request.getParameter("modelFlag");
		 String transferEntity = request.getParameter("transferEntity");//中间表
		 String title = "计划完成清单";
		 if(planFlag.equals("2")){
		 	title = "计划取消清单";
		 }
		 %>
    </head>
    
 <body style="background-color:#f1f1f1;width:98%;height:95%;margin:0 auto;overflow: hidden;">
 		<div id="recordFromList" class="nui-form" align="center" style="height:0%">
 
 			<input class="nui-hidden" name="planFlag"   value="<b:write property='planFlag'/>" id="planFlag">
 			<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>  
        	<input class="nui-hidden" id="processInstId" name="processInstId" value="<b:write property='processInstId'/>" /> 
        	 <input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>  
        	  <input class="nui-hidden" name="modelFlag"   value="<b:write property='modelFlag'/>" id="modelFlag">
           
            </div>
        <div class="nui-panel" title="<%=title %>"  style="width:100%;height:80%;"    >
            <div class="nui-fit">
                <div 
                        id="planCompleteGrid"
                        dataField="tdgglentrys"
                        class="nui-datagrid"
                        style="width:100%;height:100%;"
                          url="com.cgn.itmp.basecommon.Common.queryDataByEntity.biz.ext"
						allowCellSelect="true" 
						multiSelect="true" 
				        editNextOnEnterKey="true" 
				         editNextRowCell="true"                         
				        showPager="false"
                        showPageInfo="true"
                        multiSelect="true"
                        allowSortColumn="false">
                    <div property="columns">
                    </div>
                </div>
            </div>
    
	           
	      <table>
       		 <tr id="spyjId">
           
                    <td class="form_label">
                        审批意见:
                    </td>
                    <td colspan="4">
                        <input class="nui-textarea" required="true" id="spyj" value="<b:write property='spyj'/>" style="width:600px;height:100px;" emptyText="请输入审批意见" name="spyj"  />
                    </td>
                    <td colspan="1" class="form_label"  align="center">
                        常用意见:<input class="nui-dictcombobox"  onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ"  />
                    </td>
			</table>
        </div>
    </body>

      <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                       <a class="nui-button" onclick="onSubmit()" id="btnSubmit" >
                              同意
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button" onclick="onBack()" id="btnBack" >
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
            
        <script type="text/javascript">
            nui.parse();
	
			var lc ='<%=data.get("lc")%>';
			 var planFlag = nui.get('planFlag').getValue();
			var modelFlag ='<%=modelFlag%>';
			var typeFlag = 1;//日常与大修标识，1为大修，2为大纲日常3、专用检查计划日常
			if(modelFlag == '2' || modelFlag == '4' || modelFlag == '6' || modelFlag == '8'){
				typeFlag =2;
			}else if( modelFlag == '10' || modelFlag == '12'
			|| modelFlag == '19' || modelFlag == '20'  || modelFlag == '21' || modelFlag == '22' || modelFlag == '23' || modelFlag == '24' || modelFlag == '25' || modelFlag == '26'){
				typeFlag =3;
			}
			var editable = nui.get('editable').getValue();//已办
	    	if(editable == 'false'){
		    	nui.get("btnSubmit").hide();
	    		nui.get("btnBack").hide();
	    		$('#spyjId').hide();
	    	}
			
			  var grid = nui.get("planCompleteGrid");
			  
			  $(function(){
            	var dictTypeId = "FLOW_FIELD"+"<%=modelFlag%>";
    	     	$.ajax({
                    url:"com.cgn.itmp.basecommon.DictionaryOperation.getDictInfoByType.biz.ext",
                    type:'POST',
                    cache:false,
                    data : "{dictTypeId:'"+dictTypeId+"',pdictTypeId:'FLOW_FIELD'}",
                    contentType:'text/json',
                    success:function(text){
                        var resultInfo = text.resultInfo;
                        var gridColumn = new Array();
                        var indexColumn = {};
                        indexColumn.type = "indexcolumn";
                        gridColumn.push(indexColumn);
                        
                        for(var i = 0;i<resultInfo.length;i++){
                        	var dictId = resultInfo[i].DICTID;
                        	var dictName =  resultInfo[i].DICTNAME;
                        	
                        	if(dictName.indexOf('C') != -1){
                        	 	column.visible  = false; 
                        	 	continue;
                        	}else if(!isNaN(dictName)){
                        		column.visible  = false; 
                        	 	continue;
                        	}
                        	var fields = dictId.split("@");
                        	var type = fields[1];
                        	var column = {};
                        	column.field = fields[0];
                        	column.header  = dictName; 
                        	column.displayField  = fields[0];
                        	
                        	if(type == 'jd'){//基地转换
							column.visible  = false; 
                        	}else if(type == 'jz'){//机组转换
								column.visible  = false; 
                        	}else if(type == 'time'){//日期转换
                        		column.renderer=timeRender;
                        	}else if(type == 'dic'){//公共字典转换
                        		column.dicType = fields[2];
                        		column.renderer = "dicRender";	
                        	}
                        	gridColumn.push(column);
                        }
                        
                           var dxlcColumn = {};
                    	dxlcColumn.header  = lc; 
                    	if(typeFlag == 1){
							dxlcColumn.field = (lc+'').toLowerCase();
							dxlcColumn.displayField  = (lc+'').toLowerCase();
						}else if(typeFlag == 2){
							dxlcColumn.field = "n"+lc;
			            	dxlcColumn.displayField  = "n"+lc;
						}else{
							dxlcColumn.field = "c"+lc;
			            	dxlcColumn.displayField  = "c"+lc;
						}
							gridColumn.push(dxlcColumn);
						
						var dxFlag = "false";
						if(planFlag == '1'){//计划完成
						}else if(planFlag == '2'){//计划取消
							if (isNaN(lc)){
								lc = lc.substr(1,lc.length);
								dxFlag = "true";
							}
							for(var i=parseInt(lc)+1;i<=parseInt(lc)+9;i++){
								dxlcColumn  = {};
								
								if (dxFlag == "true"){//大修
								dxlcColumn.header  =  "C"+i;  
								}else{
								dxlcColumn.header  = i;
								}
								
								if(typeFlag == 1){
									column.dxlcColumn  = "C"+i; 
								}
								if(typeFlag == 2){
								dxlcColumn.field = "n"+i;
				            	dxlcColumn.displayField  = "n"+i;
								}else{
								dxlcColumn.field = "c"+i;
				            	dxlcColumn.displayField  = "c"+i;
								}
								
// 								dxlcColumn.field = "c"+i;
// 				            	dxlcColumn.header  = "C"+i; 
// 				            	dxlcColumn.displayField  = "c"+i;
				            	gridColumn.push(dxlcColumn);
							};
						}
						
						//uuid字段
 						    //id字段
                      //id字段
                        var editidcolumn = {};
                        editidcolumn.field = "editid";
                        editidcolumn.visible  = false; 
                         editidcolumn.displayField  = "editid";
 						gridColumn.push(editidcolumn);
 						//uuid字段
 						var uuidcolumn = {};
                        uuidcolumn.field = "uuid";
                        uuidcolumn.visible  = false; 
                        uuidcolumn.displayField  = "uuid";
 						gridColumn.push(uuidcolumn);
 						
				
                        	 //修改原因
		                 var xgyycolumn = {};
		                 xgyycolumn.field = "xgyy";
		                 xgyycolumn.header  = "修改原因"; 
		                 xgyycolumn.name = "xgyy";
                        gridColumn.add(xgyycolumn);
                        
                        grid.setColumns(gridColumn);
                    
					grid.load({"criteria/_entity": "<%=transferEntity%>","criteria/_expr[1]/processInstId" : '<%=data.get("processInstId")%>',"criteria/_expr[1]/_op" : '='},function(){
							if(planFlag == '1'){
							grid.mergeColumns(["xgyy"]);//合并修改原因
						}
					});
			},error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							});
						 }
	          });
            });
            
              //日期转换
            function timeRender(e){
            	return nui.formatDate(e.cellHtml,'yyyy-MM-dd HH:mm:ss');
            }  
                  // 公共字典转换
            function dicRender(e){
             return nui.getDictText(e.column.dicType,e.value);
            }
		//提交申请
		function onSubmit(){
				var datas = grid.data;
	    		for(var k=0;k<datas.length;k++){
					datas[k].datetime = nui.formatDate (datas[k].datetime , "yyyy-MM-dd HH:mm:ss" );
				}
		        var data = {};
	            data.processInstId = nui.get('processInstId').getValue();
	            data.workItemId = nui.get('workItemId').getValue();
	            data.modelFlag = nui.get('modelFlag').getValue();
                data.planFlag = planFlag;//nui.get('planFlag').getValue();
	            data.spyj = nui.get('spyj').getValue();
	            data.entityType = "<%=transferEntity%>";
	            data.dataList = datas;
	            data.lc="<%=data.get("lc")%>";
	            var json = nui.encode(data);
	             
	             nui.get("btnSubmit").setEnabled(false);
           		 nui.get("btnBack").setEnabled(false);
	    		$.ajax({
                    url:"com.cgn.itmp.basecommon.Common.planUpdate.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                       	    nui.alert("审批成功","系统提示",function(){
                       	    	onCancel();
                       	    });
                        }else{
                            nui.alert("提交失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
                            }
                        },
		                         error: function (jqXHR, textStatus, errorThrown) {
				                     nui.alert(jqXHR.responseText,'错误',function (action) {
				                     	 	nui.get("#btnSubmit").setEnabled(true);
			            					nui.get("#btnBack").setEnabled(true);
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
    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
    		
    		var data = {};
            data.processInstId = nui.get('processInstId').getValue();
            data.workItemId = nui.get('workItemId').getValue();
            data.workItemId = nui.get('workItemId').getValue();
            data.spyj = nui.get('spyj').getValue();
            data.backid = "manualActivity";
            
            var json = nui.encode(data);
            
            nui.get("btnSubmit").setEnabled(false);
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
                         nui.alert("驳回成功");
                            onCancel();
                        }else{
                            nui.alert("驳回失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    onCancel();
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							  nui.get("btnSubmit").setEnabled(true);
            nui.get("btnBack").setEnabled(true);
							});
						 }
                        });
        }
        
        //设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
        
        </script>
        
        <style>
        .dxlb{position:relative;}
        .xuze{position:absolute;}
        </style>

</html>
