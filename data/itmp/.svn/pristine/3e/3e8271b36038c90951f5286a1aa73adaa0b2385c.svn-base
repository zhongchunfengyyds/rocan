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
    <title>授权申请申请</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
      <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    
</head>
<style>
.mini-grid-table tr:first-child{display:none;}
 .mini-checkcolumn{width:30px;}
#datagrid1 .mini-grid-table,#datagrid2 .mini-grid-table{width:100%!important;}

</style>
<body>
<div  style="padding-top:5px;width:95%;">
    <fieldset id="baseInfo" style="width:95%;">
        <legend><span>用户信息</span></legend>
        <div class="fieldset-body" id="baseForm">
            <table class="nui-form-table" border="0" cellpadding="1" cellspacing="2">
                <tr>
                    <td class="form-label" style="width:10%;">姓名：</td>
                    <td >
                        <input class="nui-textbox" id="name" style="width:80%;" readOnly=readOnly value="<b:write property='baseInfo/name'/>"  name="tdxglzzsqglsqgl.name"/>
                    </td>
                    <td class="form-label" style="width:10%;">性别：</td>
                    <td >
                        <input class="nui-dictcombobox" id="sex" style="width:80%;" readOnly=readOnly value="<b:write property='baseInfo/sex'/>"  name="tdxglzzsqglsqgl.sex" dictTypeId="XB"/>
                    </td>
                </tr>
                <tr>
                    <td class="form-label" style="width:10%;">员工号：</td>
                    <td>
                         <input class="nui-textbox" name="tdxglzzsqglsqgl.empnubmer" readOnly=readOnly value="<b:write property='baseInfo/empnubmer'/>" /> 
                    </td>
                    <td class="form-label" style="width:10%;">身份证号：</td>
                    <td>
                        <input class="nui-textbox" name="tdxglzzsqglsqgl.idnumber" style="width:80%;" readOnly=readOnly value="<b:write property='baseInfo/idnumber'/>" />
                    </td>
                </tr>
                <tr>
                    <td class="form-label" style="width:10%;">学历：</td>
                    <td>
                        <input id="xl" class="nui-dictcombobox" name="tdxglzzsqglsqgl.xl" style="width:80%;" readOnly=readOnly value="<b:write property='baseInfo/xl'/>"  dictTypeId="Edu"/>
                    </td>
                    <td class="form-label" style="width:10%;">职称：</td>
                    <td>
                        <input id="zc" class="nui-dictcombobox" name="tdxglzzsqglsqgl.zc" style="width:80%;" readOnly=readOnly value="<b:write property='baseInfo/zc'/>"  dictTypeId="ZC"/>
                    </td>
                </tr>
                <tr>
                    <td class="form-label" style="width:10%;">专业领域：</td>
                    <td>
                        <input id="zyly" class="nui-dictcombobox" dictTypeId="ZYLY" style="width:80%;" readOnly=readOnly value="<b:write property='baseInfo/zyly'/>"  name="tdxglzzsqglsqgl.zyly"/>
                    </td>
                </tr>
            </table>
        </div>
    </fieldset>
    <fieldset id="workInfo" style="width:95%;">
        <legend><span>工作简历</span></legend>
        <div class="fieldset-body">
            <div id="datagrid1" class="nui-datagrid" style="width:100%;height:200px;" allowResize="true"
                 dataField="tdgglentrys"
                 url="com.cgn.itmp.basecommon.Common.queryDataByEntity.biz.ext" idField="id" showPager="false"
                 allowCellSelect="true" multiSelect="true"
            >
                <div property="columns">
                    <!--<div type="indexcolumn"></div>        -->
                    <div type="checkcolumn"></div>
                    <div field="startDate" width="25%" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                        开始时间 
                    </div>
                    <div field="endDate" width="25%" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">

                        结束时间 
                    </div>
                    <div field="gzdw" width="25%" headerAlign="center" allowSort="true">
                        工作单位
                    </div>
                    <div field="workContent" width="25%" headerAlign="center" allowSort="true">
                        主要工作内容
                    </div>
                </div>
            </div>

        </div>
    </fieldset>
    <fieldset id="roleInfo" style="width:95%;">
        <legend><span>授权信息</span></legend>
        <div class="fieldset-body">
            <div id="datagrid2" class="nui-datagrid" style="width:100%;height:200px;" allowResize="true"
                 dataField="tdgglentrys"
                 url="com.cgn.itmp.basecommon.Common.queryDataByEntity.biz.ext" idField="id" showPager="false"
                  allowCellSelect="true" multiSelect="true"
                 editNextOnEnterKey="true" editNextRowCell="true">
                <div property="columns">
                    <div type="checkcolumn"></div>
                    <div field="sqlx" headerAlign="center" allowSort="true" renderer="sqlxRenderer">
                        授权类型
                    </div>

                    <div field="sqfwhdj" width="25%" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                        授权范围或等级(如有)
                    </div>
                    <div field="sqyxq" width="10%" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd">
                        有效期 
                    </div>
                    <div field="zmwj" width="25%" headerAlign="center" allowSort="true" renderer="setFile">
                        证明文件（上传附件）
                    </div>
                    <div field="bz" width="25%" headerAlign="center" allowSort="true">
                        备注 
                    </div>
                </div>
            </div>
        </div>
    </fieldset>
    <div  style="padding-top:5px;" id="baseInfoForm">
      <!-- hidden域 -->
    <input class="nui-hidden" name="tdxglzzsqglsqgl.uuid"/>
      <input class="nui-hidden" name="jhry" id="jhry"/>
   	<input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>  
	<input class="nui-hidden" name="processInstId" value="<b:write property='processInstId'/>" id="processInstId"/> 
    <input class="nui-hidden" id="workItemId" name="workItemId" value="<b:write property='workItemId'/>"/>  
    <input id="backid" class="nui-hidden"  value="<b:write property='backid'/>" name="backid"/>
      <fieldset id="personInfo" style="width:95%;">
        <legend><span>审批信息</span></legend>
     <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                 <tr id="spyjId">
                    <td class="form_label"  style="width: 10%">
                        审批意见:
                    </td>
                  <td colspan="3">
                        <input id="spyj"  required="true" requiredErrorText="请输入审批意见" class="nui-textarea"  style="width:100%" name="spyj"/>
                    </td>
                      <td colspan="2" class="form_label" >
                        常用意见:<input class="nui-dictcombobox"  onvaluechanged ="setcyyj" name="cyyj" dictTypeId="CYYJ" style="width:80%"  />
                    </td>
                </tr>
    
           	<tr id="sqrTr">
                <td class="form_label"  style="width: 10%">
                    申请人:
                </td>
                <td colspan="1">
                    <input id="sqr" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqr" value="<b:write property='personInfo/sqr'/>" />
    	  			
                </td>
                <td class="form_label"  style="width: 10%">
                    申请时间:
                </td>
                 <td colspan="1">
                        <input id="sqsj" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqsj" value="<b:write property='personInfo/sqsj'/>" />
                    </td>
           	</tr>
               	
        <tr id="shryTr">
            <td class="form_label" style="width: 10%">审核人员:</td>
				 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="shry"   name="personInfo.shry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校审批人员"  valueField="empid"/>
                    </td>
