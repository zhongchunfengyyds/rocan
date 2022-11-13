/**
 * 
 */
"use strict";

nui.parse();

var queryType = 0;

function btnText(query ,html){
    var html = "";
    if(query.css("display") == "none"){
        html = "返回";
    }else{
        html = "高级搜索";
    }
    query.slideToggle();
    return html ;
}
$(".adv-search").bind("click",function(e){
    e.preventDefault();
    var folding = $(this).parents(".navbar").next(".folding-menu");
    var html = btnText(folding );
    $(this).html(html);
    $(this).parents(".query-form").find(".dw-toggle .fa").toggleClass("fa-angle-down");
});
$(".dw-toggle").bind("click",function(e){
    e.preventDefault();
    $(this).find(".fa").toggleClass("fa-angle-down");
    var folding = $(this).parents(".navbar").next(".folding-menu");
    var html = btnText(folding);
    $(this).parents(".navbar-right").prev().find(".adv-search").html(html);
});



