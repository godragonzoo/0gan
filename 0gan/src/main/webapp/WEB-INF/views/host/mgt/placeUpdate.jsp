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

    <title>공간 정보 수정</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Interface
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Components</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Components:</h6>
                        <a class="collapse-item" href="buttons.html">Buttons</a>
                        <a class="collapse-item" href="cards.html">Cards</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                aria-expanded="true" aria-controls="collapseUtilities">
                <i class="fas fa-fw fa-wrench"></i>
                <span>Utilities</span>
            </a>
            <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Custom Utilities:</h6>
                <a class="collapse-item" href="utilities-color.html">Colors</a>
                <a class="collapse-item" href="utilities-border.html">Borders</a>
                <a class="collapse-item" href="utilities-animation.html">Animations</a>
                <a class="collapse-item" href="utilities-other.html">Other</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Addons
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
        aria-expanded="true" aria-controls="collapsePages">
        <i class="fas fa-fw fa-folder"></i>
        <span>Pages</span>
    </a>
    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
        </div>
    </div>
</li>

<!-- Nav Item - Charts -->
<li class="nav-item">
    <a class="nav-link" href="charts.html">
        <i class="fas fa-fw fa-chart-area"></i>
        <span>Charts</span></a>
    </li>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="tables.html">
            <i class="fas fa-fw fa-table"></i>
            <span>Tables</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

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

        <!-- Nav Item - Alerts -->
        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-bell fa-fw"></i>
            <!-- Counter - Alerts -->
            <span class="badge badge-danger badge-counter">3+</span>
        </a>
        <!-- Dropdown - Alerts -->
        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
        aria-labelledby="alertsDropdown">
        <h6 class="dropdown-header">
            Alerts Center
        </h6>
        <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="mr-3">
                <div class="icon-circle bg-primary">
                    <i class="fas fa-file-alt text-white"></i>
                </div>
            </div>
            <div>
                <div class="small text-gray-500">December 12, 2019</div>
                <span class="font-weight-bold">A new monthly report is ready to download!</span>
            </div>
        </a>
        <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="mr-3">
                <div class="icon-circle bg-success">
                    <i class="fas fa-donate text-white"></i>
                </div>
            </div>
            <div>
                <div class="small text-gray-500">December 7, 2019</div>
                $290.29 has been deposited into your account!
            </div>
        </a>
        <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="mr-3">
                <div class="icon-circle bg-warning">
                    <i class="fas fa-exclamation-triangle text-white"></i>
                </div>
            </div>
            <div>
                <div class="small text-gray-500">December 2, 2019</div>
                Spending Alert: We've noticed unusually high spending for your account.
            </div>
        </a>
        <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
    </div>
</li>

<!-- Nav Item - Messages -->
<li class="nav-item dropdown no-arrow mx-1">
    <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <i class="fas fa-envelope fa-fw"></i>
    <!-- Counter - Messages -->
    <span class="badge badge-danger badge-counter">7</span>
</a>
<!-- Dropdown - Messages -->
<div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
aria-labelledby="messagesDropdown">
<h6 class="dropdown-header">
    Message Center
</h6>
<a class="dropdown-item d-flex align-items-center" href="#">
    <div class="dropdown-list-image mr-3">
        <img class="rounded-circle" src="img/undraw_profile_1.svg"
        alt="">
        <div class="status-indicator bg-success"></div>
    </div>
    <div class="font-weight-bold">
        <div class="text-truncate">Hi there! I am wondering if you can help me with a
        problem I've been having.</div>
        <div class="small text-gray-500">Emily Fowler · 58m</div>
    </div>
</a>
<a class="dropdown-item d-flex align-items-center" href="#">
    <div class="dropdown-list-image mr-3">
        <img class="rounded-circle" src="img/undraw_profile_2.svg"
        alt="">
        <div class="status-indicator"></div>
    </div>
    <div>
        <div class="text-truncate">I have the photos that you ordered last month, how
        would you like them sent to you?</div>
        <div class="small text-gray-500">Jae Chun · 1d</div>
    </div>
</a>
<a class="dropdown-item d-flex align-items-center" href="#">
    <div class="dropdown-list-image mr-3">
        <img class="rounded-circle" src="img/undraw_profile_3.svg"
        alt="">
        <div class="status-indicator bg-warning"></div>
    </div>
    <div>
        <div class="text-truncate">Last month's report looks great, I am very happy with
        the progress so far, keep up the good work!</div>
        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
    </div>
