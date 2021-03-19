<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>0gan 관리자 - 문의페이지</title>

<!-- Custom fonts for this template -->
<link href="../resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="../resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

</head>

<body id="page-top">
	<!-- 관리자 1대1문의관리 페이지 by 박권익 -->
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-text mx-3">0gan logo</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->


			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item active"><a class="nav-link" href="#"><span>
						회원 정보 관리 </span></a></li>
			<li class="nav-item active"><a class="nav-link" href="#"><span>
						공간 정보 관리 </span></a></li>
			<li class="nav-item active"><a class="nav-link" href="#"><span>
						예약 정보 관리 </span></a></li>
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <span>
						매출 관리 </span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#"> 전체 매출 </a> <a
							class="collapse-item" href="#"> 공간별 매출 </a> <a
							class="collapse-item" href="#"> 호스트별 매출 </a>
					</div>
				</div></li>
			<li class="nav-item active"><a class="nav-link" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <span>
						게시판 관리 </span>
			</a>
				<div id="collapseUtilities" class="collapse show"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="admin_noti.do"> 공지사항 관리 </a> <a
							class="collapse-item" href="admin_faq.do"> 도움말 관리 </a> <a
							class="collapse-item" href="admin_event.do"> 이벤트 관리 </a> <a
							class="collapse-item active" href="admin_answer.do"> 문의게시판 관리
						</a>
					</div>
				</div></li>
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">


						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">{관리자}</span>
								<img class="img-profile rounded-circle"
								src="../resources/img/undraw_profile.svg">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									로그아웃
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">문의게시판</h1>

					<nav
						style="-bs-breadcrumb-divider: url(&amp; #34; data: image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&amp;#34;);"
						aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">게시판 관리</a></li>
							<li class="breadcrumb-item active" aria-current="page">문의게시판
								관리</li>
						</ol>
					</nav>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">문의게시판 목록</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>작성일</th>
											<th>답변여부</th>
											<th>기능</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td>Tiger Nixon</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Garrett Winters</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Ashton Cox</td>
											<td>Junior Technical Author</td>
											<td>San Francisco</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Cedric Kelly</td>
											<td>Senior Javascript Developer</td>
											<td>Edinburgh</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Airi Satou</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Brielle Williamson</td>
											<td>Integration Specialist</td>
											<td>New York</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Herrod Chandler</td>
											<td>Sales Assistant</td>
											<td>San Francisco</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Rhona Davidson</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Integration Specialist</td>
											<td>Tokyo</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Colleen Hurst</td>
											<td>Javascript Developer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>San Francisco</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Sonya Frost</td>
											<td>Software Engineer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Jena Gaines</td>
											<td>Office Manager</td>
											<td>London</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Quinn Flynn</td>
											<td>Support Lead</td>
											<td>Edinburgh</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Charde Marshall</td>
											<td>Regional Director</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>San Francisco</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Haley Kennedy</td>
											<td>Senior Marketing Designer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>London</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Tatyana Fitzpatrick</td>
											<td>Regional Director</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>London</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Michael Silva</td>
											<td>Marketing Designer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>London</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Paul Byrd</td>
											<td>Chief Financial Officer (CFO)</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>New York</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Gloria Little</td>
											<td>Systems Administrator</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>New York</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Bradley Greer</td>
											<td>Software Engineer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>London</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Dai Rios</td>
											<td>Personnel Lead</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Jenette Caldwell</td>
											<td>Development Lead</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>New York</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Yuri Berry</td>
											<td>Chief Marketing Officer (CMO)</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>New York</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Caesar Vance</td>
											<td>Pre-Sales Support</td>
											<td>New York</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Doris Wilder</td>
											<td>Sales Assistant</td>
											<td>Sidney</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Angelica Ramos</td>
											<td>Chief Executive Officer (CEO)</td>
											<td>London</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Gavin Joyce</td>
											<td>Developer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Jennifer Chang</td>
											<td>Regional Director</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Singapore</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Brenden Wagner</td>
											<td>Software Engineer</td>
											<td>San Francisco</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Fiona Green</td>
											<td>Chief Operating Officer (COO)</td>
											<td>San Francisco</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Shou Itou</td>
											<td>Regional Marketing</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Tokyo</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Michelle House</td>
											<td>Integration Specialist</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Sidney</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Tiger Nixon</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Garrett Winters</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Ashton Cox</td>
											<td>Junior Technical Author</td>
											<td>San Francisco</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Cedric Kelly</td>
											<td>Senior Javascript Developer</td>
											<td>Edinburgh</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Airi Satou</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Brielle Williamson</td>
											<td>Integration Specialist</td>
											<td>New York</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Herrod Chandler</td>
											<td>Sales Assistant</td>
											<td>San Francisco</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Rhona Davidson</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Integration Specialist</td>
											<td>Tokyo</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Colleen Hurst</td>
											<td>Javascript Developer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>San Francisco</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Sonya Frost</td>
											<td>Software Engineer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Jena Gaines</td>
											<td>Office Manager</td>
											<td>London</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Quinn Flynn</td>
											<td>Support Lead</td>
											<td>Edinburgh</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Charde Marshall</td>
											<td>Regional Director</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>San Francisco</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Haley Kennedy</td>
											<td>Senior Marketing Designer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>London</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Tatyana Fitzpatrick</td>
											<td>Regional Director</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>London</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Michael Silva</td>
											<td>Marketing Designer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>London</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Paul Byrd</td>
											<td>Chief Financial Officer (CFO)</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>New York</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Gloria Little</td>
											<td>Systems Administrator</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>New York</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Bradley Greer</td>
											<td>Software Engineer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>London</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Dai Rios</td>
											<td>Personnel Lead</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Jenette Caldwell</td>
											<td>Development Lead</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>New York</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Yuri Berry</td>
											<td>Chief Marketing Officer (CMO)</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>New York</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Caesar Vance</td>
											<td>Pre-Sales Support</td>
											<td>New York</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Doris Wilder</td>
											<td>Sales Assistant</td>
											<td>Sidney</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Angelica Ramos</td>
											<td>Chief Executive Officer (CEO)</td>
											<td>London</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Gavin Joyce</td>
											<td>Developer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Jennifer Chang</td>
											<td>Regional Director</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Singapore</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Brenden Wagner</td>
											<td>Software Engineer</td>
											<td>San Francisco</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Fiona Green</td>
											<td>Chief Operating Officer (COO)</td>
											<td>San Francisco</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Shou Itou</td>
											<td>Regional Marketing</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Tokyo</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Michelle House</td>
											<td>Integration Specialist</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Sidney</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Tiger Nixon</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Garrett Winters</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Ashton Cox</td>
											<td>Junior Technical Author</td>
											<td>San Francisco</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Cedric Kelly</td>
											<td>Senior Javascript Developer</td>
											<td>Edinburgh</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Airi Satou</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Brielle Williamson</td>
											<td>Integration Specialist</td>
											<td>New York</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Herrod Chandler</td>
											<td>Sales Assistant</td>
											<td>San Francisco</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Rhona Davidson</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Integration Specialist</td>
											<td>Tokyo</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Colleen Hurst</td>
											<td>Javascript Developer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>San Francisco</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Sonya Frost</td>
											<td>Software Engineer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Jena Gaines</td>
											<td>Office Manager</td>
											<td>London</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Quinn Flynn</td>
											<td>Support Lead</td>
											<td>Edinburgh</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Charde Marshall</td>
											<td>Regional Director</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>San Francisco</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Haley Kennedy</td>
											<td>Senior Marketing Designer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>London</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Tatyana Fitzpatrick</td>
											<td>Regional Director</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>London</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Michael Silva</td>
											<td>Marketing Designer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>London</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Paul Byrd</td>
											<td>Chief Financial Officer (CFO)</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>New York</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Gloria Little</td>
											<td>Systems Administrator</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>New York</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Bradley Greer</td>
											<td>Software Engineer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>London</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Dai Rios</td>
											<td>Personnel Lead</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Jenette Caldwell</td>
											<td>Development Lead</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>New York</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Yuri Berry</td>
											<td>Chief Marketing Officer (CMO)</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>New York</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Caesar Vance</td>
											<td>Pre-Sales Support</td>
											<td>New York</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Doris Wilder</td>
											<td>Sales Assistant</td>
											<td>Sidney</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Angelica Ramos</td>
											<td>Chief Executive Officer (CEO)</td>
											<td>London</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Gavin Joyce</td>
											<td>Developer</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Jennifer Chang</td>
											<td>Regional Director</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Singapore</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Brenden Wagner</td>
											<td>Software Engineer</td>
											<td>San Francisco</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Fiona Green</td>
											<td>Chief Operating Officer (COO)</td>
											<td>San Francisco</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Shou Itou</td>
											<td>Regional Marketing</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Tokyo</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>
										<tr>
											<td>Michelle House</td>
											<td>Integration Specialist</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>Sidney</td>
											<td><a href="#" class="btn btn-primary btn-icon-split">
													<span class="text">답변등록</span>
											</a></td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="../resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="../resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="../resources/js/demo/datatables-demo.js"></script>

</body>

</html>