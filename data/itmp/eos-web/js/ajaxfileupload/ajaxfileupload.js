(function($){
	$help={
		getContext:function(){
			if(window['contextPath']){
				return window['contextPath'];
			}
			this.contextPath='/'+window.location.href.split('/')[3];
			return this.contextPath;
		},
		loadJS:function(src){
			document.write('<script type="text/javascript" src="'+src+'"></script>');
		},
		loadCSS:function(href){
			var link=document.createElement('LINK');
			link.type="text/css";
			link.href=href;
			link.rel="stylesheet";
			document.getElementsByTagName('head')[0].appendChild(link);
		}
	}
	var path=$help.getContext()+'/js/ajaxfileupload/';
	
	(function(){
		if(window['SWFUpload']){
			return;
		}
		var jsRes=[
			'js/jquery.ajaxfileupload.js'
		];
		if(!$){
			//jsRes.unshift('js/jquery-1.6.2.min.js');
		}
		var cssRes=[
			//'css/ajaxfileupload.css'
		];
		for(var i=0,len=jsRes.length;i<len;i++){
			$help.loadJS(path+jsRes[i]);
		}
		for(var i=0,len=cssRes.length;i<len;i++){
			$help.loadCSS(path+cssRes[i]);
		}
		window['__swfFileUploadJSList']=jsRes;
	})();
	
	//该变量定义好之后，在js/fileupload.js文件中使用
	window['__swfFileUploadPath']=path;
})(window['jQuery']);

//删除附件函数
function _removeFile(fileId) {
//	$.ajax({
//		url:'org.oa.common.util.fileComp.deleteFile.biz.ext',
//		data:{
//			fileId:fileId
//		},
//		dataType:'json',
//		success:function(ret){
//			if(ret.exception){
//				if(ret.exception.code==12101001){
//					window.location.href=ret.exception.loginPage+'?_url='+window.location.href;
//				} else{
//					nui.alert(ret.exception.message);
//				}
//			} else {
//				if(ret.reCode=="0") {
//					nui.alert('删除失败');
//				}
//			}
//		},
//		fail:function(){
//			nui.alert('数据加载失败！');
//		}
//	});
}

