<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원가입</h2>
	<form action="adminJoin.do" method="post">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
		아이디 : <input type="text" name="adm_id"><br>
		비밀번호 : <input type="password" name="adm_pwd"><br>
		<input type="submit" value="가입">
		<input type="reset" value="취소">
	</form>
</body>
</html>