<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
    <link href="../resources/css/user-board.css" rel="stylesheet" type="text/css">
</head>
<body>
    <h2>도움말</h2>
    <hr>
    <form action="faq.do" method="post" name="form" onsubmit="return valid();">
        <select id="category" name="category" size="1" >
                            <option selected="selected" value="전체">전체</option>
                            <option value="회원">회원</option>
                            <option value="예약 및 결제">예약 및 결제</option>
                            <option value="취소 및 환불">취소 및 환불</option>
                            <option value="공간이용 및 후기">공간이용 및 후기</option>
                            <option value="기타">기타</option>
                        </select>
        <input type="text" name="keyword"><input type="submit" value="검색">
    </form>
    <hr>
    <table>
        <tbody>
        	<c:forEach var="list" items="${list }">
	            <tr class="tr-question">
	            <td>
	             <button class="question" id="que-${list.faq_num }"><span>${list.faq_category }</span></button>
	            </td>
	                <td>
	                    <button class="question" id="que-${list.faq_num }"><span>${list.faq_title }</span></button>
	                </td>
	                <td>        <button class="question" id="que-1"><div align="right"><span id="que-${list.faq_num }-toggle"><i class="fas fa-angle-down"></i></span></div></button>
	                </td>
	            </tr>
	            <tr class="tr-answer">
	                <td>
	                    <div class="answer" id="ans-${list.faq_num }">${list.faq_content }
	                    <c:if test="${not empty list.faq_file }"><div>첨부파일 : ${list.faq_file }</div></c:if></div>
	                </td>
	            </tr>
            </c:forEach>
  </tbody>
</table>

<script src="../resources/js/user-board.js"></script>
</body>
</html>