$(function(){
    var $dt = ".cuc-dropdown-toggle";
    var $progress = ".cuc-progress + .cuc-btn";
    var $folding = ".folding-toggle";
    var $panel = ".panel-toggle"
    $($folding).on("click",function(e){ 
        stopEvent(e)
        $(this).parents(".cuc-navbar").next(".folding-menu").slideToggle()
        $(this).find(".fa").toggleClass("fa-angle-down")
    });
    $($panel).on("click",function(e){ 
        stopEvent(e)
        $(this).parents(".cuc-panel-heading ").next(".panel-menu").slideToggle()
        $(this).find(".fa").toggleClass("fa-angle-down")
    });
    $($dt).on("click",function(e){
        stopEvent(e)
        $($dt).not(this).parent().removeClass("cuc-open")
        $(this).parent().toggleClass("cuc-open")
    })
    $($progress).on("click",function(e){
        stopEvent(e)
        var progress = $(this).attr("class").indexOf("cuc-active")
        if(progress == -1){
            $(this).addClass("cuc-active").attr("aria-pressed",false).prev(".cuc-progress").find(".cuc-progress-bar").addClass("cuc-active")
            
        }else{
            $(this).removeClass("cuc-active").attr("aria-pressed",true).prev(".cuc-progress").find(".cuc-progress-bar").removeClass("cuc-active")
        }
    })
    $(document.body).on("click",function(e){
        $($dt).parent().removeClass("cuc-open")
    })
    function stopEvent(e){
        e.preventDefault()
        e.stopPropagation()
    }
})
