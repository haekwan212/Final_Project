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
	<form id="fmeFilter" name="fmFilter">
	<!-- <input type="hidden" name="mode" value="items_sale">
	<input type="hidden" name="sort" value="sale">
	<input type="hidden" name="brandno" value="">
	<input type="hidden" name="no" value="">
 -->
	<div class="section-body">

	<!-- coordi 페이지 editor's pick 페이지에는 page-category 없어야됨 -->
	<div class="page-category">
		<div class="selectboxWrap">
			<div class="selectbox">
				<div class="selectbox-data">
					<strong class="text">SALE
					 </strong>
					<span class="icon icon-dropdown-white"></span>
				</div>
				<select name="navigator" id="navigator">
					<option value="new">NEW ITEM
					</option><option value="sale" selected="">SALE
					</option><option value="coordi">COORDI
					</option><option value="event">EVENT
				</option></select>
			</div>


			<!--셀렉박트 숨겨놈
			 <div class="selectbox">
				<div class="selectbox-data">
					<strong class="text">
					TOP
					
					 </strong>
					<span class="icon icon-dropdown-white"></span>
				</div> -->
				<!-- <select name="category[]" id="cate01">
					<option value="101" selected="" data-catnm="TOP">
					TOP
					(0)
					</option>
					<option value="102" data-catnm="OUTER">
					OUTER
					(0)
					</option>
					<option value="103" data-catnm="BOTTOM">
					BOTTOM
					(0)
					</option>
					<option value="104" data-catnm="ACC">
					ACC
					(0)
					</option>
					<option value="105" data-catnm="KIDS">
					KIDS
					(0)
					</option>
					<option value="106" data-catnm="LIFE STYLE">
					LIFE STYLE
					(0)
					</option>
				</select> 
				</div>
				-->
			
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
			<strong id="section_filter_h2_top">SALE
					</strong>
		</h2>
	</div>

	<!-- <script>
	$("#section_filter_h2_top").html($(".selectboxWrap select:first option:selected").text());
	</script> -->

		<!--세일페이지인 경우 HOT ISSUES-->
		<div class="storeCatalog section">
			<div class="section-head">
				<h3>HOT ISSUES</h3>
				<span class="border"></span>
			</div>

			<div data-code="sale_top_banner" class="_edit_box" data-size="300">
			<ul class="section-coupon clearfix">
				<li class="col-xs-8 col-sm-6 col-md-4 c0"><a href="http://pancoatshop.com/store/event?no=18" target="_self"><img src="/SIRORAGI/theme/pshp/_conf/banner/sale_top_banner/sum5.jpg" class="img-responsive" style="margin:0 0 0 0"></a></li>
				<li class="col-xs-8 col-sm-6 col-md-4 c1"><a href="http://pancoatshop.com/store/event?no=107" target="_self"><img src="/SIRORAGI/theme/pshp/_conf/banner/sale_top_banner/sum.jpg" class="img-responsive" style="margin:0 0 0 0"></a></li>
				<li class="col-xs-8 col-sm-6 col-md-4 c2"><a href="http://pancoatshop.com/store/event?no=22" target="_self"><img src="/SIRORAGI/theme/pshp/_conf/banner/sale_top_banner/sum2.jpg" class="img-responsive" style="margin:0 0 0 0"></a></li>
				<li class="col-xs-8 col-sm-6 col-md-4 c3"><a href="http://pancoatshop.com/store/event?no=45" target="_self"><img src="/SIRORAGI/theme/pshp/_conf/banner/sale_top_banner/sum_la.jpg" class="img-responsive" style="margin:0 0 0 0"></a></li>
				<li class="col-xs-8 col-sm-6 col-md-4 c4"><a href="http://pancoatshop.com/store/event?no=105" target="_self"><img src="/SIRORAGI/theme/pshp/_conf/banner/sale_top_banner/sum4.jpg" class="img-responsive" style="margin:0 0 0 0"></a></li>
				<li class="col-xs-8 col-sm-6 col-md-4 c5"><a href="http://pancoatshop.com/store/event?no=10" target="_self"><img src="/SIRORAGI/theme/pshp/_conf/banner/sale_top_banner/sum_바로.jpg" class="img-responsive" style="margin:0 0 0 0"></a></li>
			</ul>
			</div>
		</div>







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


			<div class="condition form-item col-sm-12 col-lg-6">
				<div class="form-item-title">
					<h4>제품상태</h4>
				</div>
				<div class="form-item-wrap">
					<div class="row">

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

			<div class="form-item col-sm-24 col-lg-12">
				<div class="form-item-title">
					<h4>범위</h4>
				</div>
				<div class="form-item-wrap">
					<div class="row">
						<div class="checkbox col-xs-auto">
							<label>
								<input type="checkbox" name="saleList[]" onclick="javascript:ajaxList();" value="1" data-text="30%이하">
								<span class="icon icon-checkbox"></span>
								<span class="checkbox-label">30%이하</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto">
							<label>
								<input type="checkbox" name="saleList[]" onclick="javascript:ajaxList();" value="2" data-text="31%~50%">
								<span class="icon icon-checkbox"></span>
								<span class="checkbox-label">31%~50%</span>
							</label>
						</div>
						<div class="checkbox col-xs-auto">
							<label>
								<input type="checkbox" name="saleList[]" onclick="javascript:ajaxList();" value="3" data-text="51%~80%">
								<span class="icon icon-checkbox"></span>
								<span class="checkbox-label">51%~80%</span>
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
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-1.png" alt="1">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 2">
							<label>
								<input type="checkbox" name="charater[]" value="2" data-text="2" >
								<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-2.png" alt="2">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 3">
							<label>
								<input type="checkbox" name="charater[]" value="3" data-text="3" >
								<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-3.png" alt="3">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 4">
							<label>
								<input type="checkbox" name="charater[]" value="4" data-text="4" >
								<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-4.png" alt="4">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 5">
							<label>
								<input type="checkbox" name="charater[]" value="5" data-text="5" >
								<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-5.png" alt="5">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 6">
							<label>
								<input type="checkbox" name="charater[]" value="6" data-text="6" >
								<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-6.png" alt="6">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 7">
							<label>
								<input type="checkbox" name="charater[]" value="7" data-text="7" >
								<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-7.png" alt="7">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 8">
							<label>
								<input type="checkbox" name="charater[]" value="8" data-text="8" >
								<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-8.png" alt="8">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 9">
							<label>
								<input type="checkbox" name="charater[]" value="9" data-text="9" >
								<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-9.png" alt="9">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 10">
							<label>
								<input type="checkbox" name="charater[]" value="10" data-text="10" >
								<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-10.png" alt="10">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 11">
							<label>
								<input type="checkbox" name="charater[]" value="11" data-text="11" >
								<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-11.png" alt="11">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 12">
							<label>
								<input type="checkbox" name="charater[]" value="12" data-text="12" >
								<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-12.png" alt="12">
								</span>
							</label>
						</div>
						-->
						<!--
						<div class="checkbox col-xs-auto 13">
							<label>
								<input type="checkbox" name="charater[]" value="13" data-text="13" >
								<span class="checkbox-label">
									<img src="/SIRORAGI/theme/pshp/img/filter-charater-13.png" alt="13">
								</span>
							</label>
						</div>
						-->
				<!--
				</div>
			</div>
			-->

