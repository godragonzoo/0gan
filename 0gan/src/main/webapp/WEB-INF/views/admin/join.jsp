<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/user-login.css" rel="stylesheet"
	type="text/css">
<title>0gan 관리자 로그인</title>
</head>
<body>
	<div class="main-container">
		<div class="main-wrap">
			<header>
				<div class="logo-wrap">
					<!-- 로고이미지 -->
				</div>
			</header>
			<section class="login-input-section-wrap">
				<form action="adminJoin.do" method="post" name="form"
					onsubmit="return validCode();">
					<input type="hidden" name="${_csrf.parameterName }"
						value="${_csrf.token }">
					<div class="login-input-wrap">
						<input placeholder="Username" type="text" name="adm_id"></input>
					</div>
					<div class="login-input-wrap password-wrap">
						<input placeholder="Password" type="password" name="adm_pwd"></input>
					</div>
					<div class="login-input-wrap" style="margin-top: 14px;">
						<input placeholder="Code" type="password" id="code" name="code"></input>
					</div>
					<div class="login-button-wrap">
						<button type="submit">회원가입</button>
					</div>
				</form>
			</section>

			<footer>
				<div class="copyright-wrap">
					<span> Copyright © 0gan Corp. All Rights Reserved.</span>
				</div>
			</footer>
		</div>
	</div>
	<script src="../resources/js/sb-admin-2.min.js"></script>
</body>
</html>