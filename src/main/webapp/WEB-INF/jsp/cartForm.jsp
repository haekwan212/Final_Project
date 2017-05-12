<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

					<form name="fmCart">
					<input type="hidden" name="mode" value="del">

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
				<th class="coupon">쿠폰</th>
				<th class="payment">상품 금액</th>
				<th class="sale">할인 금액</th>
				<th class="delivery">배송비</th>
				<th class="delete">삭제</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			<td colspan="10" style="padding:30px 0;">
				장바구니에 주문하실 상품을 담아주세요<br>
			</td>
			</tr>
		</tbody>
	</table>
</div>


<!--


<div class="thumbnail-list">
	&lt;!&ndash;&ndash;&gt;
	<div class="text-center" style="padding:100px 0">
	장바구니에 주문하실 상품을 담아주세요
	</div>
	&lt;!&ndash;&ndash;&gt;
</div>
-->
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

					</form>

				</div>
			</div>
		</section>
		<!-- product-thumbnail//end -->
		
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
</div>	<!-- page-action//end -->