<!-- 	    	 <td colspan="5"> -->
<%--                 <input class="nui-combobox"  id="shry" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"   name="personInfo.shry"  textField="empname" style="width:55%" url=""  required="true" requiredErrorText="请选择校审批人员"  valueField="empid" value="<b:write property='personInfo/shry'/>" /> --%>
<!--             </td> -->
        </tr>
             <tr id="hsryTr">
            <td class="form_label" style="width: 10%">会审人员:</td>
				 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="hsry"  name="personInfo.hsry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择会审人员"  valueField="empid"/>
                    </td>
<!-- 	    	 <td colspan="5"> -->
<%--                 <input class="nui-combobox" id="hsry" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"  name="personInfo.hsry"  textField="empname" style="width:55%" url=""  required="true" requiredErrorText="请选择会审人员"  valueField="empid" value="<b:write property='personInfo/hsry'/>" /> --%>
<!--             </td> -->
        </tr>
             <tr id="pzryTr">
            <td class="form_label" style="width: 10%">批准人员:</td>
				 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="pzry"  name="personInfo.pzry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择批准人员"  valueField="empid"/>
                    </td>
<!-- 	    	 <td colspan="5"> -->
<%--                 <input class="nui-combobox" id="pzry" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"  name="personInfo.pzry"  textField="empname" style="width:55%" url=""  required="true" requiredErrorText="请选择批准人员"  valueField="empid" value="<b:write property='personInfo/pzry'/>" /> --%>
<!--             </td> -->
        </tr>
        
        <tr id="ccryTr">
           <td class="form_label" style="width: 10%">抄送人员:</td>
				<td colspan="5">
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list" style="width:55%" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
        </tr>
    </table>
    </fieldset>
    </div>
    <div id="btn" class="nui-toolbar" style="padding: 0px;"
         borderStyle="border:0;">
        <table width="100%">
            <tr>
                <td style="text-align: center;" colspan="4">
                    <a class="nui-button" onclick="onSubmit()" id="btnSubmit">提交</a>
