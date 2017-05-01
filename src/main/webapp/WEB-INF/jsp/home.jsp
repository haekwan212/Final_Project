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
}}/* ���ο����� */
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
    font-family: "crn-md","NanumBarunGothicBold","����",Dotum,sans-serif;
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
					<strong>���� ȸ�������� ���� ���������� �����մϴ�.</strong>
				</div>
				<p>�޴��� ������ �̸��� �����߿� ���ϴ� ����� �����Ͽ� ���������� ������ �� �ֽ��ϴ�.<br>
					������������ ���� �Է��Ͻ� ���������� ȸ�������� ���ؼ� Ȯ���ϴ� ���̸�,<br>
					������ ������ �������� �� ��� �뵵�ε� ���ǰų� ���࿡ ������� �����Ƿ� �Ƚ��Ͻñ� �ٶ��ϴ�.</p>
			</section>
		</div>
		<div class="verify row">
			<section class="col-md-12">
				<div class="box-shadow">
					<div class="section-head left border">
						<h3 class="title">�޴��� ����</h3>
					</div>
					<div class="section-body">
						<p>�ڵ��� ������ ������ �������� �ʽ��ϴ�. �Է��Ͻ� �ڵ������� ���۹��� ���� ��ȣ�� �Է��ؼ� ������ �޴� ����Դϴ�.</p>
						<a href="../member/modal_hp" class="button" target="modal" data-size="sm" data-label="�Ƚ�üũ(�޴���) ����">
							<span class="button-label">�޴��� ����</span>
						</a>
					</div>
				</div>
			</section>
			<section class="col-md-12">
				<div class="box-shadow">
					<div class="section-head left border">
						<h3 class="title">�̸��� ����</h3>
					</div>
					<div class="section-body">
						<p>�̸��� ������ ���� ������ �������� �ʽ��ϴ�. �ش� �̸��Ϸ� ���۹��� ���� ��ȣ�� �Է��ؼ� ������ �޴� ����Դϴ�.</p>
						<a href="../member/modal_email" class="button" target="modal" data-size="sm" data-label="������ ����">
							<span class="button-label">�̸��� ����</span>
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