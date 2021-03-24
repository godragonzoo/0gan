<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

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

	<div class="container">
		<form class="form-horizontal" role="form" method="post" action="">
		
	<!-- 네비게이션바 -->
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="finId.do">이메일 찾기</a></li>
				<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="findPwd.do">비밀번호 찾기</a></li>
				<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="login.do">로그인</a></li>
				<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="userSign.do">회원가입</a></li>
		</ul>
		
	<!-- 네비게이션바 -->
	
			<h2> 비밀번호 찾기</h2>
			<hr>

			<div class="form-group" id="divEmail">
				<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" id="email" data-rule-required="true" placeholder="이메일을 입력하세요." maxlength="50">
				</div>
			</div>
				
			<div class="form-group" id="divPhone">
				<label for="inputPhone" class="col-lg-2 control-label"> 휴대폰 번호 </label>
				<div class="col-lg-9">
					<input type="tel" class="form-control onlyNumber" id="phone" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
				</div>
				<input type="button" class="btn btn-primary" value="본인인증">
			</div>

			<div class="form-group col-lg" align="center">
				<input type="submit" class="btn btn-primary" value="비밀번호 찾기">
			</div>
			
		</form>	
	</div>
	
</body>
</html>