<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="modal-body">
	<style>
.popover-content {
	font-size: 12px !important;
}

.label1 {
	border-radius: 0;
	padding: 5px;
	font-size: 11px;
	display: inline;
	font-weight: bold;
	line-height: 1;
	color: #fff;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle !important;
}

.label-primary1 {
	background-color: #337ab7;
}
</style>

	<form name="fmOrder">
		<input type="hidden" name="mode"> <input type="hidden"
			name="goodsno" value="${goodsBasic.GOODS_NUMBER }">

		<div class="product-view-main-sub row">
			<div class="col-lg-24">
				<div class="box-wrap box-shadow">
					<section class="product-view-thumbnail section col-xs-24 col-sm-13">
						<div class="wrap">
							<div class="thumbnail">
								<img
									img_layer="/SIRORAGI/file/goodsFile/${goodsBasic.GOODS_THUMBNAIL}"
									goodsno="${goodsBasic.GOODS_NUMBER }"
									src="/SIRORAGI/file/goodsFile/${goodsBasic.GOODS_THUMBNAIL}"
									width="500" class="img-responsive">
							</div>
							<!-- thumbnail//end -->
							<!-- thumbnail-wrap//end -->

							<!-- share-sns//end -->
						</div>
					</section>
					<!-- product-view-thumbnail//end -->

					<section
						class="product-view-information section col-xs-24 col-sm-11">
						<div class="section-body">
							<div class="description">
								<!--<em class="season">2015 F/W</em>-->

								<strong class="product-name" data-toggle="popover"
									data-content="상품번호 : ${goodsBasic.GOODS_NUMBER}"
									data-trigger="hover" data-placement="bottom">${goodsBasic.GOODS_NAME}</strong>
							</div>
							<!-- description//end -->
							<div class="guide">
								<dl class="addon">
									<dt class="col-xs-6 col-md-5">고객 평가</dt>
									<dd class="col-xs-18 col-md-19">
										<div class="rating">
											<span class="ratio"> <span style="width:${avgGrade}%">
													<span class="star"></span>
											</span>
											</span>
										</div>
									</dd>
								</dl>
								<dl class="hits">
									<dt class="col-xs-6 col-md-5">상품 조회수</dt>
									<dd class="count col-xs-18 col-md-19">${goodsBasic.GOODS_COUNT}&nbsp;Hit</dd>
								</dl>
							</div>
							<!-- guide//end -->
							<div class="price">
								<dl class="price-base">
									<dt class="col-xs-6 col-md-5">판매 가격</dt>
									<dd class="col-xs-18 col-md-19">
										<c:if test="${goodsBasic.GOODS_DCPRICE eq null}">
											<p class="now">
												<fmt:formatNumber value="${goodsBasic.GOODS_PRICE}"
													type="number" />
												원
											</p>
										</c:if>
										<c:if test="${goodsBasic.GOODS_DCPRICE ne null}">
											<p class="was">
												<fmt:formatNumber value="${goodsBasic.GOODS_PRICE}"
													type="number" />
												원
											</p>
											<p class="now">
												<fmt:formatNumber value="${goodsBasic.GOODS_DCPRICE}"
													type="number" />
												원
											</p>
										</c:if>
									</dd>
								</dl>
								<dl class="price-benefit-rating">
									<dt class="col-xs-6 col-md-5">간략 설명</dt>
									<dt class="col-xs-18">${goodsBasic.GOODS_DETAIL}</dt>
								</dl>
							</div>
							<div class="benefit">
								<!-- delivery charge -->
								<dl class="delivery">
									<dt class="col-xs-6 col-md-5">배송비</dt>
									<dd class="col-xs-18 col-md-19">
										<c:choose>
									<c:when test="${goodsBasic.GOODS_DCPRICE eq null && goodsBasic.GOODS_PRICE>29999}">
										<b>무료</b> (30,000원 이상 무료배송)
										</c:when>
										<c:when test="${goodsBasic.GOODS_DCPRICE ne null && goodsBasic.GOODS_DCPRICE>'29999'}">
										<b>무료</b> (30,000원 이상 무료배송)
										</c:when>
										<c:otherwise>
										<b>2,500원</b> (30,000원 이상 무료배송)
										</c:otherwise>
										</c:choose>
									</dd>
								</dl>
								<!--delivery charge-->


								<dl class="price-earning">
									<dt class="col-xs-6 col-md-5">예상 적립금</dt>
									<c:if test="${goodsBasic.GOODS_DCPRICE eq null}">
										<dd class="col-xs-18 col-md-19">
											<fmt:formatNumber value="${goodsBasic.GOODS_PRICE/100}"
												type="number" />
											원
										</dd>
									</c:if>
									<c:if test="${goodsBasic.GOODS_DCPRICE ne null}">
										<dd class="col-xs-18 col-md-19">
											<fmt:formatNumber value="${goodsBasic.GOODS_DCPRICE/100}"
												type="number" />
											원
										</dd>
									</c:if>
								</dl>
								<!--
				<dl class="price-earning">
					<dt class="col-xs-6 col-md-5">적립 포인트</dt>
					<dd class="col-xs-18 col-md-19">4210&nbsp;P</dd>
				</dl>
				-->

								
								<!-- installment//end -->
							</div>
							<div class="payco_info col-lg-24 row text-center"
								style="font-size: 14px; font-weight: bold; line-height: 20px; width: 100%; margin: 0; margin-bottom: 10px; background-color: #ffc000; color: #fff; border-top: 1px solid #ffc000;">
								<font color=red>실오라기</font> 데일리룩 스타일링
							</div>

							<div class="option">
								<dl>
									<dt class="col-xs-6 col-md-5">상품 옵션</dt>
									<dd class="col-xs-18 col-md-19">
										<div class="col-xs-24">
											<div class="optionSelect">

												<div class="selectbox">
													<div class="selectbox-data">
														<strong class="text">옵션 선택 </strong> <span
															class="icon icon-dropdown-gray-dark"></span>
													</div>
													<select id="option" onchange="setOption(this)">
														<option value="">옵션 선택</option>
														<c:forEach var="goodsDetail" items="${goodsDetail}"
															varStatus="stat">
															<c:if test="${goodsDetail.GOODS_AMOUNT ne 0}">
																<c:if test="${goodsBasic.GOODS_DCPRICE ne null }">
																	<option
																		value="${goodsDetail.GOODS_COLOR }-${goodsDetail.GOODS_SIZE }"
																		optnm="${goodsDetail.GOODS_COLOR }-${goodsDetail.GOODS_SIZE }"
																		stock="${goodsDetail.GOODS_AMOUNT }"
																		price="${goodsBasic.GOODS_DCPRICE }"
																		kinds="${goodsDetail.GOODS_KINDS_NUMBER }">
																		${goodsDetail.GOODS_COLOR } - ${goodsDetail.GOODS_SIZE }
																		(${goodsDetail.GOODS_AMOUNT }개)</option>
																</c:if>
																<c:if test="${goodsBasic.GOODS_DCPRICE eq null }">
																	<option
																		value="${goodsDetail.GOODS_COLOR }-${goodsDetail.GOODS_SIZE }"
																		optnm="${goodsDetail.GOODS_COLOR }-${goodsDetail.GOODS_SIZE }"
																		stock="${goodsDetail.GOODS_AMOUNT }"
																		price="${goodsBasic.GOODS_PRICE }"
																		kinds="${goodsDetail.GOODS_KINDS_NUMBER }">
																		${goodsDetail.GOODS_COLOR } - ${goodsDetail.GOODS_SIZE }
																		(${goodsDetail.GOODS_AMOUNT }개)</option>
																</c:if>
															</c:if>
															<c:if test="${goodsDetail.GOODS_AMOUNT eq 0}">
																<option
																	value="${goodsDetail.GOODS_COLOR }-${goodsDetail.GOODS_SIZE }"
																	optnm="${goodsDetail.GOODS_COLOR }-${goodsDetail.GOODS_SIZE }"
																	stock="0" price="0" disabled=""
																	kinds="${goodsDetail.GOODS_KINDS_NUMBER }">
																	${goodsDetail.GOODS_COLOR } - ${goodsDetail.GOODS_SIZE }
																	(품절)</option>
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
												function setOption(obj) {
													if (!chkSoldout(obj))
														return;
													if ($(
															"#option option:selected")
															.attr("disabled") == "disabled") {
														alert("선택한 옵션은 품절된 상태입니다");
														$("#option").get(0).selectedIndex = 0;
														return;
													}
													var optno = $(
															"#option option:selected")
															.val();
													if (!optno
															|| in_array(optno,
																	r_optno))
														return;
													var li = "<li><b>" + $("#option option:selected").attr("optnm") + "</b><input type='hidden' name='optno[]' value='" + optno + "'><input type='hidden' name='kinds[]' value='" + $("option:selected",$(obj)).attr("kinds") + "'><input type='hidden' class='mstock' value='" + $("option:selected",$(obj)).attr("stock") + "'><input type='text' name='ea[]' value='1' class='input_ea' size='2' maxlength='3'> <span class='ea'><a class='btn-ea-up'><img src='/SIRORAGI/theme/pshp/img/btn_num_up.gif' alt='' /></a><a class='btn-ea-dn'><img src='/SIRORAGI/theme/pshp/img/btn_num_down.gif' alt='' /></a></span><span class='price'>" + comma($("option:selected",$(obj)).attr("price")) + "원</span><a href='#' optno='" + optno + "' class='btn-remove'><img src='/SIRORAGI/theme/pshp/img/btn_close.gif' alt='' /></a></li>";
													$("#optionbox").append(li);
													r_optno.push(optno);
													totprice += parseInt($(
															"option:selected",
															$(obj)).attr(
															"price"));
													$("#totprice").html(
															comma(totprice));
												}
												function chkSoldout(obj) {
													if (obj.options[obj.selectedIndex].stock == "0") {
														alert("선택한 항목은 품절된 옵션입니다");
														obj.selectedIndex = 0;
														return false;
													}
													return true;
												}

												$("#optionbox")
														.on(
																"click",
																"li a.btn-remove",
																function() {
																	$(this)
																			.parent()
																			.remove();
																	var ritem = $(
																			this)
																			.attr(
																					"optno");
																	r_optno = $
																			.grep(
																					r_optno,
																					function(
																							v) {
																						return v != ritem;
																					});
																	console
																			.log(r_optno);
																	event
																			.preventDefault();
																});

												$("#optionbox")
														.on(
																"click",
																"li a.btn-ea-up",
																function(e) {
																	var thisIdx = $(
																			".btn-ea-up")
																			.index(
																					this);
																	var inputEa = parseInt($(
																			".input_ea")
																			.eq(
																					thisIdx)
																			.val());
																	var mStock = parseInt($(
																			".mstock")
																			.eq(
																					thisIdx)
																			.val());

																	// 재고 수량 이상 주문 체크
																	if (inputEa >= mStock) {
																		alert(mStock
																				+ "개 이상 주문하실 수 없습니다.");
																		return false;
																	} else {
																		change_ea(
																				this,
																				1);
																		return false;
																	}
																});

												$("#optionbox")
														.on(
																"keyup",
																"li input.input_ea",
																function(e) {
																	var thisIdx = $(
																			".input_ea")
																			.index(
																					this);
																	var mStock = parseInt($(
																			".mstock")
																			.eq(
																					thisIdx)
																			.val());

																	$(this)
																			.val(
																					$(
																							this)
																							.val()
																							.replace(
																									/[^0-9]/g,
																									""));

																	if ($(this)
																			.val() == ""
																			|| parseInt($(
																					this)
																					.val()) <= 0) {
																		$(this)
																				.val(
																						"1");
																		return false;
																	}

																	if (parseInt($(
																			this)
																			.val()) > mStock) {
																		alert(mStock
																				+ "개 이상 주문하실 수 없습니다.");
																		$(this)
																				.val(
																						mStock);
																		return false;
																	}
																});

												$("#optionbox")
														.on(
																"click",
																"li a.btn-ea-dn",
																function(e) {
																	change_ea(
																			this,
																			-1);
																	return false;
																});
											</script>
										</div>

									</dd>
								</dl>
							</div>

							<div class="action">
								<div class="row">
									<div class="col-xs-12">
										<a href="/SIRORAGI/goodsDetail?GOODS_NUMBER=${goodsBasic.GOODS_NUMBER}"
											class="button button-dimmed col-xs-24"> <span
											class="button-label">상품상세보기</span>
										</a>
									</div>
									<div class="col-xs-12">
										<a href="/SIRORAGI/searchList?stxt=${goodsBasic.GOODS_CATEGORY2}" class="button button-dimmed col-xs-24">
											<span class="button-label">${goodsBasic.GOODS_CATEGORY2 } 더보기</span>
										</a>
									</div>
								</div>
							</div>

							<div class="hashTag-wrap">
								<a href="/SIRORAGI/searchList?stxt=${goodsBasic.GOODS_CATEGORY2 }" class="hashTag"> <span
									class="hashTag-labl">#${goodsBasic.GOODS_CATEGORY2 }</span>
								</a> <a href="/SIRORAGI/searchList?stxt=${goodsBasic.GOODS_CATEGORY2 }"
									class="hashTag"> <span class="hashTag-labl">#실오라기
										${goodsBasic.GOODS_CATEGORY2 }</span>
								</a> <a href="/SIRORAGI/searchList?stxt=${goodsBasic.GOODS_CATEGORY2 }" class="hashTag">
									<span class="hashTag-labl">#SIRORAGI
										${goodsBasic.GOODS_CATEGORY2 }</span>
								</a> <a href="/SIRORAGI/searchList?stxt= " class="hashTag">
									<span class="hashTag-labl">#실오라기</span>
								</a> <a href="/SIRORAGI/searchList?stxt= " class="hashTag"> <span
									class="hashTag-labl">#SIRORAGI</span>
								</a>
							</div>
						</div>

						<div class="section-foot">
							<div class="button-group">
								<a href="javascript:_exec('buy');"
									class="button large col-xs-12"> <span class="button-label">바로구매</span>
								</a> <a href="javascript:_exec('cart');"
									class="button button-dimmed large col-xs-12"> <span
									class="button-label">장바구니</span>
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
							<c:forEach var="relatedGoods" items="${relatedGoods}"
								varStatus="stat">
								<li class="catalog-item col-xs-6 col-sm-3 col-lg-6">
									<div class="thumbnail">
										<a
											href="/SIRORAGI/goodsDetail?GOODS_NUMBER=${relatedGoods.GOODS_NUMBER }">
											<div
												data-original="http://pic.styleindex.co.kr/g/s/140/1408942440"
												style="display: block; background-image: url(&quot;http://pic.styleindex.co.kr/g/s/140/1408942440&quot;);"
												class="lazy">
												<img
													src="/SIRORAGI/file/goodsFile/${relatedGoods.GOODS_THUMBNAIL}"
													class="img-responsive" width="500" height="500">
											</div>
										</a>
									</div> <!-- <div class="caption">
	                            <p class="name">
	                                <a href="/goods/1408942440">[ONLINE FAMILY SALE]에어 테크 후디 탑 (FP) (NEON GREEN)_PROFPSZ04U</a>
	                            </p>
	                            <p class="price">
	                                <span class="now"><span class="label sr-only">할인가격:</span>12,800<span class="currency">원</span></span>
	                            </p>
	                        </div>-->
								</li>
							</c:forEach>


						</ul>
					</div>
				</div>
				<!-- product-related-list//end -->

				<style>