<!--                     <span style="display: inline-block; width: 25px;"> </span> -->
                      <a class="nui-button"  onclick="onBack()" id="btnBack" >
                                驳回
                         </a>
<!--                     <span style="display: inline-block; width: 25px;"> </span> -->
                         <a class="nui-button" onclick="onDelete()" id="btnDelete">
                                	作废
                            </a> 
<!--                            <span style="display: inline-block; width: 25px;"> </span>    -->
                    <a class="nui-button" onclick="onCancel()">关闭 </a>
                </td>
            </tr>
        </table>
    </div>
</div>
<script type="text/javascript">
    nui.parse();
    var editable = nui.get('editable').getValue();//已办
    var backid = nui.get("backid").getValue();//上一节点id
    $('#shryTr').hide();
	$('#hsryTr').hide();
	$('#pzryTr').hide();
	//审核人员设置
//  	nui.get('shry').setAjaxType("POST");
//  	nui.get('shry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
 	//审核人员设置
//  	nui.get('hsry').setAjaxType("POST");
//  	nui.get('hsry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
 	//审核人员设置
//  	nui.get('pzry').setAjaxType("POST");
//  	nui.get('pzry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
	var personInfo = {};
	var processInstId = nui.get("processInstId").getValue();
	if(editable == 'false'){
    		nui.get("btnSubmit").hide();
    		nui.get("btnBack").hide();
    		nui.get("btnDelete").hide();
    		$('#spyjId').hide();
    		$('#ccryTr').hide();
	}else{
			if(backid == 'first'){//第一个节点(发起节点)
				if('<%=username %>'  != nui.get('sqr').getValue()){//待阅和已阅
						nui.get("btnSubmit").hide();
		    		nui.get("btnBack").hide();
		    		nui.get("btnDelete").hide();
		    		$('#spyjId').hide();
		    		$('#ccryTr').hide();
				}else{
						$('#spyjId').hide();
				$('#sqrTr').hide();
				nui.get("btnBack").hide();
				$('#shryTr').show();
				$('#hsryTr').show();
				$('#pzryTr').show();
				}
			
			}else if(backid=="manualActivity"){//审核节点
				nui.get("btnDelete").hide();
				nui.get("jhry").setValue(nui.get("hsry").getValue());//设置校核人员
			}else if(backid=="manualActivity2"){//会审节点
				nui.get("btnDelete").hide();
				nui.get("jhry").setValue(nui.get("pzry").getValue());//设置校核人员
			}else if(backid == 'finish'){//最后一个节点（批准节点）
				nui.get("btnDelete").hide();
			}
	}
    	
    var grid1 = nui.get("datagrid1");
    var grid2 = nui.get("datagrid2");

	
	
      //加载工作经历
    grid1.load({
        "criteria/_entity": "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.SqglWorkInfo",
        "criteria/_expr[1]/processInstId": processInstId,
        "criteria/_expr[1]/_op": '='
    });
    //加载授权信息
    grid2.load({
        "criteria/_entity": "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt",
        "criteria/_expr[1]/processInstId": processInstId,
        "criteria/_expr[1]/_op": '=',
    });
        
	//审核通过
    function onSubmit() {

		 	var data = {};
            data.processInstId = nui.get('processInstId').getValue();
            data.workItemId = nui.get('workItemId').getValue();
         
   		    data.ccry = nui.get('ccry').getValue();
   		    data.spyj = nui.get('spyj').getValue();
   		   
   		    data.backid = backid;
   		    if(backid == 'finish'){
   		     data.entityType="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt";
   		    }else if(backid == "first"){
   		    		var personform = new nui.Form("#baseInfoForm");
					  personform.setChanged(false);
			        personform.validate();
			        if (personform.isValid() == false) {
			            nui.showTips({content: '表单校验不通过,请确认', state: 'warning', x: 'center', y: 'center'});
			            return;
			        }
			     nui.get("jhry").setValue(nui.get("shry").getValue());//设置校核人员
					//审批人员相关信息赋值
				personInfo.sqr=nui.get("sqr").getValue();
				personInfo.sqsj=nui.get("sqsj").getValue();
				personInfo.shry=nui.get("shry").getValue();
				personInfo.hsry=nui.get("hsry").getValue();
				personInfo.pzry=nui.get("pzry").getValue();
				personInfo.processInstId=processInstId;
				
   		     data.personInfo = personInfo;
   		     data.entityType = "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.PERSON_INFO";
   		    }
		       data.jhry = nui.get('jhry').getValue();
            var json = nui.encode(data);
            
         	 nui.get("#btnSubmit").setEnabled(false);
       		 nui.get("#btnDelete").setEnabled(false);
       		 nui.get("#btnBack").setEnabled(false);
            
    		$.ajax({
                url:"com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.sqsqComplate.biz.ext",
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
	           		 				nui.get("#btnBack").setEnabled(true);
	           		 				nui.get("#btnDelete").setEnabled(true);
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


    //授权类型公共代码转换
    function sqlxRenderer(e) {
        return nui.getDictText("SQTYPE", e.value);
    }


    //预览页面附件显示
    function setFile(e) {
        var fileRealName = e.record.zmwj;
        var filepath = e.record.filePath;
        var fileId = e.record.fildid;
        if (fileRealName == null || fileRealName == 'null') {
            return "";
        }
        var html = '<a href="com.cgn.itmp.basecommon.fileDownload.flow?fileId='+fileId+'" >' + fileRealName + '</a>';
        return html;
    }

        //驳回
        function onBack(){
            var form = new nui.Form("#baseInfoForm");
    		var urlStr = "com.cgn.itmp.basecommon.WorkFlowCommon.backActivity.biz.ext";
   
            var data = form.getData(false,true);
            var json = nui.encode(data);
            
          	 nui.get("#btnSubmit").setEnabled(false);
       		 nui.get("#btnDelete").setEnabled(false);
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
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(true);
	           		 				nui.get("#btnBack").setEnabled(true);
	           		 				nui.get("#btnDelete").setEnabled(true);
							});	
						}
                        });
       			 }
        
        	 //流程作废
	    	function onDelete(){
	    	 nui.confirm("确定要作废流程？","提示",
		        function(action){
		           if(action=="ok"){
		        	 nui.get("#btnSubmit").setEnabled(false);
	           		 nui.get("#btnDelete").setEnabled(false);
	           		  nui.get("#btnBack").setEnabled(false);
	           		  var json = {};
	           		   json.processInstId = nui.getbyName('processInstId').getValue();
					    json.workItemId = nui.getbyName('workItemId').getValue();
					    json.entityType = "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt";
						var jsondata = nui.encode(json);
						$.ajax({
					            url:"com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.sqsqZfProcess.biz.ext",
					            type:'POST',
					            data:jsondata,
					            cache:false,
					            contentType:'text/json',
					            success:function(data){
					                var message = "流程作废成功";
					            nui.alert(message,"成功",function(){
					            onCancel();
				            });
				           }
				        });
				        }
		        });
	    	}
	    	//设置常用意见
            function setcyyj(){
           		 nui.get('spyj').setValue(nui.getbyName('cyyj').getText());
            }
</script>
</body>
</html>