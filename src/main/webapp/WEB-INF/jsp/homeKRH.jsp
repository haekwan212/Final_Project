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
@media (min-width: 768px){
.container {
    width: 758px;
}
}

@media (min-width: 1440px){
.container {
    width: 1420px;
}}

.section {
    margin-bottom: 10px;
}

@media (min-width: 1024px){
.section {
    margin-bottom: 20px;
}}

@media (min-width: 1024px){
.hashFilter.eshop {
    padding-top: 40px;
}}

.section-body {
    overflow: hidden;
}

.page-category .selectboxWrap {
    position: relative;
    background-color: #7d7d7d;
    padding: 0 5px;
}

@media (min-width: 768px){
.page-category .selectboxWrap {
    padding: 0 10px;
}}

@media (min-width: 1024px){
.page-category .selectboxWrap {
    padding: 0 18px;
}}

.selectbox {
    position: relative;
    padding-left: 0;
    padding-right: 0;
}
/* 
.page-category .selectbox {
    float: left;
    margin-right: 5px;
}

*/

.selectbox .selectbox-data {
    text-align: justify;
    text-align-last: center;
    padding: 0 3px 0 8px;
    border: 1px solid #c8c8c8;
    font-size: 0.1px;
    min-height: 24px;
    background-color: #fff;
}


.page-category .selectbox .selectbox-data {
    border: 0 none;
    background-color: transparent;
    padding: 0 2px;
}

.selectbox .selectbox-data .text {
    display: inline-block;
    color: #959595;
    font-family: "crn-md","NanumBarunGothicBold","돋움",Dotum,sans-serif;
    font-size: 11px;
    line-height: 2;
    vertical-align: middle;
    margin-right: 20px;
}


.page-category .selectbox .selectbox-data .text {
    font-family: "crn-md","NanumBarunGothicBold","돋움",Dotum,sans-serif;
    font-size: 11px;
    text-transform: uppercase;
    color: #fff;
    margin-right: 5px;
    line-height: 2.2727272727;
}

.icon-dropdown-white {
    background-image: url(../img/icon/icon-dropdown-white.png);
}

.button .icon, .section-head .icon, .checkbox .icon, .radio .icon, .selectbox .icon, .cabal .icon {
    margin-top: -1px;
}

.selectbox .selectbox-data .icon {
    width: 22px;
    height: 22px;
    -webkit-background-size: 22px 22px;
    -moz-background-size: 22px 22px;
    -o-background-size: 22px 22px;
    background-size: 22px 22px;
}

.page-category .selectbox .selectbox-data .icon {
    width: 20px;
    height: 20px;
    -webkit-background-size: 20px 20px;
    -moz-background-size: 20px 20px;
    -o-background-size: 20px 20px;
    background-size: 20px 20px;
}


.selectbox select {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: 0;
    margin: 0;
    filter: alpha(opacity=0);
    -ms-filter: alpha(opacity=0);
    -moz-opacity: 0;
    -khtml-opacity: 0;
    opacity: 0;
    cursor: pointer;
}

h1, h2, h3, h4, h5, h6 {
    font-weight: normal;
}


.page-title h2 {
    background-color: #ffc000;
    -webkit-border-radius: 0 0 5px 5px;
    -moz-border-radius: 0 0 5px 5px;
    -ms-border-radius: 0 0 5px 5px;
    border-radius: 0 0 5px 5px;
    overflow: hidden;
    padding: 0 5px;
}

@media (min-width: 768px){
.page-title h2 {
    padding: 0 10px;
}}

@media (min-width: 1024px){
.page-title h2 {
    padding: 0 18px;
}}

.section-body {
    overflow: hidden;
}

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

@media (min-width: 1024px){
.box-shadow {
    padding: 10px 10px 0 10px;
}}
 
 
@media (min-width: 1024px){
.hashFilter .box-shadow {
    padding-left: 15px;
    padding-right: 15px;
}}

.row {
    margin-left: -5px;
    margin-right: -5px;
}

