<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<div class="viewport">
<div id="container">
<div id="page" class="page">
<section class="hashFilter section eshop container">
	<form id="fmFilter" name="fmFilter">
<!-- 	<input type="hidden" name="mode" value="items_new">
	<input type="hidden" name="sort" value="">
	<input type="hidden" name="brandno" value="">
	<input type="hidden" name="no" value=""> -->

	<div class="section-body">

	<!-- coordi 페이지 editor's pick 페이지에는 page-category 없어야됨 -->
	<div class="page-category">
		<div class="selectboxWrap">
			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text">NEW ITEM
					 </strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="navigator" id="navigator">
					<option value="new" selected="">NEW ITEM
					</option><option value="sale">SALE
					</option><option value="coordi">COORDI
					</option><option value="event">EVENT
				</option></select>
			</div>

			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text">전체보기
					 </strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="category[]" id="cate01">
					<option value="">전체보기
					</option><option value="101" data-catnm="TOP">
					TOP
					<!--(0)-->
					</option>
					<option value="102" data-catnm="OUTER">
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
			<strong id="section_filter_h2_top">NEW ITEM
					</strong>
		</h2>
	</div>
<!-- 
	<script>
	$("#section_filter_h2_top").html($(".selectboxWrap select:first option:selected").text());
	</script> -->

		<!--세일페이지인 경우 HOT ISSUES-->







	</div>
		

	<div class="section-body box-shadow">
		<div class="form row">





