<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-11-05 11:20:56
- Description:锅炉录入
    --%>
    <head>
        <title>
            锅炉录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
					 <script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
					 <style type="text/css">
	textarea{
overflow:auto;
}
.progress .progress-item {
     height: 5px;
     background: chartreuse;
     border-radius:5px;
 }
</style>
    </head>
    <body>
        <!-- 标识页面是查看(query)、修改(edit)、新增(add) -->
        <input name="pageType" class="nui-hidden"/>
        <div id="dataform1" style="padding-top:5px;">
            <!-- hidden域 -->
            <input class="nui-hidden" name="boiler.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
            <input class="nui-hidden" name="boiler.uuid"/>
            <input class="nui-hidden" id="equipmentdiagramfileid" name="boiler.equipmentdiagramfileid"/>
            <input class="nui-hidden" id="thicknessmeasurefileid" name="boiler.thicknessmeasurefileid"/>
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        基地:
                    </td>
                    <td colspan="1">
                        <input id="jd" class="nui-combobox"  style="width:100%" name="boiler.jd" url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext" 
                        textField="name" readonly="readonly" dataField="jsonObject" id="jd" valueField="id" onvaluechanged="reloadJz" />
                    </td>
                    <td class="form_label">
                        机组:
                    </td>
                    <td colspan="1">
                    <input class="nui-combobox" readonly="readonly"  name="boiler.jz" required="true" requiredErrorText="机组不能为空" 
                        dataField="jsonObject" id="jz" textField="name" url="" valueField="id" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        设备类型:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入设备类型" required="true" requiredErrorText="设备类型不能为空"  name="boiler.equipmenttype" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        设备名称:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入设备名称" required="true" requiredErrorText="设备名称不能为空" name="boiler.equipmentname" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        系统:
                    </td>
                    <td colspan="1">
                        <input id="system" required="true" requiredErrorText="系统不能为空" emptyText="请选择系统"
                        class="nui-dictcombobox" dictTypeId="GLXT" name="boiler.system" style="width:100%"/>
                    </td>
                
                    <td class="form_label">
                        设备编号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入设备编号" required="true" requiredErrorText="设备编号不能为空" name="boiler.equipmentnumber" style="width:100%"/>
                    </td>
            </tr>
                <tr>
                    <td class="form_label">
                        设备型号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入设备型号" required="true" requiredErrorText="设备型号不能为空"  name="boiler.equipmentmodel" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        锅炉登记卡:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)"  name="boiler.boilerregistrationcard" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        制造单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.manufacturingunit" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        设备示意图:
                    </td>
                    <td colspan="1">
                   							<div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
                    <div style="display: flex;">
						<input class="nui-textbox" style="width:100%" readonly="readonly" id="equipmentdiagramname" name="boiler.equipmentdiagram" />
						<form id="uploadform" enctype="multipart/form-data">
							<input id="equipmentdiagram" class="" style="width:70px" type="file" name="boiler.equipmentdiagram" accept="*" onchange="fileSub(this)"> 
						</form>
					</div>
                    </td>
                    
                    <td class="form_label">
                        主体材质:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.mainmaterial" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        主体厚度(mm):
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.mainbodythickness" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        安装单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.installationunit" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        测厚布点图:
                    </td>
                    <td colspan="1">
                    							<div id="progress2" class="progress" style="display:none;background:chartreuse;">
								        <div class="progress-item"></div>
							 </div>
	                   <div style="display: flex;">
							<input class="nui-textbox" style="width:100%" readonly="readonly" id="thicknessmeasurementpointlayoutname" name="boiler.thicknessmeasurementpointlayout" />
							<form id="uploadform1" enctype="multipart/form-data">
								<input id="thicknessmeasurementpointlayout" class="" style="width:70px" type="file" name="boiler.thicknessmeasurementpointlayout" accept="*" onchange="fileSub1(this)"> 
							</form>
						</div>
                    </td>
                    <td class="form_label">
                        产权单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.propertyunit" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        使用单位:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.useunit" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        组织机构代码:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.organizationcode" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        邮政编码:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.postalcode" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        额定出力:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.ratedoutput" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        额定压力（Mpa）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.ratedpressure" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        额定温度（℃）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.ratedtemperature" style="width:100%"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        工作压力（Mpa）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.workingpressure" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        出口温度（℃）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.outlettemperature" style="width:100%"/>
                    </td>
                    <td class="form_label">
                        回流温度（℃）:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,false,true)" name="boiler.refluxtemperature" style="width:100%"/>
                    </td>
             	</tr>
                <tr>       
                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="5">
                        <input class="nui-textarea" onvalidation="hasIllegalChar(e,4000,false,true)" name="boiler.remarks" style="width:100%"/>
                    </td>
                    <input value="0" class="nui-hidden" name="boiler.isdel" />
                </tr>
           <tr class="changeReason_yy" style="display: none;">
				<td class="form_label">修改原因:</td>
				<td colspan="5"><input class="nui-textarea" style="width:100%" onvalidation="hasIllegalChar(e,4000,false,true)"
				required="true" requiredErrorText="请输入名称"
					name="boiler.changeReasons" /></td>
			</tr>
			<tr class="changeReasons" style="display: none;">
			<td class="form_label">校核人员</td>
					 <td colspan="5">
                        <input  class="nui-buttonedit" readonly="readonly" onclick="onButtonSelectPerson" id="jhry"  name="jhry"  textField="empname" style="width:100%" url=""  required="true" requiredErrorText="请选择校核人员"  valueField="empid"/>
                    </td>
				</tr>
				<tr  class="changeReasons">
				<td class="form_label" colspan="1"
					style="width: 16% !important; text-align: center">选择抄送人员:</td>
				<td colspan="5"><input property="editor" name="ccry" id="ccry" multi="true"
					name="copyperson" class="nui-textboxlist" dataField="list"
					style="width: 100%; height: 100%;"
					url="com.cgn.components.coframe.tools.UserManager.getUserByWords.biz.ext"
					valueField="empcode" textField="empcodename" ScrollBar="Vertical"
					searchField="keyword" /></td>
			</tr>
            </table>
            <div class="nui-toolbar" style="padding:0px;" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align: center;" colspan="4"><a
						class="nui-button btn btn-default btn-xs" id="savebt"  onclick="onOk('manualActivity')"> 保存 </a> 
						<a
						class="nui-button btn btn-default btn-xs" id="submitbt"  onclick="onOk('manualActivity')"> 提交 </a>
						<span
						style="display: inline-block; width: 25px;"> </span>
						<a class="nui-button btn btn-default btn-xs" onclick="onOk('')" id="btnSave">
			                   保存至草稿
			                    </a>  <span
						style="display: inline-block; width: 25px;"> </span> <a
						class="nui-button"  onclick="onCancel()">
							关闭 </a>
							</td>
                    </tr>
                </table>
            </div>
        </div>
        <script type="text/javascript">
            nui.parse();
            var equipmentdiagramfileid="";
            var thicknessmeasurefileid="";
            var isadmin = "<%=request.getSession().getAttribute("isadmin") %>";
            	
			var jdid = getCookie('jdid');
		    var jzid = getCookie('jzid');
		    nui.get("jd").setValue(jdid);
			nui.get('jz').setAjaxType("POST");
			nui.get('jz').load("com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="+ jdid);
			nui.get("jz").setValue(jzid);
		
			
            function saveData(finishFirstActivityId){
                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.conventionalislandand.boilerbiz.addWorkBoiler.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(finishFirstActivityId!=""){
                
                	form.validate();
             		 if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
                }
                var data = form.getData(false,true);
                
                data.boiler.jhry= nui.get("jhry").text;
				data.boiler.ccry = nui.get("ccry").value;
				
				data.boiler.equipmentdiagram = nui.get("equipmentdiagramname").value;
				if(equipmentdiagramfileid==""){
				}else{
				data.boiler.equipmentdiagramfileid = equipmentdiagramfileid;
				}
			
				data.boiler.thicknessmeasurementpointlayout = nui.get("thicknessmeasurementpointlayoutname").value;
				if(thicknessmeasurefileid==""){
				}else{
				data.boiler.thicknessmeasurefileid = thicknessmeasurefileid;
				}
				    
                var json = nui.encode(data);
                if(pageType=="edit"){
                
                urlStr = "com.cgn.itmp.conventionalislandand.boiler_modifbiz.workBoiler.biz.ext";
                var allInfo = {};
		        allInfo.data = data.boiler;
		        allInfo.isadmin=isadmin;
		        allInfo.finishFirstActivityId = finishFirstActivityId;
		        allInfo.processInstName = "基础技术信息_锅炉_修改";
		        allInfo.processInstDesc = "基础技术信息_锅炉_修改";
		        allInfo.processDefName = "com.cgn.itmp.conventionalislandand.boilerworkflow";
 		        allInfo.jhry = nui.get("jhry").text;
			   	allInfo.ccry = nui.get("ccry").value;
			   	 
				json = nui.encode(allInfo);
                }else if(pageType=="add"){
                 var allInfo = {};
              
		        allInfo.data = data.boiler;
		        allInfo.isadmin=isadmin;
		        allInfo.finishFirstActivityId = finishFirstActivityId;
		        allInfo.processInstName = "基础技术信息_锅炉_新增";
		        allInfo.processInstDesc = "基础技术信息_锅炉_新增";
		        allInfo.processDefName = "com.cgn.itmp.conventionalislandand.addboilerworkflow";
 		        allInfo.jhry = nui.get("jhry").text;
			   	allInfo.ccry = nui.get("ccry").value;
                json = nui.encode(allInfo);
                }
                nui.get("#savebt").setEnabled(false);//置灰色
                nui.get("#submitbt").setEnabled(false);//置灰色
				nui.get("#btnSave").setEnabled(false);//置灰色
                $.ajax({
                    url:urlStr,
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        var returnJson = nui.decode(text);
                        if(returnJson.exception == null){
                        	if(isadmin=="true"){
                        		nui.alert("保存成功", "系统提示", function(action){
                            if (action == "ok" || action == "close") {
                            		CloseWindow("saveSuccess");
                            	}
                            });
                        	}else{
                        		nui.alert("提交成功", "系统提示", function(action){
                            	if (action == "ok" || action == "close") {
                            		CloseWindow("saveSuccess");
                            	}
                            });
                        	}
                        }else{
                         nui.get("#savebt").setEnabled(true);//置灰色
                         nui.get("#submitbt").setEnabled(true);//置灰色
						nui.get("#btnSave").setEnabled(true);//置灰色
                            nui.alert("保存失败", "系统提示", function(action){
                                if(action == "ok" || action == "close"){
                                    CloseWindow("saveFailed");
                                }
                                });
                            }
                        },error: function (jqXHR, textStatus, errorThrown) {
							 nui.alert(jqXHR.responseText,'错误',function (action) {
									  nui.get("#savebt").setEnabled(true);//置灰色
			                         nui.get("#submitbt").setEnabled(true);//置灰色
									nui.get("#btnSave").setEnabled(true);//置灰色
							});
						 }
                        });
                    }

                    //页面间传输json数据
                    function setFormData(data){
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
                        var json = infos.record;
						 nui.get('userToken').setValue("<%=TokenUtil.getTokenString(request.getSession())%>");
                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                       	if(isadmin == "true"){
                       	
                       			$(".changeReason_yy").hide();
								$(".changeReasons").hide();
								
								$("#btnSave").hide();
								$("#submitbt").hide();
								$("#savebt").show();
								
							}else{
								$("#btnSave").show();
								$("#submitbt").show();
								$("#savebt").hide();
								$(".changeReasons").show();
								$(".changeReason_yy").show();
							}
                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                       }else{
							if(isadmin == "true"){
								$(".changeReason_yy").hide();
								$(".changeReasons").hide();
								$("#btnSave").hide();
								$("#submitbt").hide();
								$("#savebt").show();
							}else{
								$("#btnSave").show();
								$("#submitbt").show();
								$(".changeReasons").show();
								$(".changeReason_yy").hide();
								$("#savebt").hide();
							}
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
                    function onOk(finishFirstActivityId) {
                        saveData(finishFirstActivityId);
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
							nui.get("equipmentdiagramname").setValue(data.list[0].name);
							nui.get("equipmentdiagramfileid").setValue(data.list[0].uri);
							equipmentdiagramfileid = data.list[0].uri;
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
		function fileSub1(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress2").css('display','');
			document.querySelector("#progress2 .progress-item").style.width = "0%";
//         		if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
//         			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
//                      return false;  
//                  }
   	    		$("#uploadform1").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		           url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
				processData: false, 
		        contentType: false, 
		        xhr: function() {   
		            var xhr = $.ajaxSettings.xhr();
		            if (xhr.upload) {
		                xhr.upload.addEventListener('progress2', function(event) {
		                    var percent = Math.floor(event.loaded / event.total * 100);
		                    document.querySelector("#progress2 .progress-item").style.width = percent + "%";
		                    
		                }, false);
		            }
		            return xhr;
		        },
					success : function(data) {
						if (data.code == 1) {
							nui.get("thicknessmeasurementpointlayoutname").setValue(data.list[0].name);
							nui.get("thicknessmeasurefileid").setValue(data.list[0].uri);
							thicknessmeasurefileid = data.list[0].uri;
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
		//显示图片预览
    	function showimage(uri){
    		 ;
    		 var div = document.getElementById('imageBox');
    		 div.innerHTML ='<img id=imghead>';
             var img = document.getElementById('imghead');
             img.width  =125;
             img.height =50;
             img.src ="<%=request.getContextPath()%>/coframe/tools/preview.jsp?remoteFile="+uri; 
    	}
                </script>
            </body>
        </html>
