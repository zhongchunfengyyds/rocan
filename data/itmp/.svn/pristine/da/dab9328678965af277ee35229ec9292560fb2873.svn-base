<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-11-06 15:34:37
- Description:
    --%>
    <head>
        <title>
            TInStatute录入 法规
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
            <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
            <script type="text/javascript"src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
            <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
			<script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
			<script type="text/javascript" src="<%= request.getContextPath()%>/knowledgebase/knowledgebase/encyclopedia/common.js"></script>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <input class="nui-hidden" name="tinstatute.uuid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        基地:
                    </td>
                    <td colspan="1">
                    <input id="jd" class="nui-combobox"  url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                          textField="name" readonly="readonly" dataField="jsonObject" style="width: 100%" valueField="id" onvaluechanged="reloadJd"  required="true"/>
                    </td>
                    
                    <td class="form_label">
                        法规来源:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" dictTypeId="FGLY" style="width: 100%" name="tinstatute.source" required="true" requiredErrorText="法规来源不能为空" emptyText="请选择法规来源"/>
                    </td>
                     </tr>
                <tr>
                    
                    <td class="form_label">
                        法规名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tinstatute.name" onvalidation="hasIllegalChar(e,100,true,true)" required="true" style="width: 100%" requiredErrorText="法规名称不能为空" emptyText="请输入法规名称"/>
                    </td>
                    <td class="form_label">
                        法规简称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tinstatute.abbreviation" onvalidation="hasIllegalChar(e,100,false,true)" style="width: 100%" />
                    </td>
                     </tr>
                <tr>
                    <td class="form_label">
                        发布日期:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" style="width: 100%" name="tinstatute.releasetime"/>
                    </td>
                    
                    <td class="form_label">
                        生效日期:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" style="width: 100%" name="tinstatute.effectivetime"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        附件:
                    </td>
                    <td colspan="3">
                          <%--  <input property="editor" id="enclosure" class="nui-fileupload nui-form-input"
							name="uploadFile" limitType="*.*" limitSize="100MB"
							flashUrl="<%=request.getContextPath()%>/js/swfupload/swfupload.swf"
							onfileselect="onfileselect"
							uploadUrl="<%=request.getContextPath()%>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
							 onuploadsuccess="onUploadSuccess"
							style="width: 100%;" required="false" /> --%>
							<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
							<div style="display: flex;">	
								<input id="enclosure" class="nui-textbox" readonly="readonly" style="width: 100%" onvalidation="hasIllegalChar(e,100,true,true)" name="tinstatute.enclosure" required="true"
								requiredErrorText="附件不能为空" emptyText="请上传附件"/>
								<input id="fileid" style="display: none" class="nui-textbox" name="tinstatute.fileid" />
								<form id="uploadform" enctype="multipart/form-data">
									<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)"> 
								</form>
							</div>
                    </td>
                </tr>
     <!--            <tr>
                    <td class="form_label">
                        是否删除:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tinstatute.isdel"/>
                    </td>
                    <td class="form_label">
                        附件关联id:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tinstatute.fildid"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        删除人:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tinstatute.delperson"/>
                    </td>
                    <td class="form_label">
                        删除时间:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tinstatute.deltime"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        基地:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tinstatute.jd"/>
                    </td>
                    <td class="form_label">
                        添加时间:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tinstatute.addtime"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        添加人:
                    </td>
                    <td colspan="3">
                        <input class="nui-textbox" name="tinstatute.addperson"/>
                    </td>
                </tr> -->
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" onclick="onOk()" id="btnSave">
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
            var fileName;
            var filePath;
			var  jdid = getCookie('jdid');
            nui.get("jd").setValue(jdid);
            function saveData(){

                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr;
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                var jsonObject = form.getData(false,true);
                if(pageType == "add"){
                urlStr = "com.cgn.itmp.knowledgebase.tinstatutebiz.addTInStatute.biz.ext";
                  	if(jsonObject != null ){
						jsonObject.tinstatute.filename =fileName;
						jsonObject.tinstatute.filepath =filePath;	
						jsonObject.tinstatute._state ="added";
						jsonObject.tinstatute.jd =getCookie('jdid');
			     	}
                }
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.knowledgebase.tinstatutebiz.addTInStatute.biz.ext";
                        jsonObject.tinstatute.filename =fileName;
						jsonObject.tinstatute.filepath =filePath;	
						jsonObject.tinstatute._state ="modified";
						jsonObject.tinstatute.jd =getCookie('jdid');
                }
                form.validate();
                if(form.isValid()==false){
					 nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
					 return;
				}

                var json = nui.encode(jsonObject);
				nui.get("btnSave").setEnabled(false);
                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    nui.get("btnSave").setEnabled(true);
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
									 nui.get("btnSave").setEnabled(true);
							});
						 }
                        });
                    }

                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);

                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);	
                        var json = infos.record;
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            form.setData(json);
                            form.setChanged(false);
                        }else if (infos.pageType == "show") {
                            form.setData(json);
                            form.setChanged(false);
                            $("#btnSave").hide();
                            $("#uploadform").hide();
                           if(json.tinstatute.enclosure!= null){
                           	 $("#enclosure").find("span").find("input").css("color","blue").css("text-decoration","underline").css("cursor","pointer");
								$("#enclosure").bind("click",function(){
						       download(json.tinstatute.fileid,json.tinstatute.enclosure);
						    });
                           }
						    //设置表单只读模式
                            labelModel(form);
                            $(".mini-buttonedit-buttons").hide();
                        }
                        nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                    }
                    
                    
//附件下载
					function download(fileId,fileRealName) {
						 var elemIF = document.createElement("iframe");
						 elemIF.src = "<%=request.getContextPath()%>/coframe/tools/download.jsp?remoteFile="+fileId+"&name="+encodeURI(fileRealName); 
						 document.body.appendChild(elemIF);
						 elemIF.style.display = "none";
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
                    
                    //上传成功获取附件name 和 路径
                    	function onUploadSuccess(e, row) {
						fileName = e.file.name;
						filePath = nui.decode(e.serverData).ret.filePath;
						}
						
                          function onfileselect(e) {
							startUpload(e);
						}
						
						function startUpload(e) {
							var fileupload = e.sender;
							fileupload.startUpload();
						} 
                    
                    function fileSub(file){
						var  fv=file.value;
						if(fv){
$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
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
                </script>
            </body>
        </html>
