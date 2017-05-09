<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!-- jQuery --> <!-- 이거 없으면 fn 이동안함 1 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>

<script type="text/javascript">
		$(document).ready(function() {
			$("#write").on("click", function(e) { //글쓰기 입력폼 버튼
				e.preventDefault();
				fn_faqForm();
			});

			$("a[name='title']").on("click", function(e) { //제목 이동
				e.preventDefault();
				fn_faqDetail($(this));
			});
		});

		function fn_faqForm() {	//글쓰기 입력폼 이동
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/faqForm' />");
			comSubmit.submit();
		}

		function fn_faqDetail(obj) {	//제목>상세보기 이동
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/faqDetail' />");
			comSubmit.addParam("FAQ_NUMBER", obj.parent().find("#FAQ_NUMBER").val());
			comSubmit.submit();
		}
	</script>
	
<style type="text/css">
a:link, a:visited {text-decoration: none; color: #656565;}

.board_list {width:100%;border-top:2px solid #252525;border-bottom:1px solid #ccc}
.board_list thead th:first-child{background-image:none}
.board_list thead th {border-bottom:1px solid #ccc;padding:12px 0 13px 0;color:#3b3a3a;vertical-align:middle}
.board_list tbody td {border-top:1px solid #ccc;padding:10px 0;text-align:center;vertical-align:middle}
.board_list tbody tr:first-child td {border:none}
.board_list tbody td.title {text-align:left; padding-left:20px}
.board_list tbody td a {display:inline-block}

.board_view {width:50%;border-top:2px solid #252525;border-bottom:1px solid #ccc}
.board_view tbody th {text-align:left;background:#f7f7f7;color:#3b3a3a}
.board_view tbody th.list_tit {font-size:13px;color:#000;letter-spacing:0.1px}
.board_view tbody .no_line_b th, .board_view tbody .no_line_b td {border-bottom:none}
.board_view tbody th, .board_view tbody td {padding:15px 0 16px 16px;border-bottom:1px solid #ccc}
.board_view tbody td.view_text {border-top:1px solid #ccc; border-bottom:1px solid #ccc;padding:45px 18px 45px 18px}
.board_view tbody th.th_file {padding:0 0 0 15px; vertical-align:middle}

.wdp_90 {width:90%}
.btn {border-radius:3px;padding:5px 11px;color:#fff !important; display:inline-block; background-color:#6b9ab8; border:1px solid #56819d;vertical-align:middle}
</style>

</head>

<body>
<form id="commonForm" name="commonForm">	<!-- 이거 없으면 fn 이동안함 2 -->
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

</form>
</body>

</html>