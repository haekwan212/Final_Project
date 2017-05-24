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
				<td>
				<input type="checkbox" name="no[]" value="330662">
				</td>
				<td class="info-img">
					<a href="../goods/1451873935"><img img_layer="http://pic.styleindex.co.kr/g/s/145/1451873935" goodsno="1451873935" src="http://pic.styleindex.co.kr/g/s/145/1451873935" width="167" class="img-responsive"></a>
				</td>
				<td class="info-caption">
					<strong class="brand">팬콧</strong>
					<em class="name">[팬콧샵] POPBOW CREWNECK (A-1/SP) (PATTAYA PINK)_PPOSPCR04PP3</em>
					<div class="option">
						<em>:S / 2개</em>
						<a href="../order/setoption?no=330662" class="button button-dimmed" target="modal" data-size="sm" data-label="선택사항 추가/변경">
							<span class="button-label">옵션변경</span>
						</a>
					</div>
				</td>
				<!-- 쿠폰다운로드 부분은 payment페이지에서 삭제 -->
				<td class="coupon">
					<a href="../goods/dncoupon?no=325" target="process" class="button"><span class="button-label">다운로드</span></a>
				</td>
				<td class="payment">
					<span>49,000원</span>
				</td>
				<td class="sale">
				</td>
				<td class="delivery">
					<span>0원</span>
					<!-- 배송비없을때 <span>무료</span>-->
				</td>
				<td class="delete">
					<a href="?mode=del&amp;no=330662" class="button button-dimmed">
						<span class="button-label">삭제</span>
					</a>
				</td>
			</tr>
			<tr>
				<td>
				<input type="checkbox" name="no[]" value="331847">
				</td>
				<td class="info-img">
					<a href="../goods/1486103800"><img img_layer="http://pic.styleindex.co.kr/g/s/148/1486103800" goodsno="1486103800" src="http://pic.styleindex.co.kr/g/s/148/1486103800" width="167" class="img-responsive"></a>
				</td>
				<td class="info-caption">
					<strong class="brand">팬콧키즈</strong>
					<em class="name">[팬콧샵] POPEYES KIDS POINT LEGGINGS (EP) (MIDNIGHT BLACK)_PKOEPLG30EC6</em>
					<div class="option">
						<em>:3T / 1개</em>
						<em>:7T / 1개</em>
						<a href="../order/setoption?no=331847" class="button button-dimmed" target="modal" data-size="sm" data-label="선택사항 추가/변경">
							<span class="button-label">옵션변경</span>
						</a>
					</div>
				</td>
				<!-- 쿠폰다운로드 부분은 payment페이지에서 삭제 -->
				<td class="coupon">
					<a href="../goods/dncoupon?no=325" target="process" class="button"><span class="button-label">다운로드</span></a>
				</td>
				<td class="payment">
					<span>34,200원</span>
				</td>
				<td class="sale">
				</td>
				<td class="delivery">
					<span>0원</span>
					<!-- 배송비없을때 <span>무료</span>-->
				</td>
				<td class="delete">
					<a href="?mode=del&amp;no=331847" class="button button-dimmed">
						<span class="button-label">삭제</span>
					</a>
				</td>
			</tr>
		</tbody>
	</table>
</div>


<!--


