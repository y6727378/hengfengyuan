
$(document).ready(function () {
  $('.ylqconalways div').eq(0).addClass('btntop').removeClass('btnbottom');
  $('.ylqconalways').eq(0).addClass('ylqconactive');
  $('.ylqconrc').eq(0).show();
  $('[ role=btn]').click(function () {
    $(this).toggleClass('btntop').toggleClass('btnbottom').parent().parent().parent().children('ylqconrtit').children('[ role=titback]').children('[role=btn]').removeClass('btntop').addClass('btnbottom');
    $(this).parent().toggleClass('ylqconactive');
    $('[role=con]').eq($('[ role=btn]').index(this)).toggle().parent().siblings().children('[role=con]').hide().siblings().children('[role=titback]').addClass('ylqconalways').removeClass('ylqconactive');
  })
})
