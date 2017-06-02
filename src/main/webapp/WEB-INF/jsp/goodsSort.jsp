<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
<div class="section-head" >
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
									<c:if test="${sort ==1}">
										<button class="button button-default selected" onclick="javascript:ajaxList(1);">
											<span class="button-label" data-sort="a.sort">인기순</span>
										</button>
									</c:if>
									
									<c:if test="${sort !=1}">
										<button class="button button-default" onclick="javascript:ajaxList(1);">
											<span class="button-label" data-sort="a.sort">인기순</span>
										</button>
									</c:if>
									</li>
									
									<li class="col-md-auto">
									<c:if test="${sort ==2}">
										<button class="button button-default selected" onclick="javascript:ajaxList(2);">
											<span class="button-label" data-sort="goodsno desc">신상품</span>
										</button>
									</c:if>
									<c:if test="${sort !=2}">
										<button class="button button-default" onclick="javascript:ajaxList(2);">
											<span class="button-label" data-sort="goodsno desc">신상품</span>
										</button>									
									</c:if>
									</li>
									
									<li class="col-md-auto">
									<c:if test="${sort ==3}">
										<button class="button button-default selected" onclick="javascript:ajaxList(3);">
											<span class="button-label" data-sort="price">낮은가격</span>
										</button>
									</c:if>
									<c:if test="${sort !=3}">
										<button class="button button-default" onclick="javascript:ajaxList(3);">
											<span class="button-label" data-sort="price">낮은가격</span>
										</button>									
									</c:if>
									</li>
									
									<li class="col-md-auto">
										<c:if test="${sort ==4}">
											<button class="button button-default selected" onclick="javascript:ajaxList(4);">
												<span class="button-label" data-sort="price desc">높은가격</span>
											</button>
										</c:if>
										
										<c:if test="${sort !=4}">
											<button class="button button-default" onclick="javascript:ajaxList(4);">
												<span class="button-label" data-sort="price desc">높은가격</span>
											</button>
										</c:if>
									</li>
										
									<li class="col-md-auto">
										<c:if test="${sort ==5}">
											<button class="button button-default selected" onclick="javascript:ajaxList(5);">
												<span class="button-label" data-sort="salem desc">할인률</span>
											</button>
										</c:if>
										
										<c:if test="${sort !=5}">
											<button class="button button-default" onclick="javascript:ajaxList(5);">
												<span class="button-label" data-sort="salem desc">할인률</span>
											</button>
										</c:if>
									</li>
								</ul>
							</div>
						</div>

						<!--mobile용-->
						<div class="sort mobile form-item col-xs-12 hidden-md hidden-lg">
							<div class="form-item-wrap">
								<div class="selectbox col-xs-24">
									<div class="selectbox-data">
										<strong class="text">인기순 </strong> <span
											class="icon icon-dropdown-gray-dark"></span>
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
					<ul class="catalog ajax-list row">
						<!--상품목록 ajax-->


						<c:forEach var="goodsList" items="${goodsList}" varStatus="stat">

							<c:url var="viewURL" value="/goodsDetail">
								<c:param name="GOODS_NUMBER" value="${goodsList.GOODS_NUMBER }" />
							</c:url>

							<li class="catalog-item col-xs-12 col-sm-6 col-md-4 items_0 c1">
								<div class="thumbnail">
						<a href="${viewURL}"> <img
							data-original="/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}"
							class="for-ie8 img-responsive lazy" width="500" height="500">
							<div
								data-original="/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}"
								style="display: block; background-image: url(&quot;/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}&quot;);"
								class="lazy">
								<img src="/SIRORAGI/theme/pshp/img/blank-square.png"
									class="img-responsive" width="500" height="500">
							</div>
							<div class="cabal-group">
								<!-- 여기다 조건주자  -->
								<c:if test="${goodsList.GOODS_DCPRICE != null}">

									<%-- <c:set value="${goodsList.GOODS_PRICE}" var="PRICE" type="number"/> --%>




									<span class="cabal cabal-sale"> <span
										class="cabal-label">- <fmt:formatNumber
												value="${(goodsList.GOODS_PRICE - goodsList.GOODS_DCPRICE)*100 / goodsList.GOODS_PRICE}"
												type="number" /> %
									</span>
									</span>
								</c:if>

								<c:if test="${nowDate < goodsList.GOODS_NEWDATE}">
									<span class="cabal cabal-new"> 
									<span class="cabal-label">
											new 
									</span>
									</span>
								</c:if>

								<c:if test="${goodsList.AMOUNT < 50}">
									<span class="cabal cabal-hurryup"> 
									<span class="cabal-label"> 
									HURRY UP 
									</span>
									</span>
								</c:if>
							</div>
						</a>
						<div class="addon">
							<div class="button-group">
								<button class="button col-xs-12" target="modal" data-size="lg"
									data-label="상품 PREVIEW"
									href="/SIRORAGI/main/goods?GOODS_NUMBER=${goodsList.GOODS_NUMBER}">
									<span class="icon icon-expansion-white"></span>
								</button>
								<a href="${viewURL}" class="button button-dimmed col-xs-12"
									target="modal" data-size="sm" data-label="SNS공유하기"> <span
									class="icon icon-share-white"></span>
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
											<span class="was"><span class="label sr-only">판매가격:</span>
												<fmt:formatNumber value="${goodsList.GOODS_PRICE}"
													type="number"></fmt:formatNumber><span class="currency">원</span></span>
											<span class="now"><span class="label sr-only">할인가격:</span>
												<fmt:formatNumber value="${goodsList.GOODS_DCPRICE}"
													type="number"></fmt:formatNumber><span class="currency">원</span></span>
										</c:if>
										<c:if test="${goodsList.GOODS_DCPRICE == null}">
											<span class="now"><span class="label sr-only">판매가격:</span>
												<fmt:formatNumber value="${goodsList.GOODS_PRICE}"
													type="number"></fmt:formatNumber><span class="currency">원</span></span>
										</c:if>
			
									</p>
								</div>
							</li>


						</c:forEach>
	<!--  등록된 상품이 없을때
<c:if test="${fn:length(goodsList) le 0}">
	
	<font size="20" >&nbsp;&nbsp;등록된 상품이 없습니다</font>

</c:if> -->



					</ul>
				</div>
</body>
</html>