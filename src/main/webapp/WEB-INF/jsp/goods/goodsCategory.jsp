<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
	<title>PANCOAT</title>

	<!--
	<link rel="stylesheet" href="/theme/pshp/css/vendor/jquery-ui.css">
	<link rel="stylesheet" href="/theme/pshp/css/vendor/bootstrap.css">
	<link rel="stylesheet" href="/theme/pshp/css/main.min.css">
	<link rel="stylesheet" href="/theme/pshp/css/ui.css">
	-->

	<link rel="stylesheet" href="../theme/pshp/css/vendor/jquery-ui.css">
	<link rel="stylesheet" href="../theme/pshp/css/vendor/bootstrap.css">
	

	<link rel="stylesheet" href="../theme/pshp/css/fonts.css">
	<link rel="shortcut icon" href="/favicon.ico">
	
	<script src="../theme/pshp/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<script src="../theme/pshp/js/vendor/selector.min.js"></script>
	<script src="../theme/pshp/js/vendor/webfont.min.js"></script>
	<script src="../dist/jquery/jquery-1.11.0.min.js"></script>
	<script src="../dist/jquery/jquery-ui.js"></script>
	<script src="../dist/jquery/jquery-migrate-1.2.1.min.js"></script>
	<script src="../dist/jquery/plugin/jquery.cookie.js"></script>

	<!-- font-awesome(icon) -->
	<link href="../dist/font-awesome/css/font-awesome.min.css" rel="stylesheet">

	<!-- owl -->
	<link rel="stylesheet" href="../dist/owl/owl.carousel.css">
	<link rel="stylesheet" href="../dist/owl/owl.theme.default.min.css">
	<script src="../dist/owl/owl.carousel.min.js"></script>
	<script src="../dist/owl/owl.js"></script>

	<link rel="stylesheet" href="../theme/pshp/css/main.min.css">
	<link rel="stylesheet" href="../theme/pshp/css/ui.css">
	
	<style>
	
	
/* .ui-range .ui-slider {
    background-color: #c8c8c8;
    height: 12px;
}

.hashFilter .form .form-item.price .ui-range .range-slider .ui-slider-horizontal {
    margin-top: 10px;
    margin-right: 5px;
}


@media (min-width: 1024px){
.hashFilter .form .form-item.price .ui-range .range-slider .ui-slider-horizontal, .hashFilter .form .form-item.brand .ui-range .range-slider .ui-slider-horizontal {
    margin-top: 6px;
}}

.ui-range .ui-slider .ui-slider-range {
    background-color: #555c80;
}
 

 .ui-range .ui-slider .ui-slider-handle {
    width: 17px;
    height: 16px;
    top: -2px;
    background: transparent url(../theme/pshp/img/bullet-range.png) no-repeat center center;
}


.icon-check-white {
    background-image: url(../theme/pshp/img/icon/icon-check-white.png);
}

.icon-expansion-white {
    background-image: url(../theme/pshp/img/icon/icon-expansion-white.png);
}


.icon-share-white {
    background-image: url(../theme/pshp/img/icon/icon-share-white.png);
} 
	 
	 
.ui-range .ui-slider {
    background-color: #c8c8c8;
    height: 12px;
}

.hashFilter .form .form-item.price .ui-range .range-slider .ui-slider-horizontal {
    margin-top: 10px;
    margin-right: 5px;
}


@media (min-width: 1024px){
.hashFilter .form .form-item.price .ui-range .range-slider .ui-slider-horizontal, .hashFilter .form .form-item.brand .ui-range .range-slider .ui-slider-horizontal {
    margin-top: 6px;
}}

.ui-range .ui-slider .ui-slider-range {
    background-color: #555c80;
}


.ui-range .ui-slider .ui-
-handle {
    width: 17px;
    height: 16px;
    top: -2px;
    background: transparent url(../theme/pshp/img/bullet-range.png) no-repeat center center;
}




.ui-range .ui-slider {
    background-color: #c8c8c8;
    height: 12px;
}

.hashFilter .form .form-item.price .ui-range .range-slider .ui-slider-horizontal {
    margin-top: 10px;
    margin-right: 5px;
}


@media (min-width: 1024px){
.hashFilter .form .form-item.price .ui-range .range-slider .ui-slider-horizontal, .hashFilter .form .form-item.brand .ui-range .range-slider .ui-slider-horizontal {
    margin-top: 6px;
}}

.ui-range .ui-slider .ui-slider-range {
    background-color: #555c80;
}
	 */
	</style>
