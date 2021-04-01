<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<!-- Custom fonts for this template -->
	<link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="../resources/css/user-board.css" rel="stylesheet" type="text/css">
	<link href="../resources/css/user-board-2.min.css" rel="stylesheet" type="text/css">

	<!-- Custom styles for this page -->
	<link href="../resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

	<!-- 파일업로드 Icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" />
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />
	<title>0gan - 호스트문의</title>
	<!-- Bootstrap cdn 설정 -->
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="content_wraper" role="main">
		<div class="main-wraper">
			<h2 class="main_title">호스트 문의</h2>
			<hr
				style="width: 100%; border-top: 2px solid black; margin-left: 13%; margin-top: -22px; padding-bottom: 40px;">

			<div class="card container-fluid w-75 shadow mt-4 mb-4"
				style="left: 13%; padding-top: 35px;">

				<div class="card-body">
					<form action="hostQueInsert.do" method="post" enctype="multipart/form-data">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					
						<div class="card container-fluid w-75 mb-5">
							<div class="col-md-12">
								<label class="mt-4">제목</label> <input type="text"
									class="form-control-text" name="host_que_title">
							</div>
							<hr>
							<div class="col-md-12">
								<label class="mt-4">비밀번호</label> <input type="password"
									class="form-password-text" name="host_que_pwd"> <label class="mt-4"
									style="margin-left: 20px;">비밀글</label>&nbsp; <input
									class="password-check" type="checkbox" name="host_que_secret" value="Y">
							</div>
							<hr>
							<label class="col-md-12 mb-3">내용</label>
							<textarea class="form-control" rows="7" name="host_que_content" style="resize: none;"></textarea>
							<div class="col-md-12 mt-4">
								<div class="filebox">
									<lable class="mt-4">첨부파일</lable>
									&nbsp; <input class="upload-name" value="파일선택"
										disabled="disabled"> <label for="ex_filename"><i
										class="fas fa-folder-plus fa-2x"></i></label> <input type="file"
										id="ex_filename" class="upload-hidden" name="uploadFile">
								</div>
							</div>
							<hr>
							<div class="d-grid gap-2 d-md-flex mb-3 justify-content-md-end">
								<button class="btn btn-secondary btn-icon-split" type="submit"> <span
									class="text" style="color: white;">등록</span>
								</button>
							</div>

						</div>
					</form>
				</div>





				<!-- /.container-fluid -->

			</div>
		</div>

		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<script src="../resources/js/user-board.js"></script>
</body>
</html>

