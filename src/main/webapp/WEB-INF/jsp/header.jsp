<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width" />
	<!-- facebook -->
    <meta property="og:url" content="" />
    <meta property="og:title" content="PANCOAT" />
    <meta property="og:description" content="" />
	<meta property="og:image" content="" />
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="PANCOAT" />
    <meta property="og:locale" content="ko_KR" />
    <!-- facebook -->
	<title>SIRORAGI</title>

	<!--
	<link rel="stylesheet" href="/theme/pshp/css/vendor/jquery-ui.css">
	<link rel="stylesheet" href="/theme/pshp/css/vendor/bootstrap.css">
	<link rel="stylesheet" href="/theme/pshp/css/main.min.css">
	<link rel="stylesheet" href="/theme/pshp/css/ui.css">
	-->

	<link rel="stylesheet" href="/SIRORAGI/theme/pshp/css/vendor/jquery-ui.css">
	<link rel="stylesheet" href="/SIRORAGI/theme/pshp/css/vendor/bootstrap.css">
	

	<link rel="stylesheet" href="/SIRORAGI/theme/pshp/css/fonts.css">
	<link rel="shortcut icon" href="/favicon.ico">
	<script src="/SIRORAGI/theme/pshp/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<script src="/SIRORAGI/theme/pshp/js/vendor/selector.min.js"></script>
	<script src="/SIRORAGI/theme/pshp/js/vendor/webfont.min.js"></script>
	<script src="/SIRORAGI/dist/jquery/jquery-1.11.0.min.js"></script>
	<script src="/SIRORAGI/dist/jquery/jquery-ui.js"></script>
	<script src="/SIRORAGI/dist/jquery/jquery-migrate-1.2.1.min.js"></script>
	<script src="/SIRORAGI/dist/jquery/plugin/jquery.cookie.js"></script>

	<!-- font-awesome(icon) -->
	<link href="/SIRORAGI/dist/font-awesome/css/font-awesome.min.css" rel="stylesheet">

	<!-- owl -->
	<link rel="stylesheet" href="/SIRORAGI/dist/owl/owl.carousel.css">
	<link rel="stylesheet" href="/SIRORAGI/dist/owl/owl.theme.default.min.css">
	<script src="/SIRORAGI/dist/owl/owl.carousel.min.js"></script>
	<script src="/SIRORAGI/dist/owl/owl.js"></script>

	<link rel="stylesheet" href="/SIRORAGI/theme/pshp/css/main.min.css">
	<link rel="stylesheet" href="/SIRORAGI/theme/pshp/css/ui.css">

</head>

<body>
<div class="viewport">
<!--[if lt IE 8]>

<div class="browserupgrade">
	<p class="en">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/" target="_blank">upgrade your browser</a> to improve your experience.</p>
	<p class="kr"><strong>너무 오래된 브라우저</strong>를 사용하고 있습니다. <a href="http://browsehappy.com/" target="_blank">최신 브라우저로 업그레이드</a>해서 더 나은 웹을 경험하세요!</p>
