<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html lang="ko">
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

	<link rel="stylesheet" href="/theme/pshp/css/vendor/jquery-ui.css?v=1">
	<link rel="stylesheet" href="/theme/pshp/css/vendor/bootstrap.css?v=1">
	

	<link rel="stylesheet" href="/theme/pshp/css/fonts.css">
	<link rel="shortcut icon" href="/favicon.ico">
	<script src="/theme/pshp/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<script src="/theme/pshp/js/vendor/selector.min.js"></script>
	<script src="/theme/pshp/js/vendor/webfont.min.js"></script>
	<script src="/dist/jquery/jquery-1.11.0.min.js"></script>
	<script src="/dist/jquery/jquery-ui.js"></script>
	<script src="/dist/jquery/jquery-migrate-1.2.1.min.js"></script>
	<script src="/dist/jquery/plugin/jquery.cookie.js"></script>

	<!-- font-awesome(icon) -->
	<link href="/dist/font-awesome/css/font-awesome.min.css" rel="stylesheet">

	<!-- owl -->
	<link rel="stylesheet" href="/dist/owl/owl.carousel.css">
	<link rel="stylesheet" href="/dist/owl/owl.theme.default.min.css">
	<script src="/dist/owl/owl.carousel.min.js"></script>
	<script src="/dist/owl/owl.js"></script>

	<link rel="stylesheet" href="/theme/pshp/css/main.min.css?v=2">
	<link rel="stylesheet" href="/theme/pshp/css/ui.css?v=1">
</head>

<body>
<style>
.rankGender-wrap .tab-navs li {
	padding:0;
	border-top: 1px solid gray;
	border-right: 1px solid gray;
	border-bottom: 2px solid #000;
}
.rankGender-wrap .tab-navs li:first-child{
	border-left:1px solid gray;
}
.rankGender-wrap .tab-nav2{
float:left;
/*width:10%;*/
text-align:center;
}
.rankGender-wrap .tab-nav2 a{
	color: #ddd6cd;
    text-decoration: none;
}
.rankGender-wrap .tab-nav2 a, .rankAge-wrap .tab-nav2 a {
    display: block;
    font-weight: bold;
    color: #242424;
    line-height: 2.4615384615;
    font-size: 12px;
    padding: 0 10px;
    margin: 0;
    border: none;
    border-radius: 0;
    background: transparent;
    color: gray;
}
.rankGender-wrap .tab-nav2.active a, .rankAge-wrap .tab-nav2.active a {
    background-color: #191919;
    color: #fff;
}
.rankGender-wrap .list-dropdown li .brief .title {
    display: block;
    font-weight: bold;
    font-size: 12px;
    margin-top: -2px;
	margin-left: 15px;
	line-height:3em;
	
}

.tab-content .answer img {width:100%;}
.rankGender-wrap .list-dropdown li {
    overflow: inherit;
}

