<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ page import="com.eos.data.datacontext.UserObject" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    UserObject user = (UserObject) request.getSession().getAttribute("userObject");
    String userName = user.getUserRealName();
    String userRoleCodeList = user.getAttributes().get("roleCodeList").toString();
%>
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-15 15:50:17
- Description:
    --%>
<head>
    <title>授权管理</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    
   	


   
          <script src="<%=request.getContextPath()%>/common/common.js"
            type="text/javascript"></script>

    <script src="<%=request.getContextPath()%>/common/nui/nui.js"
            type="text/javascript"></script>
    	  <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
<%--           <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css"/> --%>
          
          <style type="text/css">
          *{
          	font-family: Microsoft YaHei !important;
          }
          .mini-button-text {
			    line-height: 16px;
			    padding: 2px 8px 3px 8px;
			    line-height: 17px\9;
			    vertical-align: top;
			    display: inline-block;
			    color: white; 
    			line-height: 16px;
		    }
		    body a.mini-button-disabled, body a:hover.mini-button-disabled {
			    border: 1px solid #ccc !important;
			    padding: 0px;
			    color: #777 !important;
			    background: #F8F9FA url(images/button/disabled.png) repeat-x 0 0px !important;
			    cursor: default;
			}
			body .mini-toolbar a.mini-button-disabled, body .mini-toolbar a:hover.mini-button-disabled, body .mini-pager a.mini-button-disabled, body .mini-pager a:hover.mini-button-disabled {
			    background: transparent   !important;
			    border: 0;
			    padding: 1px;
			}
			body .mini-button-plain {
			    background: transparent  !important;
			    border: 0;
			    padding: 1px;
			}
			.mini-button-disabled {
			    /* background-color: #ffffff!important; */
			    border: 1px solid #bfbfbf!important;
			    opacity: 0.3;
			}
          </style>
          
