<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="80%">
	<tr>
		<td>제목</td>
		<td>내용</td>
		<td>첨부파일</td>
	</tr>
	<c:forEach var="list" items="${list }">
		<tr>
			<td><a href="themePlace.do?theme_num=${list.theme_num }">${list.theme_title }</a></td>
			<td>${list.theme_content }</td>
			<td>${list.theme_file }</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>