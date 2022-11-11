/*
// jQuery Ajax File Uploader
//
// @author: Jordan Feldstein <jfeldstein.com>
//
//  - Ajaxifies an individual <input type="file">
//  - Files are sandboxed. Doesn't matter how many, or where they are, on the page.
//  - Allows for extra parameters to be included with the file
//  - onStart callback can cancel the upload by returning false
*/


(function($) {
    var $help={
		uploadUrl:'/com.cgn.itmp.basecommon.fileUpload.flow',
		loadFilesUrl:'/com.cgn.itmp.basecommon.FileComp.loadFiles.biz.ext',
		getFileUrl:'/com.cgn.itmp.basecommon.FileComp.flow',
		contextPath:'',
		getContext:function(){
			if(window['contextPath']){
				return window['contextPath'];
			}
			this.contextPath='/'+window.location.href.split('/')[3];
			return this.contextPath;
		},
		getUploadUrl:function(){
			return $help.getContext()+$help.uploadUrl;
		},
		getLoadFilesUrl:function(){
			return $help.getContext()+$help.loadFilesUrl;
		},
		getGetFileUrl:function(){
			return $help.getContext()+$help.getFileUrl;
		},
		createId:function(prix, length){
			prix=prix||'';
			prix+=(prix.substr(0,2)=='ajaxup_')?'':'ajaxup_';
			prix+=(prix.substr(prix.length-1,1)=='_')?'':'_';
			
			length=length||5;
			var _x=Math.random()*Math.pow(10, length)+'';
			return prix+_x.substr(0,_x.indexOf('.'));
		},
		parse:function(p,d){
			var reg;
			if(typeof(p)=='object'&&p instanceof Array){
				p=$we.join(p);
			}
			for(var i in d){
				reg=new RegExp('{'+i+'}','g');
				
				p=p.replace(reg,d[i]);
			}
			return p;
		},
		loadFiles:function(value, renderTo,renderNameTo,disabled) {
			$.ajax({
				url:$help.getLoadFilesUrl(),
				data:{
					fileIds:value
				},
				dataType:'text',
				success:function(ret){
					if(ret.exception){
					}else{
						ret=nui.decode(ret);
						$help.doFilesRender(ret, renderTo,renderNameTo, disabled);
					}
				},
				fail:function(){
					nui.alert('数据加载失败！');
				}
			});
		},
		doRender:function(renderTo,renderNameTo,title, disabled) {
			var fileInput = disabled==true? '' : '<input type="file" class="fileBtn" id="' + renderTo + "_file" + '" name="uploadfile" style="cursor:pointer;opacity:0;filter:progid:DXImageTransform.Microsoft.Alpha(Opacity=0);width:55px;height:32px;position:absolute;left:0px;bottom:6px;">';
			var fileInputBtn = disabled==true?'': '<a class="mini-button" id="' + renderTo + "_fileBtn" + '" style="position:absolute;left:0px;bottom:6px;" ><span class="mini-button-text " style="">选择</span></a>';
			var padding_button = disabled==true?'':'padding-bottom:45px;';
			var html=[
				'<fieldset style="border:solid 0px #aaa;padding:2px;text-align:left;position:relative;'+padding_button+'" >',
				'<div id="' + renderTo + "_upfiles" + '" class="ajaxupload-files clearfix"></div>',
					'<legend ><span style="color:blue;">' + title + '</span></legend>',fileInputBtn,
					fileInput,
				'</fieldset>'
			];
			html=html.join('');
			$("#" + renderTo).html(html);
		},
		doFilesRender:function(ret, renderTo,renderNameTo, disabled) {
			var files = ret.files;
			var html = null;
			
			if(html==null){
				html=[];
				var delStyle='';
				if(disabled) {
					delStyle = 'display:none;';
				}
				var fileName="";
				var fileTemplate=[
					//'<li fileId="{fileId}" class="ajaxupload-file" >',
					'<div fileId="{fileId}" style="height:26px;"><li  class="ajaxupload-file" >',
						'<a href="{src}?fileId={fileId}" title="{fileRealName}">',
							'{fileRealName}',
						'</a>',
						'<em fileId={fileId} class="ajaxupload-file-del" onclick="_removeFile(\'{fileId}\')" style="',delStyle,'"></em>',
						'</li>',
					    '</div>'
						//'</li>'
				].join('');
				if(files.length) {
					for(var i=0;i<files.length;i++){
						var file = files[i];
						file.src = $help.getGetFileUrl();
						html.push($help.parse(fileTemplate, file));
						fileName+=file.fileRealName+",";
					}
				} else {
					html.push('');
				}
				if(fileName!=""){
					fileName=fileName.substring(0, fileName.length - 1);
				}
				nui.get(renderNameTo).setValue(fileName);
				html=html.join('');
			}
			$("#" + renderTo + "_upfiles").html(html);
		},
		split:function(value, seg) {
			if (value==null || value=="") {
				return [];
			} else {
				return (value + "").split(seg);
			}
		}
	};
	
	var AjaxFileUpload = function(config) {
		var renderTo = config.renderTo;
		var title = config.title;
		var disabled = config.disabled;
		var renderNameTo = config.renderNameTo;
		var valueTo = config.valueTo;
		if (renderTo.indexOf('#') >= 0) {
			renderTo = renderTo.substr(1, renderTo.length - 1);
			config.renderTo = renderTo;
		}
		
		$help.doRender(renderTo, renderNameTo,title, disabled);
		$("#" + renderTo + "_file").ajaxfileupload(config);
		
		$.extend(this, config);
	};
	
	$.extend(AjaxFileUpload.prototype,{
		renderTo: '',
		title: '文件上传',
		disabled: false,
		valueTo: '',
		setValue:function(value) {
			if(value) {
				$help.loadFiles(value, this.renderTo,this.renderNameTo,this.disabled);
			}
		},
		getValue:function() {
			return nui.get(this.valueTo).getValue();
		},
		setDisable:function(){
			this.disabled = true;
			$("#" + this.renderTo + "_file").hide();
			$("#" + this.renderTo + "_fileBtn").hide();
		}
	});
    
    $.fn.ajaxfileupload = function(options) {
        var settings = {
          	params: {},
          	action: $help.getUploadUrl(),
//          	dataType:'text',
//          	contentType:"text/html",
			setValue:function(serverData) {
				var value = this.getValue();
				var valueArr = $help.split(value, ',');
				var fileId=serverData;
				valueArr.push(fileId);
				value = valueArr.join(',');
				
				this.value = value;
				if(value) {
					$help.loadFiles(value, this.renderTo,this.renderNameTo, this.disabled);
					nui.get(this.valueTo).setValue(value);
				}
			},
			getValue:function() {
				return nui.get(this.valueTo).getValue();
			},
          	onStart: function() {
          		// 开始上传方法
          	},
          	onComplete: function(response) {
          		// 上传完成之后方法
          		if (response.status==false) {
          			nui.alert(response.message);
          		} else {
          			settings.setValue(response);
          			settings.onUploadOneFileSuccess(response);
          		}
          	},
          	onCancel: function() {
          		// 取消上传方法
          	},
          	validate_extensions : true,
          	valid_extensions : ['gif','jpg','bmp','png','psd','ico','rar','zip','avi','rmvb','3gp','flv','mp3','wav','krc','lrc','doc','docx','xls','xlsx','ppt','pdf','chm','txt'],
          	submit_button : null,
          	valueTo: '',
          	renderTo: '',
			title: '文件上传',
			disabled:false,
			value: '',
			removeFile:function(fileId) {
				var value = this.getValue();
				if(value){
					var valueArr = $help.split(value, ',');
					for(var i=0;i<valueArr.length;i++){
						if(valueArr[i]==fileId){
							valueArr.splice(i,1);
							value = valueArr.join(',');
							break;
						}
					}
				}
				return value;
			},
			getRenderEl:function(){
				return $("#" + this.renderTo);
			},
			init:function() {
				if(this.renderTo){
					
				}
			},
			initEvent:function() {
				var _this=this;
				$('.ajaxupload-file-del').live('click',function() {
					var fileId=$(this).attr('fileId');
					//$(this).parent().remove();
					
					var newValue=_this.removeFile(fileId);
					this.value = newValue;
					if(newValue!=null && newValue!="") {
						
						$help.loadFiles(newValue, _this.renderTo,_this.renderNameTo, _this.disabled);
						nui.get(_this.valueTo).setValue(newValue);
					} else {
						$help.doFilesRender({files:[]}, _this.renderTo,_this.renderNameTo, _this.disabled);
						nui.get(_this.valueTo).setValue("");
					}
				});
			},
			onUploadOneFileSuccess:function(serverData) {
				
			}
        };

        var uploading_file = false;

        if (options) {
          	$.extend(settings, options);
          	
          	settings.initEvent();
        }


        // 'this' is a jQuery collection of one or more (hopefully) 
        //  file elements, but doesn't check for this yet
        return this.each(function() {
          var $element = $(this);

          // Skip elements that are already setup. May replace this 
          //  with uninit() later, to allow updating that settings
          if($element.data('ajaxUploader-setup') === true) return;

          $element.change(function()
          {
            // since a new image was selected, reset the marker
            uploading_file = false;

            // only update the file from here if we haven't assigned a submit button
            if (settings.submit_button == null)
            {
              upload_file();
            }
          });

          if (settings.submit_button == null)
          {
            // do nothing
          } else
          {
            settings.submit_button.click(function(e)
            {
              // Prevent non-AJAXy submit
              e.preventDefault();
              
              // only attempt to upload file if we're not uploading
              if (!uploading_file)
              {
                upload_file();
              }
            });
          }

          var upload_file = function()
          {
            if($element.val() == '') return settings.onCancel.apply($element, [settings.params]);
            // make sure extension is valid
            var ext = $element.val().split('.').pop().toLowerCase();
            var renderTo=settings.renderTo;
            var obj_file = document.getElementById(renderTo+"_file");  
            
            var fileSize = 0;
            var isIE = /msie/i.test(navigator.userAgent) && !window.opera;            
            if (isIE && !obj_file.files) {          
                 var filePath = obj_file.value;            
                 var fileSystem = new ActiveXObject("Scripting.FileSystemObject");   
                 var file = fileSystem.GetFile (filePath);               
                 fileSize = file.Size;         
            }else {
                 fileSize = obj_file.files[0].size;
            } 
            fileSize=Math.round(fileSize/1024/1024*100)/100; //单位为KB
            if(fileSize>=15.24){
                alert("当前文件大小为"+fileSize+"MB,单个文件不能超过15.24MB!");
                return false;
            }
            
            if(true === settings.validate_extensions && $.inArray(ext, settings.valid_extensions) == -1)
            {
              // Pass back to the user
              settings.onComplete.apply($element, [{status: false, message: '选择的文件类型与要求不符，要求文件类型如下:</br><font color=red>' + settings.valid_extensions.join(',') + '</font>'}, settings.params]);
            } else
            { 
              var messageid = nui.loading("正在操作中，请稍后......", "Loading");
              uploading_file = true;

              // Creates the form, extra inputs and iframe used to 
              //  submit / upload the file
              wrapElement($element,messageid);

              // Call user-supplied (or default) onStart(), setting
              //  it's this context to the file DOM element
              var ret = settings.onStart.apply($element, [settings.params]);
			  
              // let onStart have the option to cancel the upload
              if(ret !== false)
              {
                $element.parent('form').submit(function(e) { e.stopPropagation(); }).submit();
              } else {
                uploading_file = false;
              }
            }
          };

          // Mark this element as setup
          $element.data('ajaxUploader-setup', true);

          /*
          // Internal handler that tries to parse the response 
          //  and clean up after ourselves. 
          */
          var handleResponse = function(loadedFrame, element,messageid) {
            
            var response, responseStr = $(loadedFrame).contents().text();
            try {
              //response = $.parseJSON($.trim(responseStr));
              response = JSON.parse(responseStr);
              nui.hideMessageBox(messageid);
            } catch(e) {
              response = responseStr;
            }
			
            // Tear-down the wrapper form
            element.siblings().remove();
            element.unwrap();
			
            uploading_file = false;
			
            // Pass back to the user
            settings.onComplete.apply(element, [response, settings.params]);
          };

          /*
          // Wraps element in a <form> tag, and inserts hidden inputs for each
          //  key:value pair in settings.params so they can be sent along with
          //  the upload. Then, creates an iframe that the whole thing is 
          //  uploaded through. 
          */
          var wrapElement = function(element,messageid) {
            // Create an iframe to submit through, using a semi-unique ID
            
            var frame_id = 'ajaxUploader-iframe-' + Math.round(new Date().getTime() / 1000);
            $('body').after('<iframe width="0" height="0" style="display:none;" name="'+frame_id+'" id="'+frame_id+'"/> ');
            
            var browser=navigator.appName 
			var b_version=navigator.appVersion 
			var version=b_version.split(";"); 
			var trim_Version=version[1].replace(/[ ]/g,""); 
	   		if(browser=="Microsoft Internet Explorer") {
	   			if (trim_Version=="MSIE8.0") {
	   				document.getElementById(frame_id).attachEvent("onload", function() {
		            	handleResponse(document.getElementById(frame_id), element,messageid);
		            });
	   			} else {
	   				$('#'+frame_id).get(0).onload = function() {
		               handleResponse(this, element,messageid);
		            }
	   			}
	   		} else {
	   			$('#'+frame_id).get(0).onload = function() {
	               handleResponse(this, element,messageid);
	            }
	   		}
	   		
            // Wrap it in a form
            element.wrap(function() {
              return '<form action="' + settings.action + '" method="POST" enctype="multipart/form-data" target="'+frame_id+'" />';
            })
            // Insert <input type='hidden'>'s for each param
            .before(function() {
              var key, html = '';
              for(key in settings.params) {
                var paramVal = settings.params[key];
                if (typeof paramVal === 'function') {
                  paramVal = paramVal();
                }
                html += '<input type="hidden" name="' + key + '" value="' + paramVal + '" />';
              }
              return html;
            });
          }
        });
      }
      
      window['AjaxFileUpload']=AjaxFileUpload;
})( jQuery )

$(function(){
	
	setTimeout(function(){
		
		$(".fileBtn").hover(function(){
			$(this).parent().find("#fileUpload_fileBtn").addClass("mini-button-over");
			
		},function(){
			
			$(this).parent().find("#fileUpload_fileBtn").removeClass("mini-button-over");
		});
		
		if($("#fileUpload .fileBtn").length==0){
			$("#fileUpload fieldset,#fileUploadOther fieldset").css({"padding-bottom":"5px"});
		}
		
	},2000);
	
	
});