<!-- 
			<div class="reset form-item col-xs-24">
				<div class="form-item-wrap col-xs-24">
					<button class="button" id="filterClear">
						<span class="button-label">필터 초기화</span>
					</button>
				</div>
			</div> -->

		</div>
		<div class="section-foot more">
			<a class="button button hidden-md hidden-lg" id="filterMore">
				<span class="button-label">MORE FILTER</span>
			</a>
		</div>
	</div>



	</form>
</section>

<section class="storeCatalog section container" id="changeList">
	<div class="section-head">
		<h3>product list</h3>
		<span class="border"></span>
	</div>

	<div class="section-body">
		<!-- ### 정렬 / 페이징 -->
		<div class="catalog-operate">
			<!--<p class="catalogCounter">전체 <strong><span id="recodeTotal">0</span>개</strong>의 상품</p>-->
			<div class="sort form-item hidden-xs hidden-sm">
				<div class="form-item-wrap">
					<ul class="row">
						<li class="col-md-auto">
							<button class="button button-default selected" onclick="javascript:onSort(1);">
								<span class="button-label" data-sort="a.sort">인기순</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default " onclick="javascript:onSort(2);">
								<span class="button-label" data-sort="goodsno desc">신상품</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default " onclick="javascript:onSort(3);">
								<span class="button-label" data-sort="price">낮은가격</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default " onclick="javascript:onSort(4);">
								<span class="button-label" data-sort="price desc">높은가격</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default " onclick="javascript:onSort(5);">
								<span class="button-label" data-sort="sale">할인률</span>
							</button>
						</li>
					</ul>
				</div>
			</div>

			<!--mobile용-->
			<div class="sort mobile form-item col-xs-12 hidden-md hidden-lg">
				<div class="form-item-wrap">
					<div class="selectbox">
						<div class="selectbox-data">
							<strong class="text">인기순 </strong>
							<span class="icon icon-dropdown-gray-dark"></span>
						</div>
						<select name="sort">
							<option value="a.sort" selected="">인기순</option>
							<option value="goodsno desc">신상품</option>
							<option value="goodsnm">상품명</option>
							<option value="price">낮은가격</option>
							<option value="price desc">높은가격</option>
							<option value="sale">할인률</option>
						</select>
					</div>
				</div>
			</div>
		</div>
		<!-- ### 상품 리스트 -->
		<ul class="catalog ajax-list row"><!--상품목록 ajax-->

						<c:forEach var="goodsList" items="${goodsList}" varStatus="stat">

							<c:url var="viewURL" value="/goodsDetail">
								<c:param name="GOODS_NUMBER" value="${goodsList.GOODS_NUMBER }" />
							</c:url>

							<li class="catalog-item col-xs-12 col-sm-6 col-md-4 items_0 c1">
								<div class="thumbnail">
									<a href="${viewURL}">
									 <img data-original="/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}" class="for-ie8 img-responsive lazy" width="500" height="500">
										<div data-original="/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}" style="display: block; background-image: url(&quot;/SIRORAGI/file/goodsFile/${goodsList.GOODS_THUMBNAIL}&quot;);" class="lazy">
											<img src="../theme/pshp/img/blank-square.png" class="img-responsive" width="500" height="500">
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
													class="cabal-label">new </span>
												</span>
											</c:if>

											<c:if test="${goodsList.AMOUNT<50}">
												<span class="cabal cabal-hurryup"> <span
													class="cabal-label">HURRY UP</span>
												</span>
											</c:if>
											<!-- 조건 태그 끝 -->
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
									</p>
								</div>
							</li>


						</c:forEach>




					</ul>
	</div>
	<!--<div class="section-foot">
		<button class="button btn-more col-xs-offset-9 col-xs-6">
			<span class="button-label">더보기</span>
		</button>
	</div>-->
