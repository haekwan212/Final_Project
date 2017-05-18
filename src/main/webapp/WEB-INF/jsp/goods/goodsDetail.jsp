<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div id="container">
		<div id="page" class="page">
			<div class="hashFilter eshop">
			    <section class="page-category container">
			        <div class="selectboxWrap">
			            <div class="selectbox">
			                <div class="selectbox-data">
			                    <strong class="text">e-shop </strong>
			                    <span class="icon icon-dropdown-white"></span>
			                </div>
			                <select name="category[]">
			                    <option value="">e-shop</option>
			                </select>
			            </div>
			            <div class="selectbox">
			                <div class="selectbox-data">
			                    <strong class="text">TOP </strong>
			                    <span class="icon icon-dropdown-white"></span>
			                </div>
			                <select name="tid[]">
			                    <option value="">1차 분류</option>
			                <option value="101" selected="selected">TOP</option><option value="102">OUTER</option><option value="103">BOTTOM</option><option value="104">ACC</option><option value="105">KIDS</option><option value="106">LIFE STYLE</option></select>
			            </div>
			            <!--
						<a href="#" class="comment">
			                <span class="icon icon-speaker-white"></span>
			                <span class="text">배송관련 공지사항 안내 드립니다.</span>
			            </a>
						-->
			        </div>
			    </section>
			    <section class="page-title section container">
			        <h2>
			            <strong>product view</strong>
			        </h2>
			    </section>
			</div>
			
			<div class="container">
			    <div class="product-view-top-wrapper">
			<style>
			.popover-content {font-size:12px !important;}
			.label1 {border-radius: 0; padding: 5px; font-size: 11px; display: inline;font-weight: bold;line-height: 1;color: #fff;text-align: center;
				white-space: nowrap;vertical-align: middle !important;}
			.label-primary1 {background-color: #337ab7;}
			</style>
			
			<form name="fmOrder">
			<input type="hidden" name="mode">
			<input type="hidden" name="goodsno" value="1494898147">
			
			<div class="product-view-main-sub row">
				<div class="col-lg-24">
				<div class="box-wrap box-shadow">
				<section class="product-view-thumbnail section col-xs-24 col-sm-13">
					<div class="wrap">
						<div class="thumbnail">
							<img src="/SIRORAGI/file/goodsFile/${goodsBasic.GOODS_THUMBNAIL}" width="500" class="img-responsive">
						</div>
						<!-- thumbnail//end -->
						<!-- thumbnail-wrap//end -->
			
						<div class="addon">
							<a href="https://www.facebook.com/sharer/sharer.php?u=http://www.pancoat.com/goods/1494898147" class="button button-ghost" onclick="postToFeed();return false;">
								<span class="icon icon-facebook"></span>
							</a>
							<a href="https://twitter.com/intent/tweet?url=http://www.pancoat.com/goods/1494898147" class="button button-ghost">
								<span class="icon icon-twitter"></span>
							</a>
							<a href="https://story.kakao.com/s/share?url=http://www.pancoat.com/goods/1494898147" class="button button-ghost" style="border-left:0;">
								<span class="icon icon-kakaostory"></span>
							</a>
							<a href="#none" class="button btn-inven" style="display: none;">
								<span class="button-label">My Inventory</span>
							</a>
						</div>
						<!-- share-sns//end -->
					</div>
				</section>
				<!-- product-view-thumbnail//end -->
			
				<section class="product-view-information section col-xs-24 col-sm-11">
					<div class="section-body">
						<div class="description">
							<!--<em class="season">2015 F/W</em>-->
							
							<strong class="product-name" data-toggle="popover" data-content="상품번호 : 1494898147" data-trigger="click" data-placement="bottom" data-original-title="" title="">${goodsBasic.GOODS_NAME}</strong>
						</div>
						<!-- description//end -->
						<div class="guide">
							<dl class="addon">
								<dt class="col-xs-6 col-md-5">고객 평가</dt>
								<dd class="col-xs-18 col-md-19">
									<div class="rating">
									<span class="ratio">
									  <span style="width:0%">
										  <span class="star"></span>
									  </span>
									</span>
									</div>
								</dd>
							</dl>
							<dl class="hits">
								<dt class="col-xs-6 col-md-5">상품 조회수</dt>
								<dd class="count col-xs-18 col-md-19">88&nbsp;Hit</dd>
							</dl>
						</div>
						<!-- guide//end -->
						<div class="price">
							<dl class="price-base">
								<dt class="col-xs-6 col-md-5">판매 가격</dt>
								<dd class="col-xs-18 col-md-19">
									<p class="was">
										29,000원
									</p>
									<p class="now">
										19,000원
									</p>
									<!--<div class="cabal-group">
										<span class="cabal">
											<span class="cabal-label">34%</span>
											<span class="icon icon-thunder-white"></span>
										</span>
										<span class="cabal">
											<span class="cabal-label">10,000원 할인</span>
										</span>
									</div>-->
								</dd>
							</dl>
							<!-- price-base//end -->
							<dl class="price-benefit-rating">
								<dt class="col-xs-6 col-md-5">레벨 할인가</dt>
								<dd class="col-xs-18 col-md-19">
									<div class="value">
										18,050원 ~
										19,000원
										<div class="benefit-description">
											<strong class="title"><span>레벨 할인가</span></strong>
											<ul class="list">
												<li>
													<span class="member-rating member-rating-tier01">WHITE</span>
													<span class="member-price">19,000</span>
												</li>
												<li>
													<span class="member-rating member-rating-tier01">YELLOW</span>
													<span class="member-price">18,810</span>
												</li>
												<li>
													<span class="member-rating member-rating-tier01">RED</span>
													<span class="member-price">18,810</span>
												</li>
												<li>
													<span class="member-rating member-rating-tier01">SILVER</span>
													<span class="member-price">18,620</span>
												</li>
												<li>
													<span class="member-rating member-rating-tier01">GOLD</span>
													<span class="member-price">18,430</span>
												</li>
												<li>
													<span class="member-rating member-rating-tier01">PLATINUM</span>
													<span class="member-price">18,240</span>
												</li>
												<li>
													<span class="member-rating member-rating-tier01">DIAMOND</span>
													<span class="member-price">18,050</span>
												</li>
											</ul>
											<button class="button" target="modal" data-size="sm" href="../service/member_benefit" data-label="레벨혜택 자세히 보기">
												<span class="button-label">레벨 할인가 자세히 보기</span>
											</button>
										</div>
										<!-- layer-description//end -->
									</div>
								</dd>
							</dl>
			
							
							<!-- price-benefit//end -->
							<dl class="price-coupon">
								<dt class="col-xs-6 col-md-5">추가 쿠폰가</dt>
								<dd class="col-xs-18 col-md-19">
									15,580원
									<a href="../goods/dncoupon?no=326" target="process" class="button">
										<span class="button-label">18% 추가 쿠폰</span>
									</a>
								</dd>
							</dl>
			
			
			
							<!-- price-coupon//end -->
							<dl class="price-benefit-new">
								<dt class="col-xs-6 col-md-5">
									<span>신규 회원가</span>
								</dt>
								<dd class="col-xs-18 col-md-19">12,580원
								<div class="cabal-group" style="display:inline-block; cursor:pointer;">
									<span class="cabal" style="display:block; border:1px solid #000; color:#000; margin-top:3px;">
										<a data-toggle="popover" data-content="[신규회원가]는 회원가입시 제공되는 축하적립금 3,000원을 적용한 금액입니다. ★주문시 적립금 조회>적립금 적용" data-trigger="hover" data-placement="bottom" data-original-title="" title=""><span class="cabal-label" style="color:#000;">신규회원가란?</span></a>
									</span>
								</div>
								</dd>
							</dl>
							<!-- price-benefit-new//end -->
			
						</div>
			
						<div class="benefit">
			            
			            
			            	<!-- delivery charge -->
							<dl class="delivery">
								<dt class="col-xs-6 col-md-5">배송비</dt>
								<dd class="col-xs-18 col-md-19">
									<b>2,500원</b> 30,000원 이상 무료배송
								</dd>
							</dl>
							<!--delivery charge-->
			                
			
							<dl class="price-earning">
								<dt class="col-xs-6 col-md-5">예상 적립금</dt>
								<dd class="col-xs-18 col-md-19">760원</dd>
							</dl>
							<!--
							<dl class="price-earning">
								<dt class="col-xs-6 col-md-5">적립 포인트</dt>
								<dd class="col-xs-18 col-md-19">4210&nbsp;P</dd>
							</dl>
							-->
			
							<dl class="installment">
								<dt class="col-xs-6 col-md-5">무이자 혜택</dt>
								<dd class="col-xs-18 col-md-19">
									<a href="../service/card_dc_info" target="modal" data-size="sm" class="button button-dimmed" data-label="무이자 할부 혜택 보기">카드 무이자 혜택 확인</a>
								</dd>
							</dl>
							<!-- installment//end -->
						</div>
						<div class="payco_info col-lg-24 row text-center" style="font-size:14px;font-weight:bold;line-height:20px;width:100%;margin:0;margin-bottom:10px;background-color:#ffc000;color:#fff;border-top:1px solid #ffc000;">
							<a href="/store/event?no=105"><img src="http://pic.styleindex.co.kr/skin/pshp/img/payco.png" style="margin-bottom:1px"> 생애 첫 결제시 3,500원 할인</a>
						</div>
						
						<div class="option">
							<dl>
								<dt class="col-xs-6 col-md-5">상품 옵션</dt>
								<dd class="col-xs-18 col-md-19">
									<div class="col-xs-24">
			<div class="optionSelect">
				
				<div class="selectbox">
					<div class="selectbox-data">
						<strong class="text">옵션 선택
						 </strong>
						<span class="icon icon-dropdown-gray-dark"></span>
					</div>
					<select id="option" onchange="setOption(this)">
						<option value="">옵션 선택
						</option><option value="15911124" optnm="XS" stock="23" price="19000">
						XS
						</option><option value="15911125" optnm="S" stock="30" price="19000">
						S
						</option><option value="15911126" optnm="M" stock="45" price="19000">
						M
						</option><option value="15911127" optnm="L" stock="30" price="19000">
						L
						</option><option value="15911128" optnm="XL" stock="23" price="19000">
						XL
					</option></select>
				</div>
			</div>
			
			<!-- 옵션박스 -->
			<div class="optionbox col-xs-24">
				<ul id="optionbox">
				</ul>
				<div id="totprice"></div>
			</div>
			
			<script>
			var totprice = 0;
			var r_optno = [];
			function setOption(obj){
				if (!chkSoldout(obj)) return;
				if ($("#option option:selected").attr("disabled")=="disabled"){
					alert("선택한 옵션은 품절된 상태입니다"); 
					$("#option").get(0).selectedIndex = 0;
					return;
				}
				var optno = $("#option option:selected").val();
				if (!optno || in_array(optno,r_optno)) return;
				var li = "<li><b>" + $("#option option:selected").attr("optnm") + "</b><input type='hidden' name='optno[]' value='" + optno + "'><input type='hidden' class='mstock' value='" + $("option:selected",$(obj)).attr("stock") + "'><input type='text' name='ea[]' value='1' class='input_ea' size='2' maxlength='3'> <span class='ea'><a class='btn-ea-up'><img src='/theme/pshp/img/btn_num_up.gif' alt='' /></a><a class='btn-ea-dn'><img src='/theme/pshp/img/btn_num_down.gif' alt='' /></a></span><span class='price'>" + comma($("option:selected",$(obj)).attr("price")) + "원</span><a href='#' optno='" + optno + "' class='btn-remove'><img src='/theme/pshp/img/btn_close.gif' alt='' /></a></li>";
				$("#optionbox").append(li);
				r_optno.push(optno);
				totprice += parseInt($("option:selected",$(obj)).attr("price"));
				$("#totprice").html(comma(totprice));
			}
			function chkSoldout(obj){
				if (obj.options[obj.selectedIndex].stock=="0"){
					alert("선택한 항목은 품절된 옵션입니다"); 
					obj.selectedIndex = 0;
					return false;
				}
				return true;
			}
			
			
			$("#optionbox").on("click", "li a.btn-remove", function(){
				$(this).parent().remove();
				var ritem = $(this).attr("optno");
				r_optno = $.grep(r_optno,function(v){ return v != ritem; });
				console.log(r_optno);
				event.preventDefault();
			});
			
			$("#optionbox").on("click", "li a.btn-ea-up", function(e) {
				var thisIdx = $(".btn-ea-up").index(this); 
				var inputEa = parseInt($(".input_ea").eq(thisIdx).val());
				var mStock = parseInt($(".mstock").eq(thisIdx).val()); 
			
			
				// 재고 수량 이상 주문 체크
				if(inputEa >= mStock) {
					alert(mStock+"개 이상 주문하실 수 없습니다.");
					return false ;
				} else {
					change_ea(this,1); 
					return false ;
				}
			});
			
			$("#optionbox").on("keyup", "li input.input_ea", function(e){
				var thisIdx = $(".input_ea").index(this); 
				var mStock = parseInt($(".mstock").eq(thisIdx).val()); 
			
				
				$(this).val($(this).val().replace(/[^0-9]/g,""));
			
				if($(this).val() == "" || parseInt($(this).val()) <= 0) {
					$(this).val("1");
					return false ;
				}
			
				if(parseInt($(this).val()) > mStock) {
					alert(mStock+"개 이상 주문하실 수 없습니다.");
					$(this).val(mStock);
					return false ;
				}
			});
			
			$("#optionbox").on("click", "li a.btn-ea-dn", function(e) {
				change_ea(this,-1); 
				return false ;
			});
			
			</script>
									</div>
			
								</dd>
							</dl>
						</div>
			
			
						<div class="hashTag-wrap">
							<a href="/store/search?stxt=SHORT+T-SHIRTS" class="hashTag">
								<span class="hashTag-labl">#SHORT T-SHIRTS</span>
							</a>
							<a href="/store/search?stxt=%ED%8C%AC%EC%BD%A7+SHORT+T-SHIRTS" class="hashTag">
								<span class="hashTag-labl">#팬콧 SHORT T-SHIRTS</span>
							</a>
							<a href="/store/search?stxt=PANCOAT+SHORT+T-SHIRTS" class="hashTag">
								<span class="hashTag-labl">#PANCOAT SHORT T-SHIRTS</span>
							</a>
							<a href="/store/search?stxt=%ED%8C%AC%EC%BD%A7" class="hashTag">
								<span class="hashTag-labl">#팬콧</span>
							</a>
							<a href="/store/search?stxt=PANCOAT" class="hashTag">
								<span class="hashTag-labl">#PANCOAT</span>
							</a>
						</div>
					</div>
			
					<div class="section-foot">
						<div class="button-group">
								<a href="javascript:_exec('buy');" class="button large col-xs-12">
									<span class="button-label">바로구매</span>
								</a>
								<a href="javascript:_exec('cart');" class="button button-dimmed large col-xs-12">
									<span class="button-label">장바구니</span>
								</a>
						</div>
					</div>
				</section>
				<!-- product-view-information//end -->
				</div>
				</div>
				
				<section class="product-related section col-xs-24 col-lg-7">
					<div class="product-related-list box-shadow">
						
						<div class="section-head left border">
							<h3>관련상품 추천</h3>
						</div>
						<div class="section-body">
							<ul class="catalog">
								<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
									<div class="thumbnail">
										<a href="/goods/1487811456">
											<div data-original="http://pic.styleindex.co.kr/g/s/148/1487811456" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/148/1487811456&quot;);" class="lazy">
												<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
											</div>
										</a>
									</div>
			                       <!-- <div class="caption">
			                            <p class="name">
			                                <a href="/goods/1487811456">★2017 봄신상 가격인하★멀티 플라워 스트라이프 세미오버 롱슬리브(HEATHER GREY)_PPOEPRL20V</a>
			                            </p>
			                            <p class="price">
			                                <span class="now"><span class="label sr-only">할인가격:</span>29,000<span class="currency">원</span></span>
			                            </p>
			                        </div>-->
								</li>
								<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
									<div class="thumbnail">
										<a href="/goods/1373422631">
											<div data-original="http://pic.styleindex.co.kr/g/s/137/1373422631" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/137/1373422631&quot;);" class="lazy">
												<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
											</div>
										</a>
									</div>
			                       <!-- <div class="caption">
			                            <p class="name">
			                                <a href="/goods/1373422631">[ONLINE FAMILY SALE]팝패롯 라글란 티셔츠 (U-1/HU) (PINE YELLOW)_PPOHURS74U</a>
			                            </p>
			                            <p class="price">
			                                <span class="now"><span class="label sr-only">할인가격:</span>13,000<span class="currency">원</span></span>
			                            </p>
			                        </div>-->
								</li>
								<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
									<div class="thumbnail">
										<a href="/goods/1368176359">
											<div data-original="http://pic.styleindex.co.kr/g/s/136/1368176359" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/136/1368176359&quot;);" class="lazy">
												<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
											</div>
										</a>
									</div>
			                       <!-- <div class="caption">
			                            <p class="name">
			                                <a href="/goods/1368176359">[ONLINE FAMILY SALE]팝아이즈 멀티스트라이프 티셔츠 (U-1/HU) (MACAWS RED)_PPOHURS70U</a>
			                            </p>
			                            <p class="price">
			                                <span class="now"><span class="label sr-only">할인가격:</span>13,000<span class="currency">원</span></span>
			                            </p>
			                        </div>-->
								</li>
								<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
									<div class="thumbnail">
										<a href="/goods/1487135102">
											<div data-original="http://pic.styleindex.co.kr/g/s/148/1487135102" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/148/1487135102&quot;);" class="lazy">
												<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
											</div>
										</a>
									</div>
			                       <!-- <div class="caption">
			                            <p class="name">
			                                <a href="/goods/1487135102">★2017 봄신상★멀티 모크넥 7부 세미오버 크루넥(HAZELNUT)_PPOEPCR07V</a>
			                            </p>
			                            <p class="price">
			                                <span class="now"><span class="label sr-only">할인가격:</span>39,000<span class="currency">원</span></span>
			                            </p>
			                        </div>-->
								</li>
								<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
									<div class="thumbnail">
										<a href="/goods/1368690397">
											<div data-original="http://pic.styleindex.co.kr/g/s/136/1368690397" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/136/1368690397&quot;);" class="lazy">
												<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
											</div>
										</a>
									</div>
			                       <!-- <div class="caption">
			                            <p class="name">
			                                <a href="/goods/1368690397">[ONLINE FAMILY SALE]팝패롯 우드컷 티셔츠 (V-1/HU) (ORCHID VIOLET)_PPOHURS30U</a>
			                            </p>
			                            <p class="price">
			                                <span class="now"><span class="label sr-only">할인가격:</span>13,000<span class="currency">원</span></span>
			                            </p>
			                        </div>-->
								</li>
								<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
									<div class="thumbnail">
										<a href="/goods/1368690391">
											<div data-original="http://pic.styleindex.co.kr/g/s/136/1368690391" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/136/1368690391&quot;);" class="lazy">
												<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
											</div>
										</a>
									</div>
			                       <!-- <div class="caption">
			                            <p class="name">
			                                <a href="/goods/1368690391">[ONLINE FAMILY SALE]팝패롯 우드컷 티셔츠 (V-1/HU) (SPARKLING GREEN)_PPOHURS30U</a>
			                            </p>
			                            <p class="price">
			                                <span class="now"><span class="label sr-only">할인가격:</span>13,000<span class="currency">원</span></span>
			                            </p>
			                        </div>-->
								</li>
								<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
									<div class="thumbnail">
										<a href="/goods/1489119934">
											<div data-original="http://pic.styleindex.co.kr/g/s/148/1489119934" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/148/1489119934&quot;);" class="lazy">
												<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
											</div>
										</a>
									</div>
			                       <!-- <div class="caption">
			                            <p class="name">
			                                <a href="/goods/1489119934">★2017 봄신상 가격인하★멀티 얌얌 클래식 럭비 8부티셔츠(HEATHER GREY)_PPOEPRM03V</a>
			                            </p>
			                            <p class="price">
			                                <span class="now"><span class="label sr-only">할인가격:</span>29,000<span class="currency">원</span></span>
			                            </p>
			                        </div>-->
								</li>
								<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
									<div class="thumbnail">
										<a href="/goods/1461054466">
											<div data-original="http://pic.styleindex.co.kr/g/s/146/1461054466" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/146/1461054466&quot;);" class="lazy">
												<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
											</div>
										</a>
									</div>
			                       <!-- <div class="caption">
			                            <p class="name">
			                                <a href="/goods/1461054466">팬콧 멀티 메세지 7부티셔츠 (LIGHT MINT)_PPOSPRM73U</a>
			                            </p>
			                            <p class="price">
			                                <span class="now"><span class="label sr-only">할인가격:</span>19,900<span class="currency">원</span></span>
			                            </p>
			                        </div>-->
								</li>
							</ul>
						</div>
					</div>
					<!-- product-related-list//end -->
			
					<style>
					.size_recomm {background:#fff; padding:10px; text-align:center; font-size:1.2em;}
					.size_recomm div {margin:0 2px;}
					</style>
			
					<div class="product-related-event box-shadow storeCatalog event product-view-reviews-list">
			
						<div class="section-head left">
							<h3>사이즈 추천</h3> (구매한 회원님의 정보입니다. 참고용으로만 사용하세요)
						</div>
						<div>
							<div class="section-body" style="height:200px; overflow-y :auto;">
								<ul class="list-dropdown">
									<li class="size_recomm">
										<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">163cm</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">50kg</div>
										<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">M</b></div>
									</li>
									<li class="size_recomm">
										<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">176cm</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">60kg</div>
										<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">M</b></div>
									</li>
									<li class="size_recomm">
										<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">158cm</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">65kg</div>
										<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">XL</b></div>
									</li>
									<li class="size_recomm">
										<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">158cm</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">51kg</div>
										<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">S</b></div>
									</li>
									<li class="size_recomm">
										<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">161cm</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">65kg</div>
										<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">M</b></div>
									</li>
									<li class="size_recomm">
										<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">155cm</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">50kg</div>
										<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">S</b></div>
									</li>
									<li class="size_recomm">
										<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">173cm</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">55kg</div>
										<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">M</b></div>
									</li>
									<li class="size_recomm">
										<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">167cm</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">65kg</div>
										<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">L</b></div>
									</li>
									<li class="size_recomm">
										<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">162cm</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">46kg</div>
										<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">S</b></div>
									</li>
									<li class="size_recomm">
										<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">175cm</div>
										<div class="col-md-5 col-xs-5 btn btn-default btn-xs">78kg</div>
										<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">L</b></div>
									</li>
								</ul>
							</div>
						</div>
			
			        </div>
			
					<!--
					<div class="product-related-event box-shadow storeCatalog event">
						<div class="section-head left border">
							<h3>추천 기획전 / 컨텐츠</h3>
						</div>
						<div class="section-body">
							<div class="featured-banner-half _edit_box" data-code="event_goodsview">
								<ul class="catalog row">
									<li class="catalog-item col-xs-12 col-sm-6 col-lg-12">
										<div class="thumbnail">
											<a href="http://shop.pancoat.com/store/event?no=135">
												<img data-original="/theme/pshp/_conf/banner/event_goodsview/0508_썸머프리뷰_sum.jpg" src="/theme/pshp/_conf/banner/event_goodsview/0508_썸머프리뷰_sum.jpg" class="for-ie8 img-responsive lazy" width="500" height="500">
												<div data-original="/theme/pshp/_conf/banner/event_goodsview/0508_썸머프리뷰_sum.jpg" style="display: block; background-image: url('/theme/pshp/_conf/banner/event_goodsview/0508_썸머프리뷰_sum.jpg');" class="lazy">
													<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
												</div>
											</a>
										</div>
										<div class="caption">
											<p class="title">SUMMER PREVIEW
			</p>
											<p class="subTitle"></p>
										</div>
									</li>
									<li class="catalog-item col-xs-12 col-sm-6 col-lg-12">
										<div class="thumbnail">
											<a href="http://pancoatshop.com/store/event?no=130">
												<img data-original="/theme/pshp/_conf/banner/event_goodsview/sum130.jpg" src="/theme/pshp/_conf/banner/event_goodsview/sum130.jpg" class="for-ie8 img-responsive lazy" width="500" height="500">
												<div data-original="/theme/pshp/_conf/banner/event_goodsview/sum130.jpg" style="display: block; background-image: url('/theme/pshp/_conf/banner/event_goodsview/sum130.jpg');" class="lazy">
													<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
												</div>
											</a>
										</div>
										<div class="caption">
											<p class="title">19/29/39 균일가</p>
											<p class="subTitle"></p>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					-->
				</section>
				<!-- product-regard-recommend-list//end -->
			
			</div>
			</form> 
			
			<script>
			function _exec(mode){
				
				if(mode == 'restock'){
			
					document.location.href="./restock";
			
				}else if (mode!="wishlist"){
					if (document.getElementsByName("optno[]").length==0){ alert("옵션을 선택해주세요"); return; }
			
					var fm = document.fmOrder;
					fm.mode.value = mode;
					fm.target = "_self";
					fm.action = "../order/cart";
					//if (mode=="wishlist") fm.action = "../mypage/wishlist";
					fm.submit();
			
				}
			}
			</script>
			
			
			        <!-- product-view-top//end -->
			    </div>
			    <!-- product-view-top-wrapper//end -->
			
				<div class="product-view-bottom-wrapper row">
			        <div class="product-view-detail section col-xs-24 col-md-17">
			
						<!-- 상세 상단 띠배너 -->
						<a href="http://shop.pancoat.com/store/event?no=135"><img src="http://pancoat.com/theme/pshp/img/170508_asale.jpg" class="img-responsive"></a>
			
			            <section class="detail box-shadow">
			                <div class="section-body">
			                    
								<div align="center">
								<table border="0" cellspacing="0" cellpadding="0" xwidth="800" align="center">
			<tbody>
			<tr>
			<td><img src="http://pic.styleindex.co.kr/www/pancoat/PPOEURS91PC6.jpg" xwidth="800"></td></tr>
			<tr>
			<td><img src="http://pic.styleindex.co.kr/www/pancoat/2017_PANCOAT_S_TOP.jpg" xwidth="800"></td></tr>
			<tr>
			<td><img src="http://pic.styleindex.co.kr/www/pancoat/PPOEURS91PC6_01.jpg" xwidth="800"></td></tr>
			<tr>
			<td><img src="http://pic.styleindex.co.kr/www/pancoat/PPOEURS91PC6_02.jpg" xwidth="800"></td></tr>
			<tr>
			<td><img src="http://pic.styleindex.co.kr/www/pancoat/PPOEURS91PC6_03.jpg" xwidth="800"></td></tr>
			<tr>
			<td><img src="http://pic.styleindex.co.kr/www/pancoat/PPOEURS91PC6_04.jpg" xwidth="800"></td></tr>
			<tr>
			<td><img src="http://pic.styleindex.co.kr/www/pancoat/2017_PANCOAT_INFO.jpg" xwidth="800"></td></tr></tbody></table>
								</div>
			
			                    <div class="information-goods">
			                        <dl>
			                            <dt>색상</dt>
			                            <dd></dd>
			                            <dt>제조년월</dt>
			                            <dd>2017.04</dd>
			                            <dt>제조사/원산지</dt>
			                            <dd>CHINA</dd>
										<dt>사이즈</dt>
			                            <dd>XS,S,M,L,XL</dd>
			                            <br>
										<dt>제품소재</dt>
			                            <dd>면100%</dd>
			                            <dt>세탁방법 및 주의사항</dt>
			                            <dd>손세탁 소재의 특성상 심한마찰(안전밸트,가방착용등)은 보푸라기의 원인이 됨</dd>
										<br>
			                            <dt>A/S안내</dt>
			                            <dd>팬콧 고객만족센터 1566-1358</dd>
			                            <dt>품질보증서 제공</dt>
										<dd>미제공</dd>
			                            <dt>품질보증 기준</dt>
			                            <dd>**품질보증기간 구입일부터1년 - 피해보상규정: 원단/부자재/봉제 불량인 경우, 세탁사고의 경우(구입일로부터 1년이내분은 무상수선 및 동일가격, 동일제품을 원칙으로 교환, 동종상품이나 동일제품이 없는경우에만 환불 가능), 사이즈 부정확 및 디자인/색상불만의 경우(구입일로부터 7일이내로써 제품에 손상이 없을 시, 동일가격, 동일제품을 원칙으로 교환, 구입가 환불가능) - 보상제외: 소비자 부주의에 의한 제품훼손, 세탁 잘못으로 인한 변형 및 보증기간(2년까지)</dd>
			                        </dl>
			                    </div>
			                </div>
			            </section>
			
			        </div>
			        <!-- product-view-detail//end -->
			
			<!-- 20160407 -->
			<style>
			@media (min-width: 1440px){
				.product-related .product-related-event .catalog .catalog-item:nth-child(3), .product-related .product-related-event .catalog .catalog-item:last-child {display:block;}
			}
			</style>
			
					<section class="product-related section col-xs-24 col-lg-7" style="margin-top:-20px;">
						<div class="product-related-event box-shadow storeCatalog event">
							<div class="section-head left border">
								<h3>추천 기획전 / 컨텐츠</h3>
							</div>
							<div class="section-body">
								<div class="featured-banner-half _edit_box" data-code="event_goodsview">
									<ul class="catalog row">
										<li class="catalog-item col-xs-12 col-sm-6 col-lg-12">
											<div class="thumbnail">
												<a href="http://shop.pancoat.com/store/event?no=135">
													<img data-original="/theme/pshp/_conf/banner/event_goodsview/0508_썸머프리뷰_sum.jpg" src="/theme/pshp/_conf/banner/event_goodsview/0508_썸머프리뷰_sum.jpg" class="for-ie8 img-responsive lazy" width="500" height="500">
													<div data-original="/theme/pshp/_conf/banner/event_goodsview/0508_썸머프리뷰_sum.jpg" style="display: block; background-image: url(&quot;/theme/pshp/_conf/banner/event_goodsview/0508_썸머프리뷰_sum.jpg&quot;);" class="lazy">
														<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
													</div>
												</a>
											</div>
											<div class="caption">
												<p class="title">SUMMER PREVIEW
			</p>
												<p class="subTitle"></p>
											</div>
										</li>
										<li class="catalog-item col-xs-12 col-sm-6 col-lg-12">
											<div class="thumbnail">
												<a href="http://pancoatshop.com/store/event?no=130">
													<img data-original="/theme/pshp/_conf/banner/event_goodsview/sum130.jpg" src="/theme/pshp/_conf/banner/event_goodsview/sum130.jpg" class="for-ie8 img-responsive lazy" width="500" height="500">
													<div data-original="/theme/pshp/_conf/banner/event_goodsview/sum130.jpg" style="display: block; background-image: url(&quot;/theme/pshp/_conf/banner/event_goodsview/sum130.jpg&quot;);" class="lazy">
														<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
													</div>
												</a>
											</div>
											<div class="caption">
												<p class="title">19/29/39 균일가</p>
												<p class="subTitle"></p>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</section>
			
			        <div class="col-xs-24 col-md-7">
			            <section class="product-view-reviews-list section box-shadow">
			                <div class="section-head left">
			                    <h3>구매후기</h3>
			                </div>
			                <div><!-- ajax_review_list 감싸는 div 삭제 불가 -->
			                    <div id="ajax_review_list"><div class="section-body">
				<ul class="list-dropdown">
				</ul>
			
				<div class="page-navigator">
					<div class="page-navigator-horizon">
					
					</div>
				</div>
			
			</div>
			
			<!-- ajax pager 
			<div class="page-navigator">
				<div class="page-navigator-horizon col-sm-14 col-sm-offset-5 col-lg-24 col-lg-offset-0">
					<a class="prev col-xs-6 btn-page-prev">prev</a>
					<div class="page-number col-xs-12">
			
					</div>
					<a class="next col-xs-6 btn-page-next">next</a>
				</div>
			</div>
			--></div>
			                </div>
			                <!--
			                <div class="page-navigator">
			                    <div class="page-navigator-horizon col-sm-14 col-sm-offset-5 col-lg-24 col-lg-offset-0">
			                        <a class="prev col-xs-6 btn-page-prev">prev</a>
			                        <div class="page-number col-xs-12">
			
			                        </div>
			                        <a class="next col-xs-6 btn-page-next">next</a>
			                    </div>
			                </div>
			                -->
			                <div class="section-foot">
			                    <a href="w_review?goodsno=1494898147" class="button" target="modal" data-size="md" data-label="구매 후기 작성">
			                        <span class="button-label">구매 후기 작성</span>
			                    </a>
			                </div>
			            </section>
			            <!-- product-view-reviews-list//end -->
			            <section class="product-view-qna-list section box-shadow">
			                <div class="section-head left">
			                    <h3>상품문의</h3>
			                </div>
			                <div><!-- ajax_review_list 감싸는 div 삭제 불가 -->
			                    <div id="ajax_qna_list"><div class="section-body">
				<ul class="list-dropdown">
				</ul>
			
				<div class="page-navigator">
					<div class="page-navigator-horizon">
						
					</div>
				</div>
			</div></div>
			                </div>
			                <div class="section-foot">
			                    <a href="w_qna?goodsno=1494898147" class="button" target="modal" data-size="md" data-label="상품 문의 작성">
			                        <span class="button-label">상품 문의 작성</span>
			                    </a>
			                </div>
			            </section>
			            <!-- product-view-qna-list//end -->
			            <section class="product-view-facebook-comment collapse">
			                <div class="heading-title">
			                    <h3>페이스북 댓글</h3>
			                </div>
			                <!-- heading-title//end -->
			                <div class="list">
			                    <!-- 페이스북 댓글 api -->
			                </div>
			            </section>
			            <!-- product-view-facebook-comment//end -->
			            <section class="product-view-service section box-shadow">
			                <div class="section-body">
			                    <div class="guide">
			                        <div class="customer-center">
			                            <strong>고객센터</strong>
			                            <ul>
			                                <li>상품문의는 각 상품의 Q&amp;A를 이용하시면 가장 빠릅니다.</li>
			                                <li>평일 : 오전 10시 ~ 오후 5시</li>
			                                <li>점심시간 : 오후 12시 30분 ~ 오후 1시 30분</li>
			                                <li>토, 일 공휴일 휴무</li>
			                                <li><em>반품 주소 : 12814 경기도 광주시 도척면 도척로 376-68 MK물류</em></li>
			                            </ul>
			                        </div>
			                        <!-- customer-center//end -->
			                        <div class="delivery">
			                            <strong>배송안내</strong>
			                            <ul>
			                                <li>배송기간은 주문일(무통장입금은 결제완료일)로부터 영업일 기준 1일~5일정도 걸립니다.</li>
			                                <li>제작기간이 별도로 소요되는 상품의 경우에는 상품설명에 있는 제작기간과 배송시기를 숙지해 주시기 바랍니다.</li>
			                                <li>제주도 등 도서산간 지역은 추가배송비 입금 요청이 있을 수 있습니다.</li>
			                            </ul>
			                        </div>
			                        <!-- delivery//end -->
			                        <div class="return">
			                            <strong>교환/환불/AS</strong>
			                            <ul>
			                                <li>상품수령일로부터 7일 이내 반품/환불 가능합니다.</li>
			                                <li>변심반품의 경우 왕복배송비를 차감한 금액이 환불되며, 제품 및 포장 상태가 재판매 가능하여야 합니다.</li>
			                                <li>상품 불량인 경우는 배송비를 포함한 전액이 환불됩니다.</li>
			                                <li>출고 이후 환불요청시 상품 회수 후 처리됩니다.</li>
			                                <li>구매자가 미성년자인 경우에는 상품 구입 시 법정대리인이 동의하지 아니하면 미성년자 본인 또는 법정대리인이 구매취소 할 수 있습니다.</li>
			                            </ul>
			                        </div>
			                        <!-- return//end -->
			                    </div>
			                    <!-- guide//end -->
			                </div>
			                <!-- contents//end -->
			            </section>
			            <!-- product-view-service//end -->
			        </div>
			        <!-- //end -->
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