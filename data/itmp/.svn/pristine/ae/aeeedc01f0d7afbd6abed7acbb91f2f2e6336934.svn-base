<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="com.eos.data.datacontext.IUserObject" %>
<%@ page import="com.cgn.itmp.basecommon.CommonUtil" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-16 16:22:13
- Description:
    --%>
          <%

    SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dateTime = df.format(new Date());
    IUserObject cu = CommonUtil.getUserObject();
    String username = cu.getUserRealName();
%>
    <head>
        <title>
            创建质量计划-多焊缝WQP
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
         <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
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
                        <input class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.qualitynumber" 
                        required="true" requiredErrorText="WQP编号不能为空" emptyText="请输入WQP编号" />
                    </td>
                    <td class="form_label">
                   	描述
                    </td>
                      <td colspan="1">
                        <input class="nui-textbox" style="width:100%" name="quality.describe" required="true" 
                        requiredErrorText="描述不能为空" emptyText="请输入描述" />
                    </td>
                    
                    <td class="form_label">
                  	功能位置
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" name="quality.position" required="true" requiredErrorText="功能位置不能为空" emptyText="请输入功能位置" />
                    </td>
                   </tr>
                   <tr>
                <td class="form_label">
                        制造级别
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" name="quality.level" required="true" 
                        requiredErrorText="制造级别不能为空" emptyText="请输入制造级别" />
                    </td>
                    
                
                    <td class="form_label">
                        接头形式
                    </td>
                    <td colspan="1">
                        <input id="formCombo"  class="nui-dictcombobox"  dictTypeId="JTXS" name="quality.form" required="true" requiredErrorText="接头形式不能为空" emptyText="请选择接头形式"  style="width:100%;" />
                    </td>
                    <td class="form_label">
                        专业
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" name="quality.major" required="true" requiredErrorText="专业不能为空" emptyText="请输入专业" />
                    </td>
                    </tr>
               <tr>
                    <td class="form_label">
                        无损检测方法及比例
                    </td>
                    <td colspan="5">
                        <input class="nui-textbox" style="width:100%" name="quality.ndtmethod_proportions" required="true" requiredErrorText="无损检测方法及比例不能为空" emptyText="请输入无损检测方法及比例" />
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        预派焊工
                    </td>
                    <td colspan="5">
                     <div name="quality.prewelder" id="combobox1" class="nui-combobox" style="width:100%;"  popupWidth="150" textField="name" valueField="id" 
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
                    <td class="form_label" rowspan="1">
                        附件
                    </td>
                    <td colspan="5">
                    <div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
                        <div style="display: flex;">	
							<input id="enclosure" class="nui-textbox" readonly="readonly" required="true" requiredErrorText="附件不能为空" emptyText="请上传附件" style="width: 100%" name="quality.fj" />
							<input id="fildid" style="display: none" class="nui-textbox" name="quality.fildid" />
							<form id="uploadform" enctype="multipart/form-data">
								<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)"> 
							</form>
						</div>
						<div><span style="color:red">注：请重新导入质量计划附件!</span></div>
                    </td>
             	</tr>
             	<tr id="scryTr">
                    <td class="form_label">
                        审查人
                    </td>
                    <td colspan="5">
                       <input id="examinant" class="nui-buttonedit" allowInput="false" required="true" requiredErrorText="审查人不能为空" emptyText="请输入审查人"  readonly="readonly" onclick="onButtonSelectPerson" name="quality.examinant" textName="examinant" style="width: 100%"/>
                    </td>
             	</tr>
             	<tr id="shryTr">
                    <td class="form_label">
                        审核人
                    </td>
                    <td colspan="5">
                        <input id="auditor" class="nui-buttonedit" allowInput="false" required="true" requiredErrorText="审核人不能为空" emptyText="请输入审核人"  readonly="readonly" onclick="onButtonSelectPerson" name="quality.auditor" textName="auditor" style="width: 100%"/>
                    </td>
             	</tr>
             	<tr id="fhryTr">
                    <td class="form_label">
                        复核人
                    </td>
                    <td colspan="5">
                        <input id="reviewer" class="nui-buttonedit" allowInput="false" required="true" requiredErrorText="复核人不能为空" emptyText="请输入复核人"  readonly="readonly" onclick="onButtonSelectPerson" name="quality.reviewer" textName="reviewer" style="width: 100%"/>
                    </td>
             	</tr>
             	 <tr id="ccryTr">
                    <td class="form_label">
                        抄送
                    </td>
                    <td colspan="5">
                          <input property="editor" id="ccry" multi="false" name="quality.ccry" class="nui-textboxlist" dataField="list"
	                       url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext" valueField="empcode"
	                       textField="empcodename" searchField="keyword" style="width:100%"/>
	                       
	                       <div style="display: none;"> 
	                       	<input class="" name="applicant" id="applicant" value="<%=username %>" />
							<input class="" name="applytime" id="applytime" value="<%=dateTime%>" />
	                       </div>
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
				<input class="nui-hidden" name="quality.name1"/>
				<input class="nui-hidden" name="quality.name2"/>
				<input class="nui-hidden" name="quality.name3"/>
				<input class="nui-hidden" name="quality.name4"/>
				<input class="nui-hidden" name="quality.value1"/>
				<input class="nui-hidden" name="quality.value2"/>
				<input class="nui-hidden" name="quality.value3"/>
				<input class="nui-hidden" name="quality.value4"/>
				<input class="nui-hidden" name="quality.workingprocedure">
				<input class="nui-hidden" name="quality.weldertype"/> 
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
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
                                保存至草稿箱
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button" onclick="onCancel()">
                               关闭
                            </a>
                        </td>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            
		
	    	var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
	    	$("#btnSave").hide();
				if(isadmin == 'true'){
					$("#tj").hide();
					$("#cgx").hide();
					$("#btnSave").show();
					$("#scryTr").hide();
					$("#shryTr").hide();
					$("#fhryTr").hide();
					$("#ccryTr").hide();
				}
	    	
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
                data.quality.applicant = $("#applicant").val();
                data.quality.applytime = $("#applytime").val();
                data.quality.auditor = data.auditor;
                data.quality.examinant = data.examinant;
                data.quality.reviewer = data.reviewer;
                data.quality.ccry = nui.get("ccry").value;
                var allInfo = {};
                //判断是否管理员
		        allInfo.isadmin = isadmin;
		        allInfo.finishFirstActivityId = finishFirstActivityId; 
		        allInfo.processInstName = "焊接质量计划管理_多焊缝WQP升版_申请";
		        allInfo.processInstDesc = "焊接质量计划管理_多焊缝WQP升版_申请";
		        //工作流视图url
		        allInfo.processDefName = "com.cgn.itmp.weldingmanagement.Weldingapply.CreateWeldingQualityPlan";
 		        allInfo.data = data.quality;
			    allInfo.ccry = nui.get("ccry").getValue();
				allInfo.jhry = data.examinant;
			   	json = nui.encode(allInfo);
			   	 mini.mask({
					el: document.body,
					cls: 'mini-mask-loading',
					html: '加载中...'
				 });
			   	nui.get("btnSave").setEnabled(false);
				nui.get("tj").setEnabled(false);
				nui.get("cgx").setEnabled(false);
			   	$.ajax({
					   	url:"com.cgn.itmp.weldingmanagement.qualitybiz.lVersionWorkFlow.biz.ext",
						type : 'POST',
						data : json,
						cache : false,
						contentType : 'text/json',
						success : function(text) {
						
							var returnJson = nui.decode(text);
							if (returnJson.exception == null) {
								panduan = true;
								CloseWindow("saveSuccess");
							} else {
							nui.get("btnSave").setEnabled(true);
						nui.get("tj").setEnabled(true);
						nui.get("cgx").setEnabled(true);
								nui.alert("保存失败", "系统提示", function(action) {
									if (action == "ok" || action == "close") {
										CloseWindow("saveFailed");
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

                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                         var forms=[
						          { id: "", name: "请选择.." },
						          { id: "对接", name: "对接" },
						          { id: "角接", name: "角接" },
						          { id: "T形接", name: "T形接"},
						          { id: "搭接", name: "搭接" }
						       ];
                        var infos = nui.clone(data);
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
						nui.getbyName("uid").setValue(infos.record.quality.uid);
						nui.getbyName("qnum").setValue(infos.record.quality.qualitynum);
						
                        //如果是点击编辑类型页面
                        if (infos.pageType == "addmore") {
                        var loadingTip = new LoadingBox({str:"数据加载中...",left:"43%",top:"30%"});
                            var json = infos.record;
							//nui.get("formCombo").load(forms);
                        	var form = new nui.Form("#dataform1");//将普通form转为nui的form
	                        form.setData(json);
	                        form.setChanged(false);
	                        var jzid = parent.nui.get("jzid").getValue();
				        	var jdid = parent.nui.get("jdid").getValue();
				        	nui.get("jd").setValue(jdid);
				        	nui.get("jz").setValue(jzid);
				        	nui.get('combobox1').setAjaxType("POST");
  							nui.get('combobox1').load("com.cgn.itmp.weldingmanagement.qualitybiz.getWelderName.biz.ext?base="+jdid);
  							nui.get('combobox2').setAjaxType("POST");
  							nui.get('combobox2').load("com.cgn.itmp.weldingmanagement.qualitybiz.getWelderName.biz.ext?base="+jdid);
                        	if( json.quality.examinant!= null){
	              				nui.get("examinant").setText(json.quality.examinant);
	              			}
	              			if( json.quality.auditor!= null){
	              				nui.get("auditor").setText(json.quality.auditor);
	              			}
	              			if( json.quality.reviewer!= null){
	              				nui.get("reviewer").setText(json.quality.reviewer);
	              			}
	              			if( json.quality.ccry!= null){
	              				nui.get("ccry").setText(json.quality.ccry);
	              			}	
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

                    //取消
                    function onCancel() {
                        CloseWindow("cancel");
                    }
                    
                    function fileSub(file){
						var  fv=file.value;
						if(fv){
						$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
// 							 if (!/\.(xlsx||png||jpg||gif||doc||docx||zip)$/.test(fv)) {  
// 								 	nui.alert("文件类型必须是gif,png,jpg,doc,docx,xlsx,zip中的一种");  
// 								 return false;  
// 							 }
							$("#uploadform").ajaxSubmit({
								type: "post",
								dataType : "json",
								url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
								processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress .progress-item").style.width = percent + "%";
		                }, false);
		            }
		            return xhr;
		        },
								success : function(data) {
									if (data.code == 1) {
										nui.get("enclosure").setValue(data.list[0].name);
										nui.get("fildid").setValue(data.list[0].uri);
									} else {
										nui.alert("上传失败:" + data.message);
									}
								}
							});
						} else {
							return false;
						}
					} 
                </script>
            </body>
        </html>
