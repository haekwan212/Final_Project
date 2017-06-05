<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<div class="container">
	<section class="page-category">
		<div class="selectboxWrap">
			<strong>결제</strong>
			<!--<a href="#" class="comment">
				<span class="icon icon-speaker-white"></span>
				<span class="text">배송관련 공지사항 안내 드립니다.</span>
			</a>-->
		</div>
	</section>
	<section class="step-panels">
		<ol>
			<li class="c01 col-xs-5">
				<div>SHOPPING BAG</div>
			</li>
			<li class="c02 col-xs-5">
				<div>ORDER</div>
			</li>
			<li class="c03 col-xs-24 col-sm-9 selected">
				<div>PAYMENT</div>
			</li>
			<li class="c04 col-xs-5">
				<div>THANKYOU</div>
			</li>
		</ol>
	</section>
	<!-- step-panels//end -->

	<form method="post" name="frm" id="frm" action="orderEnd" >
	<c:forEach var="orderForm"  items="${goods}" varStatus="stat">
		<input type="hidden" name="ea[]" value="${orderForm.EA }">
		<input type="hidden" name="kinds[]" value="${orderForm.GOODS_KINDS_NUMBER }">
		<input type="hidden" name="goods_total[]" value="${orderForm.TOTALPRICE - usePoint }">
		
		<input type="hidden" name="GOODS_NUMBER" value="${orderForm.GOODS_NUMBER }">
	</c:forEach>
	
	<input type="hidden" name="guestPhone" value="${guestPhone }">
	<input type="hidden" name="guestEmail" value="${guestEmail }">
	<input type="hidden" name="guestName" value="${guestName }">
	<input type="hidden" name="usePoint" value="${usePoint}">
	
	<input type="hidden" name="MEMBER_NUMBER" value="${orderMember.MEMBER_NUMBER }">
	<input type="hidden" name="RECEIVER_NAME" value="${RECEIVER_NAME }">
	<input type="hidden" name="RECEIVER_ZIPCODE" value="${RECEIVER_ZIPCODE }">
	<input type="hidden" name="RECEIVER_ADDRESS1" value="${RECEIVER_ADDRESS1 }">
	<input type="hidden" name="RECEIVER_ADDRESS2" value="${RECEIVER_ADDRESS2 }">
	<input type="hidden" name="RECEIVER_PHONE" value="${RECEIVER_PHONE }">
	<input type="hidden" name="DELIVERY_MESSAGE" value="${DELIVERY_MESSAGE } ">
	<input type="hidden" name="GOODS_NUMBER" value="${GOODS_NUMBER }">
	<c:forEach var="orderDetail"  items="${goods}" varStatus="stat">
			<c:set var= "sum" value="${sum + orderDetail.TOTALPRICE}"/>
			<%-- <c:set var= "goodsPrice" value="${orderDetail.GOODS_PRICE}"/>
			<c:set var= "goodsDCPrice" value="${orderDetail.GOODS_DCPRICE}"/> --%>
		</c:forEach>
	<input type="hidden" name="TOTALPRICE" value="${sum }">
	
	<div class="order-payment row">
		<div class="col-lg-18">
			<section class="input-horizontal list-horizontal section box-shadow">
				<div class="section-head left border">
					<h3>회원/구매자 정보</h3>
				</div>
				<!-- section-head//end -->
				<ul class="section-body">
					<li>
						<div class="item-label col-lg-3 col-md-4">
							<label for="order-name">
								<strong>주문하시는 분</strong>
							</label>
						</div>
						<c:choose>
						<c:when test="${guestName ne null }">
						<div class="col-lg-21 col-md-20">
							${guestName }
						</div>
						</c:when>
						<c:otherwise>
						<div class="col-lg-21 col-md-20">
							${orderMember.MEMBER_NAME }
						</div>
						</c:otherwise>
						</c:choose>
					</li>
					<li class="cell-phone">
						<div class="item-label col-lg-3 col-md-4">
							<label for="input-cell-phone01">
								<strong>핸드폰</strong>
							</label>
						</div>
						<div class="col-lg-21 col-md-20">
							<c:choose>
						<c:when test="${guestPhone ne null }">
						<div class="col-lg-21 col-md-20">
							${guestPhone }
						</div>
						</c:when>
						<c:otherwise>
						<div class="col-lg-21 col-md-20">
							${orderMember.MEMBER_PHONE }
						</div>
						</c:otherwise>
						</c:choose>
						</div>
					</li>
					<li class="mail">
						<div class="item-label col-lg-3 col-md-4">
							<label for="input-mail">
								<strong>이메일</strong>
							</label>
						</div>
						<c:choose>
						<c:when test="${guestEmail ne null }">
						<div class="col-lg-21 col-md-20">
							${guestEmail }
						</div>
						</c:when>
						<c:otherwise>
						<div class="col-lg-21 col-md-20">
							${orderMember.MEMBER_EMAIL }
						</div>
						</c:otherwise>
						</c:choose>
					</li>
				</ul>
			</section>
			<!-- input-horizontal//end -->
			<section class="input-horizontal list-horizontal section box-shadow">
				<div class="section-head left border">
					<h3>배송지 정보</h3>
				</div>
				<!-- heading-title//end -->
				<ul class="section-body">
					<li>
						<div class="item-label col-lg-3 col-md-4">
							<label for="delivery-name">
								<strong>받으시는 분</strong>
							</label>
						</div>
						<div class="col-lg-21 col-md-20">
							${RECEIVER_NAME }
						</div>
					</li>
					<li class="address">
						<div class="item-label col-lg-3 col-md-4">
							<strong>주소</strong>
						</div>
						<div class="col-lg-21 col-md-20">
						(${RECEIVER_ZIPCODE }) ${RECEIVER_ADDRESS1 } ${RECEIVER_ADDRESS2 } 
						</div>
					</li>
					<li class="cell-phone">
						<div class="item-label col-lg-3 col-md-4">
							<label for="delivery-cell-phone01">
								<strong>핸드폰</strong>
							</label>
						</div>
						<div class="col-lg-21 col-md-20">
							<div class="input-box">
								${RECEIVER_PHONE }
							</div>
						</div>
					</li>
					<li class="message">
						<div class="item-label col-lg-3 col-md-4">
							<label for="order-message">
								<strong>배송 메세지</strong>
							</label>
						</div>
						<div class="col-lg-21 col-md-20">
							${DELIVERY_MESSAGE }
						</div>
					</li>
				</ul>
			</section>
			<!-- input-horizontal//end -->
			<section class="product-thumbnail section box-shadow">
				<div class="section-head left border">
					<h3>쇼핑백에 담긴 상품</h3>
				</div>
				<!-- heading-title//end -->
				<div class="section-body thumbnail-list">
