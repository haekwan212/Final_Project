<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 



</head>

<body>

<div class="viewport">
<div id="container">
<div id="page" class="page">

<div class="personal-account-info container">
	<section class="page-category container">
		<div class="selectboxWrap">
			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text">FAQ </strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="category[]" id="cate02">
					<option value="">FAQ</option>
				</select>
			</div>
		</div>
	</section>
	<section class="page-title section container">
		<h2>
			<strong>FAQ</strong>
		</h2>
	</section>

<div class="my-account row">
		<section class="col-xs-24 account-navWrap">
			<nav class="account-nav">
				<ul>
					<li class="col-xs-8 col-sm-4 ">
						<a href="/node/notice">공지사항</a>
					</li>
					<li class="col-xs-8 col-sm-4 ">
						<a href="/node/event">이벤트</a>
					</li>
					<li class="col-xs-8 col-sm-4 selected">
						<a href="/SIRORAGI/faq/faq">FAQ</a>
					</li>
					<li class="col-xs-12 col-sm-4">
						<a href="/service/member_benefit" target="modal" data-size="md" data-label="등급혜택 자세히 보기">회원혜택</a>
					</li>
					<li class="col-xs-12 col-sm-8">
						<a href="/member/findid" target="modal" data-size="md" data-label="아이디/비밀번호 찾기">아이디/비밀번호 찾기</a>
					</li>
				</ul>
			</nav>
		</section>
	</div>
	
	<div class="account-home accountCatalog">
	<section class="section box-line">
		<div class="section-body">
			

			<div class="rankGender-wrap">
				<ul class="tab-navs">
					<li role="presentation" data-cate="100" class="tab-nav2 col-xs-12 col-md-2 col-lg-2 active"><a href="#faq-tab1" role="tab" data-toggle="tab">회원안내</a></li>
					<li role="presentation" data-cate="101" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab2" role="tab" data-toggle="tab">배송안내</a></li>
					<li role="presentation" data-cate="102" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab3" role="tab" data-toggle="tab">주문/결제</a></li>
					<li role="presentation" data-cate="103" class="tab-nav2 col-xs-12 col-md-3 col-lg-3"><a href="#faq-tab4" role="tab" data-toggle="tab">주문 취소/변경</a></li>
					<li role="presentation" data-cate="104" class="tab-nav2 col-xs-12 col-md-3 col-lg-3"><a href="#faq-tab5" role="tab" data-toggle="tab">교환/반품</a></li>
					<li role="presentation" data-cate="105" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab6" role="tab" data-toggle="tab">환불</a></li>
					<li role="presentation" data-cate="106" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab7" role="tab" data-toggle="tab">상품</a></li>
					<li role="presentation" data-cate="107" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab8" role="tab" data-toggle="tab">A/S</a></li>
					<li role="presentation" data-cate="108" class="tab-nav2 col-xs-12 col-md-3 col-lg-3"><a href="#faq-tab9" role="tab" data-toggle="tab">거래증빙서류안내</a></li>
					<li role="presentation" data-cate="109" class="tab-nav2 col-xs-12 col-md-3 col-lg-3"><a href="#faq-tab10" role="tab" data-toggle="tab">사이트 이용안내</a></li>
				</ul>

				<div class="tab-content2">
				
				
				
				<!-- 회원안내 카테고리 -->
					<div role="tabpanel" class="tab-pane active" id="faq-tab100">
						<ul class="list-dropdown">
							
							<li>
								<div class="brief">
									<strong class="title">Q. 회원등급 선정 기준 및 혜택은 어떻게 되나요?</strong>
								</div>
								<div class="detail">
									<div class="answer">
										<img src="http://pic.styleindex.co.kr/pshp/editor/201604/ec36dba55b145a31e197edd095321a57.jpg" title="ec36dba55b145a31e197edd095321a57.jpg" style="width:822px;" class="img-responsive><br style=" clear:both;"=""><br>&nbsp;회원 등급 선정 기준 및 혜택은 아래와 같습니다.
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
				<!-- 배송안내 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab101">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. 상품이 배송되는 기간은 얼마나 걸리나요?</strong>
								</div>
								<div class="detail">
									<div class="answer">
										<p><strong>A.</strong><br>■ 국내 배송상품<br>- 일반 상품: 주문 익일~3일 이내 발송 (영업일 기준/ 업체 사정에 따라 지연될 수 있음)<br>- 예약 발송/ 주문 제작 상품: 페이지 내 별도 고지된 일자에 순차 출고</p><br>
