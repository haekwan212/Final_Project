<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
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
<div class="viewport"> 
<div class="container">

<div id="page" class="page">

<!--<div align="left"><div style="width:;text-align:left;">-->
<style>
.content {padding:10px 0 10px;}
.node-info {list-style:none; margin:0; padding:0;}
.node-info li {display:inline-block; padding-right:15px;}
.view2_user {padding-top:6px;}
.node_view h4 {font-weight:bold;}

@media (max-width: 450px){
	.content img {width: 100%;}
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
					<li class="col-xs-8 col-sm-8 selected">
						<a href="/SIRORAGI/notice/noticeList">공지사항</a>
					</li>
					<li class="col-xs-8 col-sm-8 ">
						<a href="/SIRORAGI//faq/faqList">FAQ</a>
					</li>
					<li class="col-xs-12 col-sm-8">
						<a href="/member/findid" target="modal" data-size="md" data-label="아이디/비밀번호 찾기">아이디/비밀번호 찾기</a>
					</li>
				</ul>
			</nav>
		</section>
	</div>

<div class="node_view board-notice-view section">
	<div class="wrap">
		<div class="section-head">
			<!--
			<h3>공지사항</h3>
			-->
			<strong class="title"><td colspan="3">${map.NOTICE_TITLE }</td></strong>
			<p class="date"><td>${map.NOTICE_REGDATE }</td></p>
		</div>
		<div class="section-body">
			<p class="view2_user">
				관리자
			</p>

			<ul class="list-group">
			</ul>

			<div class="content">
				<td colspan="4">${map.NOTICE_CONTENT }</td>
			</div>
			<div class="thumbnail">
				<c:if test="${map.NOTICE_IMAGE1  != '' || map.NOTICE_IMAGE1 ne null}">
				<img src="/SIRORAGI/file/noticeFile/${map.NOTICE_IMAGE1}"
									width="500" class="img-responsive">
				</c:if>
			</div>


			<!-- <div class="clearfix">
				<div class="pull-left">
					<button type="button" onclick="onWrite()"
										class="btn btn-primary">수정하기</button>
					<a href="../process?mode=delete&amp;vid=notice&amp;nid=4" class="button button-dimmed"><span class="button-label">삭제</span></a>
				</div> -->
				<div class="pull-right">
				</div>
			</div>
		</div>
	</div>
	<div class="section-foot">
		<a href="../notice/noticeList" class="button"><span class="button-label">목록으로</span></a>
	</div>
</div>

<script>
$('.searchOption').val($('.searchOptionVal').val());
	var onWrite = function(){
		location.href = 'noticeModifyForm?NOTICE_NUMBER=${map.NOTICE_NUMBER }'; 
	};	
</script>
<script src="../dist/bootstrap/js/bootstrap.min.js"></script>
<script src="../dist/jquery/plugin/jquery.placeholder.js"></script>
<script src="../dist/js/common.js"></script>
<script src="../dist/js/event.js"></script>
<script src="../theme/pshp/js/event.js"></script>
<script src="../theme/pshp/js/plugins.min.js"></script>
<script src="../theme/pshp/js/main.min.js"></script>
<script src="../theme/pshp/js/vendor/fastclick.min.js"></script>


</div></div>

	</div>