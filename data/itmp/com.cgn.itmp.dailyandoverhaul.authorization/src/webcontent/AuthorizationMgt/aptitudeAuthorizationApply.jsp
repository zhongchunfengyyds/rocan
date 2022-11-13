<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String dateTime = df.format(new Date());
IUserObject cu = CommonUtil.getUserObject();
String username = cu.getUserRealName();
 %>
<html>
<head>
    <title>授权申请</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/js/jquery/jquery-1.8.1.min.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>


</head>
<style>
 
.mini-grid-table tr:first-child{display:none;}
 .mini-checkcolumn{width:30px;}
#datagrid1 .mini-grid-table,#datagrid2 .mini-grid-table{width:100%!important;}

</style>
<body>

<div id="dataform" style="padding-top:5px;">
    <!-- hidden域 -->
    <input class="nui-hidden" name="uuid"/>
    <fieldset id="baseInfo" style="width:95%;">
        <legend><span>用户信息</span></legend>
        <div class="fieldset-body" id="baseForm">
       	 <input name="jd" id="jdid" class="nui-hidden"/>
       	  <input name="uuid" id="uuid" class="nui-hidden"/>
            <table class="form-table" border="0" cellpadding="1" cellspacing="2">
                <tr>
                    <td class="form-label" style="width:10%;">姓名：</td>
                    <td >
                        <input class="nui-textbox"    required="true" onvalidation="hasIllegalChar(e,200,true,true)" requiredErrorText="请输入姓名"  style="width:80%;" id="name" name="name"/>
                    </td>
                    <td class="form-label"  style="width:10%;">性别：</td>
                    <td >
                        <input class="nui-dictcombobox" style="width:80%;" id="sex" name="sex" dictTypeId="XB"/>
                    </td>
                </tr>
                <tr>
                    <td class="form-label" style="width:10%;">员工号：</td>
                    <td>
                        <!-- <input class="nui-textbox" name="empnubmer"/> -->
                        <div id="empnubmer"   class="nui-autocomplete" style="width:80%;" name="empnubmer"
                             popupWidth="400" textField="EMPNUBMER" onvalidation="hasIllegalChar(e,200,false,true)" valueField="EMPNUBMER" dataField="list" 
                             url="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.getInfoByKeyWord.biz.ext"
                             onvaluechanged="onValueChanged" onbeforeload="onBeforeLoadempN">
                            <div property="columns">
                                <div header="姓名" field="NAME" width="30"></div>
                                <div header="员工号" field="EMPNUBMER"></div>
                                <div header="身份证号" field="IDNUMBER"></div>
                            </div>
                        </div>
                    </td>
                    <td class="form-label" style="width:10%;">身份证号：</td>
                    <td>
                        <!-- <input class="nui-textbox" name="idnumber"/> -->
                        <div id="idnumber" class="nui-autocomplete" style="width:80%;" name="idnumber"
                             popupWidth="400" textField="IDNUMBER" valueField="IDNUMBER" dataField="list" 
                             required="true" requiredErrorText="请输入身份证号"
                             url="com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.getInfoByKeyWord.biz.ext" onvalidation="onIDCardsValidation" 
                             onvaluechanged="onValueChanged" onbeforeload="onBeforeLoadeidN">
                            <div property="columns">
                                <div header="姓名" field="NAME" width="30"></div>
                                <div header="员工号" field="EMPNUBMER"></div>
                                <div header="身份证号" field="IDNUMBER"></div>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="form-label" style="width:10%;">学历：</td>
                    <td>
                        <input id="xl" class="nui-dictcombobox" style="width:80%;" name="xl" dictTypeId="Edu"/>
                    </td>
                    <td class="form-label" style="width:10%;">职称：</td>
                    <td>
                        <input id="zc" class="nui-dictcombobox" style="width:80%;" name="zc" dictTypeId="ZC"/>
                    </td>
                </tr>
                <tr>
                    <td class="form-label" style="width:10%;">专业领域：</td>
                    <td>
                        <input id="zyly" class="nui-dictcombobox" style="width:80%;" dictTypeId="ZYLY" name="zyly"/>
                    </td>
                </tr>
            </table>
        </div>
    </fieldset>
    <fieldset id="workInfo" style="width:95%;">
        <legend><span>工作简历</span></legend>
        <div class="fieldset-body">
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table style="width:100%;">
                    <tr>
                        <td style="width:100%;">
                            <a class="nui-button" onclick="addRow(1)">增加</a>
                            <a class="nui-button" onclick="removeRow(1)">删除</a>
                        </td>

                    </tr>
                </table>
            </div>
          <div class="nui-fit">  
            <div id="datagrid1" class="nui-datagrid" style="width:100%;height:200px;" allowResize="true"
                 dataField="tdgglentrys"
                 url="com.cgn.itmp.basecommon.Common.queryDataByEntity.biz.ext" idField="id" showPager="false"
                 allowCellEdit="true" allowCellSelect="true"  multiSelect="true"
                 oncellbeginedit="onCellBeginEditdate"
            >
                <div property="columns">
                    <!--<div type="indexcolumn"></div>        -->
                    <div type="checkcolumn"></div>
                    <div field="id" visible="false"></div>
                    <div field="startDate"  headerAlign="center"  dateFormat="yyyy-MM-dd" >
                        开始时间 <input property="editor" class="nui-datepicker"  ondrawdate="onDrawDateStart"/>
                    </div>
                    <div field="endDate" headerAlign="center"  dateFormat="yyyy-MM-dd">

                        结束时间 <input property="editor" class="nui-datepicker" ondrawdate="onDrawDateEnd"
                                    />
