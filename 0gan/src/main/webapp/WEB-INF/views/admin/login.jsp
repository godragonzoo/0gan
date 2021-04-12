<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<head>
<meta charset="UTF-8">
<link href="../resources/css/user-login.css" rel="stylesheet" type="text/css">
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
				<form action="adminLogin.do" method="post">
					<input type="hidden" name="${_csrf.parameterName }"
						value="${_csrf.token }">
					<div class="login-input-wrap">
						<input placeholder="Username" type="text" name="username"></input>
					</div>
					<div class="login-input-wrap password-wrap">
						<input placeholder="Password" type="password" name="password"></input>
					</div>
					<div class="login-button-wrap">
						<button type="submit">로그인</button>
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
</body>