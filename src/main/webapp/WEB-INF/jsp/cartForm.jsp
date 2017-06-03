<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<c:set var="TOTALPRICE" value="0" />
<c:set var="TOTALDCPRICE" value="0" />

<div class="viewport">
	<div class="container">
		<section class="page-category">
			<div class="selectboxWrap">
				<strong>쇼핑백</strong>
				<!--<a href="#" class="comment">
				<span class="icon icon-speaker-white"></span>
				<span class="text">배송관련 공지사항 안내 드립니다.</span>
			</a>-->
			</div>
		</section>

		<section class="step-panels">
			<ol>
				<li class="c01 col-xs-24 col-sm-9 selected">
					<div>SHOPPING BAG</div>
				</li>
				<li class="c02 col-xs-5">
					<div>ORDER</div>
				</li>
				<li class="c03 col-xs-5">
					<div>PAYMENT</div>
				</li>
				<li class="c04 col-xs-5">
					<div>THANKYOU</div>
				</li>
			</ol>
		</section>
		<!-- step-panels//end -->
		<div class="order-shoppingBag row">
			<section class="product-thumbnail section col-lg-18">
				<div class="box-shadow">
					<div class="section-head left border">
						<h3>쇼핑백에 담긴 상품</h3>
					</div>
					<div class="section-body">

						<form name="fmCart" action="/SIRORAGI/cartDelete">
							<input type="hidden" name="mode" value="del">

							<style>
.label1 {
	display: inline;
	padding: .2em .6em .3em;
	font-size: 11px;
	font-weight: bold;
	line-height: 1;
	color: #fff;
	text-align: center;
	white-space: nowrap;
	vertical-align: baseline;
	border-radius: .25em;
}

