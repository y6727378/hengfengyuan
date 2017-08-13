$(document).ready(function () {
  var navH = $(".toptit").offset().top;
  $(window).scroll(function () {
    var scroH = $(this).scrollTop();
    if(scroH>=navH){
      $(".toptit").css({"position":"fixed","top":"0","left":"50%","margin-left":"-550px"});
    }else if(scroH<navH){
      $(".toptit").css({"position":"static","margin":"0 auto"});
    }
  })
})
