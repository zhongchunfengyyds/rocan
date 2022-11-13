<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-11-08 11:30:28
- Description:
    --%>
    <head>
        <title>
            TInCriterion录入 标准
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
         <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script type="text/javascript"src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
           <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
           <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script> 
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <input class="nui-hidden" name="tincriterion.uuid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        标准来源:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tincriterion.source" required="true"  onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="标准来源不能为空" emptyText="请输入标准来源" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        标准名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tincriterion.name" required="true" onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="标准名称不能为空" emptyText="请输入标准名称" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        标准编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tincriterion.identifier" onvalidation="hasIllegalChar(e,100,true,true)" required="true" requiredErrorText="标准编号不能为空" emptyText="请输入标准编号" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        标准版本:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tincriterion.edition" required="true"  onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="标准版本不能为空" emptyText="请输入标准版本" style="width:100%"/>
                    </td>
                </tr>
                        <tr>
                    <td class="form_label">
                        附件:
                    </td>
                    <td colspan="3">
                           <%-- <input property="editor" id="enclosure" class="nui-fileupload nui-form-input"
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
						<input id="enclosure" class="nui-textbox"  readonly="readonly" style="width: 100%" name="tincriterion.enclosure"  onvalidation="hasIllegalChar(e,100,true,true)" requiredErrorText="附件不能为空"  required="true" />
						<input id="fileid" style="display: none" class="nui-textbox" name="tincriterion.fileid" />
						<form id="uploadform" enctype="multipart/form-data">
							<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)"> 
						</form>
					</div>
                    </td>
                     </tr>
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
              var fileName = "";
            var filePath = "";
            function saveData(){
                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                var jsonObject= form.getData(false,true);
                //保存
                var urlStr = "";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.knowledgebase.tincriterionbiz.addTInCriterion.biz.ext";
            		  	if(jsonObject != null ){
						jsonObject.tincriterion.filename =fileName;
						jsonObject.tincriterion.filepath =filePath;	
						jsonObject.tincriterion._state ="modified";
						jsonObject.tincriterion.jd =getCookie('jdid');
				}
                }
                if(pageType=="add"){
					 urlStr = "com.cgn.itmp.knowledgebase.tincriterionbiz.addTInCriterion.biz.ext";
            		  	if(jsonObject != null ){
						jsonObject.tincriterion.filename =fileName;
						jsonObject.tincriterion.filepath =filePath;	
						jsonObject.tincriterion._state ="added";
						jsonObject.tincriterion.jd =getCookie('jdid');
				}
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

                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            var json = infos.record;
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                        }else if(infos.pageType == "show"){
                        	var json = infos.record;
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            $("#btnSave").hide();
                            $("#uploadform").hide();
                            if(json.tincriterion.enclosure != null){
	                            $("#enclosure").find("span").find("input").css("color","blue").css("text-decoration","underline").css("cursor","pointer");
								$("#enclosure").bind("click",function(){
							       download(json.tincriterion.fildid,json.tincriterion.enclosure);
						    });
                            }
						    //设置表单只读模式
                            labelModel(form);
                        }
                        nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                    }
                    
                    function labelModel(form) {
			            var fields = form.getFields();                
			            for (var i = 0, l = fields.length; i < l; i++) {
			                var c = fields[i];
			                if (c.setReadOnly) c.setReadOnly(true);     //只读
			                if (c.setIsValid) c.setIsValid(true);      //去除错误提示
			                if (c.addCls) c.addCls("asLabel");          //增加asLabel外观
			            }
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
                      function onUploadSuccess(e, row) {
							fileName = e.file.name;
						filePath = nui.decode(e.serverData).ret.filePath;
						}
						
                          function onfileselect(e) {
							startUpload(e);
						}
						
						function startUpload(e){
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
