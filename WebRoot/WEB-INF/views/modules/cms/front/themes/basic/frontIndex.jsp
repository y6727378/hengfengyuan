<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>


<!DOCTYPE html>
<html>
<head>
<title>恒丰源防腐木</title>

<meta name="viewport" content="width=1200" />
<meta name="decorator" content="cms_default_${site.theme}" />
<meta name="description" content="${category.description}" />
<meta name="keywords" content="${category.keywords}" />

<script src="static/js/jquery-2.1.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="static/css/yhsy.css">
<link rel="stylesheet" type="text/css" href="static/css/reset.css">

<link rel="stylesheet" href="static/css/banner.css" type="text/css" />
<link rel="stylesheet" href="static/css/huizhan.css" type="text/css" />
<link rel="stylesheet" href="static/css/zbxx.css" type="text/css" />
<link rel="stylesheet" href="static/css/hyzx.css" type="text/css" />
<link rel="stylesheet" href="static/css/top10.css" type="text/css" />
<link rel="stylesheet" href="static/css/ysq.css" type="text/css" />
<style type="text/css">

.hyzxlconl a img:hover{
 transform: scale(1.3);
  transition: all 1s ease 0s;
  -webkit-transform: scale(1.3);
  -webkit-transform: all 1s ease 0s;
}
.top10con li img:hover{
 transform: scale(1.3);
  transition: all 1s ease 0s;
  -webkit-transform: scale(1.3);
  -webkit-transform: all 1s ease 0s;
}
</style>

</head>

