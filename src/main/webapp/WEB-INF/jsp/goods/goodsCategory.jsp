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
            <form id="fmFilter" name="fmFilter" action="./goodsCategory"
               method="post">
               <!--�ʿ�����Ͱ���
    <input type="hidden" name="mode" value="items_category">
   <input type="hidden" name="sort" value="goodsno desc">
   <input type="hidden" name="brandno" value="">
   <input type="hidden" name="no" value="102"> -->

               <div class="section-body">

                  <!-- coordi ������ editor's pick ���������� page-category ����ߵ� -->
                  <div class="page-category">
                     <div class="selectboxWrap">

                        <div class="selectbox">
                           <div class="selectbox-data">
                              <strong class="text"> </strong> <span
                                 class="icon icon-dropdown-white"></span>
                           </div>
                           <select name="category[]" id="cate01">
                              <option value="101" data-catnm="TOP" onclick="">
                               TOP
                                 <!--(0)-->
                              </option>
                              
                              <option value="102" selected="" data-catnm="OUTER">
                                 ${isCategory}
                                 <!--(0)-->
                              </option>
                              <option value="103" data-catnm="BOTTOM">BOTTOM
                                 <!--(0)-->
                              </option>
                              <option value="104" data-catnm="ACC">ACC
                                 <!--(0)-->
                              </option>
                              <option value="105" data-catnm="KIDS">KIDS
                                 <!--(0)-->
                              </option>
                              <option value="106" data-catnm="LIFE STYLE">LIFE
                                 STYLE
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
            <span class="text">��۰��� �������� �ȳ� �帳�ϴ�.</span>
         </a>
         -->
                     </div>
                  </div>
                  <!-- �� ī�װ��� Ÿ��Ʋ-->
                  <div class="page-title section">
                     <h2>
                        <strong id="section_filter_h2_top"> ${isCategory} </strong>
                     </h2>
                  </div>

                  <script>
   $("#section_filter_h2_top").html($(".selectboxWrap select:first option:selected").text());
   </script>

                  <!--������������ ��� HOT ISSUES-->


               </div>


               <!--<div class="section-head">
      <h3>filter</h3>
      <span class="border"></span>
      <button class="button" id="filterToggle">
         <span class="icon icon-downArrow-black"></span>
         <span class="sr-only">��ġ��/�ݱ�</span>
      </button>
   </div>-->
               <div class="section-body box-shadow">
                  <div class="form row">

                     <!--
"ranking", "sale", "new"
-->

							<div class="form-item col-sm-12 col-lg-24 categoryDetail">
								<div class="form-item-title">
									<h4>�� �з� ����</h4>
								</div>
								<div class="form-item-wrap">
									<div class="row">
										<c:forEach var="goodsClass" items="${goodsClass}"
											varStatus="stat">
											<div class="checkbox col-xs-auto">
												<label> <input type="checkbox" name="sub_category[]" onclick="javascript:ajaxList();"
													value="${goodsClass}"> <span
													class="icon icon-checkbox"></span> <span
													class="checkbox-label">${goodsClass}</span>
												</label>
											</div>
										</c:forEach>

									</div>
								</div>
							</div>

							<div class="condition form-item col-sm-12 col-lg-6">
								<div class="form-item-title">
									<h4>��ǰ����</h4>
								</div>
								<div class="form-item-wrap">
									<div class="row">

										<div class="checkbox col-xs-auto">
											<label> <input type="checkbox" name="sale" onclick="javascript:ajaxList();" 
												data-text="���� ��ǰ��"> <span class="icon icon-checkbox"></span>
												<span class="checkbox-label">���� ��ǰ��</span>
											</label>
										</div>
										<div class="checkbox col-xs-auto selected">
											<label> <input type="checkbox" name="running"
												data-text="ǰ����ǰ����" checked=""> <span
												class="icon icon-checkbox"></span> <span
												class="checkbox-label">ǰ����ǰ ����</span>
											</label>
										</div>
									</div>
								</div>
							</div>




<<<<<<< HEAD
=======

