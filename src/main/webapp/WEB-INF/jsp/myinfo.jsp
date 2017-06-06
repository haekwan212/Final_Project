<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<div class="account-privacy">
		<form method="post" action="/SIRORAGI/myinfo">
		<input type="hidden" name="MEMBER_ID" value="${myinfo.MEMBER_ID }"/>
		<input type="hidden" name="MEMBER_ZIPCODE" value="${myinfo.MEMBER_ZIPCODE }">
		<input type="hidden" name="MEMBER_ADDRESS1" value="${myinfo.MEMBER_ADDRESS1 }">
		<!-- account-nav//end -->
		<section class="input-horizontal list-horizontal section box-shadow">
			<div class="section-head left border">
				<h3>회원 정보</h3>
			</div>
			<!-- heading-title//end -->
<ul class="section-body">
	<li class="id">
		<div class="item-label col-lg-3 col-md-4">
			<label for="mi">
				<strong>* 아이디</strong>
			</label>
		</div>
		<div class="col-lg-21 col-md-20">
				<b>${sessionScope.MEMBER_ID}</b>
		</div>
	</li>
	<!--
	<li class="nickname">
		<div class="item-label col-lg-2 col-md-4">
			<label for="input-nickname">
				<strong>닉네임</strong>
			</label>
		</div>
		<div class="col-lg-22 col-md-20">
			<input type="text" id="input-nickname" value="" />
			<p class="alert alert-positive"><span class="icon"></span>사용 가능한 닉네임입니다</p>
		</div>
	</li>
	-->
	<li class="password">
		<div class="item-label col-lg-3 col-md-4">
			<label for="input-password">
				<strong>* 비밀번호 변경</strong>
			</label>
		</div>
		<div class="col-lg-21 col-md-20">
			<input type="password" id="input-password" class="xx-control" value="" name="MEMBER_PASSWORD" label="비밀번호">
		</div>
	</li>
	<li class="password check">
		<div class="item-label col-lg-3 col-md-4">
			<label for="input-password-check">
				<strong>* 비밀번호 변경 확인</strong>
			</label>
		</div>
		<div class="col-lg-21 col-md-20">
			<input type="password" id="input-password-check" class="xx-control" value="" name="password_confirm"  label="비밀번호">
		</div>
	</li>
	<li class="name">
		<div class="item-label col-lg-3 col-md-4">
			<label for="input-name">
				<strong>* 이름</strong>
			</label>
		</div>
		<div class="col-lg-21 col-md-20">
			<b>${sessionScope.MEMBER_NAME }</b>
		</div>
	</li>
	<li class="birth input-placeholder">
		<div class="item-label col-lg-3 col-md-4">
			<label for="input-birth01">
				<strong>생년월일</strong>
			</label>
		</div>
		<div class="col-lg-21 col-md-20">
			<div class="input-box">
					<b>${myinfo.MEMBER_BIRTHDAY }</b>
			</div>
		</div>
	</li>
	<li class="cell-phone">
		<div class="item-label col-lg-3 col-md-4">
			<label for="input-cell-phone01">
				<strong>* 핸드폰</strong>
			</label>
		</div>
		<div class="col-lg-21 col-md-20">
			<div class="input-box">
				<input type="text" name="MEMBER_PHONE" id="input-cell-phone01" label="휴대폰" value="${myinfo.MEMBER_PHONE }"  maxlength="11" class="xx-control" required="">
			</div>
			<!--<div class="checkbox c02">-->
				<!--<label>-->
					<!--<input type="checkbox" name="" value="">-->
					<!--<span class="icon icon-checkbox"></span>-->
					<!--<span class="checkbox-label">이벤트, 혜택에 개한 소식 받기</span>-->
				<!--</label>-->
			<!--</div>-->
		</div>
	</li>
	<li class="mail">
		<div class="item-label col-lg-3 col-md-4">
			<label for="input-mail">
				<strong>* 이메일</strong>
			</label>
		</div>
		<div class="col-lg-21 col-md-20">
			<div class="input-box">
				<input type="text" name="MEMBER_EMAIL1" class="xx-control x01" label="이메일"  value="${myinfo.MEMBER_EMAIL1}" size="10" >
				<span>@</span>
				<input type="text" name="MEMBER_EMAIL2" id="email2" class="xx-control x02" label="이메일"  value="${myinfo.MEMBER_EMAIL2}" size="20" >
				<div class="selectbox">
					<div class="selectbox-data">
						<strong class="text">직접입력
						 </strong>
						<span class="icon icon-dropdown-gray-dark"></span>
					</div>
					<select name="auto_email" class="auto_mail">
						<option value="">직접입력
						</option><option value="naver.com">네이버
						</option><option value="daum.net">한메일
						</option><option value="gmail.com">지메일
						</option><option value="nate.com">네이트
						</option><option value="yahoo.co.kr">야후
						</option><option value="chol.com">천리안
						</option><option value="korea.com">코리아닷컴
					</option></select>
				</div>
			</div>
			<!--<div class="checkbox c02">-->
				<!--<label>-->
					<!--<input type="checkbox" name="ismail" value='o' checked>-->
					<!--<span class="icon icon-checkbox"></span>-->
					<!--<span class="checkbox-label">이벤트, 혜택에 개한 소식 받기</span>-->
				<!--</label>-->
			<!--</div>-->
		</div>
	</li>
	<li class="address">
		<div class="item-label col-lg-3 col-md-4">
			<strong>* 주소</strong>
		</div>
		<div class="col-lg-21 col-md-20">
			<div class="input-box">
			<input type="text" id="sample6_postcode" name="MEMBER_ZIPCODE" disabled="disabled" label="우편번호" value="${myinfo.MEMBER_ZIPCODE }" readonly="" maxlength="6" required="">
				<span class="button button-dimmed" onclick="sample6_execDaumPostcode()">주소 찾기</span>
			</div>
			<input type="text" id="sample6_address" class="xx-control" name="MEMBER_ADDRESS1" label="주소" disabled="disabled" value="${myinfo.MEMBER_ADDRESS1}" size="48" readonly="" required="">
			<input type="text" id="sample6_address2" class="xx-control" name="MEMBER_ADDRESS2" value="${myinfo.MEMBER_ADDRESS2}" label="주소" required="">
		</div>
	</li>