</head>
<body>
<div class="viewport">
<div id="container">
<div id="page" class="page">
<section class="hashFilter section eshop container">
<form id="fmFilter" name="fmFilter" action="./goodsCategory" method="post">
<!--필요업을것같다
 	<input type="hidden" name="mode" value="items_category">
	<input type="hidden" name="sort" value="goodsno desc">
	<input type="hidden" name="brandno" value="">
	<input type="hidden" name="no" value="102"> -->

	<div class="section-body">

	<!-- coordi 페이지 editor's pick 페이지에는 page-category 없어야됨 -->
	<div class="page-category">
		<div class="selectboxWrap">

			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text">
					
					
					
					 </strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="category[]" id="cate01">
					<option value="101" data-catnm="TOP">
					TOP
					<!--(0)-->
					</option>
					<option value="102" selected="" data-catnm="OUTER">
					${isCategory}
					<!--(0)-->
					</option>
					<option value="103" data-catnm="BOTTOM">
					BOTTOM
					<!--(0)-->
					</option>
					<option value="104" data-catnm="ACC">
					ACC
					<!--(0)-->
					</option>
					<option value="105" data-catnm="KIDS">
					KIDS
					<!--(0)-->
					</option>
					<option value="106" data-catnm="LIFE STYLE">
					LIFE STYLE
					<!--(0)-->
					</option>
				</select>
			</div>
			<!--
			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text"></strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="category[]" id="cate02">
				</select>
			</div>
			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text"></strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="category[]" id="cate03">
				</select>
			</div>
			-->
			
			<!--
			<a href="#" class="comment">
				<span class="icon icon-speaker-white"></span>
				<span class="text">배송관련 공지사항 안내 드립니다.</span>
			</a>
			-->
		</div>
	</div>
	<!-- 각 카테고리별 타이틀-->
	<div class="page-title section">
		<h2>
			<strong id="section_filter_h2_top">
					${isCategory}
					</strong>
		</h2>
	</div>

	<script>
	$("#section_filter_h2_top").html($(".selectboxWrap select:first option:selected").text());
	</script>

		<!--세일페이지인 경우 HOT ISSUES-->


	</div>
		

	<!--<div class="section-head">
		<h3>filter</h3>
		<span class="border"></span>
		<button class="button" id="filterToggle">
			<span class="icon icon-downArrow-black"></span>
			<span class="sr-only">펼치기/닫기</span>
		</button>
	</div>-->
	<div class="section-body box-shadow">
		<div class="form row">

