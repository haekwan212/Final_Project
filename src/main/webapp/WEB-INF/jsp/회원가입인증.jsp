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
.step-panels {
    margin-bottom: 10px;
}
@media (min-width: 1024px)
{
.step-panels {
    margin-bottom: 30px;
}}/* 메인에있음 */
@media (min-width: 768px){
.step-panels {
    margin-bottom: 15px;
}}
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

@media (min-width: 768px)
{
.col-sm-10 {
    width: 41.66666667%;
}}
.step-panels ol li.selected>div {
    font-family: "crn-md","NanumBarunGothicBold","돋움",Dotum,sans-serif;
}
.step-panels ol li>div {
    position: relative;
}
.register-verify {
    margin-bottom: 50px;
}
@media (min-width: 768px)
{
.register-verify {
    margin-bottom: 80px;
}}
.register-verify .guide {
    margin-bottom: 10px;
    background: #f6f6f6;
    vertical-align: top;
}
@media (min-width: 768px)
{
.register-verify .guide {
    margin-bottom: 20px;
}}

.col-xs-7 {
    width: 29.16666667%;
}
.register-verify .guide section {
    height: 100%;
    vertical-align: middle;
    padding: 0 10px 10px;
}
@media (min-width: 768px)
{
.register-verify .guide section {
    padding-bottom: 60px;
}}

.register-verify .guide .title {
    text-align: center;
    padding-top: 10px;
}

@media (min-width: 768px)
{
.register-verify .guide .title {
    padding-top: 60px;

}}

@media (min-width: 1024px)
{
.register-verify .pancoat {
    width: 156px;
    height: 39px;
    -webkit-background-size: 156px 39px;
    -moz-background-size: 156px 39px;
    -o-background-size: 156px 39px;
    background-size: 156px 39px;
}}

.register-verify .pancoat {
    display: inline-block;
    background: transparent url(../img/pancoat.png) center no-repeat;
    width: 70px;
    height: 18px;
    -webkit-background-size: 70px 18px;
    -moz-background-size: 70px 18px;
    -o-background-size: 70px 18px;
    background-size: 70px 18px;
}

@media (min-width: 768px)
{.register-verify .pancoat {
    width: 100px;
    height: 25px;
    -webkit-background-size: 100px 25px;
    -moz-background-size: 100px 25px;
    -o-background-size: 100px 25px;
    background-size: 100px 25px;
    margin-bottom: 10px;
}}

.register-verify .guide .title strong {
    display: block;
    font-family: "crn-md","NanumBarunGothicBold","돋움",Dotum,sans-serif;
    margin-top: 5px;
}

@media (min-width: 1024px)
{
.register-verify .guide .title strong {
    font-size: 18px;
}}

@media (min-width: 768px)
{
.register-verify .guide .title strong {
    font-size: 16px;
}}

.register-verify p {
    margin-top: 10px;
    font-family: "crn-md","NanumBarunGothicBold","돋움",Dotum,sans-serif;
    color: #959595;
    text-align: center;
    font-size: 11px;
}

@media (min-width: 768px)
{.register-verify p {
    margin-top: 20px;
}}

@media (min-width: 1024px)
{
.register-verify p {
    font-size: 12px;
}}

.register-verify .pancoat {
    display: inline-block;
    background: transparent url(../img/pancoat.png) center no-repeat;
    width: 70px;
    height: 18px;
    -webkit-background-size: 70px 18px;
    -moz-background-size: 70px 18px;
    -o-background-size: 70px 18px;
    background-size: 70px 18px;
}

@media (min-width: 768px)
{.register-verify .pancoat {
    width: 100px;
    height: 25px;
    -webkit-background-size: 100px 25px;
    -moz-background-size: 100px 25px;
    -o-background-size: 100px 25px;
    background-size: 100px 25px;
    margin-bottom: 10px;
}}

@media (min-width: 1024px)
{.register-verify .pancoat {
    width: 156px;
    height: 39px;
    -webkit-background-size: 156px 39px;
    -moz-background-size: 156px 39px;
    -o-background-size: 156px 39px;
    background-size: 156px 39px;
}}
.row {
    margin-left: -5px;
    margin-right: -5px;
}
@media (min-width: 1024px)
{.row {
    margin-left: -10px;
    margin-right: -10px;
}}

@media (min-width: 1024px)
{
.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12, .col-md-13, .col-md-14, .col-md-15, .col-md-16, .col-md-17, .col-md-18, .col-md-19, .col-md-20, .col-md-21, .col-md-22, .col-md-23, .col-md-24, .col-md-auto {
    float: left;
}}

@media (min-width: 1024px)
{.col-md-12 {
    width: 50%;
}}
.register-verify .verify section:first-child {
    margin-bottom: 10px;
}

@media (min-width: 768px)
{
.register-verify .verify section:first-child {
    margin-bottom: 20px;
}}

.box-shadow {
    padding: 5px 5px 0 5px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    -ms-border-radius: 5px;
    border-radius: 5px;
    border: 1px solid #c8c8c8;
    -webkit-box-shadow: 1px 3px 5px #e8e8e8;
    box-shadow: 1px 3px 5px #e8e8e8;
}

@media (min-width: 1024px)
{.box-shadow {
    padding: 10px 10px 0 10px;
}}

.register-verify .verify section .box-shadow {
    padding-bottom: 20px;
}

@media (min-width: 768px)
{.register-verify .verify section .box-shadow {
    padding-bottom: 20px;
}}

@media (min-width: 1024px)
{.register-verify .verify section .box-shadow {
    padding-bottom: 30px;
}}

.section-head {
    position: relative;
    text-align: center;
}

@media (min-width: 1024px)
{.section-head {
    padding: 0;
}}

.section-head.left {
    text-align: left;
    margin-bottom: 5px;
}

@media (min-width: 1024px)
{.section-head.left {
    margin-bottom: 10px;
}}

h1, h2, h3, h4, h5, h6 {
    font-weight: normal;
}

.section-head h3, .section-head h5 {
    position: relative;
    display: inline-block;
    font-family: "crn-rg","NanumBarunGothic","돋움",Dotum,sans-serif;
    font-size: 13px;
    line-height: 1.3846153846;
    text-transform: uppercase;
    color: #808080;
    z-index: 5;
    padding: 0 5px;
    background-color: #fff;
}

@media (min-width: 768px)
{
.section-head h3, .section-head h5 {
    font-size: 14px;
    line-height: 1.5714285714;
}}

@media (min-width: 1024px)
{.section-head h3, .section-head h5 {
    font-size: 20px;
    line-height: 1.3;
}}

.section-head.border h3, .section-head.border h5 {
    border-bottom: 2px solid #ffc000;
}

.section-head.left h3, .section-head.left h5 {
    padding: 0;
    color: #242424;
    font-family: "crn-md","NanumBarunGothicBold","돋움",Dotum,sans-serif;
}

@media (min-width: 1024px)
{.section-head.left h3, .section-head.left h5 {
    font-size: 14px;
}}

.register-verify .verify .button {
    margin-top: 15px;
}

.section-body {
    overflow: hidden;
}

.register-verify .verify .section-body {
    text-align: center;
    padding-left: 10px;
    padding-right: 10px;
}

@media (min-width: 1440px)
{
.register-verify .verify section:last-child .button {
    margin-top: 15px;
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
					<strong>SIRORAGI 회원가입을 위해 본인인증을 시작합니다.</strong>
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