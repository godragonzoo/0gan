<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<div class="search_box">
				<form action="faq.do" method="post" name="form"
					onsubmit="return valid();">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					<select class="category" id="category" name="category" size="1">
						<option selected="selected" value="제목">제목 + 내용</option>
						<option value="작성자">작성자</option>
					</select> <span class="textbox_faq"><input type="text"
						placeholder="검색어를 입력해주세요." name="keyword"></span>
					<button type="submit" class="search_button_faq">
						<i class="fas fa-search fa-2x"></i>
					</button>
				</form>
			</div>
		</div>
		
		<table class="main_table">
		<thead>
			<tr>제목</tr>	
			<tr>작성자</tr>	
			<tr>작성일</tr>	
			<tr>조회수</tr>	
		</thead>
			<tbody>
			<td>호스트 문의 제목</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
				<%-- <c:forEach var="list" items="${list }">
					<tr class="tr-question">
						<td>
							<button class="question" id="que-${list.faq_num }">
								<span>${list.faq_category }</span>
							</button>
						</td>
						<td>
							<button class="question" id="que-${list.faq_num }">
								<span>${list.faq_title }</span>
							</button>
						</td>
						<td>
							<button class="question" id="que-${list.faq_num }">
								<div align="right">
									<span id="que-${list.faq_num }-toggle"><i
										class="fas fa-angle-down"></i></span>
								</div>
							</button>
						</td>
					</tr>
					<tr class="tr-answer">
						<td>
							<div class="answer" id="ans-${list.faq_num }">${list.faq_content }
								<c:if test="${not empty list.faq_file }">
									<div>첨부파일 : ${list.faq_file }</div>
								</c:if>
							</div>
						</td>
					</tr>
				</c:forEach> --%>
			</tbody>
		</table>


		<nav class="paging">
			<ul class="pagination">
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

