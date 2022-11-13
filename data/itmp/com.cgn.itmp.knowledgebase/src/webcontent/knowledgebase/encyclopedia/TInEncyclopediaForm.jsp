<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): Administrator
- Date: 2019-11-02 16:26:24
- Description:
    --%>
    <head>
        <title>
            TInEncyclopedia录入 百科全书
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <script type="text/javascript" src="<%= request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath()%>/knowledgebase/knowledgebase/encyclopedia/common.js"></script>
        <style type="text/css">
	textarea{
		overflow:auto;
		}
</style>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <input class="nui-hidden" name="tinencyclopedia.uuid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                   <td class="form_label">
                        基地:
                    </td>
                    <td colspan="1">
                    <input id="jd" class="nui-combobox" name="tinencyclopedia.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                          textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" style="width:100%" required="true"/>
                    </td>
                    
                    <td class="form_label">
                        书籍类别: 	
                    </td>
                    
                    <td colspan="1">
                        <input id="combox1"  class="nui-dictcombobox" dictTypeId="SJLB" name="tinencyclopedia.category"  required="true" readonly="readonly" style ="width :100%" />
                    </td>
                      </tr>
                <tr>
                    <td class="form_label">
                        书籍名称:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea"  onvalidation="hasIllegalChar(e,255,true,true)" style ="width :100%" name="tinencyclopedia.name" required="true" requiredErrorText="书籍名称不能为空" emptyText="请输入书籍名称"/>
                    </td>
                          </tr>
                <tr>
                    <td class="form_label">
                        书籍摘要:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea"  onvalidation="hasIllegalChar(e,4000,false,true)" style ="width :100%" name="tinencyclopedia.zhaiyao" />
                    </td>
                      </tr>
                <tr>
                    <td class="form_label">
                        推荐理由:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" style ="width :100%"  onvalidation="hasIllegalChar(e,4000,false,true)" name="tinencyclopedia.rcommend"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        附件:
                    </td>
                    <td colspan="3" >
                           <%-- <input property="enclosure" id="enclosure" class="nui-fileupload nui-form-input"
							name="uploadFile" limitType="*.*" limitSize="100MB"
							flashUrl="<%=request.getContextPath()%>/js/swfupload/swfupload.swf"
							onfileselect="onfileselect"
							uploadUrl="<%=request.getContextPath()%>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
							 onuploadsuccess="onUploadSuccess"
							style="width: 100%;" required="true" /> --%>
							<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
						<div style="display: flex;">	
							<input id="fildid" style="display: none" class="nui-textbox" name="tinencyclopedia.fildid" />
							<input id="enclosure" class="nui-textbox" readonly="readonly" required="true" requiredErrorText="附件不能为空" onvalidation="hasIllegalChar(e,100,true,true)" emptyText="请上传附件" style="width: 100%" name="tinencyclopedia.enclosure" />
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
                            <a class="nui-button"  id="btnSave" onclick="onOk()">
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
            var fileName = "";
            var filePath = "";
            var  jdid = getCookie('jdid');
            nui.get("jd").setValue(jdid);
            
            function saveData(){
                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                  var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                  var urlStr ="";
                  
                  var jsonObject = form.getData(false,true);
                //保存
                if(pageType=="add"){
					 urlStr = "com.cgn.itmp.knowledgebase.tinencyclopediabiz.addTInEncyclopedia.biz.ext";
            		  	
            		  	if(jsonObject != null ){
						jsonObject.tinencyclopedia._state ="added";
						jsonObject.tinencyclopedia.jd =getCookie('jdid');
				}
            	//编辑
                }else if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.knowledgebase.tinencyclopediabiz.addTInEncyclopedia.biz.ext";
                    
                    if(jsonObject != null ){
						jsonObject.tinencyclopedia._state ="modified";
						jsonObject.tinencyclopedia.jd =getCookie('jdid');
				}
                }
                form.validate();
                if(form.isValid()==false){
                	 nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
					 return;
				}
				mini.mask({el: document.body,cls: 'mini-mask-loading',html: '加载中...'});
				nui.get("btnSave").setEnabled(false);
                var json = nui.encode(jsonObject);
                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    nui.get("btnSave").setEnabled(true);
                    	 //关闭加载
 						mini.unmask(document.body);
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                            CloseWindow("saveSuccess");
                        }else{
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
                             mini.unmask(document.body);
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
 						var form = new nui.Form("#dataform1");//将普通form转为nui的form
 						var json = infos.record;
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
                      	nui.get("combox1").setValue(renderPageFlow(infos.pageflow));
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                           json.tinencyclopedia.uploadtime = nui.formatDate ( json.tinencyclopedia.uploadtime, "yyyy-MM-dd HH:mm:ss");
                           form.setData(json);
                           form.setChanged(false);
                        }else if(infos.pageType == "show"){
                       		form.setData(json);
                            form.setChanged(false);
                            labelModel(form);
                            $("#btnSave").hide();
                            $("#uploadform").hide();
                            if(json.tinencyclopedia.enclosure != null){
	                            $("#enclosure").find("span").find("input").css("color","blue").css("text-decoration","underline").css("cursor","pointer");
								$("#enclosure").bind("click",function(){
							       download(json.tinencyclopedia.fildid,json.tinencyclopedia.enclosure);
							    });
                            }
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
                    
					function renderPageFlow(pageflow){
						var pageType = "";
						  switch(pageflow){
				            case "文艺" :
				                 pageType = 'literature';
				                 break;
				            case "教育" :
				                 pageType = 'education';
				                 break;
				            case "人文社科":
				                 pageType = 'socialscience';
				                 break;
				            case "经营" :
				           		 pageType ='management';
				           		 break;
				            case "生活":
				                 pageType='life';
				                 break;
				             case "科技":
				                 pageType = 'technology';
				                 break;
				            }
				            return pageType;
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
                     function applyRender(e){
					   return  nui.getDictText("SJLB",e.value);
					} 
					
					function onDrawDate(e) {
			            var date = e.date;
			            var d = new Date();
			
			            if (date.getTime() > d.getTime()) {
			                e.allowSelect = false;
			            }
			        }

                    //确定保存或更新
                    function onOk() {
                        saveData();
                    }

                    //取消
                    function onCancel() {
                        CloseWindow("cancel");
                    }
                    //返回
                            function CloseWindow(action) {
                        if (action == "close" && form.isChanged()) {
                            if (confirm("数据被修改了，是否先保存？")) {
                                saveData();
                            }
                        }
                        if (window.CloseOwnerWindow)
                        return window.CloseOwnerWindow(action);
                        else window.close();
                    };
                   //上传成功时，回写附件的name、id
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
