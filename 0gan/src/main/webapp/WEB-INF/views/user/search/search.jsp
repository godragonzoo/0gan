<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<meta charset="EUC-KR">
<title>Insert title here</title>

<style type="text/css">
.container{
	margin:0 auto;
    width: 1000px;
    height: 500px;
}
.item{
    display: inline-block;
    float: left;
    width: 350px;
    height: 400px;
    border: 1px solid gray;
    margin: 50px;
	
}


.imgMap{
	width:800px;
	height: 500px;
	background-color: #ABCDEF;
	margin: 100px;
}

</style>
<script src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
  $('#btnMap').click( function() {
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
</script>
</head>
<body>

<div class="result">
	<div class="logo" style="float: left">Logo</div>
	<div class="menu" style="float: right;">menu</div>
    <hgroup class="mb20">
		<h1>Search Results</h1>
		<h2 class="lead"><strong class="text-danger">3</strong> results were found for the search for <strong class="text-danger">Lorem</strong></h2>								
	</hgroup>
	<div id="title"><h1>검색 결과</h1><hr></div>
	<div class="cccc" style="width: 1000px;">
		<!-- filter 버튼  -->
		<div class="filter">
			<select class="form-control custom-select nav" required="">
			<option value="공간선택">공간선택</option><option value="공유오피스/코워킹스페이스/샵인샵">공유오피스/코워킹스페이스/샵인샵</option><option value="공유주방">공유주방</option><option value="연습실/합주실/녹음실">연습실/합주실/녹음실</option><option value="파티룸/모임공간/브라이덜샤워">파티룸/모임공간/브라이덜샤워</option><option value="회의실/강당/세미나실/비즈니스공간">회의실/강당/세미나실/비즈니스공간</option><option value="스터디룸/스터디카페">스터디룸/스터디카페</option><option value="공유하우스">공유하우스</option><option value="촬영스튜디오대여">촬영스튜디오대여</option>
			</select>
		</div>
		<!-- filter 버튼  -->
		
		<!-- map 버튼  -->
		<div class="btnMap">
		<button  id="btnMap"  >지도 on</button>
		</div>
		<!-- map 버튼  -->
		
		<!-- 정렬 버튼  -->
		<div class="sort">
			<select class="selectSort">
				<option >정렬</option>
				<option value="가격순">가격순</option>
				<option value="최신순">최신순</option>
				<option value="추천순">추천순</option>
			</select>
		</div>
		<!-- 정렬 버튼  -->

	</div>
	<div class="imgMap">
	<h1>지도입니다</h1>
	</div>
	<div class="container searchResultList">
		<div class="item">
			<div class="mainImg">
				<a href="#" title="Lorem ipsum" class="thumbnail"><img src="http://lorempixel.com/250/140/people" alt="Lorem ipsum" /></a>
			</div>
			<div class="infoList">
				<ul class="meta-search">
					<li><i class="glyphicon glyphicon-calendar"></i> <span>02/15/2014</span></li>
					<li><i class="glyphicon glyphicon-time"></i> <span>4:28 pm</span></li>
					<li><i class="glyphicon glyphicon-tags"></i> <span>People</span></li>
					<h3>list1</h3>
				</ul>
			</div>
		
		</div>	
		<div class="item">
			<div class="mainImg">
				<a href="#" title="Lorem ipsum" class="thumbnail"><img src="http://lorempixel.com/250/140/people" alt="Lorem ipsum" /></a>
			</div>
			<div class="infoList">
				<ul class="meta-search">
					<li><i class="glyphicon glyphicon-calendar"></i> <span>02/15/2014</span></li>
					<li><i class="glyphicon glyphicon-time"></i> <span>4:28 pm</span></li>
					<li><i class="glyphicon glyphicon-tags"></i> <span>People</span></li>
					<h3>list2</h3>
				</ul>
			</div>
		
		</div>	
		<div class="item">
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
		
		</div>	
	
	</div>
	
</div>
</body>
</html>