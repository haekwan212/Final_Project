<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ include file="/WEB-INF/include/include-body.jspf" %>	<!-- 버튼 이동 1 -->

<!-- jQuery -->	 <!-- 버튼이동2 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>

<script type="text/javascript">
function FAQ_CATEGORYChange() {
	var code ="${map.FAQ_CATEGORY}"
	for(var i=0; i<11; i++){
	    if(document.joinform.FAQ_CATEGORY.options[i].value == code){
	        document.joinform.FAQ_CATEGORY.options[i].selected = true;
	        break;
	    }
	}
}
	
	
		var gfv_count = 1;
	
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_faqList();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				e.preventDefault();
				fn_faqWrite();
			});
			
			/* $("#addFile").on("click", function(e){ //파일 추가 버튼
				e.preventDefault();
				fn_addFile();
			});
			
			$("a[name='delete']").on("click", function(e){ //파일 삭제 버튼
				e.preventDefault();
				fn_deleteFile($(this));
			}); */
		});
		
		function fn_faqList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/faqList' />");
			comSubmit.submit();
		}
		
		function fn_faqWrite(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/faq/faqWrite' />");
			comSubmit.submit();
		}
		
		/* function fn_addFile(){
			var str = "<p><input type='file' name='file_"+(gfv_count++)+"'><a href='#this' class='btn' name='delete'>삭제</a></p>";
			$("#fileDiv").append(str);
			$("a[name='delete']").on("click", function(e){ //파일 삭제 버튼
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
				<col width="15%">
				<col width="*"/>
			</colgroup>
			<caption>게시글 작성</caption>
			<tbody>
			<tr>
					<th scope="row">카테고리</th>
					<td>
						<select name="FAQ_CATEGORY" onchange="FAQ_CATEGORYChange();" size=1>
						<OPTION value=''>카테고리</OPTION>
						<OPTION value='회원안내'>회원안내</OPTION>
						<OPTION value='배송안내'>배송안내</OPTION>
						<OPTION value='주문결제'>주문결제</OPTION>
						<OPTION value='주문 취소/변경'>주문 취소/변경</OPTION>
						<OPTION value='교환/반품'>교환/반품</OPTION>
						<OPTION value='환불'>환불</OPTION>
						<OPTION value='상품'>상품</OPTION>
						<OPTION value='A/S'>A/S</OPTION>
						<OPTION value='거래증빙서류안내'>거래증빙서류안내</OPTION>
						<OPTION value='사이트 이용안내'>사이트 이용안내</OPTION>
						 
						</select>
						
					</td>
				</tr>
				<tr>
					<th scope="row">제목</th>
					<td><input type="text" id="FAQ_TITLE" name="FAQ_TITLE" class="wdp_90"></input></td>
				</tr>
				<tr>
					<td colspan="2" class="view_text">
						<textarea rows="20" cols="100" title="FAQ_CONTENT" id="FAQ_CONTENT" name="FAQ_CONTENT"></textarea>
					</td>
				</tr>
			</tbody>
		</table>
		<div id="fileDiv">
			<p> 
				<input type="file" id="FAQ_IMAGE1" name="FAQ_IMAGE1"><br/><br/>
				<!-- <input type="file" id="file" name="FAQ_IMAGE2"> -->
			</p>
		</div>
		<%-- <c:if test='%{#session.member_id == "admin"}'> --%><a href="#this" class="btn" id="write">작성하기</a><%-- </c:if> --%>
		<a href="#this" class="btn" id="list">목록으로</a>
	 </form> 
	
</body>

</html>