<!--
"ranking", "sale", "new"
-->


			<div class="color form-item col-sm-12 col-lg-6">
				<div class="form-item-title">
					<h4>기간</h4>
				</div>
				<div class="form-item-wrap col-xs-24">
					<div class="row">
						<div class="selectbox col-xs-12 col-sm-24">
							<div class="selectbox-data">
								<strong class="text" >한달 이내 </strong>
								<span class="icon icon-dropdown-gray-dark"></span>
							</div>
							<select name="period"  onchange="javascript:ajaxList();" id="period">
								<option value="7">일주일 이내</option>
								<option value="30" selected="" >한달 이내</option>
								<option value="90">3개월 이내</option>
								<option value="180">6개월 이내</option>
							</select>
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
												<input class="xx-control" type="text" name="priceRange[]" value="7000" size="22">
											</div>
											<div class="col-xs-12">
												<input class="xx-control" type="text" name="priceRange[]" value="298000" size="22">
											</div>
										</div>
										<div class="range-slider col-xs-12">
											<!-- 슬라이드 -->
											<div id="price-range-slider" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" aria-disabled="false">
												<div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 0%;"></div>
												<a class="ui-slider-handle ui-state-default ui-corner-all" href="#" style="left: 2.34899%;"></a> 
												
											<div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 2.34899%;"></div><a class="ui-slider-handle ui-state-default ui-corner-all" href="#" style="left: 100%;"></a></div>
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
								<div class="checkbox col-xs-auto black" >
									<label> 

									<input type="checkbox" name="color[]" onclick="javascript:ajaxList();" value="BLACK" data-text="black">
									<span class="icon icon-check-white"></span> 
									<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-color-black.png" alt="black">
									</span>
									</label>
								</div>
								<div class="checkbox col-xs-auto gray">
									<label> 
									<input type="checkbox" onclick="javascript:ajaxList();" name="color[]" value="GRAY" data-text="gray"> 
										<span class="icon icon-check-white"></span> 
										<span class="checkbox-label"> <img src="/SIRORAGI/theme/pshp/img/filter-color-gray.png" alt="gray">
									</span>
									</label>
								</div>
								<div class="checkbox col-xs-auto brown">
									<label> <input type="checkbox" name="color[]" onclick="javascript:ajaxList();"
										value="BROWN" data-text="brown"> <span
										class="icon icon-check-white"></span> <span
										class="checkbox-label"> <img
										src="/SIRORAGI/theme/pshp/img/filter-color-brown.png" alt="brown">
									</span>
									</label>
								</div>
								<div class="checkbox col-xs-auto burgundy">
									<label> <input type="checkbox" name="color[]" onclick="javascript:ajaxList();"
										value="BURGUNDY" data-text="burgundy"> <span
										class="icon icon-check-white"></span> <span
										class="checkbox-label"> <img
											src="/SIRORAGI/theme/pshp/img/filter-color-burgundy.png"
											alt="burgundy">
									</span>
									</label>
								</div>
								<div class="checkbox col-xs-auto pink">
									<label> <input type="checkbox" name="color[]" onclick="javascript:ajaxList();"
										value="PINK" data-text="pink"> <span
										class="icon icon-check-white"></span> <span
										class="checkbox-label"> <img
											src="/SIRORAGI/theme/pshp/img/filter-color-pink.png" alt="pink">
									</span>
									</label>
								</div>
								<div class="checkbox col-xs-auto purple">
									<label> <input type="checkbox" name="color[]" onclick="javascript:ajaxList();"
										value="PURPLE" data-text="purple"> <span
										class="icon icon-check-white"></span> <span
										class="checkbox-label"> <img
											src="/SIRORAGI/theme/pshp/img/filter-color-purple.png"
											alt="purple">
									</span>
									</label>
								</div>
								<div class="checkbox col-xs-auto white">
									<label> <input type="checkbox" name="color[]" onclick="javascript:ajaxList();"
										value="WHITE" data-text="white"> <span
										class="icon icon-check-white"></span> <span
										class="checkbox-label"> <img
											src="/SIRORAGI/theme/pshp/img/filter-color-white.png" alt="white">
									</span>
									</label>
								</div>
								<div class="checkbox col-xs-auto navy">
									<label> <input type="checkbox" name="color[]" onclick="javascript:ajaxList();"
										value="NAVY" data-text="navy"> <span
										class="icon icon-check-white"></span> <span
										class="checkbox-label"> <img
											src="/SIRORAGI/theme/pshp/img/filter-color-navy.png" alt="navy">
									</span>
									</label>
								</div>
								<div class="checkbox col-xs-auto gradient-silver">
									<label> <input type="checkbox" name="color[]" onclick="javascript:ajaxList();"
										value="SKYBLUE" ch data-text="skyblue"> <span
										class="icon icon-check-white"></span> <span
										class="checkbox-label"> <img
											src="/SIRORAGI/theme/pshp/img/filter-color-skyblue.png"
											alt="skyblue">
									</span>
									</label>
								</div>
								<div class="checkbox col-xs-auto blue">
									<label> <input type="checkbox" name="color[]" onclick="javascript:ajaxList();"
										value="BLUE" data-text="blue"> <span
										class="icon icon-check-white"></span> <span
										class="checkbox-label"> <img
											src="/SIRORAGI/theme/pshp/img/filter-color-blue.png" alt="blue">
									</span>
									</label>
								</div>
								<div class="checkbox col-xs-auto green">
									<label> <input type="checkbox" name="color[]" onclick="javascript:ajaxList();"
										value="GREEN" data-text="green"> <span
										class="icon icon-check-white"></span> <span
										class="checkbox-label"> <img
											src="/SIRORAGI/theme/pshp/img/filter-color-green.png" alt="green">
									</span>
									</label>
								</div>
								<div class="checkbox col-xs-auto yellow">
									<label> <input type="checkbox" name="color[]" onclick="javascript:ajaxList();"
										value="YELLOW" data-text="yellow"> <span
										class="icon icon-check-white"></span> <span
										class="checkbox-label"> <img
											src="/SIRORAGI/theme/pshp/img/filter-color-yellow.png"
											alt="yellow">
									</span>
									</label>
								</div>
										
								<div class="checkbox col-xs-auto gradient-gold">
									<label> <input type="checkbox" name="color[]" onclick="javascript:ajaxList();"
										value="BEIGE" data-text="gradient-gold"> <span
										class="icon icon-check-white"></span> <span
										class="checkbox-label"> <img
											src="/SIRORAGI/theme/pshp/img/filter-color-beige.png"
											alt="gradient-gold">
									</span>
									</label>
								</div>
										
										
								<div class="checkbox col-xs-auto red">
									<label> <input type="checkbox" name="color[]" onclick="javascript:ajaxList();"
										value="RED" data-text="red"> <span
										class="icon icon-check-white"></span> <span
										class="checkbox-label"> <img
											src="/SIRORAGI/theme/pshp/img/filter-color-red.png" alt="red">
									</span>
									</label>
								</div>
							</div>
						</div>
					</div>



		</div>
<!-- 		<div class="section-foot more">
			<a class="button button hidden-md hidden-lg" id="filterMore">
				<span class="button-label">MORE FILTER</span>
			</a>
		</div> -->
	</div>



	</form>
</section>