@media (min-width: 1024px){
.row {
    margin-left: -10px;
    margin-right: -10px;
}}

.hashFilter .form {
    background-color: #fff;
}

@media (min-width: 768px){
.hashFilter .form {
    margin-top: 5px;
}}

@media (min-width: 1024px){
.hashFilter .form {
    text-align: center;
    margin-top: 0;
}}

@media (min-width: 768px){
.col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-13, .col-sm-14, .col-sm-15, .col-sm-16, .col-sm-17, .col-sm-18, .col-sm-19, .col-sm-20, .col-sm-21, .col-sm-22, .col-sm-23, .col-sm-24, .col-sm-auto {
    float: left;
}}

@media (min-width: 768px){
.col-sm-12 {
    width: 50%;
}}

@media (min-width: 1440px){
.col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-13, .col-lg-14, .col-lg-15, .col-lg-16, .col-lg-17, .col-lg-18, .col-lg-19, .col-lg-20, .col-lg-21, .col-lg-22, .col-lg-23, .col-lg-24, .col-lg-auto {
    float: left;
}}

@media (min-width: 1440px){
.col-lg-24 {
    width: 100%;
}}

.hashFilter .section-body .form>* {
    display: none;
}

.hashFilter .form .form-item {
    margin-bottom: 4px;
}

@media (min-width: 768px){
.hashFilter .form .form-item {
    padding: 0 10px;
}}

@media (min-width: 1024px){
.hashFilter .form .form-item {
    margin-bottom: 10px;
    padding: 5px 10px;
}}

.hashFilter .section-body .form>:first-child {
    display: block;
}

@media (min-width: 1024px){
.hashFilter .section-body .form>*, .hashFilter .section-body .form>:first-child, .hashFilter .section-body .form>.brand {
    display: inline-block;
}}

.section:before, .section:after, .section-head:before, .section-head:after, .section-body:before, .section-body:after, .section-foot:before, .section-foot:after, .catalog:before, .catalog:after, .form-item:before, .form-item:after, .form-item-wrap:before, .form-item-wrap:after {
    content: " ";
    display: table;
}

.section:after, .section-head:after, .section-body:after, .section-foot:after, .catalog:after, .form-item:after, .form-item-wrap:after {
    clear: both;
}

.page-category .selectboxWrap:before, .page-category .selectboxWrap:after {
    content: " ";
    display: table;
}

.page-category .selectboxWrap:after {
    clear: both;
}

.selectbox .selectbox-data:before, .selectbox .selectbox-data:after {
    content: " ";
    display: table;
}

.selectbox .selectbox-data:after {
    clear: both;
}

.selectbox .selectbox-data:after {
    content: '';
    width: 100%;
    display: inline-block;
    font-size: 0;
    line-height: 0;
}

.page-category .selectbox .selectbox-data:after {
    content: '';
    width: 100%;
    display: inline-block;
    font-size: 0;
    line-height: 0;
}

.hashFilter .form-item-title {
    position: relative;
    text-align: left;
    margin-bottom: 5px;
}

.hashFilter .form-item-title h4 {
    position: relative;
    display: inline-block;
    font-size: 13px;
    line-height: 1.3846153846;
    text-transform: uppercase;
    z-index: 5;
    background-color: #fff;
    border-bottom: 2px solid #ffc000;
    color: #242424;
    font-family: "crn-md","NanumBarunGothicBold","돋움",Dotum,sans-serif;
}

@media (min-width: 768px){
.hashFilter .form-item-title h4 {
    font-size: 14px;
    line-height: 1.4285714286;
}
}


.hashFilter .form .form-item .form-item-wrap {
    padding-bottom: 5px;
}


@media (min-width: 1440px){
.hashFilter .form .form-item.categoryDetail .form-item-wrap {
    border-bottom: 1px solid #c8c8c8;
}
}

.checkbox label {
    position: relative;
}

