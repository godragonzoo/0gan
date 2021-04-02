<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">

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

<meta charset="UTF-8">
<title>search</title>
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
	menu.style.display='none';
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

<jsp:include page="../header.jsp"></jsp:include>

<div class="container ">
	<h1 class="title row border-bottom-primary  font-weight-bold text-primary" >검색 결과</h1>
	<div class="btnWrap row justify-content-between" >
		<!-- filter   -->
		<input type="text" class="searchWord filter " id="searchWord" placeholder="필터 선택" >
		<!-- filter   -->
		
		<div class="rightWrap filter" >
			<!-- map 버튼  -->
			<button  class="btnMap btn btn-primary"  >지도 on</button>
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
	<div class="imgMap" >
		<div ><h1>지도입니다</h1></div>
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
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
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
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
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
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>
	<!-- 결과 list4 -->
	        		<div class="col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body content-overflow">
		                <h5>서울특별시 asdf</h5>
						<h4 class="card-title">
							<a href="#">[서울역 파티룸] asdf</a>
		                </h4>
		              	</div>
		              	<div class="card-footer">
		                	<small class="text-muted">★ 4.8</small>
		                	<small class="text-muted text-right">♥ 32</small>
						</div>
		            </div>
		            </div>

	</div>
	<!-- 결과 목록 -->
	
                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>공간번호</th>
                            <th>공간이름</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="pList" items="${list}">
							<tr >
								<td>${pList.PLACE_NUM}</td>
								<td>${pList.PLACE_ADDR}</td>
							</tr>
						</c:forEach>
                    </tbody>
                </table>
</div><!-- 컨테이너 -->
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>