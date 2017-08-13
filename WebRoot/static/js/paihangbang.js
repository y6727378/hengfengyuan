$(document).ready(function () {
  $(".yhsyhyzxrtop ul li").hover(function () {
    $(".yhsyhyzxrcon").hide().eq($(this).index()).show();
  })
  $('.yhsyhyzxrtop1').hover(function () {
    $(".yhsyhyzxrtoplight").animate({left:"24px"},"fast")
  })
  $('.yhsyhyzxrtop2').hover(function () {
    $(".yhsyhyzxrtoplight").animate({left:"168px"},"fast")
  })
})
