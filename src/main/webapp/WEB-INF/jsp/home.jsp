<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<title>PANCOAT</title>

	<!--
	<link rel="stylesheet" href="/theme/pshp/css/vendor/jquery-ui.css">
	<link rel="stylesheet" href="/theme/pshp/css/vendor/bootstrap.css">
	<link rel="stylesheet" href="/theme/pshp/css/main.min.css">
	<link rel="stylesheet" href="/theme/pshp/css/ui.css">
	-->

	<link rel="stylesheet" href="theme/pshp/css/vendor/jquery-ui.css">
	<link rel="stylesheet" href="theme/pshp/css/vendor/bootstrap.css">
	

	<link rel="stylesheet" href="theme/pshp/css/fonts.css">
	<link rel="shortcut icon" href="/favicon.ico">
	<script src="theme/pshp/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<script src="theme/pshp/js/vendor/selector.min.js"></script>
	<script src="theme/pshp/js/vendor/webfont.min.js"></script>
	<script src="dist/jquery/jquery-1.11.0.min.js"></script>
	<script src="dist/jquery/jquery-ui.js"></script>
	<script src="dist/jquery/jquery-migrate-1.2.1.min.js"></script>
	<script src="dist/jquery/plugin/jquery.cookie.js"></script>

	<!-- font-awesome(icon) -->
	<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet">

	<!-- owl -->
	<link rel="stylesheet" href="dist/owl/owl.carousel.css">
	<link rel="stylesheet" href="dist/owl/owl.theme.default.min.css">
	<script src="dist/owl/owl.carousel.min.js"></script>
	<script src="dist/owl/owl.js"></script>

	<link rel="stylesheet" href="theme/pshp/css/main.min.css">
	<link rel="stylesheet" href="theme/pshp/css/ui.css">
<style>
@media (min-width: 1024px)
{
.step-panels {
    margin-bottom: 30px;
}}/* 메인에있음 */
@media (min-width: 768px){
.step-panels {
    margin-bottom: 15px;
}}
.step-panels {
    margin-bottom: 10px;
}
.step-panels ol {
    -webkit-border-radius: 0 0 5px 5px;
    -moz-border-radius: 0 0 5px 5px;
    -ms-border-radius: 0 0 5px 5px;
    border-radius: 0 0 5px 5px;
    overflow: hidden;
}
.step-panels ol li.selected {
    display: block;
    background-color: #ffc000;
    border-right: none;
}
@media (min-width: 1440px)
{
.step-panels ol li {
    font-size: 20px;
    line-height: 2.5;
}}

@media (min-width: 1024px)
{
.step-panels ol li {
    font-size: 16px;
    line-height: 2.8125;
    padding: 0 18px;
}}
@media (min-width: 768px){
.step-panels ol li {
    display: block;
    font-size: 14px;
    line-height: 2.3571428571;
    padding: 0 10px;
}}
.step-panels ol li {
    display: none;
    font-family: "crn-md","NanumBarunGothicBold","돋움",Dotum,sans-serif;
    font-size: 12px;
    color: #fff;
    line-height: 2.5;
    padding: 2px 5px 0;
    background-color: #a1a1a1;
    border-right: 1px solid #7d7d7d;
}
@media (min-width: 768px)
{
.col-sm-10 {
    width: 41.66666667%;
}}
</style>
</head>
<body>
<div class="viewport">
<div id="container">
<div class="page" id="page">
<div class="container">
	<section class="step-panels">
		<ol>
			<li class="c01 col-xs-24 col-sm-10 selected">
				<div>AUTHENTICATION</div>
			</li>
			<li class="c02 col-xs-7">
				<div>PRIVACY</div>
			</li>
			<li class="c03 col-xs-7">
				<div>WELCOME</div>
			</li>
		</ol>
	</section>
	<!-- step-panels//end -->

	<div class="register-verify">
		<div class="guide">
			<section>
				<div class="title">
					<span class="pancoat"></span>
					<strong>팬콧 회원가입을 위해 본인인증을 시작합니다.</strong>
				</div>
				<p>휴대폰 인증과 이메일 인증중에 원하는 방법을 선택하여 본인인증을 진행할 수 있습니다.<br>
					본본인인증을 위해 입력하신 개인정보는 회원가입을 위해서 확인하는 것이며,<br>
					수집된 정보는 본인인증 외 어떠한 용도로도 사용되거나 팬콧에 저장되지 않으므로 안심하시기 바랍니다.</p>
			</section>
		</div>
		<div class="verify row">
			<section class="col-md-12">
				<div class="box-shadow">
					<div class="section-head left border">
						<h3 class="title">휴대폰 인증</h3>
					</div>
					<div class="section-body">
						<p>핸드폰 인증은 정보를 저장하지 않습니다. 입력하신 핸드폰으로 전송받은 인증 번호를 입력해서 인증을 받는 방법입니다.</p>
						<a href="../member/modal_hp" class="button" target="modal" data-size="sm" data-label="안심체크(휴대폰) 인증">
							<span class="button-label">휴대폰 인증</span>
						</a>
					</div>
				</div>
			</section>
			<section class="col-md-12">
				<div class="box-shadow">
					<div class="section-head left border">
						<h3 class="title">이메일 인증</h3>
					</div>
					<div class="section-body">
						<p>이메일 인증은 따로 정보를 저장하지 않습니다. 해당 이메일로 전송받은 인증 번호를 입력해서 인증을 받는 방법입니다.</p>
						<a href="../member/modal_email" class="button" target="modal" data-size="sm" data-label="아이핀 인증">
							<span class="button-label">이메일 인증</span>
						</a>
					</div>
				</div>
			</section>
		</div>
	</div>
	<!--section-body//end-->
	<!-- register-verify.section//end -->
</div>
</div>
</div>
</div>
<script src="dist/bootstrap/js/bootstrap.min.js"></script>
<script src="dist/jquery/plugin/jquery.placeholder.js"></script>
<script src="dist/js/common.js"></script>
<script src="dist/js/event.js"></script>
<script src="theme/pshp/js/event.js"></script>
<script src="theme/pshp/js/plugins.min.js"></script>
<script src="theme/pshp/js/main.min.js"></script>
<script src="theme/pshp/js/vendor/fastclick.min.js"></script>
</body>
</html>