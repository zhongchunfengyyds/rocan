<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>上传组件</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script type="text/javascript">
    	var context_path='<%=request.getContextPath() %>';
    	var  uploadMessageId ;
    </script> 
    
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/ajaxfileupload/ajaxfileupload.js?v1.12"></script>
    <link href="<%=request.getContextPath() %>/js/ajaxfileupload/css/ajaxfileupload.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    	.JSUploadForm {
     		box-shadow: none;
     		-webkit-box-shadow:none;
     		border: 1px solid #DCDCDC;
     	}
    </style>
</head>
<body>
 
	<script type="text/javascript">
    	nui.parse();
    	var tfilecount = 1;
    	function showFileContent(pageType,fileUploadId,fileIds,fileNames){
    		//var fileContent="#"+fileUploadId+" form";
    		var fileContent="#"+fileUploadId;
    		if(fileIds!="" && fileIds!=null && fileIds!=undefined){
	        	var fileId=(fileIds+"").split(",");
	            var fileName=(fileNames+"").split(",");
	            for(var i=0;i<fileId.length;i++){
		            if(pageType=="view"){
			        	$(fileContent).before("<div style='float:left;width:400px;text-align:left;' id='field"+fileId[i]+"' >"
							+"<a style='color:blue;' onclick='downFile(\""+fileId[i]+"\",\""+fileName[i]+"\")' href='#'>"+"附件"+(i+1)+":"+fileName[i]+"</a></div>"+
							"</div>");
		            }else{
			        	$(fileContent).before("<div  id='delField2"+fileId[i]+"'><span style='text-align:left;' id='field"+fileId[i]+"' >"
							+"<a style='color:blue;' onclick='downFile(\""+fileId[i]+"\",\""+fileName[i]+"\")' href='#'>"+"附件"+(i+1)+":"+fileName[i]+"</a></span>&nbsp;&nbsp;&nbsp;"+
							"<span id='delField"+fileId[i]+"'><a style='color:blue;' onclick='deleteFile(\""+fileId[i]+"\",\"fileId\",\"fileName\")' href='#'>删除</a></span></div>");
		            }
	         	}
	    	}
	    	if(pageType=="view"){
	    		$(".JSFileChoos").hide();
	    	}
    	}
    	
    	function showFileOnRow(fileUploadId,fileIds,fileNames){
    	//
    		if(fileIds!="" && fileIds!=null && fileIds!=undefined){
	            var fileId=fileIds.split(",");
	            var fileName=fileNames.split(",");
	            var fileHtml="<div>";
	            for(var i=0;i<fileId.length;i++){
		            if(1==0){
			        	fileHtml+="<span id='field"+fileId[i]+"' >"
						    +"<a style='color:blue;' onclick='downFile(\""+fileId[i]+"\",\""+fileName[i]+"\")' href='#'>"+"附件"+(i+1)+":"+fileName[i]+"</a></span>";
		            }else{
			            fileHtml+="<span style='display:inline-block;width:25px;''></span><span id='field"+fileId[i]+"' >"
							+"<a style='color:blue;' onclick='downFile(\""+fileId[i]+"\",\""+fileName[i]+"\")' href='#'>"+"附件"+(i+1)+":"+fileName[i]+"</a></span>";
		            }
	            }
	            fileHtml+="</div>";
	            //var currentId="#"+fileUploadId+" .fileUpload";
	            //$(currentId).append(fileHtml);
	            //alert(fileHtml);
	            $("#"+fileUploadId).append(fileHtml);
	        }
    	}
    	
    	var sf;
    	function fileUploadInit(fileId,valId,valName,fileType,inputText,maxfileccount){
    		if(!fileType||fileType=='undefined'||fileType==null){
    			fileType = ['gif','rar','jpg','jpeg','png','bmp','pdf','doc','docx','xls','xlsx','zip','ppt','pptx','txt'];
    		}
    		if(!inputText||inputText=='undefined'||inputText==null){
    			inputText = '选择文件';
    		}
    		sf = new AjaxFileUpload({
				valueTo: valId,
				renderTo: fileId,
				renderNameTo: valName,
				valid_extensions:fileType,
				title: "",
				disabled:false
			});
    	}
    	
    	function _fileUploadInit(disabled,fileId,valId,valName,fileType,inputText,maxfileccount){
    		if(!fileType||fileType=='undefined'||fileType==null){
    			fileType = ['gif','rar','jpg','jpeg','png','bmp','pdf','doc','docx','xls','xlsx','zip','ppt','pptx','txt'];
    		}
    		if(!inputText||inputText=='undefined'||inputText==null){
    			inputText = '选择文件';
    		}
    		return new AjaxFileUpload({
				valueTo: valId,
				renderTo: fileId,
				renderNameTo: valName,
				valid_extensions:fileType,
				title: "",
				disabled:disabled
			});
    	}
    	
    	function downFile(fileId,fileName){
    		//var url="<%=request.getContextPath() %>/org.oa.common.util.fileDownload.flow?fileId="+fileId+"&fileName="+fileName;
    		//console.log(url);
    		window.location.href="<%=request.getContextPath() %>/org.oa.common.util.fileDownload.flow?fileId="+fileId+"&fileName="+fileName;
    	}
    	
         //删除
        function deleteFile(fileId,valId,valName) {
        	
    		nui.confirm("确定删除文件？","提示",function(action){
				if(action=="ok"){
					if(tfilecount>1) {
						tfilecount --;
					}
		           var messageid = nui.loading("正在操作中，请稍后......", "Loading");
		           $.ajax({
			            url: "com.cgn.itmp.basecommon.FileComp.deleteFile.biz.ext",
			            type: 'POST',
			            data: nui.encode({"fileId":fileId}),
			            cache: false,
			            contentType:'text/json',
			            success: function (text) {
			            	nui.hideMessageBox(messageid);
			            	if(text.result){
			            		var fileIdVal=nui.get(valId).getValue()+"";
			            		var fileNameVal=nui.get(valName).getValue()+"";
			            		if(fileIdVal!="" && fileIdVal!=null && fileIdVal!=undefined){
				            		var value=fileIdVal.split(",");
				            		var valueName=fileNameVal.split(",");
				            		var temp="";
				            		var tempName="";
				            		if(value.length>1){
				            			for(var i=0;i<value.length;i++){
				            				if(value[i]!=fileId){
					            				temp+=","+value[i];
					            				tempName+=","+valueName[i];
				            				}
				            			}
				            			temp=temp.substring(1, temp.length);
				            			tempName=tempName.substring(1, tempName.length);
				            		}else{
				            			temp="";
				            			tempName="";
				            		}
				            		nui.get(valId).setValue(temp);
				            		nui.get(valName).setValue(tempName);
				            		$("#field"+fileId).html("");
				            		$("#delField"+fileId).html("");
				            		$("#delField2"+fileId).html("");
			            		}
			            	}
			            },
			            error: function (jqXHR, textStatus, errorThrown) {
			                nui.hideMessageBox(messageid);
			                nui.alert(jqXHR.responseText);
			            }
			        });
				}
		   });
        	
        	
        }
    </script>
</body>
</html>