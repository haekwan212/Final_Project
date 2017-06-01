<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width" />
	<!-- facebook -->
    <meta property="og:url" content="" />
    <meta property="og:title" content="PANCOAT" />
    <meta property="og:description" content="" />
	<meta property="og:image" content="" />
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="PANCOAT" />
    <meta property="og:locale" content="ko_KR" />
    <!-- facebook -->
	<title>SIRORAGI</title>

	<!--
	<link rel="stylesheet" href="/theme/pshp/css/vendor/jquery-ui.css">
	<link rel="stylesheet" href="/theme/pshp/css/vendor/bootstrap.css">
	<link rel="stylesheet" href="/theme/pshp/css/main.min.css">
	<link rel="stylesheet" href="/theme/pshp/css/ui.css">
	-->

	<link rel="stylesheet" href="../theme/pshp/css/vendor/jquery-ui.css">
	<link rel="stylesheet" href="../theme/pshp/css/vendor/bootstrap.css">
	

	<link rel="stylesheet" href="../theme/pshp/css/fonts.css">
	<link rel="shortcut icon" href="/favicon.ico">
	
	<script src="../theme/pshp/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<script src="../theme/pshp/js/vendor/selector.min.js"></script>
	<script src="../theme/pshp/js/vendor/webfont.min.js"></script>
	<script src="../dist/jquery/jquery-1.11.0.min.js"></script>
	<script src="../dist/jquery/jquery-ui.js"></script>
	<script src="../dist/jquery/jquery-migrate-1.2.1.min.js"></script>
	<script src="../dist/jquery/plugin/jquery.cookie.js"></script>

	<!-- font-awesome(icon) -->
	<link href="../dist/font-awesome/css/font-awesome.min.css" rel="stylesheet">

	<!-- owl -->
	<link rel="stylesheet" href="../dist/owl/owl.carousel.css">
	<link rel="stylesheet" href="../dist/owl/owl.theme.default.min.css">
	<script src="../dist/owl/owl.carousel.min.js"></script>
	<script src="../dist/owl/owl.js"></script>

	<link rel="stylesheet" href="../theme/pshp/css/main.min.css">
	<link rel="stylesheet" href="../theme/pshp/css/ui.css">

</head>
<body>
	<div class="viewport"> 
<div class="container">

<div id="page" class="page">
<!--<div align="left"><div style="width:;text-align:left;">-->
<style>
.rankGender-wrap .tab-navs li {
	padding:0;
	border-top: 1px solid gray;
	border-right: 1px solid gray;
	border-bottom: 2px solid #000;
}
.rankGender-wrap .tab-navs li:first-child{
	border-left:1px solid gray;
}
.rankGender-wrap .tab-nav2{
float:left;
/*width:10%;*/
text-align:center;
}
.rankGender-wrap .tab-nav2 a{
	color: #ddd6cd;
    text-decoration: none;
}
.rankGender-wrap .tab-nav2 a, .rankAge-wrap .tab-nav2 a {
    display: block;
    font-weight: bold;
    color: #242424;
    line-height: 2.4615384615;
    font-size: 12px;
    padding: 0 10px;
    margin: 0;
    border: none;
    border-radius: 0;
    background: transparent;
    color: #808080;
}
.rankGender-wrap .tab-nav2.active a, .rankAge-wrap .tab-nav2.active a {
    background-color: #191919;
    color: #fff;
}
.rankGender-wrap .list-dropdown li .brief .title {
    display: block;
    font-weight: bold;
    font-size: 12px;
    margin-top: -2px;
	margin-left: 15px;
	line-height:3em;
	
}

.tab-content .answer img {width:100%;}
.rankGender-wrap .list-dropdown li {
    overflow: inherit;
}