<!--                                  <input property="editor" class="mini-textbox" style="width:40%;"/> -->
                    </div>
                    <div field="gzdw"  headerAlign="center" >
                        工作单位 <input property="editor" class="nui-textarea" minWidth="200" onvalidation="hasIllegalChar(e,500,false,true)"
                                    minHeight="50"/>
                    </div>
                    <div field="workContent" headerAlign="center" >
                        主要工作内容 <input property="editor" class="nui-textarea"  minWidth="200" onvalidation="hasIllegalChar(e,4000,false,true)"
                                      minHeight="50"/>
                    </div>
                </div>
            </div>
          </div>  
	</div>
    </fieldset>
    <fieldset id="roleInfo" style="width:95%;">
        <legend><span>授权信息</span></legend>
        <div class="fieldset-body">
            <div class="nui-toolbar" style="border-bottom:0;padding:0px;">
                <table style="width:100%;">
                    <tr>
                        <td style="width:100%;">
                            <a class="nui-button" onclick="addRow(2)">增加</a>
                            <a class="nui-button" onclick="removeRow(2)">删除</a>
                        </td>

                    </tr>
                </table>
            </div>
            <div id="datagrid2" class="nui-datagrid" style="width:100%;height:200px;" allowResize="true"
                 dataField="tdgglentrys" multiSelect="true"
                 url="com.cgn.itmp.basecommon.Common.queryDataByEntity.biz.ext" idField="id" showPager="false"
                 allowCellEdit="true" allowCellSelect="true" 
                 editNextOnEnterKey="true" editNextRowCell="true" oncellbeginedit="onCellBeginEdit">
                <div property="columns">
                    <!--<div type="indexcolumn"></div>        -->
                      <div field="uuid" visible="false"></div>
                    <div type="checkcolumn"></div>

                    <div field="sqlx" headerAlign="center" renderer="sqlxRenderer">
                        授权类型<input property="editor" class="nui-dictcombobox"
                                   style="width: 100%;" dictTypeId="SQTYPE"/>
                    </div>

                    <div field="sqfwhdj" width="20%" headerAlign="center" dateFormat="yyyy-MM-dd">
                        授权范围或等级(如有) <input property="editor" onvalidation="hasIllegalChar(e,32,false,true)" class="nui-textarea" style="width:100%;" minWidth="200"
                                           minHeight="50"/>
                    </div>
                    <div field="sqyxq" width="15%" headerAlign="center"  dateFormat="yyyy-MM-dd">
                        有效期 <input property="editor" class="nui-datepicker" style="width:100%;"/>
                    </div>
                    <div field="zmwj" width="20%" headerAlign="center"  renderer="setFile">
                        证明文件（上传附件） <input type="file" id="zmwj" name="file" multiple onchange="uploadFile(event,id)" /> 
                    </div>
                    <div field="bz" width="25%" headerAlign="center" >
                        备注 <input property="editor"  onvalidation="hasIllegalChar(e,100,false,true)"  class="nui-textarea" style="width:200px;" minWidth="200"
                                  minHeight="50"/>
                    </div>
                    
                </div>
            </div>
        </div>
    </fieldset>
    </div>
    <div id="personform" style="padding-top:5px;">
    <fieldset id="personInfo" style="width:95%;">
       <legend><span>审批信息</span></legend>
    <table>
    
           	<tr id="sqrTr">
                <td class="form_label"  style="width: 10%">
                    申请人:
                </td>
                <td colspan="1">
                    <input id="sqr" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqr" value="<%=username %>"/>
    	  			
                </td>
                <td class="form_label"  style="width: 10%">
                    申请时间:
                </td>
                 <td colspan="1">
                        <input id="sqsj" readonly="readonly" class="nui-textbox" style="text-align: center;width: 90%;" name="personInfo.sqsj" value="<%=dateTime%>"/>
                    </td>
           	</tr>
               	
        <tr >
            <td class="form_label" style="width: 10%">审核人员:</td>
				 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="shry"   name="personInfo.shry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校审批人员"  valueField="empid"/>
                    </td>
