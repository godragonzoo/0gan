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

    <title>호스트 정보 수정</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">
	<!-- 호스트 정보 : 김은비 -->
	<!-- 미완성 -->
	
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">호스트 관리 화면</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Divider -->

            <!-- Heading -->
            <div class="sidebar-heading">
            </div>

            <!-- Nav Item - 공간 관리 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#placeMgt"
                aria-expanded="true" aria-controls="placeMgt">
                <span>공간 관리</span>
            </a>
            <div id="placeMgt" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="#">공간 리스트</a>
                    <a class="collapse-item" href="#">새로운 공간 등록</a>
                </div>
            </div>
        </li>

        <!-- Nav Item - 예약 관리 -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#rsvtMgt"
            aria-expanded="true" aria-controls="rsvtMgt">
            <span>예약 관리</span>
        </a>
        <div id="rsvtMgt" class="collapse" aria-labelledby="headingUtilities"
        data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#">예약 현황 조회</a>
            <a class="collapse-item" href="#">예약 일정 관리</a>
            <a class="collapse-item" href="#">예약 승인 대기</a>
        </div>
    </div>
</li>

<!-- Nav Item - 게시글 관리 -->
<li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#hostBoardMgt"
    aria-expanded="true" aria-controls="hostBoardMgt">
    <span>게시글 관리</span>
</a>
<div id="hostBoardMgt" class="collapse" aria-labelledby="headingUtilities"
data-parent="#accordionSidebar">
<div class="bg-white py-2 collapse-inner rounded">
    <a class="collapse-item" href="#">문의 게시판 관리</a>
    <a class="collapse-item" href="#">후기 게시판 관리</a>
</div>
</div>
</li>

<!-- Nav Item - 매출 분석 -->
<li class="nav-item">
    <a class="nav-link" href="#">
        <span>매출 분석</span>
    </a>
</li>

<!-- Nav Item - 호스트 정보 수정 -->
<li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#hostInfoMgt"
    aria-expanded="true" aria-controls="hostInfoMgt">
    <span>호스트 정보</span>
</a>
<div id="hostInfoMgt" class="collapse" aria-labelledby="headingUtilities"
data-parent="#accordionSidebar">
<div class="bg-white py-2 collapse-inner rounded">
    <a class="collapse-item" href="#">호스트 정보 열람</a>
    <a class="collapse-item" href="#">호스트 정보 수정</a>
</div>
</div>
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
            <form class="form-inline">
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>
            </form>

            <!-- Topbar Search -->
            <form
            class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
                <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                aria-label="Search" aria-describedby="basic-addon2">
                <div class="input-group-append">
                    <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                    </button>
                </div>
            </div>
        </form>

        <!-- Topbar Navbar -->
        <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
            </a>
            <!-- Dropdown - Messages -->
            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
            aria-labelledby="searchDropdown">
            <form class="form-inline mr-auto w-100 navbar-search">
                <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small"
                    placeholder="Search for..." aria-label="Search"
                    aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search fa-sm"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </li>
    
    <!-- Nav Item - User Information -->
    <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
        <img class="img-profile rounded-circle"
        src="img/undraw_profile.svg">
    </a>
    <!-- Dropdown - User Information -->
    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
    aria-labelledby="userDropdown">
    <a class="dropdown-item" href="#">
        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
        Profile
    </a>
    <a class="dropdown-item" href="#">
        <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
        Settings
    </a>
    <a class="dropdown-item" href="#">
        <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
        Activity Log
    </a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
        Logout
    </a>
</div>
</li>

</ul>