<section class="storeCatalog section container" id="changeList">
	<div class="section-head">
		<h3>product</h3>
		<span class="border"></span>
	</div>

	<div class="section-body">
		<!-- ### 정렬 / 페이징 -->
		<div class="catalog-operate">

		</div>
		<!-- ### 상품 리스트 -->
		<ul class="catalog ajax-list row"><!--상품목록 ajax-->
	<c:forEach var="goodsList" items="${goodsList}" varStatus="stat">

							<c:url var="viewURL" value="/goodsDetail">
								<c:param name="GOODS_NUMBER" value="${goodsList.GOODS_NUMBER }" />
							</c:url>

							<li class="catalog-item col-xs-12 col-sm-6 col-md-4 items_0 c1">
								<div class="thumbnail">
									<a href="${viewURL}"> <img
										data-original="/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}"
										class="for-ie8 img-responsive lazy" width="500" height="500">
										<div
											data-original="/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}"
											style="display: block; background-image: url(&quot;/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}&quot;);"
											class="lazy">
											<img src="/SIRORAGI/theme/pshp/img/blank-square.png"
												class="img-responsive" width="500" height="500">
										</div>
										<div class="cabal-group">
											<!-- 조건태그 시작  -->
											<c:if test="${goodsList.GOODS_DCPRICE != null}">

												<%-- <c:set value="${goodsList.GOODS_PRICE}" var="PRICE" type="number"/> --%>


												<span class="cabal cabal-sale"> <span
													class="cabal-label">-<fmt:formatNumber
															value="${(goodsList.GOODS_PRICE - goodsList.GOODS_DCPRICE)*100 / goodsList.GOODS_PRICE}"
															type="number" />%
												</span>
												</span>
											</c:if>

											<c:if test="${nowDate < goodsList.GOODS_NEWDATE}">
											<span class="cabal cabal-new"> <span
												class="cabal-label">new
												</span>
											</span> 
											</c:if>
											
											<c:if test="${goodsList.AMOUNT<50}">
											<span class="cabal cabal-hurryup"> <span
												class="cabal-label">HURRY UP</span>
											</span>
											</c:if>
										</div>
									</a>
									<div class="addon">
										<div class="button-group">
											<button class="button col-xs-12" target="modal"
												data-size="lg" data-label="상품 PREVIEW"
												href="/SIRORAGI/main/goods?GOODS_NUMBER=${goodsList.GOODS_NUMBER}">
												<span class="icon icon-expansion-white"></span>
											</button>
											<a href="${viewURL}" class="button button-dimmed col-xs-12"
												target="modal" data-size="sm" data-label="SNS공유하기"> <span
												class="icon icon-share-white"></span>
											</a>
										</div>
									</div>
								</div>
								<div class="caption">
									<p class="brand">SIRORAGI</p>
									<p class="name">
										<a href="${viewURL}">${goodsList.GOODS_NAME}</a>
									</p>
									<p class="price">

										<c:if test="${goodsList.GOODS_DCPRICE != null}">
											<span class="was"><span class="label sr-only">판매가격:</span>
												<fmt:formatNumber value="${goodsList.GOODS_PRICE}"
													type="number"></fmt:formatNumber><span class="currency">원</span></span>
											<span class="now"><span class="label sr-only">할인가격:</span>
												<fmt:formatNumber value="${goodsList.GOODS_DCPRICE}"
													type="number"></fmt:formatNumber><span class="currency">원</span></span>
										</c:if>
										<c:if test="${goodsList.GOODS_DCPRICE == null}">
											<span class="now"><span class="label sr-only">판매가격:</span>
												<fmt:formatNumber value="${goodsList.GOODS_PRICE}"
													type="number"></fmt:formatNumber><span class="currency">원</span></span>
										</c:if>
										<%-- 
			<span class="was"><span class="label sr-only">판매가격:</span>${goodsList.GOODS_PRICE}<span class="currency">원</span></span>
			<span class="now"><span class="label sr-only">할인가격:</span>${goodsList.GOODS_DCPRICE}<span class="currency">원</span></span> --%>
									</p>
								</div>
							</li>


						</c:forEach>
						</ul>
	</div>
	
</section>

</div>
</div>
</div>
<script>
function ajaxList(){ 
	var period = document.getElementById('period').value;
	var searchCheck='ON';
	var priceRange = document.getElementsByName('priceRange[]');
	var color=document.getElementsByName('color[]');
	console.log("period값은?" + period);
	
	//가격 검색
	var myPriceRange = new Array();		
			
	myPriceRange[0]=priceRange[0].value;
	myPriceRange[1]=priceRange[1].value;
	
	console.log("myPriceRange : " +myPriceRange.length);
	//가격검색 끝
	
	//색깔 검색
	var myColor = new Array();		
	var j = 0;
	
	for(var i=0;i<color.length;i++){
		//console.log("색깔이름 말해라2" + color[i].value );
		if(color[i].checked == true){
			//console.log("색깔이름 말해라" + color[i].value );
			var a = color[i].value;
			myColor[j] = color[i].value;
			//console.log("총 색깔들" + j + myColor[j] );
			j++;
		}
	}
	
	console.log(myColor.length+"길이");
	for(var i=0;i<myColor.length;i++){
		console.log("myColor색깔들" + myColor[i] );
	}
	//색검색끝
	
	
	
		$.ajaxSettings.traditional = true;//배열 형태로 서버쪽 전송을 위한 설정
		 $.ajax({
		      url: "/SIRORAGI/goods/goodsNewCategory",
		      type : "post",
		      data: {"myColor":myColor,"priceRange":myPriceRange,"searchCheck":searchCheck,"period":period},
		      success:function(data){
		    	  
		    	  $("#changeList").html(data);
		      }
		   });   
	
}

/*** ranking 가격bar 마우스를 뗄 경우 이벤트 발생 ***/
$( "#price-range-slider" ).slider({
	     stop: function() {
	    	 ajaxList();
	      console.log("다다다");
	      //솔트(2);
	     }
	   });
</script>

</body>
</html>