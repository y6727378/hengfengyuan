$(document).ready(function () {
  $(".yhsjtitb li").click(function () {
    $(".yhsjtitb li").eq($(this).index()).addClass('yhsjtitbactive').siblings().removeClass('yhsjtitbactive');
    $('.yhsjcon ul').hide().eq($(this).index()).show();
  })
})
