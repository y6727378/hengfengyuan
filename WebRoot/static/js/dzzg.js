$(document).ready(function () {

$(".exhibitionServiceBox li").hover(
  function(){
    $(this).find("i").hide();
    $(this).find("a").css({filter:'initial',mozOpacity:'initial',opacity:'initial'});
    $(this).find("img").css("top","170px");
    $(this).find("img").animate({top: "0"}, 400 )
  },function(){
    $(this).find("i").show();
    $(this).find("a").css({filter:'alpha(opacity=60)',mozOpacity:'0.6',opacity:'0.6'});
  }
);
})
