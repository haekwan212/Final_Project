<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="viewport">
<div id="container">
<div id="page" class="page">
<div class="hashFilter eshop">
<section class="page-category container">
		<div class="selectboxWrap">
			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text">e-shop </strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="category[]" id="cate02">
					<option value="">e-shop</option>
				</select>
			</div>
			<a href="#" class="comment">
				<span class="icon icon-speaker-white"></span>
				<span class="text">배송관련 공지사항 안내 드립니다</span>
			</a>
		</div>
	</section>
	
	<section class="page-title section container">
		<h2>
			<strong>search</strong>
		</h2>
	</section>
</div>


<div class="container">
	<section class="globalSearch-form section box-shadow">
		<p><strong class="c01">"${stxt}"</strong>
		키워드로 검색된 추천 컨텐츠입니다.</p>
		<div class="searchForm col-xs-24 col-sm-auto">
			<form action="/SIRORAGI/searchList">
				<div class="x-group col-xs-24 col-sm-auto">
						<input class="xx-control" type="text" id="global-search" placeholder="통합 검색" size="40" value="${stxt}" name="stxt">
					<div class="x-group-addon">
						<button type="submit" class="button button-dimmed">검색</button>
					</div>
				</div>
			</form>
		</div>
		<div class="related">
			<strong>추천 검색어</strong>
			<ul>
				<li><a href="?stxt=%ED%8C%AC%EC%BD%A7%ED%82%A4%EC%A6%88">SIRORAGI키즈</a></li>
				<li><a href="?stxt=%EC%9B%90%ED%94%BC%EC%8A%A4">원피스</a></li>
				<li><a href="?stxt=%EB%B0%98%ED%8C%94%ED%8B%B0">반팔티</a></li>
				<li><a href="?stxt=sesame">sesame</a></li>
				<li><a href="?stxt=PKOEURS">PKOEURS</a></li>
				<li><a href="?stxt=%ED%8C%AC%EC%BD%A7+">SIRORAGI </a></li>
				<li><a href="?stxt=%EB%AA%A8%EC%9E%90">모자</a></li>
				<li><a href="?stxt=PANCOAT+KIDS">SIRORAGI KIDS</a></li>
			</ul>
		</div>
	</section>

	<!--<section class="storeCatalog search section">
		<div class="section-body">
			<ul class="nav storeCategory-nav-tabs">
				<li><a href="#search-product">product</a></li>
				<li><a href="#search-coordi">coordi</a></li>
				<li><a href="#search-brand">brand</a></li>
				<li><a href="#search-featured">event</a></li>
				<li><a href="#search-lookbook">lookbook</a></li>
			</ul>
		</div>
	</section>-->

	<section class="storeCatalog search section">
		<div class="section-head">
			<h3 id="search-product">PRODUCT <!-- - 125개의 상품이 있습니다.--></h3>
			<span class="border"></span>
		</div>
		<!-- title//end -->
		<div class="section-body">
			<div class="hashFilter">
				<div class="section-body">
					<!--
					<div class="form">
						<div class="category form-item">
							<div class="form-item-label col-xs-24 col-md-4">
								<label class="label">분류</label>
							</div>
							<div class="form-item-wrap col-xs-24 col-md-20">
								<div class="row">
									<div class="selectbox col-xs-12 col-md-auto">
										<div class="selectbox-data">
											<strong class="text"></strong>
											<span class="icon icon-dropdown-gray-dark"></span>
										</div>
										<select>
											<option selected="selected">의류</option>
											<option>슈즈</option>
											<option>가방</option>
											<option>악세서리</option>
											<option>모자</option>
											<option>뷰티</option>
											<option>슈즈 프리미엄샵</option>
										</select>
									</div>
									<div class="selectbox col-xs-12 col-md-auto">
										<div class="selectbox-data">
											<strong class="text"></strong>
											<span class="icon icon-dropdown-gray-dark"></span>
										</div>
										<select>
											<option>의류 전체</option>
											<option>반팔티셔츠</option>
											<option>긴팔티셔츠</option>
											<option>후드</option>
											<option>셔츠</option>
											<option>니트</option>
											<option>팬츠</option>
											<option selected="selected">자켓/점퍼</option>
											<option>패딩</option>
											<option>코트</option>
											<option>언더웨어</option>
											<option>우먼즈</option>
											<option>키즈</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="form-item">
							<div class="form-item-label col-xs-24 col-md-4">
								<label class="label">상태</label>
							</div>
							<div class="form-item-wrap col-xs-24 col-md-20">
								<div class="row">
									<div class="checkbox col-xs-12 col-sm-6 col-md-auto">
										<label>
											<input type="checkbox" name="" value="" checked>
											<span class="icon icon-checkbox"></span>
											<span class="checkbox-label">세일</span>
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					-->
				</div>
				<!--section-body//end-->
				<!--<div class="section-foot">
					<button class="button button-primary hidden-xs hidden-sm hidden-md hidden-lg" id="filterClose">
						<span class="icon icon-close"></span>
						<span class="button-label">닫기</span>
					</button>
				</div>-->
				<!--section-foot//end-->
			</div>
			<ul class="catalog ajax-list-search row"><!--상품목록 ajax-->