>>>>>>> 87df90845b63da27769efa5162a63c95ae707953
							<div class="price form-item col-sm-24 col-lg-12">
								<div>
									<div class="form-item-title">
										<h4>���ݴ�</h4>
									</div>
									<div class="form-item-wrap ui-range row">
										<div id="price-range" class="col-xs-12">
											<div class="col-xs-12">
												<input class="xx-control" type="text" name="priceRange[]"
													value="7000" size="22">
											</div>
											<div class="col-xs-12">
												<input class="xx-control" type="text" name="priceRange[]"
													value="298000" size="22">
											</div>
										</div>
										<div class="range-slider col-xs-12">
											<!-- �����̵� -->
											<div id="price-range-slider" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" aria-disabled="false">
												<div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 0%;"></div>
												<a class="ui-slider-handle ui-state-default ui-corner-all" href="#" style="left: 5.03356%;"></a> 
												<a class="ui-slider-handle ui-state-default ui-corner-all" href="#" style="left: 100%;"></a>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="color form-item col-sm-12 col-lg-6">
								<div class="form-item-title">
									<h4>����</h4>
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




							<!-- �˻�/�����ʱ�ȭ
							 <div class="reset form-item col-xs-24">
								<div class="form-item-wrap col-xs-24">
									<button class="button" id="filterClear">
										<span class="button-label">�˻�</span>
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


					<%-- <input type="hidden" name="category" value="${isCategory}" /> 
					<input type="hidden" name="searchCheck" id="searchCheck" value="ON" /> --%>
				</form>

				</section>

				<section class="storeRankCatalog section catalogDisplay container ajax_product_ranking_list">
				<div class="section-head">
					<h3>rank</h3>
					<span class="border"></span>
				</div>
				<div class="section-body">
					<ul class="catalog row">
						<!--��ǰ��� ajax-->
