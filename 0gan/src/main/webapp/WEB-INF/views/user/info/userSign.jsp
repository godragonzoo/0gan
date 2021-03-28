<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Bootstrap core CSS -->
	<link href="../resources/userResources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="../resources/userResources/css/shop-homepage.css" rel="stylesheet">
</head>
<body>

	<div class="container">
		<form class="form-horizontal" role="form" method="post" action="">
			<h2 class="text-center">회원가입</h2>
			<hr>

			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto" id="divPhone">
				<label for="inputPhone" class="col-lg-2 control-label"> 이메일 </label>
				<div class="col-lg form-inline">
					<input type="tel" class="form-control col-lg-10 onlyNumber" id="phone" name="phone" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<div>
					<input type="button" class="btn btn-primary col-lg-offset-2" value="중복확인">
					</div>
				</div>
			</div>
			<br>

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

			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto" id="divName">
				<label for="inputName" class="col-lg-2 control-label">이름</label>
				<div class="col-lg">
					<input type="text" class="form-control col-lg onlyHangul" id="name" name="name" data-rule-required="true" placeholder="이름을 입력하세요." maxlength="15"><br>
				</div>
			</div>

			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto" id="divPhone">
				<label for="inputPhone" class="col-lg-2 control-label"> 휴대폰 번호 </label>
				<div class="col-lg form-inline">
					<input type="tel" class="form-control col-lg-10 onlyNumber" id="phone" name="phone" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" class="btn btn-primary col-lg-offset-2" value="본인인증"><br>
				</div>
			</div>

			<hr>
			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto">
				<label for="provision" class="col-lg-3 control-label">회원가입약관</label>
				<div class="col-lg form-group" id="provision">
					<textarea class="form-control" rows="8" style="resize: none">약관동의</textarea>
					<div class="radio">
						<label> <input type="radio" id="provisionYn_1" name="provisionYn_1" value="Y" autofocus="autofocus" checked> 동의합니다. </label>
					</div>
					<div class="radio">
						<label> <input type="radio" id="provisionYn_2" name="provisionYn_2" value="N"> 동의하지 않습니다. </label>
					</div>
				</div>
			</div>

			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto">
				<label for="memberInfo" class="col-lg-3 control-label">개인정보취급방침</label>
				<div class="col-lg" id="memberInfo">
					<textarea class="form-control" rows="8" style="resize: none">개인정보의 항목 및 수집방법 </textarea>
					<div class="radio">
						<label> <input type="radio" id="memberInfoYn_1" name="memberInfoYn_1" value="Y" checked> 동의합니다. </label>
					</div>
					<div class="radio">
						<label> <input type="radio" id="memberInfoYn_2" name="memberInfoYn_2" value="N"> 동의하지 않습니다. </label>
					</div>
				</div>
			</div>

			<hr>

			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto">
				<label for="inputEmailReceiveYn" class="col-lg-3 control-label">
				이메일 수신여부 </label>
				<div class="col-lg form-group">
					<label class="radio-inline"> <input type="radio" id="emailReceiveYn_1" name="emailReceiveYn_1" value="Y" checked> 동의합니다. </label> 
					<label class="radio-inline"> <input type="radio" id="emailReceiveYn_2" name="emailReceiveYn_2" value="N"> 동의하지 않습니다. </label>
				</div>
			</div>

			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto">
				<label for="inputSmsReceiveYn" class="col-lg-3 control-label">
				SMS 수신여부 </label>
				<div class="col-lg form-group">
					<label class="radio-inline"> <input type="radio" id="smsReceiveYn_1" name="smsReceiveYn_1" value="Y" checked> 동의합니다. </label>
					<label class="radio-inline"> <input type="radio" id="smsReceiveYn_2" name="smsReceiveYn_2" value="N"> 동의하지 않습니다. </label>
				</div>
			</div>

			<hr>
			<br>

			<div class="form-group col-lg center-block" style="float:none; margin:0 auto" align="center">
				<div class="col-lg">
					<input type="submit" class="btn btn-primary col-lg-3" value="회원가입">
				</div>
			</div>
		</form>
		<br>
	</div>
</body>
</html>