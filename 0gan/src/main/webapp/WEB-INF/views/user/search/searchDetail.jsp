<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- tempusdominus -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />

<!-- tempusdominus -->
<!-- datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css">  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- datepicker -->

<!-- carousel -->
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 	중복되서 생략-->
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- carousel -->	

<!-- Bootstrap core CSS -->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"> <!--CDN 링크 -->


    <!-- Custom fonts for this template-->
    <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">
    <!-- Bootstrap core JavaScript-->
    <script src="../resources/vendor/jquery/jquery.min.js"></script>
    <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../resources/js/sb-admin-2.min.js"></script>
<link href="/resources/css/search.css" rel="stylesheet">
<meta charset="EUC-KR">
<title>searchDetail</title>

<style type="text/css">


</style>

<script type="text/javascript"> 

$(function(){
	var $win = $(window);
	var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
	/*사용자 설정 값 시작*/
	var speed = 500; // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec)
	var easing = 'linear'; // 따라다니는 방법 기본 두가지 linear, swing
	var $layer = $('.sideBar'); // 레이어 셀렉팅
	var layerTopOffset = 0; // 레이어 높이 상한선, 단위:px
	$layer.css('position', 'relative').css('z-index', '1');
	 /*사용자 설정 값 끝*/ // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해
	if (top > 0 ){
		$win.scrollTop(layerTopOffset+top);
	}else{
		$win.scrollTop(0); //스크롤이벤트가 발생하면
	}
          
	$(window).scroll(function(){ 
            
		yPosition = $win.scrollTop() - 360; //이부분을 조정해서 화면에 보이도록 맞추세요
		if (yPosition < 0) {
			yPosition = 0; 
		} 
		$layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false
		 }); 
	}); 
});

</script>
</head>
<body>

<div class="container">

	<div class="title row border-bottom-primary text-primary" style="font-size: 30px; margin: 20px 0;">공간 이름</div>
	

<!-- 메인 슬라이드 이미지 -->
			<div id="slide" class="carousel slide" data-ride="carousel" style="margin:40px auto;">
				<ol class="carousel-indicators"><!--  -->
					<li data-target="#slide" data-slide-to="0" class="active"></li>
					<li data-target="#slide" data-slide-to="1" class=""></li>
					<li data-target="#slide" data-slide-to="2" class=""></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active ">
						<img class="img-fluid" src="/resources/img/daum.png" alt="First slide">
						<img class="img-fluid" src="/resources/img/daum.png" alt="First slide">
						<img class="img-fluid" src="/resources/img/daum.png" alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="img-fluid" src="/resources/img/sist.jpg" alt="Second slide">
						<img class="img-fluid" src="/resources/img/sist.jpg" alt="Second slide">
						<img class="img-fluid" src="/resources/img/sist.jpg" alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="img-fluid" src="/resources/img/lamp.png" alt="Third slide">
						<img class="img-fluid" src="/resources/img/lamp.png" alt="Third slide">
						<img class="img-fluid" src="/resources/img/lamp.png" alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#slide" data-slide="prev"> 
					<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
					<span class="sr-only">Previous</span>
				</a> 
				<a class="carousel-control-next" href="#slide" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<!-- 메인 슬라이드 이미지 -->
					
			<!-- 따라다니는 사이드 바 -->
			<div class=" sideBar" >
				<h3 class="text-primary text-center" >예약</h3>
				<div class=" sideBar-card" >
					시설 안내<br>
					시설 가능 인원 수<br>
				</div>
				<h3 class="text-primary  text-center" >요금 세부 정보</h3>
				<div class=" sideBar-card" >
					시설 안내<br>
					시설 가능 인원 수<br>
				</div>
				<div class="btn-primary text-center">예약 가능 여부 확인</div>
				<div class="btn-primary text-center">호스트 문의</div>
			</div>
			<!-- 따라다니는 사이드 바 -->
		
			<div class=" border-bottom-primary place-wrap">
					<h3 class="title row text-primary infoPlace" >공간 정보</h3>
				<div class="row place-card" >
					시설 안내<br>
					시설 가능 인원 수<br>
				</div>
			</div>
		
		<div class=" border-bottom-primary place-wrap">
			<h3 class="row title  text-primary comentPlace">공간 소개</h3>
			<div class="row place-card" >
				시설 안내<br>
				시설 가능 인원 수<br>
			</div>
		</div>
		 
		
		<div class="border-bottom-primary place-wrap">
			<h3 class="title row text-primary useTime">예약 가능한 날짜 및 시간</h3>
			<div class="row place-card" >
			</div>
		</div>
		
		<div class="border-bottom-primary ">
			<h3 class="title row text-primary revw" >이용후기</h3>
			<div class="row revwList" style="border: solid 1px gray;width: 50%; height: 600px; margin: 100px auto;"></div>
			<div class="row page margin-auto" style="border: solid 1px gray;width: 50%; height: 50px; "></div>
		</div>
		
		
		<div class="border-bottom-primary ">
			<h3 class="title row  loc">위치</h3>
			주소: 인천시 !!!!@#<br>
			<div class="row map margin-auto" style="background-color:aqua; width: 50%; height: 300px;">
			</div>
		</div>
		
		<div class="border-bottom-primary ">
			<h3 class="title row text-primary listSlide">추천공간</h3>
			
