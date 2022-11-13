<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): ASUS
- Date: 2018-12-20 14:31:04
- Description:
    --%>
    <head>
        <title>
            TSD标准库
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
       	<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
       	<link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tdxglsysytsdinfo.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
            <input class="nui-hidden" name="tdxglsysytsdinfo.uuid"/>
          
			<input class="nui-hidden" id="fpath" name="tdxglsysytsdinfo.filepath"/>
	        <input class="nui-hidden" id="fname" name="tdxglsysytsdinfo.filename"/>
			<input class="nui-hidden" id="fid" name="tdxglsysytsdinfo.fileid"/>  
			<input class="nui-hidden" name="tdxglsysytsdinfo.tp"/>	
			
			<input class="nui-hidden" id="fpath2" name="tdxglsysytsdinfo.filepath2"/>
	        <input class="nui-hidden" id="fname2" name="tdxglsysytsdinfo.filename2"/>
			<input class="nui-hidden" id="fid2" name="tdxglsysytsdinfo.fileid2"/>  
			<input class="nui-hidden" name="tdxglsysytsdinfo.tz"/>	
           <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                <td class="form_label">
                      基地
                    </td>
                    <td colspan="1">                        
                      <input id="jd" class="nui-combobox" name="tdxglsysytsdinfo.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
                    </td>
                    <td class="form_label">
                      机组
                    </td>
                    <td colspan="1">
                        <input class="nui-combobox" name="tdxglsysytsdinfo.jz" required="true" requiredErrorText="机组不能为空" 
                        dataField="jsonObject" id="jz" textField="name" url="" valueField="id"/>
                    </td>
                    
                </tr>
                <tr>
                <td class="form_label">
                    功能位置
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysytsdinfo.gnwz"  onvalidation="hasIllegalChar(e,256,true,true)"
                        required="true" requiredErrorText="功能位置不能为空"/>
                    </td>
                    <td class="form_label">
                      进水
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysytsdinfo.js" onvalidation="hasIllegalChar(e,256,false,true)"/>
                    </td>
                   
                </tr>
                <tr>
                 <td class="form_label">
                       排气
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysytsdinfo.pq" onvalidation="hasIllegalChar(e,256,false,true)"/>
                    </td>
                    <td class="form_label">
                       封堵
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tdxglsysytsdinfo.fd" onvalidation="hasIllegalChar(e,256,false,true)"/>
                    </td>
                  
                </tr>
                <tr>
                  <td class="form_label">
                        图片
                    </td>
                    <td colspan="1">
                    <input id="fileName1" class="nui-fileupload nui-form-input" name="uploadFile"  limitSize="100MB" 
						flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect(1)"  onvalidation="hasIllegalChar(e,256,false,true)"
						uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"  onuploaderror="onUploadError" 
						onuploadsuccess="onUploadSuccess" style="width:100%;"/> 
                    </td>
                    <td class="form_label">
                        图纸
                    </td>
                    <td colspan="1">
                        <input id="fileName2" class="nui-fileupload nui-form-input" name="uploadFile"  limitSize="100MB" 
						flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect(2)"  onvalidation="hasIllegalChar(e,256,false,true)"
						uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"  onuploaderror="onUploadError" 
						onuploadsuccess="onUploadSuccess" style="width:100%;"/>
					<input class="nui-textbox" name="tdxglsysytsdinfo.addtime" visible="false" />
					
                    </td>
                </tr>
            </table>
            
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" onclick="onOk()">
                                保存
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
 			var jzid = parent.nui.get("jzid").getValue();
        	var jdid = parent.nui.get("jdid").getValue();
        	nui.get("jd").setValue(jdid);
        	nui.get('jz').setAjaxType("POST");
        	nui.get('jz').load( "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid);
        	nui.get("jz").setValue(jzid);
        /* 	labelModel("jz");
        	labelModel("jd"); */
        /* 	function reloadJz(e) {
             		var jdid = jdCombox.getValue();
			       jzCombox.setValue("");
				   var url = "com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid=" + jdid;
				   jzCombox.setUrl(url);   
		        }	 */
		        	  
            function saveData(){
				
                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.dailyandoverhaul.vessel.TsdStandardLibrary.addTDxglSysyTsdinfo.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.dailyandoverhaul.vessel.TsdStandardLibrary.updateTDxglSysyTsdinfo.biz.ext";
                }
                form.validate();
                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}

                var data = form.getData(false,true);
          data.tdxglsysytsdinfo.addtime=nui.formatDate(new Date(),'yyyy-MM-dd HH:mm:ss');
          /* data.tdxglsysytsdinfo.tp=data.tdxglsysytsdinfo. */
                
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
 							nui.get("fileName1").setText(json.tdxglsysytsdinfo.fileRealName);
 							nui.get("fileName2").setText(json.tdxglsysytsdinfo.fileRealName2);
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
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
	            	function onfileselect(num){
						startUpload(num);
					}
					function startUpload(e) {
						
				        var fileupload = nui.get("fileName"+e);
				        fileupload.startUpload();
				    }
				    //上传成功时，回写附件的name、id
				 	function onUploadSuccess(e){
				 		
						var appIconName = e.file.name;						
						var appIconPath = nui.decode(e.serverData).ret.filePath;
						var num = "";
						if(e.sender.id == "fileName2"){
							num = "2";
						}
						//var appIconData = nui.decode(e.serverData).ret.fileValue;
						nui.get("fpath"+num).setValue(appIconPath);
						nui.get("fname"+num).setValue(appIconName);
					}
                    
                </script>
            </body>
        </html>