</nav>
<!-- End of Topbar -->

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
    </div>

    <!-- Content Row -->
    <div class="container">
        <form class="form-horizontal" role="form" method="post" action="">
            <h3>공간 주소 입력</h3><br>
            <div class="form-group" id="divAddr">
                <label for="inputAddr" class="col-lg-10 control-label">공간 주소</label>
                <div class="form-inline form-group col-lg-10">
                    <input type="text" class="form-control col-lg" id="placeAaddr" data-rule-required="true" placeholder="주소" maxlength="150">&nbsp;
                    <input type="button" class="form-control d-none d-sm-inline-block btn-sm-push btn-primary shadow-sm" value="주소 찾기">
                </div>
                <div class="col-lg-10 control-label">
                    <input type="text" class="form-control" id="placeAddr_2" data-rule-required="true" placeholder="상세 주소 입력" maxlength="200">
                </div>
            </div>

            <br>
            <hr>
            <br>

            <h3>사업자 정보 입력</h3><br>
            <div class="form-group" id="divBizName">
                <label for="inputBizName" class="col-lg-2 control-label">상호명</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="bizName" data-rule-required="true" placeholder="상호명을 입력하세요." maxlength="50">
                </div>
            </div>

            <div class="form-group" id="divBizLeader">
                <label for="inputBizLeader" class="col-lg-2 control-label">대표자명</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="bizLeader" data-rule-required="true" placeholder="대표자명을 입력하세요." maxlength="50">
                </div>
            </div>

            <div class="form-group" id="divBizNum">
                <label for="inputBizNum" class="col-lg-2 control-label">사업자 등록 번호</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control onlyNumber" id="bizNum" data-rule-required="true" placeholder="사업자 번호를 입력하세요. (15글자)" maxlength="15">
                </div>
            </div>
            
            <div class="form-group col-lg">
                <label for="inputBizFile">사업자 등록증</label>
                <input type="file" class="form-control-file" id="bizFile" aria-describedby="fileHelp">
                <small id="fileHelp" class="form-text text-muted">20mb 이하</small>
            </div>

            <div class="form-group" id="divBizAddr">
                <label for="inputBizAddr" class="col-lg-2 control-label">사업자 주소</label>
                <div class="form-inline form-group col-lg-10">
                    <input type="text" class="form-control col-lg" id="placeAaddr" data-rule-required="true" placeholder="주소" maxlength="150">&nbsp;
                    <input type="button" class="form-control d-none d-sm-inline-block btn-sm-push btn-primary shadow-sm" value="주소 찾기">
                </div>
                <div class="col-lg-10 control-label">
                    <input type="text" class="form-control" id="bizAddr" data-rule-required="true" placeholder="상세 주소 입력" maxlength="200">
                </div>
            </div>
            
            <br>
            <hr>
            <br>

            <h3>정산정보</h3><br>
            <div class="form-group" id="divBizEmail">
                <label for="inputBizEmail" class="col-lg-2 control-label">정산용 이메일</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="bizEmail" data-rule-required="true" placeholder="이메일을 입력하세요." maxlength="50">
                </div>
            </div>

            <div class="form-group" id="divClacNum">
                <label for="inputClacNum" class="col-lg-2 control-label">정산용 연락처</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control onlyNumber" id="bizNum" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요."  maxlength="15">
                </div>
            </div>

            <div class="form-group" id="divAccount">
                <label for="inputClacAccount" class="col-lg-6 control-label">계좌번호</label>
                <label for="inputClacAccount" class="col-lg-2 control-label">은행</label>
                <div class="col-lg-6">
                    <input type="text" class="form-control onlyNumber" id="calcAccount" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요."  maxlength="15">
                </div>
            </div>

            <div class="form-group" id="divCalcName">
                <label for="inputCalcName" class="col-lg control-label">예금주</label>
                <div class="col-lg-2">
                    <input type="text" class="form-control" id="calcName" data-rule-required="true" maxlength="50">
                </div>
            </div>

            <div class="form-group" id="divClacBank">
                <label for="inputClacBank" class="col-lg-2 control-label">은행</label>

                <div class="col-lg-2">
                    <select class="form-control" id="calcBank">
                        <option value="국민은행">국민은행</option>
                        <option value="농협">농협  </option>
                        <option value="신한은행">신한은행</option>
                        <option value="우리은행">우리은행</option>
                        <option value="하나은행">하나은행</option>
                    </select>
                </div>
            </div>

            <hr>
            <div class="form-group" align="center">
                <div class="col-lg-offset-2 col-lg-10">
                    <button type="submit" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">호스트 정보 수정</button>
                </div>
            </div>
        </form>
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
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/chart-area-demo.js"></script>
<script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>