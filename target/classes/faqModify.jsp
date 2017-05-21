<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ include file="/WEB-INF/include/include-body.jspf" %>	<!-- 버튼 이동 1 -->

<!-- jQuery --> <!-- 버튼이동2 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>

<script type="text/javascript">
		var gfv_count = '${fn:length(list)+1}';
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_faqList();
			});
			
			$("#update").on("click", function(e){ //수정하기 버튼
				e.preventDefault();
				fn_faqModify();
			});
			
			$("#delete").on("click", function(e){ //삭제하기 버튼
				e.preventDefault();
				fn_faqDelete();
			});
			
			/* $("#addFile").on("click", function(e){ //파일 추가 버튼
				e.preventDefault();
				fn_addFile();
			});
			
			$("a[name^='delete']").on("click", function(e){ //삭제 버튼
				e.preventDefault();
				fn_deleteFile($(this));
			}); */
		});
		
		function fn_faqList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/faqList' />");
			comSubmit.submit();
		}
		
		function fn_faqModify(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/faq/faqModify' />");
			comSubmit.submit();
		}
		
		function fn_faqDelete(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/faqDelete' />");
			comSubmit.addParam("FAQ_NUMBER", $("#FAQ_NUMBER").val());
			comSubmit.submit();
			
		}
		
	/* 	function fn_addFile(){
			var str = "<p>" +
					"<input type='file' id='file_"+(gfv_count)+"' name='file_"+(gfv_count)+"'>"+
					"<a href='#this' class='btn' id='delete_"+(gfv_count)+"' name='delete_"+(gfv_count)+"'>삭제</a>" +
				"</p>";
			$("#fileDiv").append(str);
			$("#delete_"+(gfv_count++)).on("click", function(e){ //삭제 버튼
				e.preventDefault();
				fn_deleteFile($(this));
			});
		}
		
		function fn_deleteFile(obj){
			obj.parent().remove();
		} */
	</script>
</head>
<body>

	<form id="frm" name="frm" enctype="multipart/form-data">	<!-- 버튼이동 3 -->
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
					<td>
						${map.FAQ_NUMBER }
						<input type="hidden" id="FAQ_NUMBER" name="FAQ_NUMBER" value="${map.FAQ_NUMBER }">
					</td>
					<th scope="row">카테고리</th>
					<td>${map.FAQ_CATEGORY }</td>
					<th scope="row">조회수</th>
					<td>${map.FAQ_HITCOUNT }</td>
				</tr>
				<tr>
					<th scope="row">작성시간</th>
					<td><fmt:formatDate value="${map.FAQ_REGDATE }" pattern="YY.MM.dd HH:mm" /></td>
				</tr>
				<tr>
					<th scope="row">제목</th>
					<td colspan="3">
						<input type="text" id="FAQ_TITLE" name="FAQ_TITLE" class="wdp_90" value="${map.FAQ_TITLE }"/>
					</td>
				</tr>
				<tr>
					<td colspan="4" class="view_text">
						<textarea rows="20" cols="100" title="FAQ_CONTENT" id="FAQ_CONTENT" name="FAQ_CONTENT">${map.FAQ_CONTENT }</textarea>
					</td>
				</tr>
				<%-- <tr>
					<th scope="row">첨부파일</th>
					<td colspan="3">
						<div id="fileDiv">				
							<c:forEach var="row" items="${list }" varStatus="var">
								<p>
									<input type="hidden" id="FAQ_NUMBER" name="FAQ_NUMBER_${var.FAQ_IMAGE1 }" value="${row.FAQ_NUMBER }">
									<a href="#this" id="name_${var.index }" name="name_${var.index }">${row.ORIGINAL_FILE_NAME }</a>
									<input type="file" id="file_${var.index }" name="file_${var.index }"> 
								</p>
							</c:forEach>
						</div>
					</td>
				</tr> --%>
			</tbody>
		</table>
	</form>
	
	<!-- <a href="#this" class="btn" id="addFile">파일 추가</a> -->
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">수정하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a>
	
	
</body>
</html>