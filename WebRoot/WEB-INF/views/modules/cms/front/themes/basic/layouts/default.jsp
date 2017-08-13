<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<title><sitemesh:title default="页头和页尾" /></title>

<meta name="viewport" content="width=1200" />
<script src="static/js/jquery-2.1.1.min.js"></script>


<%@include file="/WEB-INF/views/modules/cms/front/include/head.jsp"%>
<!-- Baidu tongji analytics -->
<script>var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?82116c626a8d504a5c0675073362ef6f";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s);})();</script>
<sitemesh:head />

</head>
<body class="color-sky none notAndroid23">

	<script type="text/javascript">
     /* 根据名字获取当前回话的cookie value */
     function getCookie(cookie_name)
     {
         var allcookies = document.cookie;
         var cookie_pos = allcookies.indexOf(cookie_name);   //索引的长度
       
         // 如果找到了索引，就代表cookie存在，
         // 反之，就说明不存在。
         if (cookie_pos != -1)
         {
             // 把cookie_pos放在值的开始，只要给值加1即可。
             cookie_pos += cookie_name.length + 1;      //这里容易出问题，所以请大家参考的时候自己好好研究一下
             var cookie_end = allcookies.indexOf(";", cookie_pos);
       
             if (cookie_end == -1)
             {
                 cookie_end = allcookies.length;
             }
       
             var value = unescape(allcookies.substring(cookie_pos, cookie_end));         //这里就可以得到你想要的cookie的值了。。。
         }
         return value;
     }
  
		
	/* 问题反馈弹窗*/
	 	function wentifankui(){
	 		var index=  layer.open({
	 			title:'调戏客服'
	 			,skin: 'layui-layer-lan'
	 			,shadeClose: true
	 			,type: 2
	 			,area: ['400px','400px']
	 			,content:['jsp/wentifankui.jsp','no']
	 		}); 
		} 
	/* 右侧微信的弹窗    begin*/
	function zswxewm(){
		$("#wxerweima").css('display','block');
		$("#weixinbeijing").css('background','#01a65a');
	}
	function ycwxewm(){
		$("#wxerweima").css('display','none');
		$("#weixinbeijing").css('background','#fff');
	}
	/* 右侧微信的弹窗   end*/
	 	</script>

	<!--微信联系  -->
	<div>
		<div id="wxerweima"
			style="z-index: 2147483647; display: none; background: #01a65a; width: 120px; height: 140px; position: fixed; right: 30px; top: 340px; text-align: center;">
			<p
				style="width: 110px; height: 10px; color: #fff; line-height: 25px; font-size: 14px">老板微信</p>
			<img src="static/images/1502535356.png"
				style="width: 110px; height: 110px; text-align: center; margin-top: 5px;">
		</div>

		<div id="weixinbeijing"
			style="z-index: 2147483647; background: #fff; position: fixed; width: 30px; height: 30px; right: 0px; top: 450px; text-align: center; margin: 0 auto;"
			onmouseover="zswxewm();" onmouseout="ycwxewm();">
			<img src="static/images/xiaoerweima.png"
				style="margin-top: 5px; width: 20px; height: 20px;">
		</div>
	</div>
	<!--微信联系  -->
	
	
	
	

	<!-- top 注册 登陆-->
	<div class="topwrap">
		<div class="top">
			<div class="herfshy">
				<a href="/hengfengyuan">恒丰源首页</a>
			</div>
			<div class="loginwrap">
				<div class="wel">欢迎来到恒丰源</div>
				<div class="login">
					<!-- <a href="" onclick="huiyuandenglu();">会员登录</a> -->
				</div>
				<div class="reg">
				<!-- 	<a href="">免费注册</a> -->
				</div>
			</div>
			<div class="toplistwrap">
				<ul class="toplist">
				<!-- 	<li><a href=""></a><i></i></li>
					<li><a href=""></a><i></i></li> -->
					<li><a href="javascript:void(0)" onclick="wentifankui();">调戏客服</a><i></i></li>
					<li><a href="tencent://message/?uin=76549963">在线客服</a><i></i></li>
				</ul>
				<div class="topphone">
					<img src="/hengfengyuan/static/images/phone.png">
					13269044777(工作日8:30-17:00）
				</div>
			</div>
		</div>
	</div>
	<!-- top end -->
	<!-- head   begin-->
	<div class="headwrap">
		<div class="head">
			<div class="headl">
				<a href=""><img
					src="/hengfengyuan/static/images/mmexport1502535078900.jpg"> </a>
			</div>
			<ul class="headlist">
				<li><a href="/hengfengyuan">首页</a></li>
				<li><a href="/hengfengyuan#muwuxilie">木屋系列</a></li>
				<li><a href="/hengfengyuan#liangtingxilie">凉亭系列</a></li>
				<li><a href="/hengfengyuan#huajiaxilie" >花架系列</a></li>
				<li><a href="/hengfengyuan#hulanxilie" >护栏系列</a></li>
				<li><a href="/hengfengyuan#xiaopinxilie" >小品系列</a></li>
				<li><a href="/hengfengyuan#fangfumujianjie" >防腐木简介</a></li>
			</ul>
		</div>
	</div>
	<!-- head   end-->


	<!-- 中间 -->
	<div class="container">
		<div class="content">
			<sitemesh:body />
		</div>
		<!-- 	<hr style="margin:20px 0 10px;"> -->
	</div>




	<!--页面尾部  -->
<!-- 	<div class="yhwfootwrap">
		<div class="yhwfoot">
			<div class="footclass">
				<h>关于医合</h>
				<ul>
					<li><a href="http://info.yihewanggpo.com/aboutus.html">关于我们</a></li>
					<li><a href="http://info.yihewanggpo.com/contact.html">联系我们</a></li>
					<li><a href="http://info.yihewanggpo.com/law.html">法律声明</a></li>
					<li><a href="http://info.yihewanggpo.com/xinshourumen.html">新手入门</a></li>
				</ul>
			</div>
			<div class="footclass">
				<h>帮助中心</h>
				<ul>
					<li>买家入门</li>
		                  <li>卖家入门</li>
		                  <li>招标中心</li>
		                  <li>CA办理流程</li>
					<li><a href="http://info.yihewanggpo.com/jyzc.html">久赢招采</a></li>
				</ul>
			</div>
			<div class="footclass">
				<h>招商合作</h>
				<ul>
					<li><a href="http://info.yihewanggpo.com/service.html">服务条款</a></li>
					<li><a href="http://info.yihewanggpo.com/status.html">资质评审</a></li>
				</ul>
			</div>

			<div class="footclass">
				<h>工具下载</h>
				<ul>
					<li><a
						href="http://shop.yihewanggpo.com/Scripts/download/%e5%8c%bb%e5%90%88%e7%bd%91%e7%94%b5%e5%ad%90%e7%ad%be%e7%ab%a0%e9%a9%b1%e5%8a%a8_20161113.rar">电子签章驱动</a></li>
					<li><a
						href="http://shop.yihewanggpo.com/Scripts/download/%e5%8c%bb%e5%90%88%e7%bd%91%e8%a7%86%e9%a2%91%e5%b7%a5%e5%85%b7.rar">视频工具</a></li>
					<li><a
						href="http://shop.yihewanggpo.com/Scripts/download/%e5%8c%bb%e5%90%88%e7%bd%91%e6%95%b0%e5%ad%97%e8%af%81%e4%b9%a6%e9%a9%b1%e5%8a%a8_20161008.rar">数字证书驱动</a></li>
					<li><a
						href="http://shop.yihewanggpo.com/Scripts/download/%e5%8c%bb%e5%90%88%e7%bd%91%e6%8a%95%e6%a0%87%e7%ae%a1%e5%ae%b6.rar">投标管家</a></li>

				</ul>
			</div>
			<div class="foot_wrap">
				<div class="footwraptype">
					客服电话：400-666-1202</br> QQ：2898902672</br> 邮箱：service@opuch.com
				</div>
				<img src="/hengfengyuan/static/css/eherweima_11.png">
			</div>
		</div>
	</div>

	<div id="tail">
		<div id="tail_c">
			<div id="zhushi">
				◎2017医合网鲁ICP备17027594号-1号 | （鲁）-非经营性-2016-0069</br> 鲁公网安备 37020202000224号
			</div>
		</div>
	</div> -->


</body>
</html>