<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>PANCOAT</title>



</head>
<body>

	<div class="viewport">

		<div id="container">
			<div id="page" class="page">

				<script src="/dist/js/taxonomy.js"></script>
				<script>
					$(function() {
						taxonomy('tid[]', "");
						$("select[name='tid[]']").live(
								"change",
								function() {
									location.href = "/store/category?no="
											+ $(this).val();
								});

						$("#on_click").click(function() {
							$("#on_div").toggle();
						});

						$("#off_click").click(function() {
							$("#off_div").toggle();
						});

						$("#on_div, #off_div").mouseleave(function() {
							$(this).hide();
						});
					});
				</script>
				<h2 class="page-heading container" style="display: none;">
					<strong></strong> <span></span> <span></span>
				</h2>

				<div id="map-canvas">
					<!-- ������ ǥ���� div �Դϴ� -->
					<div id="map" style="width: 100%; height: 350px;"></div>
						<c:forEach var="list"  items="${list}" varStatus="stat">
					<script type="text/javascript"
						src="//apis.daum.net/maps/maps3.js?apikey=1eeba41ce9cdd351c2a67f9044a2c928&libraries=services"></script>
					<script>
					var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
				    mapOption = {
				        center: new daum.maps.LatLng(37.551374, 126.988227), // ������ �߽���ǥ
				        level: 10 // ������ Ȯ�� ����
				    };  

				// ������ �����մϴ�    
				var map = new daum.maps.Map(mapContainer, mapOption); 

				// �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
				var geocoder = new daum.maps.services.Geocoder();
				

				// �ּҷ� ��ǥ�� �˻��մϴ�
				geocoder.addr2coord('${list.STORE_ADDRESS}', function(status, result) {

				    // ���������� �˻��� �Ϸ������ 
				     if (status === daum.maps.services.Status.OK) {

				        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);

				        // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
				        var marker = new daum.maps.Marker({
				            map: map,
				            position: coords
				        });

				    } 
				});    
					</script>
					</c:forEach>
				</div>
				<!-- store-locator//end -->
<section class="store-locator-search section">
	<div class="section-body container">
		<div class="store-search-form">
			<p>����� ���� ������ �˻��ϰų�, �Ʒ� ��Ͽ��� �����Ͻ� �� �ֽ��ϴ�.</p>
			<form action="/SIRORAGI/store_locator_view">
				<div class="x-group col-xs-24 col-md-auto">
					<div class="x-group-addon">
						<span class="icon icon-pin-white"></span>
					</div>
					<input class="xx-control" type="text" id="global-search" placeholder="���� �Ǵ� ������� �Է� (����, �� ��)" size="40" value="" name="STORE_NAME">
					
				</div>
			</form>
			<ul class="related-list">
				<li class="title"><strong>�ֱ� ���� ����</strong></li>
				<li><a href="store_locator_view?STORE_NAME=������">������</a></li>
							<li><a href="store_locator_view?STORE_NAME=������">������</a></li>
							<li><a href="store_locator_view?STORE_NAME=����">����</a></li>
							<li><a href="store_locator_view?STORE_NAME=������">������</a></li>
			</ul>
		</div>
	</div>
</section>
				<!-- store-locator-search//end -->

				<section class="store-locator-list section container"
					id="region_store">
				<div class="section-head">
					<h3>����</h3>
					<span class="border"></span>
				</div>
				<div class="section-body">
					<ul class="row">
						<input type="hidden" value="������" id="STORE_NAME">
						<li class="col-xs-12 col-sm-6 col-md-4"><a
							href="store_locator_view?STORE_NAME=������">������</a></li>
						<input type="hidden" value="����" id="STORE_NAME">
						<li class="col-xs-12 col-sm-6 col-md-4"><a
							href="store_locator_view?STORE_NAME=����">����</a></li>
						<input type="hidden" value="������" id="STORE_NAME">
						<li class="col-xs-12 col-sm-6 col-md-4"><a
							href="store_locator_view?STORE_NAME=������">������</a></li>
					</ul>
				</div>
				<div class="section-head">
					<h3>��⵵</h3>
					<span class="border"></span>
				</div>
				<div class="section-body">
					<ul class="row">
						<input type="hidden" value="������" id="STORE_NAME">
						<li class="col-xs-12 col-sm-6 col-md-4"><a
							href="store_locator_view?STORE_NAME=������">������</a></li>
					</ul>
				</div>
				</section>

				<!-- �˻��� �Է½� �ش� �˻��� ��� START -->

				<div class="page-mask"></div>
			</div>
			<!--contents//end-->
		</div>
	</div>
	<div id="modal" class="modal">
		<div class="modal-mask"></div>
		<div class="modal-content">
			<div class="modal-head">
				<h4>-</h4>
				<button class="button">
					<span class="icon icon-dismiss-white"></span> <span class="sr-only">��
						â �ݱ�</span>
				</button>
			</div>
			<div class="modal-body"></div>
			<div class="modal-foot"></div>
		</div>
	</div>

	<div id="modal-inner" class="modal">
		<div class="modal-mask"></div>
		<div class="modal-content">
			<div class="modal-head">
				<h4>-</h4>
				<button class="button">
					<span class="icon icon-dismiss-white"></span> <span class="sr-only">��
						â �ݱ�</span>
				</button>
			</div>
			<div class="modal-body"></div>
			<div class="modal-foot"></div>
		</div>
	</div>

	<div id="ajaxLoader" class="ajax-loading">
		<div class="ajaxLoader-mask"></div>
		<span class="ajaxLoader-spinner"> <img
			src="/theme/pshp/img/ajax-loader.gif" width="30" height="30">
		</span>
	</div>
	<script src="/dist/bootstrap/js/bootstrap.min.js"></script>
	<script src="/dist/jquery/plugin/jquery.placeholder.js"></script>
	<script src="/dist/js/common.js?v=1"></script>
	<script src="/dist/js/event.js"></script>
	<script src="/theme/pshp/js/event.js"></script>
	<script src="/theme/pshp/js/plugins.min.js"></script>
	<script src="/theme/pshp/js/main.min.js"></script>
	<script src="/theme/pshp/js/vendor/fastclick.min.js"></script>
	<script>
		window.addEventListener('load', function() {
			FastClick.attach(document.body);
		}, false);
	</script>

	<script>
		$('.owl').owl({
			autoplay : true,
			autoplayTimeout : 3000,
			autoplayHoverPause : true
		});
	</script>


	<iframe name="process"
		style="display: none; width: 100%; height: 100px"></iframe>

</body>
</html>