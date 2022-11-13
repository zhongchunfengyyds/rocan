<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-12-09 19:17:26
- Description:
    --%>
    <head>
        <title>
            常规岛_缺陷显示跟踪与处理录入
        </title>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
      <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"> </script>
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
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="tinspectdefectnotice.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
            <div class="nui-hidden" name="tinspectdefectnotice.uuid">
            </div>
            <div class="nui-hidden" name="tinspectdefectnotice.isdel" value="0">
            </div>
            <input class="nui-hidden" name="tinspectdefectnotice.uuid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                 <tr>
                    <td class="form_label">
                        基地:
                    </td>
                    <td colspan="1">
                             <input id="jd" class="nui-combobox" name="tinspectdefectnotice.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                          textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        机组:
                    </td>
                    <td colspan="1">
                          <input class="nui-combobox" name="tinspectdefectnotice.jz" emptyText="请选择机组" required="true" requiredErrorText="机组不能为空" 
                        dataField="jsonObject" readonly="readonly" id="jz" textField="name" url="" valueField="id" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        机组状态:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" onvaluechanged="onValuechanged"  value="大修(O)" dictTypeId="JZZT" name="tinspectdefectnotice.jzstate" style="width:100%" emptyText="请选择机组状态" required="true" requiredErrorText="机组状态不能为空"/>
                    </td>
                    <td class="form_label">
                        大修轮次:
                    </td>
                    <td colspan="1" id="dxlc">
                        
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        设备类型:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" dictTypeId="JYLB" name="tinspectdefectnotice.equipmenttype"  emptyText="请输入设备类型" required="true" requiredErrorText="设备类型不能为空"  style="width:100%"/>
                    </td>
                    <td class="form_label">
                        工作票号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入工作票号" required="true" requiredErrorText="工作票号不能为空"  name="tinspectdefectnotice.workticketnumber" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        工作内容:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入工作内容" required="true" requiredErrorText="工作内容不能为空"  name="tinspectdefectnotice.workcontent" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        工作负责人:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="tinspectdefectnotice.workchargeperson" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        检查方法:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" emptyText="请选择检查方法" required="true" requiredErrorText="检查方法不能为空"  dictTypeId="CGJCFF" name="tinspectdefectnotice.inspectionmethod" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        通知单号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入通知单号" required="true" requiredErrorText="通知单号不能为空" name="tinspectdefectnotice.noticenumber" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        标题:
                    </td>
                    <td colspan="3">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入标题" required="true" requiredErrorText="标题不能为空" name="tinspectdefectnotice.title" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        描述:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,true,true)" emptyText="请输入描述" required="true" requiredErrorText="描述不能为空" name="tinspectdefectnotice.describe" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        功能位置:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入功能位置" required="true" requiredErrorText="功能位置不能为空" name="tinspectdefectnotice.functionallocation" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        创建日期:
                    </td>
                    <td colspan="1">
                    <input class="nui-datepicker" name="tinspectdefectnotice.createdate" showClose="true" emptyText="请选择创建日期"
									oncloseclick="this.setValue(null);" allowInput="false" style="width: 100%;" showTodayButton="true" showClearButton="true"  format="yyyy-MM-dd"  showTime="true"  required="true" requiredErrorText="创建日期不能为空" />
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        当前状态:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" value="CRTD" emptyText="请选择当前状态" required="true" requiredErrorText="当前状态不能为空" dictTypeId="QXDQZT" name="tinspectdefectnotice.currentstatus" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        责任部门:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="tinspectdefectnotice.responsibledepartment" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        处理过程:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,false,true)" name="tinspectdefectnotice.process" style="width:100%"/>
                    </td>
                    </tr>
                <tr>
                    <td class="form_label">
                        处理结果:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,false,true)" name="tinspectdefectnotice.processresult" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        在役检查策略调整:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,false,true)" name="tinspectdefectnotice.strategyadjustment" style="width:100%"/>
                    </td>
                  </tr>
                <tr>  
                    <td class="form_label">
                        无损检测方法优化:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,false,true)" name="tinspectdefectnotice.nondestructive" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        责任人:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="tinspectdefectnotice.responsibleperson" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        附件:
                    </td>
                    <td colspan="1">
                    <div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
							<div style="display: flex;">	
								<input id="fj" class="nui-textbox"  readonly="readonly" style="width: 100%" name="tinspectdefectnotice.fj" />
								<input id="fildid" style="display: none" class="nui-textbox" name="tinspectdefectnotice.fildid" />
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
                            <a class="nui-button btn btn-default btn-xs" id="savebt1" onclick="onOk()">
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
			var fildid = "";
		var jdid = getCookie('jdid');
	    var jzid = getCookie('jzid');
	    nui.get("jd").setValue(jdid);
		nui.get('jz').setAjaxType("POST");
		nui.get('jz').load("com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="+ jdid);
		nui.get("jz").setValue(jzid);
		
		// 		大修选日常不可编辑
		function onValuechanged(e){
			let value=e.value;
			if(value=="日常(N)"){
			document.getElementById("dxlc").innerHTML="<input class='nui-textbox' enabled='false' onvalidation='hasIllegalChar(e,255,true,true)' name='tinspectdefectnotice.overhaulrounds' style='width:100%'/>";
			nui.parse();
			}else{
			document.getElementById("dxlc").innerHTML="<input class='nui-textbox' emptyText='请输入大修轮次' onvalidation='hasIllegalChar(e,255,true,true)' required='true' name='tinspectdefectnotice.overhaulrounds' style='width:100%'/>";
			nui.parse();
			}
		}
						
			
            function saveData(){

                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.tinspectdefectnoticebiz.addTInspectDefectNotice.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.inspectcomponentmanage.conventionalislandand.defectdataset.tinspectdefectnoticebiz.updateTInspectDefectNotice.biz.ext";
                }
                form.validate();
               if (form.isValid() == false) {
	     		nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
	     		return;
			    }	
				nui.get("#savebt1").setEnabled(false);//置灰色
			    
                var data = form.getData(false,true);
                data.jd=jdid;
                data.jz=jzid;
                data.tinspectdefectnotice.fj = nui.get("fj").value;
				if(fildid==""){
				}else{
					data.tinspectdefectnotice.fildid = fildid;
				}
                var json = nui.encode(data);

                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                    nui.get("#savebt1").setEnabled(true);//置灰色
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                            CloseWindow("saveSuccess");
                        }else{
                        nui.get("#savebt1").setEnabled(true);//置灰色
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    //CloseWindow("saveFailed");
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									nui.get("#savebt1").setEnabled(true);//置灰色
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
					if(infos.pageType == "add"){
						document.getElementById("dxlc").innerHTML="<input class='nui-textbox' emptyText='请输入大修轮次' onvalidation='hasIllegalChar(e,255,true,true)' required='true' name='tinspectdefectnotice.overhaulrounds' style='width:100%'/>";
						nui.parse();
					}
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            var json = infos.record;
							
							if(json.tinspectdefectnotice.jzstate=='日常(N)'){
								json.tinspectdefectnotice.overhaulrounds="";
								document.getElementById("dxlc").innerHTML="<input class='nui-textbox' enabled='false' onvalidation='hasIllegalChar(e,255,true,true)' name='tinspectdefectnotice.overhaulrounds' style='width:100%'/>";
								nui.parse();
							}else{
								document.getElementById("dxlc").innerHTML="<input class='nui-textbox' emptyText='请输入大修轮次' onvalidation='hasIllegalChar(e,255,true,true)' required='true' name='tinspectdefectnotice.overhaulrounds' style='width:100%'/>";
								nui.parse();
							}
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
									nui.get("fj").setValue(data.list[0].name);
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
