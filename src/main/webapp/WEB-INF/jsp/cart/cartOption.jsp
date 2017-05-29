<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<div class="modal-body">
<form method="post" action="/SIRORAGI/optionModify" name="fmOrder" onsubmit="return chkOption()">
<c:if test="${!empty sessionScope.MEMBER_ID}">
<input type="hidden" name="CART_NUMBER" value="${cartOption.CART_NUMBER }">
</c:if>
<input type="hidden" name="GOODS_KINDS_NUMBER" value="${cartOption.GOODS_KINDS_NUMBER }">
<input type="hidden" name="GOODS_NUMBER" value="${cartOption.GOODS_NUMBER }">


<div class="modal-change-option">
	<section class="product-info box-shadow">
		<div class="section-head left">
			<h5>현재 상품 정보</h5>
			<span class="border"></span>
		</div>
		<!-- section-head//end -->
		<div class="section-body table-shell-xs">
			<div class="thumbnail col-xs-8 col-sm-6 cell">
				<img img_layer="/SIRORAGI/file/goodsFile/${cartOption.GOODS_THUMBNAIL}" goodsno="${cartOption.GOODS_NUMBER }" src="/SIRORAGI/file/goodsFile/${cartOption.GOODS_THUMBNAIL}" width="200" class="img-responsive">
			</div>
			<div class="caption col-xs-16 col-sm-18 cell">
				<strong class="brand"></strong>
				<em class="name">${cartOption.GOODS_NAME}</em>
				<!--
				<div class="option">
					<em>M / Orange / 1개</em>
				</div>
				-->
			</div>
			<!-- caption//end -->
		</div>
		<!-- 그전 개발된부분 일단 주석처리 -->
		<!--<div id="panel" class="clearfix">-->
			<!--<div class="col-sm-12">-->
				<!--<div class="gimg">-->
				<!-- -->
				<!--</div>-->
			<!--</div>-->
			<!--<div class="info col-sm-12">-->

			<!--<div style="padding:10px">-->
				<!--<div style="padding:8px 0"><b>[팬콧샵] MULTI BIRD CIRCLE OVER ROLL DENIM SHORT PANTS (MAJOLICA BLUE)_PPOEUDS21VN5</b></div>-->
				<!--&lt;!&ndash;&ndash;&gt;-->
				<!--<span class="consumerprice"><strike>79,000원</strike></span>-->
				<!--&lt;!&ndash;&ndash;&gt;-->
				<!--<span class="price">79,000원</span>-->
			<!--</div>-->

			<!--</div>-->
		<!--</div><p>-->
		<!-- 그전 개발된부분 일단 주석처리//end -->
	</section>

	<section class="product-option box-shadow">
		<div class="section-head left">
			<h5>수량을 변경하세요1</h5>
			<span class="border"></span>
		</div>
		<!-- section-head//end -->
		<div class="section-body list-horizontal">
			<div class="list-item">


<!-- 옵션박스 --> 
<div class="optionbox col-xs-24">
	<ul id="optionbox">
		<li>
			<b>${cartOption.GOODS_COLOR } / ${cartOption.GOODS_SIZE }</b>
			<input type="hidden" name="cart" value="${cartOption.CART_NUMBER }">
			<input type="hidden" name="kinds" value="${cartOption.GOODS_KINDS_NUMBER }">
			<input type="hidden" class="mstock" value="${cartOption.GOODS_AMOUNT }">

			<input type="text" name="ea" value="${cartOption.CART_AMOUNT }" class="input_ea" size="2">


			<span class="ea">
				<a class="btn-ea-up">
					<img src="/SIRORAGI/theme/pshp/img/btn_num_up.gif" alt="">
				</a>
				<a class="btn-ea-dn">
					<img src="/SIRORAGI/theme/pshp/img/btn_num_down.gif" alt="">
				</a>
			</span>
			<c:if test="${cartOption.GOODS_DCPRICE eq null }">
			<span class="price"><fmt:formatNumber value="${cartOption.GOODS_PRICE }" type="number"/>원</span>
			</c:if>
			<c:if test="${cartOption.GOODS_DCPRICE ne null }">
			<span class="price"><fmt:formatNumber value="${cartOption.GOODS_DCPRICE }" type="number"/>원</span>
			</c:if>
			
		</li>
	</ul>
	<div id="totprice"></div>
</div>

<script>
var totprice = 0;
var r_kinds = [15921176];
function setOption(obj){
	if (!chkSoldout(obj)) return;
	if ($("#option option:selected").attr("disabled")=="disabled"){
		alert("선택한 물품은 품절된 상태입니다"); 
		$("#option").get(0).selectedIndex = 0;
		return;
	}
	var kinds = $("#option option:selected").val();
	if (!kinds || in_array(kinds,r_kinds)) return;
	var li = "<li><b>" + $("#option option:selected").attr("optnm") + "</b><input type='hidden' name='kinds' value='" + kinds + "'><input type='hidden' class='mstock' value='" + $("option:selected",$(obj)).attr("stock") + "'><input type='text' name='ea[]' value='1' class='input_ea' size='2' maxlength='3'> <span class='ea'><a class='btn-ea-up'><img src='/theme/pshp/img/btn_num_up.gif' alt='' /></a><a class='btn-ea-dn'><img src='/theme/pshp/img/btn_num_down.gif' alt='' /></a></span><span class='price'>" + comma($("option:selected",$(obj)).attr("price")) + "원</span><a href='#' kinds='" + kinds + "' class='btn-remove'><img src='/theme/pshp/img/btn_close.gif' alt='' /></a></li>";
	$("#optionbox").append(li);
	r_kinds.push(kinds);
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
	var ritem = $(this).attr("kinds");
	r_kinds = $.grep(r_kinds,function(v){ return v != ritem; });
	console.log(r_kinds);
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
		</div>
	</section>

</div>
<div class="modal-button">
	<div class="button-group">
		<button type="submit" class="button">
			<span class="button-label">확인</span>
		</button>
	</div>
</div>


</form>
</div>