</head>
<body style="background-color: #f1f1f1; overflow: scroll;">
	<div class="bs-docs-section" style="height: 100%;">
		<div class="search-box">
			<div class="search-container folding-menu" id="queryForm">
				
							
					<div id="form1" class="nui-form display" align="center" >
						<!-- 数据实体的名称 -->
						<input class="nui-hidden" name="criteria/_entity"
							value="com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage_mf">
						<!-- 排序字段 -->
						<input class="nui-hidden" id="isdelete" name="criteria/_expr[0]/isdelete"
                                   value="0"/> <input class="nui-hidden"
                                                      name="criteria/_expr[0]/_op" value="like"> <input
                                class="nui-hidden" name="criteria/_expr[0]/_likeRule"
                                value="end"> 
                       
		             <input class="nui-hidden" id="processInstId" name="criteria/_expr[1]/processInstId"   value="<b:write property='processInstId'/>" /> 
		            <input class="nui-hidden" name="criteria/_expr[1]/_op" value="like"> 
		            <input class="nui-hidden" name="criteria/_expr[1]/_likeRule" value="end">
					</div>
					
				
			</div>
		</div>

            <script type="text/javascript"
                    src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>

    

    <div class="nui-panel" title="删除数据列表"   style="width:100%;height:58%;" showToolbar="false" showFooter="false" >
        <div id="datagrid1" dataField="itemmanages" class="nui-datagrid"
             style="width: 100%; height: 100%;"
             url="com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.queryList.biz.ext"
             pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"
             allowCellValid="true"
             allowSortColumn="true" sortMode="client" 
             oncellvalidation="onCellValidation" allowAlternating="true">

				<div property="columns">
					<div type="indexcolumn">序号</div>
					
					<div field="jzname" headerAlign="center"  align="center" allowSort="true" 
						>
						机组
					</div>
					<div field="overhaul" headerAlign="center" align="center"  allowSort="true" >
						大修轮次
					</div>
					<div field="itemname" headerAlign="center" align="center"  allowSort="true" >
						项目名称
					</div>
					<div field="detailed" headerAlign="center" align="center"  allowSort="true" renderer="setConnect">
						标准化项目管理清单
					</div>
					
					<div field="uuid" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
					<div field="isdelete" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
					<div field="jz" headerAlign="center" allowSort="true"
						width="180" visible="false"></div>
					</div>
			 <div id="deleteForm" style="padding-top:5px;background-color:white">

   			<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>  
        	<input class="nui-hidden" id="processInstId" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/> 
            <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>"/>  
            <input id="backid" class="nui-hidden"  value="manualActivity" name="backid"/>
            <input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
            
            <div class="nui-hidden" name="delete_entity.entityType"   value="<b:write property='entity/entityType'/>" id="entityType"></div>
            
            <div class="nui-hidden" name="delete_entity.modelFlag"   value="<b:write property='entity/modelFlag'/>" id="modelFlag">
            </div>
              <div class="nui-hidden" name="delete_entity.uuid"   value="<b:write property='entity/id'/>" id="uuid"></div>
            
            <table style="width:100%;height:90%;table-layout:fixed;background-color:white" class="nui-form-table">
                <tr>
                    <td class="form_label" style="width: 80px;text-align: left;">
                        删除人:
                    </td>
                    <td colspan="4">
                        <input class="nui-textbox" style="width: 100%" enabled="false" id="deleteuser" name="delete_entity.deleteuser"  value="<b:write property='entity/deleteuser'/>"/>
                    </td>
                </tr>
                <tr>
                   <td class="form_label" style="width: 80px;text-align: left;">
                        删除日期:
                    </td>
                    <td colspan="4">
                        <input class="nui-textbox" style="width: 100%" enabled="false" id="deletedate" name="delete_entity.deletedate"  value="<b:write property='entity/deletedate'/>"/>
                    </td>
                    
                </tr>
          
              
                <tr>
           
                    <td class="form_label" style="width: 80px;text-align: left;">
                        删除原因:
                    </td>
                    <td colspan="4">
                        <input class="nui-textarea"  enabled="false" value="<b:write property='entity/deletereason'/>" id="deletereason" style="width:100%;height:60px;" emptyText="请输入删除原因" name="delete_entity.deletereason" required="true" requiredErrorText="请输入删除原因"/>
                    </td>
                </tr>
                <tr >
	                <td class="form_label"  style="width: 80px;text-align: left;" >
	                        	审批意见:
	                </td>
                    <td colspan="4">
                        <input id="spyj"  required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width: 100%" name="spyj"/>
                    </td>
                </tr>
                <tr >
                    <td class="form_label"  style="width: 80px;text-align: left;">
                       	 常用意见:
                    </td>
                    <td colspan="4">
                    	<input class="nui-dictcombobox" style="width: 100%" onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ"  />
                    </td>
                </tr>
                <tr id="ccryId">
            		<td class="form_label"  style="width: 80px;text-align: left;">抄送人员</td>
					<td class="form_label" colspan="4">
						<input property="editor" id="ccry"  multi ="true" name="ccry"  class="nui-textboxlist" dataField="list"   
						url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  style="width:100%;" />
					</td>
                </tr>
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
            <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                         <a class="nui-button"  id="btnSubmit" onclick="onSubmit()">
                    同意
                            </a>
                            <span style="display:inline-block;width:25px;"></span>
                             <a class="nui-button"  id="btnBack" onclick="btnBack()">
                             退回
                            </a>
                            <span style="display:inline-block;width:25px;"></span>
                             <a class="nui-button"  id="btnSubmit" onclick="onCancel()">
                              关闭
                            </a>
                            
