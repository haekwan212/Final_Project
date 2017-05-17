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
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_faqList();
			});
			
			$("#update").on("click", function(e){ //수정하기 버튼
				e.preventDefault();
				fn_faqModify();
			});
			
			
			/* $("a[name='file']").on("click", function(e){ //파일 이름
				e.preventDefault();
				fn_downloadFile($(this));
			}); */
		});
		
		function fn_faqList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/faqList' />");
			comSubmit.submit();
		}
		
		function fn_faqModify(){
			var FAQ_NUMBER = "${map.FAQ_NUMBER}";
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/faqModifyForm' />");
			comSubmit.addParam("FAQ_NUMBER", FAQ_NUMBER);
			comSubmit.submit();
		}
		
		/* function fn_downloadFile(obj){
			var idx = obj.parent().find("#IDX").val();
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/common/downloadFile.do' />");
			comSubmit.addParam("IDX", idx);
			comSubmit.submit();
		} */
	</script>
</head>


<body>
<form id="commonForm" name="commonForm">	<!-- 이거 없으면 fn 이동안함 2 -->
	<table class="board_view">
		<colgroup>
			<col width="15%"/>
			<col width="35%"/>
			<col width="15%"/>
			<col width="35%"/>
		</colgroup>
		<caption>게시글 상세</caption>
		<tbody>
			<tr>
				<th scope="row">글 번호</th>
				<td>${map.FAQ_NUMBER }</td>
				<th scope="row">조회수</th>
				<td>${map.FAQ_HITCOUNT }</td>
			</tr>
			<tr>
				<th scope="row">작성시간</th>
				<td><fmt:formatDate value="${map.FAQ_REGDATE }" pattern="YY.MM.dd HH:mm" /></td>
			</tr>
			<tr>
				<th scope="row">제목</th>
				<td colspan="3">${map.FAQ_TITLE }</td>
			</tr>
			
			
			<tr> <!-- 글내용(이미지) -->
				<td colspan="4">${map.FAQ_CONTENT }<br/>
				<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1}" />
				
				
				</td>
				
			</tr>
			
		</tbody>
	</table>
	<br/>
	
	
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">수정하기</a>
	
	</form>
</body>

</html>