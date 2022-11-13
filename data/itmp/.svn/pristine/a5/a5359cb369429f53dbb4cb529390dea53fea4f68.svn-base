<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://eos.primeton.com/tags/logic" prefix="l"%>
	<script type="text/javascript" src="<%=request.getContextPath()%>/coframe/newui/js/restfulapi_url.js"></script>
	<div class="demo-accordion">
            <nav class="navbar navbar-default  patch">
              <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">附件信息</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                    	<li id="loadingtip" style="margin-top:17px;margin-right:25px;">
                    		
                    	<li>
                    	<li>
                    		<form id="uploadform" enctype="multipart/form-data">
	                    		<l:equal property="status" targetValue="0">
								   <div class="a-upload" style="margin-top:10px;width:90px;height:35px;">
									    <button class="iconBtn btn btn-xs btn-second"  style="font-size:14px;">
											<i class="fa fa-upload"></i><span>上传</span>
										</button>
								    	<input id="fileupload" type="file" name="files" multiple="" unselectable="on" style="width:90px;height:40px;position: absolute;right: 0;top: 0;opacity: 0;filter: alpha(opacity=0);cursor: pointer;font-size:100px;z-index: 2;"/>
								   </div>
								</l:equal>
							</form>
                    	</li>	
                        <li  class="folding-toggle">
                            <a href="#"><span class="fa fa-angle-up"></span></a>
                        </li>
                    </ul>
                </div>
              </div>
            </nav>

    <div class="accordion-container folding-menu" style="background-color:white;">
		<div class="table-layout" style="overflow:hidden;padding-bottom:0px;" id="flists">
        	<div class="row" style="height:38px;width:100%;background-color:#fafafa;border-top:1px solid rgba(128, 128, 128, 0.43);border-bottom:1px solid rgba(128, 128, 128, 0.43);margin-left:0px;padding-top:8px;color:rgba(128, 128, 128, 0.93);">
           		<div class="col-sm-1">
                	&nbsp;
            	</div>
            	<div class="col-sm-3">
                	&nbsp;文件名
            	</div>
            	<div class="col-sm-2">
                	&nbsp;文件大小
            	</div>
            	<div class="col-sm-2">
                	&nbsp;上传人
            	</div>
            	<div class="col-sm-2">
                	&nbsp;上传时间
            	</div>
            	<div class="col-sm-2">
                	&nbsp;操作
            	</div>
     	 	</div>
       </div>
	</div>
	<div id="template" style="display: none;">
		<div class="row" >
			<input type="hidden" class="uri"/>
          	<div class="col-sm-1">
                &nbsp;
            </div>
            <div class="col-sm-3 name">
                	文件名
            </div>
            <div class="col-sm-2 size">
                	文件大小
            </div>
            <div class="col-sm-2 uploader">
                	上传人
            </div>
            <div class="col-sm-2 uploadTime">
                	上传时间
            </div>
            <div class="col-sm-2" style="margin-top:-6px;">
            	<button class="iconBtn btn btn-xs btn-second" title="下载" onclick="downFile(this)">
					<i class="fa fa-download"></i>
				</button>
        		<button class="iconBtn btn btn-xs btn-second" title="删除" onclick="deleteFile(this)">
					<i class="fa fa-trash" style="color:#BE3333;"></i>
				</button>
            </div>
          </div>
          </div>
	</div>

	<script type="text/javascript">
    	nui.parse();
    	$(function(){
    		<%
				String processInstId = request.getParameter("processInstId");
			%>
			var bizKey = <%=processInstId %>;
			var content= $("#flists");
			if(bizKey){
				nui.ajax({
	    		url: "com.cgn.components.coframe.tools.AttachManager.getAttachList.biz.ext",
	    		type : "POST",
				data : {bizKey: bizKey},
				dataType : "json",
				success : function(data) {
					var listArr = data.list;
					for(var i=0;i<listArr.length;i++){
                    	var str = "";
                    	str += '<div class="row" id=' + listArr[i].attachId  + '>';
						str += '<input type="hidden" class="uri" value="'+ listArr[i].uri +'"/>';
      					str += '<div class="col-sm-1">';
                        str += '&nbsp;';
        				str += '</div>';
        				str += '<div class="col-sm-3 name">';
            			str += listArr[i].name;
        				str += '</div>';
        				str += '<div class="col-sm-2 size">';
            			str += listArr[i].size + " m";
        				str += '</div>';
        				str += '<div class="col-sm-2 uploader">';
            	        str += listArr[i].uploadUser;
        				str += '</div>';
        				str += '<div class="col-sm-2 uploadTime">';
        				str += listArr[i].uploadTime.split(".")[0];
        				str += '</div>';
        				str += '<div class="col-sm-2" style="margin-top:-6px;">';
        				str += '<button class="iconBtn btn btn-xs btn-second" title="下载" onclick="downFile(this)">';
						str += '<i class="fa fa-download"></i>';
						str += '</button>';
						str += '<l:equal property="status" targetValue="0">';
    					str += '<button class="iconBtn btn btn-xs btn-second" title="删除" onclick="deleteFile(this)">';
						str += '<i class="fa fa-trash" style="color:#BE3333;"></i>';
						str += '</button>';
						str += '</l:equal>';
        				str += '</div>';
      					str += '</div>';
      					content.append(str);
                    }
				}
	    	});
			}
    	});
    	
    	function downFile(obj){
			var ids = $(obj.parentNode.parentNode).find(".uri")[0].value;
			nui.ajax({
				url: "com.cgn.components.coframe.aep.filecenter.queryFiles.biz.ext",
				type : "POST",
				data : {ids: ids},
				dataType : "json",
				success : function(text) {
					if(text.result.data) {
						var len = text.result.data.length;
						if(len > 0){
							for(var i =0; i < len;i++){
								location.href=text.result.data[i].fileUrl;
							}
						}
						
					}
				}
			});
    	}
    	function deleteFile(obj){
    		var id = $(obj.parentNode.parentNode).attr("id");
			new ConfirmBox({
				title:'确定删除该文件吗？',
				channel:"取消",
				edit:"确定",
				ok:function(){
					var remoteFile = $(obj.parentNode.parentNode).find(".uri")[0].value;
					var dataObj = {};
					dataObj.key = "11";
                    dataObj.appName = "123";
					dataObj.ids = remoteFile;
					if("NAN" != id){
						nui.ajax({
							url: "com.cgn.components.coframe.tools.AttachManager.removeAttach.biz.ext",
							type : "POST",
							data : {attachId: id},
							dataType : "json",
							success : function(data) {
								if(data.result == 1) {
									nui.ajax({
										url: "com.cgn.components.coframe.aep.filecenter.deleteFiles.biz.ext",
										type : "POST",
										data : {ids: remoteFile},
										dataType : "json",
										success : function(text) {
											if(text.result.code == "1") {
					                        	new TipBox({type:'success',str:"删除成功",setTime:1000,callBack:function(){
					
					                            }});
					                            obj.parentNode.parentNode.parentNode.removeChild(obj.parentNode.parentNode);
											}
										}
									});
								}
							}
						});
					}else{
						nui.ajax({
							url: "com.cgn.components.coframe.aep.filecenter.deleteFiles.biz.ext",
							type : "POST",
							data : {ids: remoteFile},
							dataType : "json",
							success : function(text) {
								if(text.result.code == "1") {
		                        	new TipBox({type:'success',str:"删除成功",setTime:1000,callBack:function(){
		
		                            }});
		                            obj.parentNode.parentNode.parentNode.removeChild(obj.parentNode.parentNode);
								}
							}
						});
					}
				}
			});
    	}
    	<%-- url: '<%= request.getContextPath() %>/coframe/interfaces/tools/upload.jsp?v=' + Math.random() --%>
		$("#fileupload").bind("change", function(e) {
			var uploadValue = $("#fileupload").val();
			if( !uploadValue || uploadValue == "" ){
				return;
			}
			var content= $("#flists");
			$("#loadingtip").append("<img id='imguplodgif' src='<%= request.getContextPath() %>/coframe/taskcenter/media/images/wait.gif?rnd=' + Math.random()/>");
			$("#uploadform").ajaxSubmit({
				type: "post",
				dataType : "json",
	            url: '<%= request.getContextPath() %>/coframe/tools/util/uploadByZT.jsp?v=' + Math.random(),
	            success: function (text) {
	            	if(text && text.data){
	            		var listArr =  eval('(' + text.data + ')');
	            		for(var i=0;i<listArr.length;i++){
	            			if(!listArr[i].status){
	            				new TipBox({type:'tip',str:listArr[i].msg,setTime:1000,callBack:function(){
									
                        		}});
	            				continue;
	            			}
	                    	var str = "";
	                    	str += '<div class="row" id=' + "NAN"  + '>';
							str += '<input type="hidden" class="uri" value="'+ listArr[i].fileId +'"/>';
          					str += '<div class="col-sm-1">';
                            str += '&nbsp;';
            				str += '</div>';
            				str += '<div class="col-sm-3 name">';
                			str += listArr[i].fileName;
            				str += '</div>';
            				str += '<div class="col-sm-2 size">';
                			str += toDecimal(listArr[i].fileSize) + ' m';
            				str += '</div>';
            				str += '<div class="col-sm-2 uploader">';
                	        str += '['+ listArr[i].uploadUserCode + ']' + listArr[i].uploadUserName;
            				str += '</div>';
            				str += '<div class="col-sm-2 uploadTime">';
            				str += listArr[i].uploadTime;
            				str += '</div>';
            				str += '<div class="col-sm-2" style="margin-top:-6px;">';
            				str += '<button class="iconBtn btn btn-xs btn-second" title="下载" onclick="downFile(this)">';
							str += '<i class="fa fa-download"></i>';
							str += '</button>';
        					str += '<button class="iconBtn btn btn-xs btn-second" title="删除" onclick="deleteFile(this)">';
							str += '<i class="fa fa-trash" style="color:#BE3333;"></i>';
							str += '</button>';
            				str += '</div>';
          					str += '</div>';
          					content.append(str);
	                    }
	                    $("#imguplodgif").remove();
	            	}else{
	            		if(text && text.errorMsg){
	            			new TipBox({type:'tip',str:text.errorMsg,setTime:1000,callBack:function(){
								
                        	}});
	            		}
	            		$("#imguplodgif").remove();
	            	}
	            }
			});
    	});
    	$("#fileupload").bind("click", function(e) {
			$("#fileupload").val("");
    	});
    	//扩展Date的format方法   
	    Date.prototype.format = function (format) {  
	        var o = {  
	            "M+": this.getMonth() + 1,  
	            "d+": this.getDate(),  
	            "h+": this.getHours(),  
	            "m+": this.getMinutes(),  
	            "s+": this.getSeconds(),  
	            "q+": Math.floor((this.getMonth() + 3) / 3),  
	            "S": this.getMilliseconds()  
	        };
	        if (/(y+)/.test(format)) {  
	            format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));  
	        }  
	        for (var k in o) {  
	            if (new RegExp("(" + k + ")").test(format)) {  
	                format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));  
	            }  
	        }  
	        return format;  
	    };
	    /*文件的大小字节转换为兆*/
	    function toDecimal(x){
	    	var f = parseFloat(x);
	    	if(isNaN(f)){
	    		return;
	    	}
	    	if(f > 100000){
	    		f = Math.round((f/1048576)*100)/100;
	    	}else{
	    		f = Math.round((f/1048576)*10000)/10000;
	    	}
	    	return f;
	    }
    </script>