<div class="thumbnail-list">
	&lt;!&ndash;&ndash;&gt;
	<div class="col-xs-12">
		<div class="thumbnail col-sm-8">
			<a href="../goods/1451873935"><img  img_layer='http://pic.styleindex.co.kr/g/s/145/1451873935' goodsno='1451873935' src='http://pic.styleindex.co.kr/g/s/145/1451873935'  width=167 class='img-responsive'></a>
		</div>
		<div class="caption col-sm-16">
			<strong>팬콧</strong>
			<em>[팬콧샵] POPBOW CREWNECK (A-1/SP) (PATTAYA PINK)_PPOSPCR04PP3</em>
			<dl class="price">
				&lt;!&ndash;&ndash;&gt;
				<dt>할인 전 가격</dt>
				<dd class="discount">68,000원</dd>
				&lt;!&ndash;&ndash;&gt;
				<dt>할인 후 가격</dt>
				<dd>24,500원</dd>
			</dl>
			<div class="option">
				&lt;!&ndash;&ndash;&gt;
				<em>:S / 2개</em>
				&lt;!&ndash;&ndash;&gt;
				&lt;!&ndash;&ndash;&gt;
				<a href="../order/setoption?no=330662" class="button button-dimmed" target="modal" data-size="sm" data-label="선택사항 추가/변경">

					<span class="button-label">옵션변경</span>
				</a>
				&lt;!&ndash;&ndash;&gt;
			</div>
			<dl class="price-detail">
				<dt>상품 금액&nbsp;:&nbsp;</dt>
				<dd>49,000원 &nbsp; &nbsp; </dd>
				<dt>할인 금액&nbsp;:&nbsp;</dt>
				<dd>0원</dd><br class="hidden-sm hidden-md hidden-lg" />
				<dt>&nbsp;/&nbsp;배송비&nbsp;:&nbsp;</dt>
				<dd>0원</dd>
			</dl>
			<div style="padding-top:6px">
			&lt;!&ndash;&ndash;&gt;
			<a href="../goods/dncoupon?no=325" target="process">
				<span class="cabal cabal-coupon">
					<span class="cabal-label">COUPON</span>
					<span class="icon icon-download-blue"></span>
				</span>
			</a>
			&lt;!&ndash;&ndash;&gt;
			</div>
		</div>
		&lt;!&ndash;&ndash;&gt;
		<div class="checkbox col-xs-12 col-sm-6 col-md-auto">
			<label>
				<input type="checkbox" name="no[]" value="330662" checked>
				<span class="icon icon-checkbox"></span>
			</label>
		</div>
		&lt;!&ndash;&ndash;&gt;
	</div>
	&lt;!&ndash;&ndash;&gt;
	<div class="col-xs-12">
		<div class="thumbnail col-sm-8">
			<a href="../goods/1486103800"><img  img_layer='http://pic.styleindex.co.kr/g/s/148/1486103800' goodsno='1486103800' src='http://pic.styleindex.co.kr/g/s/148/1486103800'  width=167 class='img-responsive'></a>
		</div>
		<div class="caption col-sm-16">
			<strong>팬콧키즈</strong>
			<em>[팬콧샵] POPEYES KIDS POINT LEGGINGS (EP) (MIDNIGHT BLACK)_PKOEPLG30EC6</em>
			<dl class="price">
				&lt;!&ndash;&ndash;&gt;
				<dt>할인 전 가격</dt>
				<dd class="discount">19,000원</dd>
				&lt;!&ndash;&ndash;&gt;
				<dt>할인 후 가격</dt>
				<dd>17,100원</dd>
			</dl>
			<div class="option">
				&lt;!&ndash;&ndash;&gt;
				<em>:3T / 1개</em>
				&lt;!&ndash;&ndash;&gt;
				<em>:7T / 1개</em>
				&lt;!&ndash;&ndash;&gt;
				&lt;!&ndash;&ndash;&gt;
				<a href="../order/setoption?no=331847" class="button button-dimmed" target="modal" data-size="sm" data-label="선택사항 추가/변경">

					<span class="button-label">옵션변경</span>
				</a>
				&lt;!&ndash;&ndash;&gt;
			</div>
			<dl class="price-detail">
				<dt>상품 금액&nbsp;:&nbsp;</dt>
				<dd>34,200원 &nbsp; &nbsp; </dd>
				<dt>할인 금액&nbsp;:&nbsp;</dt>
				<dd>0원</dd><br class="hidden-sm hidden-md hidden-lg" />
				<dt>&nbsp;/&nbsp;배송비&nbsp;:&nbsp;</dt>
				<dd>0원</dd>
			</dl>
			<div style="padding-top:6px">
			&lt;!&ndash;&ndash;&gt;
			<a href="../goods/dncoupon?no=325" target="process">
				<span class="cabal cabal-coupon">
					<span class="cabal-label">COUPON</span>
					<span class="icon icon-download-blue"></span>
				</span>
			</a>
			&lt;!&ndash;&ndash;&gt;
			</div>
		</div>
		&lt;!&ndash;&ndash;&gt;
		<div class="checkbox col-xs-12 col-sm-6 col-md-auto">
			<label>
				<input type="checkbox" name="no[]" value="331847" checked>
				<span class="icon icon-checkbox"></span>
			</label>
		</div>
		&lt;!&ndash;&ndash;&gt;
	</div>
	&lt;!&ndash;&ndash;&gt;
</div>
-->

<ul class="collapse">
	<li>총 상품금액 <b>83,200원</b></li>
	<li>배송비 <b>0원</b></li>
	<li>결제금액 <b style="color:#cd2b2b">83,200원</b></li>
</ul>


					<div class="button-wrap">
						<a class="button  btn-checked-all">
							<span class="button-label">전체 선택</span>
						</a>
						<a class="button  btn-unchecked-all">
							<span class="button-label">전체 해제</span>
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
							<em>주문 금액 합계</em>
							<strong>83,200원</strong>
						</div>
						<div class="detail">
							<div class="item col-xs-12">
								<div class="item-label">
									<strong>상품 금액</strong>
								</div>
								<div>
									<em>83,200원</em>
								</div>
							</div>
							<div class="item col-xs-12">
								<div class="item-label">
									<strong>배송비</strong>
								</div>
								<div>
									<em>0원</em>
								</div>
							</div>
						</div>
						<!--<span class="icon"></span>-->
					</div>
					<div class="discount col-sm-8 col-lg-24">
						<div class="sum">
							<em>할인 금액 합계</em>
							<strong>-0원</strong>
						</div>
						<div class="detail">
							<div class="item col-xs-12">
								<div class="item-label">
									<strong>회원 할인</strong>
								</div>
								<div>
									<em>-0원</em>
								</div>
							</div>
							<div class="item col-xs-12">
								<div class="item-label">
									<strong>쿠폰할인예정액</strong>
								</div>
								<div>
									<em>-0원</em>
								</div>
							</div>
						</div>
					</div>
					<div class="total col-sm-8 col-lg-24">
						<div class="sum">
							<em>최종 결제 금액</em>
							<strong>83,200원</strong>
						</div>
						<div class="detail">
							<p>카드사 제휴 할인 및 제휴 포인트 사용,<br>무이자 혜택등은 결제 단계에서 적용됩니다.</p>
						</div>
					</div>
				</div>
				<!-- calculator//end -->
			</div>
			<div class="button-group">
				<div class="col-xs-12 col-lg-24">
					<a href="order" class="button large">
						<span class="button-label">다음 단계</span>
					</a>
				</div>
				<div class="col-xs-12 col-lg-24">
					<a href="/main" class="button button-dimmed large">
						<span class="button-label">쇼핑 계속</span>
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