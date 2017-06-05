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
					<!-- 지도를 표시할 div 입니다 -->
					<div id="map" style="width: 100%; height: 350px;"></div>
					<script type="text/javascript"
						src="//apis.daum.net/maps/maps3.js?apikey=1eeba41ce9cdd351c2a67f9044a2c928&libraries=services"></script>
					<script>
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = {
				        center: new daum.maps.LatLng(37.551374, 126.988227), // 지도의 중심좌표
				        level: 10 // 지도의 확대 레벨
				    };  

				// 지도를 생성합니다    
				var map = new daum.maps.Map(mapContainer, mapOption); 

				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new daum.maps.services.Geocoder();
				

				// 주소로 좌표를 검색합니다
				geocoder.addr2coord('${list.STORE_ADDRESS}', function(status, result) {

				    // 정상적으로 검색이 완료됐으면 
				     if (status === daum.maps.services.Status.OK) {

				        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);

				        // 결과값으로 받은 위치를 마커로 표시합니다
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
					<p>성인 / 패일리 / 키즈</p>-->
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
			<span class="button-label">목록으로 돌아가기</span>
		</a>
	</div>
</section>
</body>
</html>