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
    color: gray;
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

</style>

<div class="viewport">		
	<div id="container">
		<div id="page" class="page">
<div class="personal-account-info container">
	<section class="page-category container">
		<div class="selectboxWrap">
			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text">FAQ </strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="category[]" id="cate02">
					<option value="">���ֹ�������</option>
				</select>
			</div>
		</div>
	</section>
	
	
	<section class="page-title section container">
		<h2>
			<strong>FAQ</strong>
		</h2>
	</section>

<div class="my-account row">
		<section class="col-xs-24 account-navWrap">
			<nav class="account-nav">
				<ul>
					<li class="col-xs-8 col-sm-4 ">
						<a href="/node/notice">��������</a>
					</li>
					<li class="col-xs-8 col-sm-4 ">
						<a href="/node/event">�̺�Ʈ</a>
					</li>
					<li class="col-xs-8 col-sm-4 selected">
						<a href="/SIRORAGI/faq/faq">FAQ</a>
					</li>
					<li class="col-xs-12 col-sm-4">
						<a href="/service/member_benefit" target="modal" data-size="md" data-label="������� �ڼ��� ����">ȸ������</a>
					</li>
					<li class="col-xs-12 col-sm-8">
						<a href="/member/findid" target="modal" data-size="md" data-label="���̵�/��й�ȣ ã��">���̵�/��й�ȣ ã��</a>
					</li>
				</ul>
			</nav>
		</section>
	</div>
	
	
	
	<div class="account-home accountCatalog">
	<section class="section box-line">
		<div class="section-body">
			<!-- �˻� -->
			<div class="search-box">
				<form>
				<input type="text" name="isSearch" id="isSearch" value="" placeholder="FAQ�� �˻��غ�����">
				<input type="submit" value="�˻�">
				</form>
			</div>

			<!-- /�˻� -->

			<div class="rankGender-wrap">
				<ul class="tab-navs">
				
					
				
					<li role="presentation" data-cate="100" class="tab-nav2 col-xs-12 col-md-2 col-lg-2 active"><a href="" role="tab" data-toggle="tab">ȸ���ȳ�</a></li>
					<li role="presentation" data-cate="101" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab2" role="tab" data-toggle="tab">��۾ȳ�</a></li>
					<li role="presentation" data-cate="102" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab3" role="tab" data-toggle="tab">�ֹ�/����</a></li>
					<li role="presentation" data-cate="103" class="tab-nav2 col-xs-12 col-md-3 col-lg-3"><a href="#faq-tab4" role="tab" data-toggle="tab">�ֹ� ���/����</a></li>
					<li role="presentation" data-cate="104" class="tab-nav2 col-xs-12 col-md-3 col-lg-3"><a href="#faq-tab5" role="tab" data-toggle="tab">��ȯ/��ǰ</a></li>
					<li role="presentation" data-cate="105" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab6" role="tab" data-toggle="tab">ȯ��</a></li>
					<li role="presentation" data-cate="106" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab7" role="tab" data-toggle="tab">��ǰ</a></li>
					<li role="presentation" data-cate="107" class="tab-nav2 col-xs-12 col-md-2 col-lg-2"><a href="#faq-tab8" role="tab" data-toggle="tab">A/S</a></li>
					<li role="presentation" data-cate="108" class="tab-nav2 col-xs-12 col-md-3 col-lg-3"><a href="#faq-tab9" role="tab" data-toggle="tab">�ŷ����������ȳ�</a></li>
					<li role="presentation" data-cate="109" class="tab-nav2 col-xs-12 col-md-3 col-lg-3"><a href="#faq-tab10" role="tab" data-toggle="tab">����Ʈ �̿�ȳ�</a></li>
					
					
				</ul>

				<div class="tab-content2">
				
				
				
				<!-- ȸ���ȳ� ī�װ� -->
					<div role="tabpanel" class="tab-pane active" id="faq-tab100">
						<ul class="list-dropdown">
						<c:forEach var="map"  items="${list1}" varStatus="stat"> 
							
							<li>
							
							<input type="hidden" id="FAQ_NUMBER" name="FAQ_NUMBER"	value="${map.FAQ_NUMBER }">
							
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							 </c:forEach>
						</ul>
					</div>
					
				<!-- ��۾ȳ� ī�װ� -->
					<div role="tabpanel" class="tab-pane " id="faq-tab101">
						<ul class="list-dropdown">
						<c:forEach var="map"  items="${list2}" varStatus="stat"> 
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
					
				<!-- �ֹ�/���� ī�װ� -->
					<div role="tabpanel" class="tab-pane " id="faq-tab102">
						<ul class="list-dropdown">
						<c:forEach var="map"  items="${list3}" varStatus="stat"> 
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
					
				<!-- �ֹ� ��� �� ���� ī�װ� -->
					<div role="tabpanel" class="tab-pane " id="faq-tab103">
						<ul class="list-dropdown">
						<c:forEach var="map"  items="${list4}" varStatus="stat"> 
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
					
				<!-- ��ȯ/��ǰ ī�װ� -->
					<div role="tabpanel" class="tab-pane " id="faq-tab104">
						<ul class="list-dropdown">
						<c:forEach var="map"  items="${list5}" varStatus="stat"> 
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
								</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
					
				<!-- ȯ�� ī�װ� -->
					<div role="tabpanel" class="tab-pane " id="faq-tab105">
						<ul class="list-dropdown">
						<c:forEach var="map"  items="${list6}" varStatus="stat"> 
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
								</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
					
					
				<!-- ��ǰ ī�װ� -->
					<div role="tabpanel" class="tab-pane " id="faq-tab106">
						<ul class="list-dropdown">
						<c:forEach var="map"  items="${list7}" varStatus="stat"> 
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
						</c:forEach>
						</ul>
					</div>
					
					
				<!-- A/S ī�װ� -->
					<div role="tabpanel" class="tab-pane " id="faq-tab107">
						<ul class="list-dropdown">
						<c:forEach var="map"  items="${list8}" varStatus="stat"> 
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
					
					
				<!-- �ŷ����������ȳ� ī�װ� -->
					<div role="tabpanel" class="tab-pane " id="faq-tab108">
						<ul class="list-dropdown">
						<c:forEach var="map"  items="${list9}" varStatus="stat"> 
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
						</c:forEach>
						</ul>
					</div>
					
				<!-- ����Ʈ �̿�ȳ� ī�װ� -->
					<div role="tabpanel" class="tab-pane " id="faq-tab109">
						<ul class="list-dropdown">
						<c:forEach var="map"  items="${list10}" varStatus="stat"> 
							<li>
								<div class="brief">
									<strong class="title">Q. ${map.FAQ_TITLE }</strong>
								</div>
								<div class="detail">
									<div class="answer">
									<p><strong>A. <br></strong> ${map.FAQ_CONTENT }<br/>
									<img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /></p>
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
					
	
			
					<div class="pull-left">
					<a href="faqWrite" class="button"><span class="button-label">�۾���</span></a>
					</div>
					
				</div>
			</div>
			<!-- guide//end -->
		</div>
		<!-- section-body//end -->
	</section>
	<!-- progress-list//end -->
	</div>
</div>


</div>

</div>
</div>
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

<script>
$(".tab-content-search .brief").click(function(){
	$(".tab-content-search .detail").slideUp(200);
	if ($(this).next().css("display")=="block") return;
	$(this).next().slideDown(200);
});

$(".tab-content2 .list-dropdown .brief").click(function(){
	$(".tab-content2 .list-dropdown .detail").slideUp(200);
	if ($(this).next().css("display")=="block") return;
	$(this).next().slideDown(200);
});

$(".tab-navs li").click(function(){
	$(".tab-navs li").removeClass("active");
	$(this).addClass("active");	

	$(".tab-content2>div").hide();
	var cate = $(this).data("cate");
	$("#faq-tab" + cate).show();
});
</script>