<!--
"ranking", "sale", "new"
-->

			<div class="form-item col-sm-12 col-lg-24 categoryDetail">
				<div class="form-item-title">
					<h4>상세 분류 선택</h4>
				</div>
				<div class="form-item-wrap">
					<div class="row">
					 <c:forEach var="goodsClass"  items="${goodsClass}" varStatus="stat">
						<div class="checkbox col-xs-auto">
							<label>
								<input type="checkbox" name="sub_category[]" value="${goodsClass}" >
								<span class="icon icon-checkbox"></span> 
								<span class="checkbox-label">${goodsClass}</span>
							</label>
						</div>
				 	</c:forEach> 
					
					</div>
				</div>
			</div>

			<div class="condition form-item col-sm-12 col-lg-6">
				<div class="form-item-title">
					<h4>제품상태</h4>
				</div>
				<div class="form-item-wrap">
					<div class="row">

						<div class="checkbox col-xs-auto">
							<label>
								<input type="checkbox" name="sale" data-text="세일 상품만">
								<span class="icon icon-checkbox"></span>
								<span class="checkbox-label">세일 상품만</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto selected">
							<label>
								<input type="checkbox" name="running" data-text="품절상품제외" checked="">
								<span class="icon icon-checkbox"></span>
								<span class="checkbox-label">품절상품 제외</span>
							</label>
						</div>
					</div>
				</div>
			</div>





			<div class="price form-item col-sm-24 col-lg-12">
				<div>
					<div class="form-item-title">
						<h4>가격대</h4>
					</div>
					<div class="form-item-wrap ui-range row">
						<div id="price-range" class="col-xs-12">
							<div class="col-xs-12">
								<input class="xx-control" type="text" name="priceRange[]" value="14800" size="22" >
							</div>
							<div class="col-xs-12">
								<input class="xx-control" type="text" name="priceRange[]" value="298000" size="22">
							</div>
					</div>
						<div class="range-slider col-xs-12"> <!-- 슬라이드 -->
							<div id="price-range-slider" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" aria-disabled="false">
								<div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 0%;"></div>
								<a class="ui-slider-handle ui-state-default ui-corner-all" href="#" style="left: 5.03356%;"></a>
								<a class="ui-slider-handle ui-state-default ui-corner-all" href="#" style="left: 100%;"></a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="color form-item col-sm-12 col-lg-6">
				<div class="form-item-title">
					<h4>색상</h4>
				</div>
				<div class="form-item-wrap col-xs-24">
					<div class="row box-group">
						<div class="checkbox col-xs-auto black">
							<label>
								<input type="checkbox" name="color[]" value="BLACK" data-text="black">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-black.png" alt="black">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto gray">
							<label>
								<input type="checkbox" name="color[]" value="GRAY" data-text="gray">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-gray.png" alt="gray">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto brown">
							<label>
								<input type="checkbox" name="color[]" value="BROWN" data-text="brown">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-brown.png" alt="brown">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto burgundy">
							<label>
								<input type="checkbox" name="color[]" value="BURGUNDY" data-text="burgundy">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-burgundy.png" alt="burgundy">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto pink">
							<label>
								<input type="checkbox" name="color[]" value="PINK" data-text="pink">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-pink.png" alt="pink">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto purple">
							<label>
								<input type="checkbox" name="color[]" value="PURPLE" data-text="purple">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-purple.png" alt="purple">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto white">
							<label>
								<input type="checkbox" name="color[]" value="WHITE" data-text="white">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-white.png" alt="white">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto navy">
							<label>
								<input type="checkbox" name="color[]" value="NAVY" data-text="navy">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-navy.png" alt="navy">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto skyblue">
							<label>
								<input type="checkbox" name="color[]" value="SKYBLUE" data-text="skyblue">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-skyblue.png" alt="skyblue">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto blue">
							<label>
								<input type="checkbox" name="color[]" value="BLUE" data-text="blue">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-blue.png" alt="blue">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto green">
							<label>
								<input type="checkbox" name="color[]" value="GREEN" data-text="green">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-green.png" alt="green">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto yellow">
							<label>
								<input type="checkbox" name="color[]" value="YELLOW" data-text="yellow">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-yellow.png" alt="yellow">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto red">
							<label>
								<input type="checkbox" name="color[]" value="RED" data-text="red">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-red.png" alt="red">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto gradient-gold">
							<label>
								<input type="checkbox" name="color[]" value="GRADIENT-GOLD" data-text="gradient-gold">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="../theme/pshp/img/filter-color-gradient-gold.png" alt="gradient-gold">
								</span>
							</label>
						</div>
					</div>
				</div>
			</div>

	


			<div class="reset form-item col-xs-24">
				<div class="form-item-wrap col-xs-24">
					<button class="button" id="filterClear">
						<span class="button-label">검색</span>
					</button>
				</div>
			</div>

		</div>
		<div class="section-foot more">
			<a class="button button hidden-md hidden-lg" id="filterMore">
				<span class="button-label">MORE FILTER</span>
			</a>
		</div>
	</div>


	<input type="hidden" name="category" value="${isCategory}"/>
	<input type="hidden" name="searchCheck" value="ON"/>
	</form>
	
	</section>
	
	<section class="storeRankCatalog section catalogDisplay container ajax_product_ranking_list">
	<div class="section-head">
		<h3>rank</h3>
		<span class="border"></span>
	</div>
	<div class="section-body">
		<ul class="catalog row"><!--상품목록 ajax-->