<style>
	.label1 {display: inline;padding: .2em .6em .3em;font-size: 11px;font-weight: bold;line-height: 1;color: #fff;text-align: center;white-space: nowrap;vertical-align: baseline;border-radius: .25em;}
	.label-danger1 {background-color: #d9534f;}
</style>
<div class="table-responsive order-list">
	<table class="table">
		<thead>
			<tr>
				<th></th>
				
				<th class="info-img">상품 정보</th>
				<th class="info-caption">&nbsp;</th>
				<th class="coupon">적립 포인트</th>
				<th class="payment">상품 금액</th>
				<th class="sale">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
				<th class="delivery">배송비</th>
			</tr>
		</thead>
		<c:forEach var="orderDetail"  items="${goods}" varStatus="stat">
		<c:url var="viewURL" value="/goodsDetail">
				<c:param name="GOODS_NUMBER" value="${orderForm.GOODS_NUMBER }" />
		</c:url>
		<tbody>
			<tr>
				<td>
				</td>
				<td class="info-img">
					<a href="${viewURL}"><img src="/SIRORAGI/file/goodsFile/${orderDetail.GOODS_THUMBNAIL}" width="100" height="100" alt=""  onerror="this.src='/SIRORAGI/file/noimg_130.gif'" /></a>
				</td>
				<td class="info-caption">
					<strong class="brand">SIRORAGI</strong>
					
					<em class="name">[SIRORAGI] ${orderDetail.GOODS_NAME} ${orderDetail.GOODS_COLOR} ${orderDetail.GOODS_SIZE}</em>
					
					<div class="option">
						<em>${orderDetail.EA } 개</em>
					</div>
				</td>
				<!-- 쿠폰다운로드 부분은 payment페이지에서 삭제 -->
				<td class="coupon">
					<span class="button-label"><fmt:formatNumber value="${orderDetail.TOTALPRICE / 100}" type="number" />원</span>
				</td>
				<td class="payment">
					<span><fmt:formatNumber value="${orderDetail.TOTALPRICE }" type="number" />원</span>
				</td>
				<td class="sale">
				</td>
				<td class="delivery">
					<span>2,500원</span>
					<!-- 배송비없을때 <span>무료</span>-->
				</td>
			</tr>
		</tbody>
		</c:forEach>
	</table>
</div>
				</div>
			</section>
			
			<!-- product-thumbnail//end -->
		</div>

		<div class="col-lg-6">
		<!-- order-benefit//end -->
			<section class="sum-calculator section">
				<div class="box-shadow">
					<div class="section-head left border">
						<h3>주문 요약</h3>
					</div>
					<!--section-head-->
					<div class="section-body calculator">
						<div class="price col-sm-8 col-lg-24">
							<div class="sum">
								<em>주문 금액 합계</em>
								<strong><fmt:formatNumber value="${sum }" type="number" />원</strong>
							</div>
							<div class="detail">
								<div class="item col-xs-12">
									<div class="item-label">
										<strong>상품 금액</strong>
									</div>
									<div>
										<em><fmt:formatNumber value="${goodsPrice }" type="number" />원</em>
									</div>
								</div>
								<div class="item col-xs-12">
									<div class="item-label">
										<strong>배송비</strong>
									</div>
									<div>
									<c:choose>
									<c:when test="${sum >= 30000}">
									<em>0원</em>
									</c:when>
										<c:otherwise>
										<em>2,500원</em>
										</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
						<div class="discount col-sm-8 col-lg-24">
							<div class="sum">
								<em>할인 금액 합계</em>
								<strong>-<font id="dis_sum">${usePoint}원</font></strong>
							</div>
							<div class="detail">
								<div class="item div-dcMemer col-xs-12">
									<div class="item-label">
										<strong>적립 포인트</strong>
									</div>
									<div>
										<em><fmt:formatNumber value="${sum / 100 }" type="number" />원</em>
									</div>
								</div>
								<div class="item col-xs-12">
									<div class="item-label">
										<strong>포인트 할인</strong>
									</div>
									<div>
										<!--em>-0원</em-->
										<strong>-<span class="v_coupon">${usePoint}</span>원</strong>
									</div>
								</div>
								<!--
								<div class="item">
									<div class="item-label col-xs-8">
										<strong>쿠폰할인예정액</strong>
									</div>
									<div class="col-xs-16">
										<em>0원</em>
									</div>
								</div>
								-->
							</div>
						</div>
						<div class="total col-sm-8 col-lg-24">
							<div class="sum">
								<em>최종 결제 금액</em>
								<c:choose>
									<c:when test="${sum >= 30000}">
								<strong><fmt:formatNumber value="${sum - usePoint }" type="number" />원</strong>
								</c:when>
								<c:otherwise>
								<strong><fmt:formatNumber value="${sum - usePoint + 2500}" type="number" />원</strong>
								</c:otherwise>
								</c:choose>
							</div>
							<div class="detail">
								<p>고객님은 총 <strong id="disPer" class="point"><fmt:formatNumber value="${100-((sum - usePoint)*100 / sum)}" type="number" /> %</strong> <strong class="point">할인</strong>,<br><strong id="disWon" class="point">${usePoint}원</strong>을 할인 받았습니다.</p>
							</div>
						</div>
					</div>
					<!-- calculator//end -->
				</div>
			</section>
			<!-- sum-calculator//end -->
			<section class="sum-calculator section">
				<div class="section-body calculator box-shadow">
					<div class="agreement">
						<div class="checkbox c01">
							<label>
								<input type="checkbox" id="ck" value="1">
								<span class="icon icon-check-white"></span>
								<span class="radio-label">구매동의</span>
							</label>
						</div>
						<!--<a href="#none" class="button">
							<span class="icon icon-check-white"></span>
							<span class="button-label">구매동의</span>
						</a>-->
						<p>
							주문하실 상품의 상품명, 가격, 배송정보를<br>
							확인하였으며, 구매에 동의하시겠습니까?<br>
							(전자상거래법 제8조 제2항)
						</p>
					</div>
				</div>
				<div class="button-group">
					<div class="col-xs-12 col-lg-24">
						<button type="button" class="button large" onclick="pay_chk();">
							<span class="button-label">결제 하기</span>
						</button>
					</div>					
					<div class="col-xs-12 col-lg-24">
						<a href="order" class="button button-dimmed large">
							<span class="button-label">이전 단계</span>
						</a>
					</div>
				</div>
			</section>
		</div>
	
	<!-- order-payment//end -->

	

	<!-- page-action//end -->
</div></form>
<!-- container-fluid//end -->
<script>
function pay_chk(){
	if($('#ck').is(':checked')){
		document.frm.submit();
	}else{
		alert("구매동의를 선택해 주세요");
	}
}

function kakao_pay_chk(){
	if($('#ck').is(':checked')){
			
			document.frm.submit();
			getTxnId();
			
	}else{
		alert("구매동의를 선택해 주세요");
	}
}

</script>
    

	<div class="page-mask"></div>
</div>