<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 확인</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap core CSS -->
<link
	href="../resources/userResources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../resources/userResources/css/shop-homepage.css"
	rel="stylesheet">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn_pay").click(function(){
			IMP.init("imp92491990");
			IMP.request_pay({
				pg:'kcp',
				pay_method:'card',
				merchant_uid:'merchant_'+new Date().getTime(),
				name:'test',
				amount:1000,
				buyer_email:'tiger@gmail.com',
				buyer_name:'구매자이름',
				buyer_tel:'010-8070-3559',
				buyer_addr:'서울시 마포구',
				buyer_postcode:'123-456',
				m_redirect_url: 'https://localhost:80/userRsvt.do'
			},function(rsp){
				console.log(rsp);
				if(rsp.success){
					var msg = "결제 완료";
					msg += '고유 ID:'+rsp.imp_uid;
					msg += '상점 거래 ID:'+rsp.merchant_uid;
					msg += '결제 금액: ' + rsp.paid_amount;
					msg += '카드 승인 번호 :' + rsp.apply_num;
					alert(msg);
					location.href = "userRsvt.do";
				}else{
					var msg = "결제 실패";
					msg += '에러 내용:'+rsp.error_msg;
					alert(msg);
				}
			});
		});
	});
</script>
</head>
<body>
	<!-- 예약 요청 : 김은비 -->

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
					<li class="nav-item active"><a class="nav-link"
						href="userInfo.do">프로필 </a></li>
					<li class="nav-item"><a class="nav-link"
						href="userRsvtList.do">예약내역</a></li>
					<li class="nav-item"><a class="nav-link"
						href="userWishlist.do">관심목록</a></li>
					<li class="nav-item"><a class="nav-link" href="userQueList.do">문의내역</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navigation -->

	<div class="container">

		<h2 class="text-center">예약 요청</h2>
		<hr>
		<br> <br>

		<div class="col-lg-4 col-md-6 mb-4"
			style="margin-top: 35px; padding: 30px; float: right; border: 1px solid rgba(0, 0, 0, 0.125); border-radius: 0.25rem;">
			<h4 class="text-center">
				<p class="card-text">예약 정보</p>
			</h4>
			<div class="card h-100">
				<div class="card-body">
					<p class="card-text">인원 추가 비용</p>
					<hr>
					<p class="card-text">예약 날짜</p>
					<p class="card-text">예약 시간</p>
					<hr>
					<p class="card-text">결제 예정 금액</p>
				</div>
			</div>
			<div class="text-center">
				<input type="button" id="btn_pay"
					class="btn btn-primary col-lg-8 text-center" name="rsvt"
					value="예약 요청" style="margin-top: 20px">
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
				<h4 style="margin-left: 10px">예약 정보</h4>
			</div>
			<div class="card h-100">
				<div class="card-body">
					<p class="card-text">추가 인원 수</p>
					<p class="card-text">
						<select id="extraPeople" class="col-lg-2">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select>
					</p>
					<p class="card-text">날짜</p>
					<p class="card-text">시간</p>
				</div>
			</div>
		</div>

		<div class="col-lg-7 col-md-6 mb-4">
			<hr>
			<div>
				<h4 style="margin-left: 10px">결제 정보</h4>
			</div>
			<div class="card h-100">
				<div class="card-body">
					<p class="card-text">결제 수단</p>
					<p class="card-text">결제 금액</p>
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