
$(document).ready(function () {
  $('.hyzxconalways div').eq(0).addClass('btntop');
  $('.hyzxconalways').eq(0).addClass('hyzxconactive');
  $('.hyzxconrc').eq(0).show();
  $('[ role=btn]').click(function () {
    $(this).toggleClass('btntop');
    $('.hyzxconrcon').eq($('[ role=btn]').index(this)).siblings().children('[role=tit]').children('[role=titback]').children('[role=btn]').removeClass('btntop').addClass('btnbottom');
    $(this).parent().toggleClass('hyzxconactive');
    $('[role=con]').eq($('[ role=btn]').index(this)).toggle().parent().siblings().children('[role=con]').hide().siblings().children('[role=titback]').addClass('hyzxconalways').removeClass('hyzxconactive');
  })
})
