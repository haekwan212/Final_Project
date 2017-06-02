<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<div class="container">
	<section class="page-category">
		<div class="selectboxWrap">
			<strong>주문</strong>
		</div>
	</section>

	<section class="step-panels">
		<ol>
			<li class="c01 col-xs-5">
				<div>SHOPPING BAG</div>
			</li>
			<li class="c02 col-xs-24 col-sm-9 selected">
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
<script>

function ajaxExample(){
    // 사용자 ID를 갖고 온다.
    var POINT_POINT = -$("#POINT_POINT").val();
    var MEMBER_NUMBER = "${orderMember.MEMBER_NUMBER}";
     
    // 사용자 ID(문자열)와 체크박스 값들(배열)을 name/value 형태로 담는다.
    var allData = { "POINT_POINT": POINT_POINT, "MEMBER_NUMBER": MEMBER_NUMBER };
     
    $.ajax({
        url:"./order/updatePoint",
        type:'GET',
        data: allData,
        async: false,
        success:function(data){
            alert("완료!");
            window.opener.location.reload();
            self.close();
        },
        error:function(jqXHR, textStatus, errorThrown){
            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
            self.close();
        }
    });
}

	function button1_click() {
	alert("사용되었습니다.");
	
	var frm = document.forms.frmOrder;
	
	MEMBER_NUMBER="${orderMember.MEMBER_NUMBER}";
	// 스크립트에 value값 가지고 오기
	POINT_POINT=document.getElementById("POINT_POINT").value
	location.href="/SIRORAGI/order/updatePoint?MEMBER_NUMBER=" + MEMBER_NUMBER + "&POINT_POINT=-"+ POINT_POINT;
}
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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

	<form method="post" name="frmOrder" action="orderDetail" >
	<c:forEach var="orderForm"  items="${goods}" varStatus="stat">
		<input type="hidden" name="ea[]" value="${orderForm.EA }">
		<input type="hidden" name="kinds[]" value="${orderForm.GOODS_KINDS_NUMBER }">
	</c:forEach>
	<input type="hidden" name="MEMBER_ID" value="${orderMember.MEMBER_ID }">
	<input type="hidden" name="GOODS_NUMBER" value="${GOODS_NUMBER }">

	
	<div class="order-payment row">
		<div class="col-lg-18">
			<section class="input-horizontal list-horizontal section box-shadow">
				<div class="section-head left border">
					<h3>회원/구매자 정보</h3>
				</div>
				<!-- heading-title//end -->
				<ul class="section-body">
					<li>
						<div class="item-label col-lg-3 col-md-4">
							<label for="order-name">
								<strong>주문하시는 분</strong>
							</label>
						</div>
						<div class="col-lg-21 col-md-20">
						<c:choose>
						<c:when test="${guestEmail ne null }">
						<input type="text" id="order-name" name="guestName" value="${guestName }" class="xx-control" required="" alt="주문하시는 분 성명을 입력하세요.">
						</c:when>
						<c:otherwise>
							<input type="text" id="order-name" name="MEMBER_NAME" value="${orderMember.MEMBER_NAME }" class="xx-control" required="" alt="주문하시는 분 성명을 입력하세요.">
						</c:otherwise>
						</c:choose>
						</div>
					</li>
					<li class="cell-phone">
						<div class="item-label col-lg-3 col-md-4">
							<label for="input-cell-phone01">
								<strong>핸드폰</strong>
							</label>
						</div>
						<div class="col-lg-21 col-md-20">
							<div class="input-box">
							<c:choose>
						<c:when test="${guestEmail ne null }">
						<input type="text" id="order-name" name="guestPhone" value="${guestPhone }" class="xx-control" required="" alt="휴대폰번호를 입력하세요." >
						</c:when>
						<c:otherwise>
								<input type="text" id="input-cell-phone01" name="MEMBER_PHONE" value="${orderMember.MEMBER_PHONE }" class="xx-control" required="" alt="휴대폰번호를 입력하세요." maxlength="14">
						</c:otherwise>
						</c:choose>
							</div>
						</div>
					</li>
					<li class="mail">
						<div class="item-label col-lg-3 col-md-4">
							<label for="input-mail">
								<strong>이메일</strong>
							</label>
						</div>
						<div class="col-lg-21 col-md-20">
						<c:choose>
						<c:when test="${guestEmail ne null }">
						<input type="email" id="input-mail" name="guestEmail" value="${guestEmail }" class="xx-control" required="" alt="이메일을 입력하세요.">
						</c:when>
						<c:otherwise>
						<input type="email" id="input-mail" name="MEMBER_EMAIL" value="${orderMember.MEMBER_EMAIL }" class="xx-control" required="" alt="이메일을 입력하세요.">
						</c:otherwise>
						</c:choose>.
						</div>
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
							<input type="text" id="delivery-name" name="RECEIVER_NAME" value="${orderMember.MEMBER_NAME }" class="xx-control" required="" alt="받으시는 분 성명을 입력하세요.">
						</div>
					</li>
					<li class="address">
						<div class="item-label col-lg-3 col-md-4">
							<strong>주소</strong>
						</div>
						<div class="col-lg-21 col-md-20">
							<div class="input-box">
								<input type="text" id="sample6_postcode" name="RECEIVER_ZIPCODE" value="${orderMember.MEMBER_ZIPCODE }" disabled="disabled" class="xx-control" placeholder="우편번호" maxlength="3">
								<span class="button button-dimmed" onclick="sample6_execDaumPostcode()" style="cursor:pointer">주소 검색</span>
							</div>
							<input type="text" id="sample6_address" name="RECEIVER_ADDRESS1" value="${orderMember.MEMBER_ADDRESS1 }" disabled="disabled" class="xx-control" placeholder="주소">
							<input type="text" id="sample6_address2" name="RECEIVER_ADDRESS2" value="${orderMember.MEMBER_ADDRESS2 }" class="xx-control" placeholder="상세주소">
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
								<input type="text" id="delivery-cell-phone01" name="RECEIVER_PHONE" value="${orderMember.MEMBER_PHONE }" class="xx-control" alt="휴대폰번호를 입력하세요." maxlength="14">
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
							<input type="text" id="order-message" name="DELIVERY_MESSAGE" class="xx-control">
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
				<th class="sale">할인 금액</th>
				<th class="delivery">배송비</th>
			</tr>
		</thead>
		<c:forEach var="orderForm"  items="${goods}" varStatus="stat">
		<tbody>
			<tr>
				<td>
				</td>
				<td class="info-img">
					<a href="../goods/1495762828"><img src="/SIRORAGI/file/goodsFile/${orderForm.GOODS_THUMBNAIL}" width="100" height="100" alt=""  onerror="this.src='/SIRORAGI/file/noimg_130.gif'" /></a>
				</td>
				<td class="info-caption">
					<strong class="brand">SIRORAGI</strong>
					
					<em class="name">[SIRORAGI] ${orderForm.GOODS_NAME} ${orderForm.GOODS_COLOR} ${orderForm.GOODS_SIZE}</em>
					
					<div class="option">
						<em>${orderForm.EA } 개</em>
					</div>
				</td>
				<!-- 쿠폰다운로드 부분은 payment페이지에서 삭제 -->
				<td class="coupon">
					<span class="button-label"><fmt:formatNumber value="${orderForm.TOTALPRICE / 100}" type="number" />원</span>
				</td>
				<td class="payment">
					<span><fmt:formatNumber value="${orderForm.TOTALPRICE }" type="number" />원</span>
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
		
		<c:forEach var="orderForm"  items="${goods}" varStatus="stat">
			<c:set var= "sum" value="${sum + orderForm.TOTALPRICE}"/>
		</c:forEach>
		<div class="col-lg-25">
			<section class="input-horizontal list-horizontal section box-shadow">
				<div class="section-head left border">
					<h3>할인 및 적립</h3>
				</div>
				<!-- heading-title//end -->
				<ul class="section-body">
					<li>
						<div class="item-label col-lg-3 col-md-4">
							<label for="order-name">
								<strong>적립 포인트</strong>
							</label>
						</div>
						<div class="col-lg-21 col-md-20">
							<input type="text" id="order-name" name="nameOrder" disabled="disabled"  value="<fmt:formatNumber value="${sum / 100 }" type="number" />원" class="xx-control">
						</div>
					</li>
					<li class="cell-phone">
						<div class="item-label col-lg-3 col-md-4">
							<label for="input-cell-phone01">
								<strong>누적 포인트</strong>
							</label>
						</div>
						<div class="col-lg-21 col-md-20">
							<div class="input-box">
								<input type="text" id="input-cell-phone01" name="mobileOrder[]" disabled="disabled"  value="<fmt:formatNumber value="${orderMember.MEMBER_POINT }" type="number" />원" class="xx-control" required="" alt="휴대폰번호를 입력하세요." maxlength="14">
							</div>
						</div>
					</li>
					<li class="mail">
						<div class="item-label col-lg-3 col-md-4">
							<label for="input-mail">
								<strong>포인트 사용하기</strong>
							</label>
						</div>
						<div class="col-lg-21 col-md-20">
							<input type="text" id="POINT_POINT" name="POINT_POINT"  class="xx-control"  maxlength="3">
								<span class="button button-dimmed" onclick="ajaxExample();" style="cursor:pointer">사용하기</span>
						</div>
					</li>
				</ul>
			</section>
			</div>
