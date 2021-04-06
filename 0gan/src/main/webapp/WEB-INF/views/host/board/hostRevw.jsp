<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>0gan 호스트 페이지</title>

    <!-- Custom fonts for this template-->
    <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">


    <!-- Custom styles for this template-->
    <link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="../resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-text mx-3">0gan logo</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Place Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePlace"
                aria-expanded="true" aria-controls="collapseOne">
                <span> 공간 관리 </span>
            </a>
            <div id="collapsePlace" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="#"> 공간 리스트 </a>
                    <a class="collapse-item" href="#"> 새로운 공간 등록 </a>
                </div>
            </div>

        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseRsvt"
            aria-expanded="true" aria-controls="collapseTwo">
            <span> 예약 관리 </span>
        </a>
        <div id="collapseRsvt" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="#"> 예약 현황 조회 </a>
                <a class="collapse-item" href="#"> 예약 일정 관리 </a>
                <a class="collapse-item" href="#"> 예약 승인 대기 </a>
            </div>
        </div>
    </li>

    <li class="nav-item active">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBoard"
            aria-expanded="true" aria-controls="collapseTwo">
            <span> 게시글 관리 </span>
        </a>
        <div id="collapseBoard" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="hostQna.do"> 문의 게시글 관리 
                <span class="badge rounded-pill bg-warning text-dark ml-4">10</span>
                </a>
                <a class="collapse-item active" href="hostRevw.do"> 후기 게시글 관리 
                <span class="badge rounded-pill bg-warning text-dark ml-4">23
                </span>
                </a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Pages Menu -->
    <li class="nav-item">
        <a class="nav-link sales" href="#"><span> 매출 관리 </span></a>
    </li>

</ul>
<!-- End of Sidebar -->

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

            <!-- Sidebar Toggle (Topbar) -->
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                <i class="fa fa-bars"></i>
            </button>



            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">

                <!-- Nav Item - User Information -->
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="mr-2 d-none d-lg-inline text-gray-600 small"> {관리자} </span>
                    <img class="img-profile rounded-circle"
                    src="../resources/img/undraw_profile.svg">
                </a>
                <!-- Dropdown - User Information -->
                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                aria-labelledby="userDropdown">


                <a class="dropdown-item" href="#">
                    로그아웃
                </a>
            </div>
        </li>

    </ul>

</nav>
<!-- End of Topbar -->

<!-- 위의 코드는 고정이고 밑에 코드는 좌측 메뉴 클릭시 출력되는 페이지 내용을 채워가시면 되겠습니다. -->

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"> 게시글 관리 </h1>

    <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"> 게시글 관리 </a></li>
        <li class="breadcrumb-item active" aria-current="page"> 후기 게시글 관리 </li>
    </ol>
</nav>


    <!-- DataTales Example -->
    <div class="card shadow mt-4 mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"> 후기 게시글 관리 </h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>공간이름</th>
                            <th>내용</th>
                            <th>작성자</th>
                            <th>평점</th>
                            <th>작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="rList" items="${rList }">
						<tr>
							<td>${rList.revw_num}</td>
							<td>${rList.place_num}</td>
							
							<td>
								<a href="hostQnaInsert.do?no=${rList.revw_num}">
								${rList.revw_content}
								</a>
							</td>
							<td>${rList.revw_writer}</td>
							<td>${rList.revw_score}</td>
							<td>${rList.revw_date}</td>
						</tr>
					</c:forEach>
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
            <span>Copyright &copy; 0gan Corp. All rights reserved.</span>
        </div>
    </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
aria-hidden="true">
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
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
<script src="../resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="../resources/js/demo/datatables-demo.js"></script>

</body>

</html>