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
                       <input class="nui-hidden" id="con_jdid" name="criteria/_expr[2]/jd" /> 
		            <input class="nui-hidden" name="criteria/_expr[2]/_op" value="like"> 
		            <input class="nui-hidden" name="criteria/_expr[2]/_likeRule" value="end">
		            <input class="nui-hidden" id="processInstId" name="criteria/_expr[3]/processInstId"   value="<b:write property='processInstId'/>" /> 
		            <input class="nui-hidden" name="criteria/_expr[3]/_op" value="like"> 
		            <input class="nui-hidden" name="criteria/_expr[3]/_likeRule" value="end">
					</div>
					
				
			</div>
		</div>

            <script type="text/javascript"
                    src="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.js"></script>

    

    <div class="nui-panel" title="删除数据列表"   style="width:100%;height:60%;" showToolbar="false" showFooter="false" >
        <div id="datagrid1" dataField="itemmanages" class="nui-datagrid"
             style="width: 100%; height: 100%;"
             url="com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.queryList.biz.ext"
             pageSize="20" sizeList="[20,100,1000]" showPageInfo="true" multiSelect="true"
             onselectionchanged="selectionChanged" allowCellValid="true"
             allowSortColumn="true" sortMode="client" oncellclick="onClick"
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
				
				<div id="deleteForm" style="padding-top:5px;">

   			<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>  
        	<input class="nui-hidden" name="delete_entity.processInstId" value="<b:write property='processInstId'/>" id="processInstId"/> 
        	<input class="nui-hidden" id="processInstId" name="processInstId" value="<b:write property='processInstId'/>" /> 
        	<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>
            <input class="nui-hidden" name="workItemId" value="<b:write property='workItemId'/>"/>  
            
            <div class="nui-hidden" name="delete_entity.modelFlag"   value="<b:write property='entity/modelFlag'/>" id="modelFlag">   </div>
            
            
            <div class="nui-hidden" name="delete_entity.entityType"   value="<b:write property='entity/entityType'/>" id="entityType"></div>
            
            <div class="nui-hidden" name="delete_entity.uuid"   value="<b:write property='entity/id'/>" id="uuid"></div>
            
            
            
            <table style="width:100%;height:100%;table-layout:fixed;background-color:white" class="nui-form-table">
                <tr>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td class="form_label">
                        删除人:
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox" enabled="false" name="delete_entity.deleteuser" id="deleteuser"  value="<b:write property='entity/deleteuser'/>"/>
                    </td>
                       <td class="form_label">
                        删除日期:
                    </td>
                    <td colspan="2">
                        <input class="nui-textbox" style="width:50%;" enabled="false" name="delete_entity.deletedate"  id="deletedate" value="<b:write property='entity/deletedate'/>"/>
                    </td>
                    
                </tr>
          
              
                <tr>
           
                    <td class="form_label">
                        删除原因:
                    </td>
                    <td colspan="2">
                        <input class="nui-textarea"  id="deletereason" value="<b:write property='entity/deletereason'/>" style="width:100%;height:100px;" emptyText="请输入删除原因" name="delete_entity.deletereason" required="true" requiredErrorText="请输入删除原因"/>
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
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson"  id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
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
<!--                             <a class="nui-button" onclick="onSubmit()" id="btnSubmit" name="hiddenButton"> -->
<!--                               提交 -->
<!--                             </a> -->
<!--                             <a class="nui-button" onclick="onDelete()" id="btnDelete"> -->
<!--                                 	作废 -->
<!--                             </a>  -->
<!--                             <a class="nui-button"  onclick="onCancel()"> -->
<!--                                 关闭 -->
<!--                             </a> -->
                            <a  class="nui-button"  onclick="onSubmit()" id="btnSubmit">
									提交
								</a>
								<span style="display:inline-block;width:25px;"></span>
								<a  class="nui-button" onclick="onDelete()" id="btnDelete">
									作废
								</a>
								<span style="display:inline-block;width:25px;"></span>
								<a  class="nui-button" type="button" onclick="onCancel()">
									关闭
								</a>
							
                        </td>
                    </tr>
                </table>
            </div>
			</div>
		
	
	<style>
		html,body{height: 100%;}
		table td div{
			text-align:center;
		}
	</style>
	<script type="text/javascript">
		nui.parse();
		
		var processInstId =nui.get("processInstId").getValue();
        getdeleteentity();
		var grid = nui.get("datagrid1");
		var formData = new nui.Form("#form1").getData(false, false);
        grid.load(formData);
        var editable=nui.get('editable').value;
        if(editable=='false'){
			$('#btnSubmit').hide();
	        $('#btnDelete').hide();
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
						nui.get("uuid").setValue(data.uuid);
						if('<%=userName %>' != nui.get("deleteuser").getValue() ){
				         $('#btnSubmit').hide();
				         $('#btnDelete').hide();
				         $('#sprInfo').hide();
				         nui.get('deletereason').setEnabled(false);
				    }
					}
				});
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
	
	//作废
		function onDelete(){
       nui.confirm("确定要作废流程？","提示",
          function(action){
             if(action=="ok"){
             
            	nui.get("#btnSubmit").setEnabled(false);
               	nui.get("#btnDelete").setEnabled(false);
                var json = {};
                 json.processInstId = nui.getbyName('processInstId').getValue();
		         json.workItemId = nui.getbyName('workItemId').getValue();
		         json.entityType = "com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage";
		        
		      var jsondata = nui.encode(json);
		      $.ajax({
                 url:"com.cgn.itmp.basecommon.WorkFlowCommon.wsterminateProcess.biz.ext",
                 type:'POST',
                 data:jsondata,
                 cache:false,
                 contentType:'text/json',
                 success:function(data){
                 	updateprocessStatus();
                     var message = "流程作废成功";
	                 nui.alert(message,"成功",function(){
	                 onCancel();
                });
               }
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
	//预览页面附件显示
     function setConnect(e) {
     	var html = '<a style="color:#0069ac;text-decoration:underline;font-weight: bold;" onclick="tiaozhuan(\'' + e.record.relationid
            + '\')"  >' + e.record.detailed
            + '</a>';
        return html;
     }
     //关闭
     function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
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
     
     function onSubmit(){
				var form = new nui.Form("#deleteForm");//将普通form转为nui的for
				form.validate();
				if(form.isValid()==false){
					nui.showTips(
							{
								content: '必填项不可为空',
								state: 'warning',
								x: 'center', 
								y: 'center'
							}
						);
	 				return;
				}
				
				form=form.getData(false,true);
				
				//获取抄送人
				form.processInstId=processInstId;
				form.ccry=nui.get("ccry").value;
				form.jhry=nui.get("jhry").text;
				form.entityType="com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanagedelete";
				
				var json = nui.encode(form);

				
				
				$.ajax({
                    url:"com.cgn.itmp.basecommon.Common.updateEntity.biz.ext",
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
									nui.get("#btnSubmit").setEnabled(true);
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
	  //当选择列时
    function selectionChanged() {
        var rows = grid.getSelecteds();
        if (rows.length > 1 || grid.isEditing() || rows.length == 0) {
            nui.get("update").disable();
        } else {
            nui.get("update").enable();
        }
    }


		//修改流程状态
		function updateprocessStatus(){
			var datas=nui.get("datagrid1").data;
			var list=new Array();
			for(var i=0;i<datas.length;i++){
				list.push({uuid:datas[i].relationid,processStatus:"3"});
			}
            var json =nui.encode({data:list,entity:"com.cgn.itmp.dailyandoverhaul.overhaul.ItemManage.Itemmanage"});
            //修改流程状态
            $.ajax({
				url : "com.cgn.itmp.weldingmanagement.common.updateentitys.biz.ext",
				type : 'POST',
				data : json,
				cache : false,
				contentType : 'text/json',
				success : function(text) {
				}
			});
		}
		
	
</script>
</body>
</html>