</div>
		<div class="col-lg-6">

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
										<em><fmt:formatNumber value="${sum }" type="number" />원</em>
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
								<strong>-<font id="dis_sum">0원</font></strong>
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
										<strong>-<span class="v_coupon">0</span>원</strong>
									</div>
								</div>
							</div>
						</div>
						<div class="total col-sm-8 col-lg-24">
							<div class="sum">
								<em>최종 결제 금액</em>
								<c:choose>
									<c:when test="${sum >= 30000}">
								<strong><fmt:formatNumber value="${sum }" type="number" />원</strong>
								</c:when>
								<c:otherwise>
								<strong><fmt:formatNumber value="${sum + 2500}" type="number" />원</strong>
								</c:otherwise>
								</c:choose>
							</div>
							<div class="detail">
								<p>고객님은 총 <strong id="disPer" class="point">0%</strong> <strong class="point">할인</strong>,<br><strong id="disWon" class="point">0원</strong>을 할인 받았습니다.</p>
							</div>
						</div>
					</div>
					<!-- calculator//end -->
				</div>
			</section>
			<!-- sum-calculator//end -->
			<section class="sum-calculator section">
				<div class="box-shadow">
					<div class="section-head left border">
						<h3>일반결제</h3>
					</div>
					<!--section-head-->
					<div class="section-body calculator">
						<div class="payment-option col-xs-24">
							<div class="radio c02">
								<label>
									<input type="radio" name="settlekind"  checked value="v">
									<span class="icon icon-radio"></span>
									<span class="radio-label">무통장(가상계좌)</span>
								</label>
							</div>
						</div>
						<!-- payment-option//end -->
					</div>
					<!--section-head-->
					<div class="section-body calculator">
						<!-- payment-option//end -->
					</div>
					
				</div>
				<div class="button-group">
					<div class="col-xs-12 col-lg-24">
						<button type="submit" class="button large">
							<span class="button-label">다음 단계</span>
						</button>
					</div>
					<div class="col-xs-12 col-lg-24">
						<a href="goodsDetail?GOODS_NUMBER=${GOODS_NUMBER }" class="button button-dimmed large">
							<span class="button-label">이전 단계</span>
						</a>
					</div>
				</div>
				<!-- button-group//end -->
			</section>
		</div>


	</div>
	<!-- order-payment//end -->

	</form>

	<!-- page-action//end -->
</div>