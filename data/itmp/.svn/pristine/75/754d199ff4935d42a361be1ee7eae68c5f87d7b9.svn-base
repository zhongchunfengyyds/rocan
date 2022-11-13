<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="com.eos.foundation.eoscommon.ConfigurationUtil"%>
<%@page import="com.eos.data.datacontext.DataContextManager"%>
<%@page import="com.eos.data.datacontext.IUserObject"%>
<%@include file="/common/common.jsp"%>
<%@include file="/common/skins/skin0/component.jsp" %>
<html>
<%
	IUserObject user= DataContextManager.current().getMUODataContext().getUserObject();
	String appcode=ConfigurationUtil.getUserConfigSingleValue("system","default","code");
%>
<!-- 
  - Author(s): dafu
  - Date: 2017-04-25 11:55:02
  - Description:
-->
<head>
	<!-- <script src="scripts/jquery.min.js"></script> -->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
  	<script src="<%= request.getContextPath() %>/scripts/html5shiv.min.js"></script>
  	<script src="<%= request.getContextPath() %>/scripts/respond.min.js"></script>
	<![endif]-->
<title>上传图片</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    
    <script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/attachpanel.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/coframe/tools/widget/jquery.form.min.js"></script>
     
    <style type="text/css">
    	
		.form-control{
			padding: 0px 0px;
		}
        
        .input-group {
            width: 90%;
    		margin-left: 30px;
        }
        .row {
    	margin-bottom: 15px;
   	 	margin-left: 0px;
    	margin-right: 0px;
		}
    </style>
</head>
<body>
	<div id="dataform1" style="padding-top:25px;">
			<input class="nui-hidden" name="dzqm.filename"  id="dzqm.filename">
			<input class="nui-hidden" name="dzqm.size"  id="dzqm.size">
			<input class="nui-hidden" name="dzqm.createtime"  id="dzqm.createtime">
			<input class="nui-hidden" name="dzqm.uri"  id="dzqm.uri">
          <div class="container">
          	<div class="row">
            	<div class="input-group" >
  					<span class="input-group-addon" id="basic-addon0" style="width: 100px;">应用名称 :</span>
  					<input class="nui-textbox form-control"  name="dzqm.appcode" value="<%=appcode %>" aria-describedby="basic-addon0">
				</div>
			</div>
			<div class="row">
				<div class="input-group" >
  					<span class="input-group-addon" id="basic-addon1" style="width: 100px;">  创建人 : </span>
  					<input class="nui-textbox form-control" name="dzqm.username" value="<%=user.getUserRealName() %>" aria-describedby="basic-addon1">
				</div>
			</div>
			<div class="row">
				<div class="input-group" >
  					<span class="input-group-addon" id="basic-addon2" style="width: 100px;">  用户ID : </span>
  					<input class="nui-textbox form-control"  name="dzqm.userid"  value="<%=user.getUserId() %>" aria-describedby="basic-addon2">
				</div>
			</div>
			<div class="row">
				<div class="input-group" >
  					<span class="input-group-addon" id="basic-addon3" style="width: 100px;">上传图片 :</span>
  					<form id="uploadform"    enctype="multipart/form-data">
                        	<span>
                        		<input type="file"   name="file" accept="*"  onchange="fileSub(this)">
                        		<span style="color:red">图片大小为宽125，高50</span>
                        	</span>
                	 </form>
				</div>
             </div>
			 </div>
			 <div class="row">
			 <div id="imageBox"  style="margin:10px auto ;width:125px;height: 50px;border:1px solid grey">
			 </div>
			 </div>
			 <div class="row">
			 <div class="col-xs-1 col-xs-offset-3">
                <a class="btn btn-default" onclick="onOk()">
                    <span class="fa fa-save"></span>保存
                </a>
               </div>
               <div class="col-xs-1 col-xs-offset-3">
                 <span style="display:inline-block;width:25px;"></span>
                 <a class="btn btn-default"  onclick="onCancel()">
                     <span class="fa fa-close"></span>关闭
                 </a>
            </div>
            </div>
           </div>
		
	<script type="text/javascript">
    	nui.parse();
    	
    	 //确定保存或更新
        function onOk() {
            saveData();
        }

    	
    	function fileSub(file){
    		var  fv=file.value;
    		if(fv){
        		/*  if (!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG)$/.test(fv)) {  
        			 nui.alert("图片类型必须是gif,jpeg,jpg,png,bmp中的一种");  
                     return false;  
                 }   */
        		 
   	    		$("#uploadform").ajaxSubmit({
   					type: "post",
   					dataType : "json",
   		            url: "<%=request.getContextPath()%>/coframe/framework/dzqm/uploaddzqm.jsp",
   		            success: function (data) {
   		            	if(data.code==1){
   		            		  nui.get("dzqm.filename").setValue(data.list[0].name);
   		            		  nui.get("dzqm.size").setValue(data.list[0].size);
   		            		  nui.get("dzqm.createtime").setValue(data.list[0].uploadTime);
   		            		  nui.get("dzqm.uri").setValue(data.list[0].uri);
   		            		  showimage(data.list[0].uri);
   		            	}else{
   		            		nui.alert("上传失败:"+data.message);   
   		            	}
   		            }
   				});    		
    		}else{
    			 nui.alert("请上传图片");  
    			 return false;  
    		}
    	}
    	
    	//显示图片预览
    	function showimage(uri){
    		 var div = document.getElementById('imageBox');
    		 div.innerHTML ='<img id=imghead>';
             var img = document.getElementById('imghead');
             img.width  =125;
             img.height =50;
             img.src ="<%=request.getContextPath()%>/coframe/tools/preview.jsp?remoteFile="+uri; 
    	}
    	
        function saveData(){
        	 var uri=nui.get("dzqm.uri").getValue();
        	 if(!uri){
        		 nui.alert("请上传图片");  
    			 return false;  
        	 }
        	
            var form = new nui.Form("#dataform1");
            var data = form.getData(false,true);
            var json = nui.encode(data);
            $.ajax({
                url:"com.cgn.components.coframe.framework.dzqm.updzht.biz.ext",
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
                                CloseWindow("saveFailed");
                            }
                            });
                        }
                    }
                    });
        }

        //取消
        function onCancel() {
            CloseWindow("cancel");
        }
    	   
        //关闭窗口
        function CloseWindow(action) {
            if (window.CloseOwnerWindow)
            return window.CloseOwnerWindow(action);
            else window.close();
        }
    </script>
</body>
</html>