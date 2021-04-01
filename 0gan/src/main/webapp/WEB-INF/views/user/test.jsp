<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="EUC-KR">

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
<link href="/resources/css/search.css" rel="stylesheet">
<title>TEST PAGE</title>

<style type="text/css">
#dorpdownMenu{
	display: none;
}
</style>

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


$(document).ready(function(){
	var menu = document.getElementById("dorpdownMenu");
	
	$("#dropdownMenuButton").click(function() {
		if($("#dorpdownMenu").css('display')=='none'){
			menu.style.display='block';
		} else {
			menu.style.display='none';
		}
	});
	
	      let search = document.getElementById("searchWord").value; 
});
</script>

</head>
<body>

<div class="container ">
	
	<h1 class="title row border-bottom-primary  font-weight-bold text-primary" >검색 결과</h1>
	<div class="btnWrap row justify-content-between" >
		<!-- filter 버튼  -->
	<!-- 	<div class="filter col">
			<select class="form-control custom-select nav" required="">
			<option value="공간선택">공간선택</option><option value="공유오피스/코워킹스페이스/샵인샵">공유오피스/코워킹스페이스/샵인샵</option><option value="공유주방">공유주방</option><option value="연습실/합주실/녹음실">연습실/합주실/녹음실</option><option value="파티룸/모임공간/브라이덜샤워">파티룸/모임공간/브라이덜샤워</option><option value="회의실/강당/세미나실/비즈니스공간">회의실/강당/세미나실/비즈니스공간</option><option value="스터디룸/스터디카페">스터디룸/스터디카페</option><option value="공유하우스">공유하우스</option><option value="촬영스튜디오대여">촬영스튜디오대여</option>
			</select>
		</div> -->
		<input type="text" class="searchWord filter " id="searchWord" placeholder="필터 선택" >
		<!-- filter 버튼  -->
		
		<div class="rightWrap filter" style="display: flex; border: solid 1px lime;">
			<!-- map 버튼  -->
			<button  class="btnMap btn btn-primary btn-icon-split "  >지도 on</button>
			<!-- map 버튼  -->
			
			<!-- 정렬 버튼  -->
			<div class="dropdown mb-4 show">
            	<button class="btn bg-gradient-light  dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" >
                정렬
                </button>
                <div class="dropdown-menu animated--fade-in show" id="dorpdownMenu" aria-labelledby="#dropdownMenuButton" >
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
	<div class="row searchResultList">
	<!-- 결과 list1 -->
		<c:forEach var="c" items="${list }">
	        		<div class="col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="${c.PLACE_IMG }" alt=""></a>
						<div class="card-body content-overflow">
		                <h5>${c.PLACE_ADDR }</h5>
						<h4 class="card-title">
							<a href="#">${c.PLACE_NAME }</a>
		                </h4>
		                <p class="card-text ">${c.PLACE_CONTENT }</p>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">****</small>
						</div>
		            </div>
		            </div>
		</c:forEach>
	<!-- 결과 list2 -->
	        		<div class="col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body content-overflow">
		                <h5>서울특별시 asdf</h5>
						<h4 class="card-title">
							<a href="#">[서울역 파티룸] asdf</a>
		                </h4>
		                <p class="card-text ">! 무엇보다 호스트님이 안내도 잘해주시고 궁금한거 있을때마다 답장도 바로 바로 해주셔서 너무 편하게 이용했습니다:) 재방문 의사100프로!!</p>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ ★ ★ ★ ☆</small>
						</div>
		            </div>
		            </div>
	<!-- 결과 list3 -->
	        		<div class="col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body content-overflow">
		                <h5>서울특별시 asdf</h5>
						<h4 class="card-title">
							<a href="#">[서울역 파티룸] asdf</a>
		                </h4>
		                <p class="card-text ">! 무엇보다 호스트님이 안내도 잘해주시고 궁금한거 있을때마다 답장도 바로 바로 해주셔서 너무 편하게 이용했습니다:) 재방문 의사100프로!!</p>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ ★ ★ ★ ☆</small>
						</div>
		            </div>
		            </div>
		            
		            
	</div>
	<!-- 결과 목록 -->
		          
</div>
<%-- <%@ include file="a.jsp" %> --%>
</body>
</html>