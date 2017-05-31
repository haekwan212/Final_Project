<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="page-category container">
	<div class="selectboxWrap">
		<div class="selectbox">
			<div class="selectbox-data">
				<strong class="text">마이페이지 </strong>
				<span class="icon icon-dropdown-white"></span>
			</div>
			<select name="category[]" id="cate02">
				<option value="">마이페이지</option>
			</select>
		</div>
		<div class="selectbox">
			<div class="selectbox-data">
				<strong class="text">마이페이지 </strong>
				<span class="icon icon-dropdown-white"></span>
			</div>
			<select name="category[]" id="cate02">
				<option value="">마이페이지</option>
			</select>
		</div>
		<!--
		<a href="#" class="comment">
			<span class="icon icon-speaker-white"></span>
			<span class="text">배송관련 공지사항 안내 드립니다.</span>
		</a>
		-->
	</div>
</section>
<section class="page-title section container">
	<h2>
		<strong>my SIRORAGI</strong>
	</h2>
</section>
<div class="personal-account-info container">
	<div class="my-account row">
		<section class="col-xs-24 my-info">
			<div class="section-body">
				<div class="item profile col-xs-24 col-md-6">
					<div class="photo" style="background-image: url('/data/profile/shake0824.jpg')">
						<img src="/theme/pshp/img/blank-square.png" class="img-responsive">
					</div>
					<div class="info">
						<strong>
						<span class="level">${sessionScope.MEMBER_ID}</span>(${sessionScope.MEMBER_NAME }님)
						</strong>
						<a href="../mypage/profile" target="modal" data-size="sm" class="button small" data-label="프로필 사진수정">
							<span class="button-label">사진 수정</span>
						</a>
						<a href="/SIRORAGI/myinfo" class="button small button-dimmed">
							<span class="button-label">내 정보 수정</span>
						</a>
					</div>
				</div>
				<div class="item point col-xs-8 col-md-6">
					<strong>적립금 : </strong>
					<em>3,000원</em><br>
					<button class="button small" target="modal" data-size="md" data-label="나의 적립금" href="/SIRORAGI/member/point">
						<span class="button-label">자세히 보기</span>
					</button>
					<div></div>
				</div>
				<div class="item cash col-xs-8 col-md-6">
					<strong>캐시 : </strong>
					<em>0원</em><br>
					<button class="button small" target="modal" data-size="md" data-label="팬콧 캐시" href="/mypage/p_icash">
						<span class="button-label">자세히 보기</span>
					</button>
				</div>
				<div class="item coupon col-xs-8 col-md-6">
					<strong>쿠폰 : </strong>
					<em>0장</em><br>
					<button class="button small" target="modal" data-size="md" data-label="내 쿠폰" href="/mypage/p_coupon">
						<span class="button-label">자세히 보기</span>
					</button>
				</div>
			</div>
		</section>
