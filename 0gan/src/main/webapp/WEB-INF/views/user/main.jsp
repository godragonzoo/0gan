<!-- 메인 색상: #4E73DF
     메인 테마 부트스트랩: https://startbootstrap.com/previews/sb-admin-2 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
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



<meta charset="utf-8">
<meta name="viewport"	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>main.jsp</title>
<style type="text/css">

#header{ margin: 0px auto; position:relative; width: 90%; height: 150px;  border: solid 1px gray; display: flex; }
#container{margin: 0px auto;  width: 90%; height: 1000px; border: solid 1px gray; box-sizing: border-box; }
.logo {
	position: absolute;
	width: 150px;
	height: 150px;
	border: solid 1px gray;
	
}
.img-fluid{
	width: 100%;	height: 300px;
}
.search-wrap{
	display: table;
	table-layout: fixed;
	position: absolute;
	width: 80%;  
	left: 200px;
/* 	left: 50%;
	transform: translate(-50%); */
	margin: auto;
	bottom: 0px;
	border: solid 1px gray;
	vertical-align: middle;
	box-sizing: border-box;
	max-width: 100%;
}
.search{
	display: table-cell;
	padding: 5 35px;
	height: 35px;
	font-size: 14px;
	box-sizing: content-box;/* 테두리 미포함크기 */
	vertical-align: middle;/* 세로 정렬 */
	border: 4px solid #4E73DF;
}
.bestList{
margin: 0px auto; border: solid 1px gray; 
}
.best1{
	display: inline-block; margin: 0px 40px;
width: 300px;	height: 300px; border:1px solid lime;
}
.footer{
	bottom: 0px;
	right: 0px;
}

.nav{
	width: 150px;
	font-size: 10px;
	margin-right: 20px;
}
</style>
<script type="text/javascript">

    //-------------------------------------------------------------------------------------
    // 달력 - 한글 변형
    // endDate달력은 startDate달력에서 선택된 이전 날짜 선택 불가
  $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
            $( "#startDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yymmdd",
                 minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                      //시작일(startDate) datepicker가 닫힐때
                      //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                     $("#endDate").datepicker( "option", "minDate", selectedDate );
                 }    
 
            });
            
          
    //-------------------------------------------------------------------------------------
    // 달력 - 한글 변형
    // endDate달력 최대 선택 날짜 제한 제거  
            $( "#endDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yymmdd",
                 //maxDate: 0,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                
                /* onClose: function( selectedDate ) {    
                     // 종료일(endDate) datepicker가 닫힐때
                     // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                     $("#startDate").datepicker( "option", "maxDate", selectedDate );
                 }    */
 
            });    
    });
    
    //-------------------------------------------------------------------------------------
    // 슬라이드 시간 조절
 $('.carousel').carousel({
	//interval: 1000
});


    //-------------------------------------------------------------------------------------
    // 팝업
$(document).ready(function(){
    $("#menuIcon").click(function(){
        $("#myModal2").modal({backdrop: false});
    });
});
</script>

</head>
<body>
<div id="header">
	<div class="logo ">
		<img class="logo" src="/resources/img/logo.png" >
	</div>
		<div  id="menuIcon" style="position:absolute; right:0px;">
			<i class="far fa-user fa-2x"></i>
			<i class="fas fa-bars fa-2x"></i>
		</div>
		
		<!-- Modal -->
  		<div class="modal fade" id="myModal2" role="dialog">
    	<div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">�</button>
          <h4 class="modal-title">Modal without Overlay</h4>
        </div>
        <div class="modal-body">
          <p>This modal has no overlay.</p>
          <p><strong>Note:</strong> You cannot click outside of this modal to close it.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  
	<div class="search-wrap ">
		<input class="search" type="text" id="searchWord" placeholder="공간선택"> 
		<input class="search" type="text" id="startDate" placeholder="체크인"> 
		<input class="search" type="text" id="endDate" placeholder="체크아웃">
		<input class="search" type="text" placeholder="인원" >
		<button class="search">검색</button>
	</div> 
</div>      

	
<div id="container">
	<div class="row" ><!-- 이벤트 배너 -->
		<div class="col" style="text-align: center;"><h3>기획 및 테마 배너 이미지</h3>
		
			
