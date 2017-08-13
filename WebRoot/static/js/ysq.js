$(document).ready(function () {
  $('.ysqc').eq(0).show();
  $('.yinying li').eq(0).addClass('yinyinghide');
  $('.yinying li').hover(function () {
    $('.yinying li').removeClass('yinyinghide').eq($(this).index()).addClass('yinyinghide').siblings().addClass('yinyingshow');
    $('.ysqc').hide().eq($(this).index()).show();
  })
})
