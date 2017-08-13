$(document).ready(function () {
  $(".banner li").eq(0).show();
  $(".yhsytab li").eq(0).addClass('active');
  $(".yhsytab li").hover(function () {
    $(this).addClass('active').siblings().removeClass('active');
    var index = $(this).index();
    $(".banner li").eq(index).show().siblings().hide();
  })
  var li = $(".yhsytab li")
  var i = 0;
  var t = setInterval(move,3000);
  function move(){
    i++;
    if(i == li.length){
      i = 0;
    }
    $(".yhsytab li").eq(i).addClass('active').siblings().removeClass('active');
    var index = $(this).index();
    $(".banner li").eq(i).show().siblings().hide();
  }
  function moveL(){
    i--;
    if(i == -1){
      i = li.length-1;
    }
    $(".yhsytab li").eq(i).addClass('active').siblings().removeClass('active');
    var index = $(this).index();
    $(".banner li").eq(i).show().siblings().hide();
  }
  $(".bannerwrap").hover(function () {
    clearInterval(t);
    $(".yhsybtn").show();
  },function () {
    t = setInterval(move,3000);
    $(".yhsybtn").hide();
  })
  $("#yhsybtnr").click(function () {
    move()
  })
  $("#yhsybtnl").click(function () {
    moveL()
  })
})