.checkbox label input {
    cursor: pointer;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 100;
    margin: 0;
    padding: 0;
    filter: alpha(opacity=0);
    -ms-filter: alpha(opacity=0);
    -moz-opacity: 0;
    -khtml-opacity: 0;
    opacity: 0;
}

.icon-checkbox {
    background-image: url(../img/icon/icon-check-gray.png);
}

.checkbox label .icon {
    width: 15px;
    height: 15px;
    -webkit-background-size: 15px 15px;
    -moz-background-size: 15px 15px;
    -o-background-size: 15px 15px;
    background-size: 15px 15px;
    margin-right: 3px;
}

.checkbox label .checkbox-label {
    display: inline;
    color: #959595;
    font-family: "crn-md","NanumBarunGothicBold","돋움",Dotum,sans-serif;
    font-size: 11px;
    line-height: 2;
}

@media (min-width: 1440px){
.col-lg-6 {
    width: 25%;
}}

.selected .icon-checkbox {
    background-image: url(../img/icon/icon-check-black.png);
}

.checkbox.selected .checkbox-label {
    color: #242424;
}

@media (min-width: 1440px){
.col-lg-12 {
    width: 50%;
}}


@media (min-width: 1440px){
.hashFilter .form .form-item.price {
    border-left: 1px solid #c8c8c8;
    border-right: 1px solid #c8c8c8;
}}

.hashFilter .form .form-item.price .ui-range {
    padding-right: 5px;
}

.hashFilter .form .form-item.price #price-range>div {
    padding: 0;
}

.hashFilter .form .form-item.price #price-range>div:first-child {
    padding-right: 10px;
}

.xx-control {
    display: block;
    width: 100%;
    height: 28px;
    padding: 3px 10px;
    font-size: 11px;
    line-height: 1.8181818182;
    color: #959595;
    border: 1px solid #d2d2d2;
    background-color: #fff;
    background-image: none;
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    -ms-border-radius: 0px;
    border-radius: 0px;
    -webkit-appearance: none;
}

.ui-range .ui-slider {
    background-color: #c8c8c8;
    height: 12px;
}

.hashFilter .form .form-item.price .ui-range .range-slider .ui-slider-horizontal {
    margin-top: 10px;
    margin-right: 5px;
}


@media (min-width: 1024px){
.hashFilter .form .form-item.price .ui-range .range-slider .ui-slider-horizontal, .hashFilter .form .form-item.brand .ui-range .range-slider .ui-slider-horizontal {
    margin-top: 6px;
}}

.ui-range .ui-slider .ui-slider-range {
    background-color: #555c80;
}


.ui-range .ui-slider .ui-slider-handle {
    width: 17px;
    height: 16px;
    top: -2px;
    background: transparent url(../img/bullet-range.png) no-repeat center center;
}

element.style {
    left: 21.1409%;
}

.box-group .checkbox, .box-group .radio {
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    -ms-border-radius: 0;
    border-radius: 0;
    border-left: none;
}

.box-group .checkbox:first-child, .box-group .radio:first-child {
    -webkit-border-top-left-radius: 3px;
    -moz-border-top-left-radius: 3px;
    -ms-border-top-left-radius: 3px;
    border-top-left-radius: 3px;
    -webkit-border-bottom-left-radius: 3px;
    -moz-border-bottom-left-radius: 3px;
    -ms-border-bottom-left-radius: 3px;
    border-bottom-left-radius: 3px;
    border-left: 1px solid #d2d2d2;
}

.hashFilter .form .form-item.color .checkbox {
    width: 7.142857%;
    margin-top: -1px;
    padding: 0;
    border-color: transparent;
    overflow: hidden;
}


.hashFilter .form .form-item.color .checkbox .icon {
    display: none;
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    -webkit-background-size: 12px;
    -moz-background-size: 12px;
    -o-background-size: 12px;
    background-size: 12px;
    background-position: center;
}

.hashFilter .form .form-item.color .checkbox .checkbox-label {
    display: block;
    line-height: 0;
}

.checkbox label .checkbox-label>img {
    vertical-align: middle;
}

