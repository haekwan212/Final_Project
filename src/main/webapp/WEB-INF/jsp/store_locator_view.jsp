<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<section class="store-locator-view section">

	<div id="map-canvas">
					<!-- ������ ǥ���� div �Դϴ� -->
					<div id="map" style="width: 100%; height: 350px;"></div>
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
				</div>
	<div class="section-body">
		<div class="storeInfo">
			<div class="container">
				<div class="item col-md-8">
					<strong>address</strong>
					<p>${list.STORE_ADDRESS}</p>
					<strong>tel</strong>
					<p>${list.STORE_PHONE}</p>
					<!--<strong>store</strong>
					<p>���� / ���ϸ� / Ű��</p>-->
				</div>
<div class="item col-md-8">
</div>
				<div class="item col-md-8">
					<strong>Opening Hours</strong>
					<ul>
						<li><span class="c1">monday</span><span class="c2">9:00 - 7:00</span></li>
						<li><span class="c1">Tuesday</span><span class="c2">9:00 - 7:00</span></li>
						<li><span class="c1">WednesDay</span><span class="c2">9:00 - 7:00</span></li>
						<li><span class="c1">ThursDay</span><span class="c2">9:00 - 7:00</span></li>
						<li><span class="c1">FriDay</span><span class="c2">9:00 - 7:00</span></li>
						<li><span class="c1">Saturday</span><span class="c2">9:00 - 7:00</span></li>
						<li><span class="c1">Sunday</span><span class="c2">9:00 - 7:00</span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="section-foot">
		<a href="store_locator" class="button col-xs-offset-6 col-xs-12 col-sm-offset-10 col-sm-4">
			<span class="button-label">������� ���ư���</span>
		</a>
	</div>
</section>
</body>
</html>