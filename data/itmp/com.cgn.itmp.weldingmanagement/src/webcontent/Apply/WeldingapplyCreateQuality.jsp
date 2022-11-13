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
        <style type="text/css">
        	.mini-buttonedit-input:hover{
        		cursor:pointer;
        	}
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
                     <!--  <input id="jd" class="nui-dictcombobox hidden" name="quality.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
                        <input class="nui-dictcombobox hidden" name="quality.jz" required="true" requiredErrorText="机组不能为空" 
                        dataField="jsonObject" readonly="readonly" id="jz" textField="name" url="" valueField="id"/> 
                        <input class="nui-hidden" name="quality.rounds" required="true" requiredErrorText="大修轮次不能为空"/>-->
                <tr>
                	<td class="form_label">
                   WQP编号
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" readOnly="readOnly" name="quality.qualitynumber" 
                        required="true" requiredErrorText="WQP编号不能为空" emptyText="请输入WQP编号"/>
                    </td>
                    <td class="form_label">
                   	描述
                    </td>
                      <td colspan="1">
                        <input class="nui-textbox" style="width:100%"  onvalidation="hasIllegalChar(e,100,true,true)" name="quality.describe" required="true"
                         requiredErrorText="描述不能为空" emptyText="请输入描述"/>
                    </td>
                    
                    <td class="form_label">
                  	功能位置
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" onvalidation="hasIllegalChar(e,100,true,true)" name="quality.position" required="true" 
                        requiredErrorText="功能位置不能为空" emptyText="请输入功能位置"/>
                    </td>
                   </tr>
                   <tr>
                <td class="form_label">
                        制造级别
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" onvalidation="hasIllegalChar(e,100,true,true)" name="quality.level" required="true" 
                        requiredErrorText="制造级别不能为空" emptyText="请输入制造级别"/>
                    </td>
                    
                
                    <td class="form_label">
                        接头形式
                    </td>
                    <td colspan="1">
                    <input id="formCombo" name="quality.form" class="nui-dictcombobox"   dictTypeId="JTXS" style="width:100%;"
                     required="true" requiredErrorText="接头形式不能为空" emptyText="请输入接头形式" />
                       
                    <td class="form_label">
                        专业
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%" name="quality.major" 
                        required="true" requiredErrorText="专业不能为空" onvalidation="hasIllegalChar(e,100,true,true)" emptyText="请输入专业"/>
                    </td>
                    </tr>
               <tr>
                    <td class="form_label">
                        无损检测方法及比例
                    </td>
                    <td colspan="5">
                        <input class="nui-textbox" style="width:100%" name="quality.ndtmethod_proportions" 
                        required="true" requiredErrorText="无损检测方法及比例不能为空" onvalidation="hasIllegalChar(e,100,true,true)" emptyText="请输入无损检测方法及比例"/>
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        预派焊工
                    </td>
                    <td colspan="5">
                     <div name="quality.prewelder" id="combobox1" onvalidation="hasIllegalChar(e,100,false,true)" class="nui-combobox" style="width:100%;"  popupWidth="150" textField="name" valueField="id" 
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
                    <div name="quality.solidwelder" onvalidation="hasIllegalChar(e,100,false,true)" id="combobox2" class="nui-combobox" style="width:100%;"  popupWidth="150" textField="name" valueField="id" 
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
						<input class="nui-textbox" onvalidation="hasIllegalChar(e,100,false,true)" style="width:100%" name="quality.chargeperson"/>
                    </td>
             	</tr>
             	<tr>
                    <td class="form_label">
                        附件
                    </td>
                    <td colspan="5">
                    	<%-- <input id="fileName" class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" limitSize="100MB" 
                    flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect" 
                    uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"  
                    onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess" required="required" style="width:100%;"/>
                        <input class="nui-textbox" visible="false" required="required" requiredErrorText="必须上传附件" name="quality.fj"/> --%>
                        <div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
                        <div style="display: flex;">	
							<input id="enclosure" onvalidation="hasIllegalChar(e,100,true,true)" class="nui-textbox" readonly="readonly" style="width: 100%" name="quality.fj" required="true" 
							requiredErrorText="附件不能为空" emptyText="请输入附件" />
							<input id="fildid" style="display: none" class="nui-textbox" name="quality.fildid" />
							<form id="uploadform" enctype="multipart/form-data">
								<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)"> 
							</form>
						</div>
                    </td>
             	</tr>
             	<tr id="scryTr">
                    <td class="form_label">
                        审查人
                    </td>
                    <td colspan="5">
                       <input id="examinant" class="nui-buttonedit" allowInput="false" required="true" 
                       requiredErrorText="焊接准备工程师不能为空" emptyText="请输入焊接准备工程师" readonly="readonly" onclick="onButtonSelectPerson"  name="quality.examinant" textName="examinant" style="width: 100%"/>
                    </td>
             	</tr>
             	<tr id="shryTr">
                    <td class="form_label">
                        审核人
                    </td>
                    <td colspan="5">
                        <input id="auditor" class="nui-buttonedit" allowInput="false" required="true" 
                        requiredErrorText="焊接QC1不能为空" emptyText="请输入焊接QC1" readonly="readonly" onclick="onButtonSelectPerson" name="quality.auditor" textName="auditor" style="width: 100%"/>
                    </td>
             	</tr>
             	<tr id="fhryTr">
                    <td class="form_label">
                        复核人
                    </td>
                    <td colspan="5">
                        <input id="reviewer" class="nui-buttonedit" allowInput="false" required="true" 
                        requiredErrorText="焊接QC2不能为空" emptyText="请输入焊接QC2" readonly="readonly" onclick="onButtonSelectPerson" name="quality.reviewer" textName="reviewer" style="width: 100%"/>
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
             	<input class="nui-hidden" name="quality.weldertype">
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <td style="text-align:center;" colspan="4">
                              <a class="nui-button" onclick="onOk('admin')" id="save">
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
				
				  //0 保存到草稿箱 //1 提交  //2 取消
            var panduan='cgx';
            
            function saveData(finishFirstActivityId){
            
                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                var isdel = 1;
                if(finishFirstActivityId!= ''){
                	isdel = 0;
                	panduan = 'saveSuccess';
 					if(finishFirstActivityId == 'admin'){
 						finishFirstActivityId = '';
 					}          
 					form.validate();
                	if(form.isValid()==false) return;     
                }
                
				var uid = nui.getbyName("uid").getValue();
				var qnum = nui.getbyName("qnum").getValue();
                var data = form.getData(false,true);
                
                data.quality.applicant = $("#applicant").val();
                data.quality.applytime = $("#applytime").val();
                data.quality.auditor = data.auditor;
                data.quality.examinant = data.examinant;
                data.quality.reviewer = data.reviewer;
                data.quality.ccry = nui.get("ccry").value;
                data.quality.isdel = isdel;
                
                mini.mask({el: document.body,cls: 'mini-mask-loading',html: '加载中...'});
                nui.get("save").setEnabled(false);
				nui.get("tj").setEnabled(false);
				nui.get("cgx").setEnabled(false);
                var json = nui.encode({data:data.quality,entity:"com.cgn.itmp.weldingmanagement.Quality.Quality",uid:uid,qnum:qnum});
                $.ajax({
                    url:"com.cgn.itmp.weldingmanagement.qualitybiz.addQualityByApply.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    	
                        var returnJson = nui.decode(text);
                        if(returnJson.uuid != null && returnJson.uuid != ""){
	                   	 	openWorkFlow(returnJson.uuid,finishFirstActivityId);
                        }else{
                        nui.get("save").setEnabled(true);
						nui.get("tj").setEnabled(true);
						nui.get("cgx").setEnabled(true);
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							 nui.get("save").setEnabled(true);
						nui.get("tj").setEnabled(true);
						nui.get("cgx").setEnabled(true);
							});
						 }
                        });
                    }

					//启动工作流
					var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
					if(isadmin == 'true'){
						$("#tj").hide();
						$("#cgx").hide();
						$("#scryTr").hide();
						$("#shryTr").hide();
						$("#fhryTr").hide();
						$("#ccryTr").hide();
					}else{
						$("#save").hide();
					}
					function openWorkFlow(uuid,finishFirstActivityId){
                    
	                    var allInfo = {};
	                    allInfo.uuid = uuid;
	                    //判断是否管理员
				        allInfo.isadmin = isadmin;
				        allInfo.finishFirstActivityId = finishFirstActivityId; 
				        allInfo.processInstName = "焊接申请_创建焊接质量计划(多焊缝WQP)_申请";
				        allInfo.processInstDesc = "焊接申请_创建焊接质量计划(多焊缝WQP)_申请";
				        //工作流视图url
				        allInfo.processDefName = "com.cgn.itmp.weldingmanagement.Weldingapply.CreateWeldingQualityPlan";
		 		    	var form = new nui.Form("#dataform1");
                		var data = form.getData(false,true);
		 		        allInfo.examinant =data.examinant;
		 		        allInfo.auditor = data.auditor;
					   	allInfo.reviewer = data.reviewer;
					    allInfo.ccry = nui.get("ccry").getValue();
						allInfo.jhry = data.examinant;
						var personInfo = {};
					   	if(finishFirstActivityId == ''){
					   		personInfo.wqpStatu = "DTJ";
					   	}else{
					   		personInfo.wqpStatu = "SCZ";
					   	}
					   	allInfo.personInfo = personInfo;
					   	json = nui.encode(allInfo);
					   	nui.get("save").setEnabled(false);
						nui.get("tj").setEnabled(false);
						nui.get("cgx").setEnabled(false);
					   	$.ajax({
							   	url:"com.cgn.itmp.weldingmanagement.qualitybiz.openWorkFlow.biz.ext",
								type : 'POST',
								data : json,
								cache : false,
								contentType : 'text/json',
								success : function(text) {
								nui.get("save").setEnabled(true);
								nui.get("tj").setEnabled(true);
								nui.get("cgx").setEnabled(true);
								mini.unmask(document.body);
									var returnJson = nui.decode(text);
									if (returnJson.exception == null) {
										CloseWindow(panduan);
									} else {
										nui.alert("保存失败", "系统提示", function(action) {
											if (action == "ok" || action == "close") {
												//CloseWindow("saveFailed");
											}
										});
									}
								}
							});
					}

                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
						nui.getbyName("uid").setValue(infos.record.quality.uid);
						nui.getbyName("qnum").setValue(infos.record.quality.qualitynum);
						
                        //如果是点击编辑类型页面
                        if (infos.pageType == "addmore") {
                        var loadingTip = new LoadingBox({str:"数据加载中...",left:"43%",top:"30%"});
                            var json = infos.record;
							var applyno=nui.encode({applyno:infos.record.quality.applyno});
							 $.ajax({
				                    url:"com.cgn.itmp.weldingmanagement.qualitybiz.getQualityNumber.biz.ext",
				                    type:'POST',
				                    data:applyno,
				                    async:true,
				                    contentType:'text/json',
				                    success:function(text){
				                        	json.quality.qualitynumber=text.qualitynum;
// 				                        	nui.get("formCombo").load(forms);
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
				                        	loadingTip.destroy();
				                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							});
						 }
				                     });
				                     
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