.hashFilter .form .form-item.color .checkbox .checkbox-label img {
    width: 100%;
    height: 26px;
}

.hashFilter .form .form-item.reset {
    text-align: center;
}

.hashFilter .form .form-item.reset .form-item-wrap {
    padding-left: 0;
    padding-right: 0;
}

.hashFilter .form .form-item.reset .form-item-wrap .button {
    width: 33.3333%;
    z-index: 9;
}

@media (min-width: 1024px){
.hashFilter .form .form-item.reset .form-item-wrap .button {
    width: auto;
}}

.hashFilter .form .form-item.color .form-item-wrap .row {
    margin-bottom: -10px;
}

.section-foot {
    position: relative;
    text-align: center;
    padding: 5px;
}

@media (min-width: 1024px){
.section-foot {
    padding: 10px;
}}

@media (min-width: 1024px){
.hashFilter .section-foot {
    display: none;
}}

.hashFilter .section-foot.more {
    padding: 0 0 10px;
}

.section-foot .button {
    z-index: 10;
}

</style>
</head>
<body>
<div class="viewport">
<div id="container">
<div id="page" class="page">
<section class="hashFilter section eshop container">
	<form id="fmFilter" name="fmFilter">
	<input type="hidden" name="mode" value="items_category">
	<input type="hidden" name="sort" value="goodsno desc">
	<input type="hidden" name="brandno" value="">
	<input type="hidden" name="no" value="102">

	<div class="section-body">

	<!-- coordi 페이지 editor's pick 페이지에는 page-category 없어야됨 -->
	<div class="page-category">
		<div class="selectboxWrap">

			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text">
					OUTER
					
					 </strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="category[]" id="cate01">
					<option value="101" data-catnm="TOP">
					TOP
					<!--(0)-->
					</option>
					<option value="102" selected="" data-catnm="OUTER">
					OUTER
					<!--(0)-->
					</option>
					<option value="103" data-catnm="BOTTOM">
					BOTTOM
					<!--(0)-->
					</option>
					<option value="104" data-catnm="ACC">
					ACC
					<!--(0)-->
					</option>
					<option value="105" data-catnm="KIDS">
					KIDS
					<!--(0)-->
					</option>
					<option value="106" data-catnm="LIFE STYLE">
					LIFE STYLE
					<!--(0)-->
					</option>
				</select>
			</div>
			<!--
			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text"></strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="category[]" id="cate02">
				</select>
			</div>
			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text"></strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="category[]" id="cate03">
				</select>
			</div>
			-->
			
			<!--
			<a href="#" class="comment">
				<span class="icon icon-speaker-white"></span>
				<span class="text">배송관련 공지사항 안내 드립니다.</span>
			</a>
			-->
		</div>
	</div>
	<!-- 각 카테고리별 타이틀-->
	<div class="page-title section">
		<h2>
			<strong id="section_filter_h2_top">
					OUTER
					
					</strong>
		</h2>
	</div>

	<script>
	$("#section_filter_h2_top").html($(".selectboxWrap select:first option:selected").text());
	</script>

		<!--세일페이지인 경우 HOT ISSUES-->







	</div>
		

	<!--<div class="section-head">
		<h3>filter</h3>
		<span class="border"></span>
		<button class="button" id="filterToggle">
			<span class="icon icon-downArrow-black"></span>
			<span class="sr-only">펼치기/닫기</span>
		</button>
	</div>-->
	<div class="section-body box-shadow">
		<div class="form row">