<p>■ 해외 배송 상품<br>&nbsp;- 영업일 기준 7~10일 소요 (업체 별 배송 기간 상이/ 통관 및 항공 사정에 따라 편차 있음)</p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
				<!-- 주문/결제 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab102">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. 주문 내역을 어디에서 확인할 수 있나요?</strong>
								</div>
								<div class="detail">
									<div class="answer">
										<p><strong>A. <br></strong>로그인 후<font color="#ff8080"> </font><a href="/mypage/orderlist"><font color="#ff8080">마이페이지▶ 주문 조회/취소</font></a><a href="/mypage/orderlist"><font color="#ff8080"> </font></a></p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
				<!-- 주문 취소 및 변경 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab103">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. 주문 취소는 어떻게 하나요? </strong>
								</div>
								<div class="detail">
									<div class="answer">
										<strong>A.</strong><br>마이페이지에서 직접 환불 신청을 하실 수 있습니다. <br><br>■ 입금완료: &nbsp;<a href="/mypage/orderlist"><font color="#ff8080">마이페이지▶ 주문조회/취소</font> </a>에서&nbsp;환불 신청&nbsp;<br>■ 배송준비중: <font color="#ff8080"><font color="#000000">고객센터나 1:1 문의를 통해</font>&nbsp;</font>환불 신청 (관리자 확인 후 처리됨)<br>&nbsp;-&nbsp;배송준비중 상태일 경우 업체 확인 후 <font color="#2080d0">출고되지 않은 경우에만 환불 처리 진행</font><br>&nbsp;- 업체에서 출고 처리되어 <font color="#2080d0">주문 취소가 불가할&nbsp;경우 고객 동의없이&nbsp;취소 철회됨</font> (안내 문자 발송)<br><br>또는<font color="#000000"> 마이페이지 ▶ 1:1 문의로</font> 연락주시면 확인 후 처리를 도와드리겠습니다. 
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
				<!-- 교환/반품 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab104">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. 교환/반품 신청 방법을 알려주세요.</strong>
								</div>
								<div class="detail">
									<div class="answer">
										<p><strong>A.<br></strong>교환/반품은 상품을 수령하신 후, 7일 이내에 신청이 가능합니다. <br>※ 마이페이지에서 반품 신청이 완료되면, 해당 택배사에 <font color="#2080d0"><strong>자동으로 반품 수거 예약</strong></font>이 되므로 고객님께서 별도로 택배 접수를 하지 않으셔도&nbsp;됩니다.</p><br>
<p>■ 반품/교환 신청 방법<br>&nbsp;1.<font color="#ff8080"> 마이페이지▶ 교환/반품 신청.조회</font> <br>&nbsp;2. 반품/교환 사유와 기타 정보를 정확히 입력 (교환 상품, 수거 신청 여부, 사유, 배송비결제 등)<br>&nbsp;3. 택배기사 방문 상품 수거<br>&nbsp;4. 업체 도착 후 반품 검수 (반품 송장 도착일 기준 약 3영업일 소요)&nbsp;5. 교환 및 환불 처리<br></p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
				<!-- 환불 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab105">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. 결제 수단 별 환불 소요 기간은 어떻게 되나요?</strong>
								</div>
								<div class="detail">
									<div class="answer">
										<p><strong>A.<br></strong>주문 취소 요청 후 마이페이지에서 진행현황이 환불완료로 확인된다면 </p><br>