<!-- 	<li class="physical input-placeholder">
		<div class="item-label col-lg-3 col-md-4">
			<label for="input-physical01">
				<strong>* 키/몸무게</strong>
			</label>
		</div>
		<div class="col-lg-21 col-md-20">
			<div class="input-box">
				<div class="item">
					<input type="text" id="input-physical01" class="xx-control" name="height" value="" maxlength="3" placeholder="cm" required="">
				</div>
				<div class="item">
					<input type="text" id="input-physical02" class="xx-control" name="weight" value="" maxlength="3" placeholder="kg" required="">
				</div>
			</div>
		</div>
	</li> -->
</ul>
<!--
<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
-->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/postcode/1484723365148/170118.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>

<!--
<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
-->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/postcode/1495012223804/170517.js"></script>
<script>
$(".auto_mail").change(function() {
	$('#email2').val($(this).val());
});

</script>
			<div class="section-foot">
				<button type="submit" class="button col-xs-offset-6 col-xs-12 col-md-offset-9 col-md-6">
					<span class="button-label">확인</span>
				</button>
			</div>
		</section>
		</form>

		<!-- input-horizontal//end -->
		<section class="privacy-guide section box-shadow">
			<div class="section-head left border">
				<h3>도움이 필요하세요?</h3>
			</div>
			<!-- heading-title//end -->
			<div class="section-body guide-list">
				<div>
					<strong>회원을 탈퇴(계정 영구 삭제)하고 싶어요</strong>
					<ul>
						<li>SIRORAGI은 회원님의 의지에 따라 언제든 탈퇴가 가능합니다. 아래 내용을 반드시 숙지 후 탈퇴를 진행해 주시기 바랍니다.</li>
						<li>관리자의 승인 후 탈퇴처리가 완료됩니다.</li>
						<li>회원 탈퇴시 적립금 및 쿠폰, 회원 등급은 모두 삭제되며, 캐시가 남아있는 경우 탈퇴가 승인되지 않을 수 있습니다.</li>
						<li>회원탈퇴 후 일주일간 재가입이 제한되며, 재가입시 사용하던 아이디로는 가입이 불가능합니다.</li>
						<li>고객님의 개인정보는 탈퇴 승인 시점부터 1개월동안 보존되며, 이후 영구 삭제처리됩니다.</li>
						<li><span>위의 내용을 숙지하였으며, 회원탈퇴를 원하실 경우 <a class="withdraw" target="modal" href="../member/withdraw" data-label="회원 탈퇴 신청" data-size="sm">여기를 클릭</a>해주세요</span></li>
					</ul>
				</div>
			</div>
			<!-- guide-list//end -->
		</section>
	</div>
<script>
if(document.form.MEMBER_PASSWORD.val() != document.form.password_confirm.val()){
	alert('비밀번호가 동일하지 않습니다.')
}
$(".account-individual-list tr.brief").click(function(){
	$(this).next().toggle();
});
</script>
	