<li class="catalog-item col-xs-12 col-sm-6 col-md-4 items_0 c1">
	<div class="thumbnail">
		<a href="../goods/1456896416">
			<img data-original="http://pic.styleindex.co.kr/g/s/145/1456896416" class="for-ie8 img-responsive lazy" width="500" height="500">
			<div data-original="http://pic.styleindex.co.kr/g/s/145/1456896416" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/145/1456896416&quot;);" class="lazy">
				<img src="../theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
			</div>
			<div class="cabal-group">
				<span class="cabal cabal-sale">
					<span class="cabal-label">-73%</span>
				</span>

			</div>
		</a>
		<div class="addon">
			<div class="button-group">
				<button class="button col-xs-12" target="modal" data-size="lg" data-label="상품 PREVIEW" href="../goods/modalview?goodsno=1456896416">
					<span class="icon icon-expansion-white"></span>
				</button>
				<a href="../goods/sns?goodsno=1456896416" class="button button-dimmed col-xs-12" target="modal" data-size="sm" data-label="SNS공유하기">
					<span class="icon icon-share-white"></span>
				</a>
			</div>
		</div>
	</div>
	<div class="rank">
		<div class="wrap">
			<span class="rank-plate"><span class="number"> </span><span class="number">1</span></span>
			<!--<span class="rank-rise up">
				<span class="icon icon-rise"></span>&lt;!&ndash; 51 임시로 막아둠.&ndash;&gt;
			</span>-->
		</div>
	</div>
	<div class="caption">
		<p class="brand">PANCOAT</p>
		<p class="name">
			<a href="../goods/1456896416">[팬콧샵] NOSWEAT 0952 WINDBREAK JUMPER (SP)_PPOSPWB01UC5</a>
		</p>
		<p class="price">
			<span class="was"><span class="label sr-only">판매가격:</span>129,000<span class="currency">원</span></span>
			<span class="now"><span class="label sr-only">할인가격:</span>35,370<span class="currency">원</span></span>
		</p>
	</div>
</li>

<c:forEach var="goodsRank"  items="${goodsRank}" varStatus="stat">
<c:if test="${stat.count <7}">

<c:url var="viewURL" value="/SIRORAGI/goodsDetail" >
	<c:param name="GOODS_NUMBER" value="${goodsRank.GOODS_NUMBER }" />							
</c:url>	
<li class="catalog-item col-xs-12 col-sm-6 col-md-4 items_0 c1">
	<div class="thumbnail">
		<a href="${viewURL}">
			<img data-original="/SIRORAGI/file/goodsFile/${goodsRank.GOODS_THUMBNAIL}" class="for-ie8 img-responsive lazy" width="500" height="500">
			<div data-original="/SIRORAGI/file/goodsFile/${goodsRank.GOODS_THUMBNAIL}" style="display: block; background-image: url(&quot;/SIRORAGI/file/goodsFile/${goodsRank.GOODS_THUMBNAIL}&quot;);" class="lazy">
				<img src="../theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
			</div>
			<div class="cabal-group">
			<!-- 여기다 조건주자  -->
			<c:if test="${goodsRank.GOODS_DCPRICE != null}">
				
				<%-- <c:set value="${goodsList.GOODS_PRICE}" var="PRICE" type="number"/> --%>

				<span class="cabal cabal-sale">
					<span class="cabal-label">-<fmt:formatNumber value="${(goodsRank.GOODS_PRICE - goodsRank.GOODS_DCPRICE)*100 / goodsRank.GOODS_PRICE}" type="number"/>%</span>
				</span>
			</c:if>
				

				<span class="cabal cabal-new">
					<span class="cabal-label">new</span>
				</span>
				
				<span class="cabal cabal-hurryup">
					<span class="cabal-label">HURRY UP</span>
				</span>
				
			</div>
		</a>
		<div class="addon">
			<div class="button-group">
				<button class="button col-xs-12" target="modal" data-size="lg" data-label="상품 PREVIEW" href="../goods/modalview?goodsno=1456896416">
					<span class="icon icon-expansion-white"></span>
				</button>
				<a href="${viewURL}" class="button button-dimmed col-xs-12" target="modal" data-size="sm" data-label="SNS공유하기">
					<span class="icon icon-share-white"></span>
				</a>
			</div>
		</div>
	</div>
	<div class="rank">
		<div class="wrap">
			<span class="rank-plate"><span class="number"> </span><span class="number">${stat.count}</span></span>
			<!--<span class="rank-rise up">
				<span class="icon icon-rise"></span>&lt;!&ndash; 51 임시로 막아둠.&ndash;&gt;
			</span>-->
		</div>
	</div>
	<div class="caption">
		<p class="brand">PANCOAT</p>
		<p class="name">
			<a href="${viewURL}">${goodsRank.GOODS_NAME}</a>
		</p>
		<p class="price">
		<c:if test="${goodsRank.GOODS_DCPRICE != null}">
