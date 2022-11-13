<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-05 16:09:08
- Description:
    --%>
    <head>
        <title>
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <script src="<%=request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="entity.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken" >
            <div class="nui-hidden" name="weldingassessment.uuid">
            </div>
            <input class="nui-hidden" name="weldingassessment.uuid"/>
            <input class="nui-hidden" name="weldingassessment.fileid" id="fileid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                <td class="form_label">
                      基地
                    </td>
                    <td colspan="1">                        
                      <input id="jd" class="nui-combobox" style="width:100%; name="weldingassessment.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
                    </td>
                    <td class="form_label" colspan="2"></td>
                </tr>
                
                <tr>
                <td class="form_label">
                        工艺评定报告号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" emptyText="请输入工艺评定报告号" style="width:100%;" required="required" requiredErrorText="此项不能为空"  name="weldingassessment.assessmentid"/>
                    </td>
                 <td class="form_label">
                        报告名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" style="width:100%;"  emptyText="请输入报告名称" required="required" requiredErrorText="此项不能为空" name="weldingassessment.assessmentname"/>
                        <input class="nui-hidden" name="weldingassessment.isdel" value="0"/>
                    </td>
                
                    
                </tr>
                <tr>
                <td class="form_label">
                        版本:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入版本" style="width:100%;" required="required" requiredErrorText="此项不能为空" name="weldingassessment.edition"/>
                    </td>
                <td class="form_label">
                        评定单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" emptyText="请输入评定单位" style="width:100%;" required="required" requiredErrorText="此项不能为空" name="weldingassessment.assessmentunit"/>
                    </td>
                    </tr>
                <tr>
                  <td class="form_label">
                        接头形式:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,100,true,true)" emptyText="请输入接头形式" style="width:100%;" required="required" requiredErrorText="此项不能为空" name="weldingassessment.joint"/>
                    </td>
                    <td class="form_label">
                        焊接方法:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)"  emptyText="请输入焊接方法"  style="width:100%;" required="required" requiredErrorText="此项不能为空" name="weldingassessment.method"/>
                    </td>
                </tr>
               
                
                <tr>
               <td class="form_label">
                        评定位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;" emptyText="请输入评定位置"  onvalidation="hasIllegalChar(e,255,true,true)" required="required" requiredErrorText="此项不能为空" name="weldingassessment.position"/>
                    </td>
                   <td class="form_label">
                       规格:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width:100%;" emptyText="请输入规格" onvalidation="hasIllegalChar(e,255,true,true)" required="required" requiredErrorText="此项不能为空" name="weldingassessment.specifications"/>
                    </td>
                   
                
                   
                   </tr>
                <tr> 
                 <td class="form_label">
                     制造级别:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" emptyText="请输入制造级别" style="width:100%;" required="required" requiredErrorText="此项不能为空" onvalidation="hasIllegalChar(e,100,true,true)" name="weldingassessment.level"/>
                    </td> 
                    <td class="form_label">
                       附件:
                    </td>
                    
                    <td  colspan="1" style="text-align:center">
                    <div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
							<div style="display: flex;">
								<input class="nui-textbox" style="width:100%"  id="fj" name="weldingassessment.fj" readonly="readonly" onvalidation="hasIllegalChar(e,255,false,true)"/>
								<form id="uploadform" enctype="multipart/form-data">
									<input id="fj" class="" style="width:100%" type="file" name="weldingassessment.fj" accept="*" onchange="fileSub(this)"> 
								</form>
							</div>
                       
                    </td>
                    
                    </tr>
                    <tr>
                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" style="width:100%;"  onvalidation="hasIllegalChar(e,255,false,true)" name="weldingassessment.remark"/>
                    </td></tr>
                
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button"  id="savebt"  onclick="onOk()">
                                保存
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button"   onclick="onCancel()">
                                关闭
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            
            var fj="";
            var jzid = parent.nui.get("jzid").getValue();
        	var jdid = parent.nui.get("jdid").getValue();
        	nui.get("jd").setValue(jdid);
        	

            function saveData(){
                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.weldingmanagement.weldingassessmentbiz.addWeldingAssessment.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.weldingmanagement.weldingassessmentbiz.updateWeldingAssessment.biz.ext";
                }
                form.validate();
                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
				
                var data = form.getData(false,true);
                data.weldingassessment.jd=jdid;
                
                data.weldingassessment.fileid = nui.get("fileid").value;
				if(fj==""){
				}else{
				data.weldingassessment.fj = nui.get("fj").value;
				}
                
                var json = nui.encode(data);
				
				nui.get("#savebt").setEnabled(false);//置灰色
                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                            if(pageType=="add"){
                        	CloseWindow("addSuccess");
                        	}else if(pageType=="edit"){
                        		CloseWindow("updateSuccess");
                        	}
                        }else{
                            nui.alert("保存失败", "系统提示", function(action){
                            nui.get("#savebt").setEnabled(true);//恢复
                                if(action == "ok" || action == "close"){
                                    //CloseWindow("saveFailed");
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							  nui.get("#savebt").setEnabled(true);//恢复
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
                    function onOk() {
                        saveData();
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
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
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
							nui.get("fj").setValue(data.list[0].name);
							nui.get("fileid").setValue(data.list[0].uri);
							fj = data.list[0].uri;
							showimage(data.list[0].uri);
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} else {
				nui.alert("请上传图片");
				return false;
			}
		} 
                </script>
            </body>
        </html>