</div>
<![endif]-->
<div id="container">
<div class="globalNavigation mobile">
	<div class="tier1-group account">
		<div class="tier1-head login">
			<a href="/SIRORAGI/loing/loginForm" class="col-xs-12"><strong>login</strong></a>
			<a href="/SIRORAGI/joinStep1" class="col-xs-12"><strong>join</strong></a>
		</div>
	</div>
	<nav>
		<div class="tier1-group">
			<div class="tier1-head">
				<a href="/SIRORAGI/main">
					<strong>HOME</strong>
				</a>
			</div>
		</div>
		<div class="tier1-group">
			<div class="tier1-head">
				<a href="/SIRORAGI/notice/noticeList">
					<strong>NOTICE</strong>
				</a>
			</div>
		</div>
		<div class="tier1-group">
			<div class="tier1-head">
				<a href="/SIRORAGI/faq/faqList">
					<strong>FAQ</strong>
				</a>
			</div>
		</div>
		<!-- <div class="tier1-group">
			<div class="tier1-head">
				<a href="/about/news_download">
					<strong>Q&A</strong>
				</a>
			</div>
		</div> -->
		<div class="tier1-group">
			<div class="tier1-head">
				<a href="/SIRORAGI/store_locator">
					<span class="icon icon-locator-black"></span>
					<strong>store locator</strong>
				</a>
			</div>
		</div>
		<div class="tier1-group toggle">
			<div class="tier1-head">
				<a href="/main/index2">
					<img src="/SIRORAGI/theme/pshp/img/home_btn_r.png" width="15" height="15" >
					<strong class="red">e-shop</strong>
					<span class="icon icon-"></span>
				</a>
			</div>
			<ul class="tier1">
				<li class="tier2-group col-xs-12">
					<div class="tier2-head">
						<a href="/store/new">
							<strong>new</strong>
						</a>
					</div>
				</li>
				<li class="tier2-group col-xs-12 sale">
					<div class="tier2-head">
						<a href="/store/sale">
							<strong>sale</strong>
						</a>
					</div>
				</li>
				<li class="tier2-group col-xs-12">
					<div class="tier2-head">
						<a href="/SIRORGI/goods/goodsCategory?category=TOP">
							<strong>top</strong>
						</a>
					</div>
				</li>
				<li class="tier2-group col-xs-12">
					<div class="tier2-head">
						<a href="/SIRORGI/goods/goodsCategory?category=OUTER">
							<strong>outer</strong>
						</a>
					</div>
				</li>
				<li class="tier2-group col-xs-12">
					<div class="tier2-head">
						<a href="/SIRORGI/goods/goodsCategory?category=PANTS">
							<strong>pants</strong>
						</a>
					</div>
				</li>
				<li class="tier2-group col-xs-12">
					<div class="tier2-head">
						<a href="/SIRORGI/goods/goodsCategory?category=SHOES">
							<strong>shoes</strong>
						</a>
					</div>
				</li>
					<li class="tier2-group col-xs-12">
					<div class="tier2-head">
						<a href="/SIRORGI/goods/goodsCategory?category=ACC">
							<strong>Accessory</strong>
						</a>
					</div>
				</li>
				<!-- <li class="tier2-group col-xs-12">
					<div class="tier2-head">
						<a href="/store/../store/category?no=106">
							<strong>life style</strong>
						</a>
					</div>
				</li>
				<li class="tier2-group col-xs-12">
					<div class="tier2-head">
						<a href="/store/../store/ranking">
							<strong>rank</strong>
						</a>
					</div>
				</li>
				<li class="tier2-group col-xs-12">
					<div class="tier2-head">
						<a href="/store/../store/coordi">
							<strong>coordi</strong>
						</a>
					</div>
				</li>
				<li class="tier2-group col-xs-24 event">
					<div class="tier2-head">
						<a href="/store/event">
							<strong>event</strong>
						</a>
					</div>
				</li> -->
			</ul>
		</div>
	</nav>