<span class="was"><span class="label sr-only">판매가격:</span><fmt:formatNumber value="${goodsRank.GOODS_PRICE}" type="number"></fmt:formatNumber><span class="currency">원</span></span>
<span class="now"><span class="label sr-only">할인가격:</span><fmt:formatNumber value="${goodsRank.GOODS_DCPRICE}" type="number"></fmt:formatNumber><span class="currency">원</span></span>
</c:if>
<c:if test="${goodsRank.GOODS_DCPRICE == null}">
<span class="now"><span class="label sr-only">판매가격:</span><fmt:formatNumber value="${goodsRank.GOODS_PRICE}" type="number"></fmt:formatNumber><span class="currency">원</span></span>
</c:if>
			<!-- <span class="was"><span class="label sr-only">판매가격:</span>129,000<span class="currency">원</span></span>
			<span class="now"><span class="label sr-only">할인가격:</span>35,370<span class="currency">원</span></span> -->
		</p>
	</div>
</li>
</c:if>
</c:forEach>



</ul>
	</div>
	<!--<div class="section-foot">
		<button class="button btn-more-ranking col-xs-offset-9 col-xs-6">
			<span class="button-label">더보기</span>
		</button>
	</div>-->
</section>
	
	<section class="storeCatalog section container">
	<div class="section-head">
		<h3>product list</h3>
		<span class="border"></span>
	</div>

	<div class="section-body">
		<!-- ### 검색 태그 -->
		<!--<div class="hashFilter-result">
			<ul class="row">
				<li class="fixed">
					<button class="button button-dimmed small" id="filterClear">
						<span class="button-label">RESET</span>

					</button>
				</li>
				&lt;!&ndash; ### ajax : filter tag &ndash;&gt;
			</ul>
		</div>-->

		<!-- ### 정렬 -->
		<div class="catalog-operate">
			<!--<p class="catalogCounter">전체 <strong><span id="recodeTotal">0</span>개</strong>의 상품</p>-->
			<div class="sort form-item hidden-xs hidden-sm">
				<div class="form-item-wrap">
					<ul class="row">
						<li class="col-md-auto">
							<button class="button button-default ">
								<span class="button-label" data-sort="a.sort">인기순</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default selected">
								<span class="button-label" data-sort="goodsno desc">신상품</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default ">
								<span class="button-label" data-sort="goodsnm">상품명</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default ">
								<span class="button-label" data-sort="price">낮은가격</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default ">
								<span class="button-label" data-sort="price desc">높은가격</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default ">
								<span class="button-label" data-sort="salem desc">할인률</span>
							</button>
						</li>
					</ul>
				</div>
			</div>

			<!--mobile용-->
			<div class="sort mobile form-item col-xs-12 hidden-md hidden-lg">
				<div class="form-item-wrap">
					<div class="selectbox col-xs-24">
						<div class="selectbox-data">
							<strong class="text">인기순 </strong>
							<span class="icon icon-dropdown-gray-dark"></span>
						</div>
						<select name="sort">
							<option value="a.sort" selected="">인기순</option>
							<option value="goodsno desc">신상품</option>
							<option value="goodsnm">상품명</option>
							<option value="price">낮은가격</option>
							<option value="price desc">높은가격</option>
							<option value="salem desc">할인률</option>
						</select>
					</div>
				</div>
			</div>
		</div>
		<!-- ### 상품 리스트 -->
		<ul class="catalog ajax-list row"><!--상품목록 ajax-->