<!-- 메인 슬라이드 이미지 -->
			<div id="slide" class="carousel slide"	data-ride="carousel">
				<ol class="carousel-indicators"><!--  -->
					<li data-target="#slide" data-slide-to="0"	class="active"></li>
					<li data-target="#slide" data-slide-to="1"></li>
					<li data-target="#slide" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" >
					<div class="carousel-item active">
						<img class="img-fluid" src="/resources/img/daum.png"	alt="First slide" >
					</div>
					<div class="carousel-item">
						<img class="img-fluid" src="/resources/img/sist.jpg"	alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="img-fluid" src="/resources/img/lamp.png"	alt="Third slide" >
					</div>
				</div>
				<a class="carousel-control-prev" href="#slide"	 data-slide="prev" > 
					<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
					<span	class="sr-only">Previous</span>
				</a> 
				<a class="carousel-control-next"	href="#slide"  data-slide="next" >
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<!-- 메인 슬라이드 이미지 -->
			
		</div>
	</div><!-- 이벤트 배너 -->
	
	<div class="row" ><!-- best공간 -->

	<div id="slideBest" class="carousel slideBest" data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active bestList"><h3 style="text-align: center;">최고의 공간</h3>

						<div class="best1 " >
							<div class="row">
								<div class="col">
									<a href="#"><img class="img" src="/resources/img/island.png" alt="" style="	width: 150px;	height: 150px;"></a>
								</div>
								
								<div class="col">
									<div class="row">
										<div class="card-body">장소 이름</div>
									</div>
									<div class="row">
										<div class="card-body">장소 위치</div>
									</div>
									<div class="row">
										<div class="card-body">장소 평점</div>
									</div>
								</div>
							</div>
							<div class="row">
								<h4>introduce</h4>
							</div>
						</div>
						<div class="best1 col" >
							<div class="row">
								<div class="col">
									<a href="#"><img class="img" src="/resources/img/lamp.png" alt="" style="	width: 150px;	height: 150px;"></a>
								</div>
								
								<div class="col">
									<div class="row">
										<div class="card-body">장소 이름</div>
									</div>
									<div class="row">
										<div class="card-body">장소 위치</div>
									</div>
									<div class="row">
										<div class="card-body">장소 평점</div>
									</div>
								</div>
							</div>
							<div class="row">
								<h4>introduce</h4>
							</div>
						</div>
						<div class="best1 " >
							<div class="row">
								<div class="col">
									<a href="#"><img class="img" src="/resources/img/nature.png" alt="" style="	width: 150px;	height: 150px;"></a>
								</div>
								
								<div class="col">
									<div class="row">
										<div class="card-body">장소 이름</div>
									</div>
									<div class="row">
										<div class="card-body">장소 위치</div>
									</div>
									<div class="row">
										<div class="card-body">장소 평점</div>
									</div>
								</div>
							</div>
							<div class="row">
								<h4>introduce</h4>
							</div>
						</div>
			</div>
			
			<div class="carousel-item">
			<div class="best1 " >
							<div class="row">
								<div class="col">
									<a href="#"><img class="img" src="/resources/img/island.png" alt="" style="	width: 150px;	height: 150px;"></a>
								</div>
								
								<div class="col">
									<div class="row">
										<div class="card-body">장소 이름</div>
									</div>
									<div class="row">
										<div class="card-body">장소 위치</div>
									</div>
									<div class="row">
										<div class="card-body">장소 평점</div>
									</div>
								</div>
							</div>
							<div class="row">
								<h4>introduce</h4>
							</div>
						</div>
						<div class="best1 " >
							<div class="row">
								<div class="col">
									<a href="#"><img class="img" src="/resources/img/temple.png" alt="" style="	width: 150px;	height: 150px;"></a>
								</div>
								
								<div class="col">
									<div class="row">
										<div class="card-body">장소 이름</div>
									</div>
									<div class="row">
										<div class="card-body">장소 위치</div>
									</div>
									<div class="row">
										<div class="card-body">장소 평점</div>
									</div>
								</div>
							</div>
							<div class="row">
								<h4>introduce</h4>
							</div>
						</div>
						<div class="best1 " >
							<div class="row">
								<div class="col">
									<a href="#"><img class="img" src="/resources/img/temple.png" alt="" style="	width: 150px;	height: 150px;"></a>
								</div>
								
								<div class="col">
									<div class="row">
										<div class="card-body">장소 이름</div>
									</div>
									<div class="row">
										<div class="card-body">장소 위치</div>
									</div>
									<div class="row">
										<div class="card-body">장소 평점</div>
									</div>
								</div>
							</div>
							<div class="row">
								<h4>introduce</h4>
							</div>
						</div>
	<a class="carousel-control-prev" href="#slideBest" data-slide="prev"> 
		<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
		<span	class="sr-only">Previous</span>
	</a>
	<a class="carousel-control-next" href="#slideBest" data-slide="next"> 
		<span	class="carousel-control-next-icon" aria-hidden="true"></span>
	</a>
	</div>				
	</div><!-- best공간 -->
	

	<div id="slideRe" class="carousel slideRe" data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active ReList"> <h3 style="text-align: center;">금주의 추천 공간</h3>
		
			
						<div class="best1 " >
							<div class="row">
								<div class="col">
									<a href="#"><img class="img" src="/resources/img/island.png" alt="" style="	width: 150px;	height: 150px;"></a>
								</div>
								
								<div class="col">
									<div class="row">
										<div class="card-body">장소 이름</div>
									</div>
									<div class="row">
										<div class="card-body">장소 위치</div>
									</div>
									<div class="row">
										<div class="card-body">장소 평점</div>
									</div>
								</div>
							</div>
							<div class="row">
								<h4>introduce</h4>
							</div>
						</div>
						<div class="best1 col" >
							<div class="row">
								<div class="col">
									<a href="#"><img class="img" src="/resources/img/lamp.png" alt="" style="	width: 150px;	height: 150px;"></a>
								</div>
								
								<div class="col">
									<div class="row">
										<div class="card-body">장소 이름</div>
									</div>
									<div class="row">
										<div class="card-body">장소 위치</div>
									</div>
									<div class="row">
										<div class="card-body">장소 평점</div>
									</div>
								</div>
							</div>
							<div class="row">
								<h4>introduce</h4>
							</div>
						</div>
						<div class="best1 " >
							<div class="row">
								<div class="col">
									<a href="#"><img class="img" src="/resources/img/nature.png" alt="" style="	width: 150px;	height: 150px;"></a>
								</div>
								
								<div class="col">
									<div class="row">
										<div class="card-body">장소 이름</div>
									</div>
									<div class="row">
										<div class="card-body">장소 위치</div>
									</div>
									<div class="row">
										<div class="card-body">장소 평점</div>
									</div>
								</div>
							</div>
							<div class="row">
								<h4>introduce</h4>
							</div>
						</div>
			</div>
			
			<div class="carousel-item">
			<div class="best1 " >
							<div class="row">
								<div class="col">
									<a href="#"><img class="img" src="/resources/img/island.png" alt="" style="	width: 150px;	height: 150px;"></a>
								</div>
								
								<div class="col">
									<div class="row">
										<div class="card-body">장소 이름</div>
									</div>
									<div class="row">
										<div class="card-body">장소 위치</div>
									</div>
									<div class="row">
										<div class="card-body">장소 평점</div>
									</div>
								</div>
							</div>
							<div class="row">
								<h4>introduce</h4>
							</div>
						</div>
						<div class="best1 " >
							<div class="row">
								<div class="col">
									<a href="#"><img class="img" src="/resources/img/temple.png" alt="" style="	width: 150px;	height: 150px;"></a>
								</div>
								
								<div class="col">
									<div class="row">
										<div class="card-body">장소 이름</div>
									</div>
									<div class="row">
										<div class="card-body">장소 위치</div>
									</div>
									<div class="row">
										<div class="card-body">장소 평점</div>
									</div>
								</div>
							</div>
							<div class="row">
								<h4>introduce</h4>
							</div>
						</div>
						<div class="best1 " >
							<div class="row">
								<div class="col">
									<a href="#"><img class="img" src="/resources/img/temple.png" alt="" style="	width: 150px;	height: 150px;"></a>
								</div>
								
								<div class="col">
									<div class="row">
										<div class="card-body">장소 이름</div>
									</div>
									<div class="row">
										<div class="card-body">장소 위치</div>
									</div>
									<div class="row">
										<div class="card-body">장소 평점</div>
									</div>
								</div>
							</div>
							<div class="row">
								<h4>introduce</h4>
							</div>
						</div>
			</div>
	<a class="carousel-control-prev" href="#slideRe" data-slide="prev"> 
		<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
		<span	class="sr-only">Previous</span>
	</a>
	<a class="carousel-control-next" href="#slideRe" data-slide="next"> 
		<span	class="carousel-control-next-icon" aria-hidden="true"></span>
	</a>
		</div>
	</div><!-- 추천공간 -->
	
</div>
	<div class="footer">
			<p class="m-0 text-right">
				<a href="#">공지사항</a>
				<a href="#">도움말</a> 
				<a href="#">서비스정보</a>
			</p>
	</div>
	
</body>
</html>
