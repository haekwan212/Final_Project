<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<div class="modal-body">
<div class="modal-status-possessions modal-possessions modal-status-milage">
   <section class="status box-shadow">
      <div class="section-body table-shell-sm">
         <div class="col-sm-24 cell">
            <em>현금처럼 사용 가능한 적립금</em>
            <strong class="point">${sumPoint}원</strong>
         </div>
         <!--
         <div class="col-sm-12 cell">
            <em>2015년 05월 07일 소멸 예정</em>
            <strong>0원</strong>
         </div>
         -->
      </div>
   </section>
   <section class="detail box-shadow">
      <div class="section-head left">
         <h5>상세 내역</h5>
      </div>
      <!-- section-head//end -->
      <div class="section-body">
         <div class="table-responsive">
            <table class="table">
               <thead>
               <tr>
                  <th class="date">발생 일자</th>
                  <th class="subject">내용</th>
                  <th class="give">적립금</th>
                  <th class="rest">잔여적립금</th>
               </tr>
               </thead>
               <c:choose>
                  <c:when test="${myPoint eq null}">
                  <tbody>
                     <tr><td colspan="9" style="text-align:center;">적립 내역이 없습니다.</td></tr>
                  </tbody>
                  </c:when>
                  <c:otherwise>
                  <c:forEach items="${myPoint}" var="point">
                  <tbody>
               <tr>
                  <td class="date">${point.POINT_DATE}</td>
                  <td class="subject">${point.POINT_CONTENT}</td>
                  <td class="give">${point.POINT_POINT}</td>
                  <td><c:set var="TOTALPRICE" value="${TOTALPRICE+point.POINT_POINT }" /></td>
               </tr>
               </tbody>
                  </c:forEach>
                  </c:otherwise>
                  </c:choose>
            </table>
         </div>
      </div>
      <div class="paging">
                  ${pagingHtml}
               </div>
      <div class="page-navigator-horizon">
         <div class="col-xs-24 col-sm-offset-5 col-sm-14">
            <div class="page-navigator-horizon"><div class="page-number"> <a class="active">1</a> </div></div>
         </div>
      </div>
   </section>
</div>

<div class="modal-button">
   <button class="button btn-close">
      <span class="button-label">닫기</span>
   </button>
</div></div>