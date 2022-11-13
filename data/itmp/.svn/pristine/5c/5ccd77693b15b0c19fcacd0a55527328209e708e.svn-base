<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): LENOVO
- Date: 2019-08-12 13:45:01
- Description:
    --%>
    <head>
        <title>
         	  焊机新增
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
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
            <div class="nui-hidden" name="machine.uuid">
            </div>
            <input class="nui-hidden" name="machine.uuid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                 <tr>
                <td class="form_label">
                      基地
                    </td>
                    <td colspan="1">                        
                      <input id="jd" class="nui-combobox" style="width: 100%" name="machine.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" required="true" valueField="id" onvaluechanged="reloadJz" />
                    </td>
                    <td class="form_label" colspan="2">
<!--                       机组 -->
                    </td>
<!--                     <td colspan="1"> -->
<!--                         <input class="nui-combobox" style="width: 100%" name="machine.jz" required="true" requiredErrorText="机组不能为空"  -->
<!--                         dataField="jsonObject" readonly="readonly" id="jz" textField="name" url="" valueField="id"/> -->
<!--                     </td> -->
                    
                </tr>
                <tr>
                    <td class="form_label">
                        设备编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入设备编号" style="width: 100%" name="machine.number" required="true" requiredErrorText="设备编号不能为空" />
                    </td>
                
                    <td class="form_label">
                        设备名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入设备名称" style="width: 100%" name="machine.name" required="true" requiredErrorText="设备名称不能为空"/>
                    </td>
                 </tr>
                <tr>   <td class="form_label">
                        设备型号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入设备型号"  style="width: 100%" name="machine.equipmenttype" required="true" requiredErrorText="设备型号不能为空"/>
                    </td>
               
                    <td class="form_label">
                        输入电压:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" emptyText="请输入输入电压" onvalidation="hasIllegalChar(e,255,true,true)" style="width: 100%" name="machine.input" required="true" requiredErrorText="输入电压不能为空"/>
                    </td>
                   </tr>
                <tr>  <td class="form_label">
                        电流调节范围:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" emptyText="请输入电流调节范围" onvalidation="hasIllegalChar(e,255,true,true)" style="width: 100%" name="machine.currentrange" required="true" requiredErrorText="电流调节范围不能为空"/>
                    </td>
                
                    <td class="form_label">
                        生产厂家:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" emptyText="请输入生产厂家" onvalidation="hasIllegalChar(e,255,true,true)" style="width: 100%" name="machine.manufacturer" required="true" requiredErrorText="生产厂家不能为空"/>
                    </td>
                  </tr>
                   <tr>
                	<td class="form_label">
                       	 设备合格证明书<br />（请上传附件）:
                    </td>
                    <td colspan="3">
                    <div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
                        <div style="display: flex;">	
							<input id="certificate" class="nui-textbox" readonly="readonly"  onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请上传附件"  style="width: 100%" name="machine.certificate" />
							<input id="fileid" style="display: none" class="nui-textbox" name="machine.fileid" />
							<form id="uploadform" enctype="multipart/form-data">
								<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)"> 
							</form>
						</div>
                    </td>
                </tr>
                <tr> 
                 <td class="form_label">
                         检定有效期:
                    </td>
                    <td colspan="1">
                     <input class="nui-datepicker" emptyText="请选择检定有效期" style="width: 100%" name="machine.verification" required="true" showClose="true"
									oncloseclick="this.setValue(null);" allowInput="false" requiredErrorText="检定有效期不能为空"/>
                    </td>
                    <td class="form_label">
                   状态:    
                    </td>
                    <td colspan="1">
                       <input class="nui-dictcombobox" emptyText="请选择状态" onvaluechanged="onvalue1" id="stu" style="width: 100%" dictTypeId="HJGLZT" name="machine.state" required="true" requiredErrorText="状态不能为空"/>
                    </td>
                </tr>
               
                <tr>
                    <td class="form_label">
                        所在位置:
                    </td>
                    <td colspan="3" id="sss">
                        <input class="nui-dictcombobox" readonly="readonly" textField="text" valueField="id" id="szlocation" style="width: 100%;" name="machine.location" />
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" style="width: 100%;" onvalidation="hasIllegalChar(e,4000,false,true)" name="machine.remark" />
                    </td>
                   
                </tr>
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button" id="savebt" onclick="onOk()">
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
        	var jdid = parent.nui.get("jdid").getValue();
        	nui.get("jd").setValue(jdid);
        	
        	function onvalue1(e){
        		if(e.value=="ZKZ"){
        			document.getElementById("sss").innerHTML='<input class="nui-dictcombobox" dictTypeId="SZWZ" style="width: 100%;" name="machine.location" />';
        			nui.parse();
        		}else{
	        		document.getElementById("sss").innerHTML='<input class="nui-combobox" readonly="readonly" style="width: 100%;" name="machine.location" />';
	        		nui.parse();
        		}
        	}
        	
            function saveData(){

                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.weldingmanagement.machinebiz.addMachine.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.weldingmanagement.machinebiz.updateMachine.biz.ext";
                }
                form.validate();
                if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}

                var data = form.getData(false,true);
				/* delete data.machine["createtime"]; */
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
                        var json = infos.record;
                         var form = new nui.Form("#dataform1");//将普通form转为nui的form
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {

							if(json.machine.state=='ZKZ'){
								document.getElementById("sss").innerHTML='<input class="nui-dictcombobox" dictTypeId="SZWZ" style="width: 100%;" name="machine.location" />';
			        			nui.parse();
							}
                            form.setData(json);
                            form.setChanged(false);
                        }else if(infos.pageType == "show"){
                       		 if(json.machine.state=='ZKZ'){
								document.getElementById("sss").innerHTML='<input class="nui-dictcombobox" dictTypeId="SZWZ" style="width: 100%;" name="machine.location" />';
			        			nui.parse();
							}
                        	form.setData(json);
                            form.setChanged(false);
                            $("#savebt").hide();
                            $(".mini-buttonedit-buttons").hide();
                            $("#uploadform").hide();
                            if(json.machine.certificate != null){
                            	$("#certificate").find("span").find("input").css("color","blue").css("text-decoration","underline").css("cursor","pointer");
								$("#certificate").bind("click",function(){
							       download(json.machine.fileid,json.machine.certificate);
							    });
                            }
						    //设置表单只读模式
                            labelModel(form);
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
// 				日历点击input框弹出日历
					 function onDrawDate(e) {
				            var date = e.date;
				            var d = new Date();
				
				            if (date.getTime() < d.getTime()) {
				                e.allowSelect = false;
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
										nui.get("certificate").setValue(data.list[0].name);
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
