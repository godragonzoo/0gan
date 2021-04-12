<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--     메인 테마 부트스트랩: https://startbootstrap.com/previews/sb-admin-2 
메인 색상: 
	메인 파랑: #486DDA
	카드 제목? 회색: #F8F9FC-->
<html><head>
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

<!--  -->
<script type="text/javascript" src="/resources/js/main.js"></script>
<link href="/resources/css/main.css" rel="stylesheet">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>main.jsp</title>
</head>
<body>
<header>
	<div class="row justify-content-between">
		<div class="logo ">
			<img class="logo" src="/resources/img/logo2.png">
		</div>
		<div class="menu" style="display: flex;">
			<div class="dropdown">
				<a class="dropdown-toggle" id="profileIcon"  data-toggle="dropdown" aria-expanded="false" style="float:right;">
					<i class="far fa-user fa-2x"></i>
				</a>
				<div class="dropdown-menu" id="profileList"  style="position: relative;">
					<h6 class="text-center small text-primary">[] 님 안녕하세요</h6>
					<a class="dropdown-submenu">
						<div class="dropdown-menu" id="submenu">
							<a class="dropdown-item text-center" href="#">프로필</a>
							<a class="dropdown-item text-center" href="#">예약내역</a>
							<a class="dropdown-item text-center" href="#">관심목록</a>
							<a class="dropdown-item text-center" href="#">나의문의내역</a>
						</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item text-center" href="#">내 계정</a>
					<a class="dropdown-item text-center" href="#">공지사항</a>
					<a class="dropdown-item text-center" href="#">도움말</a>
					<a class="dropdown-item text-center" href="#">서비스 정보</a>
					<a class="dropdown-item text-center" href="#">호스트로 전환</a>
					
					<div class="dropdown-divider" ></div>
					<a class="dropdown-item text-center small" href="#">로그아웃</a>
				</div>
			</div>
		  	<div class="dropdown">
			    <a class=" dropdown-toggle" id="menuIcon"  data-toggle="dropdown" aria-expanded="false">
			    	<i class="fas fa-bars fa-2x"></i></a>
			    <div class="dropdown-menu" id="menuList">
					<div class="btn-primary text-center" href="#">회원가입</div>
					<div class="btn-primary text-center" href="#">로그인</div>
					<div class="dropdown-divider" ></div>
					<a class="dropdown-item text-center" href="#">공지사항</a>
					<a class="dropdown-item text-center" href="#">도움말</a>
					<a class="dropdown-item text-center" href="#">서비스 정보</a>
			    </div>
			</div>
		</div>
	</div>
	<div class="row ">
		<div class="navSearch border-bottom-primary ">
			<div class="filter__form__input">
            	<input type="text" placeholder="Search Location">
                	<span class="icon_search"></span>
			</div>
			<div class="filter__form__input">
            	<span class="icon_calendar"></span>
                <input type="date" class="datepicker_pop check__in hasDatepicker" >
                <i class="arrow_carrot-down"></i>
			</div>
            <div class="filter__form__input">
            	<span class="icon_calendar"></span>
                <input type="date" class="datepicker_pop check__out hasDatepicker" >
                <i class="arrow_carrot-down"></i>
			</div>
            <div class="filter__form__input">
            	<input type="text" placeholder="인원수" style="width:100px">
                <span class="icon_search"></span>
			</div>
            <button type="submit" class="btnBook text-gray-100">BOOK NOW</button>
		</div>
	</div>		
</header>
 
  
	
<div class="container ">
	<div class="row"><!-- 이벤트 배너 -->
		<div class="col border-bottom-primary"><h1 class="text-center title font-weight-bold text-primary">기획 및 테마 배너 </h1>
		
			
<!-- 메인 슬라이드 이미지 -->
			<div id="slide" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators"><!--  -->
					<li data-target="#slide" data-slide-to="0" class="active"></li>
					<li data-target="#slide" data-slide-to="1" class=""></li>
					<li data-target="#slide" data-slide-to="2" class=""></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="img-fluid" src="/resources/img/daum.png" alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="img-fluid" src="/resources/img/sist.jpg" alt="Second slide">
					</div>
					<div class="carousel-item">
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
			
		</div>
	</div><!-- 이벤트 배너 -->
	
<!-- 최고의 공간 이름/주소/평점/리뷰수/찜수-->
		<div class="BestSlider "><h1 class="text-center title font-weight-bold text-primary">최고의 공간</h1> 
  			<ul class="best_panel">
    			<li class="row ">
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
					<div class="card h-100 content-overflow">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
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
					<div class="card h-100 content-overflow">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
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
    			<li class="row ">
	       		 <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울 강남구 도곡동 4</h5>
						<h4 class="card-title">
							<a href="#">공간4567</a>
		                </h4>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
	       			 <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울 강남구 도곡동 4</h5>
						<h4 class="card-title">
							<a href="#">공간4567</a>
		                </h4>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
	      			  <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울 강남구 도곡동 4</h5>
						<h4 class="card-title">
							<a href="#">공간4567</a>
		                </h4>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
					</div>
				</li>
		  	</ul>
		  	<span><i class=" fas carousel-control-prev-icon best_prev fa-4x"></i></span>
		  	<span><i class=" fas carousel-control-next-icon best_next fa-4x"></i></span>
		</div>
          <hr class="border-bottom-primary endLine">
