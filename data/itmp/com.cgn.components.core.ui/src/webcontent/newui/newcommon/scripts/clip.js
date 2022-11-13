$(function(){
	$("body").append('<div id="source-modal" class="modal fade in" style="display: none;">'+
        '<div class="modal-dialog modal-lg">'+
          '<div class="modal-content">'+
            '<div class="modal-header">'+
              '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>'+
              '<h4 class="modal-title">'+
              	'Source Code'+
//            	'<div class="clip" style="display:none;">'+
//            		'<span class="btn-clip" data-clipboard-text="">copy</span>'+
//            	'</div>'+
//            	'<div class="copy-succ">复制成功</div>'+
              '</h4>'+
            '</div>'+
            '<div class="modal-body">'+
              '<pre></pre>'+
           ' </div>'+
          '</div>'+
        '</div>'+
      '</div><div class="modal-backdrop fade in" style="display:none;"></div>')
	$(".area").append('<div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt; &gt;</div>')
	$(".area").on("mouseenter",function(){
	    if($(this).find("#apply").attr("src").indexOf("demo")!=-1)
		$("#source-button").show()
	})
	$(".area").on("mouseleave",function(){
	    if($(this).find("#apply").attr("src").indexOf("demo")!=-1)
		$("#source-button").hide()
	})
	$("#source-button").on("click",function(){
		$(".modal-backdrop").show()
		$("#source-modal").show()
		
		var browser=navigator.appName  ;
        var b_version=navigator.appVersion ;
        var version=b_version.split(";"); 
        //var trim_Version=; 
        if(browser=="Microsoft Internet Explorer" && version[1].replace(/[ ]/g,"")=="MSIE8.0") {
            var lines = setIframeHtml("#apply",".bs-docs-section");
            $("#source-modal pre").css({
                "maxHeight":$(".side-left").height()-(30-$("#source-modal .modal-header").height()-15)*2-220,
                overflowX:"scroll"
            })
        } else{
            var html = setIframeHtml("#apply",".bs-docs-section");
            var lines = cleanSource(html);
            $("#source-modal pre").css({
                "maxHeight":$(".side-left").height()-(30-$("#source-modal .modal-header").height()-15)*2-220,
                overflowX:"scroll"
            })
        }
		
		$("#source-modal pre").text(lines);
		$(".clip .btn-clip").attr("data-clipboard-text",lines);
		//复制功能
//		$(".clip .btn-clip").on("mouseover",function(){
//			var clip = new Clipboard(this);
//			clip.on("success",function(){
//				showCopySucc($(".copy-succ"));
//				return false;
//			});
//		})
//		$(".clip .btn-clip").on("click",function(){
//			var clip = new Clipboard(this);
//			clip.on("success",function(){
//				showCopySucc($(".copy-succ"));
//				return false;
//			});
//		})
		
	})
	$(".modal-backdrop").on("click",function(){
		$(this).hide()
		$("#source-modal").hide()
	})
	$("#source-modal").on("click",function(e){
		$(this).hide()
		$(".modal-backdrop").hide()
	})
	$("#source-modal .close").on("click",function(e){
		$("#source-modal").hide()
		$(".modal-backdrop").hide()
	})
	$("#source-modal .modal-dialog").on("click",function(e){
		e.stopPropagation()
	})
	


function cleanSource(html) {
    html = html.replace(/×/g, "&times;")
               .replace(/«/g, "&laquo;")
               .replace(/»/g, "&raquo;")
               .replace(/←/g, "&larr;")
               .replace(/→/g, "&rarr;")
               .replace(/"/g, "'");

    var lines = html.split(/\n/);

    lines.shift();
    lines.splice(-1, 1);
String.prototype.trim = function() { 
  return this.replace(/(^\s*)|(\s*$)/g, ''); 
}; 
if (typeof Array.prototype.map != "function") {
  Array.prototype.map = function (fn, context) {
    var arr = [];
    if (typeof fn === "function") {
      for (var k = 0, length = this.length; k < length; k++) {      
         arr.push(fn.call(context, this[k], k, this));
      }
    }
    return arr;
  };
}

var indentSize = lines[0].length - lines[0].trim().length,
        re = new RegExp(" {" + indentSize + "}");

    lines = lines.map(function(line){
      if (line.match(re)) {
        line = line.substring(indentSize);
      }

      return line;
    });

    lines = lines.join("\n");

    return lines;
}
function showCopySucc(query){
  	query.css({"opacity":1});
  	setTimeout(function(){
  		query.css({"opacity":0});
  	},800)
  }

})
function setIframeHtml(queryID,queryClass){
	var html = $(queryID).contents().find(queryClass).html()
	return html;
}