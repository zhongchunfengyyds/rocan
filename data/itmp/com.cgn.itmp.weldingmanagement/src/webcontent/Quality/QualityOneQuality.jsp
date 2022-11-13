<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-16 16:22:13
- Description:
    --%>
    <head>
        <title>
            修改质量计划
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
         <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
        <style type="text/css">
        	#wq span input{color:blue;text-decoration:underline;cursor: pointer;}
        </style>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <input name="uid" class="nui-hidden"/>
        <input name="qnum" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <div class="nui-hidden" name="quality.uuid">
            </div>
            <div class="nui-hidden" name="quality.isdel" value="0">
            </div>
            <input class="nui-hidden" name="quality.uuid"/>
              <input class="nui-hidden" id="fpath" name="quality.filepath"/>
            <input class="nui-hidden" id="fname" name="quality.filename"/>
			<input class="nui-hidden" id="fid" name="quality.fj"/> 
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">                
                <tr>
                	<td class="form_label">
                   WQP编号
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width:100%" name="quality.qualitynumber"/>
                    </td>
                    <td class="form_label">
                   	描述
                    </td>
                      <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width:100%" name="quality.describe"/>
                    </td>
                    
                    <td class="form_label">
                  	功能位置
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width:100%" name="quality.position"/>
                    </td>
                   </tr>
                   <tr>
                <td class="form_label">
                        制造级别
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width:100%" name="quality.level"/>
                    </td>
                    <td class="form_label">
                        接头形式
                    </td>
                    <td colspan="1">
                        <input readonly="readonly" name="quality.form" class="nui-dictcombobox" dictTypeId="JTXS" style="width:100%;" />
                    </td>
                    <td class="form_label">
                        专业
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" readonly="readonly" style="width:100%" name="quality.major"/>
                    </td>
                    </tr>
               <tr>
                    <td class="form_label">
                        无损检测方法及比例
                    </td>
                    <td colspan="5">
                        <input class="nui-textbox" style="width:100%" name="quality.ndtmethod_proportions" required="true" 
                        requiredErrorText="无损检测方法及比例不能为空" emptyText="请输入无损检测方法及比例"/>
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        预派焊工
                    </td>
                    <td colspan="5">
                     <div name="quality.prewelder" id="combobox1" class="nui-combobox" style="width:100%;" popupWidth="150" textField="name" valueField="id" 
					     url=""  multiSelect="true"  
					     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
					     <div property="columns" >
					         <div header="预派焊工"  field="name"></div>
					     </div>
					</div>
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        实派焊工
                    </td>
                    <td colspan="5">
                    <div name="quality.solidwelder" id="combobox2" class="nui-combobox" style="width:100%;"  popupWidth="150" textField="name" valueField="id" 
					     url=""  multiSelect="true"
					     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject" >     
					     <div property="columns" >
					         <div header="实派焊工"  field="name"></div>
					     </div>
					</div>
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        工作负责人
                    </td>
                    <td colspan="5">
						<input class="nui-textbox" style="width:100%" name="quality.chargeperson"/>
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        附件
                    </td>
                    <td colspan="5">
                    	<input class="nui-textbox" readonly="readonly"  style="width:100%" name="quality.fj"/>
                    </td>
             	</tr>
             	<tr id="fhryTr">
                    <td class="form_label">
                        复核人
                    </td>
                    <td colspan="5">
                        <input id="reviewer" class="nui-buttonedit" allowInput="false" readonly="readonly" onclick="onButtonSelectPerson"
                         name="" textName="reviewer" style="width: 100%"
                          required="true" requiredErrorText="复核人不能为空" emptyText="请选择复核人"/>
                    </td>
             	</tr>
             	 <tr id="ccryTr">
                    <td class="form_label">
                        抄送
                    </td>
                    <td colspan="5">
                        <input property="editor" id="ccry"
							multi="false" name="quality.ccry" class="nui-textboxlist"
							dataField="list"
							url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
							valueField="empcode" textField="empcodename" searchField="keyword"
							style="width: 100%" />
                    </td>
             	</tr>
             	<input class="nui-hidden" id="jd" name="quality.jd"/>
             	<input class="nui-hidden" id="jz" name="quality.jz"/>
             	<input class="nui-hidden" name="quality.rounds">
             	<input class="nui-hidden" name="quality.createtime">
             	<input class="nui-hidden" name="quality.batchnumber">
             	<input class="nui-hidden" name="quality.cardnumber_edtion">
             	<input class="nui-hidden" id="jd" name="quality.component1interfacesize"/>
             	<input class="nui-hidden" id="jz" name="quality.component1interfacethickness"/>
             	<input class="nui-hidden" name="quality.component1material">
             	<input class="nui-hidden" name="quality.component2interfacesize">
             	<input class="nui-hidden" name="quality.component2interfacethickness">
             	<input class="nui-hidden" name="quality.component2material">
             	<input class="nui-hidden" name="quality.downname">
				<input class="nui-hidden" name="quality.equiaxedgraph">
				<input class="nui-hidden" name="quality.geographicalposition">
				<input class="nui-hidden" name="quality.model_specifications">
				<input class="nui-hidden" name="quality.name">
				<input class="nui-hidden" name="quality.ticketnumber">
				<input class="nui-hidden" name="quality.uppername">
				<input class="nui-hidden" name="quality.welding_method">
				<input class="nui-hidden" name="quality.weldnumber">
				<input class="nui-hidden" name="quality.weldertype">
				<input class="nui-hidden" name="quality.dynamicgeneration"/>
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                         <a class="nui-button" onclick="onOk('admin')" id="btnSave">
                                保存
                            </a>
                            <a class="nui-button" onclick="onOk('manualActivity')" id="tj">
                                提交
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                             <a class="nui-button" onclick="onOk('')" id="cgx">
                                保存至草稿
                            </a>
                               <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button" onclick="onCancel()">
                               关闭
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            
				function close(){
				window.CloseOwnerWindow("ok");
				}
			
                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
                        nui.getbyName("pageType").setValue(infos.pageType);
                        if (infos.pageType == "edit") {
                            var loadingTip = new LoadingBox({str:"数据加载中...",left:"43%",top:"30%"});
                            var json = infos.record;
                        	var form = new nui.Form("#dataform1");//将普通form转为nui的form
	                        form.setData(json);
	                        form.setChanged(false);
	                        nui.get("reviewer").setText(json.quality.reviewer);
	                        var jzid = parent.nui.get("jzid").getValue();
				        	var jdid = parent.nui.get("jdid").getValue();
				        	nui.get("jd").setValue(jdid);
				        	nui.get("jz").setValue(jzid);
				        	nui.get('combobox1').setAjaxType("POST");
  							nui.get('combobox1').load("com.cgn.itmp.weldingmanagement.qualitybiz.getWelderName.biz.ext?base="+jdid);
  							nui.get('combobox2').setAjaxType("POST");
  							nui.get('combobox2').load("com.cgn.itmp.weldingmanagement.qualitybiz.getWelderName.biz.ext?base="+jdid);
				    		loadingTip.destroy();
                    }
                    nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
				}
                    //关闭窗口
                    function CloseWindow(action) {
                        if (action == "close" && form.isChanged()) {
                            if (confirm("数据被修改了，是否先保存？")) {
                                saveData();
                            }
                        }
                        if (window.CloseOwnerWindow)
                        return window.CloseOwnerWindow(action);
                        else window.close();
                    }

                    //确定保存或更新
                    function onOk(finishFirstActivityId) {
                        saveData(finishFirstActivityId);
                    }
				
				$("#btnSave").hide();
					var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";	
					if(isadmin == 'true'){
						$("#btnSave").show();
						$("#tj").hide();
						$("#cgx").hide();
						$("#fhryTr").hide();
						$("#ccryTr").hide();
					}		
					//保存并启动工作流
				  function saveData(finishFirstActivityId){
		                var form = new nui.Form("#dataform1");
		                form.setChanged(false);
		               if(finishFirstActivityId != ''){
		                	if(finishFirstActivityId == 'admin'){
		                	 finishFirstActivityId= '';
		                	}
		                	form.validate();
		               		if(form.isValid()==false) return;
		                }
					
		                var data = form.getData(false,true);
		                
		                var allInfo = {};
	                    allInfo.data = data.quality;
	                    allInfo.data.reviewer = nui.get("reviewer").getText();
	                    //判断是否管理员
				        allInfo.isadmin = isadmin;
				        allInfo.finishFirstActivityId = finishFirstActivityId; 
				        allInfo.processInstName = "焊接管理_焊接质量计划管理_修改";
				        allInfo.processInstDesc = "焊接管理_焊接质量计划管理_修改";
				        //工作流视图url
				        allInfo.processDefName = "com.cgn.itmp.weldingmanagement.Quality.EditWorkflow";
						allInfo.jhry = data.reviewer;
						allInfo.ccry= nui.get("ccry").value;
					   	var json = nui.encode(allInfo);
		              	nui.get("btnSave").setEnabled(false);
		              	nui.get("tj").setEnabled(false);
		              	nui.get("cgx").setEnabled(false);
		                $.ajax({
		                    url:'com.cgn.itmp.weldingmanagement.qualitybiz.editWorkFlow.biz.ext',
		                    type:'POST',
		                    data:json,
		                    cache:false,
		                    contentType:'text/json',
		                    success:function(text){
			                   
		                        var returnJson = nui.decode(text);
		                        if(returnJson.exception == null){
		                        nui.alert("保存成功", "系统提示", function(action){
		                                if(action == "ok" || action == "close"){
		                                   onCancel();
		                                }
		                                });
		                            
		                            
		                        }else{
		                         nui.get("btnSave").setEnabled(true);
				              	nui.get("tj").setEnabled(true);
				              	nui.get("cgx").setEnabled(true);
		                            nui.alert("保存失败", "系统提示", function(action){
		                                if(action == "ok" || action == "close"){
// 		                                    onCancel();
		                                }
		                                });
		                            }
		                        },error: function (jqXHR, textStatus, errorThrown) {
									 nui.alert(jqXHR.responseText,'错误',function (action) {
									  nui.get("btnSave").setEnabled(true);
				              	nui.get("tj").setEnabled(true);
				              	nui.get("cgx").setEnabled(true);
									});
								 }
		                        });
		                    }

                    //取消
                    function onCancel() {
                        CloseWindow("cancel");
                    }
                    
                   
                </script>
            </body>
        </html>
