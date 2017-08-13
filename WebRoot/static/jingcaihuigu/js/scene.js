
$(document).ready(function () {
  $('.scenepciwrap li').eq(0).show();
  $('.scenepcis li').eq(0).addClass('picactive');
  var li =$(".scenepcis li");
  var i = 0;
  function move(index){
    li.eq(index).addClass('picactive').siblings().removeClass('picactive');
    $(".scenepciwrap li").eq(index).show().siblings().hide();
  }
  $(".scenepcis li").click(function () {
    i = $(this).index();
    move(i);
  });
  function moveRun() {
    i++;
    if(i == li.length){
      i = 0;
    }
    move(i);
    if( i <= li.length-6 && i > 0 ){
  		var scenepcisR = $('.scenepcis').prop("offsetLeft") - 152 +'px';
  		$('.scenepcis').css("left",scenepcisR)
  	}else if(i == 0){
  		$('.scenepcis').css("left",0);
  	}
  }
  $("#scenebtnr").click(
    moveRun
  )
  $("#scenebtnl").click(function () {
    i--;
    if(i == -1){
      i = li.length-1;
    }
    move(i);
    if( i < li.length-1&&i>4 ){
  		var scenepcisR = $('.scenepcis').prop("offsetLeft") + 152 +'px';
  		$('.scenepcis').css("left",scenepcisR)
  	}else if(i == li.length-1){
  		$('.scenepcis').css("left","-3648px");
  	}
  })
  var t = setInterval(moveRun,3000);
  $(".scenecon").hover(function () {
    clearInterval(t);
  },function () {
    t = setInterval(moveRun,3000);
  })
})
