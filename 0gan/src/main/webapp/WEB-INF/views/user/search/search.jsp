<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
    
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
body{
background-color: white; 
}
.row , .col{
	width: 100%;
}
.header{ 
border: solid 1px gray;
margin: 0px auto; 
position:relative; 
width: 90%;   
display: flex;

background-color: white; 
/* background-color: #F8F9FC; */ 
}

.logo{
	height: 150px;
}
.menuIcon{
position:absolute; right:0px;
cursor: pointer;
margin: 30px;
}

.container {
    border: solid 1px gray;
    margin: 50px auto;
    width: 90%;
}

.btnWrap{
border: solid 1px gray;
	width: 90%;
	height: 50px;
	margin: auto;
	display: flex;
}
.filter{
	height:100%;
}
.btnMap, .dropdown-toggle{
	width: 100px;
	padding: 10px;
	cursor: pointer;
	border-radius: 10%;
	margin-left: 20px;
	margin-right: 20px;
}
.imgMap {
    width: 90%;
    height: 300px;
    background-color: #ABCDEF;
    margin: 50px;
}

/* ---------Best공간--------- */
.searchResultList   {
    width: 90%;
    margin: 50px auto;
    border: solid 1px;
    display: block;
}
.best1 {
    border: 2px solid #486DDA;
    width: 450px;
    height: 405px;
    display: inline-table;
}
.card-row {
    display: flex;
    width: 100%;
    height: 50%;
}
.card-col {
    width: 80%;
    height: 100%;
    margin: 20px;
}
.img {
    width: 180px;
    height: 180px;
}
.card-body {
    border: solid 1px gray;
    width: 150px;
    height: 50px;
    margin-bottom: 20px;
}

.card-intro {
    border: solid 1px gray;
    margin: 20px;
    bottom: 0px;
    width: 350px;
    height: 150px;
}

/* ---------Best공간--------- */
</style>
<script src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
  $('.btnMap').click( function() {
    if( $(this).html() == '지도 on' ) {
      $(this).html('지도 off');
      $(".imgMap").css("display","none");
    }
    else {
      $(this).html('지도 on');
      $(".imgMap").css("display","block");
    }
  });
});
$(function() {
  $('.dropdown-toggle').click( function() {
    if( $('.dropdown-toggle').css("aria-expanded","false") ) {
      $('.dropdown-toggle').css("aria-expanded","true");
    }
    else {
      $('.dropdown-toggle').css("aria-expanded","false");
    }
  });
});
</script>
</head>
<body>

<div class="header">
	<div >
		<img  class="logo "src="resources/img/logo2.png" >
	</div>
	<div  class="menuIcon" >
		<i class="fas fa-user-cog fa-3x  "></i>
		<i class="fas fa-bars fa-3x "></i>
	</div>
		
		<!-- Modal -->
      
</div>

<div class="container ">
	<div class="title row border-bottom-primary" style="font-size: 30px; margin: 20px 0;">검색 결과</div>
	<div class="btnWrap row justify-content-between" >
		<!-- filter 버튼  -->
	<!-- 	<div class="filter col">
			<select class="form-control custom-select nav" required="">
			<option value="공간선택">공간선택</option><option value="공유오피스/코워킹스페이스/샵인샵">공유오피스/코워킹스페이스/샵인샵</option><option value="공유주방">공유주방</option><option value="연습실/합주실/녹음실">연습실/합주실/녹음실</option><option value="파티룸/모임공간/브라이덜샤워">파티룸/모임공간/브라이덜샤워</option><option value="회의실/강당/세미나실/비즈니스공간">회의실/강당/세미나실/비즈니스공간</option><option value="스터디룸/스터디카페">스터디룸/스터디카페</option><option value="공유하우스">공유하우스</option><option value="촬영스튜디오대여">촬영스튜디오대여</option>
			</select>
		</div> -->
		<input type="text" class="searchWord filter " placeholder="필터 선택" >
		<!-- filter 버튼  -->
		
		<div class="rightWrap filter" style="display: flex; border: solid 1px lime;">
			<!-- map 버튼  -->
			<button  class="btnMap btn btn-primary btn-icon-split "  >지도 on</button>
			<!-- map 버튼  -->
			
			<!-- 정렬 버튼  -->
			<div class="dropdown mb-4 show">
            	<button class="btn bg-gradient-light  dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                정렬
                </button>
                <div class="dropdown-menu animated--fade-in show" aria-labelledby="dropdownMenuButton" style="position: absolute; transform: translate3d(0px, 38px, 0px); top: 0px; left: 0px; will-change: transform;" x-placement="bottom-start">
                	<a class="dropdown-item" href="#">가격순</a>
                    <a class="dropdown-item" href="#">추천순</a>
                    <a class="dropdown-item" href="#">평점순</a>
                </div>
            </div>
			<!-- 정렬 버튼  -->
			
		</div>
	</div>
	<!-- 지도 -->
	<div class="imgMap">
	<h1>지도입니다</h1>
	</div>
	<!-- 지도 -->
	
	<!-- 결과 목록 -->
	<div class=" searchResultList justify-content-between">
	
						<div class="best1  bg-gradient-light" >
							<div class="card-row">
								<div class="card-col">
									<a href="#"><img class="img well" src="/resources/img/island.png" alt="" ></a>
								</div>
								
								<div class="card-col">
										<div class="card-body well">장소 이름</div>
										<div class="card-body well">장소 위치</div>
										<div class="card-body well">장소 평점</div>
								</div>
							</div>
							<div class="card-row">
									<div class="card-intro well">장소 이름</div>
							</div>
						</div>
						
						
						<div class="best1  bg-gradient-light" >
							<div class="card-row">
								<div class="card-col">
									<a href="#"><img class="img well" src="/resources/img/island.png" alt="" ></a>
								</div>
								
								<div class="card-col">
										<div class="card-body well">장소 이름</div>
										<div class="card-body well">장소 위치</div>
										<div class="card-body well">장소 평점</div>
								</div>
							</div>
							<div class="card-row">
									<div class="card-intro well">장소 이름</div>
							</div>
						</div>
						
						
						<div class="best1  bg-gradient-light" >
							<div class="card-row">
								<div class="card-col">
									<a href="#"><img class="img well" src="/resources/img/island.png" alt="" ></a>
								</div>
								
								<div class="card-col">
										<div class="card-body well">장소 이름</div>
										<div class="card-body well">장소 위치</div>
										<div class="card-body well">장소 평점</div>
								</div>
							</div>
							<div class="card-row">
									<div class="card-intro well">장소 이름</div>
							</div>
						</div>
		
<!-- 		<div class="item">
			<div class="mainImg">
				<a href="#" title="Lorem ipsum" class="thumbnail"><img src="http://lorempixel.com/250/140/people" alt="Lorem ipsum" /></a>
			</div>
			<div class="infoList">
				<ul class="meta-search">
					<li><i class="glyphicon glyphicon-calendar"></i> <span>02/15/2014</span></li>
					<li><i class="glyphicon glyphicon-time"></i> <span>4:28 pm</span></li>
					<li><i class="glyphicon glyphicon-tags"></i> <span>People</span></li>
					<h3>list3</h3>
				</ul>
			</div>
		
		</div> -->	
	
	</div>
	<!-- 결과 목록 -->
	
</div><!-- 컨테이너 -->
</body>
</html>