/**** 20160406 ****/
.detail {background:#fff !important;border-top:1px dashed #ccc;}

.tab-content2 > div {display:none;}
.tab-content2 > div.active {display:block;}

.section-body {background:#fff;margin-bottom:10px;}
.search-box {text-align:center; margin:25px 0 50px;}
.search-box input[type=text] {border:3px solid #252c4f; height:35px; width:35%; box-sizing:border-box; padding:5px; outline:none; vertical-align:middle;}
.search-box input[type=text]:focus {border-color:#808080;}
.search-box input[type=submit] {height:35px; background:#252c4f; color:#fff; border:0; padding:0 15px; box-sizing:border-box; vertical-align:middle;}

.tab-content-search {margin-bottom:30px;}
.tab-content-search ul {border-top:1px solid #ccc; border-bottom:1px solid #ccc; }
.tab-content-search ul li .brief {padding:10px 20px; }
.tab-content-search ul li .brief .title {font-weight:bold;}
.list-dropdown li .detail .answer {border:0; padding:0 0 0 15px; line-height:22px; margin:0;}
.list-dropdown li .detail .answer p .icon {top:8px;}

table {
    display: table;
    border-collapse: separate;
    border-spacing: 2px;
    border-color: grey;
}


</style>


<section class="page-category">
	<div class="selectboxWrap">
		<div class="selectbox">
			<div class="selectbox-data">
				<strong class="text">공지사항 </strong>
				<span class="icon icon-dropdown-white"></span>
			</div>
			<select name="category[]" id="cate02">
				<option value="">공지사항</option>
			</select>
		</div>
		<!--<a href="#" class="comment">
			<span class="icon icon-speaker-white"></span>
			<span class="text">배송관련 공지사항 안내 드립니다.</span>
		</a>-->
	</div>
</section>
<section class="page-title section">
	<h2>
		<strong>notice</strong>
	</h2>
</section>

<div class="my-account row">
		<section class="col-xs-24 account-navWrap">
			<nav class="account-nav">
				<ul>
					<li class="col-xs-8 col-sm-4 selected">
						<a href="/SIRORAGI/notice/noticeList">공지사항</a>
					</li>
					<li class="col-xs-8 col-sm-4 ">
						<a href="/node/event">이벤트</a>
					</li>
					<li class="col-xs-8 col-sm-4 ">
						<a href="/SIRORAGI/faq/faqList">FAQ</a>
					</li>
					<li class="col-xs-12 col-sm-4">
						<a href="/service/member_benefit" target="modal" data-size="md" data-label="등급혜택 자세히 보기">회원혜택</a>
					</li>
					<li class="col-xs-12 col-sm-8">
						<a href="/SIRORAGI/login/findForm" target="modal" data-size="md" data-label="아이디/비밀번호 찾기">아이디/비밀번호 찾기</a>
					</li>
				</ul>
			</nav>
		</section>
	</div>

<div class="recode">
Total <b>3</b>, Page <b>1</b> / 1
</div>

<table class="table table-list">
<tbody>
<tr>
	<!-- <th width="20"><input type="checkbox"></th> -->
	<th width="30" class="hidden-sm hidden-xs" style="text-align:center;">번호</th>
	<th width="300" class="hidden-sm hidden-xs" style="text-align:center;">제목</th>
	<th width="60" class="hidden-sm hidden-xs" style="text-align:center;">닉네임</th>
	<th width="80" class="hidden-sm hidden-xs" style="text-align:center;">등록일</th>
	<th width="60" class="hidden-sm hidden-xs" style="text-align:center;">조회수</th>
</tr>
                <c:forEach items="${noticeList }" var="noticeList">
						<c:url var="viewURL" value="noticeDetail" >
							<c:param name="NOTICE_NUMBER" value="${noticeList.NOTICE_NUMBER }" />
						    <c:param name="currentPage" value="${currentPage }" />
						</c:url>
					<tr>
						<td style="text-align:center;">${noticeList.NOTICE_NUMBER }</td>
						<td style="text-align:left;">
							<a href="${viewURL}">${noticeList.NOTICE_TITLE }</a>
						</td>
						<td style="text-align:center;">관리자</td>
						<td style="text-align:center;"><fmt:formatDate value="${noticeList.NOTICE_REGDATE }" pattern="yyyy.MM.dd"/></td>
						<td style="text-align:center;">
							${noticeList.NOTICE_HITCOUNT }
						</td>
					</tr>
					</c:forEach>

				</tbody></table>
<div class="page-navigator-horizon">

	<div class="paging">
			${pagingHtml}
		</div></div>
<form class="form-inline notice-searchForm">
<fieldset>
	<input name="vid" type="hidden" value="notice">
	<div class="col-xs-offset-2 col-sm-offset-6 col-md-offset-8 wrap">
		<div class="col-xs-7 col-sm-4 col-md-3">
			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text">제목 </strong>
					<span class="icon icon-dropdown-gray-dark"></span>
				</div>
				<select name="stype[]" class="form-control">
					<option value="title">제목</option>
					<option value="content">내용</option>
					<option value="name">닉네임</option>
					<option value="mid">아이디</option>
				</select>
			</div>
		</div>
		<div class="menu-wrap">
								<c:if test="${session_member_name == 'admin' }">
									<button type="button" onclick="onWrite()"
										class="btn btn-primary">쓰기</button>
							</c:if>

								<!-- <button type="button" onclick="onList()" class="btn btn-primary">목록</button> -->
							</div>
		<div class="col-xs-10 col-sm-7 col-md-6">
			<input name="sword" type="text" value="" class="xx-control">
		</div>
		
		<button type="submit" class="button button-dimmed col-xs-4 col-sm-3 col-md-3">
			<span class="button-label">검색</span>
		</button>
	</div>
</fieldset>
</form>



<script>
$('.searchOption').val($('.searchOptionVal').val());
var onWrite = function(){
	location.href = 'noticeForm'; 
};

var onList = function(){
	location.href = 'noticeList'; 
};

</script>

</div></div>

<script src="../dist/bootstrap/js/bootstrap.min.js"></script>
<script src="../dist/jquery/plugin/jquery.placeholder.js"></script>
<script src="../dist/js/common.js"></script>
<script src="../dist/js/event.js"></script>
<script src="../theme/pshp/js/event.js"></script>
<script src="../theme/pshp/js/plugins.min.js"></script>
<script src="../theme/pshp/js/main.min.js"></script>
<script src="../theme/pshp/js/vendor/fastclick.min.js"></script>
</body>
</html>