.size_recomm {
	background: #fff;
	padding: 10px;
	text-align: center;
	font-size: 1.2em;
}

.size_recomm div {
	margin: 0 2px;
}
</style>

				<div
					class="product-related-event box-shadow storeCatalog event product-view-reviews-list">

					<div class="section-head left">
						<h3>사이즈 추천</h3>
						(구매한 회원님의 정보입니다. 참고용으로만 사용하세요)
					</div>
					<div>
						<div class="section-body" style="height: 200px; overflow-y: auto;">
							<ul class="list-dropdown">
								<li class="size_recomm">
									<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">150cm</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">35kg</div>
									<div class="col-md-6 col-xs-6 btn btn-warning btn-xs">
										<b style="font-weight: bold">XS</b>
									</div>
								</li>
								<li class="size_recomm">
									<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">160cm</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">47kg</div>
									<div class="col-md-6 col-xs-6 btn btn-warning btn-xs">
										<b style="font-weight: bold">XS</b>
									</div>
								</li>
								<li class="size_recomm">
									<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">160cm</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">49kg</div>
									<div class="col-md-6 col-xs-6 btn btn-warning btn-xs">
										<b style="font-weight: bold">S</b>
									</div>
								</li>
								<li class="size_recomm">
									<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">165cm</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">52kg</div>
									<div class="col-md-6 col-xs-6 btn btn-warning btn-xs">
										<b style="font-weight: bold">M</b>
									</div>
								</li>
								<li class="size_recomm">
									<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">168cm</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">69kg</div>
									<div class="col-md-6 col-xs-6 btn btn-warning btn-xs">
										<b style="font-weight: bold">M</b>
									</div>
								</li>
								<li class="size_recomm">
									<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">173cm</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">55kg</div>
									<div class="col-md-6 col-xs-6 btn btn-warning btn-xs">
										<b style="font-weight: bold">M</b>
									</div>
								</li>
								<li class="size_recomm">
									<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">161cm</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">70kg</div>
									<div class="col-md-6 col-xs-6 btn btn-warning btn-xs">
										<b style="font-weight: bold">L</b>
									</div>
								</li>
								<li class="size_recomm">
									<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">170cm</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">76kg</div>
									<div class="col-md-6 col-xs-6 btn btn-warning btn-xs">
										<b style="font-weight: bold">L</b>
									</div>
								</li>
								<li class="size_recomm">
									<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">175cm</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">78kg</div>
									<div class="col-md-6 col-xs-6 btn btn-warning btn-xs">
										<b style="font-weight: bold">L</b>
									</div>
								</li>
								<li class="size_recomm">
									<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">170cm</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">65kg</div>
									<div class="col-md-6 col-xs-6 btn btn-warning btn-xs">
										<b style="font-weight: bold">XL</b>
									</div>
								</li>
								<li class="size_recomm">
									<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">173cm</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">80kg</div>
									<div class="col-md-6 col-xs-6 btn btn-warning btn-xs">
										<b style="font-weight: bold">XL</b>
									</div>
								</li>
								<li class="size_recomm">
									<div class="col-md-6 col-xs-6 btn btn-primary btn-xs">남성</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">181cm</div>
									<div class="col-md-5 col-xs-5 btn btn-default btn-xs">74kg</div>
									<div class="col-md-6 col-xs-6 btn btn-warning btn-xs">
										<b style="font-weight: bold">XL</b>
									</div>
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
		function _exec(mode) {

			if (mode == 'restock') {

				document.location.href = "./restock";

			} else if (mode != "wishlist") {
				if (document.getElementsByName("optno[]").length == 0) {
					alert("옵션을 선택해주세요");
					return;
				}

				var fm = document.fmOrder;
				fm.mode.value = mode;
				fm.target = "_self";
				fm.action = "/SIRORAGI/cart/cartIn";
				//if (mode=="wishlist") fm.action = "../mypage/wishlist";
				fm.submit();

			}
		}
	</script>

	<script>
		modal_label("상품 PREVIEW");
	</script>
</div>
<div class="modal-foot"></div>