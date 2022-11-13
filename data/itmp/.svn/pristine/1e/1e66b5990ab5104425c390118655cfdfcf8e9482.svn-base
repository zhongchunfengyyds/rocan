<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): swh
- Date: 2020-03-10 15:24:09
- Description:
    --%>
    <head>
        <title>
            模板管理新增
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
            <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
    </script><script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
            <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
    <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
    
        
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tsymenu.uuid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        一级菜单:
                    </td>
                    <td colspan="1">
                        <input id="firstmenu" required="required" requiredErrorText="此项不能为空" class="nui-textbox" name="tsymenu.firstmenu"/>
                    </td>
                    <td class="form_label">
                        二级菜单:
                    </td>
                    <td colspan="1">
                        <input id="twolevelmenu" class="nui-textbox" required="required" requiredErrorText="此项不能为空" name="tsymenu.twolevelmenu"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        三级菜单:
                    </td>
                    <td colspan="1">
                        <input id="menuname" class="nui-textbox" required="required" requiredErrorText="此项不能为空" name="tsymenu.menuname"/>
                    </td>
                    <td class="form_label">
                        模板名称:
                    </td>
                    <td colspan="1">
                        <input id="menupath" required="required" requiredErrorText="此项不能为空" class="nui-textbox" name="tsymenu.templatename"/>
                    </td>
                    
                </tr>
                
                <tr>
                <td class="form_label">
                        模板文件标识:
                    </td>
                    <td colspan="1">
                        <input id="menupath" class="nui-textbox" required="required" requiredErrorText="此项不能为空" name="tsymenu.menupath"/>
                    </td>
                    
                    <td class="form_label">
                        排序:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  name="tsymenu.orderno"/>
                    </td>
                    
                </tr>
                <tr>
                <td class="form_label">
                       模板:
                    </td>
                    <td colspan="3">
                    <input id="fj"   buttonText="浏览" property="editor"
                                         class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*"
                                         limitSize="100MB" uploadOnSelect="true"
                                         flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf"
                                         onfileselect="onfileselect"
                                         uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
                                         onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
                                         onuploadcomplete="onuploadcomplete" style="width:100%;"/>
							</div>
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
                                取消
                            </a>
                        </td>
                    </tr>
                </table>
                <span style="color:red">说明：<br>1、修改模板中下拉框值时，需要根据列头名称同步修改系统设置公共字典管理中对应的字典值。<br>
                							2、模板中首行隐藏行请勿修改。
                							
                </span>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
			var fileall;
			var pageType;
            function saveData(){
            	 var form = new nui.Form("#dataform1");
                form.validate();
				form.setChanged(false);
                if(form.isValid()==false) return;
            	if(pageType=="edit"){
	            	if(fileall){
	            		fileContinue(fileall);
	            	}
	            }else{
		            if(fileall){
		            	fileContinue(fileall);
		            }else{
		            	nui.alert("请导入模板。");
		            	return;
		            }
	            }
            	
				
				
               
                var data = form.getData(false,true);
                
                if (pageType == "add") {
	                data["tsymenu"].menupath=data["tsymenu"].menupath+".xlsx";
	                var type=countname();
	                
	                if(type!="0"){
	                	nui.alert("该文件标识已存在");
	                	return;
	                }
                }
                
                //保存
                var urlStr = "com.cgn.itmp.systemset.tsymenubiz.addTSyMenu.biz.ext";
                
//                 pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                
                    urlStr = "com.cgn.itmp.systemset.tsymenubiz.updateTSyMenu.biz.ext";
                }
                
                
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
                        }
                        });
                    }
                    
                    
                    function countname(){
                    	var menupath=nui.get("menupath").value+".xlsx";
                    	var json=nui.encode({name:menupath});
                    	var ty="";
		            	$.ajax({
		                    url:"com.cgn.itmp.systemset.tsymenubiz.countname.biz.ext",
		                    type:'POST',
		                    data:json,
		                    async:false, 
		                    cache:false,
		                    contentType:'text/json',
		                    success:function(text){
		                    	 ty=text.type;
		                    }
		                });
		                
		                return ty;
                }

                    //页面间传输json数据
                    function setFormData(data){
                    	
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
						pageType=infos.pageType;
						if (pageType == "add") {
							var first=infos.first;
							nui.get("firstmenu").setValue(first);
						}
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
						
                        //如果是点击编辑类型页面
                        if (pageType == "edit") {
                        	nui.get("menupath").enabled=false;
                        	nui.get("firstmenu").enabled=false;
                        	nui.get("twolevelmenu").enabled=false;
                        	nui.get("menuname").enabled=false;
                        	
                        
                            var json = infos.record;
                            nui.get("fj").setValue(json.tsymenu.menupath);
							nui.get("fj").setText(json.tsymenu.menupath);
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
                    function fileContinue(e){
                    	fileName = e.file.name;
                 		filePath = nui.decode(e.serverData).ret.filePath;
                 		var json = {};
                 		if (pageType == "add") {
                 			json.filename = nui.get("menupath").value+".xlsx";
                 		}else{
                 			json.filename = nui.get("menupath").value;
                 		}
                 		json.filepath = filePath;
                 		json = nui.encode(json);
                 		$.ajax({
                            url: "com.cgn.itmp.basecommon.FileComp.templatefile.biz.ext",
                            type: 'POST',
                            data: json,
                            cache: false,
                            contentType: 'text/json',
                            success: function (text) {
//                             	file.record.fildid = text.fileid;
                            }
                        });
                    
                    }
					//文件上传的
					function fileSub(file){
						fileall=file;
			    		nui.get("enclosure").setValue(file.value.substring(file.value.lastIndexOf("\\")+1));
					}  


					 function onfileselect(e) {
                    	
			    		nui.get("enclosure").setValue(file.value.substring(file.value.lastIndexOf("\\")+1));
//                         startUpload(e);
                    }

                    function startUpload(e) {
                    	
                        var fileupload = e.sender;
                        
                        fileupload.startUpload();
                    }

                  //上传成功时，回写附件的name、id
                    function onUploadSuccess(e) {
                    	fileall=e;
             			
                    }
                    
                    //取消
                    function onCancel() {
                        CloseWindow("cancel");
                    }
                </script>
            </body>
        </html>
