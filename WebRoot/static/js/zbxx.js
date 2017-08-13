$(document).ready(function () {
  $('.zbxxlist').hover(function () {
    $('.zbxxlist ul').eq($(this).index()).css("border","1px solid #1860cd");
    $('.zbxxcontit').eq($(this).index()).css("color","#1860cd");
    $('.zbxxcontitlight').eq($(this).index()).show();
  },function () {
    $('.zbxxcontit').css("color","#333");
    $('.zbxxcontitlight').hide();
    $('.zbxxlist ul').css("border","1px solid #e2e2e2");
  })
})