<%--                             <button style="width:100px" class="nui-button btn btn-default btn-xs btn-submit" --%>
<%-- 						type="button"id="btnSubmit" onclick="onSubmit()"> --%>
<!-- 						同意 -->
<%-- 					</button> --%>
<%-- 					<button style="width:100px" class="nui-button btn btn-default btn-xs btn-submit" --%>
<%-- 						type="button" onclick="btnBack()" id="btnBack"> --%>
<!-- 					退回 -->
<%-- 					</button> --%>
<%-- 					<button style="width:100px" class="nui-button btn btn-default btn-xs btn-submit" --%>
<%-- 						type="button" onclick="onCancel()"> --%>
<!-- 						关闭 -->
<%-- 					</button> --%>
                        </td>
                    </tr>
                </table>
            </div>
           
	
	<style>
		html,body{height: 100%;}
		table td div{
			text-align:center;
		}
	</style>
	<script type="text/javascript">
		nui.parse();
		var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
		var processInstId =nui.get("processInstId").getValue();
		var grid = nui.get("datagrid1");
		var formData = new nui.Form("#form1").getData(false, false);
        getdeleteentity();
        grid.load(formData);
        var editable=nui.get('editable').value;
        if(editable=='false'){
			$('#btnSubmit').hide();
	        $('#btnBack').hide();
	        $('#sprInfo').hide();
	        nui.get('deletereason').setEnabled(false);
		}
		function getdeleteentity(){
		var form = new nui.Form("#form1");//将普通form转为nui的form
				var json=nui.encode({processInstId:processInstId,entityType:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanagedelete"});
				$.ajax({
					url : "com.cgn.itmp.inspectcomponentmanage.insplanmg.insplanmg_modifbiz.getInsplanmg_mf.biz.ext",//该方法可复用
					type : 'POST',
					data : json,
					cache : false,
					contentType : 'text/json',
					success : function(text) {
					
						var data=text.data;
						nui.get("deleteuser").setValue(data.deleteuser);
						nui.get("deletedate").setValue(data.deletedate);
						nui.get("deletereason").setValue(data.deletereason);
						nui.get("uuid").value=data.uuid;
					}
				});
			}

	//设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
	function query(e){
		var html = '<a  onclick="load(\'' + e.record.uuid
            + '\')" >' +e.record.title
            + '</a>';
            return html;
	}
	function load(id){
		param.id=id;
		addTab("","审查表","/itmp/authorization/Common/queryList.jsp",param);
	}
	
	//驳回操作
		function btnBack(){
	     	
          	var form = new nui.Form("#deleteForm");
    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
    		form.validate();
    		
    		//是否为空
            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
   
            var data = form.getData(false,true);
            //获取流程id
            
            data.backid="manualActivity";
            var json = nui.encode(data);
            //隐藏
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
									nui.get("#btnBack").setEnabled(true);
							});
						 }
                        });
        }

	function addTab(position,type,url,data) {
         var tabs = parent.parent.nui.get("mainTabs");
         var tab = { title: type, url: url, showCloseButton: true};
         tab.onload = function (e) {
            var iframe = tabs.getTabIFrameEl(e.tab);
            iframe.contentWindow.setData(data);
          }
         tab = tabs.addTab(tab);            
	     tabs.activeTab(tab);
    }
    function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }
	//预览页面附件显示
     function setConnect(e) {
     	var html = '<a style="color:#0069ac;text-decoration:underline;font-weight: bold;"  onclick="tiaozhuan(\'' + e.record.relationid
            + '\')"  >' + e.record.detailed
            + '</a>';
        return html;
     }
     
     
      function onSubmit(){
    			var datas=nui.get("datagrid1").data;
				var form = new nui.Form("#deleteForm");
	    		form.validate();
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	            nui.get("#btnSubmit").setEnabled(false);
	            var urlStr = "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.enddelete.biz.ext";
	            data.datas=datas;
	    		
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
                       	   nui.alert("提交成功", "系统提示", function(action){
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
									nui.get("#btnSubmit").setEnabled(true);
							});
						 }
	          });
		}
     
     function tiaozhuan(id){
     	
		var param;
		var data=grid.getData();
		for(var i=0;data.length;i++){
			if(data[i].relationid==id){
				param=data[i];
				break;
			}
		}
		var uuid=param.relationid;
		var json=nui.encode({id:uuid});
		$.ajax({  
		    url:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.getItem.biz.ext",
		    type:'POST',
		    data:json,
		    cache: false,
            async: false,
		    contentType:'text/json',
		    success:function(text){
		    
		    var data=text.list;
		    for(var i=0;i<data.length;i++){
		    	if(data[i].elements){
         			data[i].elements=data[i].elements.replace(/\n/g, "</br>");
 				}
 				if(data[i].children){
			    	var children=data[i].children;
			    	for(var j=0;j<children.length;j++){
			    		var child=children[j];
			    		if(child.elements){
	         				child.elements=child.elements.replace(/\n/g, "</br>");
	     				}
	     				if(child.explain){
	         				child.explain=child.explain.replace(/\n/g, "</br>");
	     				}
			    	}
 				}
		    }
		    param.tree=data;
		    }
		});	
		nui.open({
            showMaxButton: true,
            url: "/itmp/overhaul/ItemManage/getItemmanage.jsp",
            title: "项目管理详情",
            width: '80%',
            height: '80%',
            onload: function () {
                var iframe = this.getIFrameEl();
                //直接从页面获取，不用去后台获取
                 iframe.contentWindow.setData(param);
            }
        });
     	
     }
     function addTab(position,type,url,data) {
         var tabs = parent.parent.nui.get("mainTabs");
         var tab = { title: type, url: url, showCloseButton: true};
         tab.onload = function (e) {
            var iframe = tabs.getTabIFrameEl(e.tab);
            iframe.contentWindow.setData(data);
          }
         tab = tabs.addTab(tab);            
	     tabs.activeTab(tab);
    }
	
			                
	
</script>
</body>
</html>
