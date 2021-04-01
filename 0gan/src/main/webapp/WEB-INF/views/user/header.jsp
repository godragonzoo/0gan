<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
header{ 
	margin: 0px auto; 
	position:relative; 
	width: 100%; 
	height: 150px;   
	background-color: #F8F9FC;
	display: block;
}
.logo {
	top: 0px;
    width: 250px;
    max-height: 150px;
    float: left;
}
.menu{
	top: 50px;
	float: right;
}
.dropdown-menu{
    top: 30px;
    left: -120px;
}
.dropdown-divider {
    height: 0;
    margin: 0.5rem 0;
    overflow: hidden;
    border-top: 1px solid #EAECF4;
}
#submenu{
	display: none; 
	position: absolute; 
	left: -160px; 
	top:60px;
}
.search{
    width: 60%;
    margin: 20px auto;
    display: block;
}
.searchInput{
    width: 90%;
    height: 50px;
    border: none;
}
.btnSearch{
	top: 5px;
	width: 60px;
	height: 50px;
	font-size: 30px;
}
</style>
<script type="text/javascript">
 //-------------------------------------------------------------------------------------
    // dropdown
$(document).ready(function(){
 $(".dropdown-toggle").dropdown();

	var profileList = document.getElementById("profileList");
	var menuList = document.getElementById("menuList");
	
	$("#profileIcon").click(function() {
		menuList.style.display='none';
		if($("#profileList").css('display')=='none'){
			profileList.style.display='block';
			$("#profileIcon").attr('aria-expanded','true');
			document.getElementById("submenu").style.display='block';
		} else {
			profileList.style.display='none';
			$("#profileIcon").attr('aria-expanded','false');
		}
	});
	$("#menuIcon").click(function() {
		profileList.style.display='none';
		if($("#menuList").css('display')=='none'){
			menuList.style.display='block';
			$("#menuIcon").attr('aria-expanded','true');
		} else {
			menuList.style.display='none';
			$("#menuIcon").attr('aria-expanded','false');
		}
	});
});
</script>
</head>
<body>

<header>
<img class="logo" src="/resources/img/logo.png">

<div class="menu" style="display: flex;">
	<div class="dropdown">
		<a class="dropdown-toggle" id="profileIcon"  data-toggle="dropdown" aria-expanded="false" >
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
<div class="search">
           	<input type="text" class="searchInput  border-bottom-primary" placeholder="Search">
        	<button type="submit" class="btnSearch btn-primary" >
        		<span style="color: white;"><i class="fas fa-search"></i></span>
        	</button>
</div>		
</header>
 
</body>
</html>