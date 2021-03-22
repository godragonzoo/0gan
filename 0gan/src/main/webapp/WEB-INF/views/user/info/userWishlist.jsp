<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관심 목록</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 관심 목록 : 김은비 -->

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


	<hr>
	<div class="container">

		<!-- 네비게이션바 -->
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="userInfo">프로필</a></li>
			<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#">예약내역</a></li>
			<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#">관심목록</a></li>
			<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#">나의 문의내역</a></li>
		</ul>
		<!-- 네비게이션바 -->

		<div class="row col-lg-12">
			<h2>관심 목록</h2>
			<hr>
			<!-- 미완성 -->
				<div class="card h-100">
					<a href="#"><img class="card-img-top" width="100" height="100" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">장소 이름</a>
						</h4>
						<p>장소 위치</p>
						<p class="card-text">시간당 가격</p>
						<p class="card-text">수용 가능 인원수</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
					</div>
				</div>

				<div class="card h-100">
					<a href="#"><img class="card-img-top" width="100" height="100" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">Item Six</a>
						</h4>
						<h5>$24.99</h5>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
					</div>
				</div>

				<div class="card h-100">
					<a href="#"><img class="card-img-top" width="100" height="100" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">Item Six</a>
						</h4>
						<h5>$24.99</h5>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
					</div>
				</div>

				<div class="card h-100">
					<a href="#"><img class="card-img-top" width="100" height="100" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">Item Six</a>
						</h4>
						<h5>$24.99</h5>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
					</div>
				</div>
		</div>

	</div>
	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>