<!-- 	    	 <td colspan="5"> -->
<!--                 <input class="nui-combobox" id="shry" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"   name="personInfo.shry"  textField="empname" style="width:50%" url=""  required="true" requiredErrorText="请选择校审批人员"  valueField="empid"/> -->
<!--             </td> -->
        </tr>
             <tr >
            <td class="form_label" style="width: 10%">会审人员:</td>
				 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="hsry"  name="personInfo.hsry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择会审人员"  valueField="empid"/>
                    </td>
<!-- 	    	 <td colspan="5"> -->
<!--                 <input class="nui-combobox" id="hsry" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"  name="personInfo.hsry"  textField="empname" style="width:50%" url=""  required="true" requiredErrorText="请选择会审人员"  valueField="empid"/> -->
<!--             </td> -->
        </tr>
             <tr >
            <td class="form_label" style="width: 10%">批准人员:</td>
				 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="pzry"  name="personInfo.pzry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择批准人员"  valueField="empid"/>
                    </td>
<!-- 	    	 <td colspan="5"> -->
<!--                 <input class="nui-combobox"  id="pzry" dataField="resultList.EmployeeSource"  onvaluechanged="onchangePerson"  name="personInfo.pzry"  textField="empname" style="width:50%" url=""  required="true" requiredErrorText="请选择批准人员"  valueField="empid"/> -->
<!--             </td> -->
        </tr>
        
             <tr >
           <td class="form_label" style="width: 10%">抄送人员:</td>
				<td colspan="3">
					<input property="editor" id="ccry"  multi ="false" name="ccry"  class="nui-textboxlist" dataField="list" style="width:50%" 
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"  valueField="empcode" textField="empcodename" searchField="keyword"  />
				</td>
        </tr>
        
    </table>
    </fieldset>
    <div id="btn" class="nui-toolbar" style="padding: 0px;">
        <table width="100%">
            <tr>
                <td style="text-align: center;" colspan="4">
                    <a class="nui-button" onclick="onOk('manualActivity')" id="btnSubmit"> 提交 </a>
                    <span style="display: inline-block; width: 25px;"> </span>
                    <a class="nui-button" onclick="onOk('')" id="btnSave"> 保存至草稿 </a>
                    <span style="display: inline-block; width: 25px;"> </span>
                    <a class="nui-button" onclick="onCancel()">关闭 </a>
                </td>
            </tr>
        </table>
    </div>
</div>
<!--<script type="text/javascript">
      $(document).ready(function(){
		$("#datagrid2 .mini-grid-table tr:nth-child(2) td:nth-child(2)").css("width","26px");
		$("#datagrid2 .mini-grid-table tr:nth-child(2) td:nth-child(3)").css("width","78px");
		$("#datagrid2 .mini-grid-table tr:nth-child(2) td:nth-child(4)").css("width","17.5%");
		$("#datagrid2 .mini-grid-table tr:nth-child(2) td:nth-child(5)").css("width","13.3%");
		$("#datagrid2 .mini-grid-table tr:nth-child(2) td:nth-child(6)").css("width","17.5%");
		$("#datagrid2 .mini-grid-table tr:nth-child(2) td:nth-child(7)").css("width","21%");

		});
   </script>-->
<script type="text/javascript">
    nui.parse();
    var file;
    var jdid = getCookie('jdid');
    nui.get('jdid').setValue(jdid);
    var grid1 = nui.get("datagrid1");
    var grid2 = nui.get("datagrid2");
    var nowStart = null;
    var nowEnd = null;
	$('#sqrTr').hide();
	var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
    if(isadmin == 'true'){
        $("#personInfo").hide();
        $("#btnSave").hide();
    }
    //审核人员设置
