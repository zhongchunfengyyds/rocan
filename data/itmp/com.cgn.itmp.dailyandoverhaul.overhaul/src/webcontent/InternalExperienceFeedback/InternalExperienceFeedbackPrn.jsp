<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
  - Author(s): Administrator
  - Date: 2019-10-22 19:20:29
  - Description:
-->
<head>
<title>查看内部经验反馈</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
   <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript"></script>	
</script>
<script src="<%= request.getContextPath()%>/common/common.js" type="text/javascript"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/swfupload/swfupload.js"></script>
<script type="text/javascript"
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/themes/cuc/skin.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/themes/default/css/cuc.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/coframe/taskcenter/media/tasklist.css" />

	src="<%=request.getContextPath()%>/common/nui/locale/zh_CN.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
<link type="text/css" href="<%= request.getContextPath()%>/css/themes/table.css" rel="stylesheet"/>

<style type="text/css">
</style>
</head>

<body>
        <input name="pageType" class="nui-hidden"/>
		        <div id="dataform1" style="padding-top:5px;" >
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
							<div field="dxlc" id="dxlc" readOnly="readOnly"  allowResize="false" 
								width="70" headerAlign="center" allowSort="true">
								 <input  id="combobox1"  class="nui-textbox"  name="jsonObject.dxlc"  readOnly="readOnly"  required="required" emptyText="请输入大修轮次" requiredErrorText="大修轮次不能为空" style="width:100%;" />     
								
								
							</div>
						</div>
					</div>
                    </td>
                    <td class="form_label">
                    检查项目和方法
                    </td>
                    <td colspan="1">
                        <input class="nui-textarea" readOnly="readOnly"  name="jsonObject.jcff" style="width:100%;height:80%;" required="true"  requiredErrorText="不可为空"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
                        机组状态
                    </td>
                    <td colspan="1">
                        <input property="editor" readOnly="readOnly"  class="nui-dictcombobox" name='jsonObject.jzstatus'
							checkRecursive="true" style="width: 100%;" dataField="id"
							dictTypeId="NBJY_JZSTATU" required="true" />
                    </td>
                
                    <td class="form_label">
                    <div field="rysxys1" width="170" headerAlign="center"
						renderer="reason1Renderer">
	                        人因失效因素分类(大类)
			</div>
                    </td>
                    <td colspan="1">
                        <input property="editor"  readOnly="readOnly" id="rysxys1"
							class="nui-combobox" dataField="jsonObject" textField="name" name='jsonObject.rysxys1'
							style="width: 100%;" onvaluechanged="getRysxys"
							url="com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.getRysxysD.biz.ext"
							valueField="id" emptyText="请选择"  required="true"/>
                    </td>
                </tr>
                <tr>
                    <td class="form_label">
       	人因失效因素分类(小类)                 
                    </td>
                    <td colspan="1">
                        <input property="editor" id="rysxys2"  readOnly="readOnly"  name ='jsonObject.rysxys2'
							class="nui-combobox" dataField="jsonObject" textField="name"
							style="width: 100%;" url="" valueField="id" emptyText="请选择"
							onvaluechanged="getRysxysX" required="true" />
                    </td>
                    <td class="form_label">
                        事件类型
                    </td>
                    <td colspan="1">
                        <input property="editor" readOnly="readOnly"  id="sjtype" class="nui-textarea" name="jsonObject.sjtype"
							style="width: 100%;height:80%;" readonly   />
                    </td>
                </tr>
                    <tr>
                    <td class="form_label">
                    事件描述
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" readOnly="readOnly"  name="jsonObject.sjms"style="width: 100%;" required="true"/>
                    </td>
                </tr>
                    <td class="form_label">
                        导致结果
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" readOnly="readOnly"  name="jsonObject.dzjg" style="width: 100%;" required="true"/>
                    </td>
                </tr>
                
                    <tr>
                    <td class="form_label">
                    原因分析
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" readOnly="readOnly"  name="jsonObject.yyfx" style="width: 100%;" required="true"/>
                    </td>
                </tr>
                 <tr>
                    <td class="form_label">
                        纠正行动
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" readOnly="readOnly"  name="jsonObject.jzxd" style="width: 100%;" required="true"/>
                    </td>
                </tr>
                 <tr>
                    <td class="form_label">
		后续改进措施
                    </td>
                    <td colspan="3">
                        <input class="nui-textarea" readOnly="readOnly"  name="jsonObject.hxgjcs" style="width: 100%;" required="true"/>
                    </td>
                    </tr>
                    <tr>
                    <td class="form_label">
		附件
                    </td>
                    <td colspan="2" id="fileHref">
                    </td>
                    <td colspan="1" style="display:none">
<!-- 							<div style="display: flex;">	 -->
<!-- 								<input id="fujian" class="nui-textbox"   style="width: 100%" name="tinspectdefectnotice.fujian" /> -->
<!-- 								<input id="fildid" style="display: none" class="nui-textbox" name="tinterm.fildid" /> -->
<!-- 								<form id="uploadform" enctype="multipart/form-data"> -->
<!-- 									<input style="width:70px" type="file" name="file" accept="*" onchange="fileSub(this)">  -->
<!-- 								</form> -->
<!-- 							</div> -->
                    
                       <input property="editor" class="nui-fileupload nui-form-input"
							name="uploadFile" limitType="*.*" limitSize="100MB"
							flashUrl="<%=request.getContextPath()%>/js/swfupload/swfupload.swf"
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
// 	    	rysxysxbox = nui.get("rysxys2");
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
    				}
    	});  
    	
    	}
    	
    	 		//页面间传输json数据
                    function setFormData(data){
                       //跨页面传递的数据对象，克隆后才可以安全使用
                        var tddxglnbjy={};
                        tddxglnbjy.uuid=data.uuid;
                        var json=nui.encode({tddxglnbjy:tddxglnbjy});
                         $.ajax({
		                    url:"com.cgn.itmp.dailyandoverhaul.overhaul.InternalExperienceFeedback.getTdDxglNbjy.biz.ext",
		                    type:'POST',
		                    data:json,
		                    cache:false,
		                    contentType:'text/json',
		                    success:function(text){
		                     var form = new nui.Form("#dataform1");//将普通form转为nui的form
		                    form.setData({jsonObject:text.tddxglnbjy});
		                    nui.get("fileRealName").setValue(data.filename);
		                    nui.get("fileId").setValue(data.fileid);
                            SetHref();
            	   			
							
		                    
		                    }
	                    });
						
                        
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
			
// 		var jdid = getCookie('jdid');
// 		var url = "com.cgn.itmp.outlineandplan.outline.common.CommonServiceImplFlow.getOverhaulSequence.biz.ext?base="+jdid;
// 		 dxlc.setUrl(url);
		 
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