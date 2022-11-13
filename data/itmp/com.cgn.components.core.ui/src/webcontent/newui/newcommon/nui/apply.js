function setIframeHeight(query){
	$(query).load(function(){
		var mainheight = $(this).contents().find("body").height()+30;
		$(this).height(mainheight);
	});
}

		window.onscroll = function(){
			var x = document.body.scrollTop;
			$("#apply .fully").css("marginTop",x+"px");
		}


		var fully = $(".fully").width();
		var side = $(".side-bar").width();
window.onload = function () {
		$("#apply").css("height",$(".area").height()-40);
			var height  = $(".side-bar").height() - $(".side-pills").height() - $(".side-toggle").height();
$(".side-menu").css({
	"width":190+17,
	"maxHeight":$(".side-bar").height()-30-40,
	"overflowY":"scroll",
	"overflowX":"hidden"
})

};
$(".side-menu > li > a").click(function(e){
	e.preventDefault();
    $(".bread .bread-ej").html($(this).parents(".side-menu").prev().find(".side-text").html())
    $(".bread .active").html($(this).find(".side-text").html())
	$("#apply").css("height",$(".area").height()-40);
	$(this).parents(".side-menu").parent().siblings().find(".side-menu > .active").removeClass("active");
	$(this).parent().addClass("active").siblings().removeClass("active");
	
//	视频跳转
	if($(this).attr("href") == "video.html"){
		window.open($(this).attr("href"))
	}
	if($(this).data("fully")){
		$(".fully").css("left",side).show().find("ul").html($(this).data("fully"))
		
		$("#apply").attr("src",$(".fully  li:nth-child(3) > a").attr("href")).ready();
		//setIframeHeight(document.getElementById('apply'));
		
		
		if($(".fully ul").height() > $(".fully").height()){
			$(".fully ul").width($(".fully").width()+20);
			$(".fully ul").css({
				"overflowY":"scroll","height":$(".fully").height(),"overflowX":"hidden"
			})
		}
		if($(".side-bar .side-text").css("display") == "none"){
			$(".box").css("padding-left",fully+50);
		}else{
			$(".box").css("padding-left",side+fully);
		}
		//3级栏目激活状态   
		$(".fully  li").on("click","a",function(e){
			e.preventDefault();
			$(this).parent().addClass("active").siblings().removeClass("active");
			if($(this).attr("href") == "demo_process_by.html"){
				$(".area").css("background","transparent")
			}
			if($(this).attr("href") == "demo_date.html"){
				$("#apply").css("minHeight","500px")
			}
			$("#apply").attr("src",$(this).attr("href")).ready();
//			$("#apply")[0].onload = function(){
//		setIframeHeight(document.getElementById('apply'));
//			}
			//setIframeHeight(document.getElementById('apply'));
	})
	}else{
		$("#apply").attr("src",$(this).attr("href")).ready();
//		$("#apply")[0].onload = function(){
//			setIframeHeight(document.getElementById('apply'));
//			
//		}
		//setIframeHeight(document.getElementById('apply'));
		$(".fully").hide();
		if($(".side-bar .side-text").css("display") == "none"){
			$(".box").css("padding-left",50);
		}else{
			$(".box").css("padding-left",side);
		}
	}
	
	$(".fully .btn-flex").on("click",function(){
		$(this).toggleClass("on");
		if($(this).attr("class").indexOf("on") !=-1){
			$(this).find("span").attr("class","fa fa-caret-right");
			$(this).parents(".fully").animate({"left":side-fully},250);
			if(parseInt($(".side-left").css("left")) == 0){
				$(".box").animate({"padding-left":side+25},250)
			}else{
				$(".box").animate({"padding-left":50+25},250)
			}
		}else{
			$(this).find("span").attr("class","fa fa-caret-left")
			$(this).parents(".fully").animate({"left":side},250)
			if(parseInt($(".side-left").css("left")) == 0){
				$(".box").animate({"padding-left":side+fully},250)
			}else{
				$(".box").animate({"padding-left":fully+50},250)
			}
		}
	})
	
	
});

$(function(){
		$(".box").css("minHeight",$(".side-left").height()-50);
	//折叠一级栏目
	$(" .side-bar .side-toggle").on("click",function(){
		$(this).find(".fa").toggleClass("fa-indent");
		var query = $(this).parents(".side-left");
		query.toggleClass("bar-flex");
		var p = null;
		if($(".fully").css("display") == "none"){
			p = 0
		}else{
			p = 25;
		}
		if(query.attr("class").indexOf("bar-flex")!=-1){
			query.animate({"left":-side+50},250,function(){
				$(".side-text").hide()
				$(".side-pills  li  a").css("text-align","right")
			})
			if($(".btn-flex").attr("class").indexOf("on")!=-1){
				$(".box").animate({"padding-left":50+p},250)
			}else if($(".fully").css("display") == "block"){
				$(".box").animate({"padding-left":fully+50},250)
			}else if($(".fully").css("display") == "none"){
			    $(".box").animate({"padding-left":50},250)
			}
		}else{
			$(".side-text").show()
			$(".side-pills  li  a").css("text-align","left")
			query.animate({"left":"0"},250)
			if($(".btn-flex").attr("class").indexOf("on")!=-1){
				$(".box").animate({"padding-left":side+p},250)
			}else if($(".fully").css("display") == "block"){
				$(".box").animate({"padding-left":side+fully},250)
			}else if($(".fully").css("display") == "none"){
			    $(".box").animate({"padding-left":side},250)
			}
		}
	})
	//左侧 tooltip
	$(".side-menu .nav-icon").mouseenter(function(){
		if($(".side-bar .side-text").css("display") == "none"){
			var offset = $(this).offset().top;
			$(".tooltip .tooltip-inner").html($(this).next().html())
			$(".tooltip").css({
				top:offset+20-$(".tooltip").height()/2,
				left:$(this).width()
			}).addClass("right");
			$(".tooltip").show()
		}
	});
	$(".side-menu .nav-icon").mouseleave(function(){
		$(".tooltip").hide()
	});

	
	//折叠二级栏目
	$(".side-bar .side-pills > li > a").on("click",function(){
		$(this).parent().toggleClass("active").siblings(".active").removeClass("active");
		$(this).parent().siblings("li").find(".side-menu").slideUp();
		$(this).find(".fa-angle-right").toggleClass("side-rotate").parents("li").siblings().find(".fa-angle-right").removeClass("side-rotate");
		$(this).next(".side-menu").slideToggle()
		$(".side-menu").css({
            "overflowY":"scroll",
            "overflowX":"hidden"
        })
	})
	//折叠三级栏目
	$(".fully .btn-flex").on("click",function(){
		$(this).toggleClass("on");
		if($(this).attr("class").indexOf("on") !=-1){console.log($(this).find("span").attr("class"));
			$(this).find("span").attr("class","fa fa-caret-right");
			$(this).parents(".fully").animate({"left":side-fully},250);
			if(parseInt($(".side-left").css("left")) == 0){
				$(".box").animate({"padding-left":side+25},250)
			}else{
				$(".box").animate({"padding-left":50+25},250)
			}
		}else{
			$(this).find("span").attr("class","fa fa-caret-left")
			$(this).parents(".fully").animate({"left":side},250)
			if(parseInt($(".side-left").css("left")) == 0){
				$(".box").animate({"padding-left":side+fully},250)
			}else{
				$(".box").animate({"padding-left":fully+50},250)
			}
		}
	})

})
