<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
- Author(s): jirukang
- Date: 2019-10-31 15:31:40
- Description:役检结果数据管理录入
    --%>
    <head>
        <title>
            役检结果数据管理录入
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
        </script>
        <link type="text/css"
	href="<%=request.getContextPath()%>/css/themes/table.css"
	rel="stylesheet" />
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/swfupload/swfupload.js"></script>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/themes/default/css/mdialog.css" />
        <script src="<%= request.getContextPath() %>/scripts/mdialog.js"></script>
         <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
		<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
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
            <input class="nui-hidden" name="inspectionresultsmanagement.uuid"/>
            <input class="nui-hidden" id="fileid" name="inspectionresultsmanagement.fileid"/>
<!--             <input class="nui-hidden" id="fname" name="inspectionresultsmanagement.filename"/> -->
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
            
            	<tr>
			<td class="form_label" width="130">基地:</td>
			<td colspan="1"><input id="jd" class="nui-combobox"
				name="inspectionresultsmanagement.jd"
				url="com.cgn.itmp.basecommon.DictionaryOperation.getJdDicInfo.biz.ext"
				textField="name" readonly="readonly" dataField="jsonObject" id="jd"
				valueField="id" onvaluechanged="reloadJz" style="width: 100%" /></td>
			<td class="form_label" width="130">机组:</td>
			<td colspan="1"><input class="nui-combobox"
				name="inspectionresultsmanagement.jz" required="true"
				requiredErrorText="机组不能为空" dataField="jsonObject"
				readonly="readonly" id="jz" textField="name" url="" valueField="id"
				style="width: 100%" /></td>
		</tr>
                <tr>
                    <td class="form_label">
                        大修轮次:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" emptyText="请输入大修轮次" onvalidation="hasIllegalChar(e,255,true,true)" required="required" requiredErrorText="大修轮次不能为空" name="inspectionresultsmanagement.overhaulsequence" style="width: 100%"/>
                    </td>
                    <td class="form_label">
                        检查项目类型:
                    </td>
                    <td colspan="1">
                    <input class="nui-dictcombobox" style="width: 100%" onvalidation="hasIllegalChar(e,255,true,true)" onvaluechanged="checkvaluechanged" name="inspectionresultsmanagement.checkprojecttype" dictTypeId="JCXMLX" emptyText="请选择检查项目类型" required="required" requiredErrorText="检查项目类型不能为空"/>
                       <!--  <input class="nui-combobox"name="inspectionresultsmanagement.checkprojecttype"/> -->
                    </td>
                </tr>
                <tr> 
                
                    <td class="form_label">
                        设备名称:
                    </td>
                    <td colspan="1" id="sbmctd">
                        <input class="nui-textbox" style="width: 100%" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入设备名称" required="required" requiredErrorText="设备名称不能为空" name="inspectionresultsmanagement.equipmentname"/>
                    </td>
                    <td class="form_label">
                        部件名称:
                    </td>
                    <td colspan="1" id="bjmctd">
                        <input class="nui-textbox" style="width: 100%" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入部件名称" required="required" requiredErrorText="部件名称不能为空" name="inspectionresultsmanagement.componentname"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        项号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" style="width: 100%" onvalidation="hasIllegalChar(e,255,false,true)" name="inspectionresultsmanagement.itemnumber"/>
                    </td>
                    <td class="form_label">
                        工作票号:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" onvalidation="hasIllegalChar(e,255,true,true)" required="required" emptyText="请输入工作票号" style="width: 100%"
                         requiredErrorText="工作票号不能为空" name="inspectionresultsmanagement.workticketnumber"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        被检部位:
                    </td>
						<td colspan="1" id="bjtr" >
						<!-- <input id="bjbw" readOnly="readOnly" name="inspectionresultsmanagement.checklocation" class="nui-textbox" required="required" style="width: 50%" />
					  <a class="mini-button" onclick="openTree()">选择被检部位</a> -->
                       <input class="nui-textbox"  style="width: 100%" onvalidation="hasIllegalChar(e,255,true,true)" emptyText="请输入被检部位" name="inspectionresultsmanagement.checklocation" requiredErrorText="被检部位不能为空" required="required"/>
						</td>
                    </td>
                    <td class="form_label">
                        检查内容:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" required="required" emptyText="请输入检查内容" onvalidation="hasIllegalChar(e,4000,true,true)"
                         requiredErrorText="检查内容不能为空" style="width: 100%" name="inspectionresultsmanagement.inspectioncontent"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        检查方法:
                    </td>
                    <td colspan="1">
                        <input class="nui-dictcombobox" dictTypeId="YJJCFF" emptyText="请输入检查方法" style="width: 100%"  required="required"
                         requiredErrorText="检查方法不能为空" name="inspectionresultsmanagement.inspectionmethod"/>
                    </td>
                    <td class="form_label">
                        检验程序:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox" required="required" onvalidation="hasIllegalChar(e,255,true,true)" style="width: 100%" emptyText="请输入检验程序"
                         requiredErrorText="检验程序不能为空" name="inspectionresultsmanagement.inspectionprocedure"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        专用计划:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  style="width: 100%" onvalidation="hasIllegalChar(e,255,false,true)"
                          name="inspectionresultsmanagement.specialplan"/>
                    </td>
                    <td class="form_label">
                        检查综合报告:
                    </td>
                    <td colspan="1">
                        <input class="nui-textbox"  style="width: 100%" onvalidation="hasIllegalChar(e,255,false,true)"
                          name="inspectionresultsmanagement.inspectioncomprehensivereport"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        检查结果:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" required="required" onvalidation="hasIllegalChar(e,4000,true,true)" style="width: 100%" emptyText="请输入检查结果"
                         requiredErrorText="检查结果不能为空" name="inspectionresultsmanagement.examinationresult"/>
                    </td>
                     </tr>
                <tr>
                    <td class="form_label">
                        相关附表:
                    </td>
                    <td colspan="3">
                    <div id="progress" class="progress" style="display:none;">
								        <div class="progress-item"></div>
							 </div>
                    <div style="display: flex;">	
                    <input class="nui-textbox" style="width:90%;cursor: pointer;color: blue;" readonly="readonly" id="fj" name="inspectionresultsmanagement.fj" />
					<form id="uploadform1" enctype="multipart/form-data">
						<input id="fj" class="" style="width:72px" type="file" name="inspectionresultsmanagement.fj" accept="*" onchange="fileSub1(this)"> 
					</form>
						<input id="clearfj" onclick="clearfj()" class="" style="width:72px" type="button" value="清除附件"> 
					</div>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        备注:
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea"  onvalidation="hasIllegalChar(e,4000,false,true)" style="width: 100%" 
                          name="inspectionresultsmanagement.templeremark"/>
                    </td>
                    <input class="nui-hidden" name="inspectionresultsmanagement.isdel" value="0"/>
                     <input class="nui-hidden" id="orderno" name="inspectionresultsmanagement.orderno" value="1" />
                      <input class="nui-hidden" id="createtime" name="inspectionresultsmanagement.createtime" />
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
            var fileid="";
            var jdid = getCookie('jdid');
			var jzid = getCookie('jzid');
			nui.get("jd").setValue(jdid);
			nui.get('jz').setAjaxType("POST");
			nui.get('jz').load(
					"com.cgn.itmp.basecommon.DictionaryOperation.getJzDicInfoByjdid.biz.ext?jdid="
							+ jdid);
			nui.get("jz").setValue(jzid);

	       
	       function checkvaluechanged(e){
	       if(e.value=="GF"){
	       
	       	document.getElementById("bjtr").innerHTML="<input id='bjbw' readOnly='readOnly' emptyText='请选择被检部位' name='inspectionresultsmanagement.checklocation' class='nui-textbox' required='required'  requiredErrorText='被检部位不能为空' style='width: 100%' />"
					  +"<a class='mini-button' onclick='openTree()'>选择被检部位</a>";
		 	document.getElementById("sbmctd").innerHTML="<input id='sbmc'"
					 +"class='nui-textbox' readOnly='readOnly'" 
					+"name='inspectionresultsmanagement.equipmentname'"
					+"required='required' requiredErrorText='设备名称不能为空' emptyText='选择被检部位自动回填' style='width: 100%' />";
		   	
		   	document.getElementById("bjmctd").innerHTML="<input class='nui-textbox' id='bjmc' name='inspectionresultsmanagement.componentname'"
					 +"readOnly='readOnly'  requiredErrorText='部件名称不能为空' emptyText='选择被检部位自动回填' style='width: 100%' required='required'/>";		 
					  nui.parse();
	       }else{
	       	document.getElementById("bjtr").innerHTML="<input class='nui-textbox' emptyText='请输入被检部位' requiredErrorText='被检部位不能为空'  name='inspectionresultsmanagement.checklocation' required='required' style='width: 100%'/>";
	       		document.getElementById("sbmctd").innerHTML="<input class='nui-textbox' emptyText='请输入设备名称'  requiredErrorText='设备名称不能为空'  name='inspectionresultsmanagement.equipmentname' required='required' style='width: 100%'/>";
	       			document.getElementById("bjmctd").innerHTML="<input class='nui-textbox' emptyText='请输入部件名称'  requiredErrorText='部件名称不能为空'  name='inspectionresultsmanagement.componentname' required='required' style='width: 100%'/>";
	       	nui.parse();
	       }
	       }
	       //选择役检目录树被检部位
		function openTree(){
			var bjbw=nui.get("bjbw");//被检部位
			var sbmc=nui.get("sbmc");//设备名称
			var bjmc=nui.get("bjmc");//部件名称
			nui.open({showMaxButton : true,
					url:"/itmp/inspectcomponentmanage/defectdisplaymanagement/defectdisplaydetails/NewTree.jsp",
			        title: "目录树", width: 500, height:500,
			        onload: function () {//弹出页面加载完成
			        },
			        ondestroy: function (action) {//弹出页面关闭前
			        	var iframe = this.getIFrameEl();
			        	var treeData=iframe.contentWindow.getData();
			        	/* console.log(treeData) */
			        	if(typeof(treeData.tree)!="undefined"){
			        		bjbw.setValue(treeData.tree.text);
			        		bjmc.setValue(treeData.separentdata);
			        		sbmc.setValue(treeData.parentdata);
			        	}
			        	
		    		}
		    	});
		
		}
		
		function fileSub1(file){
    		var  fv=file.value;
    		if(fv){
    		$("#progress").css('display','');
			document.querySelector("#progress .progress-item").style.width = "0%";
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
							fileid = data.list[0].uri;
						} else {
							nui.alert("上传失败:" + data.message);
						}
					}
				});
			} 
			else {
// 				nui.alert("请上传图片");
				return false;
			}
		} 
		
	       
            function saveData(){

                var form = new nui.Form("#dataform1");
                form.setChanged(false);
                //保存
                var urlStr = "com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagementbiz.addInspectionresultsmanagement.biz.ext";
                var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
                //编辑
                if(pageType=="edit"){
                    urlStr = "com.cgn.itmp.inspectcomponentmanage.inspectionresultsmanagementbiz.updateInspectionresultsmanagement.biz.ext";
                }
                form.validate();
                 if(form.isValid()==false){nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});return;}
                var data = form.getData(false,true);
                data.inspectionresultsmanagement.fj = nui.get("fj").value;
				if(fileid==""){
				}else{
					data.inspectionresultsmanagement.fileid = fileid;
				}
                data.inspectionresultsmanagement.jd=jdid;
                data.inspectionresultsmanagement.jz=jzid;
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
                               nui.get("#savebt").setEnabled(true);//恢复
                            nui.alert("保存失败", "系统提示", function(action){
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
                    if(data.createtime){
                    	nui.get("createtime").setValue(data.createtime);
                    	nui.get("orderno").setValue(parseFloat(data.orderno)+0.001);
                    }
                        //跨页面传递的数据对象，克隆后才可以安全使用
                        var infos = nui.clone(data);
                            var json = infos.record;

                        //保存list页面传递过来的页面类型：add表示新增、edit表示编辑
                        nui.getbyName("pageType").setValue(infos.pageType);

                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
// 							nui.get("fileName").setText(json.inspectionresultsmanagement.fileRealName);
							if(json.inspectionresultsmanagement.checkprojecttype=="GF"){
									document.getElementById("bjtr").innerHTML="<input id='bjbw' readOnly='readOnly' name='inspectionresultsmanagement.checklocation' class='nui-textbox' required='required'  requiredErrorText='被检部位不能为空' style='width: 60%' />"
									+"<a class='mini-button' onclick='openTree()'>选择被检部位</a>";
						 			document.getElementById("sbmctd").innerHTML="<input id='sbmc'"
									+"class='nui-textbox' readOnly='readOnly'" 
									+"name='inspectionresultsmanagement.equipmentname'"
									+"required='required' requiredErrorText='设备名称不能为空'  style='width: 100%' />";
						   			document.getElementById("bjmctd").innerHTML="<input class='nui-textbox' id='bjmc' name='inspectionresultsmanagement.componentname'"
									+"readOnly='readOnly'  requiredErrorText='部件名称不能为空'  style='width: 100%' required='required'/>";		 
									nui.parse();
							}
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
                    function clearfj(){
                    	nui.get("fj").setValue("");
						nui.get("fileid").setValue("");
                    }
                </script>
            </body>
        </html>
