<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://eos.primeton.com/tags/bean" prefix="b" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>授权撤销/暂停</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
     <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>

</head>
<style>
.mini-grid-rowstable tr:first-child{
display:none; 
} 
 #datagrid1 .mini-checkcolumn{width:7.4%;}
 #datagrid2 .mini-grid-cell:nth-child(2){width:30px;}
#datagrid2 .mini-grid-cell:nth-child(3){width:91px;}
#datagrid2 .mini-grid-cell:nth-child(4){width:20%;}
#datagrid2 .mini-grid-cell:nth-child(5){width:15%;}
#datagrid2 .mini-grid-cell:nth-child(6){width:20%;}
#datagrid2 .mini-grid-cell:nth-child(7){width:25%;} 

</style>
<body>
<div class="nui-panel" title="人员列表"   style="width:100%;height:100%;" showToolbar="false" showFooter="false" >
		<div 
                        id="doData"
                        dataField="dataList"
                        class="nui-datagrid"
                        style="width:100%;height:200px;"
                        showPager="false"
                        url="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.queryProcessTrueData.biz.ext"
                        showPageInfo="false"
                        multiSelect="true"
                        allowSortColumn="false" allowAlternating="true">

                    <div property="columns">
	                     <div field="name" headerAlign="center" allowSort="true" required="true">
                            姓名<input property="editor" class="nui-textbox" style="width: 100%;" required="true" requiredErrorText="姓名不能为空"/>
                        </div>
                        <div field="sex" headerAlign="center" allowSort="true" renderer="xbRenderer">
                            性别<input property="editor" class="nui-dictcombobox"
								style="width: 100%;" dictTypeId="XB"/>
                        </div>
                        <div field="empnubmer" headerAlign="center" allowSort="true" >
                            员工号<input property="editor" class="nui-textbox" style="width: 100%;"/>
                        </div>
                        <div field="idnumber" headerAlign="center" allowSort="true"  >
                            身份证号<input property="editor" id=" idnumber" class="nui-dictcombobox" allowInput="true" url="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.getIdnumber.biz.ext"
                          dataField="jsonObject" textField="idnumber" valueField="idnumber" style="width: 100%;" required="true" requiredErrorText="身份证号不能为空"/>
                        </div>
                          <div field="xl" headerAlign="center" allowSort="true" renderer="xlRenderer" >
                           学历<input property="editor" class="nui-dictcombobox" style="width: 100%;" dictTypeId="Edu" required="true" requiredErrorText="学历不能为空"/>
                        </div>
                          <div field="zc" headerAlign="center" allowSort="true"  renderer="zcRenderer">
                            职称<input property="editor"  class="nui-dictcombobox" style="width: 100%;" dictTypeId="ZC"  required="true" requiredErrorText="职称不能为空"/>
                        </div>
                        <div field="zyly" headerAlign="center" allowSort="true" renderer="zylyRenderer">
                            专业领域<input property="editor" class="nui-dictcombobox"
								style="width: 100%;" dictTypeId="ZYLY" required="true" requiredErrorText="专业领域不能为空"/>
                        </div>
                        <div field="sqlx" headerAlign="center" allowSort="true" renderer="sqlxRenderer">
                            授权类型<input property="editor" class="nui-dictcombobox"
								style="width: 100%;" dictTypeId="SQTYPE"/>
                        </div>
                        <div field="sqfwhdj" headerAlign="center" allowSort="true" >
                            授权范围和等级（如有）<input property="editor" class="nui-textarea" style="width: 100%;" />
                        </div>
                        <div field="sqyxq" headerAlign="center" allowSort="true" dateFormat="yyyy-MM-dd HH:mm:ss"  renderer="yxqRenderer">
                            授权有效期		<input property="editor" class="nui-datepicker" style="width: 100%;" 
	          		 	format="yyyy-MM-dd HH:mm:ss" timeFormat="H:mm:ss" showTime="true" showOkButton="true" showClearButton="false" required="true" requiredErrorText="有效日期不能为空" onvaluechanged="doChangeState"/>
                        </div>
                    </div>
		</div>	
