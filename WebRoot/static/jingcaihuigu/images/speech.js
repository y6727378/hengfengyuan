$(document).ready(function () {
  $('.speechcon').eq(0).show();
  $('.speechbtn li').eq(0).addClass('speechactive');
  $('.speechcon li').click(function () {
    $('.speechvideowrap').eq($(this).index()).show();
  });
  $('.close').click(function () {
    $('.speechvideowrap').hide()
  })
  $('.speechbtn li').click(function () {
    $('.speechbtn li').removeClass('speechactive').eq($(this).index()).addClass('speechactive');
    $('.speechcon').hide().eq($(this).index()).show();
  })
})