<li class="catalog-item col-xs-12 col-sm-6 col-md-4 items_0 c1">
	<div class="thumbnail">
		<a href="../goods/1487554074">
			<img data-original="http://pic.styleindex.co.kr/g/s/148/1487554074" class="for-ie8 img-responsive lazy" width="500" height="500">
			<div data-original="http://pic.styleindex.co.kr/g/s/148/1487554074" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/148/1487554074&quot;);" class="lazy">
				<img src="../theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
			</div>
			<div class="cabal-group">
				<span class="cabal cabal-sale">
					<span class="cabal-label">-22%</span>
				</span>

			</div>
		</a>
		<div class="addon">
			<div class="button-group">
				<button class="button col-xs-12" target="modal" data-size="lg" data-label="상품 PREVIEW" href="../goods/modalview?goodsno=1487554074">
					<span class="icon icon-expansion-white"></span>
				</button>
				<a href="../goods/sns?goodsno=1487554074" class="button button-dimmed col-xs-12" target="modal" data-size="sm" data-label="SNS공유하기">
					<span class="icon icon-share-white"></span>
				</a>
			</div>
		</div>
	</div>
	<div class="caption">
		<p class="brand">PANCOAT</p>
		<p class="name">
			<a href="../goods/1487554074">[팬콧샵] MULTI CHARACTER FLOWER LETTERING TRACKTOP (STRAWBERRY MILK PINK)_PPOEPTT01VP9</a>
		</p>
		<p class="price">
			<span class="was"><span class="label sr-only">판매가격:</span>99,000<span class="currency">원</span></span>
			<span class="now"><span class="label sr-only">할인가격:</span>77,520<span class="currency">원</span></span>
		</p>
	</div>
</li>

<%-- <c:choose>
	<c:when test="${goodsList == null}">
		<c:forEach var="goodsList"  items="${goodsList}" varStatus="stat">
	</c:when>
	
	<c:when test="${goodsList != null}">
		<c:forEach var="goodsList"  items="${goodsList}" varStatus="stat">
	</c:when>
</c:choose>
 --%>

<c:forEach var="goodsList"  items="${goodsList}" varStatus="stat">

<c:url var="viewURL" value="/SIRORAGI/goodsDetail" >
	<c:param name="GOODS_NUMBER" value="${goodsList.GOODS_NUMBER }" />							
</c:url>	

<li class="catalog-item col-xs-12 col-sm-6 col-md-4 items_0 c1">
	<div class="thumbnail">
		<a href="${viewURL}">
			<img data-original="/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}" class="for-ie8 img-responsive lazy" width="500" height="500">
			<div data-original="/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}" style="display: block; background-image: url(&quot;/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}&quot;);" class="lazy">
				<img src="../theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
			</div>
			<div class="cabal-group">
			<!-- 여기다 조건주자  -->
			<c:if test="${goodsList.GOODS_DCPRICE != null}">
				
				<%-- <c:set value="${goodsList.GOODS_PRICE}" var="PRICE" type="number"/> --%>
				
				
			
				
				<span class="cabal cabal-sale">
					<span class="cabal-label">-<fmt:formatNumber value="${(goodsList.GOODS_PRICE - goodsList.GOODS_DCPRICE)*100 / goodsList.GOODS_PRICE}" type="number"/>%</span>
				</span>
			</c:if>
				

				<span class="cabal cabal-new">
					<span class="cabal-label">new</span>
				</span>
				
				<span class="cabal cabal-hurryup">
					<span class="cabal-label">HURRY UP</span>
				</span>
				
			</div>
		</a>
		<div class="addon">
			<div class="button-group">
				<button class="button col-xs-12" target="modal" data-size="lg" data-label="상품 PREVIEW" href="${viewURL}">
					<span class="icon icon-expansion-white"></span>
				</button>
				<a href="${viewURL}" class="button button-dimmed col-xs-12" target="modal" data-size="sm" data-label="SNS공유하기">
					<span class="icon icon-share-white"></span>
				</a>
			</div>
		</div>
	</div>
	<div class="caption">
		<p class="brand">PANCOAT</p>
		<p class="name">
			<a href="${viewURL}">${goodsList.GOODS_NAME}</a>
		</p>
		<p class="price">
		
