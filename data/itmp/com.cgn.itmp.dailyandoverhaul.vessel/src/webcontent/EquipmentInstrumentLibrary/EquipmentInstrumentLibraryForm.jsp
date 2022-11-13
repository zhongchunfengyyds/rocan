<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-01-14 16:33:51
- Description:
    --%>
    <head>
        <title>
            设备仪表录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
         <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
      	<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
		<style type="text/css">
			textarea{
overflow:auto;
}
		</style>	
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="T_DXGL_SYSY_FACILITYINFO" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tdxglsysyfacilityinfo.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
            <input class="nui-hidden" name="tdxglsysyfacilityinfo.uuid"/>
            <input class="nui-hidden" id="fpath" name="tdxglsysyfacilityinfo.filepath"/>
            <input class="nui-hidden" id="fname" name="tdxglsysyfacilityinfo.filename"/>
			<input class="nui-hidden" id="fid" name="tdxglsysyfacilityinfo.fileid"/> 
						<input class="nui-hidden" name="tdxglsysyfacilityinfo.addtime"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                <td class="form_label">
                        基地:
                    </td>
                    <td colspan="1" >
                        <input id="jd" class="nui-combobox" name="tdxglsysyfacilityinfo.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" style="width:100%;"/>
                    </td>
                    <td class="form_label">
                        器具名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.qjmc"  onvalidation="hasIllegalChar(e,100,true,true)"
                         style="width:100%;"  required="true" requiredErrorText="器具名称不能为空"/>
                    </td>
                    
                </tr>
                <tr>
                <td class="form_label">
                        出厂编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.ccbh"  onvalidation="hasIllegalChar(e,32,true,true)"
                        style="width:100%;"  required="true" requiredErrorText="出场编号不能为空"/>
                    </td>
                    <td class="form_label">
                        生产厂家:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.sccj" onvalidation="hasIllegalChar(e,32,false,true)" style="width:100%;"/>
                    </td>
                    
                </tr>
                <tr>
                <td class="form_label">
                        规格型号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.ggxh" onvalidation="hasIllegalChar(e,32,false,true)" style="width:100%;"/>
                    </td>
                    <td class="form_label">
                        检定有效期至:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tdxglsysyfacilityinfo.jdyxqz" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" dateFormat="yyyy-MM-dd HH:mm:ss" style="width:100%;"/>
                    </td> 
                    <td colspan="1" style="display:none">
                        <input id="yxqcx" class="nui-dictcombobox" dictTypeId="YXQ" name="tdxglsysyfacilityinfo.yxqcx" style="width:100%;"/>
                    </td>                      
                </tr>
                <tr>
                    <td class="form_label">
                        测量范围:
                    </td>
                    <td colspan="1"> 
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.clfw" onvalidation="hasIllegalChar(e,256,false,true)" style="width:100%;"/>
                    </td>
                    <td class="form_label">
                        精度等级:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.jddj" onvalidation="hasIllegalChar(e,32,false,true)" style="width:100%;"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        检定日期:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tdxglsysyfacilityinfo.jdrq" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" dateFormat="yyyy-MM-dd HH:mm:ss" style="width:100%;"/>
                    </td>
                    <td class="form_label">
                        检定周期:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.jdzq" onvalidation="hasIllegalChar(e,32,false,true)" style="width:100%;"/>
                    </td>
                </tr>
                <tr>
                    
                    <td class="form_label">
                        检定单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.jddw" onvalidation="hasIllegalChar(e,50,false,true)" style="width:100%;"/>
                    </td>
                    <td class="form_label">
                        使用状态:
                    </td>
                    <td colspan="1">
                        <input  class="nui-dictcombobox" name="tdxglsysyfacilityinfo.syzt"
                        dictTypeId="SYZT" onvaluechanged="getsyzt" style="width:100%;"/>
                    </td>
                </tr>
                <tr>
                    
                     <td class="form_label">
                        报备情况:
                    </td>
                    <td colspan="1">
                        <input id="bbqk" class="nui-dictcombobox" name="tdxglsysyfacilityinfo.bbqk"
                        dictTypeId="BBQK" readonly="readonly"style="width:100%;"/>
                    </td>
                    <td class="form_label">
                        负责人:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.fzr" onvalidation="hasIllegalChar(e,32,false,true)" style="width:100%;"/>
                    </td>
                </tr>
                <tr>
                    
                    <td class="form_label">
                        附件:
                    </td>
                    <td colspan="3">
                    <%-- <input id="fileName" class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" limitSize="100MB" 
                    flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect" 
                    uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"  
                    onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess" style="width:100%;"/>
                        <input class="nui-textbox" name="tdxglsysyfacilityinfo.fj" visible="false"/> --%>
                        <div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
                        <div style="display: flex;">	
							<input id="enclosure" readonly="true" class="nui-textbox" style="width: 100%" name="tdxglsysyfacilityinfo.fj" onvalidation="hasIllegalChar(e,256,false,true)" />
							<input id="fileid" style="display: none" class="nui-textbox" name="tdxglsysyfacilityinfo.fileid" />
							<form id="uploadform" enctype="multipart/form-data">
								<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)"> 
							</form>
						</div>
                    </td>     
                     </tr>
                <tr>           
                <td class="form_label">
                        备注:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" name="tdxglsysyfacilityinfo.bz" onvalidation="hasIllegalChar(e,256,false,true)" style="width:100%;"/>
                    </td>

                </tr>
                <tr id="xgyyxs" >                    
                    <td class="form_label">
                        修改原因:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" name="tdxglsysyfacilityinfo.xgyy" onvalidation="hasIllegalChar(e,256,false,true)" style="width:100%;"/>
                    </td>           
                </tr>
                
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button"  onclick="onOk()">
                                保存
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
            var jdid = parent.nui.get("jdid").getValue();
        	nui.get("jd").setValue(jdid);

			function fileSub(file){
				var  fv=file.value;
				if(fv){
				$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
// 					 if (!/\.(xlsx||png||jpg||gif||doc||docx||zip)$/.test(fv)) {  
// 						 	nui.alert("文件类型必须是gif,png,jpg,doc,docx,xlsx,zip中的一种");  
// 						 return false;  
// 					 }
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
								nui.get("fileid").setValue(data.list[0].uri);
							} else {
								nui.alert("上传失败:" + data.message);
							}
						}
					});
				} else {
					return false;
				}
			} 

            function saveData(){
				
                var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.addTDxglSysyFacilityinfo.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.dailyandoverhaul.vessel.EquipmentInstrumentLibrary.updateTDxglSysyFacilityinfo.biz.ext";
                }
                form.validate();
                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}

                var data = form.getData(false,true); 
                data.tdxglsysyfacilityinfo.jdyxqz=nui.formatDate(data.tdxglsysyfacilityinfo.jdyxqz,'yyyy-MM-dd'); 
                data.tdxglsysyfacilityinfo.jdrq=nui.formatDate(data.tdxglsysyfacilityinfo.jdrq,'yyyy-MM-dd'); 
                 data.tdxglsysyfacilityinfo.addtime=nui.formatDate(new Date(),'yyyy-MM-dd HH:mm:ss');             
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
                            CloseWindow("saveSuccess"); 
                        }else{
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    //CloseWindow("saveFailed");
                                }
                                });
                            }
                            
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							});
						 }
                        });
                    }
						
					function getsyzt(e){
					
						if(e.value=='YRK'){
						nui.get("bbqk").setValue("WBB");
						}else if(e.value=='SYZ'){
						nui.get("bbqk").setValue("YBB");
						}else if(e.value=='SJ'){
						nui.get("bbqk").setValue("XCXBB");
						}else{
						nui.get("bbqk").setValue("/");
						}
					}	
						
						
                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
						nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);

                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            var json = infos.record;
                            $("#jdid").css("enabled",false);
                            nui.get("enclosure").setValue(json.tdxglsysyfacilityinfo.fj);//加载附件名称
                           // $("#xgyyxs").css("display","block");//显示修改原因
                            var form = new nui.Form("#T_DXGL_SYSY_FACILITYINFO");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                        }else{
                        	$("#xgyyxs").hide();
                        }
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
                    function onOk() {
                        saveData();
                    }

                    //取消
                    function onCancel() {
                        CloseWindow("cancel");
                       
                    }
                    //上传附件操作
	            	function onfileselect(){
						startUpload();
					}
					function startUpload(e) {
					
				        var fileupload = nui.get("fileName");
				        fileupload.startUpload();
				    }
				    //上传成功时，回写附件的name、id
				  function onUploadSuccess(e){
					var appIconName = e.file.name;

					var appIconPath = nui.decode(e.serverData).ret.filePath;
					//var appIconData = nui.decode(e.serverData).ret.fileValue;
					nui.get("fpath").setValue(appIconPath);
					nui.get("fname").setValue(appIconName);
				}
                </script>
            </body>
        </html>