<!-- 최고의 공간 -->
<!-- 이용 후기 -->
		<div class="RevwSlider "><h1 class="text-center title font-weight-bold text-primary">이용후기</h1> 
  			<ul class="revw_panel">
    			<li class="row ">
	        		<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body content-overflow">
		                <h5>서울특별시 중구 청파로 4</h5>
						<h4 class="card-title">
							<a href="#">[서울역 파티룸] 서울각</a>
		                </h4>
		                <p class="card-text ">가본 파티룸중에 최고였습니다!! 근처에 편의점도 있고 예쁘고 분위기 넘치는 디피까지...시설도 깨끗했고요 화장실도 바로 옆에 있고 스피커랑 빔프로젝터도 너무 잘 사용했습니다!! 무엇보다 호스트님이 안내도 잘해주시고 궁금한거 있을때마다 답장도 바로 바로 해주셔서 너무 편하게 이용했습니다:) 재방문 의사100프로!!</p>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
	      		  <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100 content-overflow">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울특별시 중구 청파로 4</h5>
						<h4 class="card-title">
							<a href="#">[서울역 파티룸] 서울각</a>
		                </h4>
		                <p class="card-text">가본 파티룸중에 최고였습니다!! 근처에 편의점도 있고 예쁘고 분위기 넘치는 디피까지...시설도 깨끗했고요 화장실도 바로 옆에 있고 스피커랑 빔프로젝터도 너무 잘 사용했습니다!! 무엇보다 호스트님이 안내도 잘해주시고 궁금한거 있을때마다 답장도 바로 바로 해주셔서 너무 편하게 이용했습니다:) 재방문 의사100프로!!</p>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
	     		   <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100 content-overflow">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울특별시 중구 청파로 4</h5>
						<h4 class="card-title">
							<a href="#">[서울역 파티룸] 서울각</a>
		                </h4>
		                <p class="card-text">가본 파티룸중에 최고였습니다!! 근처에 편의점도 있고 예쁘고 분위기 넘치는 디피까지...시설도 깨끗했고요 화장실도 바로 옆에 있고 스피커랑 빔프로젝터도 너무 잘 사용했습니다!! 무엇보다 호스트님이 안내도 잘해주시고 궁금한거 있을때마다 답장도 바로 바로 해주셔서 너무 편하게 이용했습니다:) 재방문 의사100프로!!</p>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
				</li>
    			<li class="row ">
	       		 <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울 강남구 도곡동 4</h5>
						<h4 class="card-title">
							<a href="#">공간4567</a>
		                </h4>
		                <p class="card-text">깔끔하고 여유있는 공간이 많아서 재미있는 공간연출이 가능합니다. 친절하고 적극적인 호스트님이 계셔서 이용이 편리합니다.</p>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
	       			 <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울 강남구 도곡동 4</h5>
						<h4 class="card-title">
							<a href="#">공간4567</a>
		                </h4>
		                <p class="card-text">깔끔하고 여유있는 공간이 많아서 재미있는 공간연출이 가능합니다. 친절하고 적극적인 호스트님이 계셔서 이용이 편리합니다.</p>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
	      			  <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울 강남구 도곡동 4</h5>
						<h4 class="card-title">
							<a href="#">공간4567</a>
		                </h4>
		                <p class="card-text">깔끔하고 여유있는 공간이 많아서 재미있는 공간연출이 가능합니다. 친절하고 적극적인 호스트님이 계셔서 이용이 편리합니다.</p>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
					</div>
				</li>
		  	</ul>
		  	<span><i class=" fas carousel-control-prev-icon revw_prev fa-4x"></i></span>
		  	<span><i class=" fas carousel-control-next-icon revw_next fa-4x"></i></span>
		</div>
          <hr class="border-bottom-primary endLine">
<!-- 이용 후기 -->
<!-- 추천 공간 -->
		<div class="RecomSlider "><h1 class="text-center title font-weight-bold text-primary">추천공간</h1> 
  			<ul class="recom_panel">
    			<li class="row ">
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
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
	      		  <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100 content-overflow">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울특별시 중구 청파로 4</h5>
						<h4 class="card-title">
							<a href="#">[서울역 파티룸] 서울각</a>
		                </h4>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
	     		   <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100 content-overflow">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울특별시 중구 청파로 4</h5>
						<h4 class="card-title">
							<a href="#">[서울역 파티룸] 서울각</a>
		                </h4>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
				</li>
    			<li class="row ">
	       		 <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울 강남구 도곡동 4</h5>
						<h4 class="card-title">
							<a href="#">공간4567</a>
		                </h4>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
	       			 <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울 강남구 도곡동 4</h5>
						<h4 class="card-title">
							<a href="#">공간4567</a>
		                </h4>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
	      			  <div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
		                <h5>서울 강남구 도곡동 4</h5>
						<h4 class="card-title">
							<a href="#">공간4567</a>
		                </h4>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
					</div>
				</li>
		  	</ul>
		  	<span><i class=" fas carousel-control-prev-icon recom_prev fa-4x"></i></span>
		  	<span><i class=" fas carousel-control-next-icon recom_next fa-4x"></i></span>
		</div>
        <hr class="border-bottom-primary endLine">
<!-- 추천 공간 -->
	
</div>

<jsp:include page="footer.jsp"></jsp:include>

</body></html>