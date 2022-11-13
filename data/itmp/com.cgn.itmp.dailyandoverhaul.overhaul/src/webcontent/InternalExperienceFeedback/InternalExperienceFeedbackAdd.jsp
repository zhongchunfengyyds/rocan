<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	<%@ page import="com.cgn.itmp.basecommon.TokenUtil" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): Administrator
  - Date: 2019-10-22 19:20:29
  - Description:
-->
<head>
<title>新增内部经验反馈</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>	
</script>
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
<link rel="stylesheet" type="text/css"	href="<%=request.getContextPath()%>/css/themes/cuc/skin.css" />
<link rel="stylesheet" type="text/css"	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />

	
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
<link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>

<style type="text/css">
</style>
</head>

<body>
        <input name="pageType" class="nui-hidden"/>
		        <div id="dataform1" style="padding-top:5px;" >
		        <input class="nui-hidden" name="jsonObject.<%=TokenUtil.TOKEN_STRING_NAME%>" id="userToken">
		         <input name="jsonObject.uuid" class="nui-hidden"/>
		          <input name="jsonObject.isdelete" class="nui-hidden"/>
            <!-- hidden域 -->
            <table style="width:100%;height:100%;table-layout:fixed;" class="nui-form-table">
                <tr>
                    <td class="form_label">
                        大修轮次
                    </td>
                    <td colspan="1">
                    	<div header="大修轮次" headerAlign="center">
						<div property="columns">
							<div field="dxlc" id="dxlc" allowResize="false" 
								width="70" headerAlign="center" allowSort="true">
								<div id="combobox1" property="editor"  class="nui-combobox" style="width:100%;"   textField="name" valueField="id" 
							     url=""  multiSelect="false"  name ='jsonObject.dxlc'
							     showClose="true" oncloseclick="onCloseClick" dataField="jsonObject"  required="true">     
								</div>
							</div>
						</div>
					</div>
                    </td>
                    <td class="form_label">
                    检查项目和方法
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" name="jsonObject.jcff" onvalidation="hasIllegalChar(e,50,true,true)" style="width:100%;height:80%;" required="true"  requiredErrorText="检查项目和方法不能为空"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        机组状态
                    </td>
                    <td colspan="1">
                        <input property="editor" class="nui-dictcombobox" name='jsonObject.jzstatus'
							checkRecursive="true" style="width: 100%;" dataField="id"
							dictTypeId="NBJY_JZSTATU" required="true" requiredErrorText="机组状态不能为空" />
                    </td>
                
                    <td class="form_label">
                    <div field="rysxys1" width="170" headerAlign="center"
						renderer="reason1Renderer">
	                        人因失效因素分类(大类)
			</div>
                    </td>
                    <td colspan="1">
                        <input property="editor" id="rysxys1"
							class="nui-combobox" dataField="jsonObject" textField="name" name='jsonObject.rysxys1'
							style="width: 100%;" onvaluechanged="getRysxys"
							url="com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.getRysxysD.biz.ext"
							valueField="id" emptyText="请选择"  required="true" requiredErrorText="人因失效因素分类(大类)不能为空"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
       	人因失效因素分类(小类)                 
                    </td>
                    <td colspan="1">
                        <input property="editor" id="rysxys2"  name ='jsonObject.rysxys2'
							class="nui-combobox" dataField="jsonObject" textField="name"
							style="width: 100%;" url="" valueField="id" emptyText="请选择"
							onvaluechanged="getRysxysX" required="true"  requiredErrorText="人因失效因素分类(小类)不能为空"/>
                    </td>
                    <td class="form_label">
                        事件类型
                    </td>
                    <td colspan="1">
                        <input property="editor" id="sjtype" class="nui-textarea" name="jsonObject.sjtype"
							style="width: 100%;height:80%;" readonly   />
                    </td>
                </tr>
                    <tr>
                    <td class="form_label">
                    事件描述
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" name="jsonObject.sjms"style="width: 100%;" required="true" requiredErrorText="事件描述不能为空" onvalidation="hasIllegalChar(e,1000,true,true)"/>
                    </td>
                </tr>
                    <td class="form_label">
                        导致结果
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" name="jsonObject.dzjg" style="width: 100%;" requiredErrorText="导致结果不能为空" onvalidation="hasIllegalChar(e,1000,true,true)" required="true"/>
                    </td>
                </tr>
                
                    <tr>
                    <td class="form_label">
                    原因分析
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" name="jsonObject.yyfx" style="width: 100%;" requiredErrorText="原因分析不能为空" onvalidation="hasIllegalChar(e,1000,true,true)" required="true"/>
                    </td>
                </tr>
                 <tr>
                    <td class="form_label">
                        纠正行动
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" name="jsonObject.jzxd" style="width: 100%;" requiredErrorText="纠正行动不能为空" onvalidation="hasIllegalChar(e,1000,true,true)" required="true"/>
                    </td>
                </tr>
                 <tr>
                    <td class="form_label">
		后续改进措施
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" name="jsonObject.hxgjcs" style="width: 100%;" requiredErrorText="事后续改进措施不能为空" onvalidation="hasIllegalChar(e,1000,true,true)" required="true"/>
                    </td>
                    </tr>
                    <tr>
                    <td class="form_label">
		附件
                    </td>
                    <td colspan="2" id="fileHref" style="display:none;">
                    </td>
                    <td colspan="1">
      
                       <input property="editor" class="nui-fileupload nui-form-input"
							name="uploadFile" limitType="*.*" limitSize="100MB"
							flashUrl="<%=request.getContextPath()%>/js/swfupload/swfupload.swf" onvalidation="hasIllegalChar(e,50,false,true)"
							onfileselect="onfileselect"
							uploadUrl="<%=request.getContextPath()%>/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext"
							onuploaderror="onUploadError" onuploadsuccess="onUploadSuccess"
							style="width: 100%;" />
                    </td>
                </tr>
                <tr>
                <input id='fileRealName' name="jsonObject.fileRealName" class="nui-hidden"/>
                 <input id='fileId' name="jsonObject.fileId" class="nui-hidden"/>
               <input id='filePath' name="jsonObject.filepath" class="nui-hidden"/>
					<input  id='filname' name="jsonObject.filename" class="nui-hidden"/>
                </tr>
                
            </table>
            
            <div class="nui-toolbar" id="nui-toolbar"  style="padding:0px;color : #fff" borderStyle="border:0;">
                <table width="100%">
                    <tr>
                        <td style="text-align:center;" colspan="4">
                            <a class="nui-button btn btn-default btn-xs" id="btnSave" onclick="onOk()">
                                保存
                            </a>
                            <span style="display:inline-block;width:25px;">
                            </span>
                            <a class="nui-button btn btn-default btn-xs" onclick="onCancel()">
                               关闭 
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>


	<script type="text/javascript">
    	nui.parse();
    	var jdid = getCookie('jdid');
    		var rysxysxbox = nui.get("rysxys2");
    		var  sjlx = nui.get("sjtype");
    		var dxlc =  nui.get('combobox1');
    		var  fileName="";
    		var filePath="";
    		
    		//显示附件
	    	function SetHref(){
        		var parentid = nui.get("rysxys1").getValue();//人因失效因素大类
				var url ="com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.getRysxysX.biz.ext?parentid="+ parentid;
				rysxysxbox.setUrl(url);
        		 var fileName = nui.get("fileRealName").getValue();
        		 var fileId = nui.get("fileId").getValue();
        		 if(fileName != null && fileName!='' && fileName!='null'){
        		 	$('#fileHref').show();
        		 	var div = document.getElementById('fileHref');
        		   div.innerHTML = '<a href="#" onclick="load(\'' + fileId
					+ '\')"  >' + fileName
					+ '</a>';
        		 }
        		 
        		 

        		 
	    	}
		//点击附件下载
		function load(fileId) {
			window.location.href = "com.cgn.itmp.basecommon.fileDownload.flow?fileId="
					+ fileId;
		}
		
    		//表单提交
    	function onOk(){
		var form =  new nui.Form('#dataform1') ;   	
     	var jsonObject =form.getData(false, true);
      	 form.validate();
     		if (form.isValid() == false) {
     		nui.showTips({content: '表单校验不通过,请确认',state: 'warning',x: 'center', y: 'center'});
     		return;
     		}	
     		
     	nui.get("#btnSave").setEnabled(false);//置灰色
     	var pageType = nui.getbyName("pageType").getValue();//获取当前页面是编辑还是新增状态
		if(jsonObject != null ){
				if(pageType=="add"){
		     		jsonObject.jsonObject._state ="added";
		     	}else{
		     		jsonObject.jsonObject._state ="modified";
		     	}
				jsonObject.jsonObject.filename =fileName;
				jsonObject.jsonObject.filepath =filePath;	
				jsonObject.jsonObject.jdid =getCookie('jdid');
		}
    	var json = nui.encode(jsonObject);
     	$.ajax({
    				url:'com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.newAddEdit.biz.ext',
    	 			type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
    				success :function (jsondata){
	    				if("3"== jsondata.result){
	    				nui.alert('保存成功！', '信息提示', function (){
	    				 CloseWindow("cancel");
	    					});    				
	    				
	    				}else{
	    				nui.alert('保存失败！');
	    				}
    				},error: function (jqXHR, textStatus, errorThrown) {
    				       nui.get("#btnSave").setEnabled(true);
							 nui.alert(jqXHR.responseText,'错误',function (action) {
							 
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
                        //如果是点击编辑类型页面
                        if (infos.pageType == "edit") {
                            var json = infos.record;

                            var form = new nui.Form("#dataform1");//将普通form转为nui的form
                            form.setData(json);
                            form.setChanged(false);
                            SetHref();
                        }
                        if(infos.pageType == "add"){
                        
                        nui.getbyName("pageType").setValue(infos.pageType);
                        
                        }
                    }
                    
        //取消
		 function onCancel() {
		               CloseWindow("cancel");
		     }
            	//关闭window
          function CloseWindow(action) {
               if (window.CloseOwnerWindow)
                  return window.CloseOwnerWindow(action);
                  else window.close();
             }
                    //下拉框取消选择
	    function onCloseClick(e) {
			 var obj = e.sender;
			  obj.setText("");
			 obj.setValue("");
	    }
			
		function sjlxRenderer(e) {
			return nui.getDictText("SJLX", e.value);
		}
		//机组状态
		function jzztRenderer(e) {
			return nui.getDictText("NBJY_JZSTATU", e.value);
		}

		//人因失效因素大类
		function reason1Renderer(e) {
			return nui.getDictText("REASON1", e.value);
		}
		//人因失效因素小类
		function reason2Renderer(e) {
			return nui.getDictText("REASON2", e.value);
		}
		
			function getRysxysX(e) {
			
			var rysxysX = e.sender.getValue();
			if (rysxysX == "A1" || rysxysX == "A2" || rysxysX == "B4"
					|| rysxysX == "D2" || rysxysX == "F1" || rysxysX == "F2"
					|| rysxysX == "F3" || rysxysX == "F5") {
				sjlx.setValue("安全类");
			} else if (rysxysX == "A3" || rysxysX == "A4" || rysxysX == "B1"
					|| rysxysX == "B2" || rysxysX == "B3" || rysxysX == "B5"
					|| rysxysX == "B6" || rysxysX == "D1" || rysxysX == "D3"
					|| rysxysX == "E2" || rysxysX == "E6" || rysxysX == "F4"
					|| rysxysX == "F6" || rysxysX == "F7" || rysxysX == "F8"
					|| rysxysX == "F9" || rysxysX == "F10") {
				sjlx.setValue("技术质量类");
			} else {
				sjlx.setValue("管理类");
			}
		}
		
		function getRysxys(e, row) {
			var parentid = e.sender.getValue();
			rysxysxbox.setData= '';
			var url ="com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.getRysxysX.biz.ext?parentid="+ parentid;
			rysxysxbox.setUrl(url);
			//rysxysxbox.select(0);默认第一个选项
		}
		//大修轮次数据
			
		var jdid = getCookie('jdid');
		var url = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid;
		 dxlc.setUrl(url);
		 
		 function onfileselect(e) {
			startUpload(e);
		}
		function startUpload(e) {
			var fileupload = e.sender;
			fileupload.startUpload();
		}
		//上传成功时，回写附件的name、id
		function onUploadSuccess(e, row) {
			fileName = e.file.name;
			filePath = nui.decode(e.serverData).ret.filePath;
		}

    </script>
</body>
</html>