<div id="form1">
	<input class="nui-hidden" name="workItemId" id="workItemId" value="<b:write property='workItemId'/>"/>
	<input class="nui-hidden" name="processInstId" id="processInstId" value="<b:write property='processInstId'/>"/> 
	<input class="nui-hidden" name="data.processInstId"  value="<b:write property='processInstId'/>"/>
    <input name="data.doUUid" id="doUUid" class="nui-hidden"/>
     <input class="nui-hidden" id="editable" value="<b:write property='editable'/>"/>  
    
    <input name="data.type"   id="type" class="nui-hidden"/>
    <table style="width: 98%">
        <!--<tr>
            <td clospan='2'>
                 <div name="data.type"  id="type" class="nui-radiobuttonlist" repeatItems="2" repeatLayout="table" repeatDirection="Horizontal"
                    textField="text" valueField="id" value="cx"
                   >
                </div>
            </td>
        </tr>-->
        <tr>
            <td class="form_label" width="28%" align="right">
                <span id="typeText">撤销</span>授权原因简述:
            </td>
            <td width="72%">
                <textarea name="data.reason" id="reason"  class="nui-textarea" style="width:90%;height: 50px"  emptyText=""></textarea>
            </td>
        </tr>
        <tr>
            <td class="form_label" align="right">
                备注:
            </td>
            <td >
                <textarea name="data.remark" id="remark"  class="nui-textarea" style="width:90%;height: 50px" emptyText=""></textarea>
            </td>
        </tr>
        <tr id="shryTr" align="right">
            <td class="form_label">
                审核人员:
            </td>
            <td align="left" >
                <%--<input  property="editor" id="jhry"  name="jhry"  class="nui-textboxlist" dataField="list" required="true" style="width:250px"--%>
                       <%--url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />--%>
<!--                 <input class="nui-combobox" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson" id="jhry"  name="jhry"  textField="empname" style="250px;" -->
<!--                        url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/> -->
<input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
            </td>
        </tr>
        <tr id="ccryTr" align="right">
            <td class="form_label">
                抄送人员:
            </td>
            <td align="left">
                <input  property="editor" id="ccry"  name="ccry"  class="nui-textboxlist" dataField="list"   requiredErrorText="请输入审核人员"  style="width:250px"
                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />

            </td>
        </tr>
    </table>
    <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
        <table width="100%">
            <tr>
                <td style="text-align:center;" colspan="4">
                    <a class="nui-button" id="btnSubmit" onclick="onSubmit()">
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
 	var grid = nui.get("doData");
    grid.load({ processInstId:nui.get("processInstId").getValue()});
    
     	var editable = nui.get('editable').getValue();//已办
	if(editable == 'false'){
		nui.get("btnSubmit").hide();
		
		$('#shryTr').hide();
		$('#ccryTr').hide();
		nui.getbyName("data.reason").setReadOnly(true);
		nui.getbyName("data.remark").setReadOnly(true);
		
	}
    	
	//审核人员设置
//  	nui.get('jhry').setAjaxType("POST");
//  	nui.get('jhry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));    	
    $(function(){
    	setProData();
    	
    })
    
    
    function loadDataGrid(){
    }
    
    
    function setProData() {
    	var urlStr = "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.queryProcessData.biz.ext";
	    var json = "{processInstId:'" + nui.get("processInstId").getValue() + "'}";
    	$.ajax({
            url:urlStr,
            type:'POST',
            cache:false,
            data:json,
            contentType:'text/json',
            success:function(data){
            	nui.get("reason").setValue(data.result[0].reason);
            	nui.get("remark").setValue(data.result[0].remark);
            	nui.get("type").setValue(data.result[0].type);
            	$("#typeText").text( "cx" == data.result[0].type ? "撤销" : "暂停");
        	}
    	});
    }



		function onSubmit(){
		
				var form = new nui.Form("#form1");
	    		var urlStr = "com.cgn.itmp.basecommon.Common.updateEntity.biz.ext";
	    		form.validate();
	    		
	            if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
	            var data = form.getData(false,true);
	            data.delete_entity = data.data;
	            data.entityType = "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.ZZSQ_Pro";
					   
	            var json = nui.encode(data);
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

		function onCancel() {
        	if(self.parent.parent.$("li.index&.icon-task")) self.parent.parent.$("li.index&.icon-task").remove();      		
	    		self.parent.location.reload();
	    		
				return;
        }
   		
   		 //性别公共代码转换
	function xbRenderer(e){
		return nui.getDictText("XB",e.value);
	}
	//学历公共代码转换
	function xlRenderer(e){
		return nui.getDictText("Edu",e.value);
	}
	//职称公共代码转换
	function zcRenderer(e){
		return nui.getDictText("ZC",e.value);
	}
	//专业领域公共代码转换
	function zylyRenderer(e){
		return nui.getDictText("ZYLY",e.value);
	}
	//授权类型公共代码转换
	function sqlxRenderer(e){
		return nui.getDictText("SQTYPE",e.value);
	}
	//授权状态公共代码转换
	function sqztRenderer(e){
		if(e.row.zt=="YGQ"||e.row.zt=="YCX"||e.row.zt=="YZT"){
			e.rowStyle = 'color:red';
		}
		return nui.getDictText("SQZT",e.value);
	}

</script>
</body>
</html>