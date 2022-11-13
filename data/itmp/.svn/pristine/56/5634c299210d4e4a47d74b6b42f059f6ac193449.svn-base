<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): cuiK
- Date: 2019-01-09 10:27:20
- Description:
    --%>
    <head>
        <title>
             程序管理录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">        </script>
         <script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>

    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tcgndgglcxgl.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
            <input class="nui-hidden" name="tcgndgglcxgl.uuid"/>
            <input class="nui-hidden" id="fpath" name="tcgndgglcxgl.filepath"/>
            <input class="nui-hidden" id="fname" name="tcgndgglcxgl.filename"/>
			<input class="nui-hidden" id="fid" name="tcgndgglcxgl.fileid"/>  
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label" >
                        电站:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" required="true" requiredErrorText="电站不能为空" name="tcgndgglcxgl.dzid" disabled="disabled"/>
                    </td>
                    <td class="form_label">
                        机组:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  required="true" requiredErrorText="机组不能为空" name="tcgndgglcxgl.jzid"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" required="true" name="tcgndgglcxgl.name"/>
                    </td>
                    <td class="form_label">
                        类型:
                    </td>
                     <td colspan="1">
                        <input id="lx" class="nui-combobox" required="true" name="tcgndgglcxgl.lx" textField="text" valueField="value"/>
                        
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        简码:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" required="true" name="tcgndgglcxgl.jm" />
                    </td>
                    <td class="form_label">
                        程序编码:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" required="true" name="tcgndgglcxgl.cxbm"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        版本号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  vtype="int" intErrorText="请输入整数" required="true" name="tcgndgglcxgl.bbh"/>
                    </td>
                    <td class="form_label">
                        生效日期:
                    </td>
                    <td colspan="1">
                        <input class="nui-datepicker" name="tcgndgglcxgl.sxrq"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        责任人:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tcgndgglcxgl.zrr"/>
                    </td>
                    <td class="form_label">
                        编写单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" name="tcgndgglcxgl.bxdw"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        附件:
                    </td>
                    <td colspan="2">
                    	<input id="fileName" class="nui-fileupload nui-form-input" name="uploadFile" limitType="*.*" limitSize="100MB" flashUrl="<%=request.getContextPath() %>/js/swfupload/swfupload.swf" onfileselect="onfileselect" uploadUrl="<%=request.getContextPath() %>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"  onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess" style="width:100%;"/>
                    </td>
                 <td colspan="1">
          
                        <input class="nui-textbox" name="tcgndgglcxgl.isdelete"  value="0" visible="false"/>
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
            var arrearsData =[{ value: "技术程序", text: "技术程序"},
                      { value: "管理程序", text: "管理程序" }];
					 nui.get("lx").load(arrearsData); 

            function saveData(){

                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.outlineandplan.base.ProgramManagement.addTCgnDgglCxgl.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.outlineandplan.base.ProgramManagement.updateTCgnDgglCxgl.biz.ext";
                }
                form.validate();
                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}

                var data = form.getData(false,true);
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

                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
						nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            var json = infos.record;

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