<body >



	<!--banner  begin   -->
	<div class="bannerwrap">
		<ul class="banner">
			<li><img src="/hengfengyuan/static/images/banner01.jpg"></li>
		
			<li><img src="/hengfengyuan/static/images/banner02.jpg"></li>
			<li><img src="/hengfengyuan/static/images/banner03.jpg"></li>
			<li><img src="/hengfengyuan/static/images/banner5.png"></li>
			
			
			
		</ul>
		<div class="yhsybtn" id="yhsybtnl">
			<img src="/hengfengyuan/static/images/banabtnl.png">
		</div>
		<div class="yhsybtn" id="yhsybtnr">
			<img src="/hengfengyuan/static/images/banabtnr.png">
		</div>
		<ul class="yhsytab">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!--banner-->




	<!--行业资讯   begin  -->

	<div class="hyzx">
		<div class="hyzxl" id="muwuxilie">
			<a href="list-2.html" target="_blank"><div class="hyzxltit">
					木屋系列 <img src="static/images/hyzxmore.png">
				</div></a>
			<ul class="hyzxlcon">
				<c:forEach items="${fnc:getArticleList(site.id, 2, 10, '')}"
					var="article" begin="0" end="2">
					<li>
						<div class="hyzxlconl">
							<a href="${article.url}"><img src="${article.image}"></a>
						</div>
						<div class="hyzxlconr">
							<div class="hyzxlconrtit">
								<a href="${article.url}">${fns:abbr(article.title,50)}</a>
							</div>
							<div class="hyzxlconrcon">
								<a href="${article.url}">${fns:abbr(article.description,160)}</a>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
		<div class="hyzxr">
			<div class="hyzxrtit" style="color: red;">联系我们</div>
			<div class="hyzxconr">
				<div class="hyzxconrcon" style="margin-top: 0px;">
					<div class="hyzxconrtit" role="tit">
						<div class="hyzxconalways" role="titback">
							<img class="titico" src="static/images/ylqicon_06.png"> <span
								class="hyzxtitiw">手机号</span>
							<div class="btnbottom" role="btn"></div>
						</div>
					</div>
					<div class="hyzxconrc" role="con">
						<div class="hyzxconrc1">
							<img src="static/images/shouyeshouji.jpg"> 13269044777
						</div>
						<div class="hyzxconrc2">
							<img src="static/images/shouyerenwu.jpg"> 张先生
						</div>
					</div>
				</div>
				<div class="hyzxconrcon">
					<div class="hyzxconrtit" role="tit">
						<div class="hyzxconalways" role="titback">
							<img class="titico" src="static/images/ylqicon_06.png"> <span
								class="hyzxtitiw">微信号</span>
							<div class="btnbottom" role="btn"></div>
						</div>
					</div>
					<div class="hyzxconrc" role="con">
						<div class="hyzxconrc1">
							<img src="static/images/ylqicon2_11.png">
							13485133363
						</div>
						<div class="hyzxconrc2">
							<img src="static/images/ylqicon3_15.png"> 欢迎随时骚扰
						</div>
					</div>
				</div>
				<div class="hyzxconrcon">
					<div class="hyzxconrtit" role="tit">
						<div class="hyzxconalways" role="titback">
							<img class="titico" src="static/images/ylqicon_06.png"> <span
								class="hyzxtitiw">邮箱</span>
							<div class="btnbottom" role="btn"></div>
						</div>
					</div>
					<div class="hyzxconrc" role="con">
						<div class="hyzxconrc1">
							<img src="static/images/ylqicon2_11.png">13269044777@163.com
						</div>
						<div class="hyzxconrc2">
							<img src="static/images/ylqicon3_15.png"> 24小时
						</div>
					</div>
				</div>
				<div class="hyzxconrcon">
					<div class="hyzxconrtit" role="tit">
						<div class="hyzxconalways" role="titback">
							<img class="titico" src="static/images/ylqicon_06.png"> <span
								class="hyzxtitiw">地址</span>
							<div class="btnbottom" role="btn"></div>
						</div>
					</div>
					<div class="hyzxconrc" role="con">
						<div class="hyzxconrc1">
							<img src="static/images/ylqicon2_11.png"> 河北省张家口
						</div>
						<div class="hyzxconrc2">
							<img src="static/images/ylqicon3_15.png"> 24小时
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--行业资讯   end-->

	<!--恒丰源防腐木 -->
	 <div class="zbxxwrap">
		<div class="zbxx">
			<div class="yhsyhtit">
				<div class="yhsyhtitheng">
					<hr />
				</div>
				<div class="yhsyhtitw">
					<a href="list-6.html" >凉亭花架护栏</a>
				</div>
				<div class="yhsyhtitheng">
					<hr />
				</div>
			</div>
			<ul class="zbxxcon">
				<li class="zbxxconlist" id="liangtingxilie">
					<div class="zbxxconlistl" id="zbxxconlist1">
						<div class="zbxxtitwrap"></div>
						<div class="zbxxtit">
							<div class="zbxxtitb">凉亭系列</div>
							<div class="zbxxtits">
								<a href="list-7.html">查看更多＞</a>
							</div>
						</div>
					</div>
					<ul class="zbxxconlistr">
						<c:forEach items="${fnc:getArticleList(site.id,7, 10, '')}"
							var="article" begin="0" end="4">
							<li>
								<div class="zbxxconlistrc">
									<a href="${article.url}"> ${fns:abbr(article.title,70)} </a>
								</div>
								<div class="zbxxconlistrtime">
									<fmt:formatDate value="${article.updateDate}"
										pattern="yyyy.MM.dd" />
								</div>
								<div class="zbxxconlistrmorer">
								<div class="zbxxconlistrmore">
									<a href="${article.url}" target="_blank">
									查看详情
									</a>	
								</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</li>
				<li class="zbxxconlist" id="huajiaxilie">
					<div class="zbxxconlistl" id="zbxxconlist2">
						<div class="zbxxtitwrap"></div>
						<div class="zbxxtit">
							<div class="zbxxtitb">护栏系列</div>
							<div class="zbxxtits">
								<a href="list-8.html">查看更多＞</a>
							</div>
						</div>
					</div>
					<ul class="zbxxconlistr">
						<c:forEach items="${fnc:getArticleList(site.id,8, 10, '')}"
							var="article" begin="0" end="4">
							<li>
								<div class="zbxxconlistrc">
									<a href="${article.url}"> ${fns:abbr(article.title,70)} </a>
								</div>
								<div class="zbxxconlistrtime">
									<fmt:formatDate value="${article.updateDate}"
										pattern="yyyy.MM.dd" />
								</div>
								<div class="zbxxconlistrmore">
									<a href="${article.url}" target="_blank">
									查看详情
									</a>	
								</div>
							</li>
						</c:forEach>
					</ul>
				</li>
				<li class="zbxxconlist" id="hulanxilie">
					<div class="zbxxconlistl" id="zbxxconlist3">
						<div class="zbxxtitwrap"></div>
						<div class="zbxxtit">
							<div class="zbxxtitb">花架系列</div>
							<div class="zbxxtits">
								<a href="list-9.html">查看更多＞</a>
							</div>
						</div>
					</div>
					<ul class="zbxxconlistr">
						<c:forEach items="${fnc:getArticleList(site.id,9, 10, '')}"
							var="article" begin="0" end="4">
							<li>
								<div class="zbxxconlistrc">
									<a href="${article.url}"> ${fns:abbr(article.title,70)} </a>
								</div>
								<div class="zbxxconlistrtime">
									<fmt:formatDate value="${article.updateDate}"
										pattern="yyyy.MM.dd" />
								</div>
								<div class="zbxxconlistrmore">
									<a href="${article.url}" target="_blank">
									查看详情
									</a>	
								</div>
							</li>
						</c:forEach>

					</ul>
				</li>
			</ul>
		</div>
	</div>
 



