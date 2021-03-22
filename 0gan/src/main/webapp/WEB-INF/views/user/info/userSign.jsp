<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
				<h2>회원가입</h2>
				<hr>

				<div class="form-group" id="divEmail">
					<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="email" data-rule-required="true" placeholder="이메일을 입력하세요." maxlength="50">
					</div>
					<input type="button" class="btn btn-primary" value="중복 확인">
				</div>
				
				<div class="form-group" id="divPassword">
					<label for="inputPassword" class="col-lg-2 control-label">비밀번호</label>
					<div class="col-lg-10">
						<input type="password" class="form-control" id="password" name="excludeHangul" data-rule-required="true" placeholder="비밀번호" maxlength="30">
					</div>
				</div>
				
				<div class="form-group" id="divPasswordCheck">
					<label for="inputPasswordCheck" class="col-lg-2 control-label">비밀번호 확인</label>
					<div class="col-lg-10">
						<input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="비밀번호 확인" maxlength="30">
					</div>
				</div>
				
				<div class="form-group" id="divName">
					<label for="inputName" class="col-lg-2 control-label">이름</label>
					<div class="col-lg-10">
						<input type="text" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="이름 입력" maxlength="20">
					</div>
				</div>

			<div class="form-group" id="divPhone">
				<label for="inputPhone" class="col-lg-2 control-label"> 휴대폰 번호 </label>
				<div class="col-sm-9">
					<input type="tel" class="form-control onlyNumber" id="phone" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
				</div>
				<input type="button" class="btn btn-primary" value="본인인증">
			</div>

				<div class="form-group">
					<label for="provision" class="col-lg-2 control-label">회원가입약관</label>
					<div class="col-lg-10" id="provision">
						<textarea class="form-control" rows="8" style="resize: none">약관동의</textarea>
						<div class="radio">
							<label> <input type="radio" id="provisionYn" name="provisionYn" value="Y" autofocus="autofocus" checked> 동의합니다. </label>
						</div>
						<div class="radio">
							<label> <input type="radio" id="provisionYn" name="provisionYn" value="N"> 동의하지 않습니다. </label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
					<div class="col-lg-10" id="memberInfo">
						<textarea class="form-control" rows="8" style="resize: none">개인정보의 항목 및 수집방법 </textarea>
						<div class="radio">
							<label> <input type="radio" id="memberInfoYn" name="memberInfoYn" value="Y" checked> 동의합니다. </label>
						</div>
						<div class="radio">
							<label> <input type="radio" id="memberInfoYn" name="memberInfoYn" value="N"> 동의하지 않습니다. </label>
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<label for="inputEmailReceiveYn" class="col-lg-2 control-label">
						이메일 수신여부 </label>
					<div class="col-lg-10">
						<label class="radio-inline"> <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="Y" checked> 동의합니다. </label> 
						<label class="radio-inline"> <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="N"> 동의하지 않습니다. </label>
					</div>
				</div>

				<div class="form-group">
					<label for="inputSmsReceiveYn" class="col-lg-2 control-label">
						SMS 수신여부 </label>
					<div class="col-lg-10">
						<label class="radio-inline"> <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="Y" checked> 동의합니다. </label>
						<label class="radio-inline"> <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="N"> 동의하지 않습니다. </label>
					</div>
				</div>

			<div class="form-group" align="center">
				<div class="col-lg-offset-2 col-lg-10">
					<button type="submit" class="btn btn-primary">회원가입</button>
				</div>
			</div>
			
		</form>
	</div>
</body>
</html>