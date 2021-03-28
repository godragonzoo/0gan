<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Bootstrap core CSS -->
	<link href="../resources/userResources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="../resources/userResources/css/shop-homepage.css" rel="stylesheet">
</head>
<body>
	<!-- 프로필 정보 수정 : 김은비 -->

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
						<a class="nav-link" href="#">프로필
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">예약내역</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">관심목록</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">문의내역</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navigation -->

	<!-- 입력폼 -->
	<div class="container">

		<form class="form-horizontal" role="form" method="post" action="">

			<h2 class="text-center">프로필 수정</h2>
			<hr>

			<div class="form-group col-lg-8 center-block" style="float:none; margin: auto" id="divEmail">
				<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
				<div class="col-lg">
					<input type="text" class="form-control col-lg" id="email" name="email" data-rule-required="true" placeholder="이메일을 입력하세요." maxlength="50"><br>
				</div>
			</div>
			
			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto" id="divName">
				<label for="inputName" class="col-lg-2 control-label">이름</label>
				<div class="col-lg">
					<input type="text" class="form-control col-lg onlyHangul" id="name" name="name" data-rule-required="true" placeholder="이름을 입력하세요." maxlength="15"><br>
				</div>
			</div>

			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto" id="divPassword">
				<label for="inputPassword" class="col-lg-2 control-label">비밀번호</label>
				<div class="col-lg">
					<input type="password" class="form-control col-lg" id="password" name="password" data-rule-required="true" placeholder="비밀번호를 입력하세요." maxlength="30"><br>
				</div>
			</div>
			
			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto" id="divPasswordCheck">
				<label for="inputPasswordCheck" class="col-lg-3 control-label">비밀번호 확인</label>
				<div class="col-lg">
					<input type="password" class="form-control col-lg" id="passwordCheck" name="passwordCheck" data-rule-required="true" placeholder="비밀번호 확인" maxlength="30"><br>
				</div>
			</div>

			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto" id="divPhone">
				<label for="inputPhone" class="col-lg-2 control-label"> 휴대폰 번호 </label>
				<div class="col-lg form-inline">
					<input type="tel" class="form-control col-lg-10 onlyNumber" id="phone" name="phone" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" class="btn btn-primary col-lg-offset-2" value="본인인증"><br>
				</div>
			</div>

			<br>
			<hr>
			<br>

			<div class="form-group col-lg center-block" style="float:none; margin:0 auto" align="center">
				<div class="col-lg">
					<input type="submit" class="btn btn-primary col-lg-3" value="프로필 수정"></button>
				</div>
			</div>
			
		</form>	
	</div>
	
</body>
</html>