//  	nui.get('shry').setAjaxType("POST");
//  	nui.get('shry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
//  	nui.get('hsry').setAjaxType("POST");
//  	nui.get('hsry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
//  	nui.get('pzry').setAjaxType("POST");
//  	nui.get('pzry').load(encodeURI("com.cgn.components.coframe.RoleService.getEmpListByRoleInfo.biz.ext?roleCode=ITMP_SPRY_" +  getCookie('jdname')));
	
    function saveData(finishFirstActivityId) {
		
        var form = new nui.Form("#baseForm");
        form.setChanged(false);
        form.validate();
        if (form.isValid() == false) {
            nui.showTips({content: '表单校验不通过,请确认', state: 'warning', x: 'center', y: 'center'});
            return;
        }
        if(finishFirstActivityId != '' ){
			var personform = new nui.Form("#personform");
			  personform.setChanged(false);
	        personform.validate();
	        if (personform.isValid() == false) {
	            nui.showTips({content: '表单校验不通过,请确认', state: 'warning', x: 'center', y: 'center'});
	            return;
	        }
		}
		
		nui.get("#btnSubmit").setEnabled(false);
		nui.get("#btnSave").setEnabled(false);
        var data = form.getData(false, true);
		
        var workInfo = grid1.data;
        
       	//grid2.data[0].sqyxq=nui.formatDate(grid2.data[0].sqyxq,'yyyy-MM-dd');
        var sqInfo = grid2.data;
        //if(sqInfo != null && sqInfo.length > 0){
        	//for(var i=0;i<sqInfo.length;i++){
        	//	sqInfo[i].sqyxq = nui.formatDate(sqInfo[i].sqyxq,'yyyy-MM-dd');
        	//}
        //}
		//审批人员相关信息赋值
		var personInfo = {};
		personInfo.sqr=nui.get("sqr").getValue();
		personInfo.sqsj=nui.get("sqsj").getValue();
		personInfo.shry=nui.get("shry").getValue();
		personInfo.hsry=nui.get("hsry").getValue();
		personInfo.pzry=nui.get("pzry").getValue();
        var allInfo = {};
        allInfo.baseInfo = data;
        allInfo.workInfo = workInfo;
        allInfo.sqInfo = sqInfo;
        allInfo.personInfo = personInfo;
        allInfo.isadmin=isadmin;
        allInfo.finishFirstActivityId = finishFirstActivityId;
        allInfo.processInstName = "大修管理_授权管理_授权申请";
        allInfo.processInstDesc = "大修管理_授权管理_授权申请";
        allInfo.processDefName = "com.cgn.itmp.dailyandoverhaul.authorization.aptitudeAuthorizationApply";
        allInfo.jhry = nui.get('shry').getValue();
	   	allInfo.ccry = nui.get('ccry').getValue();
	       //保存
        var urlStr = "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.process.biz.ext";
              
         var jsondata = nui.encode(allInfo);
         $.ajax({
                url:urlStr,
                type:'POST',
                data:jsondata,
                cache:false,
                contentType:'text/json',
                success:function(text){
                	if("1" == text.result){
                		 var message = "提交成功";
                	   if(finishFirstActivityId == ''){
			            	message = "保存成功，请在我的草稿中尽快处理该流程，否则影响数据操作！";
			            }
						            
                    nui.alert(message, "提交提示", function(action){
                        if(action == "ok" || action == "close"){
                            CloseWindow("saveSuccess");
                        }
                    });
                	}else{
                        nui.alert("授权申请提交失败", "系统提示", function(action){
                            if(action == "ok" || action == "close"){
                                CloseWindow("saveFailed");
                            }
                            });
                        }
                    },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#btnSubmit").setEnabled(true);
									nui.get("#btnSave").setEnabled(true);
							});
						 }
            });
        

    }

    //确定保存或更新
    function onOk(finishFirstActivityId) {
        saveData(finishFirstActivityId);
    }

    //取消
    function onCancel() {
        CloseWindow();
    }

    function onCellBeginEditdate(e) {
        var grid = e.sender;
        var record = e.record;
        var field = e.field, value = e.value;
        if (field == "endDate") {
            nowStart = record.startDate;
        }else if(field=="startDate"){
        	nowStart = record.endDate;
        }
    }

