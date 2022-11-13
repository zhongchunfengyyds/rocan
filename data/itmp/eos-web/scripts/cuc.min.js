$(function(){
    var $dt = ".dropdown-toggle";
    var $progress = ".progress + .btn";
    var $folding = ".folding-toggle";
    $($folding).bind("click",function(e){ 
        stopEvent(e);
        $(this).parents(".navbar").next(".folding-menu").slideToggle();
        $(this).find(".fa").toggleClass("fa-angle-down");
    });
    
    $($dt).bind("click",function(e){
        stopEvent(e);
        $($dt).not(this).parent().removeClass("open");
        $(this).parent().toggleClass("open");
    });
    $($progress).bind("click",function(e){
        stopEvent(e);
        var progress = $(this).attr("class").indexOf("active");
        console.log(progress);
        if(progress == -1){
            $(this).addClass("active").attr("aria-pressed",false).prev(".progress").find(".progress-bar").addClass("active");
            
        }else{
            $(this).removeClass("active").attr("aria-pressed",true).prev(".progress").find(".progress-bar").removeClass("active");
        }
    });
    $(document.body).bind("click",function(e){
        $($dt).parent().removeClass("open");
    });
    function stopEvent(e){
        e.preventDefault();
        e.stopPropagation();
    }
});
//高级搜索按钮
function showquery() {
	var div = $("#form1");
	div.slideToggle(500);
	$("#funquery").toggleClass("fa-chevron-up fa-chevron-down");
	if($("#scbt").text()=="高级查询"){
		$("#fuzzyQuery").hide();
		$("#allQuery").show();
		$("#scbt").text("隐藏查询条件");
//		var form = new nui.Form("#form1");//将普通form转为nui的form
		form.reset();
	}else{
		$("#fuzzyQuery").show();
		$("#allQuery").hide();
		$("#scbt").text("高级查询");
//		$("#cond").val("");
	}
};
//打开新增按钮
function openAllAdd(){
	$(".add_adds").toggle();
};
document.onclick = function (e) {
    //判断点击的地方是否为“更多”按钮和弹出层是否显示
	    if(!$(e.target).is("#addallbut")&&$(".add_adds").is(":visible")==true){
	        $(".add_adds").toggle();
	    }
 };

 $("input[readOnly]").keydown(function(e) {
     e.preventDefault();
});