<%-- 
	<div class="adv1">
		<div class="adv1go">
			<a href="${ctx}/dzzg" target="_blank">去看看</a>
		</div>
	</div> --%>

	<!-- 小品系列-->
	<div class="dzzg">
		<div class="yhsyhtit" id="xiaopinxilie">
			<div class="yhsyhtitheng">
				<hr />
			</div>
			<a href="list-10.html" ><div class="yhsyhtitw">小品</div></a>
			<div class="yhsyhtitheng">
				<hr />
			</div>
		</div>
		<div class="exhibitionServiceBox commonWidth clearfix">
			<ul class="clearfix">
				<li><i style="display: block;"></i> <a target="_blank"
					style="filter: initial; opacity: 0.6;"> <img alt="会展服务"
						src="static/images/shouyexiaopin01.jpg" style="top: 0px;">
				</a></li>
				<li><i style="display: block;"></i> <a target="_blank"
					style="filter: initial; opacity: 0.6;"> <img alt="会展服务"
						src="static/images/shouexiaopin02.jpg" style="top: 0px;">
				</a></li>
				<li><i style="display: block;"></i> <a target="_blank"
					style="filter: initial; opacity: 0.6;"> <img alt="会展服务"
						src="static/images/shouyexiaopin03.jpg" style="top: 0px;">
				</a></li>
				<li><i style="display: block;"></i> <a target="_blank"
					style="filter: initial; opacity: 0.6;"> <img alt="会展服务"
						src="static/images/shouyexiaopin04.jpg" style="top: 0px;">
				</a></li>
				<li><i style="display: block;"></i> <a target="_blank"
					style="filter: initial; opacity: 0.6;"> <img alt="会展服务"
						src="static/images/shouyexiaopin05.jpg" style="top: 0px;">
				</a></li>
				<li><i style="display: block;"></i> <a target="_blank"
					style="filter: initial; opacity: 0.6;"> <img alt="会展服务"
						src="static/images/shouyexiaopin06.jpg" style="top: 0px;">
				</a></li>
			</ul>
		</div>
	</div>


	<!--    医合推荐   begin  -->
	<!-- <div class="bythwrap">
		<div class="byth">
			<div class="yhsyhtit">
				<div class="yhsyhtitheng">
					<hr />
				</div>
				<div class="yhsyhtitw">医合推荐</div>
				<div class="yhsyhtitheng">
					<hr />
				</div>
			</div>
			<div class="bythcon">
				<ul>
					<a
						href="http://shop.yihewanggpo.com/%E6%83%85%E6%99%AF%E4%BA%92%E5%8A%A8%E5%BF%83%E8%82%BA%E5%BA%B7%E5%A4%8D%E8%AE%AD%E7%BB%83%E7%B3%BB%E7%BB%9F"
						target="_blank">
						<li id="byth1">
							<div class="bythcontit1">海蓝康复</div>
							<div class="bythcontit2">情景互动心肺康复训练系统</div>
							<div class="bythcontit3"></div>
							<div class="bythcontit4">
								<img src="static/images//bythbtn_11.png">
							</div>
					</li>
					</a>
					<a
						href="http://shop.yihewanggpo.com/%E7%89%B9%E8%89%B2%E4%BA%A7%E5%93%81%E4%B8%AD%E5%8C%BB%E8%89%BE%E7%81%B8%E7%B3%BB%E7%BB%9F"
						target="_blank">
						<li id="byth2">
							<div class="bythcontit1">海蓝康复</div>
							<div class="bythcontit2">特色产品（中医艾灸系统）</div>
							<div class="bythcontit3">HL-MJ-02</div>
							<div class="bythcontit4">
								<img src="static/images//bythbtn_11.png">
							</div>
					</li>
					</a>
					<a
						href="http://shop.yihewanggpo.com/%E6%95%B0%E5%AD%97%E5%8C%96%E5%8C%BB%E7%94%A8x%E5%B0%84%E7%BA%BF%E6%91%84%E5%BD%B1%E7%B3%BB%E7%BB%9F-2"
						target="_blank">
						<li id="byth3">
							<div class="bythcontit1">飞利浦</div>
							<div class="bythcontit2">数字化医用X射线摄影系统</div>
							<div class="bythcontit3"></div>
							<div class="bythcontit4">
								<img src="static/images/bythbtn_11.png">
							</div>
					</li>
					</a>
					<a
						href="http://shop.yihewanggpo.com/acuson-s1000%E5%BD%A9%E8%89%B2%E5%A4%9A%E6%99%AE%E5%8B%92%E8%B6%85%E5%A3%B0%E7%B3%BB%E7%BB%9F"
						target="_blank">
						<li id="byth4">
							<div class="bythcontit1">西门子</div>
							<div class="bythcontit2">彩色多普勒超声系统</div>
							<div class="bythcontit3">S2000</div>
							<div class="bythcontit4">
								<img src="static/images//bythbtn_11.png">
							</div>
					</li>
					</a>
				</ul>
			</div>
		</div>
	</div> -->
	<!--     医合推荐 end  -->


	<!--经典产品 begin  -->
	<div class="top10wrap">
		<div class="top10">
			<div class="yhsyhtit">
				<div class="yhsyhtitheng">
					<hr />
				</div>
				<div class="yhsyhtitw">经典产品</div>
				<div class="yhsyhtitheng">
					<hr />
				</div>
			</div>
			<div class="top10con">
				<ul class="top10tit">
					<li>木材</li>
					<li>涂料</li>
					<li>木屋</li>
				</ul>
				<div class="top10conwrap" id="top10-1">
					<ul class="top10c">
						<li><img src="static/images/u=2874262790,2714130501&fm=26&gp=0.jpg">
								<div class="top10name">巴劳</div>
						</li>
						<li> <img src="static/images/u=1912639042,2835719236&fm=26&gp=0.jpg">
								<div class="top10name">柚木</div>
						</li>
						<li> <img
								src="static/images/u=3080048544,1982352716&fm=26&gp=0.jpg">
								<div class="top10name">菠萝格</div>
						</li>
						<li> <img
								src="static/images/u=2558656711,1444440670&fm=26&gp=0.jpg">
								<div class="top10name">红花梨</div>
						</li>
						<li>
								<img src="static/images/u=3346402809,3566279423&fm=72.jpg">
								<div class="top10name">山樟木</div>
						</li>
						<li><img
								src="static/images/u=2334089832,1587655662&fm=72.jpg">
								<div class="top10name">红柳桉</div>
						</li>
						<li> <img
								src="static/images/u=415915149,1934693157&fm=26&gp=0.jpg">
								<div class="top10name">美南松</div>
					</li>
						<li><img
								src="static/images/u=2853788366,1972282962&fm=26&gp=0.jpg">
								<div class="top10name">樟子松</div>
						</li>
						<!-- <li> <img
								src="static/images/hyy9_03.jpg">
								<div class="top10name">北京大学第三医院</div>
						</li>
						<li><img
								src="static/images/hyy10_03.jpg">
								<div class="top10name">首都医科大学附属北京同仁医院</div>
						</li> -->
					</ul>
				</div>
				<div class="top10conwrap" id="top10-2">
					<ul class="top10c2">
						<li><img src="static/images/shuixingnaihouhuwaimuqi.jpg">
							<div class="top10name">水性耐候户外木漆</div></li>
						<li><img src="static/images/shouyeyouqi02.jpg">
							<div class="top10name">色谱耐候木油</div></li>
						<li><img src="static/images/shouyeyouqi01.jpg">
							<div class="top10name">Anti-weathering</div></li>
						<li><img src="static/images/shouyeyouqi04.jpg">
							<div class="top10name">高硬质木蜡油</div></li>
						<li><img src="static/images/shouyeyouqi05.jpg">
							<div class="top10name">仿腐耐候</div></li>
						<li><img src="static/images/u=197202653,4112502699&fm=26&gp=0.jpg">
							<div class="top10name">耐候木油</div></li>
						<!-- <li><img src="static/images/hzj7_03.jpg">
							<div class="top10name">张晓乐</div></li>
						<li><img src="static/images/hzj8_03.jpg">
							<div class="top10name">左力</div> </a></li>
						<li><img src="static/images/hzj9_03.jpg">
							<div class="top10name">董书魁</div></li>
						<li><img src="static/images/hzj10_03.jpg">
							<div class="top10name">邱贵兴</div></li> -->
					</ul>
				</div>
				<div class="top10conwrap" id="top10-3">
					<ul class="top10c">
						<li><img
								src="static/images/shouyemuwu01.jpg">
								<div class="top10name">木屋01</div></li>
						<li><img
								src="static/images/shouyemuwu02.jpg">
								<div class="top10name">木屋02</div></li>
						<li><img
								src="static/images/shouyemuwu03.jpg">
								<div class="top10name">木屋03</div></li>
						<li><img
								src="static/images/shouyemuwu04.jpg">
								<div class="top10name">木屋04</div></a></li>
						<li><img
								src="static/images/shouyemuwu05.jpg">
								<div class="top10name">木屋05</div></li>
						<li><img
								src="static/images/shouyemuwu06.jpg">
								<div class="top10name">木屋06</div></li>
						<li><img
								src="static/images/shouyemuwu07.jpg">
								<div class="top10name">木屋07</div></li>
						<li><img
								src="static/images/shouyemuwu08.jpg">
								<div class="top10name">木屋08</div></li>
						<li><img
								src="static/images/shouyemuwu09.jpg">
								<div class="top10name">木屋09</div></li>
						<li><img
								src="static/images/shouyemuwu010.jpg">
								<div class="top10name">木屋10</div></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!--top10  end   -->
	<!-- begin -->
 
	<div class="ysqwrap">
		<div class="ysq">
			<div class="yhsyhtit" id="fangfumujianjie">
				<div class="yhsyhtitheng">
					<hr />
				</div>
				<div class="yhsyhtitw" style="color: #fff">防腐木简介</div>
				<div class="yhsyhtitheng">
					<hr />
				</div>
			</div>
			<div class="ysqcon">
				<ul class="ysqname">
					<li class="ysqbacklight1"></li>
					<li class="ysqbacklight2"></li>
					<li class="ysqbacklight3"></li>
					<li class="ysqbacklight4"></li>
				</ul>
				<ul class="yinying">
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
				<div class="ysqc">
					<div class="ysqcontit">基础了解</div>
					<div class="ysqconc">
						防腐木，就是将普通木材经过人工添加化学防腐剂之后，使其具有防腐蚀、防潮，防真菌，防虫蚁、防霉变以及防水等特性。</br></br>
						能够直接接触土壤及潮湿环境，经常使用在户外地板，工程，景观，防腐木花架等，供人们歇息和欣赏自然美景，是户外地板、园林景观、木秋千，娱乐设施，</br>
						木栈道等里理想材料，深受园艺设计师的青睐，不过随着科学技术的发展，防腐木已经非常环保了，故也经常使用在室内装修，地板及家具中，室内装修设计师也非常喜欢防腐木。</br> </br>
						还有一种没有防腐剂的防腐木-深度炭化木，又称热处理木。炭化木是将木材的有效营养成分炭化，通过切断腐朽菌生存的营养链来达到防腐的目的
					</div>
				</div>
				<div class="ysqc">
					<div class="ysqcontit">优势</div>
					<div class="ysqconc">
						防腐木较其它木材相比，具有密度高、强度高、握钉力好等优点，此外，防腐木纹理清晰，所以装饰效果非常好。大家知道，装修施工要适应不同的需要， </br>
						有的木材能够抗拒恶劣的户外环境，能够防止和减少腐烂，抗击白蚁害虫及抗真菌生物的侵蚀，防腐木都能够满足这些特殊的需求。 </br> </br>
						在有的水景中，大量使用防腐木，也是因为他能够防止水生寄生虫的寄生，而且维护起来比较方面，且用材环保，即使使用年限增长
						，它也不宜变形或者断裂，所以，相比起其他原材料来讲，防腐木显得既经济耐用，又得体美观。 </br>
						
					</div>
				</div>
				<div class="ysqc">
					<div class="ysqcontit">防腐渗透性</div>
					<div class="ysqconc">
						很多人会问，传统的木制品很多都是在国产木材上刷上桐油，其原理就是浸泡和涂刷防腐剂，是不是可以代理防腐木呢?专家认为，不能代替。 </br> </br>
						因为刷上桐油的原理，仅仅是将防腐剂附着在木质表面，对木质表面起保护作用，但是随着时间的推移，国产的木材很深会开裂，从而失去防腐性，如何能够防止这种情况发生呢? </br> </br>
						唯一的办法就是定期(一般是2~3年)进行全面涂刷维护。
						</br>
					</div>
				</div>
				<div class="ysqc">
					<div class="ysqcontit">应用</div>
					<div class="ysqconc">
						防腐木地板是防腐木的主要用途之一，除此之外，防腐木还可以被用来制造成其它户外的用品，比如桌椅、秋千、葡萄架，甚至木屋，就好像我们在国外的家庭庭院里常见的那样。</br></br>
						如今，国内也有越来越多人住进了别墅，在自家的院子里设置一些防腐木的家具，也不失为一种情趣。</br>
						目前从防腐木的选材方面，由于田园管理机的使用，木材的质量和成长期也是越来越优越了。</br>
						防腐木家具的价格也并不贵，和一般家具的差不多。虽然它的外表看起来比较粗糙，但是更加符合贴近自然的风格。</br>
						不过防腐木防腐作用是否会因为切割而受到破坏?这是不用担心的，因为其加工工艺的关系，无论怎样摆弄，它的防腐性能也不会受到影响。</br>


					</div>
				</div>
			</div>
		</div>
	</div>







	<!-- END -->


	




	<!-- <div class="yqlj">
		<div class="yhsyhtit">
			<div class="yhsyhtitheng">
				<hr />
			</div>
			<div class="yhsyhtitw">友情链接</div>
			<div class="yhsyhtitheng">
				<hr />
			</div>
		</div>
		<ul class="yqljcon1">
			<li><a href="http://www.allinpay.com/" target="_blank"><img
					src="static/images//tonglian.png"></a></li>
			<li><a href="http://www.lxfactoring.com/" target="_blank"><img
					src="static/images//partner2.png"></a></li>
			<li><a href="http://www.chenggonglaw.com/Default.aspx"
				target="_blank"><img src="static/images//partner3.png"></a></li>
			<li><a href="https://www.draeger.com/zh_cn/Home" target="_blank"><img
					src="static/images//partner4.png"></a></li>
			<li><a href="http://www.philips.com.cn/" target="_blank"><img
					src="static/images//partner5.png"></a></li>
			<li><a href="https://www.siemens.com/cn/zh/home.html/"
				target="_blank"><img src="static/images//partner6.png"></a></li>
			<li><a href="http://www.e-bidding.org/" target="_blank"><img
					src="static/images//partner7.png"></a></li>
			<li><a href="http://www.hailankangfu.com/" target="_blank"><img
					src="static/images//partner8.png"></a></li>
		</ul>
		<ul class="yqljcon2">
			<li><a href="http://www.nhfpc.gov.cn/" target="_blank">国家卫计委</a></li>
			<li><a href="http://www.sda.gov.cn/" target="_blank">国家药监总局</a></li>
			<li><a href="http://www.bjda.gov.cn/" target="_blank">北京市药监局</a></li>
			<li><a href="http://www.bjchfp.gov.cn/" target="_blank">北京市卫计委</a></li>
			<li><a href="http://www.shfda.gov.cn/" target="_blank">上海市药监局</a></li>
			<li><a href="http://www.wsjsw.gov.cn/" target="_blank">上海市卫计委</a></li>
			<li><a href="http://www.gdda.gov.cn" target="_blank">广东省药监局</a></li>
			<li><a href="http://www.gdwst.gov.cn/" target="_blank">广东省卫计委</a></li>
			<li><a href="http://www.sdfda.gov.cn/" target="_blank">山东省药监局</a></li>
			<li><a href="http://www.sdwsjs.gov.cn/" target="_blank">山东省卫计委
			</a></li>
			<li><a href="http://www.hda.gov.cn" target="_blank">河南省药监局</a></li>
		</ul>
	</div> -->



	<script type="text/javascript" src="static/js/hyzx.js"></script>
	<script type="text/javascript" src="static/js/banner.js"></script>
	<script type="text/javascript" src="static/js/dzzg.js"></script>
	<script type="text/javascript" src="static/js/top10.js"></script>
	<script type="text/javascript" src="static/js/top10tab.js"></script>
	<script type="text/javascript" src="static/js/ysq.js"></script>


</body>

</html>
