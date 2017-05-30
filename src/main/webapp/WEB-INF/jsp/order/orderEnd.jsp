<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<div class="container">
	<section class="page-category">
		<div class="selectboxWrap">
			<strong>주문완료</strong>
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
			<li class="c03 col-xs-5">
				<div>PAYMENT</div>
			</li>
			<li class="c04 col-xs-24 col-sm-9 selected">
				<div>THANKYOU</div>
			</li>
		</ol>
	</section>
	<!-- step-panels//end -->
	<div class="order-complete row">
		<section class="complete-greeting section">
			<div class="section-body greeting">
				<em>thank you!</em>
				<strong>주문번호 : ${ORDER_CODE }<span class="border"></span></strong>
				<p class="c02">${orderMember.MEMBER_NAME }님의 주문이 정상적으로 완료되었습니다.<br>
					아래 주문내역은 마이팬콧에서 항상 확인 하실 수 있습니다.</p>
			</div>
			<div class="section-foot">
				<div class="button-group">
					<a href="../mypage/orderview?ordno=1496041079191" class="button large">
						<span class="button-label">주문 확인</span>
					</a>
					<a href="/SIRORAGI/main" class="button button-dimmed large">
						<span class="button-label">쇼핑 계속</span>
					</a>
				</div>
			</div>
		</section>
		<section class="list-horizontal section box-shadow">
			<div class="section-head left border">
				<h3>결제 정보</h3>
			</div>
			<!-- heading-title//end -->
			<ul class="section-body">
				<li>
					<div class="item-label col-lg-3 col-md-4">
						<strong>결제방법</strong>
					</div>
					<div class="col-lg-21 col-md-20">
						<em>무통장(가상계좌)</em>
					</div>
				</li>
	
			<li>
				<div class="item-label col-lg-3 col-md-4">
					<strong>입금계좌</strong>
				</div>
				<div class="col-lg-21 col-md-20">
					<em>기업은행 088-102835-01-011 실오라기</em>
				</div>
			</li>
	
				<li>
					<div class="item-label col-lg-3 col-md-4">
						<strong>결제금액</strong>
					</div>
					<div class="text-bold col-lg-21 col-md-20">
						<em><fmt:formatNumber value="${TOTALPRICE }" type="number" />원</em>
					</div>
				</li>
			</ul>
		</section>
		<section class="list-horizontal section box-shadow">
			<div class="section-head left border">
				<h3>회원/구매자 정보</h3>
			</div>
			<!-- heading-title//end -->
			<ul class="section-body">
				<li>
					<div class="item-label col-lg-3 col-md-4">
						<strong>주문하시는분</strong>
					</div>
					<div class="col-lg-21 col-md-20">
						<em>${orderMember.MEMBER_NAME }</em>
					</div>
				</li>
				<li>
					<div class="item-label col-lg-3 col-md-4">
						<strong>핸드폰</strong>
					</div>
					<div class="col-lg-21 col-md-20">
						<em>${orderMember.MEMBER_PHONE }</em>
					</div>
				</li>
				<li>
					<div class="item-label col-lg-3 col-md-4">
						<strong>이메일</strong>
					</div>
					<div class="col-lg-21 col-md-20">
						<em>${orderMember.MEMBER_EMAIL }</em>
					</div>
				</li>
				<li>
					<div class="item-label col-lg-3 col-md-4">
						<strong>품절시 환불 방법</strong>
					</div>
					<div class="col-lg-21 col-md-20">
						<em>주문시 결제방법으로 환불</em>
					</div>
				</li>
			</ul>
		</section>
		<section class="list-horizontal section box-shadow">
			<div class="section-head left border">
				<h3>배송 정보</h3>
			</div>
			<ul class="section-body">
				<li>
					<div class="item-label col-lg-3 col-md-4">
						<strong>받으시는 분</strong>
					</div>
					<div class="col-lg-21 col-md-20">
						<em>${RECEIVER_NAME }</em>
					</div>
				</li>
				<li>
					<div class="item-label col-lg-3 col-md-4">
						<strong>주소</strong>
					</div>
					<div class="col-lg-21 col-md-20">
						<em>(${RECEIVER_ZIPCODE }) ${RECEIVER_ADDRESS1 } ${RECEIVER_ADDRESS2 }</em>
					</div>
				</li>
				<li>
					<div class="item-label col-lg-3 col-md-4">
						<strong>핸드폰</strong>
					</div>
					<div class="col-lg-21 col-md-20">
						<em>${RECEIVER_PHONE }</em>
					</div>
				</li>
				<li>
					<div class="item-label col-lg-3 col-md-4">
						<strong>배송 메세지</strong>
					</div>
					<div class="col-lg-21 col-md-20">
						<em>${DELIVERY_MESSAGE }</em>
					</div>
				</li>
			</ul>
		</section>
	</div>
</div>