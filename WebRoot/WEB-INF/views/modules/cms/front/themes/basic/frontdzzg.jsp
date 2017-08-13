<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>


<!DOCTYPE html>
<html>
<head>
<title>医合网-医览全球</title>

<meta name="viewport" content="width=1200" />
<meta name="decorator" content="cms_default_${site.theme}" />
<%-- <meta name="description" content="${category.description}" />
<meta name="keywords" content="${category.keywords}" /> --%>


<link rel="stylesheet" type="text/css"  href="/yhwcms/static/ylqq/css/czly.css">
<link rel="stylesheet" type="text/css"  href="/yhwcms/static/ylqq/css/bannernews.css">
<link rel="stylesheet" type="text/css"  href="/yhwcms/static/ylqq/css/czs.css">
<link rel="stylesheet" type="text/css"  href="/yhwcms/static/ylqq/css/tit.css">
<link rel="stylesheet" type="text/css"  href="/yhwcms/static/ylqq/css/new_meeting.css">
<link rel="stylesheet" type="text/css"  href="/yhwcms/static/ylqq/css/banner.css">


	<script type="text/javascript">
  	function yudingzhanwei(){
  		var index=  layer.open({
 			title:'预定展位'
 			,skin: 'layui-layer-lan'
 			,shadeClose: true
 			,type: 2
 			,area: ['800px','400px']
 			,content:['jsp/registerposition.jsp','no']
 		}); 
  		
  	}
  function guanzhongdengji(){
	  if("${LOGINUSER}"== null || "${LOGINUSER}" == ""){
		  window.location.href="http://sso.yihewanggpo.com/auth.aspx";
	  }else{
		  alert("恭喜您，预定成功");
		  
	  }
  
  
  }
  </script>

