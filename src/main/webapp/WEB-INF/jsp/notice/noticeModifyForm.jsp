<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<script type="text/javascript">
	function joinValidation(frm) {
		if (frm.NOTICE_TITLE.value == "") {
			alert("제목을 입력해 주세요.");
			return false;
		} else if (frm.NOTICE_CONTENT.value == "") {
			alert("내용을 입력해 주세요.");
			return false;
		}
		alert("수정되었습니다.")
	}
	
	
</script>
</head>

<!-- 메뉴 시작 -->

<div class="row" style="padding-left: 15px; width: 700px;">
	<h1 class="page-header">게시글 수정</h1>
</div>

<div class="row" style="padding-left: 15px; width: 700px;">
	<div class="panel panel-default">
		<div class="panel-heading">공지사항 수정 페이지입니다.</div>
		<div class="panel-body">
			<form:form id="noticeModify" action="noticeModify" method="post" name="joinform"
				onsubmit="return joinValidation(this)">
				
		<%-- <form:form commandName="goodsModel" action="noticeAdminModify" enctype="multipart/form-data" method="post" name="joinform" onsubmit="return validateForm(this)"> --%>	
				
				<input type="hidden" id="NOTICE_NUMBER" name="NOTICE_NUMBER"	value="${map.NOTICE_NUMBER}">

				
				<div class="form-group">
					<label>제목</label> <input type="text" class="form-control"
						id="NOTICE_TITLE" name="NOTICE_TITLE" value="${map.NOTICE_TITLE}"
						style="width: 500px;" />
				</div>
				<div class="form-group">
					<label>내용</label> 
						<input type="text" class="form-control"
						id="NOTICE_CONTENT" name="NOTICE_CONTENT" value="${map.NOTICE_CONTENT}"	style="width: 500px;" /> <br/>
						<img src="/SIRORAGI/file/noticeFile/${map.NOTICE_NUMBER }.jpg"  width="100" height="100"/><br/><br/>
						<input type="file" id="NOTICE_IMAGE1" name="NOTICE_IMAGE1"  style="width:initial;"/>
				</div>
			
				<div class="form-group">
					<label>등록일자</label>
					<fmt:formatDate value="${map.NOTICE_REGDATE}" pattern="YYYY.MM.dd" />
				</div>

				<button type="submit" class="btn btn-success">수정</button>
				<button type="reset" class="btn btn-default">초기화</button>
			</form:form>
		</div>
	</div>
</div>