</div>
<div id="page" class="page">
<header class="globalHeader container-fluid">
	<div class="wrap">
		<div class="container">
			<button class="button globalHeader-menu" id="navigationToggle">
				<span class="icon icon-hamburger-black"></span>
				<span class="button-label sr-only">메뉴 펼침/닫음</span>
			</button>
			<a href="/main/index2" class="globalHeader-account-mobile">
				<img src="/SIRORAGI/theme/pshp/img/home_btn.png" width="20" height="20">
				<span class="sr-only">E-shop</span>
			</a>
			<a href="/SIRORAGI/main" class="globalHeader-siteBrand"><span class="sr-only">SIRORAGI</span></a>
		</div>
	</div>
	<div class="container">
		<div class="globalNavigation">
			<span class="gnb-overlay"></span>
			<nav>
				<!-- eshop으로 들어왓을때, nav-group에 eshop을 제외한 나머지에 dim클래스 추가 -->
				<!-- 각페이지로 들어갓을 때 페이지에 해당되는 nav-group에 selected클래스를 추가 -->

				<div class="nav-group">
					<a href="/SIRORAGI/main" class="nav-head">
						<span class="label">HOME<span class="border"></span></span>
					</a>
				</div>
				<div class="nav-group">
					<a href="/SIRORAGI/notice/noticeList" class="nav-head">
						<span class="label">NOTICE<span class="border"></span></span>
					</a>
				</div>
				<div class="nav-group">
					<a href="/SIRORAGI/faq/faqList" class="nav-head"><span class="label">FAQ<span class="border"></span></span></a>
				</div>
				<!-- <div class="nav-group">
					<a href="../about/news_download" class="nav-head"><span class="label">Q&A<span class="border"></span></span></a>
				</div> -->
				<div class="nav-group locator">
					<a href="/SIRORAGI/store_locator" class="nav-head">
						<span class="icon icon-locator-black"></span>
						<span class="label">store locator<span class="border"></span></span>
					</a>
				</div>

				<!-- eshop으로 들어왓을때, nav-group에 eshop을 제외한 나머지에 dim클래스 추가,eshop부분엔 active클래스 추가-->
				<!-- 기존 메인에선 active,dim클래스 아무것도 없음 -->
				<!-- eshop으로 들어왓을때 <div class="nav-group eshop active">-->

				<div class="nav-group eshop">
					<a href="/main/index2" class="nav-head">
						<img src="/SIRORAGI/theme/pshp/img/home_btn_r.png" width="15" height="15">
						<span class="label red">e-shop<span class="border" style="background:red"></span></span>
						<span class="bullet"></span>
					</a>
					<div class="nav-wrap">
						<div class="nav-group-depth2">
							<ul class="container">
								<li class="nav-head c01" style="text-align: center;">
									<a href="/store/new"><span>new</span></a>
								</li>
								<li class="nav-head c01">
									<a href="/store/sale"><span>sale</span></a>
								</li>


								<li class="nav-head c03">
									<div style="potistion:absolute;margin:-20px 0 -5px 0"><img src="/SIRORAGI/theme/pshp/img/category_back.png"></div>
									<a href="/store/category?no=101"><span>top</span></a>
								</li>
								<li class="nav-head c04">
									<a href="/SIRORGI/goods/goodsCategory?category=outer"><span>outer</span></a>
								</li>
								<li class="nav-head c05">
									<a href="/store/category?no=103"><span>bottom</span></a>
								</li>
								<li class="nav-head c06">
									<a href="/store/category?no=104"><span>accessory</span></a>
								</li>
								<!-- <li class="nav-head c07">
									<a href="/store/category?no=105"><span>kids</span></a>
								</li>
								<li class="nav-head c08">
									<a href="/store/category?no=106"><span>life style</span></a>
								</li>
								<li class="nav-head c09">
									<a href="/store/ranking"><span>rank</span></a>
								</li>
								<li class="nav-head c10">
									<a href="/store/coordi"><span>coordi</span></a>
								</li>
								<li class="nav-head c11">
									<a href="/store/event"><span>event</span></a>
								</li> -->
							</ul>
						</div>
					</div>
				</div>
				<div class="nav-group hidden-xs hidden-sm">
					<a href="/SIRORAGI/main/search_store" class="nav-head globalHeader-search-mobile" target="modal" data-size="sm" data-label="SEARCH">
						<span class="icon icon-loupe-black"></span>
						<span class="label sr-only">search</span>
					</a>
				</div>
			</nav>
		</div>
		<!-- globalNavigation//end -->
		<div class="globalUtility hidden-xs hidden-sm">
			<ul>
			
				<li class="login item">
				<c:choose>
    				<c:when test="${not empty sessionScope.MEMBER_ID}">
    				<a href="/SIRORAGI/logout" style="display:inline">logout</a>
					</c:when>
					<c:otherwise>
					<a href="/SIRORAGI/loginForm" style="display:inline">login &</a>
					<a href="/SIRORAGI/joinStep1" style="display:inline">join</a>
					</c:otherwise>
				</c:choose>
				</li>
				<li class="item">
					<a href="/SIRORAGI/cartList">
						<span class="icon icon-cart-black hidden-lg"></span>
						<span class="hidden-md">cart</span>
					</a>
				</li>
				<li class="item">
					<c:choose>
					<c:when test="${not empty sessionScope.MEMBER_ID}">
					<a href="/SIRORAGI/mypage">
						<span class="icon icon-identity-black hidden-lg"></span>
						<span class="hidden-md">my-page</span>
					</a>
					</c:when>
					<c:otherwise>
					<a href="/SIRORAGI/loginForm">
						<span class="icon icon-identity-black hidden-lg"></span>
						<span class="hidden-md">my-page</span>
					</a>
					</c:otherwise>
				</c:choose>
				</li>
			</ul>
		</div>
	</div>
</header>
<!-- header//end -->



<script src="/SIRORAGI/dist/js/taxonomy.js"></script>
<script>
$(function(){
	taxonomy('tid[]',"");
	$("select[name='tid[]']").live("change",function(){
		location.href = "/store/category?no=" + $(this).val();
	});

	$("#on_click" ).click(function() {
		$("#on_div").toggle();
	});

	$("#off_click" ).click(function() {
		$("#off_div").toggle();
	});

	$("#on_div, #off_div").mouseleave(function() {
		$(this).hide();
	});
});
</script>