</section>
</div>
</div>
</div>
<script>

function onSort(i){
	//var f = document.fmFilter;
	//var searchCheck=f.searchCheck.value;
	//var isCategory ='${isCategory}';
	//console.log("콘솔내용" + searchCheck + isCategory);
	 $.ajax({
	      url: "/SIRORAGI/goods/goodsSaleCategory",
	      type : "post",
	      data: {"sort":i},
	      success:function(data){
	    	  $("#changeList").html(data);
	      }
	   });
	
	}
	
function ajaxList(sortCheck){
	//var f = document.fmFilter;
	var saleList=document.getElementsByName('saleList[]');
	var searchCheck='ON';
	console.log("에이작리스트123탐"); 
	
	//세일 구분 시작
	var mySale= new Array();
	var j=0;
	
	for(var i=0;i<saleList.length;i++){
		console.log("세일 모드값 출력" + saleList[i].value );
		if(saleList[i].checked == true){
			//console.log("색깔이름 말해라" + color[i].value );
			//var a = color[i].value;
			mySale[j] = saleList[i].value;
			j++;
		}
	}
	if(mySale != null){
	for(var i=0;i<mySale.length;i++){
		console.log("mySale 체크된거 : " + mySale[i] );
	}
	}
	//세일 구분 끝

		$.ajaxSettings.traditional = true;//배열 형태로 서버쪽 전송을 위한 설정
		 $.ajax({
		      url: "/SIRORAGI/goods/goodsSaleCategory",
		      type : "post",
		      data: {"searchCheck":searchCheck,"sale":mySale,"sortCheck":sortCheck,"searchCheck":searchCheck},
		      success:function(data){
		    	  console.log("성공");
		    	  $("#changeList").html(data);
		      },
  	        error: function(e){
  	        	console.log("에러");
   	         alert('error' + e);
   	        }
		   });  
		
 
	
	
}	
	
	</script>
</body>
</html>