<p>■ 무통장입금(가상계좌) : 1~2영업일 이내에 요청한 계좌로 환불<br>■ 신용카드 결제 : 약 3~5 영업일 이후 카드사에 승인 취소 확인 <br>■ 휴대폰 결제 : 승인 취소 당일 처리<br>■ 실시간계좌이체 : 약 1~2 영업일 이후 결제한 계좌에 환불금 입금 <br>■ 상품권 결제 시 : 북앤라이프 or 컬쳐랜드 사이트캐쉬로 당일 환원 처리<br>■ 캐시 사용시 : 취소 처리와 동시에 당일 환원 처리</p><br>
<p>※ <font color="#2080d0">초기 결제 수단으로 환불이 진행</font>됩니다. <br>※ 휴대폰 결제 취소는 당월만 취소 가능 (이월 건은 현금 환불)</p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
					
				<!-- 상품 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab106">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. 상품을 받았는데 화면에서 본 것과 색상이 달라요</strong>
								</div>
								<div class="detail">
									<div class="answer">
										<p><strong>A.<br></strong>상품의 색상은 모니터의 해상도나 촬영 시 조명 등에 의해 실 상품과 약간의 차이가 있을 수 있습니다.<br>실제로 상품을 보고 구매하는 것이 아닌 온라인 상의 거래이기 때문에 불가피한 사항이니 이 점은 양지 바랍니다.<br>이런 사유로 반품이나 교환을 할 경우에 배송비는 고객의 부담으로 처리됩니다.</p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
					
				<!-- A/S 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab107">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. 구입한 상품의 A/S는 어디서 받을 수 있나요?</strong>
								</div>
								<div class="detail">
									<div class="answer">
										<strong>A.</strong><br>상품 페이지 상단의 A/S 안내 항목의 연락처로 우선 상담 요청을 하시기 바랍니다.<br>A/S 연락처가 없거나 구매 상품의 상세페이지 확인이 되지 않을 경우 고객센터 또는 <a href="/mypage/mycs"><font color="#ff8080">마이페이지▶ 1:1 문의</font></a> 로 연락주시기 바랍니다. <br><br>※ 해외 구매 대행 상품이나 병행 수입 상품일 경우에는 A/S가 불가능 합니다.
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
					
				<!-- 거래증빙서류안내 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab108">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. 현금영수증은 어떻게 발급받나요?</strong>
								</div>
								<div class="detail">
									<div class="answer">
										<p><strong>A.</strong><br>■ 주문 시 신청<br>결제 창에서 현금영수증 발행에 체크한 후 용도(사업자, 개인)와 발행 수단을 선택하여 결제를 진행하면 됩니다.&nbsp;(개인/소득공제용, 사업자/지출증빙용)</p><br>
<p>■ 주문 후 신청<br>결제 시 현금영수증을 신청하지 못한 경우 구매 후 3일 이내 <a href="/mypage/mycs"><font color="#ff8080">마이페이지▶ 1:1 문의</font></a>또는 고객센터로 연락주시면 신청해&nbsp;드리겠습니다.</p>
									</div>
								</div>
							</li>
						
						</ul>
					</div>
					
				<!-- 사이트 이용안내 카테고리 -->
					<div role="tabpanel" class="tab-pane " id="faq-tab109">
						<ul class="list-dropdown">
							<li>
								<div class="brief">
									<strong class="title">Q. 오류 신고는 어떻게 하나요?</strong>
								</div>
								<div class="detail">
									<div class="answer">
										<strong>A.<br></strong>사용 중인 PC나 모바일 기기의 문제 또는 네트워크 연결, 서버 점검 등의 이유로 일시적인 오류가 발생할 수 있습니다. <br>자체적인 해결이 어렵다면 자세한 사유와 해결 방안을 알아보실 수 있도록&nbsp;고객센터로 문의주신다면 최선을 다해 상담해 드리 겠습니다. <br><font color="#ff8080"><font color="#2080d0">오류 화면을 캡처한 이미지 파일을 준비한 후,</font> 마이페이지▶ 1:1 문의</font> 로 문의 바랍니다.
									</div>
								</div>
							</li>
							
						</ul>
					</div>
				</div>
			</div>
			<!-- guide//end -->
		</div>
		<!-- section-body//end -->
	</section>
	<!-- progress-list//end -->
	</div>
</div>


</div>
</div>
</div>


























<form id="commonForm" name="commonForm">	<!-- 버튼이동 2 -->
	<h2>자주묻는 질문</h2>
	<table class="board_list">
		<colgroup>
			<col width="10%" />
			<col width="*" />
			<col width="15%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">글번호</th>
				<th scope="col">제목</th>
				<th scope="col">조회수</th>
				<th scope="col">작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.FAQ_NUMBER }</td>
							<td class="title"><a href="#this" name="title">${row.FAQ_TITLE }</a>
								<input type="hidden" id="FAQ_NUMBER" value="${row.FAQ_NUMBER }">
							</td>
							<td>${row.FAQ_HITCOUNT }</td>
							<td><fmt:formatDate value="${row.FAQ_REGDATE }" pattern="YY.MM.dd HH:mm" /></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
		<br />
	<a href="#this" class="btn" id="write">글쓰기</a>
					<div class="paging">
						${pagingHtml}
					</div> 

					<div class="row">
						<div style="text-align: center;">
							<div id="dataTables-example_filter" class="dataTables_filter">
								<form action="">
									<select class="form-control" name="searchNum" id="searchNum">
										<option value="0">제목</option>
										<option value="1">내용</option>

									</select> <input class="form-control" type="text" name="isSearch" id="isSearch" /> <span>
										<button type="submit" class="btn btn-default">검색</button>
									</span>
								</form>
							</div>
						</div>
					</div>


</form>
</body>

</html>