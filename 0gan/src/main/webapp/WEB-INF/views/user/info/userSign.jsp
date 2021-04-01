<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	
	<!-- jQuery -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script type="text/javascript">
	$(document).ready(function(e){
		
		var idx = false;
		
		$('#btn_sign').click(function(){
			if($.trim($('#user_email').val()) == ''){
				alert("이메일 입력.");
				$('#user_email').focus();
				return;
			}else if($.trim($('#user_pwd').val()) == ''){
				alert("패스워드 입력.");
				$('#user_pwd').focus();
				return;
			}
			else if($('#user_pwd').val() != $('#passwordCheck').val()){
				alert('비밀번호가 다릅니다.');
				$('#user_pwd').focus();
				return;
			}
			
			if(idx==false){
				alert("이메일 중복체크를 해주세요.");
				return;
			}else{
				$('#userSignForm').submit();
			}
		});
		
		// 이메일 중복체크
	});
	
	// 본인인증
	IMP.init("imp92491990");
</script>

</head>
<body>

	<div class="container">
		<form id="userSignForm" class="form-horizontal" method="post" action="userSign.do">
			<h2 class="text-center">회원가입</h2>
			<hr>
			
			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto" id="divEmail">
				<label for="inputEmail" class="col-lg-2 control-label"> 이메일 </label>
				<div class="col-lg form-inline">
					<input type="email" class="form-control col-lg-10 onlyNumber" id="user_email" name="user_email" data-rule-required="true" placeholder="이메일을 입력하세요."> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<div>
					<input type="button" class="btn btn-primary col-lg-offset-2" value="중복확인">
					</div>
				</div>
			</div>
			<br>

			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto" id="divPassword">
				<label for="inputPassword" class="col-lg-2 control-label">비밀번호</label>
				<div class="col-lg">
					<input type="password" class="form-control col-lg" id="user_pwd" name="user_pwd" data-rule-required="true" placeholder="비밀번호를 입력하세요." maxlength="30"><br>
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
					<input type="text" class="form-control col-lg onlyHangul" id="user_name" name="user_name" data-rule-required="true" placeholder="이름을 입력하세요." maxlength="15"><br>
				</div>
			</div>

			<div class="form-group col-lg-8 center-block" style="float:none; margin:0 auto" id="divPhone">
				<label for="inputPhone" class="col-lg-2 control-label"> 휴대폰 번호 </label>
				<div class="col-lg form-inline">
					<input type="tel" class="form-control col-lg-10 onlyNumber" id="user_tel" name="user_tel" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
						<%request.setAttribute("toDay_A", new java.util.Date());%> ${toDay_A}, 
        					<jsp:useBean id="toDay_B" class="java.util.Date" /> ${toDay_B}, 
        					<c:set var="toDay_C" value="<%=new java.util.Date()%>"/> ${toDay_C},
        					<fmt:parseDate var="toDay_D" value="2018-11-28 16:42:00" pattern="yyyy-MM-dd HH:mm:ss" />
						    <%
						   		// 데이터베이스 값이 Timestamp 경우 문자열 변환 필요
						    %>
        
						<input type="hidden" name="user_mk_date" value="">
						<input type="hidden" name="user_mod_date" value="">
						<input type="hidden" name="user_grade" value="U">
						<input type="hidden" name="user_del" value="N">
						<input type="hidden" name="user_agree" value="Y">
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
					<input type="submit" id="btn_sign" class="btn btn-primary col-lg-3" value="회원가입">
				</div>
			</div>
		</form>
		<br>
	</div>
</body>
</html>