<!--	����(�������)
						<li class="catalog-item col-xs-12 col-sm-6 col-md-4 items_0 c1">
							<div class="thumbnail">
								<a href="../goods/1456896416"> <img
									data-original="http://pic.styleindex.co.kr/g/s/145/1456896416"
									class="for-ie8 img-responsive lazy" width="500" height="500">
									<div
										data-original="http://pic.styleindex.co.kr/g/s/145/1456896416"
										style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/145/1456896416&quot;);"
										class="lazy">
										<img src="/SIRORAGI/theme/pshp/img/blank-square.png"
											class="img-responsive" width="500" height="500">
									</div>
									<div class="cabal-group">
										<span class="cabal cabal-sale"> <span
											class="cabal-label">-73%</span>
										</span>

									</div>
								</a>
								<div class="addon">
									<div class="button-group">
										<button class="button col-xs-12" target="modal" data-size="lg"
											data-label="��ǰ PREVIEW" href="/SIRORAGI/main/goods">
											<span class="icon icon-expansion-white"></span>
										</button>
										<a href="/SIRORAGI/main/goods"
											class="button button-dimmed col-xs-12" target="modal"
											data-size="sm" data-label="SNS�����ϱ�"> <span
											class="icon icon-share-white"></span>
										</a>
									</div>
								</div>
							</div>
							<div class="rank">
								<div class="wrap">
									<span class="rank-plate"><span class="number"> </span><span
										class="number">1</span></span>
									<span class="rank-rise up">
				<span class="icon icon-rise"></span>&lt;!&ndash; 51 �ӽ÷� ���Ƶ�.&ndash;&gt;
			</span>
								</div>
							</div>
							<div class="caption">
								<p class="brand">PANCOAT</p>
								<p class="name">
									<a href="../goods/1456896416">[���༥] NOSWEAT 0952 WINDBREAK
										JUMPER (SP)_PPOSPWB01UC5</a>
								</p>
								<p class="price">
									<span class="was"><span class="label sr-only">�ǸŰ���:</span>129,000<span
										class="currency">��</span></span> <span class="now"><span
										class="label sr-only">���ΰ���:</span>35,370<span class="currency">��</span></span>
								</p>
							</div>
						</li>
 -->
						<c:forEach var="goodsRank" items="${goodsRank}" varStatus="stat">
							<c:if test="${stat.count <7}">

								<c:url var="viewURL" value="/goodsDetail">
									<c:param name="GOODS_NUMBER" value="${goodsRank.GOODS_NUMBER }" />
								</c:url>
								<li class="catalog-item col-xs-12 col-sm-6 col-md-4 items_0 c1">
									<div class="thumbnail">
										<a href="${viewURL}"> <img
											data-original="/SIRORAGI/file/goodsFile/${goodsRank.GOODS_THUMBNAIL}"
											class="for-ie8 img-responsive lazy" width="500" height="500">
											<div
												data-original="/SIRORAGI/file/goodsFile/${goodsRank.GOODS_THUMBNAIL}"
												style="display: block; background-image: url(&quot;/SIRORAGI/file/goodsFile/${goodsRank.GOODS_THUMBNAIL}&quot;);"
												class="lazy">
												<img src="/SIRORAGI/theme/pshp/img/blank-square.png"
													class="img-responsive" width="500" height="500">
											</div>
											<div class="cabal-group">
												<!-- �����±׽���  -->
												<c:if test="${goodsRank.GOODS_DCPRICE != null}">

												<span class="cabal cabal-sale"> 
												<span class="cabal-label">-
												<fmt:formatNumber value="${(goodsRank.GOODS_PRICE - goodsRank.GOODS_DCPRICE)*100 / goodsRank.GOODS_PRICE}" type="number" />
												%
												</span>
												</span>
													
												</c:if>

												<c:if test="${nowDate < goodsRank.GOODS_NEWDATE}">
												<span class="cabal cabal-new"> 
												<span class="cabal-label">
												new
												</span>
												</span> 
												</c:if>
												
												
												<c:if test="${goodsRank.AMOUNT<50}">
												<span class="cabal cabal-hurryup"> <span
													class="cabal-label">HURRY UP</span>
												</span>
												</c:if>
												<!-- �����±׳�  -->

											</div>
										</a>
										<div class="addon">
											<div class="button-group">
												<button class="button col-xs-12" target="modal" data-size="lg" data-label="��ǰ PREVIEW" href="/SIRORAGI/main/goods?GOODS_NUMBER=${goodsRank.GOODS_NUMBER}">
													<span class="icon icon-expansion-white"></span>
												</button>
												<a href="${viewURL}" class="button button-dimmed col-xs-12"target="modal" data-size="sm" data-label="SNS�����ϱ�"> <span
													class="icon icon-share-white"></span>
												</a>
											</div>
										</div>
									</div>
									<div class="rank">
										<div class="wrap">
											<span class="rank-plate"><span class="number">
											</span><span class="number">${stat.count}</span></span>
											<!--<span class="rank-rise up">
				<span class="icon icon-rise"></span>&lt;!&ndash; 51 �ӽ÷� ���Ƶ�.&ndash;&gt;
			</span>-->
										</div>
									</div>
									<div class="caption">
										<p class="brand">SIRORAGI</p>
										<p class="name">
											<a href="${viewURL}">${goodsRank.GOODS_NAME}</a>
										</p>
										<p class="price">
											<c:if test="${goodsRank.GOODS_DCPRICE != null}">
												<span class="was"><span class="label sr-only">�ǸŰ���:</span>
													<fmt:formatNumber value="${goodsRank.GOODS_PRICE}"
														type="number"></fmt:formatNumber><span class="currency">��</span></span>
												<span class="now"><span class="label sr-only">���ΰ���:</span>
													<fmt:formatNumber value="${goodsRank.GOODS_DCPRICE}"
														type="number"></fmt:formatNumber><span class="currency">��</span></span>
											</c:if>
											<c:if test="${goodsRank.GOODS_DCPRICE == null}">
												<span class="now"><span class="label sr-only">�ǸŰ���:</span>
													<fmt:formatNumber value="${goodsRank.GOODS_PRICE}"
														type="number"></fmt:formatNumber><span class="currency">��</span></span>
											</c:if>
											<!-- <span class="was"><span class="label sr-only">�ǸŰ���:</span>129,000<span class="currency">��</span></span>
			<span class="now"><span class="label sr-only">���ΰ���:</span>35,370<span class="currency">��</span></span> -->
										</p>
									</div>
								</li>
							</c:if>
						</c:forEach>



					</ul>
				</div>
				<!--<div class="section-foot">
		<button class="button btn-more-ranking col-xs-offset-9 col-xs-6">
			<span class="button-label">������</span>
		</button>
	</div>--> </section>

				<section class="storeCatalog section container" id="changeList">
				<div class="section-head" >
					<h3>product list</h3>
					<span class="border"></span>
				</div>

				<div class="section-body">
					<!-- ### �˻� �±� -->
					<!--<div class="hashFilter-result">
			<ul class="row">
				<li class="fixed">
					<button class="button button-dimmed small" id="filterClear">
						<span class="button-label">RESET</span>

					</button>
				</li>
				&lt;!&ndash; ### ajax : filter tag &ndash;&gt;
			</ul>
		</div>-->

					<!-- ### ���� -->
					<div class="catalog-operate">
						<!--<p class="catalogCounter">��ü <strong><span id="recodeTotal">0</span>��</strong>�� ��ǰ</p>-->
						<div class="sort form-item hidden-xs hidden-sm">
							<div class="form-item-wrap">
								<ul class="row">
									<li class="col-md-auto">
										<button class="button button-default" onclick="javascript:onSort(1);">
											<span class="button-label" data-sort="a.sort">�α��</span>
										</button>
									</li>
									<li class="col-md-auto">
										<button class="button button-default selected" onclick="javascript:onSort(2);">
											<span class="button-label" data-sort="goodsno desc">�Ż�ǰ</span>
										</button>
									</li>
									<li class="col-md-auto">
										<button class="button button-default" onclick="javascript:onSort(3);">
											<span class="button-label" data-sort="price">��������</span>
										</button>
									</li>
									<li class="col-md-auto">
										<button class="button button-default" onclick="javascript:onSort(4);">
											<span class="button-label" data-sort="price desc">��������</span>
										</button>
									</li>
									<li class="col-md-auto">
										<button class="button button-default" onclick="javascript:onSort(5);">
											<span class="button-label" data-sort="salem desc">���η�</span>
										</button>
									</li>
								</ul>
							</div>
						</div>

						<!--mobile��-->
						<div class="sort mobile form-item col-xs-12 hidden-md hidden-lg">
							<div class="form-item-wrap">
								<div class="selectbox col-xs-24">
									<div class="selectbox-data">
										<strong class="text">�α�� </strong> <span
											class="icon icon-dropdown-gray-dark"></span>
									</div>
									<select name="sort">
										<option value="a.sort" selected="">�α��</option>
										<option value="goodsno desc">�Ż�ǰ</option>
										<option value="goodsnm">��ǰ��</option>
										<option value="price">��������</option>
										<option value="price desc">��������</option>
										<option value="salem desc">���η�</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<!-- ### ��ǰ ����Ʈ -->
					<ul class="catalog ajax-list row">
						<!--��ǰ��� ajax-->