<style>
.account-nav {display:block;}
.account-nav ul li {width:14.285%;}
@media (max-width: 767px){
	.account-nav ul li {width:25%; float:left; border:1px solid #000; margin-right:-1px; margin-bottom:-1px; border-radius:0 !important; padding:5px 0;}
	.account-nav ul li.m-1 {margin-left:-1px;}
	.account-nav ul li.xx {width:33.333%;}
}

</style>
		<section class="col-xs-24 account-navWrap">
			<nav class="account-nav">
				<ul>
					<!--
					<li class=" col-sm-3">
						<a href="../mypage/">마이팬콧 홈</a>
					</li>
					-->
					<li class=" col-sm-3 xx">
						<a href="/SIRORAGI/orderlist">주문조회/취소
							<!-- 글이 있을 경우 exist라는 클래스명 붙임 -->
							<em class="badge badge-point">0</em>
						</a>
					</li>

					<li class=" col-sm-3 xx">
						<a href="/SIRORAGI/exchangelist">교환신청/조회<span></span></a>
					</li>
					<li class="selected col-sm-3 xx m-1">
						<a href="/SIRORAGI/returnlist">반품신청/조회<span></span></a>
					</li>

					<li class=" col-sm-3">
						<a href="/SIRORAGI/review">구매 후기
							<!-- 글이 있을 경우 exist라는 클래스명 붙임 -->
							<em class="badge badge-point">0</em>
						</a>
					</li>
					<li class=" col-sm-3">
						<a href="/SIRORAGI/qna">상품 문의 <em class="badge">0</em></a>
					</li>
					<li class=" col-sm-3">
						<a href="/SIRORAGI/mycs">1:1 문의 <em class="badge">0</em></a>
					</li>
					<li class=" col-sm-3">
						<a href="/SIRORAGI/myinfo">내 정보 수정</a>
					</li>
					<!--<li class="">
						<a href="../mypage/myinfo">내 정보</a>
						&lt;!&ndash; 로그인후 내정보 클릭시 뜨는 패스워드 모달창 trigger
						<a href="#" data-toggle="modal" data-target="#popup-privacy-confirm">내 정보<span></span></a>
						&ndash;&gt;
					</li>-->
				</ul>
			</nav>
			<!--
			<nav class="account-nav-mobile">
				<div class="selectbox">
					<div class="selectbox-data">
						<strong class="text"></strong>
						<span class="icon icon-dropdown-gray-dark"></span>
					</div>
					<select>
						<option>마이팬콧 홈</option>
						<option>주문 조회/취소</option>
						<option>구매 후기</option>
						<option>나의 상품문의</option>
						<option>1:1 문의</option>
					</select>
				</div>
			</nav>
			-->
		</section>
	</div>
	<div id="account-contentsWrap"class="account-contentsWrap">
	<div class="account-order-list">

			<section class="order-list section box-shadow">
				<div class="section-head left border">
					<h3>주문 내역</h3>
				</div>
				<!-- section-head//end -->
				<div class="section-body">

					<div class="table-responsive">
						<table class="table" id="tb01">
							<thead>
								<tr>
									<th></th>
									<th class="info-img">상품 정보</th>
									<th class="info-caption">&nbsp;</th>
									<th class="date">주문 일자</th>
									<th class="number">주문 번호</th>
									<th class="payment">결제 금액/방법</th>
									<th class="delivery">배송 정보</th>
									<th class="situation">진행 현황</th>
								</tr>
							</thead>
							<tbody>
								<!--  -->
							</tbody>
						</table>
					</div>

					<!-- table-responsive//end -->
				</div>
				<!-- section-body//end -->

				<div class="section-foot">
					<div class="page-navigator-horizon">
						
					</div>
				</div>
				<div class="section-foot">
					<a class="button" href="#" id="exBtn">
						<span class="button-label">반품신청</span>
					</a>
				</div>
				<!-- account-list-page-navigator//end -->
			</section>
			<!-- order-list//end -->
			<section class="order-list-guide section box-shadow">
				<div class="section-head left border">
					<h3>도움이 필요하세요?</h3>
				</div>
				<!-- section-head//end -->
				<div class="section-body guide-list">
					<div class="guide-arlet">
						<strong>[반품이용안내]</strong>
						<ul>
							<li><b class="red">1. 마이페이지▶ 반품신청/조회▶ 상품 선택 후 [반품신청]</b> click (동일업체 상품별 신청 가능)</li>
							<li>2. 반품 정보 입력 후 <b class="red">배송비 결제</b> 진행</li>
							<li>3. 회수된 상품을 확인 후 환불 진행 (수거 서비스 신청 시 택배기사 2~3일 이내 방문)</li>
						</ul>
						<div class="row">
							<div class="col-sm-12 col-md-11"><img src="http://pic.styleindex.co.kr/skin/nztr/img/returnlist_01.jpg" class="img-responsive"></div>
							<div class="col-sm-12 col-md-11"><img src="http://pic.styleindex.co.kr/skin/nztr/img/returnlist_02.jpg" class="img-responsive"></div>
						</div>
					</div>
					<div class="guide-situation">
						<ul>
							<li>배송 완료일로부터 <b class="blue">7일 이내 신청, 14일 이내 도착</b> 시 처리 가능합니다.</li>
							<li>반품, 교환 시 업체 별 배송비는 5,000원입니다.<br>(도서, 산간 지역은 추가 배송비가 발생될 수 있습니다.)</li>
							<li>배송비는 반품/교환 신청 시 안내에 따라 결제해 주시기 바랍니다.<br><b class="red">반품 박스 내 배송비를 동봉하여 분실된 경우에는 쇼핑몰에서 책임지지 않습니다.</b></li>
							<li>신발이나 시계 등 정품 박스가 있는 상품의 경우, 박스가 훼손되면 교환/반품이 불가합니다.</li>
							<li>반품/교환 신청 3영업일 이후에도 회수되지 않을 경우 고객센터로 연락주세요.<br>전담 택배를 통해 신속하게 회수하도록 하겠습니다.</li>
						</ul>
					</div>
				</div>
				<!-- guide-list//end -->
				<div class="section-foot">
					<a class="button col-xs-offset-6 col-xs-12 col-md-offset-9 col-md-6" href="/mypage/selfpay">
						<span class="button-label">부분결제 바로가기</span>
					</a>
				</div>
				<!-- action//end -->

			</section>
		</div>
	</div>
</div>
<script>
$(".account-individual-list tr.brief").click(function(){
	$(this).next().toggle();
});
</script>