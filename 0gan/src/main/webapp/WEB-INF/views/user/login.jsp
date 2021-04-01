<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- Bootstrap core CSS -->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"> <!--CDN 링크 -->


    <!-- Custom fonts for this template-->
    <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">
    <!-- Bootstrap core JavaScript-->
    <script src="../resources/vendor/jquery/jquery.min.js"></script>
    <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../resources/js/sb-admin-2.min.js"></script>

<meta charset="UTF-8">
<title>login.jsp</title>
<style type="text/css">

body{
background-color: #F8F9FC; 
}
.row , .col{
	width: 100%;
}
.header{ 
margin: 50px auto; 
position:relative; 
width: 70%; height: 150px;   
display: flex;
}
.logo {
	position: absolute;
	width: 150px;
	height: 150px;
}
.menuIcon{
position:absolute; right:0px;
cursor: pointer;
}
.container {
    display: flex;
    width: 80%;
    top: 50px;
    margin: 50px auto;
}
.inputWrap {
    width: 100%;
    height: 50px;
    display: flex;
    margin: 20px 0;
    background-color: white;
}
.btnLogin {
    width: 100%;
    height: 50px;
    /* display: flex; */
    margin: 20px 0;
	padding: 13px 0;
}
.icon{
	align-items: center;
	margin: auto 0;
}
.keep{
	width: 50%;
}
.input{
	height: 50px;
	width: auto;
}
.btn-circle {
    border-radius: 100%;
    /* display: block; */
    align-items: center;
    justify-content: center;
    width: 50px;
    height: 50px;
    margin: 25px;
    cursor: pointer;
}
.centerIcon {
    margin: 100px;
    width: 202px;
    height: 202px;
    display: flex;
}
.keepWrap{
	width:100%;
	display:flex;
}
.input {
    height: 100%;
    width: auto;
	border:none;
}
/* The switch - the box around the slider */
.switch {
    position: relative;
    display: inline-block;
    width: 50px;
    height: 30px;
    vertical-align: middle;
}

/* Hide default HTML checkbox */
.switch input {display:none;}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #4E73DF;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 20px;
  width: 20px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

</style>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

<script type="text/javascript">
var check = $("input[type='checkbox']");
check.click(function(){
	$(".signup").toggle();
});
</script>
</head>
<body>
<div class="header">
	<div class="logo ">
		<img class="logo" src="" >이미지
	</div>
	<div  class="menuIcon" >
		<span style="color:#486DDA"><i class="far fa-user fa-2x"></i>
		<i class="fas fa-bars fa-2x "></i></span>
	</div>
		
		<!-- Modal -->
  		<div class="modal fade" class="myModal2" role="dialog">
    	<div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"> </button>
          <h4 class="modal-title">Modal without Overlay</h4>
        </div>
        <div class="modal-body">
          <p>This modal has no overlay.</p>
          <p><strong>Note:</strong> You cannot click outside of this modal to close it.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
</div> 
<div class="container">
	<div class="login  col" ><h3 class="  text-center border-bottom-primary">회원로그인</h3>
	
		<div class="row  login">
		<!-- email input -->
			<div class="row inputWrap email">
				<span class="btn-primary text-white-50" style="width: 50px; padding: 7px;">
        			<i class="far fa-user  fa-2x icon"></i>
        		</span>
        		<input type="text" class="input" placeholder="Email" style="border:none">
			</div>
			
		<!-- pwd input -->
			<div class="row inputWrap pwd">
				<span class="btn-primary text-white-50" style="width: 50px; padding: 7px;">
        			<i class="fas fa-key  fa-2x icon"></i>
        		</span>
        		<input type="text" class="input" placeholder="Password" style="border:none">
			</div>
			
		</div>
		
		<div class="row">
			<div class="keepWrap" >
				<div class="keep keepLogin" class="signup" >
					<label class="switch">
						<input type="checkbox">
						<span class="slider round"></span>
					</label>로그인상태유지
				</div>
				<div class="keep keepId" class="signup">
					<label class="switch">
						<input type="checkbox">
						<span class="slider round"></span>
					</label	>아이디저장
				</div>
			</div>
		</div>
		<div class="row">
			<a href="#" class="btn btn-primary  btnLogin">
            	<span class="btn-group-lg text-center">로그인</span>
            </a>
		</div>
		<div class="row" >
			<div class="col-8">
				<i class="fa fa-unlock fa-2x icon"></i>
				<a href="#" class="findId" >아이디 / </a>
				<a href="#" class="findPwd">비밀번호 찾기</a>
			</div>
			<div class="col-4">
				<i class="fas fa-user-circle fa-2x icon"></i>
				<a href="#" class="btnSignup">회원가입</a>
			</div>
		</div>
	</div>
			
	<div class="social  col" ><h3  class=" text-center border-bottom-primary">소셜 로그인</h3>
		<div class="row centerIcon"> 
			<img  class=" btn-circle" alt="" src="resources/img/loginIcon/facebook.png">
			<img  class=" btn-circle" alt="" src="resources/img/loginIcon/google+.png">
			<img  class=" btn-circle" alt="" src="resources/img/loginIcon/kakaotalk.png">
			<img  class=" btn-circle" alt="" src="resources/img/loginIcon/naver.png">
		</div>
	</div>
</div>
</body>
</html>