<!--���� �������
                   <li class="catalog-item col-xs-12 col-sm-6 col-md-4 items_0 c1">
                     <div class="thumbnail">
                        <a href="../goods/1487554074"> <img
                           data-original="http://pic.styleindex.co.kr/g/s/148/1487554074"
                           class="for-ie8 img-responsive lazy" width="500" height="500">
                           <div
                              data-original="http://pic.styleindex.co.kr/g/s/148/1487554074"
                              style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/148/1487554074&quot;);"
                              class="lazy">
                              <img src="/SIRORAGI/theme/pshp/img/blank-square.png"
                                 class="img-responsive" width="500" height="500">
                           </div>
                           <div class="cabal-group">
                              <span class="cabal cabal-sale"> <span
                                 class="cabal-label">-22%</span>
                              </span>

                           </div>
                        </a>
                        <div class="addon">
                           <div class="button-group">
                              <button class="button col-xs-12" target="modal" data-size="lg"
                                 data-label="��ǰ PREVIEW" href="/SIRORAGI/main/goods">
                                 <span class="icon icon-expansion-white"></span>
                              </button>
                              <a href="../goods/sns?goodsno=1487554074"
                                 class="button button-dimmed col-xs-12" target="modal"
                                 data-size="sm" data-label="SNS�����ϱ�"> <span
                                 class="icon icon-share-white"></span>
                              </a>
                           </div>
                        </div>
                     </div>
                     <div class="caption">
                        <p class="brand">PANCOAT</p>
                        <p class="name">
                           <a href="../goods/1487554074">[���༥] MULTI CHARACTER FLOWER
                              LETTERING TRACKTOP (STRAWBERRY MILK PINK)_PPOEPTT01VP9</a>
                        </p>
                        <p class="price">
                           <span class="was"><span class="label sr-only">�ǸŰ���:</span>99,000<span
                              class="currency">��</span></span> <span class="now"><span
                              class="label sr-only">���ΰ���:</span>77,520<span class="currency">��</span></span>
                        </p>
                     </div>
                  </li> -->

                  <%-- <c:choose>
   <c:when test="${goodsList == null}">
      <c:forEach var="goodsList"  items="${goodsList}" varStatus="stat">
   </c:when>
   
   <c:when test="${goodsList != null}">
      <c:forEach var="goodsList"  items="${goodsList}" varStatus="stat">
   </c:when>
