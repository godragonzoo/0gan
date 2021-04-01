<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 요청</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap core CSS -->
<link
	href="../resources/userResources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../resources/userResources/css/shop-homepage.css"
	rel="stylesheet">
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a96c0dc299d2d454e3a4f46c5af9dc68"></script>
	<script>
	
	var staticMapContainer  = document.getElementById('map'), // 이미지 지도를 표시할 div 
		    staticMapOption = { 
	        center: new kakao.maps.LatLng(37.5562718, 126.9192857), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	
	var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
	</script>

</head>
<body>
	<!-- 예약 확인 : 김은비 -->

	<!-- Navigation -->
	<hr>
	<nav class="navbar navbar-expand-lg">
		<div class="container">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="userInfo.do">프로필</a></li>
					<li class="nav-item"><a class="nav-link" href="userRsvtList.do">예약내역</a></li>
					<li class="nav-item"><a class="nav-link" href="userWishlist.do">관심목록</a></li>
					<li class="nav-item"><a class="nav-link" href="userQueList.do">문의내역</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navigation -->

	<div class="container">

		<h2 class="text-center">예약 확인</h2>
		<hr>
		<br> <br>

		<div class="col-lg-4 col-md-6 mb-4"
			style="margin-top: 35px; padding: 30px; float: right; border: 1px solid rgba(0, 0, 0, 0.125); border-radius: 0.25rem;">
			<h4 class="text-center">
				<p class="card-text">예약 정보</p>
			</h4>
			<div class="card h-100">
				<div class="card-body">
					<p class="card-text">호스트 이름</p>
					<p class="card-text">호스트 이름</p>
					<p class="card-text">호스트 연락처</p>
					<p class="card-text">호스트 연락처</p>
					<hr>
					<p class="card-text">결제수단</p>
					<p class="card-text">결제수단</p>
					<p class="card-text">결제금액</p>
					<p class="card-text">결제금액</p>
					<p class="card-text">결제상태</p>
					<p class="card-text">결제상태</p>
				</div>
			</div>
			<div class="text-center">
				<input type="button" id="rsvtCancle" class="btn btn-primary col-lg-8 text-center"
					name="rsvtCancle" value="예약취소" style="margin-top: 20px">
			</div>
		</div>


		<div class="col-lg-7 col-md- mb-4">
			<div>
				<h4 style="margin-left: 10px">예약 공간</h4>
			</div>
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="#">공간 이름2</a>
					</h4>
					<p class="card-text">공간 분류</p>
					<p class="card-text">공간 위치</p>
					<p class="card-text">소개말</p>
				</div>
			</div>
		</div>


		<div class="col-lg-7 col-md-6 mb-4">
			<hr>
			<div>
				<h4 style="margin-left: 10px">예약자 정보</h4>
			</div>
			<div class="card h-100">
				<div class="card-body">
					<p class="card-text">예약자 이름</p>
					<p class="card-text">예약자 연락처</p>
					<p class="card-text">예약자 이메일</p>
				</div>
			</div>
		</div>

		<div class="col-lg-7 col-md-6 mb-4">
			<hr>
			<div>
				<h4 style="margin-left: 10px">위치</h4>
			</div>
			<div class="card h-100">
				<div id="map" style="width:700px;height:400px;">
				</div>
				<div class="card-body">
					<p class="card-text">주소</p>
				</div>
			</div>
		</div>

		<div class="col-lg-7 col-md-6 mb-4">
			<hr>
			<div>
				<h4 style="margin-left: 10px">환불 정책</h4>
			</div>
			<div class="card h-100">
				<div class="card-body">
					<p class="txt_notice refund" style="padding-bottom: 20px">
						<em class="warn" style="color: #ff3a48"> 이용당일 이후 환불 관련 사항은
							호스트에게 직접 문의하셔야 합니다. </em>
					</p>

					<ul class="info_list">
						<li><strong class="tit" style="color: #656565;">이용
								8일 전</strong> <span class="data">총 금액의 100% 환불</span> <!----></li>

						<li><strong class="tit" style="color: #656565;">이용
								7일 전</strong> <span class="data">총 금액의 80% 환불</span> <!----></li>

						<li><strong class="tit" style="color: #656565;">이용
								6일 전</strong> <span class="data">총 금액의 60% 환불</span> <!----></li>

						<li><strong class="tit" style="color: #656565;">이용
								5일 전</strong> <!----> <span class="data">환불 불가</span></li>

						<li><strong class="tit" style="color: #656565;">이용
								4일 전</strong> <!----> <span class="data">환불 불가</span></li>

						<li><strong class="tit" style="color: #656565;">이용
								3일 전</strong> <!----> <span class="data">환불 불가</span></li>

						<li><strong class="tit" style="color: #656565;">이용
								2일 전</strong> <!----> <span class="data">환불 불가</span></li>

						<li><strong class="tit" style="color: #656565;">이용
								전날</strong> <!----> <span class="data">환불 불가</span></li>

						<li><strong class="tit" style="color: #656565;">이용
								당일</strong> <!----> <span class="data">환불 불가</span></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>