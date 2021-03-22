<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.signup{
	text-align: right;
}
/* The switch - the box around the slider */
.switch {
  position: relative;
  display: inline-block;
  width: 40px;
  height: 24px;
  vertical-align:middle;
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

.container{
	display: flex;
	width: 80%;
	float:none; margin:0 auto;
}
</style>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

<script type="text/javascript">
var check = $("input[type='checkbox']");
check.click(function(){
	$("#signupIcon").toggle();
});
</script>
</head>
<body>

	<div id="header">
		<span id="logo">logo</span>
		<span id="menu">menu</span>
	</div>
	<div class="container">
			<div class="item" style="width: 40%; height: 300px;">회원로그인
				<div class="row">
					<div id="email">
							<div class="input">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  								<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
								</svg> 
								
								<input height="20px" width="250px" type="text" class="form-control"	placeholder="Email" aria-label="Input group example"	aria-describedby="basic-addon1">
							</div>
					</div>
					<div id="pwd">
							<div class="input">
								<span class="input-group-text" id="basic-addon1" style="background-color: gray; "> 
								<svg xmlns="http://www.w3.org/2000/svg"  width="30" height="30"	fill="currentColor" class="bi bi-key" viewBox="0 -3 15 15"><!-- viewBox 숫자가 작을 수록 커짐 -->
								<path	d="M0 8a4 4 0 0 1 7.465-2H14a.5.5 0 0 1 .354.146l1.5 1.5a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0L13 9.207l-.646.647a.5.5 0 0 1-.708 0L11 9.207l-.646.647a.5.5 0 0 1-.708 0L9 9.207l-.646.647A.5.5 0 0 1 8 10h-.535A4 4 0 0 1 0 8zm4-3a3 3 0 1 0 2.712 4.285A.5.5 0 0 1 7.163 9h.63l.853-.854a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.793-.793-1-1h-6.63a.5.5 0 0 1-.451-.285A3 3 0 0 0 4 5z" />
						  		<path d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
								</svg>
								</span> 
								
								<input height="20px" width="280px" type="text" class="form-control"	placeholder="Password" aria-label="Input group example"	aria-describedby="basic-addon1">
							</div>
					</div>
					<div id="keep">
						<span id="keepLogin" class="signup" >
							<label class="switch">
							  <input type="checkbox">
							  <span class="slider round"></span>
							</label>로그인상태유지
						</span>
						<span id="keepId" class="signup">
							<label class="switch">
							  <input type="checkbox">
							  <span class="slider round"></span>
							</label
							>아이디저장
						</span>
					</div>
					<button id="btnLogin" style="width:280px;">로그인</button>
				</div>
				<div class="row">
					<span id="findIcon">		</span>
					<a href="#" id="findId">아이디</a>
					<a href="#" id="findPwd">비밀번호 찾기</a>
					<a href="#" id="btnSignup" class="signup"></a>
				</div>
			</div>
			
			<div class="item" style="width: 40%; height: 300px;">소셜 로그인
				<div class="row"> 
					<img  style="width: 100px; height: 100px;" class="item" alt="" src="resources/img/bibimbab.png">
					<img  style="width: 100px; height: 100px;"class="item" alt="" src="resources/img/bibimbab.png">
					<img  style="width: 100px; height: 100px;"class="item" alt="" src="resources/img/bibimbab.png">
					<img  style="width: 100px; height: 100px;"class="item" alt="" src="resources/img/bibimbab.png">
					
				</div>
			</div>
	</div>
</body>
</html>