<style>
.main-owl {margin-top:41px;}

@media (max-width:1023px) {
	.main-owl {margin-top:0px;}
}
</style>

       		
            <!-- 메인container-->
           	 <tiles:insertAttribute name="body"/>
            <!-- // container -->

<script>
	function getItems(mode, page_num){
		$.getJSON("../store/ajax", {mode:"items_" + mode, stxt:"", page:1, page_num:page_num, recodeTotal:1, mainpage:1}, function(data){
			$(".catalog.ajax-list").append(data.body);
			$("div.lazy").lazyload({
				container: $("#page"),
				threshold : 400
			});
		});
	}
	/***************************/
	/* Slider Common Functions */
	/***************************/
	function slideWidth(element, slideLen, fullWidth) {
		var contentsWidth = element.width(),
				contentsLength = slideLen.length;
		slideLen.css('width', contentsWidth);
		fullWidth.css('width', contentsWidth*contentsLength);
	}
	function slideTab(selector, slideVar) {
		selector.each(function() {
			$(this).click(function() {
				slideVar.scrollToPage($(this).data('page'));
				return false;
			});
		});
	}
	function slideArrow(button, selector) {
		$('[name=' + button + ']').on('click',function(){
			selector.scrollToPage(this.hash.replace(/^#/,''));
			return false;
		});
	}
	/****************************/
	/* Ajax Sample :: Billboard */
	/****************************/
	function getAjaxBillboardItems(targetEL, code, code2) {
		var targetWrap = $('#'+targetEL);
		var preLoadWrap = targetWrap.next();
		if (targetWrap.hasClass('ready')) {
			$.ajax({
				type: "GET",
				url: "/main/billboard_list",
				data: {code:code},
				success: function(data) {
					targetWrap.html(data).removeClass('ready');
				}
			});
		}
		if (preLoadWrap.hasClass('ready')) {
			$.ajax({
				type: "GET",
				url: "/main/billboard_list",
				data: {code:code2},
				success: function(data) {
					preLoadWrap.html(data).removeClass('ready');
				}
			});
		}
	}
	/************************************/
	/* Ajax Sample :: Ranking - Product */
	/************************************/
	function getAjaxRankingItems(targetEL, code) {
		var targetWrap = $('#'+targetEL);
		if (targetWrap.hasClass('ready')) {
			$.ajax({
				type: "GET",
				url: "/main/product_ranking_list2",
				data: {codecd:code},
				success: function(data) {
					targetWrap.html(data).removeClass('ready');
				}
			});
		}
	}
	/****************************/
	/* Slider Call :: Billboard */
	/****************************/
	$(function(){
		slideWidth($('.start-billboard'), $('.start-billboard .catalog-item'), $('.start-billboard .catalog'));
		var tabSelector = $('.start-billboard .slide-dots li');
		tabSelector.first().addClass('active');
	});
$(function(){
	getItems('blookbook', 6); 
	getItems('article', 6); 
	//getItems('news', 2); getItems('article', 4); 
});

	$(window).resize(function() {
		slideWidth($('.start-billboard'), $('.start-billboard .catalog-item'), $('.start-billboard .catalog'));
		//slideWidth($('.start-rankCatalog .section-body'), $('.start-rankCatalog .catalog'), $('.start-rankCatalog .catalog-wrap'));
	});
</script>

<script type="text/javascript">
	$(".store-locator-search .xx-control").keyup(function() {
		var _this = $(this);
		_this.siblings(".search-layer").addClass("active");
		if (_this.val() === "") {
			_this.siblings(".search-layer").removeClass("active");
		}
	});
</script>

<!-- 검색어 입력시 해당 검색어 출력 START -->
<script type="text/javascript">

	$("#global-search").keyup(function() {
		$.getJSON("../about/ajax", {mode:"store_locator", stxt:$(this).val()}, function(data){			
			$("#search-result").empty();
			var r = [];
			$(data).each(function(k, v){
				r.push("<li><a href='/about/store_locator_view?vid=" + v.storeLocate_sn + "'>" + v.storeName + "</a></li>");
			});
			$("#search-result").append(r).addClass("active");
		});
	});
	
</script>
<!-- 검색어 입력시 해당 검색어 출력 END -->

<style>
.popup-layer .pl-bottom {background:#333; color:#fff; padding:3px 8px; text-align:right;}
.popup-layer p {margin:-2px;}
.mmodal {display: none;position: fixed;top: 0;left: 0;right: 0;bottom: 0;width: 100%;height: 100%;-webkit-overflow-scrolling: touch;z-index: 1000;overflow-x: hidden;overflow-y: auto;}
.mmodal .modal-mask {position: fixed;left: 0;top: 0;right: 0;bottom: 0;width: 100%;height: 100%;background-color: #000;filter: alpha(opacity=70);-ms-filter: alpha(opacity=70);-moz-opacity: 0.7;-khtml-opacity: 0.7;opacity: 0.7;}
.mmodal .modal-content {position: relative;background-color: #fff;margin: 50px;}
.mpopup-layer .pl-bottom {border:1px solid #ccc;background:#fefefe; width:80%;height:40px; padding:10px; color:#000; text-align:center;border-bottom-left-radius: 10px;border-bottom-right-radius: 10px;}
.mpopup-layer .pl-bottom .pl-close-day{border-right:1px solid #ccc;}
.popup-outer img {width:80%;border-top-left-radius: 10px;border-top-right-radius: 10px;}


@media (min-width: 320px){
.mmodal .modal-content {width: 700px;margin:50px 15px;}
}
@media (min-width: 360px){
.mmodal .modal-content {width: 700px;margin:100px 35px;}
}
@media (min-width: 375px){
.mmodal .modal-content {width: 700px;margin:110px 40px;}
}
@media (min-width: 412px){
.mmodal .modal-content {width: 700px;margin:170px 70px;}
}
@media (min-width: 414px){
.mmodal .modal-content {width: 700px;margin:170px 70px;}
}
@media (min-width: 600px){
.mmodal .modal-content {width: 700px;margin:220px 150px;}
.mpopup-layer .pl-bottom {width:300px;}
.popup-outer img {width:300px;border-top-left-radius: 10px;border-top-right-radius: 10px;}
}
@media (min-width: 768px){
.mmodal .modal-content {width: 1200px;margin:280px 250px;}
.mpopup-layer .pl-bottom {width:300px;}
.popup-outer img {width:300px;border-top-left-radius: 10px;border-top-right-radius: 10px;}
}

</style>


<script>
$(function(){
	popupLayer();
});
</script>

<script>
</script>



<footer class="globalFooter">
    <div class="globalFooter-menu container">
        <div>
            <!-- <a href="../node/notice" class="col-xs-auto">공지사항</a> -->
            <!--<a href="http://store.pancoat.com/community/company" class="col-xs-auto">회사소개</a>-->
            <a href="/SIRORAGI/agreement" class="col-xs-auto">이용약관 / 개인정보 처리방침</a>
            <a href="http://www.gra-fik.com" target="_blank" class="siteby col-xs-auto">Site by SIRORAGI</a>
        </div>
    </div>
    <!-- globalFooter-menu//end -->
    <div class="globalFooter-supoort container">
        <div>
            <div class="support">
                <div class="button-group">
                    <a  class="button button-ghost">
                    <span class="icon icon-headset-black"></span>
                    <span class="button-label">070-1234-5678 / 070-1234-5678</span>
                    </a>
                </div>
                <p class="notice">반품 주소 :12814 서울특별시 강남구 역삼동 SIRORAGI</p>
            </div>
            <div class="help">
                <p>- 상품문의는 각 상품의 Q&A를 이용하시면 가장 빠릅니다.</p>
                <p>- 평일:오전 9시 ~ 오후 6시 / 점심시간:오후 12시 ~ 오후 1시 / 토,일 공휴일 휴무</p>
            </div>
        </div>
    </div>
	<div class="globalFooter-business container">
        <p class="legal">
            <span class="subject sr-only">회사명:</span>
            <strong class="item">(주)SIRORAGI</strong>
            <span class="subject">대표:</span>
            <span class="item">오용영</span>
            <span class="subject">사업자등록번호:</span>
            <span class="item">215-87-111111</span>
            <span class="subject">통신판매업:</span>
            <span class="item">제2013-서울강남-01111호</span>
            <span class="subject">대표전화:</span>
            <span class="item"><a href="tel:1544-5991">1566-5600</a></span>
            <span class="subject">팩스:</span>
            <span class="item">02-455-1234</span>
            <span class="subject">개인정보관리책임자:</span>
            <span class="item">홍길동</span>
            <span class="subject">이메일:</span>
            <span class="item"><a href="mailto:siroragi@style.co.kr">siroragi3@gmail.com</a></span>
        </p>
        <address class="address">
        서울특별시 강남구 역삼동 SIRORAGI (반품주소가 아닙니다)</address>
        <div class="document">
            <div class="button-group">
				
				<a href="http://ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2013322016230201307&area1=&area2=&currpage=1&searchKey=04&searchVal=2158733220&stdate=&enddate=
" target="_blank" class="button button-ghost small">
                    <span class="button-label">사업자 정보 확인</span>
                </a>
                <!--<a href="https://mark.inicis.com/mark/escrow_popup.php?no=15159&st=1301648130" class="button button-ghost small" target="_blank">-->
				<a href="https://mark.inicis.com/mark/escrow_popup.php?mid=IESpancoa1" class="button button-ghost small" target="_blank">
                    <span class="button-label">에스크로 가입 사실 확인</span>
                </a>
            </div>
        </div>
        <p class="copyright">© 2017 Siroragi. All Rights Reserved.</p>
    </div>
	<!--
    <div class="globalFooter-business container">
        <p class="legal">
            <span class="subject sr-only">회사명:</span>
            <strong class="item">(주)브랜드 인덱스</strong>
            <span class="subject">대표:</span>
            <span class="item">김민식</span><br>
            <span class="subject">사업자등록번호:</span>
            <span class="item">215-87-33220</span>
            <span class="subject">통신판매업:</span>
            <span class="item">제2013-서울강남-01307호</span>
            <span class="subject">대표전화:</span>
            <span class="item"><a href="tel:1544-5991">1566-6312</a></span>
            <span class="subject">팩스:</span>
            <span class="item">02-455-9868</span><br>
            <span class="subject">개인정보관리책임자:</span>
            <span class="item">홍용택</span>
            <span class="subject">이메일:</span>
            <span class="item"><a href="mailto:yongtaek_hong@styleindex.co.kr">yongtaek_hong@styleindex.co.kr</a></span>
        </p>
        <address class="address">서울특별시 강남구 학동로 30길 5 논현동) 양진프라자 빌딩 (반품주소가 아닙니다)</address>
        <div class="document">
            <div class="button-group">
				<a href="http://ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2013322016230201182&area1=&area2=&currpage=1&searchKey=04&searchVal=2158724435&stdate=&enddate=" target="_blank" class="button button-ghost small">
                    <span class="button-label">사업자 정보 확인</span>
                </a>
                <a href="https://mark.inicis.com/mark/escrow_popup.php?no=15159&st=1301648130" class="button button-ghost small" target="_blank">
                    <span class="button-label">에스크로 가입 사실 확인</span>
                </a>
            </div>
        </div>
        <p class="copyright">© 2015 Pancoat. All Rights Reserved.</p>
    </div>
	-->
</footer>
	<div class="page-mask"></div>
</div>
<!--contents//end-->
</div>
</div>
<div id="modal" class="modal" >
	<div class="modal-mask"></div>
	<div class="modal-content">
		<div class="modal-head">
			<h4>-</h4>
			<button class="button">
				<span class="icon icon-dismiss-white"></span>
				<span class="sr-only">이 창 닫기</span>
			</button>
		</div>
		<div class="modal-body">
		</div>
		<div class="modal-foot">
		</div>
	</div>
</div>

<div id="modal-inner" class="modal">
	<div class="modal-mask"></div>
	<div class="modal-content">
		<div class="modal-head">
			<h4>-</h4>
			<button class="button">
				<span class="icon icon-dismiss-white"></span>
				<span class="sr-only">이 창 닫기</span>
			</button>
		</div>
		<div class="modal-body">
		</div>
		<div class="modal-foot">
		</div>
	</div>
</div>

<div id="ajaxLoader" class="ajax-loading">
	<div class="ajaxLoader-mask"></div>
	<span class="ajaxLoader-spinner">
		<img src="/SIRORAGI/theme/pshp/img/ajax-loader.gif" width="30" height="30">
	</span>
</div>
<script src="/SIRORAGI/dist/bootstrap/js/bootstrap.min.js"></script>
<script src="/SIRORAGI/dist/jquery/plugin/jquery.placeholder.js"></script>
<script src="/SIRORAGI/dist/js/common.js"></script>
<script src="/SIRORAGI/dist/js/event.js"></script>
<script src="/SIRORAGI/theme/pshp/js/event.js"></script>
<script src="/SIRORAGI/theme/pshp/js/plugins.min.js"></script>
<script src="/SIRORAGI/theme/pshp/js/main.min.js"></script>
<script src="/SIRORAGI/theme/pshp/js/vendor/fastclick.min.js"></script>
<script>window.addEventListener('load', function() { FastClick.attach(document.body); }, false);</script>

<script>
$('.owl').owl({
	autoplay: true,
	autoplayTimeout:3000,
	autoplayHoverPause:true
});
</script>


<iframe name="process" style="display:none; width:100%; height:100px"></iframe>

<!-- 구글 관련 스크립틑 들은 모바일과 PC가 나눠진것이 없다 모두(공통스크립트, 전환스크립트) 모바일 PC 에서 모두공용으로 사용함 -->
<!-- 구글GA start -->
<!-- Google analyticstracking 코드 start -->
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-38120605-1', 'pancoatshop.com');
ga('send', 'pageview');
</script>
<!-- Google analyticstracking 코드 end -->
<!-- 구글GA end -->

<!-- 구매완료 전환 스크립트 START -->
<!-- 구매완료 전환 스크립트 END -->


<!-- PC페이지인 경우 -->
	<!-- 공통스크립트 START -->

		<!--네이버 PC 공통 스크립트 START-->
		<!--네이버 전환 값은 모바일 PC 공통으로 위에서 설정함 -->
		<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 --> 
		<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"> </script> 
		<script type="text/javascript"> 
		if (!wcs_add) var wcs_add={};
		//wcs_add["wa"] = "s_2652f57f9fec";
		wcs_add["wa"] = "s_52e5f4cb584b";
		if (!_nasa) var _nasa={};
		wcs.inflow();
		wcs_do(_nasa);
		</script>
		<!--네이버 PC 공통 스크립트 END-->

		<!-- 팬콧로거 공통스크립트 START -->
		<!-- LOGGER(TM) TRACKING SCRIPT V.40 FOR logger.co.kr / 38137 : COMBINE TYPE / DO NOT ALTER THIS SCRIPT. -->
		<script type="text/javascript">var _TRK_LID="38137";var _L_TD="ssl.logger.co.kr";var _TRK_CDMN=".pancoat.com";</script>
		<script type="text/javascript">var _CDN_DOMAIN = location.protocol == "https:" ? "https://fs.bizspring.net" : "http://fs.bizspring.net";
		(function(b,s){var f=b.getElementsByTagName(s)[0],j=b.createElement(s);j.async=true;j.src='//fs.bizspring.net/fs4/bstrk.1.js';f.parentNode.insertBefore(j,f);})(document,'script');</script>
		<noscript><img alt="Logger Script" width="1" height="1" src="http://ssl.logger.co.kr/tracker.tsp?u=38137&amp;js=N" /></noscript>
		<!-- END OF LOGGER TRACKING SCRIPT -->
		<!-- 팬콧로거 공통스크립트 END -->


		<!--애드인사이트 공통 스크립트 START-->
		<!-- adinsight 공통스크립트 start -->
		<script type="text/javascript">
		var TRS_AIDX = 5876;
		var TRS_PROTOCOL = document.location.protocol;
		document.writeln();
		var TRS_URL = TRS_PROTOCOL + '//' + ((TRS_PROTOCOL=='https:')?'analysis.adinsight.co.kr':'adlog.adinsight.co.kr') +  '/emnet/trs_esc.js';
		document.writeln("<scr"+"ipt language='javascript' src='" + TRS_URL + "'></scr"+"ipt>");
		</script>
		<!-- adinsight 공통스크립트 end -->
		<!--애드인사이트 공통 스크립트 END-->

		<!-- DDN 리마케팅코드 START -->
		<script type="text/javascript">
			var roosevelt_params = {
				retargeting_id:'OugTocd2Pl-lpT_8YyUwmQ00',
				tag_label:'wGoqX1dFR7CMUf54L7-utg'
			};
		</script>
		<script type="text/javascript" src="//adimg.daumcdn.net/rt/roosevelt.js" async></script>
		<!-- DDN 리마케팅코드 END -->

	<!-- 공통스크립트 END -->


</body>
</html>