<li class="catalog-item col-xs-12 col-sm-6 col-md-4 items_0 c1">
	<div class="thumbnail">
		<a href="../goods/1495095716">
			<img data-original="http://pic.styleindex.co.kr/g/s/149/1495095716" class="for-ie8 img-responsive lazy" width="500" height="500">
			<div data-original="http://pic.styleindex.co.kr/g/s/149/1495095716" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/149/1495095716&quot;);" class="lazy">
				<img src="theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
			</div>
			<div class="cabal-group">
				<span class="cabal cabal-sale">
					<span class="cabal-label">-10%</span>
				</span>

				<span class="cabal cabal-new">
					<span class="cabal-label">new</span>
				</span>
			</div>
		</a>
		<div class="addon">
			<div class="button-group">
				<button class="button col-xs-12" target="modal" data-size="lg" data-label="상품 PREVIEW" href="../goods/modalview?goodsno=1495095716">
					<span class="icon icon-expansion-white"></span>
				</button>
				<a href="../goods/sns?goodsno=1495095716" class="button button-dimmed col-xs-12" target="modal" data-size="sm" data-label="SNS공유하기">
					<span class="icon icon-share-white"></span>
				</a>
			</div>
		</div>
	</div>
	<div class="caption">
		<p class="brand">SIRORAGI</p>
		<p class="name">
			<a href="../goods/1495095716">[SIRORAGI] POPDOGGY TRIPLE STANDARD T-SHIRT (MIDNIGHT BLACK)_PPOEURS92PC6</a>
		</p>
		<p class="price">
			<span class="was"><span class="label sr-only">판매가격:</span>29,000<span class="currency">원</span></span>
			<span class="now"><span class="label sr-only">할인가격:</span>26,100<span class="currency">원</span></span>
		</p>
	</div>
</li>

<c:forEach var="goodsList"  items="${goodsList}" varStatus="stat">

<c:url var="viewURL" value="/SIRORAGI/goodsDetail" >
	<c:param name="GOODS_NUMBER" value="${goodsList.GOODS_NUMBER }" />							
</c:url>	

<li class="catalog-item col-xs-12 col-sm-6 col-md-4 items_0 c1">
	<div class="thumbnail">
		<a href="${viewURL}">
			<img data-original="/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}" class="for-ie8 img-responsive lazy" width="500" height="500">
			<div data-original="/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}" style="display: block; background-image: url(&quot;/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}&quot;);" class="lazy">
				<img src="theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
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
		<p class="brand">SIRORAGI</p>
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
	<!--  등록된 상품이 없을때 -->
<c:if test="${fn:length(goodsList) le 0}">
	<tr><td colspan="11" style="text-align:center;">등록된 상품이 없습니다</td></tr>
</c:if> 
           <%--  <c:choose>
                <c:when test="${goodsList.lenth}> 0">
                <%System.out.println("야호4"); %>
                    <c:forEach items="${goodsList}" var="goodsList">
                        <tr>
                            <td>야야야${goodsList.GOODS_NAME}</td>
                            <td class="title">
                                <a href="#this" name="title">${goodsList.GOODS_PRICE }</a>
                                <input type="hidden" id="IDX" value="${goodsList.GOODS_SIMPLE }">
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
<!--                     <tr>
                        <td colspan="4">조회된 결과가 없습니다.</td>
                    </tr> -->
                    <%System.out.println("야호3"); %>
                </c:otherwise>
            </c:choose> --%>



</ul>
		</div>
		<div class="section-foot">
			<button class="button btn-more btn-more-search col-xs-offset-6 col-xs-12 col-md-offset-9 col-md-6" data-mode="search">
				<span class="button-label">더보기</span>
			</button>
		</div>
	</section>


	<!--<section class="storeCatalog search section snaps">
		<div class="section-head">
			<h3>SNAP</h3>
			<span class="border"></span>
		</div>
		<div class="section-body">
			<ul class="catalog ajax-list-snap">
				&lt;!&ndash; ### ajax snap &ndash;&gt;
			</ul>
		</div>
		<div class="section-foot">
			<button class="button btn-more btn-more-snap" data-mode="snap">
				<span class="button-label">더보기</span>
			</button>
			<span class="border"></span>
		</div>
	</section>-->
</div>
</div>
</div>
</div>



</body>
</html>