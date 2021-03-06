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
				<h3>상품문의</h3>
			</div>
			<div>
				<!-- ajax_review_list 감싸는 div 삭제 불가 -->
				<div id="ajax_qna_list">
					<div class="section-body">
						<ul class="list-dropdown">
							<!-- 반복시작 -->
							<c:forEach var="goodsQna" items="${goodsQna}" varStatus="stat">
							<c:if test="${qnaEndPagingNum >= stat.count}">
							<c:if test="${qnaStartPagingNum < stat.count}">
							
							<li>
								<div class="brief">
								<!-- 질문자 제목 -->
									<strong class="title">${goodsQna.QNA_TITLE}</strong>
									<div class="info">
										<p class="author">${goodsQna.MEMBER_NAME}</p>
										<p class="date">/ ${goodsQna.QNA_REGDATE}</p>
									</div>
								</div>
								<div class="detail">
								<!-- 질문자내용 -->
									<div class="contents">
										<div class="description">
											<p>${goodsQna.QNA_CONTENT}</p>
											<c:if test="${goodsQna.IMAGE1 ne null }">
												<div class="picture">
													<img
														src="/SIRORAGI/file/qnaFile/${goodsQna.IMAGE1}">
												</div>
											</c:if>
											<c:if test="${goodsQna.IMAGE2 ne null }">
												<div class="picture">
													<img
														src="/SIRORAGI/file/qnaFile/${goodsQna.IMAGE2}">
												</div>
											</c:if>
										</div>
									</div>
								<!-- 답변내용 -->
								<c:if test="${goodsQna.QNA_REPCONTENT ne null}">
									<div class="answer">
										<p>${goodsQna.QNA_REPCONTENT}</p>
										<%-- <c:if test="${goodsQna.IMAGE1 ne null }">
												<div class="picture">
													<img
														src="/SIRORAGI/file/qnaFile/${goodsQnaAdmin.IMAGE1}">
												</div>
											</c:if>
											<c:if test="${goodsQnaUser.IMAGE2 ne null }">
												<div class="picture">
													<img
														src="/SIRORAGI/file/qnaFile/${goodsQnaAdmin.IMAGE2}">
												</div>
											</c:if> --%>
										<div class="info">
											<p class="author">admin</p>
											<p class="date">/ ${goodsQna.QNA_REPDATE}</p>
										</div>
									</div> 
								</c:if>
								</div>
							</li>
							</c:if>
							</c:if>
							</c:forEach> 
							<!-- 반복끝 -->
						</ul>

						<div class="page-navigator">
							<div class="page-navigator-horizon">
								<a href="javascript:ajaxQnaPaging(1,${qnaEndPagingNum},${qnaStartPagingNum },${qnaNowPage});" class="prev col-xs-6 btn-page-prev">prev</a>
									
								<div class="page-number col-xs-12">
									<a class="active">${qnaNowPage}</a>
									
								</div>
								<a href="javascript:ajaxQnaPaging(2,${qnaEndPagingNum},${qnaStartPagingNum},${qnaNowPage});" class="next col-xs-6 btn-page-next">next</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="section-foot">
				<a href="/SIRORAGI/qna/modal_qnaForm" class="button" target="modal"
					data-size="md" data-label="상품 문의 작성"> <span
					class="button-label">상품 문의 작성</span>
				</a>
			</div>
			
</body>
</html>