</head>
<body>

	<!-- head   begin-->
	<div class="headwrap">
		<div class="head">
			<div class="headl">
				<a href="http://www.yihewanggpo.com"><img
					src="/yhwcms/static/ylqq/images/医览全球.png"> <img
					src="/yhwcms/static/images/xiaoe.png"></a>
			</div>
			<ul class="headlist">
				<li><a href="http://www.yihewanggpo.com">首页</a></li>
				<li ><a href="${ctx}/dzzg" target="_blank" ><font style="color:#3c75ff">医览全球</font></a></li>
				<li><a href="http://shop.yihewanggpo.com" target="_blank">医合商城
				</a></li>
				<li><a href="http://jyzc.yihewanggpo.com" target="_blank">久赢招采</a></li>
				<li><a href="#" target="_blank">融租宝</a></li>
				<li><a href="http://jf.yihewanggpo.com" target="_blank">积分商城</a></li>
				<li><a href="http://info.yihewanggpo.com/aboutus.html"
					target="_blank">关于我们</a></li>
			</ul>
		</div>
	</div>
	<!-- head   end-->
	<!--banner begin-->
		<div class="bannerwrap">
		  <ul class="banner">
		    <li><img src="/yhwcms/static/images/ylqqbanner01.png"></li>
			<li><img src="/yhwcms/static/images/ylqqbanner02.png"></li> 
		  </ul>
		  <div class="yhsybtn" id="yhsybtnl"><img src="/yhwcms/static/images/banabtnl.png"></div>
		  <div class="yhsybtn" id="yhsybtnr"><img src="/yhwcms/static/images/banabtnr.png"></div>
		  <ul class="yhsytab">
		    <li></li>
		    <li></li>
		  </ul>
		   <div class="newswrap">
		    <div class="news">
		      <div class="newsl">近期直播</div>
		      <div class="newsr">
		        <ul>
		          <li>国际医疗器械暨医院采购博览会</li>
		          <li>神经康复分论坛</li>
		        </ul>
		      </div>
		    </div>
		  </div> 
		</div> 
			
	
	<!--banner end-->
	



	<!--最新会议-->
	<div class="new_meetingwrap">
		<div class="new_meet">
			<div class="new_meetl">
				<div class="new_meettit" id="new_meetltit">最新会议</div>
				<div class="new_meetcon">
					<div class="new_meetconl">
						<img src="static/ylqq/images/news1_03.jpg">
					</div>
					<div class="new_meetconlr">
						<div class="new_meetconlrtit">2017第19届中国（青岛）国际医疗器械暨医院采购博览会</div>
						<div class="new_meetconlrtime">
							<img src="static/ylqq/images/newslico_03.jpg">
							2017.08.09—2017.08.11
						</div>
						<div class="new_meetconlrcon">
							自2000年开始，青岛医疗展已连展18届，取得了巨大成功，以“最具效果
							医疗展”著称，展商满意率高达90%以上，是山东各级医疗机构定点采购
							基地，也是展商树立品牌形象，拓建山东及北方医疗市场，商贸洽谈、订
							货交易的绝佳平台，共吸引了国内外知名&nbsp;&nbsp;&nbsp;<span>详情</span>
						</div>
						<div class="new_meetconlrapplywrap">
							<a href="javascript:void(0)" onclick="yudingzhanwei();">
								<div class="new_meetconlrapply">预定展位</div>
								
								
							</a> <a href="javascript:void(0)" onclick="guanzhongdengji();">
								<div class="new_meetconlrapply" id="new_meetconlrapply2">
									观众登记</div>
							</a>
						</div>
					</div>
				</div>
				<div class="new_meetcon">
					<div class="new_meetconl">
						<img src="static/ylqq/images/news2_03.jpg">
					</div>
					<div class="new_meetconlr">
						<div class="new_meetconlrtit">中国康复及家庭医疗用品博览会</div>
						<div class="new_meetconlrtime">
							<img src="static/ylqq/images/newslico_03.jpg">
							2017.08.25—2017.08.26
						</div>
						<div class="new_meetconlrcon">
							由国药励展主办，上海市康复医学会、复旦大学附属华东医院、中国老年 保健医学研究会医养康复分会、国大药房等支持单位共同举办的亚太地区
							规模最大、影响力最强的专业康复医疗、家庭医疗、养老及福祉综合采购
							平台，旨在为各医疗康复机构、养老院、疗养院、药店及零售终端&nbsp;&nbsp;&nbsp;<span>详情</span>
						</div>
						<a href="javascript:void(0)" onclick="yudingzhanwei();">
							<div class="new_meetconlrapply">预定展位</div>
						</a> 
						
						<a href="javascript:void(0)" onclick="guanzhongdengji();">
							<div class="new_meetconlrapply" id="new_meetconlrapply2">
								观众登记</div>
						</a>
					</div>
				</div>
			</div>
			<div class="new_meetr">
				<div class="new_meettit" id="new_meetrtit">参展指南</div>
				<div class="guide">观众参展流程</div>
				<div class="guidecon">
					<div class="guideconl">
						<img src="static/ylqq/images/guidnum_07.jpg">
					</div>
					<ul class="guideconr">
						<li>登录/注册</li>
						<li>登录成功</li>
						<li>可观展</li>
					</ul>
				</div>
				<div class="guide">企业参展流程</div>
				<div class="guidecon">
					<div class="guideconl">
						<img src="static/ylqq/images/guidnum_07.jpg">
					</div>
					<ul class="guideconr">
						<li>登录/注册</li>
						<li>官方审核</li>
						<li>提供参展资料</li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<!--精彩回顾-->
	<div class="czswrap">
		<div class="czs">
			<div class="tit">
				<div class="titheng">
					<hr />
				</div>
				<a href="jsp/jingcaihuigu.jsp" target="_blank"><div class="titw">精彩回顾</div></a>
				<div class="titheng">
					<hr />
				</div>
			</div>
			<div class="czscon">
				<div class="czsconl">
					<img src="static/ylqq/images/jchg_03.jpg">
				</div>
				<div class="czsconr">
					<a href="jsp/jingcaihuigu.jsp" target="_blank"><div class="czsconrtit">中国医师协会康复医师分会2017年学术年会</div>
					<div class="czsconrcon">由中国医师协会、中国医师协会康复医师分会共同主办，山东省医师
						协会、山东大学齐鲁医院承办的2017年中国医师协会康复医师学术会
						议将于2017年7月28-30日在山东省泰安市泰山宝盛举行。作为本次大 会的组织者，我们谨代表本次大会组委会，诚挚邀请全国康复同仁积
						极参加此次盛会。</div></a>
				</div>
			</div>
		</div>
	</div>

	<!--精彩回顾-->




	<!--参展理由-->
	<div class="czlywrap">
		<div class="czly">
			<div class="tit">
				<div class="titheng">
					<hr />
				</div>
				<div class="titw">参展理由</div>
				<div class="titheng">
					<hr />
				</div>
			</div>
			<ul class="czlycon">
				<li class="czlycontype">
					<div class="czlycontypetit">
						<img src="static/ylqq/czlyimg/icotit1.png"> 我是观众：时间那么紧，为何观展？
					</div>
					<ul class="czlyxq">
						<li class="czlyxqlist">
							<div class="czlyxqico">
								<img src="static/ylqq/czlyimg/icol1.png">
							</div>
							<div class="czlyxqcon">
								<div class="czlyxqtit">厂商云集</div>
								<div class="czlyxqc">
									您可以：参观学习，借助医合网了解参展商</br> 此次展会将汇集产业知名企业参展。
								</div>
							</div>
						</li>
						<li class="czlyxqlist">
							<div class="czlyxqico">
								<img src="static/ylqq/czlyimg/icol2.png">
							</div>
							<div class="czlyxqcon">
								<div class="czlyxqtit">免费享受VIP观展礼遇</div>
								<div class="czlyxqc">您可以： 多渠道全媒体方式了解展品不用排队，免去嘈杂。
									流畅立体的观展体验，集音视频、图片，让您一秒变身VIP。</div>
							</div>
						</li>
						<li class="czlyxqlist">
							<div class="czlyxqico">
								<img src="static/ylqq/czlyimg/icol3.png">
							</div>
							<div class="czlyxqcon">
								<div class="czlyxqtit">舟车劳顿成浮云</div>
								<div class="czlyxqc">线下展会，对应线上同步进行，省去您因工作需要无法与会的遗憾
									即使展会结束，您也可以随时可以观看论坛回放</div>
							</div>
						</li>
						<li class="czlyxqlist">
							<div class="czlyxqico">
								<img src="static/ylqq/czlyimg/icol4.png">
							</div>
							<div class="czlyxqcon">
								<div class="czlyxqtit">专业展区划分 快速找到相关产品或企业</div>
								<div class="czlyxqc">所有展商都是经过主办方审核推荐的优质供应厂商，并按展品类别
									划分，您可通过对应展区进入寻找相关产品，或在搜索地址栏搜索 关键字，即可快速找到对应展商，高效直接。</div>
							</div>
						</li>
					</ul>
				</li>
				<li class="czlycontype">
					<div class="czlycontypetit">
						<img src="static/ylqq/czlyimg/icotit1.png"> 我是展商：为何参展？
					</div>
					<ul class="czlyxq">
						<li class="czlyxqlist">
							<div class="czlyxqico">
								<img src="static/ylqq/czlyimg/icor1.png">
							</div>
							<div class="czlyxqcon">
								<div class="czlyxqtit">平台功能强大-轻松操作、直接高效</div>
								<div class="czlyxqc">精美的线上展台，集音视频、图片、即时通讯于一体，进入展厅的
									观众轨迹可随时掌控，在最大程度展示产品的同时，零距离与专业 观众进行即时互动。展后更能收获一批有价值的销售线索反馈。</div>
							</div>
						</li>
						<li class="czlyxqlist">
							<div class="czlyxqico">
								<img src="static/ylqq/czlyimg/icor2.png">
							</div>
							<div class="czlyxqcon">
								<div class="czlyxqtit">营销性价比之王 - 低成本、高收益</div>
								<div class="czlyxqc">全天候的线上线下展会，省去订场地、订酒店、展台搭建、大量 人力等各类成本。
								</div>
							</div>
						</li>
						<li class="czlyxqlist">
							<div class="czlyxqico">
								<img src="static/ylqq/czlyimg/icor3.png">
							</div>
							<div class="czlyxqcon">
								<div class="czlyxqtit">专业听众集群-精准匹配、商机无限</div>
								<div class="czlyxqc">线下线上同步展会，帮助买家精准匹配，一站式获取技术信息及 产品介绍。</div>
							</div>
						</li>
						<li class="czlyxqlist">
							<div class="czlyxqico">
								<img src="static/ylqq/czlyimg/icor4.png">
							</div>
							<div class="czlyxqcon">
								<div class="czlyxqtit">品牌强势推广、推广效果显著</div>
								<div class="czlyxqc">依托互联网，可实现在线沟通交流，线上观看，线下体验，与展商 进行接洽。
									参展商会后还将获得推广报告反馈。</div>
							</div>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

<script src="static/js/jquery-2.1.1.min.js"></script>	
<script src="/yhwcms/static/ylqq/js/banner.js"></script>

</body>
</html>
