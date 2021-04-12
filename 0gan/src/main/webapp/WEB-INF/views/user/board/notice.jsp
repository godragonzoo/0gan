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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" />
<link href="../resources/css/user-board.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />
<title>0gan - 공지사항</title>
<!-- Bootstrap cdn 설정 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
			<a class="navbar-brand" href="#" style="font-size: 22px;">0gan</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive"></div>
		</div>
	</nav>
	<div class="content_wraper" role="main">
		<div class="main-wraper">
			<h2 class="main_title">공지사항</h2>
			<div class="search_box">
				<form action="notice.do" method="post">
					<input type="hidden" name="${_csrf.parameterName }"
						value="${_csrf.token }"> <span class="textbox_notice"><input
						type="text" placeholder="검색어를 입력해주세요." name="keyword"
						style="font-size: 14px;"></span>
					<button type="submit" class="search_button_notice">
						<i class="fas fa-search fa-2x"></i>
					</button>
				</form>
			</div>
		</div>

		<table class="main_table">
			<tbody>
				<c:forEach var="list" items="${list }">
					<tr class="tr-question">
						<td>
							<button class="question" id="que-${list.noti_num }">
								<span>${list.noti_title }</span>
							</button>
						</td>
						<td>
							<button class="question" id="que-${list.noti_num }">
								<div align="right">
									<span id="que-${list.noti_num }-toggle"><i
										class="fas fa-angle-down"></i></span>
								</div>
							</button>
						</td>

					</tr>
					<tr class="tr-answer">
						<td colspan="2" style="border-bottom: 1px solid #e0e0e0;">
							<div class="answer" id="ans-${list.noti_num }"
								style="padding-left: 8%; padding-top: 5%;">${fn:replace(list.noti_content, replaceChar,"<br/>") }
								<c:if test="${not empty list.noti_file }">

									<div>
										<br> <br> <br> <br> <a
											href="../file/filedownload?filename=${list.noti_file }"><b
											style="font-size: 16px;">첨부파일 : ${list.noti_file }</b></a>
									</div>
								</c:if>
							</div>

						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>


		<nav class="paging">
			<ul class="pagination" style="padding-left: 45%;">
				<li><a href="notice.do?page=${prevPage }" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach var="i" begin="${startPage }" end="${endPage }">
					<c:if test="${page!=i }">
						<li><a href="notice.do?page=${i }">${i }</a></li>
					</c:if>
					<c:if test="${page==i }">
						<li class="active"><a href="notice.do?page=${i }">${i }</a></li>
					</c:if>
				</c:forEach>
				<li><a href="notice.do?page=${nextPage }" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>

	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="../resources/js/user-board.js"></script>
</body>
</html>