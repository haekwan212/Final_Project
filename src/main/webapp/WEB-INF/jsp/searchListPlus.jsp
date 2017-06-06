<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>

<div class="section-head">
			<h3 id="search-product">PRODUCT <!-- - 125개의 상품이 있습니다.--></h3>
			<span class="border"></span>
		</div>
		<!-- title//end -->
		<div class="section-body">
			<div class="hashFilter">
				<div class="section-body">
				</div>

			</div>
			<ul class="catalog ajax-list-search row"><!--상품목록 ajax-->


<c:forEach var="goodsList"  items="${goodsList}" varStatus="stat">
<c:if test="${stat.count <= pagingNum}">
<c:url var="viewURL" value="/goodsDetail" >
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
				<button class="button col-xs-12" target="modal" data-size="lg" data-label="상품 PREVIEW" href="/SIRORAGI/main/goods?GOODS_NUMBER=${goodsList.GOODS_NUMBER}">
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
		</p>
	</div>
</li>

</c:if>
</c:forEach>
	<!--  등록된 상품이 없을때 -->
<c:if test="${fn:length(goodsList) le 0}">
	<tr><td colspan="11" style="text-align:center;">&nbsp;&nbsp;&nbsp;등록된 상품이 없습니다</td></tr>
</c:if> 
         


</ul>
		</div>
		<div class="section-foot">
			<button class="button btn-more btn-more-search col-xs-offset-6 col-xs-12 col-md-offset-9 col-md-6" data-mode="search" onclick="javascript:ajaxList(${pagingNum});">
				<span class="button-label">더보기</span>
			</button>
		</div>

</body>
</html>