//起始日期事件
    function onDrawDateStart(e) {
        var date = e.date;
        var d = nowStart;
         if(d == null){
        	 return;
        }
        if (date.getTime() > d.getTime()) {
            e.allowSelect = false;
        }
    }
    //终止日期事件
    function onDrawDateEnd(e) {
        var date = e.date;
        var d = nowStart;
        if(d == null){
        	 return;
        }
        if (date.getTime() < d.getTime()) {
            e.allowSelect = false;
        }
    }

   /*  function setTimeValue(e) {
        

    }
 */

    //关闭窗口
    function CloseWindow(action) {
        if (action == "close" && form.isChanged()) {
            if (confirm("数据被修改了，是否先保存至草稿箱？")) {
                saveData("");
            }
        }
        if (window.CloseOwnerWindow)
            return window.CloseOwnerWindow(action);
        else window.close();
    }

    //授权类型公共代码转换
    function sqlxRenderer(e) {
        return nui.getDictText("SQTYPE", e.value);
    }

    function onValueChanged(e) {
        var item = e.selected;

    
        nui.get("name").setValue(item.NAME);
        nui.get("sex").setValue(item.SEX);
        nui.get("empnubmer").setValue(item.EMPNUBMER);
        nui.get("empnubmer").setText(item.EMPNUBMER);
        nui.get("idnumber").setValue(item.IDNUMBER);
        nui.get("idnumber").setText(item.IDNUMBER);
        nui.get("xl").setValue(item.XL);
        nui.get("zc").setValue(item.ZC);
        nui.get("zyly").setValue(item.ZYLY);
        //加载工作经历
        grid1.load({
            "criteria/_entity": "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.SqglWorkInfo",
            "criteria/_expr[1]/idnumber": item.IDNUMBER,
            "criteria/_expr[1]/_op": '='
        });
        
        
        //加载授权信息
        grid2.load({
            "criteria/_entity": "com.cgn.itmp.dailyandoverhaul.authorization.AuthorizationMgt.AuthorizationMgt",
            "criteria/_expr[1]/idnumber": item.IDNUMBER,
            "criteria/_expr[1]/_op": '=',
            "criteria/_expr[2]/jd": jdid,
            "criteria/_expr[2]/_op": '=',
            "criteria/_expr[3]/isdelete": '0',
            "criteria/_expr[32]/_op": '='
        });
        
        grid2.columns[0].width = 0 ;
        // console.log(grid2);

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

    function onBeforeLoadempN(e) {
        e.data.type = 'empN';
        e.data.jd = jdid;
    }

    function onBeforeLoadeidN(e) {
        e.data.type = 'idN';
        e.data.jd = jdid;
    }

    function addRow(num) {
        var obj = (num == 1 ? grid1 : grid2);
        var newRow = {name: ""};
        obj.addRow(newRow, 0);

        obj.beginEditCell(newRow, 1);
    }

    function removeRow(num) {
        var obj = (num == 1 ? grid1 : grid2);
        var rows = obj.getSelecteds();
        if (rows.length > 0) {
            obj.removeRows(rows, true);
        }
    }

    function onfileselect(e) {
        startUpload(e);
    }

    function startUpload(e) {
        var fileupload = e.sender;
        fileupload.startUpload();
    }

    //上传成功时，回写附件的name、id
    function onUploadSuccess(e) {
 		fileName = e.file.name;
 		filePath = nui.decode(e.serverData).ret.filePath;
 		var json = {};
 		json.filename = fileName;
 		json.filepath = filePath;
 		json = nui.encode(json);
 		$.ajax({
            url: "com.cgn.itmp.basecommon.FileComp.addFile.biz.ext",
            type: 'POST',
            data: json,
            cache: false,
            contentType: 'text/json',
            success: function (text) {
            	file.record.fildid = text.fileid;
            }
        });
    }

    function onuploadcomplete(e) {
        
    }
    
    function onCellBeginEdit(e) {
        var field = e.field, value = e.value;
        if (field == "zmwj") {
           file = e;
        }
    }
      

</script>

   

             <script>
             function uploadFile (e, id) {
                let  xhr = new XMLHttpRequest();
                let  fd = new FormData();
                fd.append('file', e.target.files[0]);
                xhr.open('POST', '/itmp/coframe/framework/dzqm/uploadbd.jsp', true);
                xhr.send(fd);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        let  data = JSON.parse(xhr.responseText);
                        if (data.code == '1') {
                            onUploadSuccess&&onUploadSuccess({
                                file: {
                                    name: data.list[0].name
                                },
                                sender:{
                                    id: id
                                }
                                serverData: JSON.stringify({
                                    ret: {
                                        filePath: data.list[0].uri
                                    }
                                })
                            });
                        } else {
                            nui.alert(data.message);
                        }
                    }
                };
            }
             </script>
             </body>
             
</html>