/**** 20160406 ****/
.detail {background:#fff !important;border-top:1px dashed #ccc;}

.tab-content2 > div {display:none;}
.tab-content2 > div.active {display:block;}

.section-body {background:#fff;margin-bottom:10px;}
.search-box {text-align:center; margin:25px 0 50px;}
.search-box input[type=text] {border:3px solid #252c4f; height:35px; width:35%; box-sizing:border-box; padding:5px; outline:none; vertical-align:middle;}
.search-box input[type=text]:focus {border-color:#808080;}
.search-box input[type=submit] {height:35px; background:#252c4f; color:#fff; border:0; padding:0 15px; box-sizing:border-box; vertical-align:middle;}

.tab-content-search {margin-bottom:30px;}
.tab-content-search ul {border-top:1px solid #ccc; border-bottom:1px solid #ccc; }
.tab-content-search ul li .brief {padding:10px 20px; }
.tab-content-search ul li .brief .title {font-weight:bold;}
.list-dropdown li .detail .answer {border:0; padding:0 0 0 15px; line-height:22px; margin:0;}
.list-dropdown li .detail .answer p .icon {top:8px;}

</style>

<div class="viewport">		
	<div id="container">
		<div id="page" class="page">
<div class="personal-account-info container">
	<section class="page-category container">
		<div class="selectboxWrap">
			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text">FAQ </strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="category[]" id="cate02">
					<option value="">자주묻는질문</option>
				</select>
			</div>
		</div>
	</section>
	<section class="page-title section container">
		<h2>
			<strong>FAQ</strong>
		</h2>
	</section>

<div class="my-account row">
		<section class="col-xs-24 account-navWrap">
			<nav class="account-nav">
				<ul>
					<li class="col-xs-8 col-sm-4 ">
						<a href="/node/notice">공지사항</a>
					</li>
					<li class="col-xs-8 col-sm-4 ">
						<a href="/node/event">이벤트</a>
					</li>
					<li class="col-xs-8 col-sm-4 selected">
						<a href="/SIRORAGI/faq/faq">FAQ</a>
					</li>
					<li class="col-xs-12 col-sm-4">
						<a href="/service/member_benefit" target="modal" data-size="md" data-label="등급혜택 자세히 보기">회원혜택</a>
					</li>
					<li class="col-xs-12 col-sm-8">
						<a href="/member/findid" target="modal" data-size="md" data-label="아이디/비밀번호 찾기">아이디/비밀번호 찾기</a>
					</li>
				</ul>
			</nav>
		</section>
	</div>
	
	<div class="account-home accountCatalog">
	<section class="section box-line">
		<div class="section-body">
			<!-- 검색 -->
			<div class="search-box">
				<form>
				<input type="text" name="sword_faq" value="" placeholder="팬콧 FAQ 검색해보세요">
				<input type="submit" value="검색">
				</form>
			</div>

			<!-- /검색 -->

			<div class="rankGender-wrap">
				<ul class="tab-navs">
					<li role="presentation" data-cate="100" class="tab-nav2 col-xs-12 col-md-2 col-lg-2 active"><a href="#faq-tab1" role="tab" data-toggle="tab">회원안내</a></li>
					<li role="presentation" data-cate="101" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab2" role="tab" data-toggle="tab">배송안내</a></li>
					<li role="presentation" data-cate="102" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab3" role="tab" data-toggle="tab">주문/결제</a></li>
					<li role="presentation" data-cate="103" class="tab-nav2 col-xs-12 col-md-3 col-lg-3"><a href="#faq-tab4" role="tab" data-toggle="tab">주문 취소/변경</a></li>
					<li role="presentation" data-cate="104" class="tab-nav2 col-xs-12 col-md-3 col-lg-3"><a href="#faq-tab5" role="tab" data-toggle="tab">교환/반품</a></li>
					<li role="presentation" data-cate="105" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab6" role="tab" data-toggle="tab">환불</a></li>
					<li role="presentation" data-cate="106" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab7" role="tab" data-toggle="tab">상품</a></li>
					<li role="presentation" data-cate="107" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab8" role="tab" data-toggle="tab">A/S</a></li>
					<li role="presentation" data-cate="108" class="tab-nav2 col-xs-12 col-md-3 col-lg-3"><a href="#faq-tab9" role="tab" data-toggle="tab">거래증빙서류안내</a></li>
					<li role="presentation" data-cate="109" class="tab-nav2 col-xs-12 col-md-3 col-lg-3"><a href="#faq-tab10" role="tab" data-toggle="tab">사이트 이용안내</a></li>
				</ul>

				<div class="tab-content2">
				
				
				
				<!-- 회원안내 카테고리 -->
					<div role="tabpanel" class="tab-pane active" id="faq-tab100">
						<ul class="list-dropdown">
							
							<li>
							<input type="hidden" id="FAQ_NUMBER" name="FAQ_NUMBER"	value="${map.FAQ_NUMBER}">
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
				<!-- 배송안내 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab101">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
				<!-- 주문/결제 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab102">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
				<!-- 주문 취소 및 변경 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab103">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
				<!-- 교환/반품 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab104">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
								</div>
								</div>
							</li>
							
						</ul>
					</div>
					
				<!-- 환불 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab105">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
								</div>
								</div>
							</li>
							
						</ul>
					</div>
					
					
				<!-- 상품 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab106">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
					
				<!-- A/S 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab107">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
					
				<!-- 거래증빙서류안내 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab108">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
						
						</ul>
					</div>
					
				<!-- 사이트 이용안내 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab109">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
	
			
					<div class="pull-left">
					<a href="faqWrite" class="button"><span class="button-label">글쓰기</span></a>
					</div>
					
				</div>
			</div>
			<!-- guide//end -->
		</div>
		<!-- section-body//end -->
	</section>
	<!-- progress-list//end -->
	</div>
</div>


</div>
</div>
</div>
<script src="/dist/bootstrap/js/bootstrap.min.js"></script>
<script src="/dist/jquery/plugin/jquery.placeholder.js"></script>
<script src="/dist/js/common.js?v=1"></script>
<script src="/dist/js/event.js"></script>
<script src="/theme/pshp/js/event.js"></script>
<script src="/theme/pshp/js/plugins.min.js"></script>
<script src="/theme/pshp/js/main.min.js"></script>
<script src="/theme/pshp/js/vendor/fastclick.min.js"></script>

</body>

</html>