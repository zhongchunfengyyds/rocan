(function($, nui) {
	"use strict";
	nui.AttachPanel = function() {
		nui.AttachPanel.superclass.constructor.apply(this, arguments);
	};
	var _fileList = [];
	nui.extend(nui.AttachPanel, nui.Panel, {
		uiCls: 'nui-attachpanel',
		expanded: false,
		_successMessage: '文件上传成功',
		_failedMessage: '文件上传失败',
		_downloadText: "下载",
		_deleteText: "删除",
		_bizKey: null,
		_loaded: false,
		_canModifyData: false,
		getNewRecords: function() {
			// 选择新插入的行
			var attachs = [];
			var $trs = $(this.getBodyEl()).find("table tr[id='NAN']");
			if($trs) {
				$.each($trs, function(i) {
					var attach = {};
					attachs.push(attach);
					$.each($(this).find("td"), function() {
						var $td = $(this);
						var name = $td.attr("name");
						if($td.children("a").attr(name)) {
							attach[name] = $td.children("a").attr(name);
						} else {
							attach[name] = $td.text();
						}
					});
				});
			}
			return attachs;
		},
		
		_create: function(e) {
			nui.AttachPanel.superclass._create.apply(this, arguments);
			$(this.getBodyEl()).append($("<table width='100%'><thead><TR><td></td><td></td><td></td><td></td></TR></thead><tbody></tbody></table>"));
			$("<div id='file-plugin'><form id='uploadform' enctype='multipart/form-data'><div class='a-upload'><a  class='nui-button'  iconCls='icon-upload'  href='javascript:;'></a><input id='fileupload' type='file' name='files[]' multiple></div></form></div>").css("position", "absolute").css("top","0").css("right", "20px").css("height", "50px").insertAfter($(this.getHeaderEl()).find(".mini-panel-title"));
		},
		
		expand: function() {
			nui.AttachPanel.superclass.expand.apply(this, arguments);
			var self = this;
	    	if(self._bizKey && !self._loaded) {
	    		self._loadData();
	    	}
		},
		
		_download: function(e) {
			$("<form>")
				.attr("style","display:none")
				.attr("target","")
				.attr("method","post")
				.attr("action",_CONTEXT_PATH + "/coframe/tools/download.jsp?remoteFile=" + $(e.srcElement).attr("uri") + "&name=" + $(e.srcElement).parent().parent().find("td[id='filename']").text())
				.appendTo($("#file-plugin"))
				.submit().remove();
		},
		
		_remove: function(e) {
			var $row = $(e.srcElement).parent().parent();
			var id = $row.attr("id");
			var filename = $(e.srcElement).parent().parent().find("td[id='filename']").text();
			if(id == "NAN") {
				$row.remove();
			} else {
				nui.ajax({
					url: "com.cgn.components.coframe.tools.AttachManager.removeAttach.biz.ext",
					type : "POST",
					data : {attachId: id},
					dataType : "json",
					success : function(data) {
						if(data.result == 1) {
							$row.remove();
						}
					}
				});
			}
			var ind = -1;
			
			for(var i =0;i<_fileList.length;i++){
				if(filename == _fileList[i]){
					ind = i;
	    		}
			}
			_fileList.splice(ind,1);
		},
		
		_installUploadListener: function() {
			var $div = $(this.getHeaderEl()).find("#uploadform");
			var $table = $(this.getBodyEl()).find("table");
			var self = this;
			
			$div.find("#fileupload").bind("change", function(e) {
				var me = this;
				var filename = this.value.substring(this.value.lastIndexOf("\\")+1);
				var flag = false;
				$.each(_fileList, function(i, name) {
		    		if(filename == name){
		    			flag = true;
		    		}
		    	});
				if(flag){
					var tips = {
	            			x: "right",
	            			y: "center"
		            	};
					tips.content = '不允许上传同文件名文件';
            		tips.state = "warning";
	            	nui.showTips(tips);
	            	
	            	if(this.value){
	            		this.value = "";
	            	}
	            	return;
				}
				var filesize = 0;
				if($.browser.msie){
					var img = new Image();
					img.src = this.value;
					filesize = img.fileSize;
				}else{
					filesize = this.files[0].size;
				}
				if(filesize>104857600){
					var tips = {
	            			x: "right",
	            			y: "center"
		            	};
					tips.content = '不允许上传超过100M的文件';
            		tips.state = "warning";
	            	nui.showTips(tips);
	            	if(this.value){
	            		this.value = "";
	            	}
	            	return;
				}
				if(this.value) {
					var imgUrl = _CONTEXT_PATH + "/taskcenter/media/images/wait.gif?rnd="+Math.random();
					$(self.getHeaderEl()).append($("<img id='imguplodgif' style='display: block;margin:auto;didden' width='200' height='10' src='"+imgUrl+"' />"));
					$("#uploadform").ajaxSubmit({
						type: "post",
						dataType : "json",
			            url: _CONTEXT_PATH + "/coframe/tools/upload.jsp?bizKey=" + self._bizKey,			            
			            success: function (data) {
			            	me.value = null;
			            	var tips = {
		            			x: "right",
		            			y: "center"
			            	};
			            	if(data.code == 1) {
				            	self._renderer("NAN", data.list, $table.children("tbody"));
				            	self.set({expanded: true});
				            	
				            	if(self._successMessage) {
				            		tips.content = self._successMessage;
				            		tips.state = "success";
					            	nui.showTips(tips);
				            	}
			            	} else {
			            		//tips.content = self._failedMessage ? self._failedMessage : data.message;
			            		tips.content = data.message ? data.message:self._failedMessage;
			            		tips.state = "warning";
				            	nui.showTips(tips);
			            	}
			            	$("#imguplodgif").remove();
			            }
					});
				}
			});
		},
		
		getAttrs: function (el) {
			var attrs = {};
	        mini._ParseString(el, attrs, ["uploadText", "downloadText", "deleteText", "successMessage", "failedMessage", "fileNameHeader", "uploadTimeHeader", "sizeHeader", "operatorsHeader", "bizKey"] );
	        mini._ParseInt(el, attrs, ["canModifyDataTag"]);
	        return $.extend(attrs, nui.AttachPanel.superclass.getAttrs.call(this, el));
	    },
	    
	    setCanModifyDataTag: function(value) {
	    	this._canModifyData = value != 1;
	    	if(value == 1) {
	    		$(this.getHeaderEl()).find("#uploadform").css("visibility", "hidden");
	    	} else {
	    		this._installUploadListener();
	    	}
	    },
	    
	    setBizKey: function(value) {
	    	this._bizKey = value;
	    },
	    
	    setUploadText: function(value) {
	     	$(this.getEl()).find("#uploadform .a-upload a").text(value);
	    },
	    
	    setDownloadText: function(value) {
	    	this._downloadText = value;
	    },
	    
	    setDeleteText: function(value) {
	    	this._deleteText = value;
	    },
	    
	    setSuccessMessage: function(value) {
	    	this._successMessage = value;
	    },
	    
	    setFailedMessage: function(value) {
	    	this._failedMessage = value;
	    },
	    
	    setFileNameHeader: function(value) {
	    	this._setHeader(0, value);
	    },
	    
	    setUploadTimeHeader: function(value) {
	    	this._setHeader(1, value);
	    },
	    
	    setSizeHeader: function(value) {
	    	this._setHeader(2, value);
	    },
	    
	    setOperatorsHeader: function(value) {
	    	this._setHeader(3, value);
	    },
	    
	    _setHeader: function(index, value) {
	    	$($(this.getBodyEl()).find("table td")[index]).text(value);
	    },
	    
	    _renderer: function(id, list, $tbody) {
	    	var self = this;
	    	$.each(list, function(i, attach) {
	    		if(!id) {
	    			id = attach.attachId;
	    		}
	    		_fileList.push(attach.name);
	    		$tbody.append($("<tr id='" + id + "'><td id='filename' name='name'>" + attach.name + "</td><td name='uploadTime'>" + attach.uploadTime +"</td><td name='size'>" + attach.size +"</td><td name='uri'><a type='download' href='javascript:;' uri='" + attach.uri + "'>" + self._downloadText + "</a>" + (self._canModifyData ? "<a type='delete' href='javascript:;'>" + self._deleteText + "</a>" : "") + "</td></tr>"));
	    	});
	    	$tbody.find("a[type='download']").unbind("click").bind("click", self._download);
	    	$tbody.find("a[type='delete']").unbind("click").bind("click", self._remove);
	    },
	    
	    _clear: function() {
	    	$(this.getBodyEl()).find("table tbody tr").remove();
	    },
	    
	_loadData: function() {
	    	var self = this;
	    	nui.ajax({
	    		url: "com.cgn.components.coframe.tools.AttachManager.getAttachList.biz.ext",
	    		type : "POST",
				data : {bizKey: this._bizKey},
				dataType : "json",
				success : function(data) {
					self._loaded = true;
					self._clear();
					self._renderer(null, data.list, $(self.getBodyEl()).find("table tbody"));
				}
	    	});
	    },
	    
	    load: function(bizKey) {
	    	this.setBizKey(bizKey);
	    	this._loadData();
	    }
	});
	mini.regClass(nui.AttachPanel, "attachpanel");
})(jQuery, nui);