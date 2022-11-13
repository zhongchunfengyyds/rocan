$(function(){
    var $dt = ".dropdown-toggle";
    var $progress = ".progress + .btn";
    var $folding = ".folding-toggle";
    $($folding).bind("click",function(e){ 
        stopEvent(e)
        $(this).parents(".navbar").next(".folding-menu").slideToggle()
        $(this).find(".fa").toggleClass("fa-angle-down")
    });
    
    $($dt).bind("click",function(e){
        stopEvent(e)
        $($dt).not(this).parent().removeClass("open")
        $(this).parent().toggleClass("open")
    })
    $($progress).bind("click",function(e){
        stopEvent(e)
        var progress = $(this).attr("class").indexOf("active")
        console.log(progress)
        if(progress == -1){
            $(this).addClass("active").attr("aria-pressed",false).prev(".progress").find(".progress-bar").addClass("active")
            
        }else{
            $(this).removeClass("active").attr("aria-pressed",true).prev(".progress").find(".progress-bar").removeClass("active")
        }
    })
    $(document.body).bind("click",function(e){
        $($dt).parent().removeClass("open")
    })
    function stopEvent(e){
        e.preventDefault()
        e.stopPropagation()
    }
})