</a>
<a class="dropdown-item d-flex align-items-center" href="#">
    <div class="dropdown-list-image mr-3">
        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
        alt="">
        <div class="status-indicator bg-success"></div>
    </div>
    <div>
        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
        told me that people say this to all dogs, even if they aren't good...</div>
        <div class="small text-gray-500">Chicken the Dog · 2w</div>
    </div>
</a>
<a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
</div>
</li>

<div class="topbar-divider d-none d-sm-block"></div>

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
        <h1 class="h3 mb-0 text-gray-800">공간 등록</h1>
        <hr>
    </div>

    <!-- Content Row -->
    <div class="container">
        <form class="form-horizontal" role="form" method="post" action="">
            <h3>공간 유형 선택</h3><br>
            <div class="form-group col-lg-10" id="divAddr">                   
                <select class="form-control" id="exampleSelect2">
                    <option>파티룸</option>
                    <option>스터디룸</option>
                    <option>공유사무실</option>
                    <option>녹음실</option>
                    <option>연습실</option>
                    <option>촬영스튜디오</option>
                    <option>카페</option>
                    <option>쿠킹 스튜디오</option>
                    <option>베이킹 공방</option>
                    <option>기타</option>
                </select>
            </div>

            <br>
            <hr>
            <br>

            <h3>공간 정보 입력</h3><br>
            <div class="form-group" id="divBizName">
                <label for="inputBizName" class="col-lg-2 control-label">공간 이름</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="bizName" data-rule-required="true" placeholder="공간 이름을 입력하세요." maxlength="50">
                </div>
            </div>

            <div class="form-group" id="divBizLeader">
                <label for="inputBizLeader" class="col-lg-2 control-label">공간 소개</label>
                <div class="col-lg-10">
                    <textarea rows="5" class="form-control" id="bizLeader" data-rule-required="true" maxlength="50">
                    </textarea>
                </div>
            </div>

            <div class="form-group" id="divBizAddr">
                <label for="inputBizAddr" class="col-lg-2 control-label">공간 주소</label>
                <div class="form-inline form-group col-lg-10">
                    <input type="text" class="form-control col-lg" id="placeAaddr" data-rule-required="true" placeholder="주소" maxlength="150">&nbsp;
                    <input type="button" class="form-control d-none d-sm-inline-block btn-sm-push btn-primary shadow-sm" value="주소 찾기">
                </div>
                <div class="col-lg-10 control-label">
                    <input type="text" class="form-control" id="bizAddr" data-rule-required="true" placeholder="상세 주소 입력" maxlength="200">
                </div>
            </div>

            <div class="form-group" id="divBizNum">
                <label for="inputBizNum" class="col-lg-2 control-label">공간 시설 안내</label>
                <div class="form-group form-horizontal col-lg" id="divAddr">
                    case1&#9;<input type="checkbox" name="case[]" value="A">
                    case2<input type="checkbox" name="case[]" value="A"> &#9;
                    case3<input type="checkbox" name="case[]" value="A"> &#9;
                    case4<input type="checkbox" name="case[]" value="A"> &#9;
                    case5<input type="checkbox" name="case[]" value="A"> &#9;
                    case6<input type="checkbox" name="case[]" value="A"> &#9;
                    case7<input type="checkbox" name="case[]" value="A"> &#9;
                    case8<input type="checkbox" name="case[]" value="A"> &#9;
                    case9<input type="checkbox" name="case[]" value="A"> &#9;
                    case10<input type="checkbox" name="case[]" value="A"> &#9;
                </div>
            </div>

            <div class="form-group" id="divBizNum">
                <label for="inputBizNum" class="col-lg-2 control-label">예약시 유의사항</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="bizNum" data-rule-required="true">
                </div>
            </div>

            <div class="form-group" id="placeFrontImg">
                <label for="inputBizFile" class="col-lg-2 control-label">공간 대표 이미지</label>
                <div class="form-inline form-group col-lg">
                    <input type="file" class="form-control-file" id="inputBizFile" aria-describedby="fileHelp">
                    <small id="fileHelp" class="form-text text-muted">1장, 20mb 이하</small>
                </div>
            </div>

            <div class="form-group" id="placeImg">
                <label for="inputBizFile" class="col-lg-2 control-label">공간 세부 이미지</label>
                <div class="form-inline form-group col-lg">
                    <input type="file" class="form-control-file" id="inputBizFile" aria-describedby="fileHelp">
                    <small id="fileHelp" class="form-text text-muted">10장, 20mb 이하</small>
                </div>
            </div>

            <div class="form-group" id="placePeople">
                <label for="inputPlacePeople" class="col-lg-2 control-label">수용 가능 인원수</label>
                <div class="form-inline form-group col-lg-8">
                    <input type="text" class="form-control col-lg-2 onlyNumber" id="minPeople" data-rule-required="true" maxlength="10" placeholder="최소 인원수">&nbsp;&nbsp;&nbsp;
                    <input type="text" class="form-control col-lg-2 onlyNumber" id="maxPeople" data-rule-required="true" maxlength="10" placeholder="최대 인원수">
                </div>
            </div>

            <div class="form-group" id="divBizNum">
                <label for="inputBizNum" class="col-lg-2 control-label">공간 웹사이트</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control onlyNumber" id="bizNum" data-rule-required="true" placeholder="사이트 주소를 입력하세요." maxlength="150">
                </div>
            </div>            

            <div class="form-group" id="placePeople">
                <label for="inputPlacePeople" class="col-lg-2 control-label">공간 대여 가능 시간</label>
                <div class="form-inline form-group col-lg">
                    <input type="time" class="form-control col-lg-2" id="stratTime" data-rule-required="true">
                    &nbsp;&nbsp;~&nbsp;&nbsp;
                    <input type="time" class="form-control col-lg-2 onlyNumber" id="endTime" data-rule-required="true">
                </div>
            </div>

            <div class="form-group" id="placePeople">
                <label for="inputPlacePeople" class="col-lg-2 control-label">공간 대여 가능 기간</label>
                <div class="form-inline form-group col-lg">
                    <input type="date" class="form-control col-lg-2 onlyNumber" id="startDate" data-rule-required="true">
                    &nbsp;&nbsp;~&nbsp;&nbsp;
                    <input type="date" class="form-control col-lg-2 onlyNumber" id="endDate" data-rule-required="true">
                </div>
            </div>

            <br>
            <hr>
            <br>

            <h3>가격 정보 입력</h3><br>
            <div class="form-group" id="divBizEmail">
                <label for="inputBizEmail" class="col-lg control-label">시간당 가격</label>
                <div class="form-inline col-lg">
                    <input type="number" class="form-control col-lg-2" id="bizEmail" data-rule-required="true"
                    value="0" min="0" max="100000" step="5000">&nbsp;&nbsp;원
                </div>
            </div>

            <div class="form-group" id="divClacNum">
                <label for="inputClacNum" class="col-lg-2 control-label">패키지 단위별 가격</label>
                <div class="form-inline col-lg">
                    <input type="number" class="form-control col-lg-2" id="bizEmail" data-rule-required="true"
                    value="0" min="0" max="24" step="1">&nbsp;&nbsp;시간 당&nbsp;&nbsp;
                    <input type="number" class="form-control col-lg-2" id="bizEmail" data-rule-required="true"
                    value="0" min="0" max="100000" step="5000">&nbsp;&nbsp;원
                </div>
            </div>

            <div class="form-group" id="divAccount">
                <label for="inputClacAccount" class="col-lg-6 control-label">추가 인원 1인당 추가 요금</label>
                <div class="form-inline col-lg">
                    <input type="number" class="form-control col-lg-2" id="bizEmail" data-rule-required="true"
                    value="0" min="0" max="100000" step="5000">&nbsp;&nbsp;원
                </div>
            </div>

            <div class="form-group" id="divCalcName">
                <label for="inputCalcName" class="col-lg-2 control-label">보증금</label>
                <div class="form-inline col-lg">
                    <input type="number" class="form-control col-lg-2" id="bizEmail" data-rule-required="true"
                    value="0" min="0" max="70000" step="10000">&nbsp;&nbsp;원
                </div>
            </div>

            <hr>
            <div class="form-group" align="center">
                <button type="submit" class="d-none d-lg-inline-block btn btn-lg btn-primary shadow-lg">공간 정보 수정</button>
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