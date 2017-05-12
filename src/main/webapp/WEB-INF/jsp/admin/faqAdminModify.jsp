<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<head>
<script type="text/javascript">
function joinValidation(frm){
	if(frm.FAQ_TITLE.value==""){
		alert("제목을 입력해 주세요.");
		return false;
	}
	else if(frm.FAQ_CONTENT.value==""){
		alert("내용을 입력해 주세요.");
		return false;
	}
		alert("수정되었습니다.")
}
</script>
</head>

<!-- 메뉴 시작 -->

<div class="row" style="padding-left:15px;width:700px;">    
	<h1 class="page-header">게시글 수정</h1>
</div>

<div class="row" style="padding-left:15px;width:700px;">
	<div class="panel panel-default">
		<div class="panel-heading" >자주묻는질문 수정 페이지입니다.</div>
			<div class="panel-body">
				<form:form id="faqAdminModify" action="faqAdminModify" method="post" onsubmit="return joinValidation(this)">	
				<input type="hidden" id="FAQ_NUMBER" name="FAQ_NUMBER" value="${map.FAQ_NUMBER}">	
            
                        <div class="form-group">
                            <label>제목</label>
                            <input type="text" class="form-control" id="FAQ_TITLE" name="FAQ_TITLE" value="${map.FAQ_TITLE}" style="width:initial;"/>
                        </div>
                        <div class="form-group">
                            <label>내용</label>
                            <input type="text" class="form-control" id="FAQ_CONTENT" name="FAQ_CONTENT" value="${map.FAQ_CONTENT}" style="width:initial;"/>
                        </div>
                       <%--  <div class="form-group">
                            <label>이미지1</label>
                            <input type="file" class="form-control" id="FAQ_IMAGE1" name="FAQ_IMAGE1" value="${map.FAQ_IMAGE1}" style="width:100px;"/>
                        </div>
                        <div class="form-group">
                            <label>이미지2</label>
                            <input type="file" class="form-control" id="FAQ_IMAGE2" name="FAQ_IMAGE2" value="${map.FAQ_IMAGE2}" style="width:400px;"/>
                        </div> --%>
                         <div class="form-group">
                            <label>등록일자</label>                         
                            <fmt:formatDate value="${map.FAQ_REGDATE}" pattern="YYYY.MM.dd" />                            
                        </div>
             
						<button type="submit" class="btn btn-success">수정</button>
						<button type="reset" class="btn btn-default">초기화</button>					
				</form:form>
			</div>
	</div>
</div>