<!-- 메인 슬라이드 이미지 -->
			<div id="slide" class="row carousel slide margin-auto" data-ride="carousel">
				<ol class="carousel-indicators"><!--  -->
					<li data-target="#slide" data-slide-to="0" class="active"></li>
					<li data-target="#slide" data-slide-to="1" class=""></li>
					<li data-target="#slide" data-slide-to="2" class=""></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active" >
					  	<ul class="best_panel">
    						<li class="row ">
			        		<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
								<div class="card-body content-overflow">
				                <h5>서울특별시 qwer</h5>
								<h4 class="card-title">
									<a href="#">[서울역 파티룸] qqwer</a>
				                </h4>
				              	</div>
				              	<div class="card-footer">
				                	<small class="text-muted">★ 5.0</small>
				                	<small class="text-muted text-right">♥ 12</small>
								</div>
				            </div>
				            </div>
			        		<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
								<div class="card-body content-overflow">
				                <h5>서울특별시 중구 청파로 4</h5>
								<h4 class="card-title">
									<a href="#">[서울역 파티룸] 서울각</a>
				                </h4>
				              	</div>
				              	<div class="card-footer">
				                	<small class="text-muted">★ 5.0</small>
				                	<small class="text-muted text-right">♥ 12</small>
								</div>
				            </div>
				            </div>
			        		<div class="col-lg-4 col-md-6 mb-4">
								<div class="card h-100">
									<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
									<div class="card-body content-overflow">
					                <h5>서울특별시 중구 청파로 4</h5>
									<h4 class="card-title">
										<a href="#">[서울역 파티룸] 서울각</a>
					                </h4>
					              	</div>
					              	<div class="card-footer">
					                	<small class="text-muted">★ 5.0</small>
					                	<small class="text-muted text-right">♥ 12</small>
									</div>
					            </div>
				            </div>
							</li>
					  	</ul>
					</div>
					<div class="carousel-item">
					  	<ul class="best_panel">
    						<li class="row ">
			        		<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
								<div class="card-body content-overflow">
				                <h5>서울특별시 qwer</h5>
								<h4 class="card-title">
									<a href="#">[서울역 파티룸] qqwer</a>
				                </h4>
				              	</div>
				              	<div class="card-footer">
				                	<small class="text-muted">★ 5.0</small>
				                	<small class="text-muted text-right">♥ 12</small>
								</div>
				            </div>
				            </div>
			        		<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
								<div class="card-body content-overflow">
				                <h5>서울특별시 중구 청파로 4</h5>
								<h4 class="card-title">
									<a href="#">[서울역 파티룸] 서울각</a>
				                </h4>
				              	</div>
				              	<div class="card-footer">
				                	<small class="text-muted">★ 5.0</small>
				                	<small class="text-muted text-right">♥ 12</small>
								</div>
				            </div>
				            </div>
			        		<div class="col-lg-4 col-md-6 mb-4">
								<div class="card h-100">
									<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
									<div class="card-body content-overflow">
					                <h5>서울특별시 중구 청파로 4</h5>
									<h4 class="card-title">
										<a href="#">[서울역 파티룸] 서울각</a>
					                </h4>
					              	</div>
					              	<div class="card-footer">
					                	<small class="text-muted">★ 5.0</small>
					                	<small class="text-muted text-right">♥ 12</small>
									</div>
					            </div>
				            </div>
							</li>
					  	</ul>
					</div>
				</div>
				<a class="carousel-control-prev" href="#slide" data-slide="prev"> 
					<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
					<span class="sr-only">Previous</span>
				</a> 
				<a class="carousel-control-next" href="#slide" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<!-- 메인 슬라이드 이미지 -->
		</div>
</div>
</body>
</html>