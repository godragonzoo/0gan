<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>프로필</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Bootstrap core CSS -->
	<link href="../resources/userResources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="../resources/userResources/css/shop-homepage.css" rel="stylesheet">
</head>
<body>
	<!-- 프로필 열람 : 김은비 -->

	<div class="container">

		<!-- Navigation -->
		<hr>
		<nav class="navbar navbar-expand-lg">
			<div class="container">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active">
							<a class="nav-link" href="userInfo.do">프로필</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="userRsvtList.do">예약내역</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="userWishlist.do">관심목록</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="userQueList.do">문의내역</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<h2 class="text-center">프로필</h2>
		<hr>

		<div class="container">
			<div class="col-lg-7 center-block" style="float:none; margin:0 auto" >
				<c:forEach var="user" items="${user }">
				<h4 class="text-center"> ${user.user_name } 님</h4>
				<table class="table" align="center" width="700">
					<tr>
						<td align="center"><b>이름</b></td>
						<td width="400">${user.user_name }</td>
					</tr>

					<tr>
						<td align="center"><b>이메일</b></td>
						<td>${user.user_email }</td>
					</tr>

					<tr>
						<td align="center"><b>연락처</b></td>
						<td>${user.user_tel }</td>
					</tr>
					
					<tr>
						<td align="center"><b>마케팅 수신 동의</b></td>
						<td>마케팅 수신 동의</td>
					</tr>
				</table>
				</c:forEach>
			</div>
		</div>
		<hr>
		<br>
		<div class="container">
			<div class="col-lg text-center" style="float:none; margin:0 auto" >
				<input type="submit" class="btn btn-primary col-lg-3" value="프로필 수정">
				<input type="button" class="btn btn-primary col-lg-3" value="회원 탈퇴">
			</div>
		</div>
	</div>
</body>
</html>