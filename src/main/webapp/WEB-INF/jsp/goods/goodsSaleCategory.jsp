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

	<!-- coordi ������ editor's pick ���������� page-category ����ߵ� -->
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


			<!--������Ʈ ���ܳ�
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
				<span class="text">��۰��� �������� �ȳ� �帳�ϴ�.</span>
			</a>
			-->
		</div>
	</div>
	<!-- �� ī�װ��� Ÿ��Ʋ-->
	<div class="page-title section">
		<h2>
			<strong id="section_filter_h2_top">SALE
					</strong>
		</h2>
	</div>

	<!-- <script>
	$("#section_filter_h2_top").html($(".selectboxWrap select:first option:selected").text());
	</script> -->

		<!--������������ ��� HOT ISSUES-->
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
				<li class="col-xs-8 col-sm-6 col-md-4 c5"><a href="http://pancoatshop.com/store/event?no=10" target="_self"><img src="/SIRORAGI/theme/pshp/_conf/banner/sale_top_banner/sum_�ٷ�.jpg" class="img-responsive" style="margin:0 0 0 0"></a></li>
			</ul>
			</div>
		</div>







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


			<div class="condition form-item col-sm-12 col-lg-6">
				<div class="form-item-title">
					<h4>��ǰ����</h4>
				</div>
				<div class="form-item-wrap">
					<div class="row">

						<div class="checkbox col-xs-auto selected">
							<label>
								<input type="checkbox" name="running" data-text="ǰ����ǰ����" checked="">
								<span class="icon icon-checkbox"></span>
								<span class="checkbox-label">ǰ����ǰ ����</span>
							</label>
						</div>
					</div>
				</div>
			</div>

			<div class="form-item col-sm-24 col-lg-12">
				<div class="form-item-title">
					<h4>����</h4>
				</div>
				<div class="form-item-wrap">
					<div class="row">
						<div class="checkbox col-xs-auto">
							<label>
								<input type="checkbox" name="saleList[]" onclick="javascript:ajaxList();" value="1" data-text="30%����">
								<span class="icon icon-checkbox"></span>
								<span class="checkbox-label">30%����</span>
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
					<h4>ĳ����</h4>
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
						<span class="button-label">���� �ʱ�ȭ</span>
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
		<!-- ### ���� / ����¡ -->
		<div class="catalog-operate">
			<!--<p class="catalogCounter">��ü <strong><span id="recodeTotal">0</span>��</strong>�� ��ǰ</p>-->
			<div class="sort form-item hidden-xs hidden-sm">
				<div class="form-item-wrap">
					<ul class="row">
						<li class="col-md-auto">
							<button class="button button-default selected" onclick="javascript:onSort(1);">
								<span class="button-label" data-sort="a.sort">�α��</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default " onclick="javascript:onSort(2);">
								<span class="button-label" data-sort="goodsno desc">�Ż�ǰ</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default " onclick="javascript:onSort(3);">
								<span class="button-label" data-sort="price">��������</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default " onclick="javascript:onSort(4);">
								<span class="button-label" data-sort="price desc">��������</span>
							</button>
						</li>
						<li class="col-md-auto">
							<button class="button button-default " onclick="javascript:onSort(5);">
								<span class="button-label" data-sort="sale">���η�</span>
							</button>
						</li>
					</ul>
				</div>
			</div>

			<!--mobile��-->
			<div class="sort mobile form-item col-xs-12 hidden-md hidden-lg">
				<div class="form-item-wrap">
					<div class="selectbox">
						<div class="selectbox-data">
							<strong class="text">�α�� </strong>
							<span class="icon icon-dropdown-gray-dark"></span>
						</div>
						<select name="sort">
							<option value="a.sort" selected="">�α��</option>
							<option value="goodsno desc">�Ż�ǰ</option>
							<option value="goodsnm">��ǰ��</option>
							<option value="price">��������</option>
							<option value="price desc">��������</option>
							<option value="sale">���η�</option>
						</select>
					</div>
				</div>
			</div>
		</div>
		<!-- ### ��ǰ ����Ʈ -->
		<ul class="catalog ajax-list row"><!--��ǰ��� ajax-->

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
													class="cabal-label">new </span>
												</span>
											</c:if>

											<c:if test="${goodsList.AMOUNT<50}">
												<span class="cabal cabal-hurryup"> <span
													class="cabal-label">HURRY UP</span>
												</span>
											</c:if>
											<!-- ���� �±� �� -->
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
									</p>
								</div>
							</li>


						</c:forEach>




					</ul>
	</div>
	<!--<div class="section-foot">
		<button class="button btn-more col-xs-offset-9 col-xs-6">
			<span class="button-label">������</span>
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
	//console.log("�ֳܼ���" + searchCheck + isCategory);
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
	console.log("�����۸���Ʈ123Ž"); 
	
	//���� ���� ����
	var mySale= new Array();
	var j=0;
	
	for(var i=0;i<saleList.length;i++){
		console.log("���� ��尪 ���" + saleList[i].value );
		if(saleList[i].checked == true){
			//console.log("�����̸� ���ض�" + color[i].value );
			//var a = color[i].value;
			mySale[j] = saleList[i].value;
			j++;
		}
	}
	if(mySale != null){
	for(var i=0;i<mySale.length;i++){
		console.log("mySale üũ�Ȱ� : " + mySale[i] );
	}
	}
	//���� ���� ��

		$.ajaxSettings.traditional = true;//�迭 ���·� ������ ������ ���� ����
		 $.ajax({
		      url: "/SIRORAGI/goods/goodsSaleCategory",
		      type : "post",
		      data: {"searchCheck":searchCheck,"sale":mySale,"sortCheck":sortCheck,"searchCheck":searchCheck},
		      success:function(data){
		    	  console.log("����");
		    	  $("#changeList").html(data);
		      },
  	        error: function(e){
  	        	console.log("����");
   	         alert('error' + e);
   	        }
		   });  
		
 
	
	
}	
	
	</script>
</body>
</html>