.label-danger1 {
	background-color: #d9534f;
}
</style>
							<div class="table-responsive order-list">
								<table class="table">
									<thead>
										<tr>
											<th></th>
											<th class="info-img">상품 정보</th>
											<th class="info-caption">&nbsp;</th>
											
											<th class="payment">상품 금액</th>
											<th class="sale">할인 금액</th>
											<th class="delivery">배송비</th>
											<th class="delete">삭제</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${!empty cartList }">
										<c:forEach var="cartList" items="${cartList}" varStatus="stat">
										
										<tr>
											<td>
											<c:if test="${!empty sessionScope.MEMBER_ID}">
											<input type="checkbox" name="GOODS_KINDS_NUMBER" value="${cartList.GOODS_KINDS_NUMBER}">
											<input type="checkbox" name="CART_NUMBER" value="${cartList.CART_NUMBER}" style="display:none" >
											</c:if>
											<c:if test="${empty sessionScope.MEMBER_ID}">
											<input type="checkbox" name="GOODS_KINDS_NUMBER" value="${cartList.GOODS_KINDS_NUMBER}">
											<input type="checkbox" name="CART_NUMBER" value="${cartList.CART_NUMBER}" style="display:none" >
											</c:if>
											</td>
											<td class="info-img"><a href="/SIRORAGI/goodsDetail?GOODS_NUMBER=${cartList.GOODS_NUMBER }"><img
													img_layer="/SIRORAGI/file/goodsFile/${cartList.GOODS_THUMBNAIL}"
													goodsno="${cartList.GOODS_NUMBER }"
													src="/SIRORAGI/file/goodsFile/${cartList.GOODS_THUMBNAIL}"
													width="167" class="img-responsive"></a></td>
											<td class="info-caption"><strong class="brand">SIRORAGI</strong>
												<em class="name">${cartList.GOODS_NAME}/${cartList.GOODS_KINDS_NUMBER}</em>
												<div class="option">
													<em>색상:${cartList.GOODS_COLOR} / 사이즈:${cartList.GOODS_SIZE} / ${cartList.CART_AMOUNT}개</em> <!-- <em>사이즈:XS / 1개</em> -->
													<c:choose>
													<c:when test="${!empty sessionScope.MEMBER_ID}">
													<a
														href="cart/cartOptionForm?CART_NUMBER=${cartList.CART_NUMBER }&CART_AMOUNT=${cartList.CART_AMOUNT}"
														class="button button-dimmed" target="modal" data-size="sm"
														data-label="선택사항 추가/변경"> <span class="button-label">수량변경</span>
													</a>
													</c:when>
													<c:otherwise>
													<a
														href="cart/cartOptionForm?GOODS_KINDS_NUMBER=${cartList.GOODS_KINDS_NUMBER }&CART_AMOUNT=${cartList.CART_AMOUNT}"
														class="button button-dimmed" target="modal" data-size="sm"
														data-label="선택사항 추가/변경"> <span class="button-label">옵션변경</span>
													</a>
													</c:otherwise>
													</c:choose>
													
												</div></td>
											<!-- 쿠폰다운로드 부분은 payment페이지에서  -->
											
											<c:if test="${cartList.GOODS_DCPRICE eq null}">
												<td class="payment"><span>${cartList.GOODS_PRICE }원</span></td>
												<c:set var="TOTALPRICE" value="${TOTALPRICE+cartList.GOODS_PRICE }" />
												
											</c:if>
											<c:if test="${cartList.GOODS_DCPRICE ne null}">
												<td class="payment"><span> <del>${cartList.GOODS_PRICE }원</del>
												<br/>${cartList.GOODS_DCPRICE }원
												<c:set var="TOTALPRICE" value="${TOTALPRICE+cartList.GOODS_PRICE }" />
												<c:set var="TOTALDCPRICE" value="${TOTALDCPRICE+cartList.GOODS_PRICE-cartList.GOODS_DCPRICE }" />
												</span></td>
											</c:if>
											<td class="sale">
											<c:if test="${cartList.GOODS_DCPRICE ne null}">
											${cartList.GOODS_PRICE-cartList.GOODS_DCPRICE}원</c:if></td>
											<td class="delivery"><span>0원</span> <!-- 배송비없을때 <span>무료</span>-->
											</td>
											<td class="delete">
											<c:if test="${!empty sessionScope.MEMBER_ID}">
											<a href="/SIRORAGI/cartDelete?GOODS_KINDS_NUMBER=${cartList.GOODS_KINDS_NUMBER }"
												class="button button-dimmed" onClick='return confirm("정말로 장바구니를 삭제하시겠습니까?");'> <span class="button-label">삭제</span>
											</a>
											</c:if>
											<c:if test="${empty sessionScope.MEMBER_ID}">
											<a href="/SIRORAGI/cartDelete?GOODS_KINDS_NUMBER=${cartList.GOODS_KINDS_NUMBER }"
												class="button button-dimmed"> <span class="button-label">삭제</span>
											</a>
											</c:if>
											</td>
										</tr>
										
										</c:forEach>
										</c:if>
										
										
										<c:set var="doneLoop" value="false"/>
										<c:set var="index" value="1" /> 
										
										<%-- <c:if test="${!empty sessionScope.cartList}">
											<c:forEach var="cartSession" items="${cartList}" varStatus="stat">
										
										<tr>
											<td><input type="checkbox" name="no[]" value="${cartList.CART_NUMBER}">
											</td>
											<td class="info-img"><a href="/SIRORAGI/goodsDetail?GOODS_NUMBER=${cartList.GOODS_NUMBER }"><img
													img_layer="/SIRORAGI/file/goodsFile/${cartList.GOODS_THUMBNAIL}"
													goodsno="${cartList.GOODS_NUMBER }"
													src="/SIRORAGI/file/goodsFile/${cartList.GOODS_THUMBNAIL}"
													width="167" class="img-responsive"></a></td>
											<td class="info-caption"><strong class="brand">팬콧</strong>
												<em class="name">${cartList.GOODS_NAME}</em>
												<div class="option">
													<em>색상:${cartList.GOODS_COLOR} / 사이즈:${cartList.GOODS_SIZE} / ${cartList.CART_AMOUNT}개</em> <!-- <em>사이즈:XS / 1개</em> --> 
													<a
														href="cart/cartOptionForm?kindsNo=${cartList.GOODS_KINDS_NUMBER }"
														class="button button-dimmed" target="modal" data-size="sm"
														data-label="선택사항 추가/변경"> <span class="button-label">옵션변경</span>
													</a>
												</div></td>
											<!-- 쿠폰다운로드 부분은 payment페이지에서 삭제 -->
											
											<c:if test="${cartList.GOODS_DCPRICE eq null}">
												<td class="payment"><span>${cartList.GOODS_PRICE }원</span></td>
												<c:set var="TOTALPRICE" value="${TOTALPRICE+cartList.GOODS_PRICE }" />
												
											</c:if>
											<c:if test="${cartList.GOODS_DCPRICE ne null}">
												<td class="payment"><span> <del>${cartList.GOODS_PRICE }원</del>
												<br/>${cartList.GOODS_DCPRICE }원
												<c:set var="TOTALPRICE" value="${TOTALPRICE+cartList.GOODS_PRICE }" />
												<c:set var="TOTALDCPRICE" value="${TOTALDCPRICE+cartList.GOODS_PRICE-cartList.GOODS_DCPRICE }" />
												</span></td>
											</c:if>
											<td class="sale">
											<c:if test="${cartList.GOODS_DCPRICE ne null}">
											${cartList.GOODS_PRICE-cartList.GOODS_DCPRICE}원</c:if></td>
											<td class="delivery"><span>0원</span> <!-- 배송비없을때 <span>무료</span>-->
											</td>
											<td class="delete"><a href="?mode=del&amp;no=${cartList.CART_NUMBER }"
												class="button button-dimmed"> <span class="button-label">삭제</span>
											</a></td>
										</tr>
										
										</c:forEach>
										</c:if> --%>
										
										
										
										<c:if test="${empty cartList }">
											<c:if test="${empty sessionScope.CartSession}">
												<tr>
													<td colspan="10" style="padding:30px 0;">
														장바구니에 주문하실 상품을 담아주세요<br>
													</td>
												</tr>
											</c:if>
										</c:if>	
										
									</tbody>
									
								</table>
							</div>

							

						<c:if test="${!empty cartList}">
						
							<div class="button-wrap">
								<a class="button  btn-checked-all"> <span
									class="button-label">전체 선택</span>
								</a> <a class="button  btn-unchecked-all"> <span
									class="button-label">전체 해제</span>
								</a>
								<button class="button ">
									<span class="button-label">선택 삭제</span>
								</button>
								<!--
						<button class="button" onclick="location.href='cart?mode=reset'">
							<span class="button-label btn-clear-all">장바구니 비우기</span>
						</button>
						-->
							</div>
							
						</c:if>

					<c:if test="${empty cartList }">
					<c:if test="${empty sessionScope.cartKinds0}">
						<div class="button-wrap">
						<a class="button disabled btn-checked-all">
							<span class="button-label">전체 선택</span>
						</a>
						<a class="button disabled btn-unchecked-all">
							<span class="button-label">전체 해제</span>
						</a>
						<button class="button disabled">
							<span class="button-label">선택 삭제</span>
						</button>
						<!--
						<button class="button" onclick="location.href='cart?mode=reset'">
							<span class="button-label btn-clear-all">장바구니 비우기</span>
						</button>
						-->
					</div>
					</c:if>
					</c:if>




						</form>
						
		

					</div>
				</div>
			</section>
			<!-- product-thumbnail//end -->

			<section class="sum-calculator section col-lg-6">
				<div class="box-shadow">
					<div class="section-head left border">
						<h3>주문 요약</h3>
					</div>
					<!-- heading-title//end -->
					<div class="section-body calculator">
						<div class="price col-sm-8 col-lg-24">
							<div class="sum">
								<em>주문 금액 합계</em> <strong><fmt:formatNumber value="${TOTALPRICE}" type="number"/>원</strong>
							</div>
							<div class="detail">
								<div class="item col-xs-12">
									<div class="item-label">
										<strong>상품 금액</strong>
									</div>
									<div>
										<em><fmt:formatNumber value="${TOTALPRICE}" type="number"/>원</em>
									</div>
								</div>
								<div class="item col-xs-12">
									<div class="item-label">
										<strong>배송비</strong>
									</div>
									<div>
										<em><c:if test="${TOTALPRICE>=30000 }">무료
											<c:set var="DELIVERY" value="0"/></c:if>
											<c:if test="${TOTALPRICE<30000 }">2,500원
											<c:set var="DELIVERY" value="2500"/></c:if>
										</em>
									</div>
								</div>
							</div>
							<!--<span class="icon"></span>-->
						</div>
						<div class="discount col-sm-8 col-lg-24">
							<div class="sum">
								<em>할인 금액 합계</em> <strong>-<fmt:formatNumber value="${TOTALDCPRICE }" type="number"/>원</strong>
							</div>
							
						</div>
						<div class="total col-sm-8 col-lg-24">
							<div class="sum">
								<em>최종 결제 금액</em> <strong><fmt:formatNumber value="${TOTALPRICE-TOTALDCPRICE }" type="number"/>원</strong>
							</div>
							<div class="detail">
								<p>
									카드사 제휴 할인 및 제휴 포인트 사용,<br>무이자 혜택등은 결제 단계에서 적용됩니다.
								</p>
							</div>
						</div>
					</div>
					<!-- calculator//end -->
				</div>
				<div class="button-group">
					<div class="col-xs-12 col-lg-24">
						<a href="#" onclick="cartBuy();" class="button large"> <span
							class="button-label">다음 단계</span>
						</a>
					</div>
					<div class="col-xs-12 col-lg-24">
						<a href="/SIRORAGI/main" class="button button-dimmed large"> <span
							class="button-label">쇼핑 계속</span>
						</a>
					</div>
				</div>
			</section>
			<!-- sum-calculator//end -->
			<section class="storeCatalog section collapse">
				<div class="section-head">
					<h3>장바구니 상품과 함께하면 좋은 상품</h3>
				</div>
				<!-- title//end -->
				<div class="section-body">
					<ul class="catalog">
						<!--  -->
						1
						<!--  -->
						1
						<!--  -->
						1
						<!--  -->
						1
						<!--  -->
						1
						<!--  -->
						1
						<!--  -->
					</ul>
				</div>
			</section>
		</div>
		<!-- order-shoppingBag//end -->

		<!-- page-action//end -->
	</div>
</div>

		<script>
function cartBuy(){
		
		var fm = document.fmCart;
		fm.mode.value = "cart";
		fm.target = "_self";
		fm.action = "/SIRORAGI/order";
		//if (mode=="order") fm.action = "../order";
		fm.submit();
	}
</script>
<script>
$(".btn-checked-all").click(function(){
	$(".order-shoppingBag input[name='GOODS_KINDS_NUMBER']").not(":checked").trigger("click");
});

$(".btn-unchecked-all").click(function(){
	$(".order-shoppingBag input[name='GOODS_KINDS_NUMBER']:checked").trigger("click");
});

$("form[name=fmCart]").submit(function(){
	if (!$(".order-shoppingBag input[name='GOODS_KINDS_NUMBER']").is(":checked")){
		alert("삭제하실 상품을 선택해주세요");
		return false;
	}
	return confirm("정말로 장바구니를 삭제하시겠습니까?");	
});

</script>