</c:choose>
 --%>
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
											<!-- �����±� ����  -->
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
												data-size="lg" data-label="��ǰ PREVIEW"
												href="/SIRORAGI/main/goods?GOODS_NUMBER=${goodsList.GOODS_NUMBER}">
												<span class="icon icon-expansion-white"></span>
											</button>
											<a href="${viewURL}" class="button button-dimmed col-xs-12"
												target="modal" data-size="sm" data-label="SNS�����ϱ�"> <span
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
											<span class="was"><span class="label sr-only">�ǸŰ���:</span>
												<fmt:formatNumber value="${goodsList.GOODS_PRICE}"
													type="number"></fmt:formatNumber><span class="currency">��</span></span>
											<span class="now"><span class="label sr-only">���ΰ���:</span>
												<fmt:formatNumber value="${goodsList.GOODS_DCPRICE}"
													type="number"></fmt:formatNumber><span class="currency">��</span></span>
										</c:if>
										<c:if test="${goodsList.GOODS_DCPRICE == null}">
											<span class="now"><span class="label sr-only">�ǸŰ���:</span>
												<fmt:formatNumber value="${goodsList.GOODS_PRICE}"
													type="number"></fmt:formatNumber><span class="currency">��</span></span>
										</c:if>
										<%-- 
			<span class="was"><span class="label sr-only">�ǸŰ���:</span>${goodsList.GOODS_PRICE}<span class="currency">��</span></span>
			<span class="now"><span class="label sr-only">���ΰ���:</span>${goodsList.GOODS_DCPRICE}<span class="currency">��</span></span> --%>
									</p>
								</div>
							</li>


						</c:forEach>
						
