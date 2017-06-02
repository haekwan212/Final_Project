<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
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
									<c:if test="${sort ==1}">
										<button class="button button-default selected" onclick="javascript:ajaxList(1);">
											<span class="button-label" data-sort="a.sort">�α��</span>
										</button>
									</c:if>
									
									<c:if test="${sort !=1}">
										<button class="button button-default" onclick="javascript:ajaxList(1);">
											<span class="button-label" data-sort="a.sort">�α��</span>
										</button>
									</c:if>
									</li>
									
									<li class="col-md-auto">
									<c:if test="${sort ==2}">
										<button class="button button-default selected" onclick="javascript:ajaxList(2);">
											<span class="button-label" data-sort="goodsno desc">�Ż�ǰ</span>
										</button>
									</c:if>
									<c:if test="${sort !=2}">
										<button class="button button-default" onclick="javascript:ajaxList(2);">
											<span class="button-label" data-sort="goodsno desc">�Ż�ǰ</span>
										</button>									
									</c:if>
									</li>
									
									<li class="col-md-auto">
									<c:if test="${sort ==3}">
										<button class="button button-default selected" onclick="javascript:ajaxList(3);">
											<span class="button-label" data-sort="price">��������</span>
										</button>
									</c:if>
									<c:if test="${sort !=3}">
										<button class="button button-default" onclick="javascript:ajaxList(3);">
											<span class="button-label" data-sort="price">��������</span>
										</button>									
									</c:if>
									</li>
									
									<li class="col-md-auto">
										<c:if test="${sort ==4}">
											<button class="button button-default selected" onclick="javascript:ajaxList(4);">
												<span class="button-label" data-sort="price desc">��������</span>
											</button>
										</c:if>
										
										<c:if test="${sort !=4}">
											<button class="button button-default" onclick="javascript:ajaxList(4);">
												<span class="button-label" data-sort="price desc">��������</span>
											</button>
										</c:if>
									</li>
										
									<li class="col-md-auto">
										<c:if test="${sort ==5}">
											<button class="button button-default selected" onclick="javascript:ajaxList(5);">
												<span class="button-label" data-sort="salem desc">���η�</span>
											</button>
										</c:if>
										
										<c:if test="${sort !=5}">
											<button class="button button-default" onclick="javascript:ajaxList(5);">
												<span class="button-label" data-sort="salem desc">���η�</span>
											</button>
										</c:if>
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
								<!-- ����� ��������  -->
								<c:if test="${goodsList.GOODS_DCPRICE != null}">

									<%-- <c:set value="${goodsList.GOODS_PRICE}" var="PRICE" type="number"/> --%>




									<span class="cabal cabal-sale"> <span
										class="cabal-label">- <fmt:formatNumber
												value="${(goodsList.GOODS_PRICE - goodsList.GOODS_DCPRICE)*100 / goodsList.GOODS_PRICE}"
												type="number" /> %
									</span>
									</span>
								</c:if>

								<c:if test="${nowDate < goodsList.GOODS_NEWDATE}">
									<span class="cabal cabal-new"> 
									<span class="cabal-label">
											new 
									</span>
									</span>
								</c:if>

								<c:if test="${goodsList.AMOUNT < 50}">
									<span class="cabal cabal-hurryup"> 
									<span class="cabal-label"> 
									HURRY UP 
									</span>
									</span>
								</c:if>
							</div>
						</a>
						<div class="addon">
							<div class="button-group">
								<button class="button col-xs-12" target="modal" data-size="lg"
									data-label="��ǰ PREVIEW"
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
									<p class="brand">PANCOAT</p>
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
			
									</p>
								</div>
							</li>


						</c:forEach>
	<!--  ��ϵ� ��ǰ�� ������
<c:if test="${fn:length(goodsList) le 0}">
	
	<font size="20" >&nbsp;&nbsp;��ϵ� ��ǰ�� �����ϴ�</font>

</c:if> -->



					</ul>
				</div>
</body>
</html>