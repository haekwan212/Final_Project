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
					<option value="">자주묻는질문</option>
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
							<input type="hidden" id="FAQ_NUMBER" name="FAQ_NUMBER"	value="${map.FAQ_NUMBER}">
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
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
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
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
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
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
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
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
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
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
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
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
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
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
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
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
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
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
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					
					<div class="pull-left">
					<a href="faqWrite" class="button"><span class="button-label">글쓰기</span></a>
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


</body>

</html>