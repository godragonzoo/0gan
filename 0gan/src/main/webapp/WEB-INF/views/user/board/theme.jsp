<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
pageContext.setAttribute("replaceChar", "\n");
%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>0gan - 기획전</title>

<!-- Bootstrap core CSS -->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../resources/css/business-frontpage.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#"  style="font-size: 22px;">0gan</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive"></div>
		</div>
	</nav>

	<!-- Header -->
	<header class="py-5 mb-5">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-lg-12">
					<h1 class="display-4 text-black mt-5 mb-2" align="center">기획전</h1>
					<br>
					<p class="lead mb-5 text-black" align="center">내가 원하는 컨셉의 장소를
						찾아보세요!</p>
				</div>
			</div>
		</div>
	</header>

	<!-- Page Content -->
	<div class="container">

		<!-- /.row -->
		<div class="row">
			<c:forEach var="list" items="${list }">
				<div class="col-md-4 mb-5">
					<a href="themePlace.do?theme_num=${list.theme_num }"
						style="text-decoration: none;">
						<div class="card h-100">
							<img class="card-img-top"
								src="/resources/upload/${list.theme_file }"
								style="height: 200px;">
							<div class="card-body">
								<h4 class="card-title" align="center" style="color: black;">${list.theme_title }</h4>
								<br>
								<p class="card-text" style="color: black; text-align: center;">${fn:replace(list.theme_content, replaceChar,"<br/>") }</p>
							</div>
						</div>
					</a>
				</div>
			</c:forEach>

		</div>

		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Bootstrap core JavaScript -->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