<!--
"ranking", "sale", "new"
-->

			<div class="form-item col-sm-12 col-lg-24 categoryDetail">
				<div class="form-item-title">
					<h4>상세 분류 선택</h4>
				</div>
				<div class="form-item-wrap">
					<div class="row"><div class="checkbox col-xs-auto"><label><input type="checkbox" name="sub_category[]" value="102001" data-text="WINDBREAKER"><span class="icon icon-checkbox"></span> <span class="checkbox-label">WINDBREAKER</span></label></div><div class="checkbox col-xs-auto"><label><input type="checkbox" name="sub_category[]" value="102002" data-text="STADIUM JUMPER"><span class="icon icon-checkbox"></span> <span class="checkbox-label">STADIUM JUMPER</span></label></div><div class="checkbox col-xs-auto"><label><input type="checkbox" name="sub_category[]" value="102003" data-text="TRACK TOP"><span class="icon icon-checkbox"></span> <span class="checkbox-label">TRACK TOP</span></label></div><div class="checkbox col-xs-auto"><label><input type="checkbox" name="sub_category[]" value="102004" data-text="HOODIE ZIPUP"><span class="icon icon-checkbox"></span> <span class="checkbox-label">HOODIE ZIPUP</span></label></div><div class="checkbox col-xs-auto"><label><input type="checkbox" name="sub_category[]" value="102005" data-text="JACKET"><span class="icon icon-checkbox"></span> <span class="checkbox-label">JACKET</span></label></div><div class="checkbox col-xs-auto"><label><input type="checkbox" name="sub_category[]" value="102006" data-text="PADDING"><span class="icon icon-checkbox"></span> <span class="checkbox-label">PADDING</span></label></div><div class="checkbox col-xs-auto"><label><input type="checkbox" name="sub_category[]" value="102007" data-text="DOWN"><span class="icon icon-checkbox"></span> <span class="checkbox-label">DOWN</span></label></div><div class="checkbox col-xs-auto"><label><input type="checkbox" name="sub_category[]" value="102009" data-text="VEST"><span class="icon icon-checkbox"></span> <span class="checkbox-label">VEST</span></label></div></div>
				</div>
			</div>

			<div class="condition form-item col-sm-12 col-lg-6">
				<div class="form-item-title">
					<h4>제품상태</h4>
				</div>
				<div class="form-item-wrap">
					<div class="row">

						<div class="checkbox col-xs-auto">
							<label>
								<input type="checkbox" name="sale" data-text="세일 상품만">
								<span class="icon icon-checkbox"></span>
								<span class="checkbox-label">세일 상품만</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto selected">
							<label>
								<input type="checkbox" name="running" data-text="품절상품제외" checked="">
								<span class="icon icon-checkbox"></span>
								<span class="checkbox-label">품절상품 제외</span>
							</label>
						</div>
					</div>
				</div>
			</div>





			<div class="price form-item col-sm-24 col-lg-12">
				<div>
					<div class="form-item-title">
						<h4>가격대</h4>
					</div>
					<div class="form-item-wrap ui-range row">
						<div id="price-range" class="col-xs-12">
							<div class="col-xs-12">
								<input class="xx-control" type="text" name="priceRange[]" value="14800" size="22">
							</div>
							<div class="col-xs-12">
								<input class="xx-control" type="text" name="priceRange[]" value="298000" size="22">
							</div>
					</div>
						<div class="range-slider col-xs-12">
							<div id="price-range-slider" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" aria-disabled="false">
							<div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 5.03356%; width: 94.9664%;">
							</div>
							<a class="ui-slider-handle ui-state-default ui-corner-all" href="#" style="left: 5.03356%;"></a>
							<a class="ui-slider-handle ui-state-default ui-corner-all" href="#" style="left: 100%;"></a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="color form-item col-sm-12 col-lg-6">
				<div class="form-item-title">
					<h4>색상</h4>
				</div>
				<div class="form-item-wrap col-xs-24">
					<div class="row box-group">
						<div class="checkbox col-xs-auto black">
							<label>
								<input type="checkbox" name="color[]" value="black" data-text="black">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-black.png" alt="black">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto gray">
							<label>
								<input type="checkbox" name="color[]" value="gray" data-text="gray">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-gray.png" alt="gray">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto brown">
							<label>
								<input type="checkbox" name="color[]" value="brown" data-text="brown">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-brown.png" alt="brown">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto burgundy">
							<label>
								<input type="checkbox" name="color[]" value="burgundy" data-text="burgundy">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-burgundy.png" alt="burgundy">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto pink">
							<label>
								<input type="checkbox" name="color[]" value="pink" data-text="pink">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-pink.png" alt="pink">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto purple">
							<label>
								<input type="checkbox" name="color[]" value="purple" data-text="purple">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-purple.png" alt="purple">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto white">
							<label>
								<input type="checkbox" name="color[]" value="white" data-text="white">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-white.png" alt="white">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto navy">
							<label>
								<input type="checkbox" name="color[]" value="navy" data-text="navy">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-navy.png" alt="navy">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto blue">
							<label>
								<input type="checkbox" name="color[]" value="blue" data-text="blue">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-blue.png" alt="blue">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto green">
							<label>
								<input type="checkbox" name="color[]" value="green" data-text="green">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-green.png" alt="green">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto yellow">
							<label>
								<input type="checkbox" name="color[]" value="yellow" data-text="yellow">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-yellow.png" alt="yellow">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto red">
							<label>
								<input type="checkbox" name="color[]" value="red" data-text="red">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-red.png" alt="red">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto gradient-silver">
							<label>
								<input type="checkbox" name="color[]" value="gradient-silver" data-text="gradient-silver">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-gradient-silver.png" alt="gradient-silver">
								</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto gradient-gold">
							<label>
								<input type="checkbox" name="color[]" value="gradient-gold" data-text="gradient-gold">
								<span class="icon icon-check-white"></span>
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-color-gradient-gold.png" alt="gradient-gold">
								</span>
							</label>
						</div>
					</div>
				</div>
			</div>


			<!--
			<div class="form-item col-sm-24 character">
				<div class="form-item-title">
					<h4>캐릭터</h4>
				</div>
				<div class="form-item-wrap">
				-->
						<!--
						<div class="checkbox col-xs-auto 1">
							<label>
								<input type="checkbox" name="charater[]" value="1" data-text="1" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-1.png" alt="1">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 2">
							<label>
								<input type="checkbox" name="charater[]" value="2" data-text="2" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-2.png" alt="2">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 3">
							<label>
								<input type="checkbox" name="charater[]" value="3" data-text="3" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-3.png" alt="3">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 4">
							<label>
								<input type="checkbox" name="charater[]" value="4" data-text="4" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-4.png" alt="4">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 5">
							<label>
								<input type="checkbox" name="charater[]" value="5" data-text="5" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-5.png" alt="5">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 6">
							<label>
								<input type="checkbox" name="charater[]" value="6" data-text="6" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-6.png" alt="6">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 7">
							<label>
								<input type="checkbox" name="charater[]" value="7" data-text="7" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-7.png" alt="7">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 8">
							<label>
								<input type="checkbox" name="charater[]" value="8" data-text="8" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-8.png" alt="8">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 9">
							<label>
								<input type="checkbox" name="charater[]" value="9" data-text="9" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-9.png" alt="9">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 10">
							<label>
								<input type="checkbox" name="charater[]" value="10" data-text="10" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-10.png" alt="10">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 11">
							<label>
								<input type="checkbox" name="charater[]" value="11" data-text="11" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-11.png" alt="11">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 12">
							<label>
								<input type="checkbox" name="charater[]" value="12" data-text="12" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-12.png" alt="12">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 13">
							<label>
								<input type="checkbox" name="charater[]" value="13" data-text="13" >
								<span class="checkbox-label">
									<img src="/theme/pshp/img/filter-charater-13.png" alt="13">
								</span>
							</label>
						</div>
						-->
				<!--
				</div>
			</div>
			-->


			<div class="reset form-item col-xs-24">
				<div class="form-item-wrap col-xs-24">
					<button class="button" id="filterClear">
						<span class="button-label">필터 초기화</span>
					</button>
				</div>
			</div>

		</div>
		<div class="section-foot more">
			<a class="button button hidden-md hidden-lg" id="filterMore">
				<span class="button-label">MORE FILTER</span>
			</a>
		</div>
	</div>



	</form>
</section>
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