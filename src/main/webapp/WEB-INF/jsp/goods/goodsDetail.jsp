<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
                    <option value="">3차 분류</option>
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
<input type="hidden" name="goodsno" value="1427073649">

<div class="product-view-main-sub row">
	<div class="col-lg-24">
	<div class="box-wrap box-shadow">
	<section class="product-view-thumbnail section col-xs-24 col-sm-13">
		<div class="wrap">
			<div class="thumbnail">
				<img img_layer="/SIRORAGI/file/goodsFile/${goodsBasic.GOODS_THUMBNAIL}" goodsno="${goodsBasic.GOODS_NUMBER }" src="/SIRORAGI/file/goodsFile/${goodsBasic.GOODS_THUMBNAIL}" width="500" class="img-responsive">
			</div>
			<!-- thumbnail//end -->
			<!-- thumbnail-wrap//end -->

			<div class="addon">
				<a href="https://www.facebook.com/sharer/sharer.php?u=http://www.pancoat.com/goods/1427073649" class="button button-ghost" onclick="postToFeed();return false;">
					<span class="icon icon-facebook"></span>
				</a>
				<a href="https://twitter.com/intent/tweet?url=http://www.pancoat.com/goods/1427073649" class="button button-ghost">
					<span class="icon icon-twitter"></span>
				</a>
				<a href="https://story.kakao.com/s/share?url=http://www.pancoat.com/goods/1427073649" class="button button-ghost" style="border-left:0;">
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
				
				<strong class="product-name" data-toggle="popover" data-content="상품번호 : ${goodsBasic.GOODS_NUMBER}" data-trigger="hover" data-placement="bottom" data-original-title="" title="">${goodsBasic.GOODS_NAME}</strong>
			</div>
			<!-- description//end -->
			<div class="guide">
				<dl class="addon">
					<dt class="col-xs-6 col-md-5">고객 평가</dt>
					<dd class="col-xs-18 col-md-19">
						<div class="rating">
						<span class="ratio">
						  <span style="width:90%">
							  <span class="star"></span>
						  </span>
						</span>
						</div>
					</dd>
				</dl>
				<dl class="hits">
					<dt class="col-xs-6 col-md-5">상품 조회수</dt>
					<dd class="count col-xs-18 col-md-19">${goodsBasic.GOODS_COUNT}Hit</dd>
				</dl>
			</div>
			<!-- guide//end -->
			<div class="price">
				<dl class="price-base">
					<dt class="col-xs-6 col-md-5">판매 가격</dt>
					<dd class="col-xs-18 col-md-19">
									<c:if test="${goodsBasic.GOODS_DCPRICE eq null}">
									<p class="now">
										<fmt:formatNumber value="${goodsBasic.GOODS_PRICE}" type="number"/>원
									</p>
									</c:if>
									<c:if test="${goodsBasic.GOODS_DCPRICE ne null}">
									<p class="was">
										<fmt:formatNumber value="${goodsBasic.GOODS_PRICE}" type="number"/>원
									</p>
									<p class="now">
										<fmt:formatNumber value="${goodsBasic.GOODS_DCPRICE}" type="number"/>원
									</p>
									</c:if>
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
					<dt class="col-xs-6 col-md-5">간략 설명</dt>
						<dt class="col-xs-18">
						${goodsBasic.GOODS_DETAIL}</dt>
				</dl>

			</div>

			<div class="benefit">
            
            
            	<!-- delivery charge -->
				<dl class="delivery">
					<dt class="col-xs-6 col-md-5">배송비</dt>
					<dd class="col-xs-18 col-md-19">
						<b>2,500원</b> (30,000원 이상 무료배송)
					</dd>
				</dl>
				<!--delivery charge-->
                

				<dl class="price-earning">
					<dt class="col-xs-6 col-md-5">예상 적립금</dt>
					<c:if test="${goodsBasic.GOODS_DCPRICE eq null}">
						<dd class="col-xs-18 col-md-19"> <fmt:formatNumber value="${goodsBasic.GOODS_PRICE/100}" type="number"/>원</dd>
					</c:if>
					<c:if test="${goodsBasic.GOODS_DCPRICE ne null}">
						<dd class="col-xs-18 col-md-19"> <fmt:formatNumber value="${goodsBasic.GOODS_DCPRICE/100}" type="number"/>원</dd>
					</c:if>
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
			</option>
			<c:forEach var="goodsDetail"  items="${goodsDetail}" varStatus="stat">
				<c:if test="${goodsDetail.GOODS_AMOUNT ne 0}">
					<c:if test="${goodsBasic.GOODS_DCPRICE ne null }">
						<option value="15911124" optnm="${goodsDetail.GOODS_SIZE }" stock="${goodsDetail.GOODS_AMOUNT }" price="${goodsBasic.GOODS_DCPRICE }">
						${goodsDetail.GOODS_COLOR } - ${goodsDetail.GOODS_SIZE } (${goodsDetail.GOODS_AMOUNT }개)
						</option>
					</c:if>
					<c:if test="${goodsBasic.GOODS_DCPRICE eq null }">
						<option value="15911124" optnm="${goodsDetail.GOODS_SIZE }" stock="${goodsDetail.GOODS_AMOUNT }" price="${goodsBasic.GOODS_PRICE }">
						${goodsDetail.GOODS_COLOR } - ${goodsDetail.GOODS_SIZE } (${goodsDetail.GOODS_AMOUNT }개)
						</option>
					</c:if>
				</c:if>
				<c:if test="${goodsDetail.GOODS_AMOUNT eq 0}">
					<option value="15911124" optnm="XS" stock="0" price="19000" disabled="">
					${goodsDetail.GOODS_COLOR } - ${goodsDetail.GOODS_SIZE } (품절)
					</option>
				</c:if>
			</c:forEach>
		</select>
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
	var li = "<li><b>" + $("#option option:selected").attr("optnm") + "</b><input type='hidden' name='optno[]' value='" + optno + "'><input type='hidden' class='mstock' value='" + $("option:selected",$(obj)).attr("stock") + "'><input type='text' name='ea[]' value='1' class='input_ea' size='2' maxlength='3'> <span class='ea'><a class='btn-ea-up'><img src='/SIRORAGI/theme/pshp/img/btn_num_up.gif' alt='' /></a><a class='btn-ea-dn'><img src='/SIRORAGI/theme/pshp/img/btn_num_down.gif' alt='' /></a></span><span class='price'>" + comma($("option:selected",$(obj)).attr("price")) + "원</span><a href='#' optno='" + optno + "' class='btn-remove'><img src='/SIRORAGI/theme/pshp/img/btn_close.gif' alt='' /></a></li>";
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

						<div class="col-xs-11 action">
							<a href="../goods/restock?goodsno=1427073649" target="modal" data-size="sm" data-label="재입고 요청" class="button button-dimmed">
								<span class="button-label">재입고시 문자 받기</span>
							</a>
						</div>
					</dd>
				</dl>
			</div>


			<div class="hashTag-wrap">
				<a href="/store/search?stxt=HOODIES" class="hashTag">
					<span class="hashTag-labl">#${goodsBasic.GOODS_CATEGORY2 }</span>
				</a>
				<a href="/store/search?stxt=%ED%8C%AC%EC%BD%A7+HOODIES" class="hashTag">
					<span class="hashTag-labl">#실오라기 ${goodsBasic.GOODS_CATEGORY2 }</span>
				</a>
				<a href="/store/search?stxt=PANCOAT+HOODIES" class="hashTag">
					<span class="hashTag-labl">#SIRORAGI ${goodsBasic.GOODS_CATEGORY2 }</span>
				</a>
				<a href="/store/search?stxt=%ED%8C%AC%EC%BD%A7" class="hashTag">
					<span class="hashTag-labl">#실오라기</span>
				</a>
				<a href="/store/search?stxt=PANCOAT" class="hashTag">
					<span class="hashTag-labl">#SIRORAGI</span>
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
							<a href="/goods/1408942356">
								<div data-original="http://pic.styleindex.co.kr/g/s/140/1408942356" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/140/1408942356&quot;);" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1408942356">[ONLINE FAMILY SALE]어반 플레이 후디 탑 (G-1/FP) (TRUE BLUE)_PROFPSZ03U</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>12,800<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1484265771">
								<div data-original="http://pic.styleindex.co.kr/g/s/148/1484265771" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/148/1484265771&quot;);" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1484265771">★2017 봄신상 가격인하★팬콧 로고 P 후드 (EP) (HEATHER GREY)_PPOEPHD02E</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>29,000<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1484265772">
								<div data-original="http://pic.styleindex.co.kr/g/s/148/1484265772" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/148/1484265772&quot;);" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1484265772">★2017 봄신상 가격인하★팬콧 로고 P 후드 (EP) (MIDNIGHT BLACK)_PPOEPHD02E</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>29,000<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1456735000">
								<div data-original="http://pic.styleindex.co.kr/g/s/145/1456735000" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/145/1456735000&quot;);" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1456735000">팬콧×세사미 스트릿 후디 (MIDNIGHT BLACK)_PPOSPHD60S</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>35,900<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1410426650">
								<div data-original="http://pic.styleindex.co.kr/g/s/141/1410426650" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/141/1410426650&quot;);" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1410426650">팝아이즈 리버스 집업 후디(FA) (NEPTUNE MINT)_PPOFAHZ03U</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>35,600<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1408942435">
								<div data-original="http://pic.styleindex.co.kr/g/s/140/1408942435" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/140/1408942435&quot;);" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1408942435">[ONLINE FAMILY SALE]에어 테크 후디 탑 (FP) (HEATHER GREY)_PROFPSZ04U</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>12,800<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1398319116">
								<div data-original="http://pic.styleindex.co.kr/g/s/139/1398319116" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/139/1398319116&quot;);" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1398319116">[ONLINE FAMILY SALE]에어 테크 저지 탑 (FP) (HEATHER GREY)_PROFPSZ05U</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>12,800<span class="currency">원</span></span>
                            </p>
                        </div>-->
					</li>
					<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
						<div class="thumbnail">
							<a href="/goods/1408942440">
								<div data-original="http://pic.styleindex.co.kr/g/s/140/1408942440" style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/140/1408942440&quot;);" class="lazy">
									<img src="/theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
								</div>
							</a>
						</div>
                       <!-- <div class="caption">
                            <p class="name">
                                <a href="/goods/1408942440">[ONLINE FAMILY SALE]에어 테크 후디 탑 (FP) (NEON GREEN)_PROFPSZ04U</a>
                            </p>
                            <p class="price">
                                <span class="now"><span class="label sr-only">할인가격:</span>12,800<span class="currency">원</span></span>
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
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">150cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">35kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">XS</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">160cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">47kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">XS</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">160cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">49kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">S</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">165cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">52kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">M</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">168cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">69kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">M</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">173cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">55kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">M</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">161cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">70kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">L</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">170cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">76kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">L</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">175cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">78kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">L</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">170cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">65kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">XL</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">173cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">80kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">XL</b></div>
						</li>
						<li class="size_recomm">
							<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">181cm</div>
							<div class="col-md-5 col-xs-5 btn btn-default btn-xs">74kg</div>
							<div class="col-md-6 col-xs-6 btn btn-warning btn-xs"><b style="font-weight:bold">XL</b></div>
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
					<table border="0" cellspacing="0" cellpadding="0" xwidth="660" align="center">
