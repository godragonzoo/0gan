<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>프로필</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 프로필 열람 : 김은비 -->

	<!--  -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor01" aria-controls="navbarColor01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarColor01">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
				<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Features</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
			<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Action</a> <a
					class="dropdown-item" href="#">Another action</a> <a
					class="dropdown-item" href="#">Something else here</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Separated link</a>
				</div></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Search">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<!--  -->


	<hr>
	<div class="container">

	<!-- 네비게이션바 -->
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="userInfo">프로필</a></li>
		<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#">예약내역</a></li>
		<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#">관심목록</a></li>
		<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#">나의 문의내역</a></li>
	</ul>
	<!-- 네비게이션바 -->

		<h2>프로필</h2>
		<hr>
		<div class="col-lg">
			<table class="table table-hover">
				<tr align="center">
					<td colspan="2">(user_name) 님</td>
				</tr>
				<tr class="table-active">
					<th scope="row">이름</th>
					<td>1</td>
				</tr>
				<tr>
					<th scope="row">이메일</th>
					<td>2</td>
				</tr>
				<tr class="table-primary">
					<th scope="row">비밀번호</th>
					<td>3</td>
				</tr>
				<tr class="table-secondary">
					<th scope="row">연락처</th>
					<td>4</td>
				</tr>
			</table>
			<div class="form-group" align="center">
				<div class="col-lg-offset-2 col-lg-10">
					<button type="submit" class="btn btn-primary">프로필 수정</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>