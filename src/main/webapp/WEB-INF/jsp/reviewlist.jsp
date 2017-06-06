<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<c:choose>
						<c:when test="${list eq null}">
						<tbody>
						</tbody>
						</c:when>
						<c:otherwise>
						<c:forEach items="${list}" var="review">
						<tbody>
							<tr class="brief" id="brief"><!-- 문의가 종료되었을때, end클래스명 붙여줌 -->
								<td class="info-img">
									<a href="/SIRORAGI/goodsDetail?GOODS_NUMBER=${review.GOODS_NUMBER }">
									<img img_layer="/SIRORAGI/file/goodsFile/${review.GOODS_THUMBNAIL}" goodsno="${review.GOODS_NUMBER }" src="/SIRORAGI/file/goodsFile/${review.GOODS_THUMBNAIL}" class="img-responsive"></a>
								</td>
								<td class="info-caption">
									<strong class="brand">SIRORAGI</strong>
									<em class="name">${review.GOODS_NAME}</em>
								</td>
								<td class="subject">
									${review.REVIEW_TITLE}
								</td>
								<td class="grade">
								<c:if test="${review.REVIEW_GRADE == 1 }">
								<font color="#00B0E0" size="5">★</font>
								</c:if>
								<c:if test="${review.REVIEW_GRADE == 2 }">
								<font color="#00B0E0" size="5">★★</font>
								</c:if>
								<c:if test="${review.REVIEW_GRADE == 3 }">
								<font color="#00B0E0" size="5">★★★</font>
								</c:if>
								<c:if test="${review.REVIEW_GRADE == 4 }">
								<font color="#00B0E0" size="5">★★★★</font>
								</c:if>
								<c:if test="${review.REVIEW_GRADE == 5 }">
								<font color="#00B0E0" size="5">★★★★★</font>
								</c:if>
								</td>
								<td class="date-answer">
									${review.REVIEW_REGDATE }
								</td>
								<td class="situation">
									100
								</td>
							</tr>
						<tr class="detail end">
								<td colspan="7">
									<div class="contents">
										<c:if test="${review.REVIEW_IMAGE ne null }">
										<div style="max-width:300px">
										<img src="/SIRORAGI/file/qnaFile/${review.REVIEW_IMAGE}" class="img-responsive">
										</div>
										</c:if>
										<div class="description">
											<p>${review.REVIEW_CONTENT }</p>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
						</c:forEach>
						</c:otherwise>
						</c:choose>
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
	