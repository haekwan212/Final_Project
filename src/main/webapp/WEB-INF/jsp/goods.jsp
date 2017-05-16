<div class="modal-body"><style>
.popover-content {font-size:12px !important;}
.label1 {border-radius: 0; padding: 5px; font-size: 11px; display: inline;font-weight: bold;line-height: 1;color: #fff;text-align: center;
	white-space: nowrap;vertical-align: middle !important;}
.label-primary1 {background-color: #337ab7;}
</style>

<form name="fmOrder">
<input type="hidden" name="mode">
<input type="hidden" name="goodsno" value="1491899644">

<div class="product-view-main-sub row">
	<div class="col-lg-24">
	<div class="box-wrap box-shadow">
	<section class="product-view-thumbnail section col-xs-24 col-sm-13">
		<div class="wrap">
			<div class="thumbnail">
				<img img_layer="http://pic.styleindex.co.kr/g/m/149/1491899644" goodsno="1491899644" src="http://pic.styleindex.co.kr/g/m/149/1491899644" width="500" class="img-responsive">
			</div>
			<!-- thumbnail//end -->
			<!-- thumbnail-wrap//end -->

			<!-- share-sns//end -->
		</div>
	</section>
	<!-- product-view-thumbnail//end -->

	<section class="product-view-information section col-xs-24 col-sm-11">
		<div class="section-body">
			<div class="description">
				<!--<em class="season">2015 F/W</em>-->
				
				<strong class="product-name" data-toggle="popover" data-content="상품번호 : 1491899644" data-trigger="hover" data-placement="bottom">팬콧 플라워 레터링 원피스(MIDNIGHT BLACK)_PPOEPOP02M</strong>
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
					<dd class="count col-xs-18 col-md-19">1156&nbsp;Hit</dd>
				</dl>
			</div>
			<!-- guide//end -->
			<div class="price">
				<dl class="price-base">
					<dt class="col-xs-6 col-md-5">판매 가격</dt>
					<dd class="col-xs-18 col-md-19">
						<p class="now">
							79,000원
						</p>
					</dd>
				</dl>
			</div>
			<div class="benefit">
            	<!-- delivery charge -->
				<dl class="delivery">
					<dt class="col-xs-6 col-md-5">배송비</dt>
					<dd class="col-xs-18 col-md-19">
						<b>무료배송</b> 
					</dd>
				</dl>
				<!--delivery charge-->
                

				<dl class="price-earning">
					<dt class="col-xs-6 col-md-5">예상 적립금</dt>
					<dd class="col-xs-18 col-md-19">2,370원</dd>
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
						<a href="../service/card_dc_info" target="modal-inner" data-size="sm" class="button button-dimmed" data-label="무이자 할부 혜택 보기">카드 무이자 혜택 확인</a>
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
			</option><option value="15820211" optnm="S" stock="10" price="79000">
			S
			(10개 남음)
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

			<div class="action">
				<div class="row">
					<div class="col-xs-12">
						<a href="../goods/1491899644" class="button button-dimmed col-xs-24">
							<span class="button-label">상품상세보기</span>
						</a>
					</div>
					<div class="col-xs-12">
						<a href="../brand/96" class="button button-dimmed col-xs-24">
							<span class="button-label">브랜드바로가기</span>
						</a>
					</div>
				</div>
			</div>

			<div class="hashTag-wrap">
				<a href="/store/search?stxt=ONEPIECE" class="hashTag">
					<span class="hashTag-labl">#ONEPIECE</span>
				</a>
				<a href="/store/search?stxt=%ED%8C%AC%EC%BD%A7+ONEPIECE" class="hashTag">
					<span class="hashTag-labl">#팬콧 ONEPIECE</span>
				</a>
				<a href="/store/search?stxt=PANCOAT+ONEPIECE" class="hashTag">
					<span class="hashTag-labl">#PANCOAT ONEPIECE</span>
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
							<a href="/goods/1455093199">
								<div data-original="http://pic.styleindex.co.kr/g/s/145/1455093199" style="background-image: url('http://pic.styleindex.co.kr/g/s/145/1455093199');" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1455093199">세사미 스트릿 클래식 원피스 (GALAXY NAVY)_PPOSPOP61S</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>40,000<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1454479152">
								<div data-original="http://pic.styleindex.co.kr/g/s/145/1454479152" style="background-image: url('http://pic.styleindex.co.kr/g/s/145/1454479152');" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1454479152">팝테디 메시지 윈피스 (HEATHER GREY)_PPOSPOP01W</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>22,600<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1490661321">
								<div data-original="http://pic.styleindex.co.kr/g/s/149/1490661321" style="background-image: url('http://pic.styleindex.co.kr/g/s/149/1490661321');" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1490661321">멀티 전판 A라인 원피스(STRAWBERRY MILK PINK)_PPOEPOP20V</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>69,000<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1487051014">
								<div data-original="http://pic.styleindex.co.kr/g/s/148/1487051014" style="background-image: url('http://pic.styleindex.co.kr/g/s/148/1487051014');" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1487051014">★2017 봄신상 가격인하★멀티 캐릭터 플라워 후디 원피스(PALE DOGWOOD)_PPOEPOP01M</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>48,300<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1490661320">
								<div data-original="http://pic.styleindex.co.kr/g/s/149/1490661320" style="background-image: url('http://pic.styleindex.co.kr/g/s/149/1490661320');" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1490661320">멀티 전판 A라인 원피스(SILENT NAVY)_PPOEPOP20V</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>69,000<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1455092885">
								<div data-original="http://pic.styleindex.co.kr/g/s/145/1455092885" style="background-image: url('http://pic.styleindex.co.kr/g/s/145/1455092885');" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1455092885">세사미 스트릿 라글란 원피스 (DAZZLING BLUE)_PPOSPOP60S</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>22,600<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1452659565">
								<div data-original="http://pic.styleindex.co.kr/g/s/145/1452659565" style="background-image: url('http://pic.styleindex.co.kr/g/s/145/1452659565');" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1452659565">팬콧 이큅먼트 원피스 (MIDNIGHT BLACK)_PPOSPOP03W</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>42,000<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1472618965">
								<div data-original="http://pic.styleindex.co.kr/g/s/147/1472618965" style="background-image: url('http://pic.styleindex.co.kr/g/s/147/1472618965');" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1472618965">팬콧 인디언 패치 원피스 (MIDNIGHT BLACK)_PPOSAOP06W</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>48,300<span class="currency">원</span></span>
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
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">XS</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">103cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">155kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">S</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">1cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">1kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">S</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">155cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">40kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">XS</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">180cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">90kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">S</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">160cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">50kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">S</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">155cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">50kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">S</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">165cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">100kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">S</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">175cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">65kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">XS</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-danger btn-xs">여성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">145cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">37kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">XS</b></div>
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

<script>modal_label("상품 PREVIEW");</script>
</div>
<div class="modal-foot">
		</div>