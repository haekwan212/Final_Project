<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
 
 
<link rel="stylesheet" type="text/css" href="<c:url value='/css/ui.css'/>" />
 
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>

<div class="row" style="padding-left:15px;width:700px;">    
	<h1 class="page-header">공지사항</h1>
</div>

<div class="row" style="padding-left:15px;width:700px;">
	<div class="panel panel-default">
		<div class="panel-heading" >공지사항 등록 페이지입니다.</div>
			<div class="panel-body">
<body>
<form id="frm" enctype="multipart/form-data" onsubmit="return joinValidation(this)">
        <table class="notice_view">
            <colgroup>
                <col width="15%">
                <col width="*"/>
            </colgroup>
            <caption>게시글 작성</caption>
            <tbody>
                <tr>
                    <th scope="row">제목</th>
                    <td><input type="text" id="NOTICE_TITLE" name="NOTICE_TITLE" class="wdp_90"></input></td>
                </tr>
                <tr>
                	 <th scope="row">내용</th>
                    <td colspan="2" class="view_text">
                        <textarea rows="20" cols="80" title="내용" id="NOTICE_CONTENT" name="NOTICE_CONTENT"></textarea>
                    </td>
                    <!--  <tr>
                    <td colspan="2" class="view_text">
						<textarea rows="5" cols="90" title="제목" id="NOTICE_TITLE" name="NOTICE_TITLE" placeholder="제목"></textarea>
						<br/><br/>
						<textarea rows="10" cols="90" title="내용" id="NOTICE_CONTENT" name="NOTICE_CONTENT" placeholder="내용"></textarea>
					</td>
                </tr> -->
                </tr>
            </tbody>
        </table>
       
		<input type="file" id="NOTICE_IMAGE1" name="NOTICE_IMAGE1"  style="width:initial;"/>
        <input type="submit" name="업로드" value="작성하기" id="noticeWrite"/>
		<button type="button" onclick="onList()" class="btn btn-primary">목록</button>
    </form>
     <script type="text/javascript">
      
        $(document).ready(function(){
            $("#noticeList").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_noticeList();
            });
             
            $("#noticeWrite").on("click", function(e){ //작성하기 버튼
                e.preventDefault();
                fn_noticeWrite();
            });
        });
        
        function fn_noticeList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/notice/noticeAdminList' />");
            comSubmit.submit();
        }
         
        function fn_noticeWrite(){
            var comSubmit = new ComSubmit("frm");
            comSubmit.setUrl("<c:url value='/notice/noticeWrite' />");
            comSubmit.submit();
        }
        
        $('.searchOption').val($('.searchOptionVal').val());

        var onList = function(){
        	location.href = 'noticeAdminList'; 
        };

    </script>
</body>
</html>