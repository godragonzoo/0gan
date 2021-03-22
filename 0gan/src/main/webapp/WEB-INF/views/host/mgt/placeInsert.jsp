<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>새로운 공간 등록</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">
	<!-- 장소 등록 : 김은비 -->

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
        <h1 class="h3 mb-0 text-gray-800">공간 등록</h1>
        <hr>
    </div>

    <!-- Content Row -->
    <div class="container">
        <form class="form-horizontal" role="form" method="post" action="">
            <h3>공간 유형 선택</h3><br>
            <div class="form-group col-lg-10" id="divPlaceCategory">                   
                <select class="form-control" id="placeCategory">
                    <option value="파티룸">파티룸</option>
                    <option value="스터디룸">스터디룸</option>
                    <option value="공유사무실">공유사무실</option>
                    <option value="녹음실">녹음실</option>
                    <option value="연습실">연습실</option>
                    <option value="촬영스튜디오">촬영스튜디오</option>
                    <option value="카페">카페</option>
                    <option value="쿠킹 스튜디오">쿠킹 스튜디오</option>
                    <option value="베이킹 공방">베이킹 공방</option>
                    <option value="기타">기타</option>
                </select>
            </div>

            <br>
            <hr>
            <br>

            <h3>공간 정보 입력</h3><br>
            <div class="form-group" id="divPlaceName">
                <label for="placeName" class="col-lg-2 control-label">공간 이름</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="placeName" name="placeName" data-rule-required="true" placeholder="공간 이름을 입력하세요." maxlength="50">
                </div>
            </div>

            <div class="form-group" id="divPlaceContent">
                <label for="placeContent" class="col-lg-2 control-label">공간 소개</label>
                <div class="col-lg-10">
                    <textarea rows="5" class="form-control" id="placeContent" name="placeContent" data-rule-required="true" maxlength="50">
                    </textarea>
                </div>
            </div>

            <div class="form-group" id="divPlaceAddr">
                <label for="placeAddr" class="col-lg-2 control-label">공간 주소</label>
                <div class="form-inline form-group col-lg-10">
                    <input type="text" class="form-control col-lg" id="placeAddr" name="placeAddr" data-rule-required="true" placeholder="주소" maxlength="150">&nbsp;
                    <input type="button" class="form-control btn-primary" id="placeAddrBtn" name="placeAddrBtn" value="주소 찾기">
                </div>
                <div class="col-lg-10 control-label">
                    <input type="text" class="form-control" id="placeAddrDetail" name="placeAddrDetail" data-rule-required="true" placeholder="상세 주소 입력" maxlength="200">
                </div>
            </div>

            <div class="form-group" id="divPlaceFac">
                <label for="placeFacInfo" class="col-lg-2 control-label">공간 시설 안내</label>
                <div class="form-group form-horizontal col-lg" id="divPlaceFacInfo">
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

            <div class="form-group" id="divPlaceNotice">
                <label for="placeNoti" class="col-lg-2 control-label">예약시 유의사항</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="placeNoti" name="placeNoti" data-rule-required="true">
                </div>
            </div>

            <div class="form-group" id="divPlaceFrontImg">
                <label for="placeFrontImg" class="col-lg-2 control-label">공간 대표 이미지</label>
                <div class="form-inline form-group col-lg">
                    <input type="file" class="form-control-file" id="placeFrontImg" name="placeFrontImg" aria-describedby="fileHelp">
                    <small id="fileHelp" class="form-text text-muted">1장, 20mb 이하</small>
                </div>
            </div>

            <div class="form-group" id="divPlaceImg">
                <label for="placeImg" class="col-lg-2 control-label">공간 세부 이미지</label>
                <div class="form-inline form-group col-lg">
                    <input type="file" class="form-control-file" id="placeImg" name="placeImg" aria-describedby="fileHelp">
                    <small id="fileHelp" class="form-text text-muted">10장, 20mb 이하</small>
                </div>
            </div>

            <div class="form-group" id="placePeople">
                <label for="placePeople" class="col-lg-2 control-label">수용 가능 인원수</label>
                <div class="form-inline form-group col-lg-8">
                    <input type="text" class="form-control col-lg-2 onlyNumber" id="minPeople" 
                    name="minPeople" data-rule-required="true" maxlength="10" placeholder="최소 인원수">&nbsp;&nbsp;&nbsp;
                    <input type="text" class="form-control col-lg-2 onlyNumber" id="maxPeople"
                    name="maxPeople" data-rule-required="true" maxlength="10" placeholder="최대 인원수">
                </div>
            </div>

            <div class="form-group" id="divPlaceUrl">
                <label for="placeUrl" class="col-lg-2 control-label">공간 웹사이트</label>
                <div class="col-lg-10">
                    <input type="url" class="form-control onlyNumber" id="placeUrl" name="placeUrl" data-rule-required="true" placeholder="사이트 주소를 입력하세요." maxlength="150">
                </div>
            </div>            

            <div class="form-group" id="divRentTime">
                <label for="rentTime" class="col-lg-2 control-label">공간 대여 가능 시간</label>
                <div class="form-inline form-group col-lg">
                    <input type="time" class="form-control col-lg-2" id="stratTime" name="stratTime" data-rule-required="true">
                    &nbsp;&nbsp;~&nbsp;&nbsp;
                    <input type="time" class="form-control col-lg-2 onlyNumber" id="endTime" name="endTime" data-rule-required="true">
                </div>
            </div>

            <div class="form-group" id="divRentDate">
                <label for="rentDate" class="col-lg-2 control-label">공간 대여 가능 기간</label>
                <div class="form-inline form-group col-lg">
                    <input type="date" class="form-control col-lg-2 onlyNumber" id="startDate" name="startDate" data-rule-required="true">
                    &nbsp;&nbsp;~&nbsp;&nbsp;
                    <input type="date" class="form-control col-lg-2 onlyNumber" id="endDate" name="endDate" data-rule-required="true">
                </div>
            </div>

            <br>
            <hr>
            <br>

            <h3>가격 정보 입력</h3><br>
            <div class="form-group" id="divPlacePrice">
                <label for="placePrice" class="col-lg control-label">시간당 가격</label>
                <div class="form-inline col-lg">
                    <input type="number" class="form-control col-lg-2" id="placePrice" name="placePrice" data-rule-required="true"
                    value="0" min="0" max="100000" step="5000">&nbsp;&nbsp;원
                </div>
            </div>

            <div class="form-group" id="divPricePack">
                <label for="pricePack" class="col-lg-2 control-label">패키지 단위별 가격</label>
                <div class="form-inline col-lg">
                    <input type="number" class="form-control col-lg-2" id="minTime" name="minTime" data-rule-required="true"
                    value="0" min="0" max="24" step="1">&nbsp;&nbsp;시간 당&nbsp;&nbsp;
                    <input type="number" class="form-control col-lg-2" id="pricePack" data-rule-required="true"
                    value="0" min="0" max="100000" step="5000">&nbsp;&nbsp;원
                </div>
            </div>

            <div class="form-group" id="divAddCost">
                <label for="addCost" class="col-lg-6 control-label">추가 인원 1인당 추가 요금</label>
                <div class="form-inline col-lg">
                    <input type="number" class="form-control col-lg-2" id="addCost" name="addCost" data-rule-required="true"
                    value="0" min="0" max="100000" step="5000">&nbsp;&nbsp;원
                </div>
            </div>

            <div class="form-group" id="divExtraCost">
                <label for="extraCost" class="col-lg-2 control-label">보증금</label>
                <div class="form-inline col-lg">
                    <input type="number" class="form-control col-lg-2" id="extraCost" name="extraCost" data-rule-required="true"
                    value="0" min="0" max="70000" step="10000">&nbsp;&nbsp;원
                </div>
            </div>

            <hr>
            <div class="form-group" align="center">
                <button type="submit" class="d-none d-lg-inline-block btn btn-lg btn-primary shadow-lg">공간 등록</button>
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