<c:if test="${goodsList.GOODS_DCPRICE != null}">
<span class="was"><span class="label sr-only">판매가격:</span><fmt:formatNumber value="${goodsList.GOODS_PRICE}" type="number"></fmt:formatNumber><span class="currency">원</span></span>
<span class="now"><span class="label sr-only">할인가격:</span><fmt:formatNumber value="${goodsList.GOODS_DCPRICE}" type="number"></fmt:formatNumber><span class="currency">원</span></span>
</c:if>
<c:if test="${goodsList.GOODS_DCPRICE == null}">
<span class="now"><span class="label sr-only">판매가격:</span><fmt:formatNumber value="${goodsList.GOODS_PRICE}" type="number"></fmt:formatNumber><span class="currency">원</span></span>
</c:if>
<%-- 
			<span class="was"><span class="label sr-only">판매가격:</span>${goodsList.GOODS_PRICE}<span class="currency">원</span></span>
			<span class="now"><span class="label sr-only">할인가격:</span>${goodsList.GOODS_DCPRICE}<span class="currency">원</span></span> --%>
		</p>
	</div>
</li>


</c:forEach>



<!--상품목록 ajax-->

<!--상품목록 ajax-->

<!--상품목록 ajax-->

<!--상품목록 ajax-->

<!--상품목록 ajax-->

<!--상품목록 ajax-->

<!--상품목록 ajax-->

<!--상품목록 ajax-->

<!--상품목록 ajax-->

<!--상품목록 ajax-->

<!--상품목록 ajax-->

</ul>
	</div>
	<!--
	<div class="section-foot">
		<button class="button btn-more col-xs-offset-9 col-xs-6">
			<span class="button-label">더보기</span>
		</button>
	</div>
	-->
</section>
</div>
</div>
</div>
<!-- <script>
function priceSearch() {
	var priceRange1 = document.getElementById("priceRange1").value;
	var priceRange2 = document.getElementById("priceRange2").value;
	console.log("바보"+ priceRange1 + priceRange2 );
	  $.ajax({
	        type: "POST",
	        url: "../goods/searchAjax",
	        data: ({mode:"priceSearch", priceRange1:priceRange1, priceRange2:priceRange2,category:"${isCategory}"}),
	        //contentType: "text/plain; charset=euc-kr",
	        success: function(data) {
	        	console.log(data);
	        	/* 
	        	if(data != 0){
	        		alert("이미 가입된 이메일입니다.다른이메일을 입력해주세요");
	        	}else{
	        		alert("인증번호를 요청하신 이메일로 발송했습니다.");
	        	}
	        	
	        	if(data != null)    {
	            	console.log("로그 내용2"+data);
	            } */
	        },
	       /*  error: function(e){
	         alert('error' + e); 
	        } */
	    }); 
	}

</script> -->
<script src="../dist/bootstrap/js/bootstrap.min.js"></script>
<script src="../dist/jquery/plugin/jquery.placeholder.js"></script>
<script src="../dist/js/common.js"></script>
<script src="../dist/js/event.js"></script>
<script src="../theme/pshp/js/event.js"></script>
<script src="../theme/pshp/js/plugins.min.js"></script>
<script src="../theme/pshp/js/main.min.js"></script>
<script src="../theme/pshp/js/vendor/fastclick.min.js"></script>
	
	
</body>
</html>