<tbody>

	<c:forEach var="goodsImage"  items="${goodsImage}" varStatus="stat">
	<tr>
	<td><img src="/SIRORAGI/file/goodsFile/${goodsImage.IMAGE}" xwidth="800"></td></tr>
	
	</c:forEach>

</tbody></table>
					</div>

                    <div class="information-goods">
                        <dl>
                            <dt>색상</dt>
                            <dd>red</dd>
                            <dt>제조년월</dt>
                            <dd>2014-12</dd>
                            <dt>제조사/원산지</dt>
                            <dd>Korea</dd>
							<dt>사이즈</dt>
                            <dd>겉감 : 면100%</dd>
                            <br>
							<dt>제품소재</dt>
                            <dd>XS,SS,MM,LL,XL</dd>
                            <dt>세탁방법 및 주의사항</dt>
                            <dd>손세탁 소재의 특성상 심한마찰(안전밸트,가방착용등)은 보푸라기의 원인이 됨</dd>
							<br>
                            <dt>A/S안내</dt>
                            <dd>팬콧 고객만족센터 1566-1358</dd>
                            <dt>품질보증서 제공</dt>
							<dd>미제공</dd>
                            <dt>품질보증 기준</dt>
                            <dd>**품질보증기간 구입일부터1년 - 피해보상규정: 원단/부자재/봉제 불량인 경우, 세탁사고의 경우(구입일로부터 1년이내분은 무상수선 및 동일가격, 동일제품을 원칙으로 교환, 동종상품이나 동일제품이 없는경우에만 환불 가능), 사이즈 부정확 및 디자인/색상불만의 경우(구입일로부터 7일이내로써 제품에 손상이 없을 시, 동일가격, 동일제품을 원칙으로 교환, 구입가 환불가능) - 보상제외: 소비자 부주의에 의한 제품훼손, 세탁 잘못으로 인한 변형 및 보증기간(1년)이내의 제품이 하더라도 보상에 대한 책임을 지지않음.</dd>
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
		<li>
			<div class="brief">
				<div class="caption">
					<strong class="title"><span class="level"></span>완전 짱 좋아요~~~</strong>
					<div class="info">
						<p class="author">박형준</p>
						<p class="date">/ 2017-04-18 10:15:06</p>
					</div>
					<div class="rating">
						<span class="ratio">
							<span style="width:100%">
								<span class="star"></span>
							</span>
						</span>
					</div>
				</div>
			</div>
			<div class="detail">
				<div class="contents">
					<div class="description">
						<p>너무 이뻐요~~~</p>
					</div>
				</div>
			</div>
		</li>
		<li>
			<div class="brief">
				<div class="caption">
					<strong class="title"><span class="level"></span>그냥</strong>
					<div class="info">
						<p class="author">박양신</p>
						<p class="date">/ 2016-11-16 07:15:36</p>
					</div>
					<div class="rating">
						<span class="ratio">
							<span style="width:60%">
								<span class="star"></span>
							</span>
						</span>
					</div>
				</div>
			</div>
			<div class="detail">
				<div class="contents">
					<div class="description">
						<p>빨간색이 존 촌스런 그런색이예요</p>
					</div>
				</div>
			</div>
		</li>
		<li>
			<div class="brief">
				<div class="caption">
					<strong class="title"><span class="level"></span>후드티</strong>
					<div class="info">
						<p class="author">임완택</p>
						<p class="date">/ 2016-10-24 01:02:02</p>
					</div>
					<div class="rating">
						<span class="ratio">
							<span style="width:0%">
								<span class="star"></span>
							</span>
						</span>
					</div>
				</div>
			</div>
			<div class="detail">
				<div class="contents">
					<div class="description">
						<p>촉감이 부드럽고 정말 이쁩니다 </p>
					</div>
				</div>
			</div>
		</li>
		<li>
			<div class="brief">
				<div class="picture">
					<img src="../data/review/1427073649/T5802ba7f35d9c.jpg">
				</div>
				<div class="caption">
					<strong class="title"><span class="level"></span>생각보다 진한 빨강~</strong>
					<div class="info">
						<p class="author">김연경</p>
						<p class="date">/ 2016-10-16 08:23:45</p>
					</div>
					<div class="rating">
						<span class="ratio">
							<span style="width:80%">
								<span class="star"></span>
							</span>
						</span>
					</div>
				</div>
			</div>
			<div class="detail">
				<div class="contents">
					<div class="picture">
						<img src="../data/review/1427073649/5802ba7f35d9c.jpg">
					</div>
					<div class="description">
						<p>라지사이즈 첨 주문해봤는데.. 박시하고 편하게 입기 좋아요~  </p>
					</div>
				</div>
			</div>
		</li>
		<li>
			<div class="brief">
				<div class="caption">
					<strong class="title"><span class="level"></span>후기</strong>
					<div class="info">
						<p class="author">조원희</p>
						<p class="date">/ 2016-07-07 22:35:25</p>
					</div>
					<div class="rating">
						<span class="ratio">
							<span style="width:100%">
								<span class="star"></span>
							</span>
						</span>
					</div>
				</div>
			</div>
			<div class="detail">
				<div class="contents">
					<div class="description">
						<p>독수리가 튀어나온 부분이 느낌 좋다</p>
					</div>
				</div>
			</div>
		</li>
	</ul>

	<div class="page-navigator">
		<div class="page-navigator-horizon">
		<a href="javascript:ajaxGo('review',0)" class="prev col-xs-6 btn-page-prev">prev</a><div class="page-number col-xs-12"> <a class="active">1</a> </div><a href="javascript:alert('마지막페이지입니다')" class="next col-xs-6 btn-page-next">next</a>
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
                    <a href="/SIRORAGI/qna/qnaForm" class="button" target="modal" data-size="md" data-label="구매 후기 작성">
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
		<li>
			<div class="brief">
				<strong class="title">사이즈요</strong>
				<div class="info">
					<p class="author"></p>
					<p class="date">/ 2017-04-18 13:41:01</p>
				</div>
			</div>
			<div class="detail">
				<div class="contents">
					<div class="description">
						<p>가슴둘레 100인사람 s사이즈 주문하면될까요?</p>
					</div>
				</div>
				<div class="answer">
					<p></p>
					<div class="info">
						<p class="author"></p>
						<p class="date">/ </p>
					</div>
				</div>
			</div>
		</li>
	</ul>

	<div class="page-navigator">
		<div class="page-navigator-horizon">
			<a href="javascript:ajaxGo('qna',0)" class="prev col-xs-6 btn-page-prev">prev</a><div class="page-number col-xs-12"> <a class="active">1</a> </div><a href="javascript:alert('마지막페이지입니다')" class="next col-xs-6 btn-page-next">next</a>
		</div>
	</div>
</div></div>
                </div>
                <div class="section-foot">
                    <a href="/SIRORAGI/qna/qnaForm" class="button" target="modal" data-size="md" data-label="상품 문의 작성">
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