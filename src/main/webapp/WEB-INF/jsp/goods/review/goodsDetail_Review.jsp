<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>

<div class="section-head left">
				<h3>구매후기</h3>
			</div>
			<div>
				<!-- ajax_review_list 감싸는 div 삭제 불가 -->
				<div id="ajax_review_list">
					<div class="section-body">
						<ul class="list-dropdown">

							<c:forEach var="goodsReview" items="${goodsReview}"
								varStatus="stat">
								<c:if test="${reviewEndPagingNum >= stat.count}">
							<c:if test="${reviewStartPagingNum < stat.count}">
								<li>
									<div class="brief">
										<%-- <c:if test="${goodsReview.REVIEW_IMAGE ne null }">
									<div class="picture">
										<img src="/SIRORAGI/file/reviewFile/${goodsReview.REVIEW_IMAGE}">
									</div>
									</c:if> --%>
										<div class="caption">
											<strong class="title"><span class="level"> </span>${goodsReview.REVIEW_TITLE }</strong>
											<div class="info">
												<p class="author">${goodsReview.MEMBER_NAME }</p>
												<p class="date">
													/
													<fmt:formatDate value="${goodsReview.REVIEW_REGDATE}"
														pattern="YYYY-MM-dd HH:mm" />
													
												</p>
											</div>
											<div class="rating">
												<span class="ratio"> <span
													style="width: ${goodsReview.REVIEW_GRADE*20}%"> <span
														class="star"></span>
												</span>
												</span>
											</div>
										</div>
									</div>
									<div class="detail">
										<div class="contents">
											<c:if test="${goodsReview.REVIEW_IMAGE ne null }">
												<div class="picture">
													<img
														src="/SIRORAGI/file/reviewFile/${goodsReview.REVIEW_IMAGE}">
												</div>
											</c:if>
											<div class="description">
												<p>${goodsReview.REVIEW_CONTENT }</p>
											</div>
										</div>
									</div>
								</li>
								</c:if>
								</c:if>
							</c:forEach>
						</ul>

						<div class="page-navigator">
							<div class="page-navigator-horizon">
								<a href="javascript:ajaxReviewPaging(1,${reviewEndPagingNum},${reviewStartPagingNum},${reviewNowPage});"
									class="prev col-xs-6 btn-page-prev">prev</a>
								<div class="page-number col-xs-12">
									<a class="active">${reviewNowPage}</a>
								</div>
								<a href="javascript:ajaxReviewPaging(2,${reviewEndPagingNum},${reviewStartPagingNum},${reviewNowPage});"
									class="next col-xs-6 btn-page-next">next</a>
							</div>
						</div>

						<%-- <div class="page-navigator">
							<div class="page-navigator-horizon">
								<a href="javascript:ajaxGo('review',0)"
									class="prev col-xs-6 btn-page-prev">prev</a>
								<div class="page-number col-xs-12"> 
								<a href="javascript:ajaxGo('review',1)" style="font:9pt tahoma">1</a>  
								<a class="active">2</a> </div>
								<a href="javascript:alert('마지막페이지입니다')"
									class="next col-xs-6 btn-page-next">next</a>
							</div>
						</div> --%>

					</div>

				</div>
			</div>

			<div class="section-foot">
				<c:if test="${MEMBER_ID eq null}">
					<a href="#" class="button" data-size="md" data-label="구매 후기 작성"
						onClick="alert('로그인을 해주세요.'); return false;"> <span
						class="button-label">구매 후기 작성</span>
					</a>
				</c:if>
				<c:if test="${MEMBER_ID ne null }">
					<a
						href="/SIRORAGI/review/reviewForm?GOODS_NUMBER=${goodsBasic.GOODS_NUMBER}"
						class="button" target="modal" data-size="md" data-label="구매 후기 작성">
						<span class="button-label">구매 후기 작성</span>
					</a>
				</c:if>
			</div>

</body>
</html>