<!-- 					<input type="button" id="listButton"  onclick="javascript:onSort()"  value="����Ʈ���" />
						<section class="storeCatalog section container" id="listDiv">
						�߾�
						</section> -->



					</ul>
				</div>
				<!--
	<div class="section-foot">
		<button class="button btn-more col-xs-offset-9 col-xs-6">
			<span class="button-label">������</span>
		</button>
	</div>
	--> </section>
			</div>
		</div>
	</div>
	
	<script>
	function onSort(i){
		var f = document.fmFilter;
		//var searchCheck=f.searchCheck.value;
		var isCategory ='${isCategory}';
		//console.log("�ֳܼ���" + searchCheck + isCategory);
		 $.ajax({
		      url: "/SIRORAGI/goods/goodsCategory",
		      type : "post",
		      data: {"sort":i,"category":isCategory},
		      success:function(data){
		    	  $("#changeList").html(data);
		      }
		   });
		
		}
	
	function ajaxList(sortCheck){
		var f = document.fmFilter;
		//var searchCheck=f.searchCheck.value;
		var color=document.getElementsByName('color[]');
		var priceRange = document.getElementsByName('priceRange[]');
		var sub_category = document.getElementsByName('sub_category[]');
		var sale = document.getElementsByName('sale');
		var isCategory ='${isCategory}';
		var searchCheck='ON';
		console.log("�����۸���ƮŽ"); 
		

		//�̰ŵ� �ȴ�
		/* var checkboxValues = [];
		
		$("input[name='color[]']:checked").each(function() {
	    	console.log("���̸�");
	    	 checkboxValues.push($(this).val());
	    });
		console.log("���̸�1"+ checkboxValues[0]);
		console.log("���̸�2"+ checkboxValues[1]);
		console.log("���̸�3"+ checkboxValues[2]); */
		//�̰ŵ�
		
		
		//���� �˻�
		var myColor = new Array();		
		var j = 0;
		
		for(var i=0;i<color.length;i++){
			//console.log("�����̸� ���ض�2" + color[i].value );
			if(color[i].checked == true){
				//console.log("�����̸� ���ض�" + color[i].value );
				var a = color[i].value;
				myColor[j] = color[i].value;
				//console.log("�� �����" + j + myColor[j] );
				j++;
			}
		}
		
		console.log(myColor.length+"����");
		for(var i=0;i<myColor.length;i++){
			console.log("myColor�����" + myColor[i] );
		}
		//���˻���
		
		//���� �˻�
		var myPriceRange = new Array();		
				
		myPriceRange[0]=priceRange[0].value;
		myPriceRange[1]=priceRange[1].value;
		
		console.log("myPriceRange : " +myPriceRange.length);
		//���ݰ˻� ��
		
		//�Һз��˻� ����
		var mySub_category = new Array();
		var o=0;
		for(var i=0;i<sub_category.length;i++){
			//console.log("�ٺ�22"+sub_category[i].value);
			if(sub_category[i].checked == true){
				mySub_category[o]=sub_category[i].value;
				//console.log("�ٺ�11"+sub_category[i].value);
				o++;
			}
			
			
		}
		console.log("�Һз� ���� ����"+mySub_category.length);
	
		//�Һз��˻� ��
		
		//���ϻ�ǰ �˻� ����
		var mySale=sale[0].checked;
		console.log("sale ��?? " +mySale);
		if(mySale==true)
		{
			mySale="on";
			console.log("����üũ"+mySale);
		}
		
		
		//���ϻ�ǰ �˻� ��
		
		//���� ���� ����
		if(sortCheck != null){
			console.log("���ı��н���");
		}
		//���� ���� ��
		
		
 		$.ajaxSettings.traditional = true;//�迭 ���·� ������ ������ ���� ����
		 $.ajax({
		      url: "/SIRORAGI/goods/goodsCategory",
		      type : "post",
		      data: {"category":isCategory,"myColor":myColor,"priceRange":myPriceRange,"searchCheck":searchCheck,"sub_category":mySub_category,"sale":mySale,"sortCheck":sortCheck},
		      success:function(data){
		    	  $("#changeList").html(data);
		      }
		   });  
		
		
	}		
		
		//console.log("�ֳܼ���" + color[0].value );
		
		//if($(color[1]).is(":checked");)
		//	console.log("�ֳܼ���2");
		
		/*  $.ajax({
		      url: "/SIRORAGI/goods/goodsCategory",
		      type : "post",
		      data: {"sort":i,"category":isCategory},
		      success:function(data){
		    	  $("#changeSort").html(data);
		      }
		   }); */
		
		   
		   
	   /*** ranking ����bar ���콺�� �� ��� �̺�Ʈ �߻� ***/
	   $( "#price-range-slider" ).slider({
		     stop: function() {
		    	 ajaxList();
		      console.log("�ٴٴ�");
		      //��Ʈ(2);
		     }
		   });


	


</script>

</body>
</html>