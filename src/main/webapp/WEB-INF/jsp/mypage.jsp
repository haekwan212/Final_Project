<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<section class="page-category container">
	<div class="selectboxWrap">
		<div class="selectbox">
			<div class="selectbox-data">
				<strong class="text">마이팬콧 </strong>
				<span class="icon icon-dropdown-white"></span>
			</div>
			<select name="category[]" id="cate02">
				<option value="">마이팬콧</option>
			</select>
		</div>
		<div class="selectbox">
			<div class="selectbox-data">
				<strong class="text">마이팬콧 홈 </strong>
				<span class="icon icon-dropdown-white"></span>
			</div>
			<select name="category[]" id="cate02">
				<option value="">마이팬콧 홈</option>
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
		<strong>my pancoat</strong>
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
						<a href="../mypage/myinfo" class="button small button-dimmed">
							<span class="button-label">내 정보 수정</span>
						</a>
					</div>
				</div>
				<div class="item point col-xs-8 col-md-6">
					<strong>적립금 : </strong>
					<em>3,000원</em><br>
					<button class="button small" target="modal" data-size="md" data-label="나의 적립금" href="/mypage/p_emoney">
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
					<li class="selected col-sm-3 xx">
						<a href="/SIRORAGI/orderlist">주문조회/취소
							<!-- 글이 있을 경우 exist라는 클래스명 붙임 -->
							<em class="badge badge-point">0</em>
						</a>
					</li>

					<li class="col-sm-3 xx">
						<a href="/SIRORAGI/exchangelist">교환신청/조회<span></span></a>
					</li>
					<li class="col-sm-3 xx m-1">
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
	<div class="account-review">


			<section class="review-list section box-shadow">
				<div class="section-head left border">
					<h3>지난 후기</h3>
				</div>
				<!-- heading-title//end -->
				<div class="section-body">
					<div class="table-responsive">
						<table class="table list-dropdown">
							<thead>
								<tr>
									<th class="info-img">상품 정보</th>
									<th class="info-caption">&nbsp;</th>
									<th class="subject">내용</th>
									<th class="grade">평점</th>
									<th class="purchasing-decision">작성 일자</th>
									<th class="deadline">적립금</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>

				<!-- table-responsive//end -->
				<div class="section-foot account-list-page-navigator">
					<div class="page-navigator-horizon">
						
					</div>
				</div>
				<!-- account-list-page-navigator//end -->
			</section>
		</div>
	</div>
</div>
<script>
$(".account-individual-list tr.brief").click(function(){
	$(this).next().toggle();
});
</script>