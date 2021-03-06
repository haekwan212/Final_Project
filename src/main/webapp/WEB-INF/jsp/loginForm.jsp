<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <script type="text/javascript">
if('${message}' != ""){
	alert('${message}');
}

</script>
<div class="container">
<section class="page-category container">
	<div class="selectboxWrap">
		<div class="selectbox">
			<div class="selectbox-data">
				<strong class="text">로그인 </strong>
				<span class="icon icon-dropdown-white"></span>
			</div>
			<select name="category[]" id="cate02">
				<option value="">로그인</option>
			</select>
		</div>
		<!--<a href="#" class="comment">
			<span class="icon icon-speaker-white"></span>
			<span class="text">배송관련 공지사항 안내 드립니다.</span>
		</a>-->
	</div>
</section>
<section class="page-title section container">
	<h2>
		<strong>login</strong>
	</h2>
</section>
<div class="container">
	<div class="login-visitor">
		<div class="row">
			<section class="member col-xs-24 col-lg-12 section">
				<div class="box-shadow">
					<div class="section-head left border">
						<h3>회원 로그인</h3>
					</div>
					<div class="section-body">
						<div class="guide col-xs-24">
							<p>SIRORAGI 아이디와 비밀번호를 입력하세요</p>
						</div>
						<!-- guide//end -->
						<div class="item col-xs-24 col-sm-offset-6 col-sm-12 col-lg-offset-4 col-lg-16">
							<form name="loginfrm" action="/SIRORAGI/login" method="post">
								<input type="hidden" name="mode" value="login">
								<input type="hidden" name="rurl" value="http://www.pancoat.com/about/collection">

								<div class="input">
									<div class="id">
										<input type="text" id="ml-id" name="MEMBER_ID" required="" class="xx-control" placeholder="아이디">
									</div>
									<div class="password">
										<input type="password" id="ml-password" name="MEMBER_PASSWORD" required="" class="xx-control" placeholder="비밀번호">
									</div>
								</div>
								<!-- input//end -->
								<!--<div class="action">
									<div class="checkbox security">
										<label>
											<input type="checkbox" name="input-security">
											<span class="icon icon-checkbox"></span>
											<span class="checkbox-label">보안 로그인</span>
										</label>
									</div>
								</div>-->
								<button type="submit" class="button">
									<span class="button-label">로그인</span>
								</button>
								<!-- button//end -->
								<div class="action">
									<p>아이디/비밀번호를 잊으셨나요? <a href="/SIRORAGI/login/findForm" target="modal" data-size="sm" data-label="아이디/비밀번호 찾기">여기를 클릭</a>하여 확인하실 수 있습니다.</p>
								</div>
							</form>
						</div>
						<!-- item//end -->
					</div>
				</div>
			</section>
			<section class="non-member col-xs-24 col-lg-12 section">
				<div class="box-shadow">
					<div class="section-head left border">
						<h3>비회원 주문조회</h3>
					</div>
					<div class="section-body">
						<div class="guide col-xs-24">
							<p>주문시 입력하신 이메일과 핸드폰 번호로 주문내역을 확인하실수 있습니다</p>
						</div>
						<!-- guide//end -->
						<div class="item col-xs-24 col-sm-offset-6 col-sm-12 col-lg-offset-4 col-lg-16">

							<form action="/SIRORAGI/noMemberOrderList" method='post'>
								<div class="input">
									<div class="email">
										<input type="text" id="ml-email" name="BUYER_EMAIL" class="xx-control" placeholder="이메일" required="">
									</div>
									<div class="mobile">
										<input type="text" id="ml-mobile" name="BUYER_NUMBER" class="xx-control" placeholder="핸드폰번호" required="">
									</div>
								</div>
								<!-- input//end -->
								<button type="submit" class="button">
									<span class="button-label">비회원 주문조회</span>
								</button>
								<!-- button//end -->
							</form>
							<div class="action">
								<p>SIRORAGI 고객센터 : <a href="tel:1544-5600">1544-5600</a></p>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<section class="member-signup col-xs-24 section">
			<div class="guide col-xs-24">
				<span class="pancoat"></span>
				<strong class="title">아직 SIRORAGI 회원이 아니신가요?</strong>
				<p>지금 바로 사용가능한 적립금 3,000원 / 구매후기 작성시 최대 1,000원 / 제품 구매시 등급에 따라 최대 10% 할인</p>
			</div>
			<!-- guide//end -->
			<a href="/SIRORAGI/joinStep1" class="button large">
				<span class="button-label">회원 가입 바로가기</span>
			</a>
			<!-- button//end -->

			<div class="tip col-xs-24">
				<div class="rank_info">
					<div class="section-head left">
						<h3>SIRORAGI 등급 안내</h3>
					</div>
					<div class="section-body">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th></th>
										<th>WHITE</th>
										<th>YELLOW</th>
										<th>RED</th>
										<th>SILVER</th>
										<th>GOLD</th>
										<th>PLATINUM</th>
										<th>DIAMOND</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th>조건</th>
										<td>회원가입</td>
										<td>첫구매 시<br>~5만원 미만</td>
										<td>총 구매금액<br> 5만원 이상<br>~10만원 미만</td>
										<td>총 구매금액<br> 10만원 이상<br>~30만원 미만</td>
										<td>총 구매금액<br> 30만원 이상<br>~60만원 미만</td>
										<td>총 구매금액<br> 60만원 이상<br>~100만원 미만</td>
										<td>총 구매금액<br> 100만원 이상</td>
									</tr>
									<tr>
										<th>혜택</th>
										<td>적립금 3,000원</td>
										<td>추가할인 1%<br>추가적립 1%<br>월 정기쿠폰 5%</td>
										<td>추가할인 1%<br>추가적립 2%<br>월 정기쿠폰 6%</td>
										<td>추가할인 2%<br>추가적립 2%<br>월 정기쿠폰 7%</td>
										<td>추가할인 3%<br>추가적립 3%<br>월 정기쿠폰 8%</td>
										<td>추가할인 4%<br>추가적립 4%<br>월 정기쿠폰 9%</td>
										<td>추가할인 5%<br>추가적립 6%<br>월 정기쿠폰 10%</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="section-head left">
						<h3>생일축하 쿠폰</h3>
					</div>
					<div class="section-body">
						<p class="point">SIRORAGI 모든 회원님께 생일 월초 1개월간 사용가능한 10% 할인쿠폰을 발행해드립니다.</p>
						<p>- 단 3만원 이상 구매시 사용 가능하며, 일부 특가제품에 대하여 사용이 제한될 수 있습니다.</p>
					</div>
					<div class="section-head left">
						<h3>후기 적립금</h3>
					</div>
					<div class="section-body">
						<p class="point">상품을 받고 소중한 후기를 남겨주시면, 다음 구매시 사용 가능한 적립금을 드립니다.</p>
						<p>- 일반후기 : 500원 (띄어쓰기 미포함 10글자 이상)</p>
						<p>- 포토후기 : 1,000원 (띄어쓰기 미포함 20글자 이상 + 직접 찍은 사진 업로드)</p>
					</div>
				</div>
			</div>
		</section>
		<!--member-signup//end-->
	</div>
	<!-- member-login//end -->
</div>
</div>
